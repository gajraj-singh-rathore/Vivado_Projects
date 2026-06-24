library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity TLsynth is
    generic(clkprd : time := 20 ns);
    port (
        test,stdby,sysclk : in std_logic;
        r1,g1,r2,g2,y1,y2 ,clkled: out std_logic

    );
    end entity;



architecture rtl of TLsynth is
    constant timeRG : integer := 30;
    constant timeRY : integer := 5;
    constant timeGR : integer := 45;
    constant timeYR : integer := 5;
    constant timeTest: integer := 1;
  
	 
 
    type state is (RG,RY,GR,YR,YY);
	  
	 signal timer : natural range 0 to 45;
    signal present_state,next_state : state;
	 
	
	 
	 signal clk : std_logic:='1';
begin
	 clkled<=clk;
	 PROCESS(sysclk)
    VARIABLE temp : INTEGER RANGE 0 TO 24999999 := 0;
	 BEGIN
		
		IF rising_edge(sysclk) THEN
        IF temp = 24999999 THEN
            clk <= NOT clk;
            temp := 0;
        ELSE
            temp := temp + 1;
        END IF;
		END IF;
	END PROCESS;
	
	
    process(clk,stdby) 
        variable count : natural range 0 to 45 := 0;
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
                y1<='1'; y2<='1'; r1<='0'; r2<='0'; g1<='0'; g2<='0';
                timer<=timeTest;
					 next_state<=RY;
            when RG =>
                r1 <= '1'; g1 <= '0'; y1 <= '0';
                r2 <= '0'; g2 <= '1'; y2 <= '0';
                timer <= timeRG;
                next_state <= RY;
            when RY =>
                r1 <= '1'; g1 <= '0'; y1 <= '0';
                r2 <= '0'; g2 <= '0'; y2 <= '1';
                timer <= timeRY;
                next_state <= GR;
            when GR =>
                r1 <= '0'; g1 <= '1'; y1 <= '0';
                r2 <= '1'; g2 <= '0'; y2 <= '0';
                timer <= timeGR;
                next_state <= YR;
            when YR =>
                r1 <= '0'; g1 <= '0'; y1 <= '1';
                r2 <= '1'; g2 <= '0'; y2 <= '0';
                timer <= timeYR;
                next_state <= RG;
            when others =>
                r1 <= '0'; g1 <='0'; y1 <='0';
                r2 <='0'; g2 <='0'; y2 <='0';
                timer<=timeTest;
                next_state<=YY;
        end case;
        
        if(test='1') then
            timer<=timeTest;
        end if;
    end process;
end architecture rtl;

