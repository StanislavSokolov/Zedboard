--! @file CalculatingMintime_ver_1_0.vhd
--! @brief VHDL implementation of a module for calculating minimum time thresholds.
--! This file contains the VHDL code for a component that monitors a signal and checks
--! if it toggles within a specified minimum time frame (`mintime`). If the signal does not toggle
--! within the specified time, an error is generated.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the minimum time calculation component.
--! @details This entity defines the interface for a component that monitors a signal
--! and generates an error if the signal does not toggle within a configurable minimum time frame.
entity CalculatingMintime_ver_1_0 is
    generic(
        COUNTER : integer := 255  --! Maximum counter limit to prevent overflow.
    );
    port(
        clk : in std_logic;  --! System clock signal.
        ce : in std_logic;  --! Control enable signal to monitor signal changes.
        start : in std_logic;  --! Start signal to initialize monitoring.
        en : in std_logic;  --! Enable signal to activate error detection.
        reset : in std_logic;  --! Reset signal to reset the module.
        mintime : in std_logic_vector(7 downto 0);  --! Minimum time threshold for signal toggling.
        timeerror : out std_logic_vector(7 downto 0) := (others => '0');  --! Output signal indicating the time at which an error occurred.
        error : out std_logic := '0'  --! Error output signal, active when a timeout occurs.
    );
end entity;

--! @brief Behavioral architecture for the minimum time calculation component.
--! @details This architecture implements the logic to monitor a signal and generate an error
--! if the signal does not toggle within the specified minimum time frame.
architecture behavorial of CalculatingMintime_ver_1_0 is

    signal errorBuf : std_logic := '0';  --! Internal buffer to track the error state.

begin

    --! @brief Process to monitor the signal and detect timeouts.
    --! @details This process counts clock cycles and checks if the signal toggles
    --! within the specified minimum time frame. If the signal does not toggle, an error is generated.
    process(clk)
        variable cnt : integer range 0 to COUNTER := 0;  --! Counter variable to track elapsed time.
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Reset the error state, time error, and counter when the reset signal is active.
                errorBuf <= '0';
                timeerror <= (others => '0');
                cnt := conv_integer(mintime);  -- Initialize the counter with the minimum time value.
            else
                if start = '1' then
                    -- If the start signal is active, check if the counter is below the minimum time threshold.
                    if cnt < conv_integer(mintime) and en = '1' then
                        errorBuf <= '1';  -- Set the error state.
                        timeerror <= conv_std_logic_vector(cnt, 8);  -- Record the time at which the error occurred.
                    end if;
                    cnt := 0;  -- Reset the counter.
                else
                    if errorBuf = '0' then
                        -- If no error has occurred yet, increment the counter when the control enable signal is active.
                        if ce = '1' then
                            if cnt < conv_integer(mintime) then
                                cnt := cnt + 1;  -- Increment the counter.
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Assign the internal error buffer to the output error signal.
    error <= errorBuf;

end behavorial;