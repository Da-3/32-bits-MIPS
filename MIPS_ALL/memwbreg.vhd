library ieee ; 
use ieee.std_logic_1164.all ;

entity memwbreg is 
port ( clk : in std_logic  ;
       Memtoreg_mem : in std_logic ;
		 S_ALU_mem , data_mem ,MUX_S_mem  : in STD_LOGIC_VECTOR(31 downto 0);
       MUX_S_wb ,data_wb, S_ALU_wb : out STD_LOGIC_VECTOR(31 downto 0);
		 Memtoreg_wb : out std_logic 
);
end memwbreg ;

architecture rtl of memwbreg is 
begin
 
process (clk)
begin 
if (rising_edge(clk)) then  
 MUX_S_wb <= MUX_S_mem ;
 data_wb  <= data_mem  ;
 S_ALU_wb <= S_ALU_mem ;
 Memtoreg_wb <= Memtoreg_mem ;
 end if ;
 end process ; 
 end rtl ; 