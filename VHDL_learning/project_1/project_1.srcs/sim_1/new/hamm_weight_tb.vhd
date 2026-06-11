----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:48:57
-- Design Name: 
-- Module Name: hamm_weight_tb - Behavioral
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hamm_weight_tb is
--  Port ( );
end hamm_weight_tb;

architecture Behavioral of hamm_weight_tb is
    component hamm_weight is
    generic (n: positive :=8);
    Port ( x: in std_logic_vector(n-1 downto 0);
         y: out natural range 0 to n);
    end component;
    
    signal x_tb: std_logic_vector(3 downto 0);
    signal y_tb: natural;

begin
   dut: hamm_weight  
       generic map(n=> 4)
       port map(x=> x_tb, y=> y_tb);
     
     process 
     --   variable i: natural range 0 to 15;
     begin
        for i in 0 to 15 loop
           
            
             x_tb<=conv_std_logic_vector(i,4);
             wait for 40ns;
        end loop;
     end process;
        


end Behavioral;
