----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 20:36:14
-- Design Name: 
-- Module Name: par_gen - Behavioral
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

entity par_gen is
 generic( n: positive := 8);
 Port ( x: in std_logic_vector(n-1 downto 0);
        y: out std_logic_vector( n downto 0));
end par_gen;

architecture Behavioral of par_gen is
    signal temp : std_logic_vector(n-1 downto 0);
begin
    y(n-1 downto 0)<=x;
    --process 
    --    variable temp : std_logic;
        
    --begin
    
    temp(0)<=x(0);
    gen: for i in 1 to n-1 generate
        temp(i)<= temp(i-1) xnor x(i);
    end generate;
        y(n)<= temp(n-1) ;
    --end process;
    
    

end Behavioral;
