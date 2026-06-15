library ieee;
use ieee.std_logic_1164.all;


entity debsw is
    generic (
        fclk : natural := 50
    );
    port (
        clk,sw: in STD_LOGIC ;
        deb_sw: out STD_LOGIC
    );
end entity;



architecture rtl of debsw is

begin

    process
    begin
        -- this comment works independently
        --wait until sw'stable(10 ns);
        wait on sw;
        wait for 10 ns;
        if(sw'stable(10 ns)) then
            deb_sw<=sw;
        end if;
    end process;


end architecture;