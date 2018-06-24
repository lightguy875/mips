library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
	port (
		clk : in std_logic;
		PC_in : in std_logic_vector(31 downto 0);
		PC_out : out std_logic_vector(31 downto 0) := (others => '0'));
end entity;

architecture pc_arch of pc is

begin

	pc : process(clk)
		begin
		if(rising_edge(clk)) then
		PC_out <= PC_in;
		end if;
	end process;

end pc_arch;
