----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2026 18:16:41
-- Design Name: 
-- Module Name: circuit - circuit
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



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

LIBRARY ieee;

USE ieee.std_logic_1164.all;

------------------------------------------

ENTITY circuit IS

PORT (x: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
 
y: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));

END ENTITY;

--------------------------------------------

ARCHITECTURE circuit OF circuit IS

BEGIN

y <= "00" when x="00" else
    "01" WHEN x="10" ELSE

"10" WHEN x="01" ELSE

"--";

END ARCHITECTURE;
