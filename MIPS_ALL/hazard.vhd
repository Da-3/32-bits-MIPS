library ieee;
use ieee.std_logic_1164.all;

entity hazard is
port(
ID_EX_MemRead, PCSrc                  :in std_logic;
ID_EX_Rt, IF_ID_Rs, IF_ID_Rt          :in std_logic_vector (4 downto 0);
pc_write, IF_ID_write, mu, IF_Flash   :out std_logic);
end entity;

architecture arche of hazard is
begin
  process(ID_EX_Rt, IF_ID_Rs, IF_ID_Rt, ID_EX_MemRead)
  begin
  if (ID_EX_MemRead = '1') and((ID_EX_Rt=IF_ID_Rs)or(ID_EX_Rt=IF_ID_Rt))then
  pc_write<= '0';
  IF_ID_write<= '0';
  mu<= '0';
  else
  pc_write<= '1';
  IF_ID_write<= '1';
  mu<= '1';
  end if;
  end process;
  
  process(PCSrc)
  begin
  if (PCSrc='1')then
  IF_Flash<= '0';
  else 
  IF_Flash<= '1';
  end if ;
  end process;
end arche;