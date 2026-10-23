library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IP_AXI_ManagerSerialBusSlave_v2_0 is
	generic (
		-- Users to add parameters here
        ADDRESS_BUS_WIDTH : integer := 8;  --! Width of the address bus.
        DATA_BUS_WIDTH : integer := 16;    --! Width of the data bus.
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 10
	);
	port (
		-- Users to add ports here
        
        addressregister : in std_logic_vector(ADDRESS_BUS_WIDTH - 1 downto 0);  --! Address register input.
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);            --! Data output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);              --! Data input.
        
        rw : in std_logic;  --! Read/Write signal (1 = read, 0 = write).
        dataready : in std_logic;  --! Data ready signal.
        
        keysen5 : out std_logic_vector(7 downto 0);
        deadTime5  : out std_logic_vector(7 downto 0);
        minTime5 : out std_logic_vector(7 downto 0);
        ackTime5 : out std_logic_vector(7 downto 0);
        currentpren5 : out std_logic_vector(7 downto 0);
        ackpren5 : out std_logic_vector(7 downto 0);
        mintimepren5 : out std_logic;
        linepren5 : out std_logic;
        softshutdownpren5 : out std_logic;
        softShutdownTimer5 : out std_logic_vector(15 downto 0);
        keysin5 : in std_logic_vector(7 downto 0);
        ackin5 : in std_logic_vector(7 downto 0);
        ackpr5 : in std_logic_vector(7 downto 0);
        currentpr5 : in std_logic_vector(7 downto 0);
        linepr5 : in std_logic;
        softshutdownpr5 : in std_logic;
        mintimepr5 : in std_logic;
        timeerror5 : in std_logic_vector(15 downto 0);
        breaken5 : out std_logic;
        ready5 : out std_logic;
        reset5 : out std_logic;
        
        keysen6 : out std_logic_vector(7 downto 0);
        deadTime6  : out std_logic_vector(7 downto 0);
        minTime6 : out std_logic_vector(7 downto 0);
        ackTime6 : out std_logic_vector(7 downto 0);
        currentpren6 : out std_logic_vector(7 downto 0);
        ackpren6 : out std_logic_vector(7 downto 0);
        mintimepren6 : out std_logic;
        linepren6 : out std_logic;
        softshutdownpren6 : out std_logic;
        softShutdownTimer6 : out std_logic_vector(15 downto 0);
        keysin6 : in std_logic_vector(7 downto 0);
        ackin6 : in std_logic_vector(7 downto 0);
        ackpr6 : in std_logic_vector(7 downto 0);
        currentpr6 : in std_logic_vector(7 downto 0);
        linepr6 : in std_logic;
        softshutdownpr6 : in std_logic;
        mintimepr6 : in std_logic;
        timeerror6 : in std_logic_vector(15 downto 0);
        breaken6 : out std_logic;
        ready6 : out std_logic;
        reset6 : out std_logic;
        
        keysen9 : out std_logic_vector(7 downto 0);
        deadTime9  : out std_logic_vector(7 downto 0);
        minTime9 : out std_logic_vector(7 downto 0);
        ackTime9 : out std_logic_vector(7 downto 0);
        currentpren9 : out std_logic_vector(7 downto 0);
        ackpren9 : out std_logic_vector(7 downto 0);
        mintimepren9 : out std_logic;
        linepren9 : out std_logic;
        softshutdownpren9 : out std_logic;
        softShutdownTimer9 : out std_logic_vector(15 downto 0);
        keysin9 : in std_logic_vector(7 downto 0);
        ackin9 : in std_logic_vector(7 downto 0);
        ackpr9 : in std_logic_vector(7 downto 0);
        currentpr9 : in std_logic_vector(7 downto 0);
        linepr9 : in std_logic;
        softshutdownpr9 : in std_logic;
        mintimepr9 : in std_logic;
        timeerror9 : in std_logic_vector(15 downto 0);
        breaken9 : out std_logic;
        ready9 : out std_logic;
        reset9 : out std_logic;
        
        keysenA : out std_logic_vector(7 downto 0);
        deadTimeA  : out std_logic_vector(7 downto 0);
        minTimeA : out std_logic_vector(7 downto 0);
        ackTimeA : out std_logic_vector(7 downto 0);
        currentprenA : out std_logic_vector(7 downto 0);
        ackprenA : out std_logic_vector(7 downto 0);
        mintimeprenA : out std_logic;
        lineprenA : out std_logic;
        softshutdownprenA : out std_logic;
        softShutdownTimerA : out std_logic_vector(15 downto 0);
        keysinA : in std_logic_vector(7 downto 0);
        ackinA : in std_logic_vector(7 downto 0);
        ackprA : in std_logic_vector(7 downto 0);
        currentprA : in std_logic_vector(7 downto 0);
        lineprA : in std_logic;
        softshutdownprA : in std_logic;
        mintimeprA : in std_logic;
        timeerrorA : in std_logic_vector(15 downto 0);
        breakenA : out std_logic;
        readyA : out std_logic;
        resetA : out std_logic;
        
        tkin : in std_logic_vector(15 downto 0);         
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end IP_AXI_ManagerSerialBusSlave_v2_0;

architecture arch_imp of IP_AXI_ManagerSerialBusSlave_v2_0 is

	-- component declaration
	component IP_AXI_ManagerSerialBusSlave_v2_0_S00_AXI is
		generic (
		ADDRESS_BUS_WIDTH : integer := 8;  --! Width of the address bus.
        DATA_BUS_WIDTH : integer := 16;    --! Width of the data bus.
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 10
		);
		port (
        addressregister : in std_logic_vector(ADDRESS_BUS_WIDTH - 1 downto 0);  --! Address register input.
        dataout : out std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);            --! Data output.
        datain : in std_logic_vector(DATA_BUS_WIDTH - 1 downto 0);              --! Data input.
        rw : in std_logic;  --! Read/Write signal (1 = read, 0 = write).
        dataready : in std_logic;  --! Data ready signal.
        
        keysen5 : out std_logic_vector(7 downto 0);
        deadTime5  : out std_logic_vector(7 downto 0);
        minTime5 : out std_logic_vector(7 downto 0);
        ackTime5 : out std_logic_vector(7 downto 0);
        currentpren5 : out std_logic_vector(7 downto 0);
        ackpren5 : out std_logic_vector(7 downto 0);
        mintimepren5 : out std_logic;
        linepren5 : out std_logic;
        softshutdownpren5 : out std_logic;
        softShutdownTimer5 : out std_logic_vector(15 downto 0);
        keysin5 : in std_logic_vector(7 downto 0);
        ackin5 : in std_logic_vector(7 downto 0);
        ackpr5 : in std_logic_vector(7 downto 0);
        currentpr5 : in std_logic_vector(7 downto 0);
        linepr5 : in std_logic;
        softshutdownpr5 : in std_logic;
        mintimepr5 : in std_logic;
        timeerror5 : in std_logic_vector(15 downto 0);
        breaken5 : out std_logic;
        ready5 : out std_logic;
        reset5 : out std_logic;
        
        keysen6 : out std_logic_vector(7 downto 0);
        deadTime6  : out std_logic_vector(7 downto 0);
        minTime6 : out std_logic_vector(7 downto 0);
        ackTime6 : out std_logic_vector(7 downto 0);
        currentpren6 : out std_logic_vector(7 downto 0);
        ackpren6 : out std_logic_vector(7 downto 0);
        mintimepren6 : out std_logic;
        linepren6 : out std_logic;
        softshutdownpren6 : out std_logic;
        softShutdownTimer6 : out std_logic_vector(15 downto 0);
        keysin6 : in std_logic_vector(7 downto 0);
        ackin6 : in std_logic_vector(7 downto 0);
        ackpr6 : in std_logic_vector(7 downto 0);
        currentpr6 : in std_logic_vector(7 downto 0);
        linepr6 : in std_logic;
        softshutdownpr6 : in std_logic;
        mintimepr6 : in std_logic;
        timeerror6 : in std_logic_vector(15 downto 0);
        breaken6 : out std_logic;
        ready6 : out std_logic;
        reset6 : out std_logic;
        
        keysen9 : out std_logic_vector(7 downto 0);
        deadTime9  : out std_logic_vector(7 downto 0);
        minTime9 : out std_logic_vector(7 downto 0);
        ackTime9 : out std_logic_vector(7 downto 0);
        currentpren9 : out std_logic_vector(7 downto 0);
        ackpren9 : out std_logic_vector(7 downto 0);
        mintimepren9 : out std_logic;
        linepren9 : out std_logic;
        softshutdownpren9 : out std_logic;
        softShutdownTimer9 : out std_logic_vector(15 downto 0);
        keysin9 : in std_logic_vector(7 downto 0);
        ackin9 : in std_logic_vector(7 downto 0);
        ackpr9 : in std_logic_vector(7 downto 0);
        currentpr9 : in std_logic_vector(7 downto 0);
        linepr9 : in std_logic;
        softshutdownpr9 : in std_logic;
        mintimepr9 : in std_logic;
        timeerror9 : in std_logic_vector(15 downto 0);
        breaken9 : out std_logic;
        ready9 : out std_logic;
        reset9 : out std_logic;
        
        keysenA : out std_logic_vector(7 downto 0);
        deadTimeA  : out std_logic_vector(7 downto 0);
        minTimeA : out std_logic_vector(7 downto 0);
        ackTimeA : out std_logic_vector(7 downto 0);
        currentprenA : out std_logic_vector(7 downto 0);
        ackprenA : out std_logic_vector(7 downto 0);
        mintimeprenA : out std_logic;
        lineprenA : out std_logic;
        softshutdownprenA : out std_logic;
        softShutdownTimerA : out std_logic_vector(15 downto 0);
        keysinA : in std_logic_vector(7 downto 0);
        ackinA : in std_logic_vector(7 downto 0);
        ackprA : in std_logic_vector(7 downto 0);
        currentprA : in std_logic_vector(7 downto 0);
        lineprA : in std_logic;
        softshutdownprA : in std_logic;
        mintimeprA : in std_logic;
        timeerrorA : in std_logic_vector(15 downto 0);
        breakenA : out std_logic;
        readyA : out std_logic;
        resetA : out std_logic;
        
        tkin : in std_logic_vector(15 downto 0);
        
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component IP_AXI_ManagerSerialBusSlave_v2_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
IP_AXI_ManagerSerialBusSlave_v1_0_S00_AXI_inst : IP_AXI_ManagerSerialBusSlave_v2_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH,
		ADDRESS_BUS_WIDTH => ADDRESS_BUS_WIDTH,
        DATA_BUS_WIDTH => DATA_BUS_WIDTH
	)
	port map (       
        addressregister => addressregister,
        dataout => dataout,
        datain => datain,        
        rw => rw,
        dataready => dataready,
        keysen5 => keysen5,
        deadTime5 => deadTime5,
        minTime5 => minTime5,
        ackTime5 => ackTime5,
        currentpren5 => currentpren5,
        ackpren5 => ackpren5,
        mintimepren5 => mintimepren5,
        linepren5 => linepren5,
        softshutdownpren5 => softshutdownpren5,
        softShutdownTimer5 => softShutdownTimer5,
        keysin5 => keysin5,
        ackin5 => ackin5,
        ackpr5 => ackpr5,
        currentpr5 => currentpr5,
        linepr5 => linepr5, 
        softshutdownpr5 => softshutdownpr5,
        mintimepr5 => mintimepr5,
        timeerror5 => timeerror5,
        breaken5 => breaken5,
        ready5 => ready5,
        reset5 => reset5, 
        keysen6 => keysen6,
        deadTime6 => deadTime6,
        minTime6 => minTime6,
        ackTime6 => ackTime6,
        currentpren6 => currentpren6,
        ackpren6 => ackpren6,
        mintimepren6 => mintimepren6,
        linepren6 => linepren6,
        softshutdownpren6 => softshutdownpren6,
        softShutdownTimer6 => softShutdownTimer6,
        keysin6 => keysin6,
        ackin6 => ackin6,
        ackpr6 => ackpr6,
        currentpr6 => currentpr6,
        linepr6 => linepr6, 
        softshutdownpr6 => softshutdownpr6,
        mintimepr6 => mintimepr6,
        timeerror6 => timeerror6,
        breaken6 => breaken6,
        ready6 => ready6,
        reset6 => reset6,  
        keysen9 => keysen9,
        deadTime9 => deadTime9,
        minTime9 => minTime9,
        ackTime9 => ackTime9,
        currentpren9 => currentpren9,
        ackpren9 => ackpren9,
        mintimepren9 => mintimepren9,
        linepren9 => linepren9,
        softshutdownpren9 => softshutdownpren9,
        softShutdownTimer9 => softShutdownTimer9,
        keysin9 => keysin9,
        ackin9 => ackin9,
        ackpr9 => ackpr9,
        currentpr9 => currentpr9,
        linepr9 => linepr9, 
        softshutdownpr9 => softshutdownpr9,
        mintimepr9 => mintimepr9,
        timeerror9 => timeerror9,
        breaken9 => breaken9,
        ready9 => ready9,
        reset9 => reset9, 
        keysenA => keysenA,
        deadTimeA => deadTimeA,
        minTimeA => minTimeA,
        ackTimeA => ackTimeA,
        currentprenA => currentprenA,
        ackprenA => ackprenA,
        mintimeprenA => mintimeprenA,
        lineprenA => lineprenA,
        softshutdownprenA => softshutdownprenA,
        softShutdownTimerA => softShutdownTimerA, 
        keysinA => keysinA,
        ackinA => ackinA,
        ackprA => ackprA,
        currentprA => currentprA,
        lineprA => lineprA, 
        softshutdownprA => softshutdownprA,
        mintimeprA => mintimeprA,
        timeerrorA => timeerrorA,
        breakenA => breakenA,
        readyA => readyA,
        resetA => resetA,  
        tkin => tkin,       
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
