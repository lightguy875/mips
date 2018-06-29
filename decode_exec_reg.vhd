-- File: latch_id_ex.vhd
-- Generated by MyHDL 0.6
-- Date: Fri Nov 19 00:10:08 2010

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decode_exec_reg is
    port (
        clk: in std_logic;
        pc_adder_in: in std_logic_vector(31 downto 0);
        data1_in: in std_logic_vector(31 downto 0);
        data2_in: in std_logic_vector(31 downto 0);
        address32_in: in std_logic_vector(31 downto 0);
        rs_in: in std_logic_vector(4 downto 0);
        rt_in: in std_logic_vector(4 downto 0);
        rd_in: in std_logic_vector(4 downto 0);
        func_in: in std_logic_vector(5 downto 0);
        RegDst_in: in std_logic;
        ALUop_in: in std_logic_vector(1 downto 0);
        ALUSrc_in: in std_logic;
        Branch_in: in std_logic;
        MemRead_in: in std_logic;
        MemWrite_in: in std_logic;
        RegWrite_in: in std_logic;
        MemtoReg_in: in std_logic;
        pc_adder_out: out std_logic_vector(31 downto 0);
        data1_out: out std_logic_vector(31 downto 0);
        data2_out: out std_logic_vector(31 downto 0);
        address32_out: out std_logic_vector(31 downto 0);
        rs_out: out std_logic_vector(4 downto 0);
        rt_out: out std_logic_vector(4 downto 0);
        rd_out: out std_logic_vector(4 downto 0);
        func_out: out std_logic_vector(5 downto 0);
        RegDst_out: out std_logic;
        ALUop_out: out std_logic_vector(1 downto 0);
        ALUSrc_out: out std_logic;
        Branch_out: out std_logic;
        MemRead_out: out std_logic;
        MemWrite_out: out std_logic;
        RegWrite_out: out std_logic;
        MemtoReg_out: out std_logic
    );
end decode_exec_reg;

architecture Behovioral of decode_exec_reg is
begin


reg_process_decode_exec: process (clk) is
begin
    if rising_edge(clk) then
        pc_adder_out <= pc_adder_in;
        data1_out <= data1_in;
        data2_out <= data2_in;
        address32_out <= address32_in;
        rs_out <= rs_in;
        rt_out <= rt_in;
        rd_out <= rd_in;
        func_out <= func_in;
        RegDst_out <= RegDst_in;
        ALUop_out <= ALUop_in;
        ALUSrc_out <= ALUSrc_in;
        Branch_out <= Branch_in;
        MemRead_out <= MemRead_in;
        MemWrite_out <= MemWrite_in;
        RegWrite_out <= RegWrite_in;
        MemtoReg_out <= MemtoReg_in;
    end if;
end process reg_process_decode_exec;

end architecture Behovioral;