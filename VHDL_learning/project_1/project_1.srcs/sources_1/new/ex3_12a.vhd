----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2026 17:12:27
-- Design Name: 
-- Module Name: 3_12a - Behavioral
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

ENTITY ex3_12a IS
PORT (a, b: IN BIT_VECTOR(3 DOWNTO 0);
x: OUT BIT_VECTOR(3 DOWNTO 0));
END ENTITY;
----------------------------------------
ARCHITECTURE ex3_12a OF ex3_12a IS
BEGIN
x <= a AND b;
END ARCHITECTURE;
