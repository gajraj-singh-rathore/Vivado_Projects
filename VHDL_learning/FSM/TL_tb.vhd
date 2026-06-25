library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity TL_tb is
    end entity;


architecture rtl of TL_tb is
    component TL is
    port (
        test,stdby,clk : in std_logic;
        r1,g1,r2,g2,y1,y2 : out std_logic

    );
    end component;
    signal test,stdby,r1,g1,r2,g2,y1,y2 : std_logic;
    signal clk: std_logic := '0';


begin
    clk<= not clk after 10 ns;
    uut: TL port map(test,stdby,clk,r1,g1,r2,g2,y1,y2);
    process
    begin
        test<='0';
        stdby<='0';
        wait for 100 ns;
        test<='1';
        wait for 100 ns;
        test<='0';
        wait for 100 ns;
        stdby<='1';
        wait for 100 ns;
        stdby<='0';
        wait for 100 ns;
        wait;
    end process;


end architecture rtl;
