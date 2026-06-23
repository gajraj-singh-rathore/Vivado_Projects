LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY vending_machine IS
    PORT (
        sysclk, rst : IN STD_LOGIC;
        nickelin, dimein, quarterin : IN std_logic;
        candy_out, nickel_out, dime_out,ledclk : OUT STD_LOGIC
    );
END vending_machine;

ARCHITECTURE fsm OF vending_machine IS

    TYPE state IS (
        st0, st5, st10, st15, st20,
        st25, st30, st35, st40, st45
    );

    SIGNAL pr_state, nx_state : state;

--    ATTRIBUTE enum_encoding : STRING;
--    ATTRIBUTE enum_encoding OF state : TYPE IS "sequential";
	 
	 signal nickel_in, dime_in, quarter_in: boolean;
	 signal clk : std_logic :='0';
	 --SIGNAL candy_out : std_logic;
BEGIN
	 nickel_in<=(nickelin='1');
	 dime_in<=(dimein='1');
	 quarter_in<=(quarterin='1');
	 
	 -- test leds
	 --candyout<='1';
	 ledclk<=clk;
	 ---- slower clock
	 PROCESS(sysclk, rst)
    VARIABLE temp : INTEGER RANGE 0 TO 24999999 := 0;
	 BEGIN
		 IF rst = '1' THEN
			temp := 0;
			clk <= '0';

		ELSIF rising_edge(sysclk) THEN
        IF temp = 24999999 THEN
            clk <= NOT clk;
            temp := 0;
        ELSE
            temp := temp + 1;
        END IF;
		END IF;
	END PROCESS;
				
    ---- SEquential part
    PROCESS (rst, clk)
	 
    BEGIN
        IF (rst = '1') THEN
            pr_state <= st0;

        ELSIF (clk'EVENT AND clk = '1') THEN
            pr_state <= nx_state;
        END IF;
    END PROCESS;

        -- Combinational Part
    PROCESS (pr_state, nickel_in, dime_in, quarter_in)
    BEGIN

        CASE pr_state IS

            WHEN st0 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '0';

                IF (nickel_in) THEN
                    nx_state <= st5;

                ELSIF (dime_in) THEN
                    nx_state <= st10;

                ELSIF (quarter_in) THEN
                    nx_state <= st25;

                ELSE
                    nx_state <= st0;
                END IF;

            WHEN st5 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '0';

                IF (nickel_in) THEN
                    nx_state <= st10;

                ELSIF (dime_in) THEN
                    nx_state <= st15;

                ELSIF (quarter_in) THEN
                    nx_state <= st30;

                ELSE
                    nx_state <= st5;
                END IF;

            WHEN st10 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '0';

                IF (nickel_in) THEN
                    nx_state <= st15;

                ELSIF (dime_in) THEN
                    nx_state <= st20;

                ELSIF (quarter_in) THEN
                    nx_state <= st35;

                ELSE
                    nx_state <= st10;
                END IF;

            WHEN st15 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '0';

                IF (nickel_in) THEN
                    nx_state <= st20;

                ELSIF (dime_in) THEN
                    nx_state <= st25;

                ELSIF (quarter_in) THEN
                    nx_state <= st40;

                ELSE
                    nx_state <= st15;
                END IF;

            WHEN st20 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '0';

                IF (nickel_in) THEN
                    nx_state <= st25;

                ELSIF (dime_in) THEN
                    nx_state <= st30;

                ELSIF (quarter_in) THEN
                    nx_state <= st45;

                ELSE
                    nx_state <= st20;
                END IF;

            WHEN st25 =>
                candy_out  <= '1';
                nickel_out <= '0';
                dime_out   <= '0';
                nx_state   <= st0;

            WHEN st30 =>
                candy_out  <= '1';
                nickel_out <= '1';
                dime_out   <= '0';
                nx_state   <= st0;

            WHEN st35 =>
                candy_out  <= '1';
                nickel_out <= '0';
                dime_out   <= '1';
                nx_state   <= st0;

            WHEN st40 =>
                candy_out  <= '0';
                nickel_out <= '1';
                dime_out   <= '0';
                nx_state   <= st35;

            WHEN st45 =>
                candy_out  <= '0';
                nickel_out <= '0';
                dime_out   <= '1';
                nx_state   <= st35;

        END CASE;

    END PROCESS;

END fsm;

