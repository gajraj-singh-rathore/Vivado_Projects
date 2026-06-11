----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 20:43:38
-- Design Name: 
-- Module Name: par_gen_tb - Behavioral
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

entity par_gen_tb is
--  Port ( );
end par_gen_tb;
    
architecture Behavioral of par_gen_tb is
    component par_gen is 
        generic (n: positive );
        port (x: in std_logic_vector (n-1 downto 0);
              y: out std_logic_vector (n downto 0));
    end component;
    constant N: positive :=8;
    signal x_tb: std_logic_vector(N-1 downto 0);
    signal y_tb: std_logic_vector (N downto 0);
begin
    dut : par_gen 
        generic map (n => N)
        port map( x=> x_tb, y=> y_tb);
        
    x_tb<= "00110101",
           x"4f" after 40ns,
           x"55" after 60ns,
           x"11" after 110ns,
           x"ff" after 160ns;

end Behavioral;
