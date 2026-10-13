----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2025 11:56:59
-- Design Name: 
-- Module Name: EventCapturer64bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EventCapturer64bit is
    port (
        -- Системные сигналы
        clk        : in  std_logic;
        resetn     : in  std_logic;  -- активный низкий

        -- 64-битный входной вектор
        datain    : in  std_logic_vector(15 downto 0);

        -- AXI4-Stream Master ? подключается к S_AXIS_S2MM AXI DMA
        s_axis_tvalid : out std_logic;
        s_axis_tready : in  std_logic;
        s_axis_tdata  : out std_logic_vector(31 downto 0);
        s_axis_tkeep  : out std_logic_vector(3 downto 0);
        s_axis_tlast  : out std_logic;
        
        
        
        test  : out std_logic := '0'
    );
end EventCapturer64bit;

architecture Behavioral of EventCapturer64bit is

    signal databuf      : std_logic_vector(15 downto 0) := (others => '0');
    signal timestamp      : unsigned(63 downto 0) := (others => '0');
    signal timestampbuf      : unsigned(63 downto 0) := (others => '0');
    signal event_pending  : std_logic := '0';

    -- Состояние передачи: 0=data_lo, 1=data_hi, 2=ts_lo, 3=ts_hi
    signal phase          : unsigned(1 downto 0) := "00";

    signal data_to_send   : std_logic_vector(31 downto 0);
    
    signal s_axis_tvalid_int : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if resetn = '0' then
                -- сброс всех сигналов
                databuf <= (others => '0');       
                timestamp  <= (others => '0');
                event_pending <= '0';
                s_axis_tvalid_int <= '0';
                phase <= "00";
                s_axis_tlast  <= '0';
            else
                -- 1. Обновление счётчика и детекция события
                timestamp <= timestamp + 1;
                if datain /= databuf and event_pending = '0' then
                    timestampbuf <= timestamp;
                    databuf <= datain;
                    event_pending <= '1';  -- Запрос на передачу
                end if;
    
                -- 2. Управление передачей по AXI Stream
                if s_axis_tvalid_int = '0' and event_pending = '1' then
                    s_axis_tvalid_int <= '1';
                    phase <= "00";
                    s_axis_tlast  <= '0';
                elsif s_axis_tvalid_int = '1' and s_axis_tready = '1' then
                    if phase = "10" then
                        -- Переходим к фазе "11". Сигнал tlast встанет в '1' СТРОГО на фазе "11"
                        phase        <= "11";
                        s_axis_tlast <= '1'; 
                    elsif phase = "11" then
                        -- Последнее слово успешно передано (Handshake завершен)
                        s_axis_tvalid_int <= '0';
                        phase        <= "00";
                        s_axis_tlast <= '0';
                    else
                        phase <= phase + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Формирование данных в зависимости от фазы
    data_to_send <=
        databuf & x"FFFF"  when phase = "00" else  -- data_lo
        x"FFFF0000"     when phase = "01" else  -- data_hi
        std_logic_vector(timestampbuf(31 downto 0))  when phase = "10" else  -- ts_lo
        std_logic_vector(timestampbuf(63 downto 32));         -- ts_hi


    -- Выходы AXI4-Stream
    s_axis_tdata  <= data_to_send;
    s_axis_tkeep  <= "1111";   -- Все 4 байта валидны
    s_axis_tvalid <= s_axis_tvalid_int;
    test <= s_axis_tready;

end Behavioral;
