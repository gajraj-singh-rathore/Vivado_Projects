----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.06.2026 18:18:02
-- Design Name: 
-- Module Name: barrShift1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity barrShift1 is
    generic ( n : natural :=8);
  Port (x: in std_logic_vector(n-1 downto 0);
        shift: in integer range -n+1 to n-1;
        y: out std_logic_vector(n-1 downto 0));
end barrShift1;

architecture Behavioral of barrShift1 is
    signal xs: unsigned(n-1 downto 0);
begin
    xs<=unsigned(x);
    y<= std_logic_vector(xs sll shift);

end Behavioral;
