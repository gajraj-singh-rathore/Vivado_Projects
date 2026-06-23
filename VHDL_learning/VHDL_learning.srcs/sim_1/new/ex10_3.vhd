----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2026 14:55:05
-- Design Name: 
-- Module Name: ex10_3 - Behavioral
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
use ieee.std_logic_textio.all;


use std.textio.all;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ex10_3 is
--  Port ( );
end ex10_3;

architecture Behavioral of ex10_3 is
    file f: text open write_mode is "D:\CAD\Vivado_Projects\VHDL_learning\filescreated\data.txt";
    
    type data_pair is record
        col1: time;
        col2: integer range 0 to 8;
        col3: std_logic_vector(2 downto 0);
    end record;
    
    type table is array( 1 to 8) of data_pair;
    
    constant table1: table :=((0ns,1,"100"),(50ns,2,"110"),(100ns,0,"011"),(150ns,3,"111"),
                              (200ns,4,"010"),(250ns,6,"101"),(300ns,7,"000"),(350ns,5,"001"));
    
    
begin
    process 
        variable l: line;
       -- variable str: string;
       -- variable outp: std_logic_vector;
       
    begin
    --    str:="time";   write(l,str);
    --    str:="\t";     write(l,str);
    --    str:="inp";    write(l,str);
    --    str:="\t";     write(l,str);
    --    str:="outp";   write(l,str);
        write(l,string'("time   inp    outp"));
        writeline(f,l);
        for i in table'range loop
               write(l,table1(i).col1);
               write(l,string'("    "));
               write(l,table1(i).col2);
               write(l,string'("    "));
               write(l,table1(i).col3);
               writeline(f,l);
        end loop;
        wait;
    end process;
               
                
                
  
            
                
            
        
  
        
 

end Behavioral;
