library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity position is

	port 
	(
		n_reset    : in std_logic;
		VGA_CLK	   : in std_logic;
		X_Cont   : in std_logic_vector(8 downto 0);
		Y_Cont   : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r_proc	   : in std_logic_vector(7 downto 0);
		g_proc	   : in std_logic_vector(7 downto 0);
		b_proc	   : in std_logic_vector(7 downto 0);
		X_barycentre : out std_logic_vector (8 downto 0);
		Y_barycentre : out std_logic_vector (8 downto 0)
	);

end entity;

architecture det of position is
type gen_states is (S0,S1,S2);

signal		ri,gi,bi			 	: std_logic_vector(7 downto 0);
signal		x_bar, y_bar 			: std_logic_vector(8 downto 0);
signal		count_x,count_y			: std_logic_vector(8 downto 0);
signal 		count 					: std_logic_vector (17 downto 0);
signal		x_sum					: std_logic_vector (17 downto 0);
signal		y_sum					: std_logic_vector (17 downto 0);
signal   	state,next_state 		: gen_states;

begin

clk:process(VGA_CLK)
begin 
	if (VGA_CLK'event and VGA_CLK ='1') then	
		if (n_reset='0') then
			ri <= x"00"; gi <= x"00"; bi <= x"00";
			x_bar <= "000000000";y_bar <= "000000000";
	  		state <= S0;
		else
			ri <= r_proc; gi <= g_proc; bi <= b_proc;
			count_x <= X_cont; count_y <= Y_cont;
			x_bar<=x_bar;
			y_bar<=y_bar;
			state <= next_state;
		end if;
	end if;
end process clk;	
	   
gen:process(ri,gi,bi,X_Cont,Y_Cont)
begin

	case state is
  
		when S0 =>
		count <= "000000000000000000";
		next_state <= S1;

		when S1 =>
		if (count_x /= "111111111" and count_y /= "111111111" and count_x >= "0000000000") then
			if (ri = x"FF" and ri = x"FF" and ri = x"FF") then
				x_sum <= x_sum + count_x;
				y_sum <= y_sum + count_y;
				count <= count + '1'; 
			end if;
		next_state <= S1;

		else
			if (ri = x"FF" and ri = x"FF" and ri = x"FF") then
				x_sum <= x_sum + count_x;
				y_sum <= y_sum + count_y;
				count <= count + '1'; 
			end if;
		next_state <= S2;
		end if;
		
		when S2 =>
		x_bar <= std_logic_vector(to_signed(to_integer(signed(x_sum) / signed(count)),9));
		y_bar <= std_logic_vector(to_signed(to_integer(signed(y_sum) / signed(count)),9));
		X_barycentre <= x_bar;
		Y_barycentre <= y_bar;
		next_state <= S0;
		
	end case;

end process gen;
		
end det;
