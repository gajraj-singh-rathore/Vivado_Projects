----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.06.2026 18:18:23
-- Design Name: 
-- Module Name: barrShift1_tb - Behavioral
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

entity barrShift1_tb is
generic ( n : natural :=8);
--  Port ( );
end barrShift1_tb;

architecture Behavioral of barrShift1_tb is
    
    component barrShift1 is
    generic ( n : natural :=8);
  Port (x: in std_logic_vector(n-1 downto 0);
        shift: in integer range -n+1 to n-1;
        y: out std_logic_vector(n-1 downto 0));
end component ;
 
    signal xT,yT: std_logic_vector (n-1 downto 0);
    signal st : integer range -n+1 to n-1;
begin
    dut : barrShift1
        generic map(n=>n)
        port map(x=>xT,y=>yT,shift=>sT);
        
    xt<="11001110" ,
        "00110010" after 50ns;
    st<=3,5 after 10 ns, 4 after 20ns, -2 after 30ns,-5 after 40ns,3 after 50ns,5 after 60 ns, 4 after 70ns, -2 after 80ns,-5 after 90ns;

end Behavioral;
