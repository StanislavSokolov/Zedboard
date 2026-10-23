--! @file CalculatingDeadtime_ver_1_0.vhd
--! @brief VHDL implementation of a module for calculating dead time.
--! This file contains the VHDL code for a component that monitors a signal and checks
--! if it remains inactive for a specified dead time period (`deadtime`). If the signal
--! remains inactive for the required duration, the output `isdeadtimeok` is set to '1'.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the dead time calculation component.
--! @details This entity defines the interface for a component that monitors a signal
--! and determines whether it has been inactive for a configurable dead time period.
entity CalculatingDeadtime_ver_1_0 is
    generic(
        COUNTER : integer := 255  --! Maximum counter limit to prevent overflow.
    );
    port(
        clk : in std_logic;  --! System clock signal.
        ce : in std_logic;  --! Control enable signal to monitor signal changes.
        start : in std_logic;  --! Start signal to initialize monitoring.
        reset : in std_logic;  --! Reset signal to reset the module.
        deadtime : in std_logic_vector(7 downto 0);  --! Dead time threshold for signal inactivity.
        isdeadtimeok : out std_logic := '0'  --! Output signal indicating whether the dead time condition is met.
    );
end entity;

--! @brief Behavioral architecture for the dead time calculation component.
--! @details This architecture implements the logic to monitor a signal and determine
--! if it has been inactive for the specified dead time period.
architecture behavorial of CalculatingDeadtime_ver_1_0 is

begin

    --! @brief Process to monitor the signal and calculate dead time.
    --! @details This process counts clock cycles and checks if the signal remains inactive
    --! for the specified dead time period. If the condition is met, the output `isdeadtimeok` is set to '1'.
    process(clk)
        variable cnt : integer range 0 to COUNTER := 0;  --! Counter variable to track elapsed time.
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Reset the counter and output signal when the reset signal is active.
                cnt := 0;
                isdeadtimeok <= '0';  -- Clear the output signal.
            else
                if start = '1' then
                    -- If the start signal is active, reset the counter and clear the output signal.
                    cnt := 0;
                    isdeadtimeok <= '0';
                else
                    if ce = '1' then
                        -- If the control enable signal is active, increment the counter.
                        if cnt < conv_integer(deadtime) then
                            cnt := cnt + 1;  -- Increment the counter.
                        else
                            isdeadtimeok <= '1';  -- Set the output signal when the dead time is reached.
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

end behavorial;