library ieee ;
use ieee.std_logic_1164.all ;

entity ETAGE_DECODE is
port ( pc_next ,inst : in std_logic_vector (31 downto 0);
       ID_EX_MemRead  : in std_logic ;
		 EX_MEM_RegisterRd , ID_EX_Rt , MEM_WB_RegisterRd : in std_logic_vector(4 downto 0);
       RT_ADDR,RS_ADDR : out std_logic_vector (31 downto 0);
       SIGN_EXTENDED : out std_logic_vector(31 downto 0);
		 FUNCT:out std_logic_vector(5 downto 0);
		 ALUOP:out std_logic_vector(1 downto 0);
		 PCSrc : out std_logic;
);