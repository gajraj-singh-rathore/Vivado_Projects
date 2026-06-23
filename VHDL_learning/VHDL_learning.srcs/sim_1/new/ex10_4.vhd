----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2026 14:55:35
-- Design Name: 
-- Module Name: ex10_4 - Behavioral
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
use std.textio.all;
use ieee.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ex10_4 is
--  Port ( );
end ex10_4;

architecture Behavioral of ex10_4 is
    file f: text open read_mode is "D:\CAD\Vivado_Projects\VHDL_learning\filescreated\data.txt";
    type rec is record
        col1: time range 0ns to 400ns;
        col2: integer range 0 to 8;
        col3: std_logic_vector( 2 downto 0);
    end record;
    type table is array(1 to 8) of rec;
    
    
    
    
begin
    PROCESS 
        variable l: line;
        variable data:table;    
        variable t: time range 0ns to 400ns;
        variable inp: integer range 0 to 8;
        variable outp: std_logic_vector( 2 downto 0);
        variable i: integer:= 1;
    
    begin
        while not endfile(f) loop
            readline(f,l);
            read(l,t);
            read(l,inp);
            read(l,outp);
            report time'image(t) & integer'image(inp) & to_string(outp);
            data(i).col1:=t;
            data(i).col2:=inp;
            data(i).col3:=outp;
            i:=i+1;
        end loop;
          wait;
    end process;  
end Behavioral;
