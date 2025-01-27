library ieee;
use ieee.std_logic_1164.all;

entity forwarding_decode is 
port (IF_ID_RS ,IF_ID_RT, EX_MEM_RD: in std_logic_vector (4 downto 0);
      forwardingA ,forwardingB :out std_logic  );
end entity;

architecture arch of forwarding_decode is 
begin 
process(IF_ID_RS ,IF_ID_RT, EX_MEM_RD )
begin 
if (IF_ID_RS = EX_MEM_RD) then
 forwardingA <= '1';
else
forwardingA <= '0';
end if;
if (IF_ID_RT = EX_MEM_RD) then
forwardingB <='0';
else
forwardingB <='1';
end if;
end process;
end arch ;