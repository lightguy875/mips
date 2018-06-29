library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Unidade_de_Controle is
    Port (op : in std_logic_vector(5 downto 0);
          RegDst  : out std_logic;
          Branch  : out std_logic;
          MemRead     : out std_logic;
          MemtoReg    : out std_logic;
          ALUop    : out std_logic_vector(1 downto 0);
          MemWrite  : out std_logic;
          ALUSrc      : out std_logic;
          RegWrite: out std_logic);
end Unidade_de_Controle;

architecture Behovioral of Unidade_de_Controle is
begin

unit_control: process(op) is

begin 
	if((to_integer(unsigned(op))) = 0) then
		  RegDst <=  '1';
        ALUSrc <=  '0';
        MemtoReg <= '0';
        RegWrite <= '1';
        MemRead <=  '0';
        MemWrite <= '0';
        Branch <=  '0';
		  ALUop <= "10";
	elsif((to_integer(unsigned(op))) = 35) then
        RegDst <= '0';
        ALUSrc <= '1';
        MemtoReg <= '1';
        RegWrite <= '1';
        MemRead <= '1';
        MemWrite <= '0';
        Branch <= '0';
		  ALUop <= "00";
	elsif((to_integer(unsigned(op))) = 43) then
        ALUSrc <= '1';
        RegWrite <= '0';
        MemRead <= '0';
        MemWrite <= '1';
        Branch <= '0';
		  ALuop <= "00";
	elsif((to_integer(unsigned(op))) = 4) then
		  ALUSrc <= '0';
        RegWrite <= '0';
        MemRead <= '0';
        MemWrite <= '0';
        Branch <= '1';
		  ALUop <= "01";
		  end if;
	end process unit_control;
end Behovioral;	
  