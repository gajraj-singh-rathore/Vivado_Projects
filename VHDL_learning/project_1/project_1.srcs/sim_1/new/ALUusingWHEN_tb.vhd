----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.06.2026 17:00:28
-- Design Name: 
-- Module Name: ALUusingWHEN_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
--use ieee.std_logic_signed.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUusingWHEN_tb is
    generic(N: natural :=5);
--  Port ( );
end ALUusingWHEN_tb;

architecture Behavioral of ALUusingWHEN_tb is
    component ALUusingWHEN is
        generic (n : natural :=8);
        Port (a,b : in std_logic_vector( n-1 downto 0);
            cin: in std_logic;
            opcode: in std_logic_vector(3 downto 0);
            y: out std_logic_vector( n-1 downto 0) );
    end component ;
    
    signal  aT,bT,yT: std_logic_vector( n-1 downto 0) ;
    signal cinT: std_logic := '0';
    signal opT: std_logic_vector(3 downto 0);

begin
    
    dut : ALUusingWHEN 
        generic map(n=>n)
        port map(aT,bT,cinT,opT,yT);
        
        
    cinT<= not cinT after 10ns;
    process 
    begin
        for i in 0 to 15 loop
            aT<= std_logic_vector(to_unsigned(i,5));
            bT<= std_logic_vector(to_unsigned(31-i,5));
            
            for j in 0 to 15 loop
                opT<=std_logic_vector(to_unsigned(j,4));
                wait for 20ns;
            end loop;
           -- wait for 20ns;
        end loop;
        
    end process;
    
    
            
        
    

end Behavioral;
