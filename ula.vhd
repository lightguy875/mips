library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity ula is
	generic (WSIZE : natural := 32);
	port (
		opcode		: in std_logic_vector(3 downto 0);
		A, B			: in std_logic_vector(WSIZE-1 downto 0);
		Z				: out std_logic_vector(WSIZE-1 downto 0);
		zero, ovfl	: out std_logic);
end ula;

architecture ula_arch of ula is

signal tmp : std_logic_vector(31 downto 0);
signal a32 : std_logic_vector(31 downto 0);
signal overflow : std_logic;

begin
	tmp <= std_logic_vector(signed(A) - signed(B));
	Z <= a32;
	ovfl <= overflow;

	process(tmp, a32, A, B, opcode)
	variable ovfADD: std_logic_vector((WSIZE - 1) downto 0);
	variable ovfSUB: std_logic_vector((WSIZE - 1) downto 0);
	begin
		ovfADD :=	std_logic_vector(signed(A) + signed(B));
		ovfSUB :=	std_logic_vector(signed(A) - signed(B));
		if((A(31) = B(31)) and (A(31) /= ovfADD(31)) and opcode = "0010")
			then overflow <= '1';
		elsif((A(31) /= B(31)) and (B(31) = ovfSUB(31)) and opcode = "0100")
			then overflow <= '1';
			else overflow <= '0';
		end if;

		if (a32 = X"00000000")
			then zero <= '1';
			else zero <= '0';
		end if;

		case opcode is
			when "0000" =>	-- AND
				a32 <= A and B;
			when "0001" => -- OR
				a32 <= A or B;
			when "0010" =>	-- ADD
				a32 <= std_logic_vector(signed(A) + signed(B));
			when "0011" =>	-- ADDU
				a32 <= std_logic_vector(unsigned(A) + unsigned(B));
			when "0100" =>	-- SUB
				a32 <= std_logic_vector(signed(A) - signed(B));
			when "0101" => -- SUBU
				a32 <= std_logic_vector(unsigned(A) - unsigned(B));
			when "0110" =>	-- SLT
				if(signed(A) < signed(B)) then
					a32 <= "00000000000000000000000000000001";
				else
					a32 <= "00000000000000000000000000000000";
					zero <= '1';
				end if;
			when "0111" =>	-- NAND
				a32 <= A nand B;
			when "1000" =>	-- NOR
				a32 <= A nor B;
			when "1001" => -- XOR
				a32 <= A xor B;
			when "1010" =>	-- SLL
				a32 <= std_logic_vector(SHIFT_LEFT(unsigned(B),to_integer(unsigned(A))));
			when "1011" =>	-- SRL
				a32 <= std_logic_vector(SHIFT_RIGHT(unsigned(B),to_integer(unsigned(A))));
			when "1100" =>	-- SRA
				a32 <= std_logic_vector(SHIFT_RIGHT(signed(B),to_integer(unsigned(A))));
			when others => a32 <= X"00000000";
		end case;

	end process;

end architecture ula_arch;
