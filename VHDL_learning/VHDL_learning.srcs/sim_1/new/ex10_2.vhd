----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2026 22:37:55
-- Design Name: 
-- Module Name: ex10_2 - Behavioral
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

entity ex10_2 is
--  Port ( );
end ex10_2;

architecture Behavioral of ex10_2 is
    signal sig1: std_logic;
    signal sig2: std_logic;
    signal sig3: integer range 0 to 255;
   
    

begin

    sig1<='1',
          '0' after 25ns,
          '1' after 75ns,
          '0' after 100ns;
    sig2<='1',
          '0' after 25ns,
          '1' after 75ns,
          '0' after 100ns,
          '1' after 125ns,
          '0' after 175ns,
          '1' after 200ns,
          '0' after 225ns;
    sig3<=3,
          0 after 25 ns,
          99 after 50 ns,
          17 after 100 ns,
          255 after 175 ns;
 
end Behavioral;
