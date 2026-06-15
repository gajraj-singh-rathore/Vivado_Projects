----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2026 12:22:45
-- Design Name: 
-- Module Name: DL_tb - Behavioral
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

entity DL_tb is
--  Port ( );
end DL_tb;

architecture Behavioral of DL_tb is
    component DL is
  Port (clk, d: in std_logic;
        q: out std_logic );
end component DL;
    signal clk,d,q: std_logic;
begin
    dut : DL 
        port map( clk=> clk, d=> d, q=>q);
    
    clk<= '0';
    clk<= not clk after 30ns;
    
    d<='1', '0' after 20ns,'1' after 50ns, '0' after 70ns, '1' after 80ns, '0' after 105ns, '1'  after 174ns;
    

end Behavioral;
