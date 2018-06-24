library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity regidex is
	generic (WSIZE : natural := 32);
	port (
    -- entradas --
		clk: in std_logic;
    control_wb_in : in std_logic_vector(2 downto 0);
    control_mem_in : in std_logic_vector(1 downto 0);
    control_exec_in : in std_logic_vector(7 downto 0);
    PC4_in : in std_logic_vector(WSIZE-1 downto 0);
    read_data1_in : in std_logic_vector(WSIZE-1 downto 0);
    read_data2_in : in std_logic_vector(WSIZE-1 downto 0);
    sign_ext_imm_in : in std_logic_vector(WSIZE-1 downto 0);
    shamnt_in : in std_logic_vector(4 downto 0);
    reg_rt_in : in std_logic_vector(4 downto 0);
    reg_rd_in : in std_logic_vector(4 downto 0);
		beq_in : in std_logic;
		bne_in : in std_logic;
    -- saidas --
    control_wb_out : out std_logic_vector(2 downto 0);
    control_mem_out : out std_logic_vector(1 downto 0);
    reg_dst_out: out std_logic_vector(1 downto 0);
    aluOP_out: out std_logic_vector(3 downto 0);
    aluSRC1_out: out std_logic;
    aluSRC2_out: out std_logic;
    PC4_out : out std_logic_vector(WSIZE-1 downto 0);
    read_data1_out : out std_logic_vector(WSIZE-1 downto 0);
    read_data2_out : out std_logic_vector(WSIZE-1 downto 0);
    sign_ext_imm_out : out std_logic_vector(WSIZE-1 downto 0);
    shamnt_out : out std_logic_vector(4 downto 0);
    reg_rt_out : out std_logic_vector(4 downto 0);
    reg_rd_out : out std_logic_vector(4 downto 0);
	 beq_out : out std_logic;
	 bne_out : out std_logic);
end regidex;

architecture regidex_arch of regidex is
begin
process_idex: process(clk)
  begin
	if (rising_edge(clk)) then
    control_wb_out <= control_wb_in;
    control_mem_out <= control_mem_in;
    reg_dst_out <= control_exec_in(7 downto 6);
    aluOP_out <= control_exec_in(5 downto 2);
    aluSRC1_out <= control_exec_in(0);
    aluSRC2_out <= control_exec_in(1);
    PC4_out <= PC4_in;
    read_data1_out <= read_data1_in;
    read_data2_out <= read_data2_in;
    sign_ext_imm_out <= sign_ext_imm_in;
    shamnt_out <= shamnt_in;
    reg_rt_out <= reg_rt_in;
    reg_rd_out <= reg_rd_in;
	 beq_out <= beq_in;
	 bne_out <= bne_in;

	end if;
end process;
end architecture regidex_arch;
