library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC_ADD is
port(
		pc					:	in		std_logic_vector(31 downto 0);
		new_pc			:	out	std_logic_vector(31 downto 0)
);

end entity;

architecture rtl of PC_ADD is

begin

	new_pc <= std_logic_vector(unsigned(pc) + 1);	
end rtl; 