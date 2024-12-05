library ieee;
use ieee.std_logic_1164.all;

entity ALU_DECODER is
  port ( ALUOP: in  std_logic_vector(1 downto 0);
         FUNCT: in  std_logic_vector(5 downto 0);
	 F    : out std_logic_vector(2 downto 0));
end ALU_DECODER;

architecture rtl of ALU_DECODER is 
begin 
 process(ALUOP,FUNCT)
  begin 
   if(ALUOP = "00") then 
	F<= "010"; -- ADD
   elsif(ALUOP = "01") then 
	F<= "110"; -- SUB
   elsif(ALUOP = "10") then 
	F <= FUNCT(2 downto 0); -- FUNCTION OPERATION
   end if;
  end process;
end rtl;  

		
	 

	