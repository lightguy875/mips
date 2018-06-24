library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity regmemwb is
	generic (WSIZE : natural := 32);
	port (
		clk : in std_logic;
		-- entradas --
		control_wb_in : in std_logic_vector (2 downto 0);
		read_data_in : in std_logic_vector (31 downto 0);
		resul_ula_in : in std_logic_vector (31 downto 0);
		write_register_in : in std_logic_vector(4 downto 0);
		PC4_shift_in : in std_logic_vector(31 downto 0);
		-- saidas --
		reg_write_out : out std_logic;
		mem_to_reg_out : out std_logic_vector(1 downto 0);
		write_data_breg_out : out std_logic_vector(31 downto 0);
		data_ula_out : out std_logic_vector(31 downto 0);
		reg_dst_out : out std_logic_vector(4 downto 0);
		PC4_shift_out : out std_logic_vector(31 downto 0));
end regmemwb;

architecture regmemwb_arch of regmemwb is
begin
	MEMWB : process(clk)
		begin
		if(rising_edge(clk)) then
		reg_write_out 		<= control_wb_in(2);
		mem_to_reg_out 		<= control_wb_in(1 downto 0);
		write_data_breg_out <= read_data_in;
		data_ula_out 		<= resul_ula_in;
		reg_dst_out 		<= write_register_in;
		PC4_shift_out		<=	PC4_shift_in;
		end if;
	end process;
end architecture regmemwb_arch;
