----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.06.2026 21:05:19
-- Design Name: 
-- Module Name: ALUusingWHEN - rtl
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
use ieee.numeric_std.all; 
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUusingWHEN is
  generic (n : natural :=8);
  Port (a,b : in std_logic_vector( n-1 downto 0);
        cin: in std_logic;
        opcode: in std_logic_vector(3 downto 0);
        y: out std_logic_vector( n-1 downto 0) );
end ALUusingWHEN;

architecture rtl of ALUusingWHEN is
    signal y_arith: signed(n-1 downto 0);
    signal y_logic: std_logic_vector(n-1 downto 0);
    
    signal op2_0 : std_logic_vector(2 downto 0);
    signal as,bs: signed(n-1 downto 0);
    signal cin_nbit: signed(n-1 downto 0) := (others=>'0');

begin
    cin_nbit(0)<=cin;
    op2_0<= opcode(2 downto 0);
    as<= signed(a);
    bs<= signed (b);
    y_logic<= not a when op2_0="000" else
              not b when op2_0="001" else
              a and b when op2_0="010" else
              a or b when op2_0="011" else
              a nand b when op2_0="100" else
              a nor b when op2_0="101" else
              a xor b when op2_0="110" else
              a xnor b when op2_0="111";
       
   y_arith<= as when op2_0="000" else   
             bs when op2_0="001" else   
             as+1 when op2_0="010" else 
             bs+1 when op2_0="011" else  
             as-1 when op2_0="100" else
             bs-1 when op2_0="101" else 
             as+bs when op2_0="110" else 
             as+bs+cin_nbit when op2_0="111";    
   
   
   
    y<=y_logic when opcode(3)='0' else
       std_logic_vector(y_arith) when opcode(3)='1';
       
    

end rtl;
