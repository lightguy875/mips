library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity instruction_mem is
port(
	PC : in std_logic_vector(31 downto 0);
	saida : out std_logic_vector(31 downto 0)
);
end instruction_mem;

architecture Behovioral of instruction_mem is
begin
process(PC) is
begin
case (to_integer(unsigned(PC))) is
	when others => saida <= "00000000000000000000000000000000";
	end case;
	end process;
end Behovioral;
