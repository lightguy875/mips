library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ULA is
port 
(opcode : in std_logic_vector(4 downto 0);
a,b : in std_logic_vector(31 downto 0);
z: out std_logic_vector(31 downto 0);
zero,ovfl : out std_logic);
end ULA;

architecture Behovioral of ULA is

--component fulladder_32bits
	--port(
		--a,b: in std_logic_vector(31 downto 0);
		--ovfl: out std_logic;
		--saida: out std_logic_vector(31 downto 0)
	--);
--end component;
signal res32 : std_logic_vector(31 downto 0);
begin
 --U1: fulladder_32bits port map(a,b,test1,sumres);
 z <= res32;
process(opcode,a,b)
begin
case(opcode) is
	when "00000" => -- and
		res32 <= a and b;
	when "00001" => -- or
		res32 <= a or b;
		--zero <= '1' when z = "00000000000000000000000000000000" else '0';
when "00010" => -- add
		res32 <=  std_logic_vector(signed(a) + signed(b));
when "00011" => -- addu
		res32 <= std_logic_vector(unsigned(a) + unsigned(b));
when "00100" => -- sub
		res32 <= std_logic_vector(signed(a) - signed(b));
when "00101" => -- subu
		res32 <= std_logic_vector(unsigned(a) - unsigned(b));
when "00110" => -- slt
		if(to_integer(signed(a)) < to_integer(signed(b)))
			then res32<="00000000000000000000000000000001";
		else res32<="00000000000000000000000000000000";
			end if;
when "00111" => -- nand
		res32 <= a nand b;
when "01000" => -- nor
		res32 <= a nor b;
when "01001" => -- xor
		res32 <= a xor b;
when "01010" => -- sll
	res32 <=std_logic_vector(shift_left(unsigned(b),to_integer(unsigned(a))));
when "01011" => -- srl
	res32 <=std_logic_vector(shift_right(unsigned(b),to_integer(unsigned(a))));
when "01100" => -- sra
	res32 <=std_logic_vector(shift_right(signed(b),to_integer(unsigned(a))));
when others =>
	res32 <= "00000000000000000000000000000000";
end case;
end process;
process (res32)
begin
if(res32 = "00000000000000000000000000000000")then
	zero <= '1';
	else 
	zero <= '0';
	end if;
case(opcode) is
	 when "00010" => ovfl <= (a(31) and b(31) and not res32(31)) or (not a(31) and not b(31) and res32(31));
	 when "00100" => ovfl <= (a(31) and not b(31) and not res32(31)) or (not a(31) and b(31) and res32(31));
	 when others => ovfl <= '0';
end case;
end process;
end Behovioral;
--ovfl <= ((a(31) and  b(31)) and (not res32(31))) or (a(30) and b(31) and not res32(31));