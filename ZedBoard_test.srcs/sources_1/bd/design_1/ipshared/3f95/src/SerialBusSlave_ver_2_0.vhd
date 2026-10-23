library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--! @file SerialBusSlave.vhd
--! @brief VHDL implementation of a Serial Bus Slave.
--! This file contains the VHDL code for a serial bus slave device. The entity and architecture define the interface and behavior of the slave device.

--! @brief Entity for a Serial Bus Slave version 1.0.
--! @details This entity defines the interface for a serial bus slave device. It handles communication over a serial bus,
--! including receiving and transmitting data, and managing addresses and data registers.
--! @param ADDRESS_DEVICE_BUS_WIDTH Width of the device address bus.
--! @param ADDRESS_REG_BUS_WIDTH Width of the register address bus.
--! @param DATA_BUS_WIDTH Width of the data bus.
--! @param COUNT_RESET Number of clock cycles to wait before resetting the state machine.
entity SerialBusSlave_ver_2_0 is
    generic (
        ADDRESS_DEVICE_BUS_WIDTH : integer := 4;  --! Width of the device address bus
        ADDRESS_REG_BUS_WIDTH : integer := 4;    --! Width of the register address bus
        DATA_BUS_WIDTH : integer := 16;          --! Width of the data bus
        COUNT_RESET : integer := 180;             --! Number of clock cycles to wait before resetting the state machine
		COUNT_TIMEOUT : integer := 550
    );
    
    port (
        clk : in std_logic;                      --! Clock signal
--        addressdevice : in std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH - 1 downto 0);  --! Device address input
        sbclk : in std_logic;                    --! Serial bus clock signal
        sbdatain : in std_logic;                 --! Serial data input
        sbdataout : out std_logic := '0';        --! Serial data output
        addressregister : out std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto 0);  --! Register address output
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);                  --! Data output
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);                    --! Data input
        rw : out std_logic;                      --! Read/write signal
        dataready : out std_logic                --! Data ready signal
    );
end entity;

--! @brief Behavioral architecture for the Serial Bus Slave.
--! @details This architecture defines the behavior of the serial bus slave device. It includes processes for handling the reset logic,
--! main communication, and CRC calculation.
architecture behavorial of SerialBusSlave_ver_2_0 is
    signal address_received : std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH - 1 downto 0) := (others => '0');  --! Received device address
    
    signal sbclkPrev : std_logic := '0';  --! Previous value of sbclk
    signal sbReset : std_logic := '0';    --! Reset signal
    signal sbResetPrev : std_logic := '0';  --! Previous value of sbReset
    signal sbDataOutBuf : std_logic := '0';  --! Buffer for sbdataout
    signal direction : std_logic := '0';     --! Direction of communication (read or write)
    signal addDevRegBuf : std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto 0) := (others => '0');  --! Buffer for combined address and register
    signal dataBuf : std_logic_vector(DATA_BUS_WIDTH - 1 downto 0) := (others => '0');  --! Buffer for data
    
    type CommunicationStateType is (Waiting, ReceiveAddress, ReceiveData, ReceiveCRC, ReceiveCheck, TransmitData, TransmitCRC, Timeout);  --! State machine states
    signal CommunicationState : CommunicationStateType := Waiting;  --! Current state of the communication state machine
    
    signal resetCRC : std_logic := '1';  --! Reset signal for CRC calculation
    signal CRC : std_logic_vector(3 downto 0) := x"0";  --! CRC value
    signal bufCRC : std_logic_vector(3 downto 0) := x"0";  --! Buffered CRC value
    signal dataCRC : std_logic_vector(24 downto 0) := (others => '0');  --! Data for CRC calculation
    signal readyCRC : std_logic := '0';  --! Flag indicating CRC calculation is ready

begin    
    --! @brief Process to handle the reset logic.
	--! @param count - This counter counts to COUNT_RESET if clock (sbclk) does not change.
    --! @details This process monitors the serial bus clock (sbclk) and generates a reset signal (sbReset) if the clock does not change for a specified number of clock cycles (COUNT_RESET).
    --! @note It is test to watch how this looks like
    process(clk) is
        variable count : integer range 0 to COUNT_RESET := 5;  -- Counter for reset timeout
    begin
        if rising_edge(clk) then  
            sbclkPrev <= sbclk; 
            if sbclk = sbclkPrev then
                if count < COUNT_RESET then
                    count := count + 1;
                else 
                    sbReset <= '1'; 
                end if;
            else
                count := 0;
                sbReset <= '0'; 
            end if;        
        end if;
    end process;

    -- @brief Assigns the output data buffer to the serial data output.
    sbdataout <= '0' when sbDataOutBuf = '0' else 'Z';

    --! @brief Main communication process.
	--! @param bitCnt - Bit counter for communication.
    --! @details This process handles the main communication logic, including receiving and transmitting data, and managing the state machine.
    process(clk)
        variable bitCnt : integer range -1 to ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH - 1 := ADDRESS_DEVICE_BUS_WIDTH;
        variable cntTimeout : integer range 0 to COUNT_TIMEOUT := 0;  -- Counter for reset timeout
    begin
        if rising_edge(clk) then 
            if sbReset = '1' and sbResetPrev = '0' then 
                CommunicationState <= Waiting;    
                resetCRC <= '1';
            end if;    
            sbResetPrev <= sbReset;
            
            case CommunicationState is                
                when Waiting =>
                    -- @brief Waiting state.
                    -- @details Waits for the start of communication. If the serial bus clock (sbclk) changes, it initializes the communication process.
                    if sbclk = '1' and sbclkPrev = '0' then 
                        rw <= sbdatain;
                        direction <= sbdatain;
                        dataready <= '0';
                        bitCnt := ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1;
                        bufCRC <= (others => '0');
                        dataBuf <= (others => '0');
                        addDevRegBuf <= (others => '0');
                        dataCRC <= (others => '0');
                        CommunicationState <= ReceiveAddress;
                        cntTimeout := 0;
                        resetCRC <= '1';
                    end if; 
                    sbDataOutBuf <= '1';     
                    
                when ReceiveAddress =>    
                    -- @brief ReceiveAddress state.
                    -- @details Receives the device and register addresses. If the received device address matches the expected address, it proceeds to the next state.
                    if sbclk = '1' and sbclkPrev = '0' then
                        addDevRegBuf(bitCnt) <= sbdatain;
                        if bitCnt = 0 then                        
--                            if addDevRegBuf(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto ADDRESS_REG_BUS_WIDTH) /= addressdevice then
--                                CommunicationState <= Timeout;
--                            else
                                addressregister(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto 1) <= addDevRegBuf(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto 1);
                                addressregister(0) <= sbdatain;
                                bitCnt := DATA_BUS_WIDTH - 1;
                                if direction = '0' then
                                    dataready <= '1';
                                    CommunicationState <= TransmitData;
                                else
                                    CommunicationState <= ReceiveData;
                                end if;
--                            end if;
                        else
                            bitCnt := bitCnt - 1;
                        end if;
                    end if;
                    
                when TransmitData =>
                    -- @brief TransmitData state.
                    -- @details Transmits data to the master device. It also calculates the CRC for the transmitted data.
                    if sbclk = '0' and sbclkPrev = '1' then
                        if bitCnt = DATA_BUS_WIDTH - 1 then
                            dataCRC(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH) <= direction;
                            dataCRC(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH - 1 downto DATA_BUS_WIDTH) <= addDevRegBuf;
                            dataCRC(DATA_BUS_WIDTH - 1 downto 0) <= datain;
                            resetCRC <= '0';
                        end if;
                        sbDataOutBuf <= datain(bitCnt);
                        if bitCnt = 0 then
                            bitCnt := 3;
                            CommunicationState <= TransmitCRC;
                        else
                            bitCnt := bitCnt - 1;
                        end if;                        
                    end if;
                    
                when TransmitCRC =>    
                    -- @brief TransmitCRC state.
                    -- @details Transmits the CRC value to the master device.
                    if sbclk = '0' and sbclkPrev = '1' then
                        sbDataOutBuf <= CRC(bitCnt);
                        if bitCnt = 0 then
                            CommunicationState <= Timeout;
                        else
                            bitCnt := bitCnt - 1;
                        end if;                        
                    end if;
                    
                when ReceiveData =>
                    -- @brief ReceiveData state.
                    -- @details Receives data from the master device. It also calculates the CRC for the received data.
                    if sbclk = '1' and sbclkPrev = '0' then
                        dataBuf(bitCnt) <= sbdatain;
                        if bitCnt = 0 then
                            bitCnt := 3;
                            dataCRC(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH) <= direction;
                            dataCRC(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH - 1 downto DATA_BUS_WIDTH) <= addDevRegBuf;
                            dataCRC(DATA_BUS_WIDTH - 1 downto 1) <= dataBuf(DATA_BUS_WIDTH - 1 downto 1);
                            dataCRC(0) <= sbdatain;
                            resetCRC <= '0';
                            CommunicationState <= ReceiveCRC;
                        else
                            bitCnt := bitCnt - 1;
                        end if;
                    end if;                    
                        
                when ReceiveCRC =>
                    -- @brief ReceiveCRC state.
                    -- @details Receives the CRC value from the master device.
                    if sbclk = '1' and sbclkPrev = '0' then
                        bufCRC(bitCnt) <= sbdatain;
                        if bitCnt = 0 then
                            CommunicationState <= ReceiveCheck;
                        else
                            bitCnt := bitCnt - 1;
                        end if;
                    end if;
                    
                when ReceiveCheck =>
                    -- @brief ReceiveCheck state.
                    -- @details Checks the received CRC value against the calculated CRC value. If they match, sets the data ready signal and outputs the data.
                    if readyCRC = '1' then 
                        if bufCRC = CRC then
                            dataready <= '1';
                            dataout <= dataBuf;
                            sbdataOutBuf <= '0';
                        else
                            sbdataOutBuf <= '1';
                        end if;
                        CommunicationState <= Timeout;
                    end if;
                when Timeout =>
                    if cntTimeout < COUNT_TIMEOUT then
                        cntTimeout := cntTimeout + 1;
                    else
                        CommunicationState <= Waiting;
                    end if;
                when others =>
                    CommunicationState <= Waiting;
            end case;                
        end if;
    end process;

    --! @brief Process to calculate CRC.
	--! @param lacth - Text for lanch.
	--! @param bitCnt - Text for bitCnt
    --! @details This process calculates the CRC value for the received or transmitted data.
    process(clk)  
        variable lacth : integer range 0 to 1 := 0;
        variable bitCnt : integer range -1 to ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH := 0;
    begin
        if rising_edge(clk) then
            if resetCRC = '1' then
                bitCnt := ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH + DATA_BUS_WIDTH; 
                CRC <= x"0";
                lacth := 0;
                readyCRC <= '0';
            else
                if readyCRC = '0' then
                    if lacth = 0 then
                        if bitCnt /= -1  then
                            CRC(3) <= CRC(2) xor CRC(3);
                            CRC(2) <= CRC(1) xor CRC(0);    
                            CRC(1) <= CRC(0);
                            CRC(0) <=  dataCRC(bitCnt) xor CRC(1);                                            
                            bitCnt := bitCnt - 1;
                        else
                            bitCnt := 3;
                            lacth := 1;
                        end if;   
                    else
                        if bitCnt /= -1  then
                            CRC(3) <= CRC(2) xor CRC(3);
                            CRC(2) <= CRC(1) xor CRC(0);    
                            CRC(1) <= CRC(0);    
                            CRC(0) <= '1' xor CRC(1);    
                            bitCnt := bitCnt - 1;     
                        else
                            readyCRC <= '1';
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
    
end behavorial;