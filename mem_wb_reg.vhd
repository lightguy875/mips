library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem_wb_reg is
    port (
        clk: in std_logic;
        ram_in: in std_logic_vector(31 downto 0);
        alu_result_in: in std_logic_vector(31 downto 0);
        wr_reg_in: in std_logic_vector(4 downto 0);
        RegWrite_in: in std_logic;
        MemtoReg_in: in std_logic;
        ram_out: out std_logic_vector(31 downto 0);
        alu_result_out: out std_logic_vector(31 downto 0);
        wr_reg_out: out std_logic_vector(4 downto 0);
        RegWrite_out: out std_logic;
        MemtoReg_out: out std_logic
    );
end entity mem_wb_reg;

architecture Behovioral of mem_wb_reg is


begin


reg_mem_wb: process (clk) is
begin
    if rising_edge(clk) then
        ram_out <= ram_in;
        alu_result_out <= alu_result_in;
        wr_reg_out <= wr_reg_in;
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
    end if;
end process reg_mem_wb;

end architecture Behovioral;
