library ieee;
use ieee.std_logic_1164.all;


entity sigGen is
    port (
        clk: in STD_LOGIC;
        x,y: out STD_LOGIC
    );
end entity;



architecture rtl of sigGen is
    shared variable temp1,temp2 : integer := 0;
begin

    process(clk)
        
    begin
        case temp2 is 
            when 0=> x<=clk; temp2:=temp2+1;
            when 1=> x<='0';temp2:=0;
            when others=> temp2:=0;
        end case;
    end process;

    process(clk)
        
    begin
        case temp1 is 
            when 1=> y<=clk; temp1:=0;
            when 0=> y<='0';temp1:=temp1+1;
            when others => temp1:=0;
        end case;
    end process;
    





end architecture;