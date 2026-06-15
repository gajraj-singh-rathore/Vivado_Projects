
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2026 12:22:24
-- Design Name: 
-- Module Name: DL - Behavioral
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

entity DL is
  Port (clk, d: in std_logic;
        q: out std_logic );
end DL;

architecture Behavioral of DL is

begin
    process(clk)
    begin
        if (clk='1') then
            q<=d;
        
        end if;
    end process;
            

end Behavioral;
