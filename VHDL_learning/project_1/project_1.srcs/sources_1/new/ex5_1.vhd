----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2026 18:04:45
-- Design Name: 
-- Module Name: 5_1 - Behavioral
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

entity ex5_1 is
  Port (x: in std_logic_vector(2 downto 0);
        y: out std_logic_vector(1 downto 0) );
end entity;

architecture Behavioral of ex5_1 is

begin
    with x select
        y<="00" when "100" | "101",
           "01" when "000" | "001",
           "10" when "111",
           "--" when others;
     

end Behavioral;
