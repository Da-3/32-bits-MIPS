library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity L1_INST_CACH_TB is
end L1_INST_CACH_TB;

    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals
    signal pc, datain, inst : std_logic_vector(31 downto 0);
    signal clk : std_logic := '0';

begin
    -- Instantiate the unit under test (UUT)
    UUT : entity work.L1_INST_CACH
        port map (
            pc => pc,
            datain => datain,
            clk => clk,
            inst => inst
        );

       clk <= not clk after 10ns;

    -- Stimulus process
    stim_proc: process
    begin
        -- Stimulus generation
		  wait until rising_edge(clk);
		  wait for 5ns;
        pc <= x"00000000"; -- Example PC value
        datain <= x"12345678"; -- Example datain value
		  
		  wait until rising_edge(clk);
		  wait for 5ns;
        pc <= x"00000001"; -- Example PC value
        datain <= x"87654321"; -- Example datain value
		  
		  wait until rising_edge(clk);
		  wait for 5ns;
        pc <= x"00000000"; -- Example PC value
		  
		  wait until rising_edge(clk);
		  wait for 5ns;
        pc <= x"00000001"; -- Example PC value
		  
		  
        
        -- Wait for some time to observe the output
        wait for 20 ns;
        
        -- Additional test cases can be added here
        
        -- End the simulation
        wait;
    end process;

end tb_arch;
