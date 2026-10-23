library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KeyControllerP0N_ver_2_0 is
    port(
        clk : in std_logic;
        
        er0in : in std_logic;
		
		start : out std_logic := '0';
		isdeadtimeok : in std_logic;
		
		linepren : in std_logic;
		linepr : out std_logic := '0';

        keysout : out std_logic_vector(3 downto 0) := (others => '1');

        keysel : in std_logic_vector(1 downto 0);
        
        keysen : in std_logic_vector(3 downto 0);
        
        breaken : in std_logic;
        
        ready : in std_logic;
        
        ob : in std_logic_vector(1 downto 0);
        
        reset : in std_logic;
        
        softshutdownen : in std_logic;
        softshutdowntimer : in std_logic_vector(15 downto 0);
        
        softshutdownpr : out std_logic := '0'
    );
end entity;

architecture behavorial of KeyControllerP0N_ver_2_0 is

	type lineStateType is (Closed, SoftClosed, Zero, ZeroP, ZeroN, P, N);
	signal lineState : lineStateType := Closed;
	
	signal linePrBuf : std_logic := '0';
	signal errorBuf : std_logic := '0';
	signal keys : std_logic_vector(3 downto 0) := x"F";

begin

	linepr <= linePrBuf;
	keysout <= keys or keysen;
	
    process(clk)
		variable cnt : integer range 0 to 1 := 0;
		variable cntsoftsd : integer range 0 to 65535 := 0;
    begin
        if rising_edge(clk) then
			if reset = '1' then
				errorBuf <= '0';
				linePrBuf <= '0';
				start <= '0';
				cnt := 0;
				softshutdownpr <= '0';
				cntsoftsd := 0;
				lineState <= Closed;
				if breaken = '0' then
					keys <= (others => '1');
				else
					keys(1 downto 0) <= (others => '1');
					keys(3 downto 2) <= ob;
				end if;	
			else
				if breaken = '0' then
					if errorBuf = '0' and er0in = '0' and linePrBuf = '0' and ready = '1' then
						case lineState is
							when Closed =>
								keys <= (others => '1');
								cntsoftsd := 0;
								cnt := 0;
								start <= '0';
								case keysel is									
									when b"00" =>
										lineState <= Zero;										
									when b"01" =>
										if linepren = '1' then
											linePrBuf <= '1';
										end if;										
									when b"10" =>
										if linepren = '1' then
											linePrBuf <= '1';
										end if;					
									when b"11" =>
										lineState <= Closed;										 	
									when others => 
										lineState <= Closed;
								end case;
							when Zero =>
								keys <= b"1001";																								
								case keysel is
									when b"00" =>
										lineState <= Zero;
									when b"01" =>
										lineState <= ZeroN;
										start <= '1';
										cnt := 0;										
									when b"10" =>
										lineState <= ZeroP;
										start <= '1';
										cnt := 0;				
									when b"11" =>
										lineState <= Closed;	
									when others =>
										lineState <= Closed;
								end case;
							when ZeroP =>
								keys <= b"1011";
								if isDeadTimeOk = '1' and cnt = 1 then									
									case keysel is
										when b"00" =>
											lineState <= Zero;
										when b"01" =>
											if linepren = '1' then
												linePrBuf <= '1';
											end if;
										when b"10" =>
											lineState <= P;					
										when b"11" =>
											lineState <= Closed;	
										when others =>
											lineState <= Closed;
									end case;
								else 
									if cnt < 1 then
										cnt := cnt + 1;
									end if;
									start <= '0';	
								end if;
							when ZeroN =>
								keys <= b"1101";
								if isDeadTimeOk = '1' and cnt = 1 then									
									case keysel is
										when b"00" =>
											lineState <= Zero;
										when b"01" =>
											lineState <= N;
										when b"10" =>
											if linepren = '1' then
												linePrBuf <= '1';
											end if;					
										when b"11" =>
											lineState <= Closed;	
										when others =>
											lineState <= Closed;
									end case;
								else 
									if cnt < 1 then
										cnt := cnt + 1;
									end if;
									start <= '0';	
								end if;
							when P =>
								keys <= b"0011";
								case keysel is
									when b"00" =>
										lineState <= ZeroP;
										start <= '1';
										cnt := 0;
									when b"01" =>
										if linepren = '1' then
											linePrBuf <= '1';
										end if;
									when b"10" =>
										lineState <= P;
									when b"11" =>
										lineState <= Closed;	
									when others =>
										lineState <= Closed;
								end case;
							when N =>
								keys <= b"1100";
								case keysel is
									when b"00" =>
										lineState <= ZeroN;
										start <= '1';
										cnt := 0;
									when b"01" =>
										lineState <= N;
									when b"10" =>
										if linepren = '1' then
											linePrBuf <= '1';
										end if;					
									when b"11" =>
										lineState <= Closed;	
									when others =>
										lineState <= Closed;
								end case;
							when others =>
								keys <= (others => '1');
								lineState <= Closed;
								cntsoftsd := 0;
								cnt := 0;
								start <= '0';							
						end case;
					else 
						errorBuf <= '1';
						if softshutdownen = '1' then
							softshutdownpr <= '1';
							if cntsoftsd < to_integer(unsigned(softshutdowntimer)) then
								cntsoftsd := cntsoftsd + 1;
								case lineState is
									when Closed =>
										keys <= (others => '1');
									when Zero => 
										keys <= b"1001";
									when ZeroP =>
										keys <= b"1011";
										if isDeadTimeOk = '1' and cnt = 1 then									
											lineState <= Zero;
										else 
											if cnt < 1 then
												cnt := cnt + 1;
											end if;
											start <= '0';	
										end if;	
									when ZeroN =>
										keys <= b"1101";
										if isDeadTimeOk = '1' and cnt = 1 then									
											lineState <= Zero;
										else 
											if cnt < 1 then
												cnt := cnt + 1;
											end if;
											start <= '0';	
										end if;		
									when P =>
										keys <= b"1011";									
										start <= '1';
										cnt := 0;
										lineState <= ZeroP;
									when N =>
										keys <= b"1101";									
										start <= '1';
										lineState <= ZeroN;									
									when others => 
										start <= '0';
								end case;
							else
								keys <= (others => '1');
								lineState <= Closed;
							end if;
						else			
							keys <= (others => '1');
							lineState <= Closed;							
						end if;	
					end if;	
				else
					if errorBuf = '0' and er0in = '0' and ready = '1' then
						keys(1 downto 0) <= keysel;
						keys(3 downto 2) <= ob;
					else
						keys(1 downto 0) <= (others => '1');
						keys(3 downto 2) <= ob;
						errorBuf <= '1';
					end if;	
				end if;
			end if;
		end if;
	end process;

end behavorial;