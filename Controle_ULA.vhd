library ieee;
use ieee.std_logic_1164.all;

-- Alu Decoder

Entity Controle_ULA is
    Port (funct      : in std_logic_vector(5 downto 0);
          aluop      : in std_logic_vector(1 downto 0);
          saidaop : out std_logic_vector(4 downto 0));
    end Controle_ULA;

Architecture behovioral of Controle_ULA is
    begin
        alu_control: process(funct,aluop)
        begin
        case aluop is
            when "00" => saidaop <= "00010"; -- add
            when "01" => saidaop <= "00110"; -- sub
            when others => case funct is      -- R-type
                when "100000" => saidaop <= "00010";
                when "100010" => saidaop <= "00110";
                when "100100" => saidaop <= "00000";
                when "100101" => saidaop <= "00001";
                when "101010" => saidaop <= "00111";
                when "100110" => saidaop <= "00100"; -- xor
                when "101011" => saidaop <= "00111"; -- sltu
                when "100001" => saidaop <= "00000"; -- addu
                when "100011" => saidaop <= "00110"; -- subu
                when others => saidaop <= "00000";
            end case;
    end case;
    end process alu_control ;

end;
