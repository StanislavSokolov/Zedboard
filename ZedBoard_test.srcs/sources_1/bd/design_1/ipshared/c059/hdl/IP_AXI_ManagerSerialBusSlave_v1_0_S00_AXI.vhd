library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here
        ADDRESS_BUS_WIDTH : integer := 8;  --! Width of the address bus.
        DATA_BUS_WIDTH : integer := 16;    --! Width of the data bus.
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 10
	);
	port (
		-- Users to add ports here
		clk : in std_logic;  --! Clock signal.
        
        addressregister : in std_logic_vector(ADDRESS_BUS_WIDTH - 1 downto 0);  --! Address register input.
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);            --! Data output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);              --! Data input.
        
        rw : in std_logic;  --! Read/Write signal (1 = read, 0 = write).
        dataready : in std_logic;  --! Data ready signal.
        
        done : out std_logic;                      --! Done signal.

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI;

architecture arch_imp of IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 7;
	------------------------------------------------
	---- Signals for user logic register space example
	signal dataReadyPrev : std_logic := '0';  --! Previous value of the data ready signal.
	type memoryData is array (2**ADDRESS_BUS_WIDTH - 1 downto 0) of std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
    signal memDtToRead : memoryData;
    signal memDtToWrite : memoryData;
	--------------------------------------------------
	---- Number of Slave Registers 256
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	: std_logic;

begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr : integer range 0 to 2**ADDRESS_BUS_WIDTH := 0; 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      memDtToRead <= (others => (others => '0'));
	    else
	      loc_addr := to_integer(unsigned(axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB)));
	      if (slv_reg_wren = '1') then
	        for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
              if ( S_AXI_WSTRB(byte_index) = '1' ) then
                -- Respective byte enables are asserted as per write strobes                   
                -- slave registor 0
                memDtToRead(loc_addr)(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
              end if;
            end loop;
          end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (memDtToWrite, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    case loc_addr is
	      when b"00000000" =>
	        reg_data_out <= memDtToWrite(0);
	      when b"00000001" =>
	        reg_data_out <= memDtToWrite(1);
	      when b"00000010" =>
	        reg_data_out <= memDtToWrite(2);
	      when b"00000011" =>
	        reg_data_out <= memDtToWrite(3);
	      when b"00000100" =>
	        reg_data_out <= memDtToWrite(4);
	      when b"00000101" =>
	        reg_data_out <= memDtToWrite(5);
	      when b"00000110" =>
	        reg_data_out <= memDtToWrite(6);
	      when b"00000111" =>
	        reg_data_out <= memDtToWrite(7);
	      when b"00001000" =>
	        reg_data_out <= memDtToWrite(8);
	      when b"00001001" =>
	        reg_data_out <= memDtToWrite(9);
	      when b"00001010" =>
	        reg_data_out <= memDtToWrite(10);
	      when b"00001011" =>
	        reg_data_out <= memDtToWrite(11);
	      when b"00001100" =>
	        reg_data_out <= memDtToWrite(12);
	      when b"00001101" =>
	        reg_data_out <= memDtToWrite(13);
	      when b"00001110" =>
	        reg_data_out <= memDtToWrite(14);
	      when b"00001111" =>
	        reg_data_out <= memDtToWrite(15);
	      when b"00010000" =>
	        reg_data_out <= memDtToWrite(16);
	      when b"00010001" =>
	        reg_data_out <= memDtToWrite(17);
	      when b"00010010" =>
	        reg_data_out <= memDtToWrite(18);
	      when b"00010011" =>
	        reg_data_out <= memDtToWrite(19);
	      when b"00010100" =>
	        reg_data_out <= memDtToWrite(20);
	      when b"00010101" =>
	        reg_data_out <= memDtToWrite(21);
	      when b"00010110" =>
	        reg_data_out <= memDtToWrite(22);
	      when b"00010111" =>
	        reg_data_out <= memDtToWrite(23);
	      when b"00011000" =>
	        reg_data_out <= memDtToWrite(24);
	      when b"00011001" =>
	        reg_data_out <= memDtToWrite(25);
	      when b"00011010" =>
	        reg_data_out <= memDtToWrite(26);
	      when b"00011011" =>
	        reg_data_out <= memDtToWrite(27);
	      when b"00011100" =>
	        reg_data_out <= memDtToWrite(28);
	      when b"00011101" =>
	        reg_data_out <= memDtToWrite(29);
	      when b"00011110" =>
	        reg_data_out <= memDtToWrite(30);
	      when b"00011111" =>
	        reg_data_out <= memDtToWrite(31);
	      when b"00100000" =>
	        reg_data_out <= memDtToWrite(32);
	      when b"00100001" =>
	        reg_data_out <= memDtToWrite(33);
	      when b"00100010" =>
	        reg_data_out <= memDtToWrite(34);
	      when b"00100011" =>
	        reg_data_out <= memDtToWrite(35);
	      when b"00100100" =>
	        reg_data_out <= memDtToWrite(36);
	      when b"00100101" =>
	        reg_data_out <= memDtToWrite(37);
	      when b"00100110" =>
	        reg_data_out <= memDtToWrite(38);
	      when b"00100111" =>
	        reg_data_out <= memDtToWrite(39);
	      when b"00101000" =>
	        reg_data_out <= memDtToWrite(40);
	      when b"00101001" =>
	        reg_data_out <= memDtToWrite(41);
	      when b"00101010" =>
	        reg_data_out <= memDtToWrite(42);
	      when b"00101011" =>
	        reg_data_out <= memDtToWrite(43);
	      when b"00101100" =>
	        reg_data_out <= memDtToWrite(44);
	      when b"00101101" =>
	        reg_data_out <= memDtToWrite(45);
	      when b"00101110" =>
	        reg_data_out <= memDtToWrite(46);
	      when b"00101111" =>
	        reg_data_out <= memDtToWrite(47);
	      when b"00110000" =>
	        reg_data_out <= memDtToWrite(48);
	      when b"00110001" =>
	        reg_data_out <= memDtToWrite(49);
	      when b"00110010" =>
	        reg_data_out <= memDtToWrite(50);
	      when b"00110011" =>
	        reg_data_out <= memDtToWrite(51);
	      when b"00110100" =>
	        reg_data_out <= memDtToWrite(52);
	      when b"00110101" =>
	        reg_data_out <= memDtToWrite(53);
	      when b"00110110" =>
	        reg_data_out <= memDtToWrite(54);
	      when b"00110111" =>
	        reg_data_out <= memDtToWrite(55);
	      when b"00111000" =>
	        reg_data_out <= memDtToWrite(56);
	      when b"00111001" =>
	        reg_data_out <= memDtToWrite(57);
	      when b"00111010" =>
	        reg_data_out <= memDtToWrite(58);
	      when b"00111011" =>
	        reg_data_out <= memDtToWrite(59);
	      when b"00111100" =>
	        reg_data_out <= memDtToWrite(60);
	      when b"00111101" =>
	        reg_data_out <= memDtToWrite(61);
	      when b"00111110" =>
	        reg_data_out <= memDtToWrite(62);
	      when b"00111111" =>
	        reg_data_out <= memDtToWrite(63);
	      when b"01000000" =>
	        reg_data_out <= memDtToWrite(64);
	      when b"01000001" =>
	        reg_data_out <= memDtToWrite(65);
	      when b"01000010" =>
	        reg_data_out <= memDtToWrite(66);
	      when b"01000011" =>
	        reg_data_out <= memDtToWrite(67);
	      when b"01000100" =>
	        reg_data_out <= memDtToWrite(68);
	      when b"01000101" =>
	        reg_data_out <= memDtToWrite(69);
	      when b"01000110" =>
	        reg_data_out <= memDtToWrite(70);
	      when b"01000111" =>
	        reg_data_out <= memDtToWrite(71);
	      when b"01001000" =>
	        reg_data_out <= memDtToWrite(72);
	      when b"01001001" =>
	        reg_data_out <= memDtToWrite(73);
	      when b"01001010" =>
	        reg_data_out <= memDtToWrite(74);
	      when b"01001011" =>
	        reg_data_out <= memDtToWrite(75);
	      when b"01001100" =>
	        reg_data_out <= memDtToWrite(76);
	      when b"01001101" =>
	        reg_data_out <= memDtToWrite(77);
	      when b"01001110" =>
	        reg_data_out <= memDtToWrite(78);
	      when b"01001111" =>
	        reg_data_out <= memDtToWrite(79);
	      when b"01010000" =>
	        reg_data_out <= memDtToWrite(80);
	      when b"01010001" =>
	        reg_data_out <= memDtToWrite(81);
	      when b"01010010" =>
	        reg_data_out <= memDtToWrite(82);
	      when b"01010011" =>
	        reg_data_out <= memDtToWrite(83);
	      when b"01010100" =>
	        reg_data_out <= memDtToWrite(84);
	      when b"01010101" =>
	        reg_data_out <= memDtToWrite(85);
	      when b"01010110" =>
	        reg_data_out <= memDtToWrite(86);
	      when b"01010111" =>
	        reg_data_out <= memDtToWrite(87);
	      when b"01011000" =>
	        reg_data_out <= memDtToWrite(88);
	      when b"01011001" =>
	        reg_data_out <= memDtToWrite(89);
	      when b"01011010" =>
	        reg_data_out <= memDtToWrite(90);
	      when b"01011011" =>
	        reg_data_out <= memDtToWrite(91);
	      when b"01011100" =>
	        reg_data_out <= memDtToWrite(92);
	      when b"01011101" =>
	        reg_data_out <= memDtToWrite(93);
	      when b"01011110" =>
	        reg_data_out <= memDtToWrite(94);
	      when b"01011111" =>
	        reg_data_out <= memDtToWrite(95);
	      when b"01100000" =>
	        reg_data_out <= memDtToWrite(96);
	      when b"01100001" =>
	        reg_data_out <= memDtToWrite(97);
	      when b"01100010" =>
	        reg_data_out <= memDtToWrite(98);
	      when b"01100011" =>
	        reg_data_out <= memDtToWrite(99);
	      when b"01100100" =>
	        reg_data_out <= memDtToWrite(100);
	      when b"01100101" =>
	        reg_data_out <= memDtToWrite(101);
	      when b"01100110" =>
	        reg_data_out <= memDtToWrite(102);
	      when b"01100111" =>
	        reg_data_out <= memDtToWrite(103);
	      when b"01101000" =>
	        reg_data_out <= memDtToWrite(104);
	      when b"01101001" =>
	        reg_data_out <= memDtToWrite(105);
	      when b"01101010" =>
	        reg_data_out <= memDtToWrite(106);
	      when b"01101011" =>
	        reg_data_out <= memDtToWrite(107);
	      when b"01101100" =>
	        reg_data_out <= memDtToWrite(108);
	      when b"01101101" =>
	        reg_data_out <= memDtToWrite(109);
	      when b"01101110" =>
	        reg_data_out <= memDtToWrite(110);
	      when b"01101111" =>
	        reg_data_out <= memDtToWrite(111);
	      when b"01110000" =>
	        reg_data_out <= memDtToWrite(112);
	      when b"01110001" =>
	        reg_data_out <= memDtToWrite(113);
	      when b"01110010" =>
	        reg_data_out <= memDtToWrite(114);
	      when b"01110011" =>
	        reg_data_out <= memDtToWrite(115);
	      when b"01110100" =>
	        reg_data_out <= memDtToWrite(116);
	      when b"01110101" =>
	        reg_data_out <= memDtToWrite(117);
	      when b"01110110" =>
	        reg_data_out <= memDtToWrite(118);
	      when b"01110111" =>
	        reg_data_out <= memDtToWrite(119);
	      when b"01111000" =>
	        reg_data_out <= memDtToWrite(120);
	      when b"01111001" =>
	        reg_data_out <= memDtToWrite(121);
	      when b"01111010" =>
	        reg_data_out <= memDtToWrite(122);
	      when b"01111011" =>
	        reg_data_out <= memDtToWrite(123);
	      when b"01111100" =>
	        reg_data_out <= memDtToWrite(124);
	      when b"01111101" =>
	        reg_data_out <= memDtToWrite(125);
	      when b"01111110" =>
	        reg_data_out <= memDtToWrite(126);
	      when b"01111111" =>
	        reg_data_out <= memDtToWrite(127);
	      when b"10000000" =>
	        reg_data_out <= memDtToWrite(128);
	      when b"10000001" =>
	        reg_data_out <= memDtToWrite(129);
	      when b"10000010" =>
	        reg_data_out <= memDtToWrite(130);
	      when b"10000011" =>
	        reg_data_out <= memDtToWrite(131);
	      when b"10000100" =>
	        reg_data_out <= memDtToWrite(132);
	      when b"10000101" =>
	        reg_data_out <= memDtToWrite(133);
	      when b"10000110" =>
	        reg_data_out <= memDtToWrite(134);
	      when b"10000111" =>
	        reg_data_out <= memDtToWrite(135);
	      when b"10001000" =>
	        reg_data_out <= memDtToWrite(136);
	      when b"10001001" =>
	        reg_data_out <= memDtToWrite(137);
	      when b"10001010" =>
	        reg_data_out <= memDtToWrite(138);
	      when b"10001011" =>
	        reg_data_out <= memDtToWrite(139);
	      when b"10001100" =>
	        reg_data_out <= memDtToWrite(140);
	      when b"10001101" =>
	        reg_data_out <= memDtToWrite(141);
	      when b"10001110" =>
            reg_data_out <= memDtToWrite(142);
          when b"10001111" =>
            reg_data_out <= memDtToWrite(143);
          when b"10010000" =>
            reg_data_out <= memDtToWrite(144);
          when b"10010001" =>
            reg_data_out <= memDtToWrite(145);
          when b"10010010" =>
            reg_data_out <= memDtToWrite(146);
          when b"10010011" =>
            reg_data_out <= memDtToWrite(147);
          when b"10010100" =>
            reg_data_out <= memDtToWrite(148);
          when b"10010101" =>
            reg_data_out <= memDtToWrite(149);
          when b"10010110" =>
            reg_data_out <= memDtToWrite(150);
          when b"10010111" =>
            reg_data_out <= memDtToWrite(151);
          when b"10011000" =>
            reg_data_out <= memDtToWrite(152);
          when b"10011001" =>
            reg_data_out <= memDtToWrite(153);
          when b"10011010" =>
            reg_data_out <= memDtToWrite(154);
          when b"10011011" =>
            reg_data_out <= memDtToWrite(155);
          when b"10011100" =>
            reg_data_out <= memDtToWrite(156);
          when b"10011101" =>
            reg_data_out <= memDtToWrite(157);
          when b"10011110" =>
            reg_data_out <= memDtToWrite(158);
          when b"10011111" =>
            reg_data_out <= memDtToWrite(159);
          when b"10100000" =>
            reg_data_out <= memDtToWrite(160);
          when b"10100001" =>
            reg_data_out <= memDtToWrite(161);
          when b"10100010" =>
            reg_data_out <= memDtToWrite(162);
          when b"10100011" =>
            reg_data_out <= memDtToWrite(163);
          when b"10100100" =>
            reg_data_out <= memDtToWrite(164);
          when b"10100101" =>
            reg_data_out <= memDtToWrite(165);
          when b"10100110" =>
            reg_data_out <= memDtToWrite(166);
          when b"10100111" =>
            reg_data_out <= memDtToWrite(167);
          when b"10101000" =>
            reg_data_out <= memDtToWrite(168);
          when b"10101001" =>
            reg_data_out <= memDtToWrite(169);
          when b"10101010" =>
            reg_data_out <= memDtToWrite(170);
          when b"10101011" =>
            reg_data_out <= memDtToWrite(171);
          when b"10101100" =>
            reg_data_out <= memDtToWrite(172);
          when b"10101101" =>
            reg_data_out <= memDtToWrite(173);
          when b"10101110" =>
            reg_data_out <= memDtToWrite(174);
          when b"10101111" =>
            reg_data_out <= memDtToWrite(175);
          when b"10110000" =>
            reg_data_out <= memDtToWrite(176);
          when b"10110001" =>
            reg_data_out <= memDtToWrite(177);
          when b"10110010" =>
            reg_data_out <= memDtToWrite(178);
          when b"10110011" =>
            reg_data_out <= memDtToWrite(179);
          when b"10110100" =>
            reg_data_out <= memDtToWrite(180);
          when b"10110101" =>
            reg_data_out <= memDtToWrite(181);
          when b"10110110" =>
            reg_data_out <= memDtToWrite(182);
          when b"10110111" =>
            reg_data_out <= memDtToWrite(183);
          when b"10111000" =>
            reg_data_out <= memDtToWrite(184);
          when b"10111001" =>
            reg_data_out <= memDtToWrite(185);
          when b"10111010" =>
            reg_data_out <= memDtToWrite(186);
          when b"10111011" =>
            reg_data_out <= memDtToWrite(187);
          when b"10111100" =>
            reg_data_out <= memDtToWrite(188);
          when b"10111101" =>
            reg_data_out <= memDtToWrite(189);
          when b"10111110" =>
            reg_data_out <= memDtToWrite(190);
          when b"10111111" =>
            reg_data_out <= memDtToWrite(191);
          when b"11000000" =>
            reg_data_out <= memDtToWrite(192);
          when b"11000001" =>
            reg_data_out <= memDtToWrite(193);
          when b"11000010" =>
            reg_data_out <= memDtToWrite(194);
          when b"11000011" =>
            reg_data_out <= memDtToWrite(195);
          when b"11000100" =>
            reg_data_out <= memDtToWrite(196);
          when b"11000101" =>
            reg_data_out <= memDtToWrite(197);
          when b"11000110" =>
            reg_data_out <= memDtToWrite(198);
          when b"11000111" =>
            reg_data_out <= memDtToWrite(199);
          when b"11001000" =>
            reg_data_out <= memDtToWrite(200);
          when b"11001001" =>
            reg_data_out <= memDtToWrite(201);
          when b"11001010" =>
            reg_data_out <= memDtToWrite(202);
          when b"11001011" =>
            reg_data_out <= memDtToWrite(203);
          when b"11001100" =>
            reg_data_out <= memDtToWrite(204);
          when b"11001101" =>
            reg_data_out <= memDtToWrite(205);
          when b"11001110" =>
            reg_data_out <= memDtToWrite(206);
          when b"11001111" =>
            reg_data_out <= memDtToWrite(207);
          when b"11010000" =>
            reg_data_out <= memDtToWrite(208);
          when b"11010001" =>
            reg_data_out <= memDtToWrite(209);
          when b"11010010" =>
            reg_data_out <= memDtToWrite(210);
          when b"11010011" =>
            reg_data_out <= memDtToWrite(211);
          when b"11010100" =>
            reg_data_out <= memDtToWrite(212);
          when b"11010101" =>
            reg_data_out <= memDtToWrite(213);
          when b"11010110" =>
            reg_data_out <= memDtToWrite(214);
          when b"11010111" =>
            reg_data_out <= memDtToWrite(215);
          when b"11011000" =>
            reg_data_out <= memDtToWrite(216);
          when b"11011001" =>
            reg_data_out <= memDtToWrite(217);
          when b"11011010" =>
            reg_data_out <= memDtToWrite(218);
          when b"11011011" =>
            reg_data_out <= memDtToWrite(219);
          when b"11011100" =>
            reg_data_out <= memDtToWrite(220);
          when b"11011101" =>
            reg_data_out <= memDtToWrite(221);
          when b"11011110" =>
            reg_data_out <= memDtToWrite(222);
          when b"11011111" =>
            reg_data_out <= memDtToWrite(223);
          when b"11100000" =>
            reg_data_out <= memDtToWrite(224);
          when b"11100001" =>
            reg_data_out <= memDtToWrite(225);
          when b"11100010" =>
            reg_data_out <= memDtToWrite(226);
          when b"11100011" =>
            reg_data_out <= memDtToWrite(227);
          when b"11100100" =>
            reg_data_out <= memDtToWrite(228);
          when b"11100101" =>
            reg_data_out <= memDtToWrite(229);
          when b"11100110" =>
            reg_data_out <= memDtToWrite(230);
          when b"11100111" =>
            reg_data_out <= memDtToWrite(231);
          when b"11101000" =>
            reg_data_out <= memDtToWrite(232);
          when b"11101001" =>
            reg_data_out <= memDtToWrite(233);
          when b"11101010" =>
            reg_data_out <= memDtToWrite(234);
          when b"11101011" =>
            reg_data_out <= memDtToWrite(235);
          when b"11101100" =>
            reg_data_out <= memDtToWrite(236);
          when b"11101101" =>
            reg_data_out <= memDtToWrite(237);
          when b"11101110" =>
            reg_data_out <= memDtToWrite(238);
          when b"11101111" =>
            reg_data_out <= memDtToWrite(239);
          when b"11110000" =>
            reg_data_out <= memDtToWrite(240);
          when b"11110001" =>
            reg_data_out <= memDtToWrite(241);
          when b"11110010" =>
            reg_data_out <= memDtToWrite(242);
          when b"11110011" =>
            reg_data_out <= memDtToWrite(243);
          when b"11110100" =>
            reg_data_out <= memDtToWrite(244);
          when b"11110101" =>
            reg_data_out <= memDtToWrite(245);
          when b"11110110" =>
            reg_data_out <= memDtToWrite(246);
          when b"11110111" =>
            reg_data_out <= memDtToWrite(247);
          when b"11111000" =>
            reg_data_out <= memDtToWrite(248);
          when b"11111001" =>
            reg_data_out <= memDtToWrite(249);
          when b"11111010" =>
            reg_data_out <= memDtToWrite(250);
          when b"11111011" =>
            reg_data_out <= memDtToWrite(251);
          when b"11111100" =>
            reg_data_out <= memDtToWrite(252);
          when b"11111101" =>
            reg_data_out <= memDtToWrite(253);
          when b"11111110" =>
            reg_data_out <= memDtToWrite(254);
          when b"11111111" =>
            reg_data_out <= memDtToWrite(255);  
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here
    --! @brief Updating buffer regs after AXI-buf had recieved new data
    process(clk) is
    begin
        if(rising_edge (clk)) then
            dataReadyPrev <= dataready;  
            if dataready = '1' and dataReadyPrev = '0' then
                if (rw = '0') then 
                    dataout <= memDtToRead(to_integer(unsigned(addressregister)))(DATA_BUS_WIDTH - 1 downto 0);
                else
                    memDtToWrite(to_integer(unsigned(addressregister)))(DATA_BUS_WIDTH - 1 downto 0) <= datain;
                end if;
            end if;                        
        end if;
    end process;
    
    done <= memDtToRead(0)(0); 
	-- User logic ends

end arch_imp;
