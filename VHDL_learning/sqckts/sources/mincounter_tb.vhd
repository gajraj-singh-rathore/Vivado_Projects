library ieee;
use ieee.std_logic_1164.all;


entity mincounter_tb is

end entity;



architecture rtl of mincounter_tb is
    component mincounter is
        generic (
            fclk : natural :=50_000_000
        );
        port (
            clk, en ,rst : in STD_LOGIC;
            fullcount: out STD_LOGIC;
            ssd1,ssd2 : out STD_LOGIC_VECTOR(6 downto 0)
        );
        end component;

        constant fclk: integer := 50_000;
        signal clk : STD_LOGIC := '0';
        
        signal  en,rst,fullcount : std_logic;
        signal ssd1,ssd2: STD_LOGIC_VECTOR(6 downto 0);
begin

    dut: entity work.mincounter
     generic map(
        fclk => fclk
    )
     port map(
        clk => clk,
        en => en,
        rst => rst,
        fullcount => fullcount,
        ssd1 => ssd1,
        ssd2 => ssd2
    );
    clk<=not clk after 10 ns;
    -- generating signals
    
    rst<='1', '0' after 50 ns;
    en<='0', '1' after 60 ns, '0' after 62 ms, '1' after 64 ms;



end architecture;