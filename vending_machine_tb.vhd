--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:22:08 06/22/2026
-- Design Name:   
-- Module Name:   C:/Users/Public/24123011/vendingmachine/vending_machine_tb.vhd
-- Project Name:  vendingmachine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vending_machine
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY vending_machine_tb IS
END vending_machine_tb;
 
ARCHITECTURE behavior OF vending_machine_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vending_machine
    PORT(
         sysclk : IN  std_logic;
         rst : IN  std_logic;
         nickelin : IN  std_logic;
         dimein : IN  std_logic;
         quarterin : IN  std_logic;
         candy_out : OUT  std_logic;
         nickel_out : OUT  std_logic;
         dime_out : OUT  std_logic;
         ledclk : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sysclk : std_logic := '0';
   signal rst : std_logic := '1';
   signal nickelin : std_logic := '0';
   signal dimein : std_logic := '0';
   signal quarterin : std_logic := '0';

 	--Outputs
   signal candy_out : std_logic;
   signal nickel_out : std_logic;
   signal dime_out : std_logic;
   signal ledclk : std_logic;

   -- Clock period definitions
   constant sysclk_period : time := 20 ns;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vending_machine PORT MAP (
          sysclk => sysclk,
          rst => rst,
          nickelin => nickelin,
          dimein => dimein,
          quarterin => quarterin,
          candy_out => candy_out,
          nickel_out => nickel_out,
          dime_out => dime_out,
          ledclk => ledclk
        );

   -- Clock process definitions
   sysclk_process :process
   begin
		sysclk <= '0';
		wait for sysclk_period/2;
		sysclk <= '1';
		wait for sysclk_period/2;
   end process;
 
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 95 ns;	
		rst<='0';
		nickelin<='1';
--		wait for 10 ns;
--		nickelin<='0';
--		wait for 1105 ms;
--		dimein<='1';
--		wait for 10 ms;
--		dimein<='0';
--		wait for 1105 ms;
--		dimein<='1';

      -- insert stimulus here 

      wait;
   end process;

END;
