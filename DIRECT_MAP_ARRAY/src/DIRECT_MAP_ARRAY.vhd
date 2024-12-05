library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all ;

entity DIRECT_MAP_ARRAY is 
port (
	hit : in std_logic;
	data_in, pc : in std_logic_vector(31 downto 0);
	data_out : out std_logic_vector(31 downto 0);
	tag_out : out std_logic_vector(27 downto 0); 
	valid_out: out std_logic 
);
end entity ;

architecture rtl of DIRECT_MAP_ARRAY is 
	
type cach_array is array(0 to 15) of std_logic_vector(0 to 60);
signal cach_instruction : cach_array;
--signal set_int : integer range 0 to 15;
	 
begin

  process(data_in, pc, hit)
	variable set_int : integer range 0 to 15;
	 begin
	   set_int := to_integer(unsigned(pc(3 downto 0)));
		
		if hit = '0' then 
			cach_instruction(set_int)(29 to 60) <= data_in;   -- data_out
			cach_instruction(set_int)(1 to 28) <= pc(31 downto 4); -- tag_out
			cach_instruction(set_int)(0) <= '1';			-- valid_out

		end if;	
		
	data_out <= cach_instruction(set_int)(29 to 60);
	tag_out  <= cach_instruction(set_int)(1 to 28) ;
	valid_out <= cach_instruction(set_int)(0) ;
	
		
	end process ;
	
end rtl ;
			


