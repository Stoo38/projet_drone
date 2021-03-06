library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;
use LIB_VHD.all;

--library LIB_SYNTH;
--use LIB_SYNTH.all;

entity bench_send_ppm is end bench_send_ppm;

architecture tb_ppm of bench_send_ppm is

	component send_ppm port (		i_clk       : in  std_logic;                      
			                        i_reset_n   : in  std_logic;                     
			                        --i_enable    : in  std_logic;   
			                        i_reg       : in std_logic_vector(31  downto 0);  
			                        o_ppm       : out std_logic);
	end component;

  signal sig_i_clk        : std_logic := '0';
  signal sig_i_reset_n    : std_logic;
 -- signal sig_i_enable     : std_logic;
  signal sig_i_reg        : std_logic_vector(31 downto 0);
  signal sig_o_ppm        : std_logic;

	begin    
    send_ppm1 : send_ppm port map (
				i_clk			=> sig_i_clk,
				i_reset_n => sig_i_reset_n,
				--i_enable	=> sig_i_enable,
				i_reg			=> sig_i_reg,
				o_ppm			=> sig_o_ppm);
				
    sig_i_clk <= not(sig_i_clk) after 20 ns;
		sig_i_reset_n <= '0', '1' after 10000 ns; 

 	process
		begin
			wait for 200 ns;
			sig_i_reg <= "11111111111111111111111111111111";
			wait for 3000 ns;
			sig_i_reg <= "01101100111010111000101110110101";
			wait for 2500 ns;
			sig_i_reg <= "10111110101110111100001010110110";		
			wait for 10000 ns;	
			sig_i_reg <= "00000000000000000000000000000000";
			wait for 900000 ns;
			sig_i_reg <= "01101100111010111000101110110101";
			wait for 2500000 ns;
			--sig_i_reg <= "00000000000000000000000000000000";
			--wait for 250 ns;	
			sig_i_reg <= "11111111111111111111111111111111";
			wait for 50000000 ns;
		--	sig_i_reset_n <= '0';
		 -- wait for 10000 ns;
    --	sig_i_reset_n <= '1';
		--	wait for 1000 ns;
			sig_i_reg <= "01101100111010111000101110110101";
			wait for 1000000000 ns;
			--sig_i_reg <= "00000000001111111111111111111110";
			--wait for 30000000 ns;


	end process;
	
end tb_ppm;
