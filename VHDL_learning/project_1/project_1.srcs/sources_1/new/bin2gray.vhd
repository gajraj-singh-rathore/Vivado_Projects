----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:08:36
-- Design Name: 
-- Module Name: bin2gray - Behavioral
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

entity bin2gray is
    generic (n: positive :=8);
  Port (bin : in std_logic_vector(n-1 downto 0);
        gray: out std_logic_vector(n-1 downto 0) );
end bin2gray;

architecture Behavioral of bin2gray is
   
begin
    gray(n-1)<=bin(n-1);
    b2g: for i in 1 to (n-1) generate
        gray(i-1)<= bin(i) xor bin(i-1);
    end generate;
    

end Behavioral;
