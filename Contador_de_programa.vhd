library IEEE;
use IEEE.std_logic_1164.all;

entity Contador_de_programa is
    port (
        clk: in std_logic;
        input: in std_logic_vector(31 downto 0);
        output: out std_logic_vector(31 downto 0)
    );
end Contador_de_programa;

architecture Behovioral of Contador_de_programa is

signal state: std_logic_vector(31 downto 0);
begin


Contador_rising_edge: process (clk) is
begin
    if rising_edge(clk) then
        output <= state;
    end if;
end process Contador_rising_edge;

Contador_falling_edge: process (clk) is
begin
    if falling_edge(clk) then
        state <= input;
    end if;
end process Contador_falling_edge;

end architecture Behovioral;
