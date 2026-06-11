----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2026 15:49:41
-- Design Name: 
-- Module Name: ex5_8 - Behavioral
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

entity ex5_8 is
    generic( n: natural :=8);
  Port (x: in std_logic_vector(n-1 downto 0);
        x_ordered: out std_logic_vector(n-1 downto 0) );
end ex5_8;

architecture Behavioral of ex5_8 is
    component hamm_weight is
        generic (n: positive :=8);
        Port ( x: in std_logic_vector(n-1 downto 0);
            y: out natural range 0 to n);
    end component hamm_weight;
    signal nOf1 : natural range 0 to n;
begin
        hw : hamm_weight 
            port map(x=>x, y=>nOf1);
        process(x,nOf1) 
        begin 
            
            if nOf1>0 then
            
                x_ordered<=(n-1 downto n-nOf1 =>'1', others =>'0');
            else    
                x_ordered<=x;
            end if;
            
        end process;
        
        
        
end architecture;
            


