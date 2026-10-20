--! @file ParallelBusSlave_ver_1_0.vhd
--! @brief VHDL implementation of a parallel bus slave component.
--! This file contains the VHDL code for a component that communicates with a parallel bus,
--! handling address decoding, data reception, and transmission.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! @brief Entity for the parallel bus slave component.
--! @details This entity defines the interface for a component that communicates with a parallel bus.
--! It handles address decoding, data reception, and transmission based on the bus protocol.
entity ParallelBusSlave_ver_2_0 is
    generic(
        ADDRESS_DEVICE_BUS_WIDTH : integer := 4;  --! Width of the device address bus.
        ADDRESS_REG_BUS_WIDTH : integer := 4;    --! Width of the register address bus.
        DATA_BUS_WIDTH : integer := 16;          --! Width of the data bus.
        COUNT_WAIT : integer := 7               --! Wait count for timing control.
    );

    port(
        clk : in std_logic;  --! System clock signal.

        -- addressdevice : in std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH - 1 downto 0);  --! Device address input.

        pbclk : in std_logic;  --! Parallel bus clock signal.
        pbdata : inout std_logic_vector(DATA_BUS_WIDTH - 1 downto 0) := (others => 'Z');  --! Parallel bus data lines.
        pbce : in std_logic;  --! Parallel bus chip enable signal.
        pback : out std_logic := 'Z';  --! Parallel bus acknowledge signal.

        addressregister : out std_logic_vector(ADDRESS_DEVICE_BUS_WIDTH + ADDRESS_REG_BUS_WIDTH - 1 downto 0);  --! Register address output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);  --! Data input from internal logic.

        dataready : out std_logic  --! Signal indicating data is ready for processing.
    );
end entity;

--! @brief Behavioral architecture for the parallel bus slave component.
--! @details This architecture implements the logic for communicating with a parallel bus,
--! including address decoding, data reception, and transmission.
architecture behavorial of ParallelBusSlave_ver_2_0 is

    --! @brief Buffer for storing received data.
    --! @details This signal holds the data received from the internal logic.
    signal dataBuf : std_logic_vector(DATA_BUS_WIDTH - 1 downto 0) := (others => '0');

    -- Keep only binary values inside the FPGA. Reading a signal that also
    -- carries 'Z' made synthesized idle logic enable the drivers at 25 MHz,
    -- although RTL simulation left them released. Infer tristates only at
    -- the pins, with separate value and output-enable registers.
    signal ackValue : std_logic := '1';
    signal ackEnable : std_logic := '0';
    signal dataValue : std_logic_vector(DATA_BUS_WIDTH - 1 downto 0) := (others => '1');
    signal dataEnable : std_logic := '0';
    signal busWasActive : std_logic := '0';

    --! @brief State type for communication.
    --! @details This type defines the states of the communication process.
    type CommunicationStateType is (
        Waiting,         --! Idle state, waiting for chip enable.
        ReceiveAddress,  --! State for receiving and decoding the address.
        GetData,         --! State for receiving data from internal logic.
        TransmitData,    --! State for transmitting data to the bus.
        TransmitCheck    --! State for checking transmitted data.
    );

    --! @brief Current state of the communication process.
    --! @details This signal holds the current state of the communication state machine.
    signal CommunicationState : CommunicationStateType := Waiting;

begin

    pback <= ackValue when ackEnable = '1' else 'Z';
    pbdata <= dataValue when dataEnable = '1' else (others => 'Z');

    --! @brief Process to handle communication with the parallel bus.
    --! @details This process implements the state machine for communication,
    --! including address decoding, data reception, and transmission.
    process(clk)
        variable count : integer range 0 to COUNT_WAIT := 0;  --! Counter for timing control.
    begin
        if rising_edge(clk) then
            if pbce = '1' then
                -- Transition to ReceiveAddress state when chip enable is active
                CommunicationState <= ReceiveAddress;
                dataready <= '0';
                count := 0;

                -- End a real transfer with one high cycle before releasing
                -- its enabled outputs. An aborted address phase must never
                -- enable data drivers while the master still owns the bus.
                if busWasActive = '1' then
                    dataValue <= (others => '1');
                    ackValue <= '1';
                else
                    dataEnable <= '0';
                    ackEnable <= '0';
                end if;
                busWasActive <= '0';
            else
                busWasActive <= '1';
                case CommunicationState is
                    when ReceiveAddress =>
                        dataEnable <= '0';
                        -- The master holds the complementary address word
                        -- until ACK. CE/CLK use the original external stages.
                        if pbdata(DATA_BUS_WIDTH - 1 downto DATA_BUS_WIDTH / 2) =
                           not pbdata(DATA_BUS_WIDTH / 2 - 1 downto 0) then
                            dataready <= '1';  -- Indicate data is ready
                            ackValue <= '0';
                            ackEnable <= '1';  -- Acknowledge address reception
                            addressregister <= pbdata(DATA_BUS_WIDTH - 1 downto DATA_BUS_WIDTH - ADDRESS_DEVICE_BUS_WIDTH - ADDRESS_REG_BUS_WIDTH);
                            CommunicationState <= GetData;  -- Transition to GetData state
                        else
                            dataready <= '0';
                            ackEnable <= '0';
                            CommunicationState <= Waiting;  -- Reject this invalid request.
                        end if;

                    when GetData =>
                        -- Capture data from internal logic when bus clock is low
                        if pbclk = '0' then
                            dataBuf <= datain;             -- Store data in buffer
                            CommunicationState <= TransmitData;  -- Transition to TransmitData state
                        end if;

                    when TransmitData =>
                        -- Transmit data to the bus when bus clock is low
                        if pbclk = '0' then
                            dataValue <= dataBuf;
                            dataEnable <= '1';  -- Drive only in the data/check phases.
                            if count < COUNT_WAIT then
                                count := count + 1;  -- Increment wait counter
                            else
                                ackValue <= '1';     -- Acknowledge data transmission
                            end if;
                        else
                            count := 0;
                            CommunicationState <= TransmitCheck;  -- Transition to TransmitCheck state
                        end if;

                    when TransmitCheck =>
                        -- Check transmitted data when bus clock is high
                        if pbclk = '1' then
                            dataValue <= not dataBuf;  -- Drive inverted data onto the bus
                            if count < COUNT_WAIT then
                                count := count + 1;  -- Increment wait counter
                            else
                                ackValue <= '0';     -- Acknowledge data check
                            end if;
                        else
                            count := 0;
                            CommunicationState <= Waiting;  -- Return to Waiting state
                        end if;

                    when Waiting =>
                        -- Idle state, do nothing

                    when others =>
                        -- Default state transition to Waiting
                        CommunicationState <= Waiting;
                end case;
            end if;
        end if;
    end process;

end behavorial;
