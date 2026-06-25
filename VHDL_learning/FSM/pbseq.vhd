library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity pbseq is
    generic( clkprd : time := 20 ns);
    port (clk,rst : in std_logic;
          pb1,pb2,pb3 : in std_logic;
          ledIdle ,ledWin : out std_logic
    );
    end entity;
    


architecture rtl of pbseq is
    constant fclk : natural := 50_000;      --1 sec / clkprd;
    type state is (IDLE, S1, S2, S3);
    signal present_state,next_state : state;
    signal timer : integer range 0 to 3*fclk :=3*fclk;
begin
    -- sequentail process
    process(clk,rst)
        variable count : natural range 0 to 3*fclk := 0;
    begin
        if(rst='1') then
            present_state <= IDLE;
            count := 0;
        elsif rising_edge(clk) then
            count := count + 1;
            if(present_state=IDLE) then
                if(count>timer and next_state /= present_state) then
                    present_state <= next_state;
                    count := 0;
                end if;

            else    
                if(count>timer) then
                    present_state <= IDLE;
                    count := 0;
                elsif(next_state /= present_state) then
                    present_state <= next_state;
                    count := 0;
                end if;
            end if;
        end if;
    end process;

    -- combinational process

    process(present_state,pb1,pb2,pb3)
    begin
        case present_state is
            when IDLE =>
                ledIdle <= '1';
                ledWin <= '0';
                if(pb1='1') then
                    next_state <= S1;
                elsif(pb2='1' or pb3='1') then
                    next_state <= IDLE;
                end if;
            when S1 =>
                ledIdle <= '0';
                ledWin <= '0';
                if(pb2='1') then
                    next_state <= S2;
                elsif(pb1='1' or pb3='1') then
                    next_state <= IDLE;
                end if;
            when S2 =>
                ledIdle <= '0';
                ledWin <= '0';
                if(pb3='1') then
                    next_state <= S3;
                elsif(pb1='1' or pb2='1') then
                    next_state <= IDLE;
                end if;
            when S3 =>
                ledIdle <= '0';
                ledWin <= '1';
                next_state <= IDLE;

        end case;

    end process;
end architecture rtl;
