library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


package constants_package is 

	constant const_vector_size  			: integer := 20; -- taille des vecteurs de bits 

	constant const_clk_period					: std_logic_vector(5 downto 0) := "101000";						-- ns (période de la clock)
	constant const_tempo							: std_logic_vector(const_vector_size - 1 downto 0) := "01001001001111100000";		-- ns (durée d'une temporisation)
	--constant const_t_min							: std_logic_vector(const_vector_size - 1 downto 0) := "00000000000010101010111001100000";		-- ns (durée de la trame la plus courte)
	--constant const_t_max							: std_logic_vector(const_vector_size - 1 downto 0) := "00000000000110011111000010100000";		-- ns (durée de la trame la plus longue)
	constant const_cycles_tempo				: std_logic_vector(const_vector_size - 1 downto 0) := "00000001110101001100";		-- Nombre de cycles nécessaires pour la temporisation
	constant const_cycles_trame_min		: std_logic_vector(const_vector_size - 1 downto 0) := "00000100010001011100";		-- Nombre de cycles nécessaires pour la trame la plus courte
	constant const_cycles_trame_max		: std_logic_vector(const_vector_size - 1 downto 0) := "00001010011000000100";		-- Nombre de cycles nécessaires pour la trame la plus longue
  constant const_pas								: std_logic_vector(const_vector_size - 1 downto 0) := "00000000111101010000";		-- valeur du pas de quantification

	constant const_cycles_synchro_min	: std_logic_vector(const_vector_size - 1 downto 0) := "01010110101010111000";		-- 355000 cycles pour le temps de synchro min
	
	constant const_cycles_synchro_max	: std_logic_vector(const_vector_size - 1 downto 0) := "01101111000101011000";		-- 455000 cycles pour le temps de synchro max

	constant const_cyles_ppm				  : std_logic_vector(const_vector_size - 1 downto 0) := "10001001010101000100";		-- 562500 cycles pour une trame PPM complète


end package constants_package;
