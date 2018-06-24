library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity regexmem is
	generic (WSIZE : natural := 32);
	port (
    -- entradas --
    clk: in std_logic;
    control_wb_in : in std_logic_vector(2 downto 0);
    control_mem_in : in std_logic_vector(1 downto 0);
    PC4_shift_in : in std_logic_vector(WSIZE-1 downto 0);
    ula_result_in : in std_logic_vector(WSIZE-1 downto 0);
    writa_data_in : in std_logic_vector(WSIZE-1 downto 0);
    write_reg_dst_in : in std_logic_vector(4 downto 0);
    -- saidas --
    control_wb_out : out std_logic_vector(2 downto 0);
    PC4_shift_out : out std_logic_vector(WSIZE-1 downto 0);
    mem_read_out : out std_logic;
    mem_write_out : out std_logic;
    adress_out : out std_logic_vector(WSIZE-1 downto 0);
    write_data_out : out std_logic_vector(WSIZE-1 downto 0);
    write_reg_dst_out : out std_logic_vector(4 downto 0));
end regexmem;

architecture regexmem_arch of regexmem is
begin
process_regexmem: process(clk)
  begin
	if (rising_edge(clk)) then
	control_wb_out <= control_wb_in;
    PC4_shift_out <= PC4_shift_in;
    mem_read_out <=  control_mem_in(1);
    mem_write_out <= control_mem_in(0);
    adress_out <= ula_result_in;
    write_data_out <= writa_data_in;
    write_reg_dst_out <= write_reg_dst_in;
	end if;
end process;
end architecture regexmem_arch;
