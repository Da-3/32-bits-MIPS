library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity L1_INST_CACH_tb is
end L1_INST_CACH_tb;

architecture tb_arch of L1_INST_CACH_tb is
    -- Constants
    constant CLK_PERIOD : time := 10 ns; -- Clock period

    -- Signals
    signal pc, datain : std_logic_vector(31 downto 0);
    signal ce, re, we : std_logic;
    signal inst : std_logic_vector(31 downto 0);

    -- Component instantiation
    component L1_INST_CACH is 
      port ( pc,datain :          in std_logic_vector (31 downto 0);
		       clk:		in		std_logic;	
             inst :  out std_logic_vector (31 downto 0));
    end component;

  

begin
    -- DUT instantiation
    dut : L1_INST_CACH
        port map (
            pc => pc,
            datain => datain,
            ce => ce,
            re => re,
            we => we,
            inst => inst
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize inputs
        pc <= (others => '0');
        datain <= (others => '0');
        ce <= '0';
        re <= '0';
        we <= '0';

        -- Wait for initialization
        wait for 10 ns;

        -- Apply stimulus
        pc <= x"00000000"; -- Example PC value
		  datain <= x"00000002"; -- Example datain value
		  wait for 5us;
        ce <= '1';
        re <= '0';
        we <= '1';
        datain <= x"00000002"; -- Example datain value

        -- Wait for some time
        wait for 10 us;
		  
		   -- Apply stimulus
        pc <= x"00000001"; -- Example PC value
		  datain <= x"00000004"; -- Example datain value
		  wait for 5us;
        ce <= '1';
        re <= '0';
        we <= '1';
        
		  
		    -- Wait for some time
        wait for 10 us;
		  
		   -- Apply stimulus
        pc <= x"00000000"; -- Example PC value
		  datain <= x"00000001"; -- Example datain value
		  wait for 5us;
        ce <= '1';
        re <= '1';
        we <= '0';
        
		  
		    -- Wait for some time
        wait for 10 us;
		  
		   -- Apply stimulus
        pc <= x"00000001"; -- Example PC value
		  datain <= x"00000003"; -- Example datain value
		  wait for 5us;
        ce <= '1';
        re <= '1';
        we <= '0';
        


        -- Wait for cache operation to complete
        wait for 10 us;

        -- End the simulation
        wait;
    end process;

end tb_arch;
