----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.05.2026 17:53:04
-- Design Name: 
-- Module Name: delay_line - Behavioral
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

entity delay_line is
  Port ( X: IN STD_LOGIC;
         y: OUT STD_LOGIC);
end delay_line;

architecture Behavioral of delay_line is
    SIGNAL a,b,c: STD_LOGIC;
    ATTRIBUTE keep : BOOLEAN ;
    ATTRIBUTE chip_pin: STRING;
    ATTRIBUTE chip_pin of a,b,c: SIGNAL is "P7,P8,P9";
    ATTRIBUTE keep of a,b,c: SIGNAL IS TRUE; 

begin
    a<= NOT x;
    b<= not a;
    c<= not b;
    y<= not c;

end Behavioral;
