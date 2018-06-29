library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

Entity adder_4 is
    Port (A : in std_logic_vector(31 downto 0);
          Y    : out std_logic_vector(31 downto 0));
    End;

Architecture behave of adder_4 is
    begin
    Y <= A + 4;
    end;
