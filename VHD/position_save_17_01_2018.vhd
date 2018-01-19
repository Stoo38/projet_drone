library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
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

--------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Déclaration des signaux----------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------

--Etats de la FSM
type gen_states is (reset, nouvelle_image, boucle_image, calcul_barycentre);
-- Siganux intermédiares pour faire les opérations sur les pixels
signal		ri,gi,bi,nri,ngi,nbi						: std_logic_vector(7 downto 0); 
-- Siganux intermédiares pour récupérer la position du barycentre
signal		x_bar, y_bar, next_x_bar, next_y_bar		: std_logic_vector(8 downto 0);
-- Signaux intermédiares pour compter le nombre de cycles d'horloge où IMG est à 1
signal 		count, next_count 							: std_logic_vector (17 downto 0);
-- Siganux intermédiares permettant de faire la somme des coordonnées en x des points du drone
signal		x_sum, next_x_sum							: std_logic_vector (24 downto 0);
-- Siganux intermédiares permettant de faire la somme des coordonnées en y des points du drone
signal		y_sum, next_y_sum 							: std_logic_vector (24 downto 0);
-- Siganux intermédiares permettant de faire le changement d'état dans la FSM
signal   	state,next_state 							: gen_states;
-- Siganux intermédiares pour détecter la fin de l'image
signal		count_img, next_count_img					: std_logic_vector (19 downto 0);


signal		quot_x, quot_y								: std_logic_vector (8 downto 0);
signal		reste_x, reste_y							: std_logic_vector (24 downto 0);
signal 		num_x, denum_x, num_y, denum_y				: integer;


begin

--------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Process Synchrone d'affectation des valeurs--------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------


clk:process(VGA_CLK)
begin 
	if (VGA_CLK'event and VGA_CLK ='1') then	
		if (n_reset='0') then--Si le reset est actif on réinitialise tous les signaux et on se met dans l'état reset de la FSM
			ri <= x"00"; gi <= x"00"; bi <= x"00";
			x_bar <= "000000000";
			y_bar <= "000000000";
			r_bout <= x"00"; g_bout <= x"00"; b_bout <= x"00";
			count <= "000000000000000000";
			x_sum <= "0000000000000000000000000";
			y_sum <= "0000000000000000000000000";
			count_img <= "00000000000000000000";
	  		state <= reset;
		else--a tous les coups d'horloge si le reset n'est pas activé, les signaux prendrons une nouvelle valeurs
			ri <= r_proc;
			gi <= g_proc;
			bi <= b_proc;
			r_bout <= nri;
			g_bout<=ngi;
			b_bout<=nbi;
			state <= next_state; 
			count <= next_count;
			x_bar<=next_x_bar;
			y_bar<=next_y_bar;
			x_sum<=next_x_sum;
			y_sum<=next_y_sum;
			count_img <= next_count_img;


		end if;
	end if;
end process clk;	

--------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------Process décrivant le fonctionnement FSM du calcul de barycentre----------------------------------
--------------------------------------------------------------------------------------------------------------------------------------

num_x <= CONV_INTEGER(x_sum);
denum_x <= CONV_INTEGER(count);
num_y <= CONV_INTEGER(y_sum);
denum_y <= CONV_INTEGER(count);
	   
gen:process(X_Cont,Y_Cont, ri, bi, gi, x_bar, y_bar, count, x_sum, y_sum, IMG, count_img, state)

variable temp1,temp2, temp3, temp4: integer ;
variable y1, y2 :  std_logic_vector (8 downto 0);

begin

	case state is
  
		when reset => -- état de reset, tous les signaux sont mis à 0
		next_x_bar <= "000000000";
		next_y_bar <= "000000000";
		next_count <= "000000000000000000";
		next_x_sum <= "0000000000000000000000000";
		next_y_sum <= "0000000000000000000000000";
		next_count_img <= "00000000000000000000";		
		next_state <= nouvelle_image;

		when nouvelle_image => -- état de l'acquisition d'une nouvelle image, récupération du barycentre de l'image précédente
		next_count <= "000000000000000000";
		next_x_sum <= "0000000000000000000000000";
		next_y_sum <= "0000000000000000000000000";
		next_count_img <= "00000000000000000000";
		next_x_bar <= x_bar;
		next_y_bar <= y_bar;
		next_state <= boucle_image;

		when boucle_image =>-- état dans lequel on reste tant que l'on arrive pas au bout de l'image
		next_count <= count;
		next_x_sum <= x_sum;
		next_y_sum <= y_sum;
		next_count_img <= count_img;
		next_x_bar <= x_bar;
		next_y_bar <= y_bar;

-- On vient compter le nombre de cycles d'horloge lorsque IMG est a 1
-- Sachant qu'il y a un nombre fixe de cycles où IMG est à 1, une fois que cette valeur est atteinte, 
-- cela voudra dire que l'on arrive à la fin de l'image
		if (IMG = '1') then 
			next_count_img <= count_img +1;
		end if;

-- On test si on est dans l'image et pas à la fin de celle-ci
		if (X_cont /= "111111111" and Y_Cont /= "111011111" and IMG = '1' and X_cont >="100001101") then

--Vu qu'on ne récupère que le niveau de vert, on ne va tester que la valeur de ce niveau pour faire le traitement d'image
--Plus la valeur de vert est faible (plus on se rapproche du noir) plus le point aura d'importance pour le calcul de position
			if (gi = x"00") then
				next_x_sum <= x_sum + X_cont + X_cont + X_cont;
				next_y_sum <= y_sum + Y_Cont + Y_Cont + Y_Cont;
				next_count <= count + '1' + '1' +'1';
			elsif (gi = x"35") then
				next_x_sum <= x_sum + X_cont + X_cont;
				next_y_sum <= y_sum + Y_Cont + Y_Cont;
				next_count <= count + '1' + '1' ;
			elsif (gi = x"70") then
				next_x_sum <= x_sum + X_cont;
				next_y_sum <= y_sum + Y_Cont;
				next_count <= count + '1';
			end if;
-- Tant que l'on est pas à la fin de l'image on reste dans le même état
		next_state <= boucle_image;

-- On test si on arrive à la fin de l'image
		elsif (count_img = "111010110100111111") then
			if (gi = x"00") then
				next_x_sum <= x_sum + X_cont + X_cont + X_cont;
				next_y_sum <= y_sum + Y_Cont + Y_Cont + Y_Cont;
				next_count <= count + '1' + '1' +'1';
			elsif (gi = x"25") then
				next_x_sum <= x_sum + X_cont + X_cont;
				next_y_sum <= y_sum + Y_Cont + Y_Cont;
				next_count <= count + '1' +'1';
			elsif (gi = x"50") then
				next_x_sum <= x_sum + X_cont;
				next_y_sum <= y_sum + Y_Cont;
				next_count <= count + '1';
			end if;
-- On passe dans l'état de calcul du barycentre
		next_state <= calcul_barycentre;
		
		else
			next_state <= boucle_image;
		end if;
		
		when calcul_barycentre =>
		temp1:=num_x;
 		temp2:=denum_x;
		temp3:=num_y;
 		temp4:=denum_y;

		for i in 8 downto 0 loop
			if (temp1>(temp2 * (2**i))) then
				y1(i):= '1';
				temp1:= temp1- (temp2 * (2**i));
			else y1(i):= '0';
			end if;
		end loop;
		reste_x <= CONV_STD_LOGIC_VECTOR (temp1 ,25);
		quot_x<= y1;

		for i in 8 downto 0 loop
			if (temp3>(temp4 * 2**i)) then
				y2(i):= '1';
				temp3:= temp3- temp4 * 2**i;
			else y2(i):= '0';
			end if;
		end loop;
		reste_y <= CONV_STD_LOGIC_VECTOR (temp1 ,25);
		quot_y<= y1;

		next_count <= count;
		next_x_sum <= x_sum;
		next_y_sum <= y_sum;
		next_count_img <= count_img;
		next_x_bar <=  quot_x(8 downto 0);
		next_y_bar <=  quot_y(8 downto 0);
		next_state <= nouvelle_image;
		
	end case;

end process gen;

--------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------Process décrivant la modification----------------------------------
--------------------------------------------------------------------------------------------------------------------------------------


bar:process(ri, gi, bi, X_cont, Y_Cont, x_bar, y_bar)
begin


	if ((x_bar >= X_cont +"00011101") and (y_bar >= Y_Cont -"000000011") and (x_bar <= X_cont +"00100011") and (y_bar <= Y_Cont +"000000011") and (x_bar /= "000000000") and (y_bar /= "000000000")) then 

		ngi <= "11111111";
		nri <= "00000000";
		nbi <= "00000000";
	else 
		nri <= ri;
		ngi <= gi;
		nbi <= bi;
  end if;

	
end process bar;

	

X_barycentre <= x_bar;
Y_barycentre <= y_bar;	
end det;
