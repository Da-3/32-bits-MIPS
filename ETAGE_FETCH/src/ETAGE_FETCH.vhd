library ieee;
use ieee.std_logic_1164.all;
entity ETAGE_FETCH is 
port ( clk : in std_logic ;
       PCSrc,IF_FLUSH,PC_WRITE : in std_logic ; 
       add_branch 
      );
end ETAGE_FETCH;		
	