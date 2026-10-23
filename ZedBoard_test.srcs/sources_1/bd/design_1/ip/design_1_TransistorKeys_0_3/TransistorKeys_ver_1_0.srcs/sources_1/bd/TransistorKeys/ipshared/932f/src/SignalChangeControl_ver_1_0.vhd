--! @file SignalChangeControl_ver_1_0.vhd
--! @brief VHDL implementation of a signal change control module.
--! This file contains the VHDL code for a component that detects changes in an input signal
--! and generates a control output (`ce`) based on the detected change.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the signal change control component.
--! @details This entity defines the interface for a component that monitors an input signal
--! and generates a control output when the signal changes.
entity SignalChangeControl_ver_1_0 is
    port(
        clk : in std_logic;  --! System clock signal.
        reset : out std_logic := '0';  --! Control output signal, active when a change is detected.
        signalchange : in std_logic_vector(1 downto 0)  --! Input signal to monitor for changes.
    );
end entity;

--! @brief Behavioral architecture for the signal change control component.
--! @details This architecture implements the logic to detect changes in the input signal
--! and generate the control output (`ce`) accordingly.
architecture behavorial of SignalChangeControl_ver_1_0 is

    signal signalChangeBuf : std_logic_vector(1 downto 0) := (others => '0');  --! Buffer to store the previous state of the input signal.

begin

    --! @brief Process to detect changes in the input signal.
    --! @details This process compares the current input signal with its previous state.
    --! If a change is detected, the control output (`ce`) is set to '1'; otherwise, it is set to '0'.
    process(clk)
    begin
        if rising_edge(clk) then
            -- Compare the current input signal with the buffered previous state.
            if signalchange /= signalChangeBuf then
                reset <= '1';  -- Set control output to '1' if a change is detected.
            else
                reset <= '0';  -- Otherwise, set control output to '0'.
            end if;

            -- Update the buffer with the current input signal.
            signalChangeBuf <= signalchange;
        end if;
    end process;

end behavorial;