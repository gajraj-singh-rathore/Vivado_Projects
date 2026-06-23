----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:03 06/22/2026 
-- Design Name: 
-- Module Name:    slowclk - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity slowclk is
    Port ( inclk,rst : in  STD_LOGIC;
           outclk : inout  STD_LOGIC);
end slowclk;

architecture Behavioral of slowclk is
	
begin
	process(inclk,rst)
		variable temp: integer range 0 to 25_000_000;
	begin
		if(rst='1') then
			outclk<='0';
		
		elsif rising_edge(inclk) then
			temp:=temp+1;
			if(temp=25000000) then
				outclk<= not outclk;
				temp:=0;
			end if;
		end if;
	end process;
end Behavioral;

