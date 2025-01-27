library ieee ; 
use ieee.std_logic_1164.all ;

entity control_logic is 
port ( opcode : in std_logic_vector(5 downto 0);
       MemRead , MemWrite ,Memtoreg , jump, RegWrite , RegDst , ALUsrc ,branch : out std_logic ;
		 ALUop  : out std_logic_vector(1 downto 0 )) ; 
end control_logic ; 

 architecture behav of control_logic is 
 begin 
 
  process (opcode)
   begin
    RegWrite <= '0' ; 
    case (opcode) is 
    when "000000" => MemRead  <= '0' ; -- type R
                     MemWrite <= '0' ;
						   Memtoreg <= '0' ;
						   jump     <= '0' ; --
						   RegWrite <= '1' ; --
						   RegDst   <= '1' ;
						   ALUsrc   <= '0' ;
						   branch   <= '0' ; --
						   ALUop    <= "1X" ; 
	 when "100011" => MemRead  <= '1' ;   -- LOAD 
                    MemWrite <= '0' ;
						  Memtoreg <= '1' ;
						  jump     <= '0' ;
						  RegWrite <= '1' ; 
						  RegDst   <= '0' ;
						  ALUsrc   <= '1' ;
						  branch   <= '0' ;
						  ALUop    <= "00" ; 
	 when "101011" => MemRead  <= '0' ;   --STORE 
                    MemWrite <= '1' ;
						  Memtoreg <= 'X' ;
						  jump     <= '0' ;
						  RegWrite <= '0' ; 
						  RegDst   <= 'X' ;
						  ALUsrc   <= '1' ;
						  branch   <= '0' ;
						  ALUop    <= "00" ; 
	when "000100" => MemRead  <= '0' ;    --BRANCH
                    MemWrite <= '0' ;
						  Memtoreg <= 'X' ;
						  jump     <= '0' ;
						  RegWrite <= '0' ; 
						  RegDst   <= 'X' ;
						  ALUsrc   <= '0' ;
						  branch   <= '1' ;
						  ALUop    <= "01" ; 
	 when "000010" => MemRead  <= '0' ; --jump
                     MemWrite <= '0' ;
						   Memtoreg <= '0' ;
						   jump     <= '1' ;
						   RegWrite <= '0' ; 
						   RegDst   <= '0' ;
						   ALUsrc   <= '0' ;
						   branch   <= '0' ;
						   ALUop    <= "XX" ; 
	 when others =>   MemRead  <= '0' ; 
                     MemWrite <= '0' ;
						   Memtoreg <= '0' ;
						   jump     <= '0' ;
						   RegWrite <= '0' ; 
						   RegDst   <= '0' ;
						   ALUsrc   <= '0' ;
						   branch   <= '0' ;
						   ALUop    <= "00" ; 
  end case ; 
 end process ;   
end behav ;