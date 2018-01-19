library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;
use LIB_VHD.all;

entity top_ppm is
	port
	(
		i_clk_top			: in std_logic;
		i_reset_n_top		: in std_logic;
		i_sel_top			: in std_logic_vector(3 downto 0);
		o_ppm_top			: out std_logic;
		--KEY					: in std_logic_vector(3 downto 0);
	--	servo_vdd			: in std_logic;
	--	servo_gnd			: in std_logic;
		servo					: in std_logic;
		SW						: in std_logic_vector(5 downto 0);
		LEDR					: out std_logic_vector(7 downto 0)
	);
end entity top_ppm;

architecture rtl of top_ppm is

attribute chip_pin : string;

--attribute chip_pin of i_clk_top  : signal is "AF14";
attribute chip_pin of i_clk_top  : signal is "AF14";
--attribute chip_pin of i_reset_n_top  : signal is "AJ26";
attribute chip_pin of i_reset_n_top  : signal is "Y16";
--attribute chip_pin of o_ppm_top : signal is "AC22";
attribute chip_pin of o_ppm_top : signal is "AB17";
attribute chip_pin of i_sel_top : signal is "AE12,AD10,AC9,AE11";
--attribute chip_pin of LEDR  : signal is "Y21,W21,W20,Y19,W19,W17,V18,V17,W16,V16";
--attribute chip_pin of KEY  : signal is "Y16,W15,AA15,AA14";
--attribute chip_pin of SW  : signal is "AE12,AD10,AC9,AE11,AD12,AD11,AF10,AF9,AC12,AB12";
attribute chip_pin of LEDR  : signal is "W20,Y19,W19,W17,V18,V17,W16,V16";
attribute chip_pin of SW  : signal is "AD12,AD11,AF10,AF9,AC12,AB12";
attribute chip_pin of servo : signal is "AA21";

	component decoder
		port
		(
			i_sel	: in std_logic_vector(3 downto 0);
			o_val : out std_logic_vector(31 downto 0)
		);
	end component;

	component send_ppm
		port
		(
			i_clk				: in std_logic;
			i_reset_n		: in std_logic;
			i_reg				: in std_logic_vector(31 downto 0);
			o_ppm				: out std_logic
		);
	end component;

--	signal sig_clk			: std_logic;
--	signal sig_reset_n	: std_logic;
--	signal sig_i_sel		: std_logic_vector(1 downto 0);
	signal sig_reg			: std_logic_vector(31 downto 0);
--	signal sig_o_ppm		: std_logic;

	begin
	
		LEDR(0) <=	'1' when SW(0) = '1' else
						'0' when SW(0) = '0';
		LEDR(1) <=	'1' when SW(1) = '1' else
						'0' when SW(1) = '0';
		LEDR(2) <=	'1' when SW(2) = '1' else
						'0' when SW(2) = '0';						
		LEDR(3) <=	'1' when SW(3) = '1' else
						'0' when SW(3) = '0';						
		LEDR(4) <=	'1' when SW(4) = '1' else
						'0' when SW(4) = '0';						
		LEDR(5) <=	'1' when SW(5) = '1' else
						'0' when SW(5) = '0';
		LEDR(7) <=	'1' when i_reset_n_top = '1' else
						'0' when i_reset_n_top = '0';			

						
		decoder1 : decoder port map (
			i_sel => i_sel_top,
			o_val => sig_reg
			);
		
		send_ppm1 : send_ppm port map (	
			i_clk			=> i_clk_top,
			i_reset_n => i_reset_n_top,
			i_reg			=> sig_reg,
			o_ppm			=> o_ppm_top
			);

end rtl;
