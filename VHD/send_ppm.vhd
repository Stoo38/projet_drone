library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;



entity send_ppm is
	port 
	(
		i_clk			: in std_logic;
		i_reset_n	: in std_logic;
		i_enable	: in std_logic;
		i_reg   	: in std_logic_vector(const_vector_size-1 downto 0); 
		o_ppm			: out std_logic
	);

end send_ppm;

architecture rtl of send_ppm is 
	
	--Appel de compteur local et compteur global
	component global_counter port (	i_clk  		: in  	std_logic;                      
																	i_reset_n	: in  	std_logic;                     
																	o_count 	: out 	std_logic_vector(const_vector_size-1 downto 0));
	end component;
	component local_counter port(	i_clk		: in 	std_logic;
																i_reset_n	: in 	std_logic;
																i_init		: in 	std_logic;
																o_count 	: out 	std_logic_vector(const_vector_size-1 downto 0)); 
	end component;

	--Création du type pour définir les différents états
	--type ppm_states is ( 	synchro, 			
	--											first_pulse,
	--											second_pulse,
	--											third_pulse,
	--											fourth_pulse,
	--											synchro_delay,
	--											first_delay,
	--											second_delay,
	--											third_delay,
	--											fourth_delay);

	type ppm_states is (tempo, pulse, synchro);

	--Signaux représentant les différents états
	signal current_state, next_state : ppm_states;

	--Signaux du bloc send_ppm
	signal sig_in_clk     			: std_logic := '0';
	signal sig_in_reset_n     	: std_logic;
	signal sig_in_enable				: std_logic;
	signal sig_in_reg						: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_out_ppm					: std_logic;

	--Signaux des compteurs 
	signal sig_in_init					: std_logic;	
	signal sig_out_local_count  : std_logic_vector(const_vector_size-1 downto 0);
	signal sig_out_global_count : std_logic_vector(const_vector_size-1  downto 0);

	

	--Signaux pour le calcul du nombre de cycles de chaque trame

	signal sig_cyclesTrame1					: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_cyclesTrame2					: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_cyclesTrame3					: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_cyclesTrame4					: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_cyclesTrameSynchro		: std_logic_vector(46 - 1 downto 0);

	--Signal de gestion des états
	signal sig_state				: std_logic_vector(2 downto 0) := "000";



	--constant test_test				: std_logic_vector(const_vector_size - 1 downto 0) := std_logic_vector(unsigned(const_t_min)/unsigned(const_clk_period));			

 

	begin

		sig_in_clk 		<= i_clk;
		sig_in_reset_n 	<= i_reset_n;
		sig_in_enable	<= i_enable;
		sig_in_reg		<= i_reg;
		o_ppm			<= sig_out_ppm;
		
		global_counter1 : global_counter port map (
			i_clk 		=> sig_in_clk, 
			i_reset_n 	=> sig_in_reset_n,
			o_count 	=> sig_out_global_count);

		local_counter1 : local_counter port map (
			i_clk 		=> sig_in_clk,
			i_reset_n 	=> sig_in_reset_n,
			i_init 		=> sig_in_init,
			o_count 	=> sig_out_local_count);

		
	cal:process(sig_in_reg) --process de calcul du nombre de cycles pour chaque impulsion
	begin

		sig_cyclesTrame1 <= std_logic_vector((unsigned(sig_in_reg(7 downto 0))*unsigned(const_pas)+unsigned(const_t_min))/unsigned(const_clk_period));
		sig_cyclesTrame2 <= std_logic_vector((unsigned(sig_in_reg(15 downto 8))*unsigned(const_pas)+unsigned(const_t_min))/unsigned(const_clk_period));
		sig_cyclesTrame3 <= std_logic_vector((unsigned(sig_in_reg(23 downto 16))*unsigned(const_pas)+unsigned(const_t_min))/unsigned(const_clk_period));
		sig_cyclesTrame4 <= std_logic_vector((unsigned(sig_in_reg(31 downto 24))*unsigned(const_pas)+unsigned(const_t_min))/unsigned(const_clk_period));
		
		--sig_test <= std_logic_vector(unsigned(sig_in_reg(7 downto 0))/unsigned(const_clk_period)*unsigned(const_pas)+unsigned(const_cycles_trame_min));
		
		sig_cyclesSynchro <= std_logic_vector(unsigned(const_cyles_ppm) - (unsigned(sig_cyclesTrame1)+unsigned(sig_cyclesTrame2)+unsigned(sig_cyclesTrame3)+unsigned(sig_cyclesTrame4)-5*unsigned(const_cycles_tempo)));

	end process cal;


	seq: process(sig_in_clk)	--process qui gère la partie séquentielle
	begin

		if (sig_in_clk'event and sig_in_clk ='1') then	
			if (sig_in_reset_n='0') then
				sig_out_ppm <= '0';
				sig_state <= "000";
				current_state <= tempo;
			else
				current_state <= next_state; 
			end if;
		end if;

	end process seq;


	combi: process		--process qui gère la partie combinatoire
	begin
		case current_state is

			when tempo =>
				if (sig_out_local_count = const_tempo) then 
					sig_state <= std_logic_vector(unsigned(sig_state) + 001);
					sig_in_init <= '1';
					if (sig_state = "101") then 
						next_state <= synchro;
					else
						next_state <= pulse;
					end if;
				else 
					sig_in_init <= '0';
				end if;

			when pulse =>
				sig_in_init <= '0';
				if (sig_state="001") then 
					if (sig_out_local_count = sig_cyclesTrame1) then 
						sig_in_init <= '1';
						next_state <= tempo;
					end if;

				elsif (sig_state="010") then 
					if (sig_out_local_count = sig_cyclesTrame2) then 
						sig_in_init <= '1';
						next_state <= tempo;
					end if;

				elsif (sig_state="011") then 
					if (sig_out_local_count = sig_cyclesTrame3) then 
						sig_in_init <= '1';
						next_state <= tempo;
					end if;

				elsif (sig_state="100") then 
					if (sig_out_local_count = sig_cyclesTrame4) then 
						sig_in_init <= '1';
						next_state <= tempo;
					end if;

				else 
					sig_in_init <= '0';

				end if;

			when synchro =>
				sig_in_init <= '0';
					if (sig_out_local_count = sig_cyclesSynchro) then 
						
					end if;


		end case;
	end process combi;
end rtl;	








