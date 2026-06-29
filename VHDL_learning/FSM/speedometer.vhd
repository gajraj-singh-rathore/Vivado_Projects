library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity speedometer is
    port (clk: in std_logic;
          fpulse: in natural;
          powon,speedSel: in std_logic;
          led : out std_logic_vector(7 downto 0);
          speedOut : inout natural ;
          buzzer: inout std_logic
    );
    end entity;


architecture rtl of speedometer is
    constant fclk : natural := 50000; --50MHz clock
    type state is (off,s35,s45,s55,s60,s65,s70,s75,s80);
    signal present_state,next_state: state;
    signal sqwv2Hz : std_logic:='0';
    function st2int(s: state) return integer is
    begin
        case s is
            when off=> return 0;
            when s35=> return 35;
            when s45=> return 45;
            when s55=> return 55;
            when s60=> return 60;
            when s65=> return 65;
            when s70=> return 70;
            when s75=> return 75;
            when s80=> return 80;
       end case;
   end function;
begin
    

    speedOut<=fpulse/1000;   --1KHz per mile/hour ==> 0.001 mile/hour per pulse;

    process(powon,speedSel)
    begin
        if powon='0' then
            present_state<=off;
        elsif speedSel='1' then
            present_state<=next_state;
        end if;
    end process;


    process(present_state)
    begin
        case present_state is
            when off => 
                led<=x"00";
                next_state<=s35;
            when s35 =>
                led<="00000001";
                next_state<=s45;
            when s45 =>
                led<="00000010";
                next_state<=s55;
            when s55 =>
                led<="00000100";
                next_state<=s60;
            when s60 =>
                led<="00001000";
                next_state<=s65;
            when s65 =>
                led<="00010000";
                next_state<=s70;
            when s70 =>
                led<="00100000";
                next_state<=s75;
            when s75 =>
                led<="01000000";
                next_state<=s80;
            when s80 =>
                led<="10000000";
                next_state<=s35;
        end case;
    end process;
    
    
    
    
        -- 2Hz square wave generator
        process(clk,present_state)
            variable count: natural range 0 to fclk/4:=0;
            variable prstt: integer ;
        begin
             prstt:=st2int(present_state);
             if rising_edge(clk) then
                count:=count+1;
            end if;
            
            if ( prstt-speedOut>0 and prstt-speedOut<=3) then
                if count=fclk/4 then
                    buzzer<=not buzzer;
                    count:=0;
                end if;
            elsif(prstt<=speedOut and prstt/=0) then
                buzzer<='1';
                count:=0;
            else
                count:=0;
                buzzer<='0';
            end if;
        end process;
        
       
       
        
      
       
end architecture rtl;
