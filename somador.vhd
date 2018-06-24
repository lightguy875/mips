library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
	port (	a : in std_logic_vector(31 downto 0);
					b : in std_logic_vector(31 downto 0);
					result : out std_logic_vector (31 downto 0)
	);
end entity;

architecture somador_arch of somador is

begin

	result <= std_logic_vector(signed(a) + signed(b));

end somador_arch;
