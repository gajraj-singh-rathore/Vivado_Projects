library  ieee;
use ieee.std_logic_1164.all;


entity freqDiv is
   
    port( clk : in std_logic;
          outclk : out std_logic);
   
end entity;


architecture rtl of freqDiv is 
begin
    
    process(clk) 
        variable temp1 : integer range 0 to 5;
        variable temp2 : integer range 0 to 5;
    begin
        if rising_edge(clk) then
                temp1 := temp1+1;
        end if;
        if(temp1=5) then
            outclk<='1';
            temp1 := 0;
        end if;
        
        if falling_edge(clk) then
            temp2 := temp2+1;
        end if;
        if(temp2 =2) then
            outclk<='0';
        elsif (temp2=5) then
            temp2:=0;
        end if;
    end process;
end architecture;

           