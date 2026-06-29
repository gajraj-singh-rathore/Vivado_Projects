library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity stbypflg1 is
    port (  clk,rst,x: in std_logic;
            y : out std_logic
    );
    end entity;



architecture rtl of stbypflg1 is
    type state is (A,wait1,B,wait2);
    signal present_state,next_state : state;
begin
    process(clk,rst)
    begin
        if(rst='1') then
            present_state <= A;
        elsif rising_edge(clk) then
            present_state <= next_state;
        end if;
    end process;

    process(present_state,x)
    begin
        case present_state is
            when A =>
                y<='0';
                if((x='0') then
                    next_state <= wait1;
                end if;
            when waitA =>
                y<='0';
                if((x='1') then
                    next_state <= B;
                end if;
            when B =>
                y<='1';
                if((x='0') then
                    next_state <= wait2;
                end if
            when waitB =>
                y<='1';
                if((x='1') then
                    next_state <= A;
                end if;
        end case;
    end process;

end architecture rtl;
