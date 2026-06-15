----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2026 15:34:29
-- Design Name: 
-- Module Name: graycounter_tb - Behavioral
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

entity graycounter_tb is
--  Port ( );
end graycounter_tb;

architecture Behavioral of graycounter_tb is
    component graycounter is
  generic ( n : natural :=4);
  
  Port (clk: in std_logic ;
        graycount : out std_logic_vector(n-1 downto 0) );
end component graycounter;
    signal clkT: std_logic:='0';
    signal graycountT: std_logic_vector(3 downto 0);
begin
    dut: graycounter
        port map(clkT,graycountT);
    
    clkT<= not clkT after 20ns;
  
    

end Behavioral;
