library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity breg is
 generic (WSIZE : natural := 32);
 port (
  clk, wren : in std_logic;
  radd1, radd2, wadd : in std_logic_vector(4 downto 0);
  wdata : in std_logic_vector(WSIZE-1 downto 0);
  r1, r2 : out std_logic_vector(WSIZE-1 downto 0));
end breg;

architecture behavioral of breg is 
TYPE regsArrayType IS ARRAY (0 to 31) OF std_logic_vector(WSIZE-1 downto 0);
signal reg: regsArrayType := (others => (others => '0')); --inicializa os registradores todos como zero
begin
r1 <= reg(to_integer(unsigned(radd1)));
r2 <= reg(to_integer(unsigned(radd2)));
proc_breg: process(clk, wren, radd1, radd2, wadd, wdata)
 begin
 if (rising_edge(clk) and wren = '1') then
  reg(to_integer(unsigned(wadd))) <= wdata;
 end if;
 reg(0) <= (others => '0'); -- para garantir que no final do process o reg. zero continue armazenando o valor zero.
 end process;
end architecture;