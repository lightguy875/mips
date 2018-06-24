library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity mipspipeline_tb is
end mipspipeline_tb;

architecture mipspipeline_tb_arch of mipspipeline_tb is
component mipspipeline is
	port (
	-- Entradas --
	clk : in std_logic;
	-- Saidas para testar funcionamento do programa --
	Muxpc_out : out std_logic_Vector(31 downto 0);
	MEMI_out : out std_logic_Vector(31 downto 0);
	BREGrs_out : out std_logic_Vector(31 downto 0);
	BREGrt_out : out std_logic_Vector(31 downto 0);
	WB_out : out std_logic_Vector(2 downto 0);
	EXE_out : out std_logic_Vector(7 downto 0);
	MEM_out : out std_logic_Vector(1 downto 0);
	ULA_out : out std_logic_Vector(31 downto 0);
	MUXindice_out : out std_logic_Vector(4 downto 0);
	MEMD_out : out std_logic_Vector(31 downto 0);
	MUXdado_out : out std_logic_Vector(31 downto 0);
	mux1_out: out std_logic_Vector(31 downto 0);
	mux2_out: out std_logic_Vector(31 downto 0);
	PCendwb : out std_logic_vector(31 downto 0);
	muxS0 : out std_logic;
	muxS1 : out std_logic;
	-- Saidas da implementaÃƒÂ§ÃƒÂ£o no FPGA -----------
	saida_conversor0 : out std_logic_vector(0 to 6);
	saida_conversor1 : out std_logic_vector(0 to 6);
	saida_conversor2 : out std_logic_vector(0 to 6);
	saida_conversor3 : out std_logic_vector(0 to 6);
	saida_conversor4 : out std_logic_vector(0 to 6);
	saida_conversor5 : out std_logic_vector(0 to 6);
	saida_conversor6 : out std_logic_vector(0 to 6);
	saida_conversor7 : out std_logic_vector(0 to 6);
	-- Chaves seletoras FPGA --------------------
	sel_saida_chaves : in std_logic_vector(1 downto 0)
	);
end component;

signal clk :  std_logic;
signal Muxpc_out :  std_logic_Vector(31 downto 0);
signal MEMI_out :  std_logic_Vector(31 downto 0);
signal BREGrs_out : std_logic_Vector(31 downto 0);
signal BREGrt_out : std_logic_Vector(31 downto 0);
signal WB_out : std_logic_Vector(2 downto 0);
signal EXE_out : std_logic_Vector(7 downto 0);
signal MEM_out : std_logic_Vector(1 downto 0);
signal ULA_out : std_logic_Vector(31 downto 0);
signal MUXindice_out : std_logic_Vector(4 downto 0);
signal MEMD_out : std_logic_Vector(31 downto 0);
signal MUXdado_out : std_logic_Vector(31 downto 0);
signal mux1_out : std_logic_Vector(31 downto 0);
signal mux2_out : std_logic_Vector(31 downto 0);
signal PCendwb :  std_logic_vector(31 downto 0);
signal muxS0 :  std_logic;
signal muxS1 :  std_logic;
signal sel_saida_chaves : std_logic_vector(1 downto 0);


begin
	mipspipelineTB : mipspipeline
	PORT MAP (
		clk => clk,
		Muxpc_out => Muxpc_out,
		MEMI_out => MEMI_out,
		BREGrs_out => BREGrs_out,
		BREGrt_out => BREGrt_out,
		WB_out => WB_out,
		EXE_out => EXE_out,
		MEM_out => MEM_out,
		ULA_out => ULA_out,
		MUXindice_out => MUXindice_out,
		MEMD_out => MEMD_out,
		MUXdado_out => MUXdado_out,
		mux1_out => mux1_out,
		mux2_out => mux2_out,
		PCendwb => PCendwb,
		muxS0 => muxS0,
		muxS1 => muxS1,
		sel_saida_chaves => sel_saida_chaves
	);

Init : process
	begin
	clk <= '1';
	wait for 0.5 ns;
	clk <= '0';
	wait for 0.5 ns;

end process;
end mipspipeline_tb_arch;
