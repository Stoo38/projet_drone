-----------------------------REGDEC.vhd----------------------------------------

library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.std_logic_arith.ALL ;
use IEEE.std_logic_unsigned.ALL;


entity delayline_line_buffer is
	port(	Delay_Line_in		: in STD_LOGIC_VECTOR(11 downto 0) ;
--		Delay_Line_address	: in STD_LOGIC_VECTOR(3 downto 0) ;
		Delay_Line_sample_shift	: in STD_LOGIC ;
		RESET			: in STD_LOGIC ;
		CLK     		: in STD_LOGIC ;
		Delay_Line_out		: out STD_LOGIC_VECTOR(11 downto 0)) ;
end delayline_line_buffer;

architecture A of delayline_line_buffer is
type delay_line is array (0 to 2559) of STD_LOGIC_VECTOR(11 downto 0);
signal x : delay_line ;
--signal Delay_Line_address : 


begin
	P_DL : process(CLK)
	begin 

	if (CLK'event and CLK='1') then
      	   if (RESET = '0') then
		for i in x'range loop
		   x(i) <= (others => '0');
		end loop ;
	   elsif (Delay_Line_sample_shift = '1') then
		x(0) <= Delay_Line_in;
		for i in x'low to (x'high - 1) loop
		   x(i+1) <= x(i);
		end loop;
	   end if;
	end if;
	end process P_DL ;

--	Delay_Line_out <= x(conv_integer(Delay_Line_address));
	Delay_Line_out <= x(2559);
end A;
