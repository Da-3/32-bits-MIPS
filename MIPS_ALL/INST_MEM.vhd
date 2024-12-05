library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;

entity INST_MEM is 

port ( pc,datain                                       : in std_logic_vector (31 downto 0);
		       wren_ext, clk, ext_in_hit                 : in std_logic;	
				 tag_ext                                   : out std_logic_vector(27 downto 0);
             inst,inst_1                               : out std_logic_vector (31 downto 0);
				 ext_out_hit , valid_ext ,is_tag_equal_ext : out std_logic );
end INST_MEM; 


architecture rtl of INST_MEM is 
 signal is_tag_equal, hit , valid_cach   : std_logic;
 signal inst_ram , inst_sig , inst_cach  : std_logic_vector (31 downto 0);
 signal tag_cach                         : std_logic_vector (27 downto 0);
 signal cache_index                      : std_logic_vector(3 downto 0);
 signal ram_index                        : std_logic_vector(4 downto 0);

	Component On_Chip_ram32x32 is
		PORT
			(
				address	: IN 	STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN 	STD_LOGIC  := '1';
				data		: IN 	STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren		: IN 	STD_LOGIC ;
				q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
			);
	END Component;
	
	component CACHE_MEM is 
	port (
		hit           : in std_logic;
	   data_in, pc   : in std_logic_vector(31 downto 0);
		data_out      : out std_logic_vector(31 downto 0);
		tag_out       : out std_logic_vector(27 downto 0); 
		valid_out     : out std_logic 
	   );
 end component ;
 
 component MUX21 is
	generic (N:integer:=32); 
	port(A,B         : in std_logic_vector(N-1 downto 0);
		sel           : in std_logic;
		s             :out std_logic_vector(N-1 downto 0) );
 end component;
 
			
begin


ram_index <= pc(4 downto 0); 
cache_index <= pc(3 downto 0); 

U1: On_Chip_ram32x32 port map ( Address => ram_index ,Clock => clk,data => datain, wren => wren_ext ,q => inst_ram);
  
direct_map : CACHE_MEM port map (hit => hit, data_in => inst_sig ,pc => "0000000000000000000000000000" & cache_index ,data_out => inst_cach , tag_out => tag_cach, valid_out => valid_cach);

 mux : MUX21 generic map (32) port map (inst_ram,inst_cach,hit,inst);
 
 inst_sig <= inst_ram ; 
 inst_1 <= inst_cach ; 
 tag_ext <= tag_cach ;
 valid_ext <= valid_cach ; 
 is_tag_equal_ext <= is_tag_equal ;
 ext_out_hit <= hit ;
 	
process(pc, tag_cach, ext_in_hit, valid_cach)
begin
    if (ext_in_hit = '0') then 
        hit <= ext_in_hit;
    else
        if valid_cach = '1' then
            if (tag_cach = pc(31 downto 4)) then 
                is_tag_equal <= '1';
            else 
                is_tag_equal <= '0';
            end if;
            hit <= is_tag_equal;
        else
            hit <= '0';
        end if;
    end if;
end process;



end rtl;