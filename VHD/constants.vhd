library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


package constants_package is 

	constant const_vector_size				: integer := 23; -- taille des vecteurs de bits 

	constant const_clk_period				: std_logic_vector(5 downto 0) := "101000";						-- ns (période de la clock)
	constant const_tempo 					: std_logic_vector(const_vector_size - 1 downto 0) := "00001001001001111100000";	-- ns (durée d'une temporisation)
	constant const_t_min 					: std_logic_vector(const_vector_size - 1 downto 0) := "00010101010111001100000";	-- ns (durée de la trame la plus courte)
	constant const_t_max 					: std_logic_vector(const_vector_size - 1 downto 0) := "00110011111000010100000";				-- ns (durée de la trame la plus longue)
	constant const_cycles_tempo				: std_logic_vector(const_vector_size - 1 downto 0) := "00110011111000010100000";integer := tempo/clk_period;		-- Nombre de cycles nécessaires pour la temporisation
	constant const_cycles_trame_min			: std_logic_vector(const_vector_size - 1 downto 0) := "00110011111000010100000";integer := t_min/clk_period; 		-- Nombre de cycles nécessaires pour la trame la plus courte
	constant const_nb_cycles_trame_max		: integer := t_max/clk_period;		-- Nombre de cycles nécessaires pour la trame la plus longue
	constant const_pas						: integer := 4000;					-- valeur du pas de quantification


end package constants_package;
