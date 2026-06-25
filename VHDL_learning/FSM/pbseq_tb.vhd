library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity pbseq_tb is
    port (
    );
    end entity;


architecture rtl of pbseq_tb is
    component pbseq is
    port (clk,rst : in std_logic;
          pb1,pb2,pb3 : in std_logic;
          ledIdle ,ledWin : out std_logic
    );
    end component;

    signal clk,rst,pb1,pb2,pb3,ledIdle,ledWin : std_logic;
begin
    clk<= not clk after 10 ns;
    uut: pbseq port map(clk,rst,pb1,pb2,pb3,ledIdle,ledWin);
    process

    begin
        rst<='1';
        wait for 100 ns;
        rst<='0';
        wait for 100 ns;
        pb1<='1';
        wait for 3 ms;
        pb1<='1';
        wait for 100 us;
        pb2<='1';
        wait for 100 ns;
        pb2<='0';
        wait for 100 us;
        pb3<='1';
        wait for 100 ns;
        pb3<='0';
        wait for 100 us;
        wait;
    end process;
end architecture rtl;
