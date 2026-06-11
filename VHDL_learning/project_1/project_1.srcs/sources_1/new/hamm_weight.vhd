----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:48:29
-- Design Name: 
-- Module Name: hamm_weight - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hamm_weight is
    generic (n: positive :=8);
  Port ( x: in std_logic_vector(n-1 downto 0);
         y: out natural range 0 to n);
end hamm_weight;

--architecture Behavioral of hamm_weight is
--    type oneD_int is array (n-1 downto 0) of integer range 0 to n;
--    signal y_arr: oneD_int;
--begin
    
--    with x(0) select
--        y_arr(0)<=1 when '1',
--                  0 when others;
                
                
--    gen : for i in 1 to n-1 generate
--            y_arr(i)<= y_arr(i-1)+1  when x(i)='1' else
--                       y_arr(i-1);
                       
--    end generate;
--    y<=y_arr(n-1);
        
    

--end Behavioral;

architecture using_process of hamm_weight is

begin 
     
     process(x)   
        variable int: integer ;
     begin 
        int :=0;
        for i in x'range loop
            if x(i)='1' then
                int := int +1;
            
            end if;
        end loop;
        y<= int;
     end process;
     
end architecture;