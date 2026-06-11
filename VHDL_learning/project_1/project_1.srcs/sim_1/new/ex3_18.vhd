----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.05.2026 16:27:46
-- Design Name: 
-- Module Name: ex3_18 - Behavioral
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

entity ex3_18 is
--  Port ( );
end ex3_18;

architecture Behavioral of ex3_18 is
    type int_arr is array( 1 to 4) of integer range 0 to 15;
    type matrix is array(1 to 4) of int_arr;
    type TwoD is array(1 to 4, 1 to 4, 3 downto 0) of bit;
    
    

begin
    process
    variable i_arr1: int_arr;
    variable mat1: matrix;
    variable twoD1: TwoD := ( ("0000","0000","0000","0000"),
                              ("0000","0000","0000","0000"),
                              ("0000","0000","0000","0000"),
                              ("0000","0000","0000","0000"));
    variable i: integer := 1;
    begin
        for i in int_arr'range loop
            i_arr1(i):= 0;
        end loop;
        
        for i in matrix'range loop
            for j in matrix'range(1) loop
                mat1(i)(j) := 0;
             end loop;
        end loop;
                
    end process;
            
                
        
            

end Behavioral;
