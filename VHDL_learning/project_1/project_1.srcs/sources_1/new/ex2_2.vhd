----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2026 17:22:16
-- Design Name: 
-- Module Name: ex2_2 - Behavioral
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

entity ex2_2 is
    Port ( a,b,c,clk: in std_logic;
           z: inout std_logic;
           reg_z: out std_logic);
end ex2_2;

architecture Behavioral of ex2_2 is
    signal x,y: std_logic;
    
begin
    x<= a nand b;
    y<= x or c;
    z<= x xor y;
    
    process (clk)
    begin 
        if( clk'event and clk='1') then
            reg_z<=z;
        end if;
    end process;
end Behavioral;
