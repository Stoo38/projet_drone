-------------------------------------------------------------------------------
--
-- FILE NAME: test_div.vhd
-- AUTHOR: Ludovic BERNARD
-- Created: 21 Dec 2017
-- Test Bench for testing the division
-------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library LIB_VHD;
use LIB_VHD.all;

entity test_div is
end test_div;

architecture test_div of test_div is

  component div_binary
    port (
		ina : in std_logic_vector (15 downto 0);-- range 0 to 99;
		inb:  in std_logic_vector (15 downto 0);-- range 1 to 9;
		quot:  out std_logic_vector (15 downto 0);-- range 0 to 99;
		rest : out std_logic_vector (15 downto 0));-- range 0 to 99 );
  end component;

signal s_ina : std_logic_vector (15 downto 0):="0000000000000000";
signal s_inb : std_logic_vector (15 downto 0):="0000000000000000";
signal s_quot : std_logic_vector (15 downto 0):="0000000000000000";
signal s_rest : std_logic_vector (15 downto 0):="0000000000000000";

begin

result : div_binary port map  (
		ina => s_ina,
		inb => s_inb,
		quot => s_quot,
		rest => s_rest);

process
	begin
		s_ina <= "1010101010101010";
		s_inb <= "0011001010111000";
		wait for 2000 ns;
end process;
end test_div;
