library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;
use LIB_VHD.all;

entity bench_top_ppm is end bench_top_ppm;

architecture tb_top_ppm of bench_top_ppm is

	component top_ppm port (
		i_clk_top			: in std_logic;
		i_reset_n_top	: in std_logic;
		i_sel_top			: in std_logic_vector(3 downto 0);
		o_ppm_top			: out std_logic;
		SW						: in std_logic_vector(5 downto 0);
		LEDR					: out std_logic_vector(7 downto 0)
		);
	end component;

	signal sig_i_clk_top			: std_logic	:= '0';
	signal sig_i_reset_n_top	: std_logic;
	signal sig_i_sel_top			: std_logic_vector(3 downto 0);
	signal sig_o_ppm_top			: std_logic;
	signal sig_SW							: std_logic_vector(5 downto 0);
	signal sig_LEDR						: std_logic_vector(7 downto 0);

	begin
		top_ppm1 : top_ppm port map (
			i_clk_top			=> sig_i_clk_top,
			i_reset_n_top => sig_i_reset_n_top,
			i_sel_top			=> sig_i_sel_top,
			o_ppm_top			=> sig_o_ppm_top,
			SW						=> sig_SW,
			LEDR					=> sig_LEDR 
			);

		sig_i_clk_top <= not(sig_i_clk_top) after 20 ns;
		sig_i_reset_n_top <= '0', '1' after 10000 ns;

	process
		begin
			wait for 200 ns;
			sig_i_sel_top <= "0000";
			wait for 2000 ns;
			sig_i_sel_top <= "0100";
			wait for 2000 ns;
			sig_i_sel_top <= "1001";
			wait for 2000 ns;
			sig_i_sel_top <= "1100";
			wait for 100000000 ns;
			sig_i_sel_top <= "1011";
			wait for 100000000 ns;
			sig_i_sel_top <= "0111";
			wait for 1000000000 ns;
		
	end process;
end tb_top_ppm;
			


