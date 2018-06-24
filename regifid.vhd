library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity regifid is
	generic (WSIZE : natural := 32);
	port (
		clk: in std_logic;
		PC4_in : in std_logic_vector(WSIZE-1 downto 0);
		instruction_in : in std_logic_vector(WSIZE-1 downto 0);
		pc4_out : out std_logic_vector(WSIZE-1 downto 0);
		instruction_out :out std_logic_vector(WSIZE-1 downto 0));
end regifid;

architecture regifid of regifid is
begin
process_regifid: process(clk)
  begin
	if (rising_edge(clk)) then
		pc4_out <= pc4_in;
		instruction_out <= instruction_in;
	end if;
end process;
end architecture regifid;
