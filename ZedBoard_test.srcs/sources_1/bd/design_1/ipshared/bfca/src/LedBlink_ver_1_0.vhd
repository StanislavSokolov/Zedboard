--! @file LedBlink_ver_1_0.vhd
--! @brief VHDL implementation of a simple LED blinking component.
--! This file contains the VHDL code for a component that toggles an LED at a specific frequency
--! based on a counter and the system clock.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the LED blinking component.
--! @details This entity defines the interface for a component that blinks an LED at a fixed frequency.
entity LedBlink_ver_1_0 is
    generic(
        COUNT_MAX : integer := 16666667  --! Maximum count value to control the blinking frequency.
    );
    port(
        clk : in std_logic;  --! System clock signal.
        led : out std_logic := '0'  --! Output LED signal (initially off).
    );
end entity;

--! @brief Behavioral architecture for the LED blinking component.
--! @details This architecture implements the logic for toggling the LED at a fixed frequency
--! based on a counter and the system clock.
architecture behavorial of LedBlink_ver_1_0 is

    --! @brief Buffer for the LED output signal.
    --! @details This signal holds the current state of the LED before it is assigned to the output.
    signal ledBuf : std_logic := '0';

begin

    --! @brief Process to toggle the LED based on a counter.
    --! @details This process increments a counter on each clock cycle and toggles the LED
    --! when the counter reaches its maximum value.
    process(clk)
        variable cnt : integer range 0 to COUNT_MAX := 0;  --! Counter variable to control blinking frequency.
    begin
        if rising_edge(clk) then
            if cnt < COUNT_MAX then
                cnt := cnt + 1;  -- Increment the counter on each clock cycle.
            else
                cnt := 0;  -- Reset the counter when it reaches the maximum value.
                ledBuf <= not ledBuf;  -- Toggle the LED state.
            end if;
        end if;
    end process;

    --! @brief Assign the LED buffer to the output.
    --! @details The LED output is driven by the buffered signal to ensure proper synchronization.
    led <= ledBuf;

end behavorial;