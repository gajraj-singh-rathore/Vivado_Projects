----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.06.2026 15:34:10
-- Design Name: 
-- Module Name: graycounter - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity graycounter is
  generic ( n : natural :=4);
  
  Port (clk: in std_logic ;
        graycount : out std_logic_vector(n-1 downto 0) );
end graycounter;

architecture Behavioral of graycounter is
    constant max : natural := 2**n-1;
    
begin
    
    process( clk)
        variable temp : integer range 0 to max;
        variable bincount: std_logic_vector( n-1 downto 0);
        
    begin
        if( clk'event and clk='1') then
            temp := temp+1;
            if (temp= max) then
                temp:=0;
            end if;
        end if;
        bincount:=std_logic_vector(to_unsigned(temp,n));
        graycount(n-1)<= bincount(n-1);
        for i in 0 to n-2 loop
            graycount(i)<=bincount(i) xor bincount(i+1);
        end loop;
   end process;
   
         
                
            
end Behavioral;
