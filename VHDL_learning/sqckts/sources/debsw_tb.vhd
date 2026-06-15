library ieee;
use ieee.std_logic_1164.all;


entity debsw_tb is

end entity;



architecture rtl of debsw_tb is
    component debsw is
    generic (
        fclk : natural := 50
    );
    port (
        clk,sw: in STD_LOGIC ;
        deb_sw: out STD_LOGIC
    );
    end component;
    constant  fclk: INTEGER:=50;
    signal clk: STD_LOGIC:='0';
    signal sw,deb_sw: std_logic;
begin

    dut:  debsw
     generic map(
        fclk => fclk
    )
     port map(
        clk => clk,
        sw => sw,
        deb_sw => deb_sw
    );

  --  clk<= not clk after 20 ns;
    sw<='0', '1' after 20 ns, '0' after 28 ns, '1' after 30 ns, '0' after 33 ns, '1' after 73 ns, '0' after 90 ns;
    




end architecture;