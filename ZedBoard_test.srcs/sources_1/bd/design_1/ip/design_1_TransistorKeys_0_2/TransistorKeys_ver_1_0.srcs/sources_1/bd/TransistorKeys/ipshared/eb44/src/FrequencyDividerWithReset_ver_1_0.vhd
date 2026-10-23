--! @file FrequencyDividerWithReset_ver_1_0.vhd
--! @brief VHDL implementation of a frequency divider with reset functionality.
--! This file contains the VHDL code for a component that divides the input clock frequency
--! by a configurable factor and provides a reset feature to synchronize the output.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the frequency divider with reset component.
--! @details This entity defines the interface for a component that divides the input clock frequency
--! by a configurable factor (`COUNTER`) and provides a reset signal to reset the divider.
entity FrequencyDividerWithReset_ver_1_0 is
    generic(
        COUNTER : integer := 249  --! Counter limit to determine the division factor.
    );
    port(
        clk : in std_logic;  --! Input clock signal.
        reset : in std_logic;  --! Reset signal to reset the divider.
        clkdiv : out std_logic := '0'  --! Output divided clock signal.
    );
end entity;

--! @brief Behavioral architecture for the frequency divider with reset component.
--! @details This architecture implements the logic to divide the input clock frequency
--! by counting up to a specified limit (`COUNTER`) and toggling the output signal.
architecture behavorial of FrequencyDividerWithReset_ver_1_0 is
begin

    --! @brief Process to implement the frequency division logic.
    --! @details This process counts clock cycles up to the specified limit (`COUNTER`).
    --! When the counter reaches the limit, the output clock (`clkdiv`) toggles, and the counter resets.
    process(clk)
        variable cnt : integer range 0 to COUNTER := 0;  --! Counter variable to track clock cycles.
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Reset the counter and output signal when the reset signal is active.
                cnt := 0;
                clkdiv <= '0';
            else
                if cnt < COUNTER then
                    -- Increment the counter while it is less than the limit.
                    cnt := cnt + 1;
                    clkdiv <= '0';  -- Keep the output low during counting.
                else
                    -- Reset the counter and toggle the output signal when the limit is reached.
                    cnt := 0;
                    clkdiv <= '1';  -- Set the output high for one clock cycle.
                end if;
            end if;
        end if;
    end process;

end behavorial;