library ieee;
use ieee.std_logic_1164.all; 

entity REG_IF_ID is
port(
		stallID					:	in		std_logic;
		new_pc			:	in	std_logic_vector(31 downto 0);
		inst				:	in std_logic_vector(31 downto 0);
		new_pc_out		:  out std_logic_vector(31 downto 0);
		inst_out			:	out std_logic_vector(31 downto 0)
);

end entity;

architecture rtl of REG_IF_ID is

begin

	process(clk) is
	begin
	if rising_edge(clk) then
		if(stallID = '1') then
				new_pc_out <= new_pc;
				inst_out <= inst;
		end if;
	end if;

	end process;
end rtl; 