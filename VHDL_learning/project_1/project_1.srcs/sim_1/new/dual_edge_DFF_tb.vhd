----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2026 17:44:18
-- Design Name: 
-- Module Name: dual_edge_DFF_tb - sim
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

entity dual_edge_DFF_tb is
--  Port ( );
end dual_edge_DFF_tb;

architecture sim of dual_edge_DFF_tb is
    component dual_edge_DFF is 
        port(clk,d: in std_logic;
             q: out std_logic);
    end component;
    signal clk_tb: std_logic := '0';
    signal d_tb,q_tb: std_logic;

begin
    clk_tb<= not clk_tb after 40ns;
    
    dut : dual_edge_DFF  port map(clk=>clk_tb, d=> d_tb, q=> q_tb);
    
    d_tb<= '1' after 20ns, '0' after 60ns, '1' after 100ns, 
        '0' after 180ns;
        
end sim;
