library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity TL is
    generic(clkprd : time := 20 ns);
    port (
        test,stdby,clk ; in std_logic;
        r1,g1,r2,g2,y1,y2 ; out std_logic

    );
    end entity;



architecture rtl of TL is
    alias timeRG : integer is 30;
    alias timeRY : integer is 5;
    alias timeGR : integer is 45;
    alias timeYR : integer is 5;
    alias timeTest: integer is 1;
    constant fclk : natural := 1 sec / clkprd;
    signal timer :  integer range 0 to 45*fclk ;

    type state is (RG,RY,GR,YR,YY);
    signal present_state,next_state : state;
begin
    process(clk,stdby) 
        variable count : natural range timer'range*fclk := 0;
    begin
        if(stdby='1') then
            present_state <= YY; 
            count := 0;
        elsif rising_edge(clk) then
                count := count + 1;
                if(count>=timer) then
                    present_state <= next_state;
                    count := 0;
                end if;
        end if;
    end process;

    process(present_state,test,stdby) 
    begin
        case present_state is
            when YY =>
                y1<='1', y2<='1', r1<='0', r2<='0', g1<='0', g2<='0';
                timer<=timeTest*fclk;
            when RG =>
                r1 <= '1'; g1 <= '0'; y1 <= '0';
                r2 <= '0'; g2 <= '1'; y2 <= '0';
                timer <= timeRG*fclk;
                next_state <= RY;
            when RY =>
                r1 <= '1'; g1 <= '0'; y1 <= '0';
                r2 <= '0'; g2 <= '0'; y2 <= '1';
                timer <= timeRY*fclk;
                next_state <= GR;
            when GR =>
                r1 <= '0'; g1 <= '1'; y1 <= '0';
                r2 <= '1'; g2 <= '0'; y2 <= '0';
                timer <= timeGR*fclk;
                next_state <= YR;
            when YR =>
                r1 <= '0'; g1 <= '0'; y1 <= '1';
                r2 <= '1'; g2 <= '0'; y2 <= '0';
                timer <= timeYR*fclk;
                next_state <= RG;
            when others =>
                r1 <= '0'; g1 <='0'; y1 <='0';
                r2 <='0'; g2 <='0'; y2 <='0';
                timer<=timeTest*fclk;
                next_state<=YY;
        end case;
        
        if(test='1') then
            timer<=timeTest*fclk;
        end if;
    end process;
end architecture rtl;
