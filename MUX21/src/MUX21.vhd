library ieee;
use ieee.std_logic_1164.all;
entity MUX21 is
generic (N:integer:=32); 
port(A,B: in std_logic_vector(N-1 downto 0);
		sel : in std_logic;
		s   :out std_logic_vector(N-1 downto 0) );

end MUX21;
architecture RTL of MUX21 is 
begin
with sel select 
S <= A when '0',
     B when '1',
	  A when others;
end RTL;