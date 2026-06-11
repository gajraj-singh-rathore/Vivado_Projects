----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 17:38:33
-- Design Name: 
-- Module Name: dual_edge_DFF - conccurent
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

entity dual_edge_DFF is
 Port ( d,clk: in std_logic;
        q: out std_logic);
end dual_edge_DFF;

architecture conccurent of dual_edge_DFF is
    signal q1,q2: std_logic;
    
begin
    q1<=d when clk='1';
    q2<=d when clk='0';
    q<=q1 when clk='0' else
        q2;

end conccurent;
