library ieee;
use ieee.std_logic_1164.all;


entity shiftRegPL is
    port (clk, load,din: in std_logic;
           d: in std_logic_vector(3 downto 0);
           dout: out std_logic);
end entity shiftRegPL;


architecture rtl of shiftRegPL is
    signal q: STD_LOGIC_VECTOR(3 downto 0);
begin
    
    process(clk,load)
    begin
        if(load='1') then
            q<=d;
        else 
            if (clk'event and clk='1') then  
                q<=q(2 downto 0) & din;
            end if;
        end if;
    end process;

    dout<=q(3);
    
end architecture rtl;