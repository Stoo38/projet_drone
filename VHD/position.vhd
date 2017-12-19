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
		IMG	   : in std_logic;
		X_Cont   : in std_logic_vector(8 downto 0);
		Y_Cont   : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r_proc	   : in std_logic_vector(7 downto 0);
		g_proc	   : in std_logic_vector(7 downto 0);
		b_proc	   : in std_logic_vector(7 downto 0);
		r_bout	   : out std_logic_vector(7 downto 0);
		g_bout	   : out std_logic_vector(7 downto 0);
		b_bout	   : out std_logic_vector(7 downto 0);
		X_barycentre : out std_logic_vector (8 downto 0);
		Y_barycentre : out std_logic_vector (8 downto 0)

	);

end entity;

architecture det of position is
type gen_states is (reset, nouvelle_image, boucle_image, calcul_barycentre);

signal		ri,gi,bi,nri,ngi,nbi				: std_logic_vector(7 downto 0);
signal		x_bar, y_bar, next_x_bar, next_y_bar: std_logic_vector(8 downto 0):="000000000";
signal		count_x,count_y						: std_logic_vector(8 downto 0);
signal 		count, next_count 					: std_logic_vector (17 downto 0);
signal		x_sum, next_x_sum					: std_logic_vector (23 downto 0):="000000000000000000000000";
signal		y_sum, next_y_sum					: std_logic_vector (23 downto 0):="000000000000000000000000";
signal   	state,next_state 					: gen_states;
signal		vga_im								: std_logic:='0';
signal		test_ecriture						: std_logic:='0';--signal qui va tester si l'on passe bien dans l'écriture


begin

clk:process(VGA_CLK)
begin 
	if (VGA_CLK'event and VGA_CLK ='1') then	
		if (n_reset='0') then
			ri <= x"00"; gi <= x"00"; bi <= x"00";
			x_bar <= "000000000";
			y_bar <= "000000000";
			r_bout <= x"00"; g_bout <= x"00"; b_bout <= x"00";
			count_x <= "000000000";
			count_y <= "000000000";
			count <= "000000000000000000";
			x_sum <= "000000000000000000000000";
			y_sum <= "000000000000000000000000";
	  		state <= reset;
		else
			ri <= r_proc;
			gi <= g_proc;
			bi <= b_proc;
			r_bout <= nri;
			g_bout<=ngi;
			b_bout<=nbi;
			count_x <= X_cont;
			count_y <= Y_cont;
			state <= next_state;
			count <= next_count;
			x_bar<=next_x_bar;
			y_bar<=next_y_bar;
			x_sum<=next_x_sum;
			y_sum<=next_y_sum;
			vga_im <= IMG;


		end if;
	end if;
end process clk;	
	   
gen:process(X_Cont,Y_Cont, ri, bi, gi, x_bar, y_bar, count, x_sum, y_sum, IMG)
begin

	case state is
  
		when reset =>
		next_x_bar <= "000000000";
		next_y_bar <= "000000000";
		
		--test_ecriture <= '1';
		next_state <= nouvelle_image;

		when nouvelle_image =>
		next_count <= "000000000000000000";
		next_x_sum <= "000000000000000000000000";
		next_y_sum <= "000000000000000000000000";
		--test_ecriture <= '0';
		next_state <= boucle_image;

		when boucle_image =>
		if (count_x /= "111111111" and count_y /= "111011111" and IMG = '1' and count_x >="100001101") then
			if (ri = x"00" and gi = x"00" and bi = x"00") then
				next_x_sum <= x_sum + count_x;
				next_y_sum <= y_sum + count_y;
				next_count <= count + '1'; 				
			end if;
		next_state <= boucle_image;

		elsif (count_x = "111111111" and count_y = "111011111"and IMG'event) then
			if (ri = x"00" and gi = x"00" and bi = x"00") then
				next_x_sum <= x_sum + count_x;
				next_y_sum <= y_sum + count_y;
				next_count <= count + '1'; 
			end if;
		next_state <= calcul_barycentre;
		
		else
			next_state <= boucle_image;
		end if;
		
		when calcul_barycentre =>
		next_x_bar <= std_logic_vector(to_signed(to_integer(signed(x_sum) / signed(count)),9));--peut être pas synthétisable, transformer count en somme de puissance de 2
		next_y_bar <= std_logic_vector(to_signed(to_integer(signed(y_sum) / signed(count)),9));
		next_state <= nouvelle_image;
		
	end case;

end process gen;

bar:process(ri, gi, bi, count_x, count_y)
begin


	--if ((x_bar = count_x) and (y_bar = count_y) and (x_bar /= "000000000") and (x_bar /= "000000000")) then 
	--	nri <= "00000000";
	--	ngi <= "00000000";
	--	nbi <= "00000000";
	--	test_ecriture<='1';
	--else 
	--	nri <= ri;
	--	ngi <= gi;
	--	nbi <= bi;
	--	test_ecriture<='0';
	--end if;

--	if ((x_min >= count_x +"00011101") and (y_min >= count_y -"000000011") and (x_min <= count_x +"00100011") and (y_min <= count_y +"000000011") and (x_min /= "000000000") and (y_min /= "000000000")) then 
--		nri <= "00000000";
--		ngi <= "11111111";
--		nbi <= "00000000";
--		test_ecriture<='1';
--	elsif ((x_max >= count_x +"00011101") and (y_max >= count_y -"000000011") and (x_max <= count_x +"00100011") and (y_max <= count_y +"000000011") and (x_max /= "000000000") and (y_max /= "000000000")) then 
--		nri <= "00000000";
--		ngi <= "00000000";
--		nbi <= "11111111";
--		test_ecriture<='1';
	if ((x_bar >= count_x +"00011101") and (y_bar >= count_y -"000000011") and (x_bar <= count_x +"00100011") and (y_bar <= count_y +"000000011") and (x_bar /= "000000000") and (y_bar /= "000000000")) then 
		nri <= "11111111";
		ngi <= "00000000";
		nbi <= "00000000";
		test_ecriture<='1';
	else 
		nri <= ri;
		ngi <= gi;
		nbi <= bi;
		test_ecriture<='0';
	end if;

	
	
end process bar;
X_barycentre <= x_bar;
Y_barycentre <= y_bar;	
end det;
