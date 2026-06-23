----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:10 06/22/2026 
-- Design Name: 
-- Module Name:    boolean - Behavioral 
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

entity bool is
    Port ( inp : in  STD_LOGIC;
           outp : out  STD_LOGIC);
end bool;

	
architecture Behavioral of bool is
	signal mid : boolean;
begin
	mid<=(inp='1');
	outp<='1' when mid=true else
			'0';
	

end Behavioral;

