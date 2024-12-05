library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC_COUNTER is
port(
	pc_write,clk		:	in		std_logic;
	pc						:	in		std_logic_vector(31 downto 0);
	new_pc				:	out	std_logic_vector(31 downto 0)
);

end entity;

architecture rtl of PC_COUNTER is

begin

	process(clk) is
	begin
	if rising_edge(clk) then
		if(pc_write = '1') then
				new_pc <= pc;
		end if;
	end if;
	

	end process;
end rtl;