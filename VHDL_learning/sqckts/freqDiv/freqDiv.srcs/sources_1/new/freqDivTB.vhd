----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2026 19:20:14
-- Design Name: 
-- Module Name: freqDivTB - Behavioral
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

entity freqDivTB is
   
end freqDivTB;

architecture Behavioral of freqDivTB is
    component freqDiv is
   
    port( clk : in std_logic;
          outclk : out std_logic);
    end component;
    
    signal clk : std_logic :='0';
    signal outclk : std_logic  ;
    
begin

    clk<= not clk after 10 ns;
    
    dut : freqDiv port map( clk=> clk, outclk=> outclk);
    
end Behavioral;
