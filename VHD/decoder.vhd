library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;


entity decoder is
	port
	(
			i_sel	: in std_logic_vector(3 downto 0);
			o_val	: out std_logic_vector(31 downto 0)
	);

end entity decoder;

architecture rtl of decoder is 
	begin
		--o_val <=	"11111111111111111111111111111111"	when i_sel = "11" else
		--					"10000000100000001000000010000000"	when i_sel = "10" else
		--					"01101001000111010111000111111111"	when i_sel = "01" else
		--					"00000000000000000000000000000000";
		o_val <=	"11111111111111111111111111111111"	when i_sel = "1111" else
					"11111111111111111111111100000000"	when i_sel = "1110" else
					"11111111111111110000000011111111"	when i_sel = "1101" else
					"11111111111111110000000000000000"	when i_sel = "1100" else
					"11111111000000001111111111111111"	when i_sel = "1011" else
					"11111111000000001111111100000000"	when i_sel = "1010" else
					"11111111000000000000000011111111"	when i_sel = "1001" else
					"11111111000000000000000000000000"	when i_sel = "1000" else
					"00000000111111111111111111111111"	when i_sel = "0111" else
					"00000000111111111111111100000000"	when i_sel = "0110" else
					"00000000111111110000000011111111"	when i_sel = "0101" else
					"00000000111111110000000000000000"	when i_sel = "0100" else
					"00000000000000001111111111111111"	when i_sel = "0011" else
					"00000000000000001111111100000000"	when i_sel = "0010" else
					"00000000000000000000000011111111"	when i_sel = "0001" else
					"00000000000000000000000000000000";
		
end rtl;
