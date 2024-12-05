library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity L1_INST_CACH is 
      port ( pc,datain :          in std_logic_vector (31 downto 0);
		       clk:		in		std_logic;	
             inst :        out std_logic_vector (31 downto 0));
end L1_INST_CACH; 
	
	
architecture rtl of L1_INST_CACH is 
 signal is_tag_equal, hit , valid_cach :               std_logic:='0';
 signal inst_ram , inst_sig , inst_cach : std_logic_vector (31 downto 0);
 signal tag_cach :                        std_logic_vector (27 downto 0);
 
 component DIRECT_MAP_ARRAY is 
	port (
		hit : in std_logic;
		data_in, pc : in std_logic_vector(31 downto 0);
		data_out : out std_logic_vector(31 downto 0);
		tag_out : out std_logic_vector(27 downto 0); 
		valid_out: out std_logic 
	);
 end component ;
 
 component IP_CACH_RAM IS 
PORT (	 address : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
             clock   : IN  STD_LOGIC ;
             data    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
             wren    : IN  STD_LOGIC  := '1';
             q       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;
 
 component MUX21 is
	generic (N:integer:=32); 
	port(A,B: in std_logic_vector(N-1 downto 0);
		sel : in std_logic;
		s   :out std_logic_vector(N-1 downto 0) );
 end component;
 

  begin 
    direct_map : DIRECT_MAP_ARRAY 
	        port map (hit,inst_sig,pc,inst_cach,tag_cach,valid_cach);
	 mux : MUX21
	   generic map (32)
      port map (inst_ram,inst_cach,hit,inst_sig);
	 cach_ram : IP_CACH_RAM 
	   port map (pc(4 downto 0),clk,datain,not(hit),inst_ram);
       
		hit <= is_tag_equal and valid_cach ;		
				
	 process(pc)

	 begin 
	   if (tag_cach = pc(31 downto 4)) then 
		  is_tag_equal <= '1';
		end if;
		  
    end process;
	 
    inst <= inst_sig ; 

end rtl ;