library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library LIB_VHD;
use LIB_VHD.all;


entity top_bar is

	port 
	(
		CLK_top			: in std_logic;
		reset_top    		: in std_logic;
		SW1_top    		: in std_logic;		
		r_top	   		: in std_logic_vector(7 downto 0);
		g_top	   		: in std_logic_vector(7 downto 0);
		b_top	   		: in std_logic_vector(7 downto 0);
		rout_top	   	: out std_logic_vector(7 downto 0);
		gout_top	   	: out std_logic_vector(7 downto 0);
		bout_top		: out std_logic_vector(7 downto 0);
		r_out_proc	   	: out std_logic_vector(7 downto 0);
		g_out_proc	   	: out std_logic_vector(7 downto 0);
		b_out_proc		: out std_logic_vector(7 downto 0);
		X_barycentre_top	: out std_logic_vector (8 downto 0);
		Y_barycentre_top	: out std_logic_vector (8 downto 0);
		HSYNC_top		: out std_logic;
		VSYNC_top		: out std_logic;
		cam_x			: out std_logic_vector (9 downto 0);
		cam_y			: out std_logic_vector (8 downto 0);
		IMG_top			: out std_logic

	); 

end entity top_bar;

architecture bar of top_bar is

	component gensync is
	    Port ( CLK : in std_logic;
		   reset : in std_logic;
		   HSYNC : out std_logic;
		   VSYNC : out std_logic;
		   IMG : out std_logic;
		   IMGY_out : out std_logic;
		   X : out std_logic_vector(9 downto 0);
		   Y : out std_logic_vector(8 downto 0)
		   );
	end component;

	component image_process is

	port 
	(
		IMG	   : in std_logic;
		reset    : in std_logic;
		SW1    : in std_logic;		
		VGA_HS	   : in std_logic;
		VGA_VS	   : in std_logic;
		VGA_CLK	   : in std_logic;
		X_Cont   : in std_logic_vector(8 downto 0);
		Y_Cont   : in std_logic_vector(8 downto 0);  -- image 512 x 512
		r	   : in std_logic_vector(7 downto 0);
		g	   : in std_logic_vector(7 downto 0);
		b	   : in std_logic_vector(7 downto 0);
		r_out	: out std_logic_vector(7 downto 0);
		g_out	: out std_logic_vector(7 downto 0);
		b_out	: out std_logic_vector(7 downto 0)
	);

	end component;

	component position
	port (
		n_reset    		: in std_logic;
		IMG	   			: in std_logic;
		VGA_CLK	   		: in std_logic;
		X_Cont  		: in std_logic_vector(8 downto 0);
		Y_Cont  		: in std_logic_vector(8 downto 0);  -- image 512 x 512
		r_proc	  		: in std_logic_vector(7 downto 0);
		g_proc	 		: in std_logic_vector(7 downto 0);
		b_proc	 		: in std_logic_vector(7 downto 0);
		r_bout	  		: out std_logic_vector(7 downto 0);
		g_bout	 		: out std_logic_vector(7 downto 0);
		b_bout	 		: out std_logic_vector(7 downto 0);	
		X_barycentre 	: out std_logic_vector (8 downto 0);
		Y_barycentre 	: out std_logic_vector (8 downto 0));
	end component;

	signal HSYNC_gen_img, VSYNC_gen_img 	: std_logic;
	signal IMG_gen_img_pos			: std_logic;
	signal X_gen_img_pos			: std_logic_vector (9 downto 0);
	signal Y_gen_img_pos			: std_logic_vector (8 downto 0);
	signal r_img_pos, g_img_pos, b_img_pos	: std_logic_vector (7 downto 0);

	begin
		gensync1 : gensync port map (
			CLK => CLK_top,
			reset => reset_top,
			HSYNC => HSYNC_gen_img,
			VSYNC => VSYNC_gen_img,
			IMG => IMG_gen_img_pos,
			X => X_gen_img_pos,
			Y => Y_gen_img_pos
			);

		image_process1 : image_process port map (
			IMG => IMG_gen_img_pos,
			reset => reset_top,
			SW1 => SW1_top,
			VGA_HS => HSYNC_gen_img,   
			VGA_VS => VSYNC_gen_img,
			VGA_CLK => CLK_top,	   
			X_Cont => X_gen_img_pos(8 downto 0),
			Y_Cont => Y_gen_img_pos,
			r => r_top,
			g => g_top,
			b => b_top,
			r_out => r_img_pos,
			g_out => g_img_pos,
			b_out => b_img_pos
			);

		position1 : position port map (
			n_reset =>  reset_top,		
			IMG => IMG_gen_img_pos,
			VGA_CLK => CLK_top,
			X_Cont => X_gen_img_pos(8 downto 0),
			Y_Cont => Y_gen_img_pos,
			r_proc => r_img_pos,
			g_proc => g_img_pos,
			b_proc => b_img_pos,
			r_bout => rout_top,
			g_bout => gout_top,
			b_bout => bout_top,
			X_barycentre => X_barycentre_top,
			Y_barycentre => Y_barycentre_top
			);
HSYNC_top<=HSYNC_gen_img;
VSYNC_top<=VSYNC_gen_img;
cam_x <= X_gen_img_pos;
cam_y <= Y_gen_img_pos;
r_out_proc <= r_img_pos;
g_out_proc <= g_img_pos;
b_out_proc <= b_img_pos;
IMG_top <= IMG_gen_img_pos;
end bar;

