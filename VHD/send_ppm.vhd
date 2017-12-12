library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;



entity send_ppm is
	port 
	(
		i_clk		: in std_logic;
		i_reset_n	: in std_logic;
		i_enable	: in std_logic;
		i_reg   	: in std_logic_vector(31 downto 0); 
		o_ppm		: out std_logic
	);

end send_ppm;

architecture rtl of send_ppm is 
	
	--Appel de compteur local et compteur global
	component global_counter port (	i_clk  		: in  	std_logic;                      
				               		i_reset_n	: in  	std_logic;                     
				  					o_count 	: out 	std_logic_vector(19 downto 0));
	end component;
	component local_counter port(	i_clk		: in 	std_logic;
						        	i_reset_n	: in 	std_logic;
									i_init		: in 	std_logic;
									o_count 	: out 	std_logic_vector(18 downto 0)); 
	end component;

	--Création du type pour définir les différents états
	type ppm_states is ( 	synchro, 			
							first_pulse,
							second_pulse,
							third_pulse,
							fourth_pulse,
							synchro_delay,
							first_delay,
							second_delay,
							third_delay,
							fourth_delay);

	-- Signaux représentant les différents états
	signal current_state, next_state : ppm_states;

	--Signaux du bloc send_ppm
	signal sig_in_clk     			: std_logic := '0';
	signal sig_in_reset_n     		: std_logic;
	signal sig_in_enable			: std_logic;
	signal sig_in_reg				: std_logic_vector(31 downto 0);
	signal sig_out_ppm				: std_logic;

	--Signaux des compteurs 
	signal sig_in_init				: std_logic;	
	signal sig_out_local_count   	: std_logic_vector(18 downto 0);
	signal sig_out_global_count   	: std_logic_vector(19 downto 0);

	

	--Déclaration des constantes
	constant clk_period 			: integer := 40; 					-- ns (période de la clock)
	constant tempo 					: integer := 300000; 				-- ns (durée d'une temporisation)
	constant t_min 					: integer := 700000;				-- ns (durée de la trame la plus courte)
	constant t_max 					: integer := 1700000;				-- ns (durée de la trame la plus longue)
	constant nb_cycles_tempo 		: integer := tempo/clk_period;		-- Nombre de cycles nécessaires pour la temporisation
	constant nb_cycles_trame_min 	: integer := t_min/clk_period; 		-- Nombre de cycles nécessaires pour la trame la plus courte
	constant nb_cycles_trame_max 	: integer := t_max/clk_period;		-- Nombre de cycles nécessaires pour la trame la plus longue
	constant pas					: integer := 4000;					-- valeur du pas de quantification


 

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




		
	cal:process(i_reg) --process de calcul du nombre de cycles pour chaque impulsion
	begin

		--unsigned(sig_in_reg(7 downto 0))*unsigned(std_logic_vector(pas));
	--	sig_in_reg(15 downto 8)
	--	sig_in_reg(23 downto 16)
	--	sig_in_reg(31 downto 24)
	


	end process cal;


	seq: process(sig_in_clk)	--process qui gère la partie séquentielle
	begin

		if (sig_in_clk'event and sig_in_clk ='1') then	
			if (sig_in_reset_n='0') then
				sig_out_ppm <= '0';
--				state <= S0;
--			else
--				ri <= r; gi <= g; bi <= b;
--				for t in 0 to 7 loop		 
--					r_out(t) <= (nri(t) and IMG); g_out(t) <= (ngi(t) and IMG); b_out(t) <= (nbi(t) and IMG);
--				end loop;
				current_state <= next_state; 
			end if;
		end if;

	end process seq;


	--seq: process		--process qui gère la partie combinatoire
	--begin

	--end process seq;

end rtl;








