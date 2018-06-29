library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity fetch_reg is
    port (
        clk: in std_logic;
        instruction_in: in std_logic_vector(31 downto 0);
        pc_adder_in: in std_logic_vector(31 downto 0);
        instruction_out: out std_logic_vector(31 downto 0);
        pc_adder_out: out std_logic_vector(31 downto 0)
    );
end  fetch_reg;

architecture Behovioral of fetch_reg is
begin


fetch_reg_proc: process (clk) is
begin
    if rising_edge(clk) then
            instruction_out <= instruction_in;
            pc_adder_out <= pc_adder_in;
    end if;
end process fetch_reg_proc;

end architecture Behovioral;
