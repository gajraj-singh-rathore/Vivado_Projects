----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2026 15:23:08
-- Design Name: 
-- Module Name: dffT - Behavioral
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

entity dffT is
--  Port ( );
end dffT;

architecture Behavioral of dffT is
    component dff is 
        port ( d,clk: in std_logic;
               q: out std_logic);
    end component;
    signal clkT: std_logic := '0';
    signal dT,qT : std_logic;
begin
     dut : dff
        port map(d=>dT, clk=>clkT,q=>qT);
     
   
     clkT<= not clkT after 20ns;
     
     dT<='1', '0' after 20ns,'1' after 50ns, '0' after 70ns, '1' after 80ns, '0' after 105ns, '1'  after 174ns;

end Behavioral;
