library ieee ; 
use ieee.std_logic_1164.all ; 

entity exmemreg is
port (clk :            in std_logic ; 
     MUX_S_ex :        in std_logic_vector(4 downto 0);
	  RT_SW_ex,S_ALU_ex:in STD_LOGIC_VECTOR(31 downto 0);
	  MemRead_ex , MemWrite_ex ,Memtoreg_ex :in std_logic;
	  MUX_S_mem :                                out std_logic_vector(4 downto 0);
	  RT_SW_mem,S_ALU_mem:                       out STD_LOGIC_VECTOR(31 downto 0);
	  MemRead_mem , MemWrite_mem ,Memtoreg_mem : out std_logic
);
end exmemreg ;

architecture rtl of exmemreg is 

begin 

process(clk)

begin 

if(rising_edge(clk)) then
  MemRead_mem  <=  MemRead_ex  ;
  MemWrite_mem <=  MemWrite_ex ;
  Memtoreg_mem <=  Memtoreg_ex ;
  RT_SW_mem    <=  RT_SW_ex    ;
  S_ALU_mem    <=  S_ALU_ex    ;
  MUX_S_mem    <=  MUX_S_ex    ;
  
  end if ; 
  
 end process ;
 end rtl ;
 