library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_MIPS1 is 
port ( A , B : in std_logic_vector(31 downto 0 );
			f : in std_logic_vector(2 downto 0);
			s : out std_logic_vector(31 downto 0);
			z : out std_logic );
end entity;

architecture rtl of ALU_MIPS1 is 
begin 
process(A,B,f) is
	variable result : std_logic_vector(31 downto 0);
	begin
		case (f) is
      when "000" => -- AND
			result := A and B ;
		when "001" => -- OR
			result := A or B ;
		when "010" => -- ADD
			result := std_logic_vector (signed(A) + signed(B));
		when "011" => -- XOR
			result := A xor B ;
		when "101" => -- NOT
			result := not(B);
		when "110" => -- SUB
			result := std_logic_vector (signed(A) - signed(B));
		when "111" => -- SLT
			result := std_logic_vector (signed(A) - signed(B));
			if signed(result) < 0 then
				result := std_logic_vector(to_signed(1,32)); -- set to 1
				report "Result is negative";  -- Reporting the information
			else 
				result := (others => '0'); -- set to 0
				report "Result is non-negative";  -- Reporting the information
			end if;
		when others => -- 100 NAND
			result := A nand B ;
	end case ;
	
	
	-- SETTING ZERO SIGNAL --
	if signed(result) = 0 then
		Z <= '1';
	else
		Z <= '0';
	end if;
	
	
	-- SET RESULT TO OUTPUT --
	s <= result;
	
end process ;
end rtl ;