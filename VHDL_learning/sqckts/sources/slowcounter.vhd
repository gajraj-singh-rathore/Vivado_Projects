library ieee;
use ieee.std_logic_1164.all;


entity slowcounter is
    port( clk : in std_logic;
          count: inout integer range 0 to 9);
end entity;



architecture rtl of slowcounter is

    
begin

    process(clk)
        variable temp: integer :=0;
    begin
        if(clk'event and clk='1') then
            temp:= temp+1;
            if(temp=10) then
                if(count=9) then 
                    count<=0;
                else
                
                    count<=count+1;
                end if;
                temp:=0;
            end if;
        end if;
    end process;







end architecture;