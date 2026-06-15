library ieee;
use ieee.std_logic_1164.all;


entity slowcounter_tb is

end entity;



architecture rtl of slowcounter_tb is
    component slowcounter is
    port( clk : in std_logic;
          count: inout integer range 0 to 9);

    end component;
    signal clk : std_logic :='0';
    signal count : integer range 0 to 9;

begin
    clk<= not clk after 20 ns;
    
    dut :slowcounter
     port map(
        clk => clk,
        count => count
    );



end architecture;