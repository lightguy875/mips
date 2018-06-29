-- File: latch_ex_mem.vhd
-- Generated by MyHDL 0.6
-- Date: Fri Nov 19 12:33:50 2010

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity exec_mem_reg is
    port (
        clk: in std_logic;
        branch_adder_in: in std_logic_vector(31 downto 0);
        alu_result_in: in std_logic_vector(31 downto 0);
        zero_in: in std_logic;
        data2_in: in std_logic_vector(31 downto 0);
        wr_reg_in: in std_logic_vector(4 downto 0);
        Branch_in: in std_logic;
        MemRead_in: in std_logic;
        MemWrite_in: in std_logic;
        RegWrite_in: in std_logic;
        MemtoReg_in: in std_logic;
        branch_adder_out: out std_logic_vector(31 downto 0);
        alu_result_out: out std_logic_vector(31 downto 0);
        zero_out: out std_logic;
        data2_out: out std_logic_vector(31 downto 0);
        wr_reg_out: out std_logic_vector(4 downto 0);
        Branch_out: out std_logic;
        MemRead_out: out std_logic;
        MemWrite_out: out std_logic;
        RegWrite_out: out std_logic;
        MemtoReg_out: out std_logic
    );
end exec_mem_reg;

architecture Behovioral of exec_mem_reg is


begin


reg_exec_mem: process (clk) is
begin
    if rising_edge(clk) then
        branch_adder_out <= branch_adder_in;
        alu_result_out <= alu_result_in;
        zero_out <= zero_in;
        data2_out <= data2_in;
        wr_reg_out <= wr_reg_in;
        Branch_out <= Branch_in;
        MemRead_out <= MemRead_in;
        MemWrite_out <= MemWrite_in;
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
    end if;
end process reg_exec_mem;

end architecture Behovioral;