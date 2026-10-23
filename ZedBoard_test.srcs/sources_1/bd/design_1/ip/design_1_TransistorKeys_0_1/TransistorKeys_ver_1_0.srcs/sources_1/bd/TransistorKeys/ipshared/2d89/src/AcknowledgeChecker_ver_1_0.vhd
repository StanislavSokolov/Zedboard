library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AcknowledgeChecker_ver_1_0 is
    generic(
        QUANTITY_ACKNOWLEDGES : integer := 8;
        COUNTER : integer := 500 
    );

    port(
        clk : in std_logic;
        
        ackin : in std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0);
        
        currentpren : in std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0);
		ackpren : in std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0);
		
		currentpr : out std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0) := (others => '0');
		ackpr : out std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0) := (others => '0');

        acktime : in std_logic_vector(7 downto 0);

        keyin : in std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0);
        
        ready : in std_logic;
        
        reset : in std_logic
    );
end entity;

architecture behavorial of AcknowledgeChecker_ver_1_0 is

	type acknowledgeState is (Waiting, Check, WaitingStrobeEnd);
	type acknowledgeArray is array (natural range <>) of acknowledgeState;
	signal acknowledges : acknowledgeArray(0 to QUANTITY_ACKNOWLEDGES - 1) := (others => Waiting);
	
	signal keyInPrev : std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0) := (others => '0');
	signal ackInPrev : std_logic_vector(QUANTITY_ACKNOWLEDGES - 1 downto 0) := (others => '0');

begin


    process(clk)
		type counter_array is array (0 to QUANTITY_ACKNOWLEDGES - 1) of integer range 0 to COUNTER;
		variable cnts : counter_array := (others => 0);
    begin
        if rising_edge(clk) then
			for i in 0 to QUANTITY_ACKNOWLEDGES - 1 loop
				keyInPrev(i) <= keyin(i);
				ackInPrev(i) <= ackin(i);	
				if reset = '1' then
					currentpr(i) <= '0';
					ackpr(i) <= '0';
					cnts(i) := 0;
					acknowledges(i) <= Waiting;
				else 
					case acknowledges(i) is
						when Waiting =>
							if keyin(i) /= keyInPrev(i) and ready = '1' then
								acknowledges(i) <= Check;
							else
								if ackin(i) = '1' and currentpren(i) = '1' and ready = '1' then
									currentpr(i) <= '1';
								end if;
							end if;
							cnts(i) := 0;
						when Check =>
							if cnts(i) < to_integer(unsigned(acktime)) then
								cnts(i) := cnts(i) + 1;
								if ackin(i) = '1' and ackInPrev(i) = '0' then
									acknowledges(i) <= WaitingStrobeEnd;
								end if;
							else
								cnts(i) := 0;
								acknowledges(i) <= Waiting;
								if ackpren(i) = '1' then
									ackpr(i) <= '1';
								end if;
							end if;
						when WaitingStrobeEnd =>
							if cnts(i) < to_integer(unsigned(acktime)) then
								cnts(i) := cnts(i) + 1;
								if ackin(i) = '0' then
									acknowledges(i) <= Waiting;
								end if;
							else
								if currentpren(i) = '1' then
									currentpr(i) <= '1';
								end if;
								cnts(i) := 0;
								acknowledges(i) <= Waiting;
							end if;
						when others =>
							acknowledges(i) <= Waiting;
						
					end case;
				end if;
			end loop;
		end if;
	end process;

end behavorial;