--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:05:58 06/22/2026
-- Design Name:   
-- Module Name:   C:/Users/Public/24123011/vendingmachine/boolean_tb.vhd
-- Project Name:  vendingmachine
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bool
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
 
ENTITY boolean_tb IS
END boolean_tb;
 
ARCHITECTURE behavior OF boolean_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bool
    PORT(
         inp : IN  std_logic;
         outp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic := '0';

 	--Outputs
   signal outp : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bool PORT MAP (
          inp => inp,
          outp => outp
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			inp<='1';
      wait for 200 ns;
		inp<='0';
		wait for 300 ns;
		inp<='1';
		

      -- insert stimulus here 

      wait;
   end process;

END;
