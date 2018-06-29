library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

Entity Universal_adder is
    Port (A : in std_logic_vector(31 downto 0);
			B : in std_logic_vector(31 downto 0);
          Y    : out std_logic_vector(31 downto 0));
    End;

Architecture behave of Universal_adder is
    begin
    Y <= A + B;
    end;
