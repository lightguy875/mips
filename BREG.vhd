library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BREG is 
generic (WSIZE : natural := 32);
port (
clk, wren : in std_logic;
radd1, radd2, wadd : in std_logic_vector(4 downto 0);
wdata : in std_logic_vector(WSIZE-1 downto 0);
r1, r2 : out std_logic_vector(WSIZE-1 downto 0)
);
end BREG;
architecture Behovioral of BREG is
signal Re1,Re2,Re3,Re4,Re5,Re6,Re7,Re8,Re9,Re10,Re11,Re12,Re13,Re14,Re15,Re16,Re17,Re18,Re19,Re20,Re21,Re22,Re23,Re24,Re25,Re26,Re27,Re28,Re29,Re30,Re31: STD_LOGIC_VECTOR(31 downto 0);
begin
process (clk,wren,wdata,wadd,radd1,radd2)
begin
if (rising_edge(clk)) then
if(wren = '1') then
	if((to_integer(unsigned(wadd))) = 0) then
	r1 <= "00000000000000000000000000000000";
	r2 <= "00000000000000000000000000000000";
	
	elsif((to_integer(unsigned(wadd))) = 1) then
   Re1 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 2) then
	Re2 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 3) then
   Re3 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 4) then
	Re4 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 5) then
	Re5 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 6) then
	Re6 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 7) then
   Re7 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 8) then
   Re8 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 9) then
	Re9 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 10) then
	Re10 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 11) then
	Re11 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 12) then
   Re12 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 13) then
	Re13 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 14) then
	Re14 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 15) then
	Re15 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 16) then
	Re16 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 17) then
	Re17 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 18) then
	Re18 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 19) then
	Re19 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 20) then
	Re20 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 21) then
	Re21 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 22) then
	Re22 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 23) then
	Re23 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 24) then
	Re24 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 25) then
	Re25 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 26) then
	Re26 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 27) then
	Re27 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 28) then
	Re28 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 29) then
	Re29 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 30) then
	Re30 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
	elsif((to_integer(unsigned(wadd))) = 31) then
	Re31 <= wdata;
	r1 <= wdata;
	r2 <= wdata;
  end if;
  
  
elsif(wren = '0') then

	if((to_integer(unsigned(radd1))) = 0)then
	r1 <= "00000000000000000000000000000000";
	elsif((to_integer(unsigned(radd1))) = 1) then
	r1 <= Re1;
	elsif((to_integer(unsigned(radd1))) = 2) then
	r1 <= Re2;
	elsif((to_integer(unsigned(radd1))) = 3) then
	r1 <= Re3;
	elsif((to_integer(unsigned(radd1))) = 4) then
	r1 <= Re4;
	elsif((to_integer(unsigned(radd1))) = 5) then
	r1 <= Re5;
	elsif((to_integer(unsigned(radd1))) = 6) then
	r1 <= Re6;
	elsif((to_integer(unsigned(radd1))) = 7) then
	r1<= Re7;
	elsif((to_integer(unsigned(radd1))) = 8) then
	r1 <= Re8;
	elsif((to_integer(unsigned(radd1))) = 9) then
	r1 <= Re9;
	elsif((to_integer(unsigned(radd1))) = 10) then
	r1 <= Re10;
	elsif((to_integer(unsigned(radd1))) = 11) then
	r1 <= Re11;
	elsif((to_integer(unsigned(radd1))) = 12) then
	r1 <= Re12;
	elsif((to_integer(unsigned(radd1))) = 13) then
	r1 <= Re13;
	elsif((to_integer(unsigned(radd1))) = 14) then
	r1 <= Re14;
	elsif((to_integer(unsigned(radd1))) = 15) then
	r1 <= Re15;
	elsif((to_integer(unsigned(radd1))) = 16) then
	r1 <= Re16;
	elsif((to_integer(unsigned(radd1))) = 17) then
	r1 <= Re17;
	elsif((to_integer(unsigned(radd1))) = 18) then
	r1 <= Re18;
	elsif((to_integer(unsigned(radd1))) = 19) then
	r1 <= Re19;
	elsif((to_integer(unsigned(radd1))) = 20) then
	r1 <= Re20;
	elsif((to_integer(unsigned(radd1))) = 21) then
	r1 <= Re21;
	elsif((to_integer(unsigned(radd1))) = 22) then
	r1 <= Re22;
	elsif((to_integer(unsigned(radd1))) = 23) then
	r1 <= Re23;
	elsif((to_integer(unsigned(radd1))) = 24) then
	r1 <= Re24;
	elsif((to_integer(unsigned(radd1))) = 25) then
	r1 <= Re25;
	elsif((to_integer(unsigned(radd1))) = 26) then
	r1 <= Re26;
	elsif((to_integer(unsigned(radd1))) = 27) then
	r1 <= Re27;
	elsif((to_integer(unsigned(radd1))) = 28) then
	r1 <= Re28;
	elsif((to_integer(unsigned(radd1))) = 29) then
	r1 <= Re29;
	elsif((to_integer(unsigned(radd1))) = 30) then
	r1 <= Re30;
	elsif((to_integer(unsigned(radd1))) = 31) then
	r1<= Re31;
	end if;
	
	if((to_integer(unsigned(radd2))) = 0) then
	r2 <= "00000000000000000000000000000000";
	elsif((to_integer(unsigned(radd2))) = 1) then
	r2 <= Re1;
	elsif((to_integer(unsigned(radd2))) = 2) then
	r2 <= Re2;
	elsif((to_integer(unsigned(radd2))) = 3) then
	r2 <= Re3;
	elsif((to_integer(unsigned(radd2))) = 4) then
	r2 <= Re4;
	elsif((to_integer(unsigned(radd2))) = 5) then
	r2 <= Re5;
	elsif((to_integer(unsigned(radd2))) = 6) then
	r2 <= Re6;
	elsif((to_integer(unsigned(radd2))) = 7) then
	r2 <= Re7;
	elsif((to_integer(unsigned(radd2))) = 8) then
	r2 <= Re8;
	elsif((to_integer(unsigned(radd2))) = 9) then
	r2 <= Re9;
	elsif((to_integer(unsigned(radd2))) = 10) then
	r2 <= Re10;
	elsif((to_integer(unsigned(radd2))) = 11) then
	r2 <= Re11;
	elsif((to_integer(unsigned(radd2))) = 12) then
	r2 <= Re12;
	elsif((to_integer(unsigned(radd2))) = 13) then
	r2 <= Re13;
	elsif((to_integer(unsigned(radd2))) = 14) then
	r2 <= Re14;
	elsif((to_integer(unsigned(radd2))) = 15) then
	r2 <= Re15;
	elsif((to_integer(unsigned(radd2))) = 16) then
	r2 <= Re16;
	elsif((to_integer(unsigned(radd2))) = 17) then
	r2 <= Re17;
	elsif((to_integer(unsigned(radd2))) = 18) then
	r2 <= Re18;
	elsif((to_integer(unsigned(radd2))) = 19) then
	r2 <= Re19;
	elsif((to_integer(unsigned(radd2))) = 20) then
	r2 <= Re20;
	elsif((to_integer(unsigned(radd2))) = 21) then
	r2 <= Re21;
	elsif((to_integer(unsigned(radd2))) = 22) then
	r2 <= Re22;
	elsif((to_integer(unsigned(radd2))) = 23) then
	r2 <= Re23;
	elsif((to_integer(unsigned(radd2))) = 24) then
	r2 <= Re24;
	elsif((to_integer(unsigned(radd2))) = 25) then
	r2 <= Re25;
	elsif((to_integer(unsigned(radd2))) = 26) then
	r2 <= Re26;
	elsif((to_integer(unsigned(radd2))) = 27) then
	r2 <= Re27;
	elsif((to_integer(unsigned(radd2))) = 28) then
	r2 <= Re28;
	elsif((to_integer(unsigned(radd2))) = 29) then
	r2 <= Re29;
	elsif((to_integer(unsigned(radd2))) = 30) then
	r2 <= Re30;
	elsif((to_integer(unsigned(radd2))) = 31) then
	r2 <= Re31;
	end if;
	end if;
	end if;
end process;
end Behovioral;