library ieee ; 
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
 entity register_file is 
 
  generic ( M : integer := 32 ;
            N : integer := 5 
				
			  );
				
	port 	 ( Reg_w    : in  std_logic ; 
	         rd_addr1 : in  std_logic_vector ( N-1 downto 0 ) ;
	         rd_addr2 : in  std_logic_vector ( N-1 downto 0 ) ;
	         w_addr   : in  std_logic_vector ( N-1 downto 0 ) ;
				w_data   : in  std_logic_vector ( M-1 downto 0 ) ;
				rd_data1 : out std_logic_vector ( M-1 downto 0 ) ;
				rd_data2 : out std_logic_vector ( M-1 downto 0 ) 
			 );
			 
	end register_file ;		 
			
 architecture behav of register_file is  		
	type reg_file is array ( 0 to 2**N-1) of std_logic_vector ( M-1 downto 0 ) ; 
	signal array_regfile : reg_file := ( X"00000000" , --$0
                                        X"00000001" , --$at
                                        X"00000002" , --$v0
                                        X"00000003" , --$v1
                                        X"00000004" , --$a0
													 X"00000005" , --$a1
													 X"00000006" , --$a2
													 X"00000007" , --$a3
													 X"00000008" , --$t0
													 X"00000009" , --$t1
													 X"0000000A" , --$t2
													 X"0000000B" , --$t3
													 X"0000000C" , --$t4
													 X"0000000D" , --$t5
													 X"0000000E" , --$t6
													 X"0000000F" , --$t7
													 X"00000010" , --$s0
													 X"00000011" , --$s1
													 X"00000012" , --$s2
													 X"00000013" , --$s3
													 X"00000014" , --$s4
													 X"00000015" , --$s5
													 X"00000016" , --$s6
													 X"00000017" , --$s7
													 X"00000018" , --$t8
													 X"00000019" , --$t9
													 X"0000001A" , --$k0
													 X"0000001B" , --$k1
													 X"0000001C" , --$gp
													 X"0000001D" , --$sp
													 X"0000001E" , --$fp
													 X"0000001F"  ); --$ra
 begin 
  process ( Reg_w )
  begin 
    if ( Reg_w ='1' ) then 
	   array_regfile(to_integer(unsigned( w_addr))) <=  w_data ;
	 end if ;
	 end process ;  
	   rd_data1 <=  array_regfile(to_integer(unsigned( rd_addr1))) ;
		rd_data2 <=  array_regfile(to_integer(unsigned( rd_addr2))) ;
 
 end behav ;