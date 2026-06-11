----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:16:12
-- Design Name: 
-- Module Name: bin2gray_tb - Behavioral
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bin2gray_tb is
--  Port ( );
end bin2gray_tb;

architecture Behavioral of bin2gray_tb is
    component bin2gray is
    generic (n: positive :=8);
  Port (bin : in std_logic_vector(n-1 downto 0);
        gray: out std_logic_vector(n-1 downto 0) );
end component bin2gray;
    constant N: positive :=4;
    signal bin_tb,gray_tb: std_logic_vector(N-1 downto 0);
begin
    dut: bin2gray
        generic map(n=>N)
        port map(bin=> bin_tb, gray=>gray_tb);
        
        process
            variable bin_dec: natural range 0 to 15 ;
        begin
            bin_dec:= 0;
            while bin_dec < 16 loop
                wait for 50ns;
                bin_dec:=bin_dec+1;
                bin_tb<=conv_std_logic_vector(bin_dec,4);
            end loop;
        end process;
        
                
                
            
        
    
        

end Behavioral;
