library ieee;
use ieee.std_logic_1164.all;
entity MUX31 is
generic (N:integer:=32); 
port(A,B,C: in std_logic_vector(N-1 downto 0);
		sel : in std_logic_vector(1  downto 0);
		s   :out std_logic_vector(N-1 downto 0) );

end MUX31;
architecture RTL of MUX31 is 
begin
with sel select 
S <= A when "00",
     B when "01",
     C when "10",
     (others =>'1')when "11";
end RTL;