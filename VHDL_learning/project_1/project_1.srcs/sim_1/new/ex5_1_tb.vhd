----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 18:24:07
-- Design Name: 
-- Module Name: ex5_1_tb - Behavioral
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

entity ex5_1_tb is
--  Port ( );
end ex5_1_tb;

architecture Behavioral of ex5_1_tb is
    component ex5_1 is 
        port( x: in  std_logic_vector(2 downto 0);
              y: out std_logic_vector(1 downto 0));
    end component;
   
    signal x_tb: std_logic_vector(2 downto 0);
    signal y_tb: std_logic_vector(1 downto 0);

begin
    
    dut: ex5_1 port map(x=>x_tb,y=> y_tb);
    
    x_tb<="101" after 50ns,
          "111" after 20ns,
          "100" after 30ns,
          "000" after 10ns,
          "110" after 20ns,
          "011" after 20ns,
          "010" after 20ns,
          "001" after 20ns;

end Behavioral;
