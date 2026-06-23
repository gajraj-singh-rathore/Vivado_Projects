----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.05.2026 16:54:51
-- Design Name: 
-- Module Name: ex10_1_tb - Behavioral
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

entity ex10_1_tb is
--  Port ( );
end ex10_1_tb;

architecture Behavioral of ex10_1_tb is
    SIGNAL sig1: STD_LOGIC ;
    SIGNAL sig2: STD_LOGIC ;
   SIGNAL y: STD_LOGIC;

begin
        process 
        begin
            sig1<='1';
            wait for 25ns;
            sig1<='0';
            wait for 50ns;
        end PROCESs;
        
        process 
        begin
            sig2<='1';
            wait for 25ns;
            sig2<='0';
            wait for 50ns;
            sig2<='1';
            wait for 25ns;
            sig2<='0';
            wait for 25ns;
            sig2<='1';
            wait for 50ns;
            sig2<='0';
            wait for 25ns;
        end process; 
        
        process
        begin
            y<='1';
            wait for 20ns;
            y<='0';
            wait for 10ns;
            y<='1';
            wait for 10ns;
            y<='0';
            wait for 40ns;
           
        end process;l
        
      
          

end Behavioral;
