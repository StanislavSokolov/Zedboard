--! @file OneStageSynchronizerAndDigitalFilterSingle_ver_1_0.vhd
--! @brief VHDL implementation of a single-stage synchronizer with digital filtering.
--! This file contains the VHDL code for a component that synchronizes an asynchronous signal
--! and applies a digital filter to reduce noise or glitches.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the single-stage synchronizer and digital filter component.
--! @details This entity defines the interface for a component that synchronizes an asynchronous signal
--! and applies a digital filter based on a phase shift parameter.
entity OneStageSynchronizerAndDigitalFilterSingle_ver_1_0 is
    generic(
        PHASE_SHIFT : integer := 1  --! Number of clock cycles to delay the output signal.
    );
    port(
        clk : in std_logic;          --! System clock signal.
        async_signal : in std_logic; --! Asynchronous input signal.
        sync_signal : out std_logic  --! Synchronized and filtered output signal.
    );
end entity;

--! @brief Behavioral architecture for the single-stage synchronizer and digital filter component.
--! @details This architecture implements the logic for synchronizing an asynchronous signal
--! and applying a digital filter to stabilize the output.
architecture behavioral of OneStageSynchronizerAndDigitalFilterSingle_ver_1_0 is

    --! @brief Signal for the first synchronization stage.
    --! @details This signal captures the asynchronous input signal on the rising edge of the clock.
    signal sync_stage1 : std_logic := '0';

begin

    --! @brief Process to synchronize the asynchronous signal.
    --! @details This process captures the asynchronous input signal on the rising edge of the clock
    --! and stores it in the first synchronization stage.
    process(clk)
    begin
        if rising_edge(clk) then
            sync_stage1 <= async_signal;  -- Capture the asynchronous signal.
        end if;
    end process;

    --! @brief Process to apply digital filtering and stabilize the output.
    --! @details This process applies a digital filter to the synchronized signal,
    --! ensuring that the output is stable and free from glitches.
    process(clk)
        variable cnt : integer range 0 to PHASE_SHIFT := 0;  --! Counter for phase shift delay.
        variable latch : integer range 0 to 1 := 0;         --! Latch to track the state of the signal.
    begin
        if rising_edge(clk) then
            if sync_stage1 = '1' then
                -- If the synchronized signal is high, start counting and set the latch.
                if latch = 0 then
                    latch := 1;  -- Set the latch to indicate the signal is active.
                    cnt := 0;    -- Reset the counter.
                else
                    -- Continue counting until the phase shift is complete.
                    if cnt < PHASE_SHIFT then
                        cnt := cnt + 1;  -- Increment the counter.
                    else
                        sync_signal <= '1';  -- Set the output signal high after the phase shift.
                        cnt := 0;           -- Reset the counter.
                    end if;
                end if;
            else
                -- If the synchronized signal is low, reset the latch and count down.
                if latch = 1 then
                    latch := 0;  -- Clear the latch to indicate the signal is inactive.
                    cnt := 0;    -- Reset the counter.
                else
                    -- Continue counting until the phase shift is complete.
                    if cnt < PHASE_SHIFT then
                        cnt := cnt + 1;  -- Increment the counter.
                    else
                        sync_signal <= '0';  -- Set the output signal low after the phase shift.
                        cnt := 0;           -- Reset the counter.
                    end if;
                end if;
            end if;
        end if;
    end process;

end behavioral;