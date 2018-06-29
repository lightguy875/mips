library ieee;
use ieee.std_logic_1164.all;

Entity mux is
    Port (EN1, EN2 : in std_logic_vector(31 downto 0);
          Selector      : in std_logic;
          Output      : out std_logic_vector(31 downto 0));
    End;

Architecture behave of mux is
    begin
    Output <= EN1 when Selector = '0' else EN2;
    end;
