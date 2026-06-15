library ieee;
use ieee.std_logic_1164.all;


entity sigGen_tb is
end entity;



architecture rtl of sigGen_tb is
    component sigGen is
    port (
        clk: in STD_LOGIC;
        x,y: out STD_LOGIC
    );
    end component;
    signal clkT:STD_LOGIC:='0';
    signal xT,yT: std_logic;
    

begin
    dut: sigGen 
        port map(clk=> clkT, x=>xT,y=>yT);

    clkT<=not clkT after 10 ns;


end architecture;