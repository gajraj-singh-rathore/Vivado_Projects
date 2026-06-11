----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2026 17:27:22
-- Design Name: 
-- Module Name: ex2_2_tb - Behavioral
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

entity ex2_2_tb is
--  Port ( );
end ex2_2_tb;

architecture Behavioral of ex2_2_tb is
    component ex2_2 is 
            port (a,b,c,clk: in std_logic;
                  z: inout std_logic;
                  reg_z: out std_logic);
    end component;
    signal a_tb,b_tb,c_tb,z_tb,reg_z: std_logic;
    signal CLK_tb: std_logic :='0';
begin
    dut: ex2_2 port map(clk=>clk_tb,a=>a_tb,b=>b_tb,c=>c_tb,z=>z_tb,reg_z=>REG_Z);
    
    a_tb<='1',
          '0' after 100ns;
    b_tb<='0',
          '1' after 20ns,
          '0' after 60ns,
          '1' after 120ns;
    c_tb<='0',
          '1' after 40ns,
          '0' after 80ns;
      
    clk_tb<= not clk_tb after 10ns;
    

end Behavioral;
