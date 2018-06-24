library ieee;
use ieee.std_logic_1164.all;
use ieee.nuMeric_std.all;
use ieee.std_logic_signed.all;

entity Controle is
	port (
			opCode: in std_logic_vector(5 downto 0);
			Funct : in std_logic_vector(5 downto 0);
			WB : out std_logic_vector (2 downto 0);
			MEM : out std_logic_vector(1 downto 0);
			EXE : out std_logic_vector(7 downto 0);
			jumps, jr, beq, bne : out std_logic
		);
end entity;

architecture Controle_arch of Controle is
begin
proc_control: process(Opcode, Funct)
begin
  case Opcode is
		-- SETA FLAGS DE ACORDO COM INSTRUÇÃO A SER EXECUTADA
    when "000000" =>
			-- ANALISA FUNCT PARA SETAR FLAGS
      case Funct is
				-- Instrução : ADD
				when "100000" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01001000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : OR
        when "100101" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01000100";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : SUB
        when "100010" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01010000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : AND
        when "100100" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01000000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : NOR
        when "100111" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01100000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : XOR
        when "100110" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01100100";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : SLT
        when "101010" =>
          WB <= "100";
          MEM <= "00";
          EXE <= "01011000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
				-- Instrução : JR
        when "001000" =>
          WB <= "000";
          MEM <= "00";
          EXE <= "00000000";
          jumps <= '0';
          jr <= '1';
          beq <= '0';
          bne <= '0';
				-- Instrução : JALR
        when "001001" =>
          WB <= "100";
          MEM <= "00";
          EXE <=  "11000000";
          jumps <= '1';
          jr <= '1';
          beq <= '0';
          bne <= '0';
				-- Instrução com ERRO
        when others =>
          WB <= "000";
          MEM <= "00";
          EXE <= "00000000";
          jumps <= '0';
          jr <= '0';
          beq <= '0';
          bne <= '0';
      end case;
		-- Instrução : LW
    when "100011" =>
      WB <= "101";
      MEM <= "10";
      EXE <= "00001010";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
    -- Instrução : SW
    when "101011" =>
      WB <= "000";
      MEM <= "01";
      EXE <= "00001010";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
    -- Instrução : ADDI
    when "001000" =>
      WB <= "100";
      MEM <= "00";
      EXE <= "00001010";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
    -- Instrução : JUMP
    when "000010" =>
      WB <= "000";
      MEM <= "00";
      EXE <= "00000000";
      jumps <= '1';
      jr <= '0';
      beq <= '0';
      bne <= '0';
    -- Instrução : JAL
    when "000011" =>
      WB <= "110";
      MEM <= "00";
      EXE <= "10000000";
      jumps <= '1';
      jr <= '0';
      beq <= '0';
      bne <= '0';
    -- Instrução : BEQ
    when "000100" =>
      WB <= "000";
      MEM <= "00";
      EXE <= "00000000";
      jumps <= '0';
      jr <= '0';
      beq <= '1';
      bne <= '0';
    -- Instrução : BNE
    when "000101" =>
      WB <= "000";
      MEM <= "00";
      EXE <= "00000000";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '1';
    -- Instrução : LUI
    when "001111" =>
      WB <= "100";
      MEM <= "00";
      EXE <= "00110101";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
		-- Instrução : SLTI
    when "001010" =>
      WB <= "100";
      MEM <= "00";
      EXE <= "00011010";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
		-- Instrução com ERRO
    when others =>
      WB <= "000";
      MEM <= "00";
      EXE <= "00000000";
      jumps <= '0';
      jr <= '0';
      beq <= '0';
      bne <= '0';
  end case;
 end process;
end Controle_arch;
