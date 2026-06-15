library ieee;
use ieee.std_logic_1164.all;


entity shiftRegPL_tb is

end entity;
    


architecture rtl of shiftRegPL_tb is
    component  shiftRegPL is
        port (clk, load,din: in std_logic;
            d: in std_logic_vector(3 downto 0);
            dout: out std_logic);
    end component;

    signal  clkT :std_logic := '0';
    signal ld,di,do : STD_LOGIC ;
    signal dT : STD_LOGIC_VECTOR(3 downto 0);
    
    
begin

    dut:  entity work.shiftRegPL
     port map(
        clk => clkT,
        load => ld,
        din => di,
        d => dT,
        dout => do
    );
     
    clkT<= not clkT after 10 ns;
    di<='1', '0' after 35 ns, '1' after 51 ns,'0' after 78 ns;
    dT<="1101", "1000" after 99 ns, "0010" after 115 ns;
    ld<='0', '1' after 100 ns;




end architecture;