----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2026 10:52:11
-- Design Name: 
-- Module Name: vendmacTB - Behavioral
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

entity vendmacTB is
--  Port ( );
end vendmacTB;

architecture Behavioral of vendmacTB is
    component vending_machine IS
    PORT (
        clk, rst : IN STD_LOGIC;
        nickel_in, dime_in, quarter_in : IN boolean;
        candy_out, nickel_out, dime_out : OUT STD_LOGIC
    );
    
   
    
END component vending_machine;
 signal clk: std_logic :='1';
 signal ni,di,qi :boolean ;
    signal rst,co,no,do :std_logic ;
begin
    
    rst<='1', '0' after 30 ns;
    clk<=not clk after 10 ns;
    
    dut : vending_machine 
        port map( clk,rst,ni,di,qi,co,no,do);
        
    ni<=false, true after 15 ns, false after 22 ns, true after 35 ns,false after 42 ns, true after 65 ns;
    di<=false , true after 55 ns, false after 65 ns;
    

end Behavioral;
