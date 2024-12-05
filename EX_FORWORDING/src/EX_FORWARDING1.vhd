library ieee;
use ieee.std_logic_1164.all;

entity EX_FORWARDING1 is
    port (
        EX_MEM_RegisterRd, MEM_WB_RegisterRd: in std_logic_vector(4 downto 0);
        ID_EX_RegisterRs, ID_EX_RegisterRt: in std_logic_vector(4 downto 0);
        EX_MEM_RegWrite, MEM_WB_RegWrite: in std_logic;
        ForwardA, ForwardB: out std_logic_vector(1 downto 0)
    );
end EX_FORWARDING1;

architecture rtl of EX_FORWARDING1 is
begin
    process (EX_MEM_RegisterRd, MEM_WB_RegisterRd, ID_EX_RegisterRs, ID_EX_RegisterRt,
             EX_MEM_RegWrite, MEM_WB_RegWrite)
    begin
        -- Initialize to default values
        ForwardA <= "00";
        ForwardB <= "00";

        -- Check conditions for ForwardA Rs register
        if (EX_MEM_RegWrite = '1' and EX_MEM_RegisterRd = ID_EX_RegisterRs) then
            ForwardA <= "10"; -- Rs from DM
        elsif (MEM_WB_RegWrite = '1' and MEM_WB_RegisterRd = ID_EX_RegisterRs
               and EX_MEM_RegisterRd /= ID_EX_RegisterRs) then
            ForwardA <= "01"; -- Rs from WB
        end if;

        -- Check conditions for ForwardB Rt register
        if (EX_MEM_RegWrite = '1' and EX_MEM_RegisterRd = ID_EX_RegisterRt) then
            ForwardB <= "10"; -- Rt from DM
        elsif (MEM_WB_RegWrite = '1' and MEM_WB_RegisterRd = ID_EX_RegisterRt
               and EX_MEM_RegisterRd /= ID_EX_RegisterRt) then
            ForwardB <= "01"; -- Rt from WB
        end if;
    end process;
	 
end rtl;
