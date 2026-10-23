--! @file OneStageSynchronizerAndDigitalFilterBlock_ver_1_0.vhd
--! @brief VHDL implementation of a one-stage synchronizer with digital filtering for multiple channels.
--! This file contains the VHDL code for a component that synchronizes multiple asynchronous signals
--! and applies a digital filter to reduce noise or glitches for each channel.

library ieee;
use ieee.std_logic_1164.all;  --! Standard IEEE library for logic types and operations.
use ieee.std_logic_arith.all;  --! Library for arithmetic operations on std_logic vectors.
use ieee.std_logic_unsigned.all;  --! Library for unsigned arithmetic operations.

--! @brief Entity for the one-stage synchronizer and digital filter component with multiple channels.
--! @details This entity defines the interface for a component that synchronizes multiple asynchronous signals
--! and applies a digital filter based on a phase shift parameter for each channel.
entity OneStageSynchronizerAndDigitalFilterBlock_ver_1_0 is
    generic(
        PHASE_SHIFT : integer := 1;  --! Number of clock cycles to delay the output signal for each channel.
        QUANTITY_CHANNELS : integer := 4  --! Number of channels to process.
    );
    port(
        clk : in std_logic;  --! System clock signal.
        async_signal : in std_logic_vector(QUANTITY_CHANNELS - 1 downto 0);  --! Asynchronous input signals for all channels.
        sync_signal : out std_logic_vector(QUANTITY_CHANNELS - 1 downto 0)  --! Synchronized and filtered output signals for all channels.
    );
end entity;

--! @brief Behavioral architecture for the one-stage synchronizer and digital filter component with multiple channels.
--! @details This architecture implements the logic for synchronizing multiple asynchronous signals
--! using a single flip-flop stage and applying a digital filter to stabilize the outputs.
architecture behavioral of OneStageSynchronizerAndDigitalFilterBlock_ver_1_0 is

    --! @brief Signal for the first synchronization stage for all channels.
    --! @details This signal captures the asynchronous input signals on the rising edge of the clock.
    signal sync_stage1 : std_logic_vector(QUANTITY_CHANNELS - 1 downto 0) := (others => '0');

    --! @brief Subtype for the counter range.
    --! @details This subtype defines the range of the counter used for phase shift delay.
    subtype limited_integer_cnt is integer range 0 to PHASE_SHIFT;

    --! @brief Array type for counters.
    --! @details This type defines an array of counters, one for each channel.
    type cnts is array (0 to QUANTITY_CHANNELS - 1) of limited_integer_cnt;

    --! @brief Signal for counters for all channels.
    --! @details This signal holds the current count values for each channel.
    signal cntBuf : cnts := (others => 0);

    --! @brief Subtype for the latch range.
    --! @details This subtype defines the range of the latch used to track the state of each channel.
    subtype limited_integer_latch is integer range 0 to 1;

    --! @brief Array type for latches.
    --! @details This type defines an array of latches, one for each channel.
    type latchs is array (0 to QUANTITY_CHANNELS - 1) of limited_integer_latch;

    --! @brief Signal for latches for all channels.
    --! @details This signal holds the current latch states for each channel.
    signal latchBuf : latchs := (others => 0);

begin

    --! @brief Process to synchronize the asynchronous signals for all channels.
    --! @details This process captures the asynchronous input signals on the rising edge of the clock
    --! and stores them in the first synchronization stage.
    process(clk)
    begin
        if rising_edge(clk) then
            sync_stage1 <= async_signal;  -- Capture the asynchronous signals for all channels.
        end if;
    end process;

    --! @brief Process to apply digital filtering and stabilize the outputs for all channels.
    --! @details This process applies a digital filter to the synchronized signals for each channel,
    --! ensuring that the outputs are stable and free from glitches.
    process(clk)
    begin
        if rising_edge(clk) then
            for i in 0 to QUANTITY_CHANNELS - 1 loop
                if sync_stage1(i) = '1' then
                    -- If the synchronized signal is high, start counting and set the latch.
                    if latchBuf(i) = 0 then
                        latchBuf(i) <= 1;  -- Set the latch to indicate the signal is active.
                        cntBuf(i) <= 0;    -- Reset the counter.
                    else
                        -- Continue counting until the phase shift is complete.
                        if cntBuf(i) < PHASE_SHIFT then
                            cntBuf(i) <= cntBuf(i) + 1;  -- Increment the counter.
                        else
                            sync_signal(i) <= '1';  -- Set the output signal high after the phase shift.
                            cntBuf(i) <= 0;        -- Reset the counter.
                        end if;
                    end if;
                else
                    -- If the synchronized signal is low, reset the latch and count down.
                    if latchBuf(i) = 1 then
                        latchBuf(i) <= 0;  -- Clear the latch to indicate the signal is inactive.
                        cntBuf(i) <= 0;    -- Reset the counter.
                    else
                        -- Continue counting until the phase shift is complete.
                        if cntBuf(i) < PHASE_SHIFT then
                            cntBuf(i) <= cntBuf(i) + 1;  -- Increment the counter.
                        else
                            sync_signal(i) <= '0';  -- Set the output signal low after the phase shift.
                            cntBuf(i) <= 0;        -- Reset the counter.
                        end if;
                    end if;
                end if;
            end loop;
        end if;
    end process;

end behavioral;