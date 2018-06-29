library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux4 is
    port (
        seletor: in std_logic_vector(1 downto 0);
        saida: out std_logic_vector(31 downto 0);
        EN1: in std_logic_vector(31 downto 0);
        EN2: in std_logic_vector(31 downto 0);
        EN3: in std_logic_vector(31 downto 0);
        EN4: in std_logic_vector(31 downto 0)
    );
end entity mux4;

architecture behovioral of mux4 is
begin


mux_proc: process (seletor, EN1, EN2, EN3,EN4) is
begin
    if (seletor = "00") then
        saida <= EN1;
    elsif (seletor = "01") then
        saida <= EN2;
    elsif (seletor = "10") then
        saida <= EN3;
    elsif (seletor = "11") then
        saida <= EN4;
    end if;
end process mux_proc;

end architecture behovioral;
