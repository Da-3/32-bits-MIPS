library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CACHE_RAM_TB is
end entity CACHE_RAM_TB;

architecture tb_arch of CACHE_RAM_TB is
    -- Constants

    -- Signals
    signal pc, data_in, data_out : std_logic_vector(31 downto 0);
    signal ce, re, we : std_logic;

    -- Component instantiation
    component CACHE_RAM
        port (
            pc, data_in : in std_logic_vector(31 downto 0);
            ce, re, we : in std_logic;
            data_out : out std_logic_vector(31 downto 0)
        );
    end component;

begin
    -- DUT instantiation
    dut : CACHE_RAM
        port map (
            pc => pc,
            data_in => data_in,
            ce => ce,
            re => re,
            we => we,
            data_out => data_out
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        pc <= (others => '0');
        data_in <= (others => '0');
        ce <= '0';
        re <= '0';
        we <= '0';

        -- Wait for initialization
        wait for 10 ns;

        -- Apply stimulus
        data_in <= "11111111111111111111111111111111"; -- Example data_in value
			wait for 5ns;
        pc <= "00000000000000000000000000000001"; -- Example PC value
        ce <= '1';
        re <= '0';
        we <= '1';


        -- Wait for some time
        wait for 50 ns;

       -- Apply stimulus
        data_in <= "11111111100001111111111111111111"; -- Example data_in value
wait for 5ns;
        pc <= "00000000000000000000000000000001"; -- Example PC value
        ce <= '1';
        re <= '1';
        we <= '0';



        -- End the simulation
        wait;
    end process;

end tb_arch;
