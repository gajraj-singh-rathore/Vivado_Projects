----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 18:27:36
-- Design Name: 
-- Module Name: conc_AND - conc_AND
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

entity conc_AND is
  generic ( n: positive :=8);
  Port (x: in std_logic_vector(n-1 downto 0 );
        y: out std_logic);
  
end entity;

architecture conc_AND of conc_AND is
    signal temp: std_logic_vector( n-1 downto 0);

begin
    temp(0)<=x(0);
    gen: for i in 1 to n-1 generate
        temp(i)<=temp(i-1) and x(i);
    end generate;
    y<= temp(n-1);

end conc_AND;
