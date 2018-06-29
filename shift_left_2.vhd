library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift_left_2 is
Port(
A: in std_logic_vector(31 downto 0);
B: out std_logic_vector(31 downto 0)
);
end shift_left_2;
architecture Behovioral of shift_left_2 is
begin
B <= std_logic_vector(shift_left(unsigned(A),2));
end Behovioral;
