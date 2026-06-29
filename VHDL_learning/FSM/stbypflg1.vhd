library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity stbypflg1 is
    port (  clk,rst,x: in std_logic;
            y : out std_logic
    );
    end entity;



architecture rtl of stbypflg1 is
    signal flg : std_logic := '0';
    type state is (A,B);
    signal present_state,next_state : state;
begin
    process(clk,rst)
        variable count : natural range 0 to 3 := 0;
    begin
        if(rst='1') then
            present_state <= A;
            flg<='0';
        elsif rising_edge(clk) then
            present_state <= next_state;
        end if;
    end process;

    process(present_state,x)
    begin
        case present_state is
            when A =>
                if((x='1' and flg='1') then
                    flg<='0';
                    next_state <= B;
                elsif(x='0 ') then
                    flg<='1';
                    next_state <= A;
                end if;
            when B =>
                if((x='1' and flg='1') then
                    flg<='0';
                    next_state <= A;
                elsif(x='0 ') then
                    flg<='1';
                end if;
ext_state <= A;
        end case;
    end process;

end architecture rtl;
