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
		i_clk			: in std_logic;
		i_reset_n	: in std_logic;
	--	i_enable	: in std_logic;
		i_reg   	: in std_logic_vector(31 downto 0); 
		o_ppm			: out std_logic
	);

end send_ppm;

architecture rtl of send_ppm is 
	
	--Appel de compteur local et compteur global					
	--component global_counter port (	i_clk  		: in  	std_logic;                      
	--																i_reset_n	: in  	std_logic;                     
	--																o_count 	: out 	std_logic_vector(const_vector_size-1 downto 0));
	--end component;
	component local_counter port(	i_clk			: in 	std_logic;
																i_reset_n	: in 	std_logic;
																i_init		: in 	std_logic;
																o_count 	: out std_logic_vector(const_vector_size-1 downto 0)); 
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

	type ppm_states is (tempo, pulse, synchro, reset, fin_trame);

	--Signaux représentant les différents états
	signal current_state, next_state : ppm_states;

	--Signaux du bloc send_ppm
	signal sig_in_clk     			: std_logic := '0';
	signal sig_in_reset_n     	: std_logic;
	--signal sig_in_enable				: std_logic;
	signal sig_in_reg						: std_logic_vector(31 downto 0);
	signal sig_out_ppm					: std_logic;

	--Signaux des compteurs 
	signal sig_in_init							: std_logic;	
	signal sig_out_local_count			: std_logic_vector(const_vector_size-1 downto 0);
	--signal sig_out_global_count			: std_logic_vector(const_vector_size-1 downto 0);
	--signal sig_local_counter_inter	: std_logic_vector(const_vector_size-1 downto 0);

	
	--Signaux pour le calcul du nombre de cycles de chaque trame

	signal sig_cyclesTrame1					: std_logic_vector(28-1 downto 0);
	signal sig_cyclesTrame2					: std_logic_vector(28-1 downto 0);
	signal sig_cyclesTrame3					: std_logic_vector(28-1 downto 0);
	signal sig_cyclesTrame4					: std_logic_vector(28-1 downto 0);
	signal sig_cyclesSynchro				: std_logic_vector(39 downto 0);
	signal sig_final1								: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_final2								: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_final3								: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_final4								: std_logic_vector(const_vector_size-1 downto 0);
	signal sig_cyclesSynchro_final	: std_logic_vector(const_vector_size-1 downto 0);

	--Signaux de gestion des états
	signal sig_state								:	std_logic_vector(2 downto 0);
	signal sig_state_inter					:	std_logic_vector(2 downto 0);

	--Signaux de gestion du trafic 
	signal sig_reg_storage					: std_logic_vector(31 downto 0);

	signal sig_flag_ppm_ready				: std_logic;


	begin

		sig_in_clk			<= i_clk;
		sig_in_reset_n 	<= i_reset_n;
	--	sig_in_enable		<= i_enable;
		sig_in_reg			<= i_reg;
		o_ppm						<= sig_out_ppm;
		
		--global_counter1 : global_counter port map (
		--	i_clk				=> sig_in_clk, 
		--	i_reset_n 	=> sig_in_reset_n,
		--	o_count			=> sig_out_global_count);

		local_counter1 : local_counter port map (
			i_clk				=> sig_in_clk,
			i_reset_n 	=> sig_in_reset_n,
			i_init			=> sig_in_init,
			o_count			=> sig_out_local_count);

		
	--cal:process(sig_in_reg) --process de calcul du nombre de cycles pour chaque impulsion
	--begin

		sig_cyclesTrame1 <= std_logic_vector(((unsigned(sig_reg_storage(7 downto 0))*unsigned(const_cycles_pas))+unsigned(const_cycles_trame_min))-"0000000000000000000000000001");
		sig_final1 <= sig_cyclesTrame1(const_vector_size-1 downto 0);

		sig_cyclesTrame2 <= std_logic_vector(((unsigned(sig_reg_storage(15 downto 8))*unsigned(const_cycles_pas))+unsigned(const_cycles_trame_min))-"0000000000000000000000000001");
		sig_final2 <= sig_cyclesTrame2(const_vector_size-1 downto 0);

		sig_cyclesTrame3 <= std_logic_vector(((unsigned(sig_reg_storage(23 downto 16))*unsigned(const_cycles_pas))+unsigned(const_cycles_trame_min))-"0000000000000000000000000001");
		sig_final3 <= sig_cyclesTrame3(const_vector_size-1 downto 0);

		sig_cyclesTrame4 <= std_logic_vector(((unsigned(sig_reg_storage(31 downto 24))*unsigned(const_cycles_pas))+unsigned(const_cycles_trame_min))-"0000000000000000000000000001");
		sig_final4 <= sig_cyclesTrame4(const_vector_size-1 downto 0);
		
		sig_cyclesSynchro <= std_logic_vector((unsigned(const_cyles_ppm) - (unsigned(sig_cyclesTrame1)+unsigned(sig_cyclesTrame2)+unsigned(sig_cyclesTrame3)+unsigned(sig_cyclesTrame4)+5*unsigned(const_cycles_tempo)))-"0000000000000000000000000000000000000100");
		sig_cyclesSynchro_final <= sig_cyclesSynchro(const_vector_size-1 downto 0);

	--	sig_local_counter_inter <= std_logic_vector(unsigned(sig_out_local_count)/unsigned(const_clk_period));
	--end process cal;

		--sig_out_ppm <=	'1' when (current_state = tempo) else
		--								'0';
										--'0' when (current_state = synchro) else
										--'0' when (current_state = pulse) else
										--'0';


-- process sequentiel pour generer sig_reg_storage
	reg: process(sig_in_clk)	
	begin
		if (sig_in_clk'event and sig_in_clk ='1') then	
			if (sig_in_reset_n='0') then
				sig_reg_storage <= "10000000100000001000000010000000"; --valeur "milieu" de chaque trame
			else
				if(current_state = fin_trame) then 
					sig_reg_storage <= sig_in_reg;
				end if;
			end if;
		end if;
	end process reg;

-- process sequentiel pour generer ppm_out sans alea (glitch)
	ppm_o: process(sig_in_clk)	
	begin
		if (sig_in_clk'event and sig_in_clk ='1') then	
			if (sig_in_reset_n='0') then
				sig_out_ppm <= '0';
			else
				if(current_state = tempo) then 
					sig_out_ppm <= '1';
				else
					sig_out_ppm <= '0';
				end if;
			end if;
		end if;
	end process ppm_o;

	seq: process(sig_in_clk)	--process qui gère la partie séquentielle
	begin
		if (sig_in_clk'event and sig_in_clk ='1') then	
			if (sig_in_reset_n='0') then
				sig_state <= "000";
				current_state <= reset;
			else
				sig_state <= sig_state_inter;
				current_state <= next_state;
			end if;
		end if;
	end process seq;

	combi: process(sig_in_reg, sig_state, current_state, sig_out_local_count, sig_final1, sig_final2, sig_final3, sig_final4, sig_cyclesSynchro_final)		--process qui gère la partie combinatoire
	begin
		case current_state is

			when reset =>	
				sig_state_inter <= "000";
				sig_in_init <= '1';	
				sig_flag_ppm_ready <= '0';
				next_state <= tempo;
				--sig_reg_storage <= sig_in_reg;

			when tempo =>
				--sig_out_ppm <=	'1';
				sig_flag_ppm_ready <= '0';
				if (unsigned(sig_out_local_count) = unsigned(const_cycles_tempo)-"00000000000000000001") then 
					sig_in_init <= '1';
					if (sig_state = "100") then 
						sig_state_inter <= sig_state;
						next_state <= synchro;
					else
						sig_state_inter <= sig_state + "001";
						next_state <= pulse;
					end if;
				else 
					sig_in_init <= '0';
					next_state <= tempo;
					sig_state_inter <= sig_state;
				end if;
			
			when pulse =>
				--sig_out_ppm <=	'0';
				sig_flag_ppm_ready <= '0';
				sig_state_inter <= sig_state;
				if (sig_state="001" and (sig_out_local_count = sig_final1))	then 
						sig_in_init <= '1';
						next_state <= tempo;
				elsif (sig_state="010" and (sig_out_local_count = sig_final2)) then 
						sig_in_init <= '1';
						next_state <= tempo;
				elsif (sig_state="011" and (sig_out_local_count = sig_final3)) then 
						sig_in_init <= '1';
						next_state <= tempo;
				elsif (sig_state="100" and (sig_out_local_count = sig_final4)) then 
						sig_in_init <= '1';
						next_state <= tempo;
				else 
					sig_in_init <= '0';
					next_state <= pulse;
				end if;

			when synchro =>
				--sig_out_ppm <=	'0';
				if(unsigned(sig_out_local_count) = unsigned(sig_cyclesSynchro_final)-"00000000000000000010") then
					--sig_flag_ppm_ready <= '1'; 
					sig_in_init	<= '1';
					sig_state_inter <= "000";
					next_state <= fin_trame;
					--sig_reg_storage <= sig_in_reg;
				else
					sig_flag_ppm_ready <= '0';
					sig_in_init <= '0';
					sig_state_inter <= sig_state;
					next_state <= synchro;
				end if;

			when fin_trame =>
				sig_in_init <= '1';
				--sig_reg_storage <= sig_in_reg;
				sig_flag_ppm_ready <= '1';
				sig_state_inter <= "000";
				next_state <= tempo;

		end case;
	end process combi;
end rtl;	








