library ieee;
use ieee.std_logic_1164.all; 

entity REG_IF_EX is
port(
		pc    			:	in	std_logic_vector(31 downto 0);
		readData1		:	in std_logic_vector(31 downto 0);
		readData2		:	in std_logic_vector(31 downto 0);
		sign_ext			:	in std_logic_vector(31 downto 0);
		
		----
		Rs					:	in std_logic_vector(4 downto 0);
		Rd					:	in std_logic_vector(4 downto 0);
		Rt					:	in std_logic_vector(4 downto 0);
		
		----
		MemWrite 		:	in std_logic;
		Memtoreg			:	in	std_logic;
		reg_dest			: 	in std_logic;
		alu_src     	: 	in std_logic;
		MemRead			:	in std_logic;
		alu_op		   :	in std_logic_vector(1 downto 0);
		
		---
		Rs_out			:	out std_logic_vector(4 downto 0);
		Rd_out			:	out std_logic_vector(4 downto 0);
		Rt_out			:	out std_logic_vector(4 downto 0);
		
		---
		sign_ext_out	:	out std_logic_vector(31 downto 0);
		readData1_out	:	out std_logic_vector(31 downto 0);
		readData2_out	:	out std_logic_vector(31 downto 0);
		pc_out   		:  out std_logic_vector(31 downto 0);
		
		---
		MemRead_out		:  out std_logic;
		alu_src_out		: 	out std_logic;
		alu_op_out		:	out std_logic_vector(1 downto 0);
		reg_dest_out	:	out std_logic;
		MemWrite_out   :	out std_logic;
		Memtoreg_out	:	out std_logic
		
		
);

end entity;

architecture rtl of REG_IF_EX is

begin

	process(clk) is
	begin
	if rising_edge(clk) then
		Rs_out <= Rs;
		Rd_out <= Rd;
		Rt_out <= Rt;
		sign_ext_out <=  sign_ext ;
		readData1_out	<= readData1 ;
		readData2_out <= readData2 ;
		pc_out <= pc ;
		alu_src_out <= alu_src ;
		alu_op_out <= alu_op ;
		reg_dest_out <= reg_dest ;
		MemWrite_out <= MemWrite ;
		Memtoreg_out <= Memtoreg ;
		MemRead_out <= MemRead ;
	end if;

	end process;
end rtl; 