LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY IP_CACH_RAM IS 
PORT (	 address : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             clock   : IN  STD_LOGIC ;
             data    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
             wren    : IN  STD_LOGIC  := '1';
             q       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END IP_CACH_RAM;

ARCHITECTURE arch OF IP_CACH_RAM IS
   COMPONENT ram_ip 
      PORT ( address : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             clock   : IN  STD_LOGIC ;
             data    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
             wren    : IN  STD_LOGIC  := '1';
             q       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT; 
BEGIN


   U1: ram_ip PORT MAP (Address => address, Clock => Clock, Data => Data, Wren => wren, q => q);
	
	end arch;