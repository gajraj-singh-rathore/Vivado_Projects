library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;


entity speedometer_tb is
    end entity;
architecture rtl of speedometer_tb is
    component speedometer is
        port (clk: in std_logic;
            fpulse: in natural;
            powon,speedSel: in std_logic;
            led : out std_logic_vector(7 downto 0);
            speedOut : inout natural ;
            buzzer: inout std_logic
        
        );
    end component;
    signal clk: std_logic:='0';
    signal fpulse: natural:=0;
    signal powon,speedSel: std_logic:='0';
    signal led : std_logic_vector(7 downto 0);
    signal speedOut : natural;
    signal buzzer: std_logic;


begin
    uut: speedometer port map(clk,fpulse,powon,speedSel,led,speedOut,buzzer);

    clk<=not clk after 10 ns;
    powon<='1' after 100 ns;

    process
    begin
        for i in 0 to 85000 loop
            fpulse<=i;
            wait for 200 ns;
        end loop;
        fpulse<=78000;
        wait;
    end process;
    process
    begin
        -- at 25
        wait for 24*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 40
        wait for 14*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        --at 50
         wait for 9*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 57
        wait for 6*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 62
        wait for 4*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 67
        wait for 4*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 72
        wait for 4*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 77
        wait for 4*200 us;
        speedSel<='1';
        wait for 200 us;
        speedSel<='0';
        -- at 77
        
        
        wait;
    end process;


end architecture rtl;
