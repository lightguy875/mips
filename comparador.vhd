library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity comparador is
	port (	a : in std_logic_vector(31 downto 0);
			b : in std_logic_vector(31 downto 0);
			result : out std_logic
		);
end entity;

architecture comparador_arch of comparador is

begin

	comparador : process(a,b) begin

		if(a = b) then
			result <= '1';
		else
			result <= '0';
		end if;

	end process;

end comparador_arch;
