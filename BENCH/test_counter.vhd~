library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.all;

entity tb_counter is end tb_counter;

architecture c of tb_counter is

	component global_counter port (	i_clk  : in  std_logic;                      
				               		i_reset_n	: in  std_logic;                     
				  					o_count : out std_logic_vector(19 downto 0));
	end component;

	component local_counter port(	i_clk	: in std_logic;
                    				i_reset_n	: in std_logic;
									i_init	: in std_logic;
									o_count : out std_logic_vector(18 downto 0)); 
	end component;

	signal sig_in_clk     			: std_logic := '0';
	signal sig_in_reset_n     		: std_logic;
	signal sig_in_init				: std_logic;	
	signal sig_out_local_count   	: std_logic_vector(18 downto 0);
	signal sig_out_global_count   	: std_logic_vector(19 downto 0);

	begin    
    global_counter1 : global_counter port map (sig_in_clk, sig_in_reset_n, sig_out_global_count);
	local_counter1 : local_counter port map (sig_in_clk, sig_in_reset_n, sig_in_init, sig_out_local_count);

    sig_in_clk <= not(sig_in_clk) after 20 ns;
	

 		process

		begin
				sig_in_init <= '1';
				sig_in_reset_n <= '0';
				wait for 350 ns;

				sig_in_init <= '0';
				wait for 350 ns;

				sig_in_reset_n <= '1';
				wait for 10000 ns;

				sig_in_reset_n <= '0';
				wait for 350 ns;

				sig_in_init <= '1';
				wait for 200 ns;

				sig_in_init <= '0';
				sig_in_reset_n <= '1';
				wait for 350000000 ns;	

		end process;

end c;
