library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mincounter is
    generic (
        fclk : natural :=50_000_000
    );
    port (
        clk, en ,rst : in STD_LOGIC;
        fullcount: inout STD_LOGIC;
        ssd1,ssd2 : out STD_LOGIC_VECTOR(6 downto 0)
    );

end entity;



architecture rtl of mincounter is

        signal count1: integer range 0 to 9 :=0;
        signal count2: integer range 0 to 6 :=0;
begin

    fullcount<='0';

    process(clk)
        variable temp : integer range 0 to fclk :=0;
    begin
        if rst='1' then 
            count1<=0;
            count2<=0;
            fullcount<='0';
        end if;              
        
        if(en='1' and fullcount='0') then 

            if rising_edge(clk) then
                temp := temp +1;
                if temp= fclk then
                    count1<=count1+1;
                    if count1=9 then
                        count1<= 0;
                        count2<=count2+1;
                        if count2=5 then
                            fullcount<='1';
                        end if;
                    end if;
                    temp:=0;
                end if;
            end if;
        end if;
    end process;




    with count1 select
        ssd1<="0000000" when 0,
              "0011000" when 1,
              "1101101" when 2,
              "0111110" when 3,
              "0011011" when 4,
              "0110111" when 5,
              "1110111" when 6,
              "0011100" when 7,
              "1111111" when 8,
              "0111111" when 9,
              "-------" when others;

    with count2 select
        ssd2<="0000000" when 0,
              "0011000" when 1,
              "1101101" when 2,
              "0111110" when 3,
              "0011011" when 4,
              "0110111" when 5,
              "1110111" when 6,
              "-------" when others;
              




end architecture;