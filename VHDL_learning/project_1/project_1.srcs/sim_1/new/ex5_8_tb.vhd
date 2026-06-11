----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:50:11
-- Design Name: 
-- Module Name: ex5_8_tb - Behavioral
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

entity ex5_8_tb is
--  Port ( );
end ex5_8_tb;

architecture Behavioral of ex5_8_tb is
    component  ex5_8 is
        generic( n: natural :=8);
        Port (x: in std_logic_vector(n-1 downto 0);
            x_ordered: out std_logic_vector(n-1 downto 0) );
    end component ex5_8;
    
    signal x_tb: std_logic_vector(7 downto 0);
    signal x_ordered_tb : std_logic_vector(7 downto 0);

begin
   dut: ex5_8  
       generic map(n=> 8)
       port map(x=> x_tb, x_ordered=> x_ordered_tb);
     
     process 
     --   variable i: natural range 0 to 15;
     begin
        for i in 0 to 15 loop
           
            
             x_tb<=conv_std_logic_vector(i,8);
             wait for 40ns;
        end loop;
     end process;
end architecture ;