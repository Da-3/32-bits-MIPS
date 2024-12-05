library ieee;
use ieee.std_logic_1164.all;

entity ETAGE_EXECUTE is
port(ALU_SRC,REG_DEST,MEM_WB_REG_WRITE,EX_MEM_REG_WRITE:in std_logic ;
	  ALUOP:in std_logic_vector(1 downto 0);
	  RD_ADDR,RT_ADDR,RS_ADDR,RD_WB,RD_MEM:in std_logic_vector(4 downto 0);
	  RS_RT_WB,RS_RT_MEM,RT_ID,RS_ID,SIGN_EXTENDED:in std_logic_vector(31 downto 0);
	  FUNCT:in std_logic_vector(5 downto 0);
	  MUX_S : out std_logic_vector(4 downto 0);
	  RT_SW,S_ALU:out STD_LOGIC_VECTOR(31 downto 0)
);
end entity;

architecture rtl of ETAGE_EXECUTE is
-- Signal Declarations
signal s_muxA,S_muxB,s_muxC : std_logic_vector(31 downto 0);
signal forwardA,forwardB : std_logic_vector(1 downto 0);
signal F : std_logic_vector(2 downto 0);

begin

-- Components
MUX31_A: entity work.MUX31
generic map (32)
port map (A=>RS_ID,B=>RS_RT_WB,C=>RS_RT_MEM,sel=>forwardA,s=>s_muxA);


MUX31_B: entity work.MUX31
generic map (32)
port map (A=>RT_ID,B=>RS_RT_WB,C=>RS_RT_MEM,sel=>forwardB,s=>s_muxC);

MUX21_ADDR: entity work.MUX21
generic map (5)
port map (A=>RT_ADDR,B=>RD_ADDR,sel=>REG_DEST,s=>MUX_S);

MUX21_DATA: entity work.MUX21
generic map (32)
port map (A=>SIGN_EXTENDED,B=>S_muxC,sel=>ALU_SRC,s=>S_muxB);

ALU : entity work.ALU_MIPS1
port map (A=>s_muxA,B=>s_muxB,f=>F,s=>S_ALU);

ALU_DECOD : entity work.ALU_DECODER
port map (ALUOP=>ALUOP,FUNCT=>FUNCT,F=>F);

EX_FORWARDING1 : entity work.EX_FORWARDING1
port map (EX_MEM_RegisterRd  => RD_MEM, 
			 MEM_WB_RegisterRd  => RD_WB,
			 ID_EX_RegisterRs   => RS_ADDR,
			 ID_EX_RegisterRt	  => RT_ADDR,
			 EX_MEM_RegWrite	  => EX_MEM_REG_WRITE,
			 MEM_WB_RegWrite	  => MEM_WB_REG_WRITE,
			 ForwardA			  => forwardA,
			 ForwardB			  => forwardB );


RT_SW<=s_muxC;


end rtl;
