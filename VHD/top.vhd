library ieee;
use ieee.std_logic_1164.all
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all
use ieee.numeric_std.all

library LIB_VHD;
use LIB_VHD.all


entity top is

	port 
	(
		IMG_top	   		: in std_logic;
		reset_top    	: in std_logic;
		SW1_top    		: in std_logic;		
		VGA_HS_top	   	: in std_logic;
		VGA_VS_top	   	: in std_logic;
		VGA_CLK_top	   	: in std_logic;
		X_Cont_top   	: in std_logic_vector(8 downto 0);
		Y_Cont_top   	: in std_logic_vector(8 downto 0);
		r_top	   		: in std_logic_vector(7 downto 0);
		g_top	   		: in std_logic_vector(7 downto 0);
		b_top	   		: in std_logic_vector(7 downto 0);
		rout_top	   	: out std_logic_vector(7 downto 0);
		gout_top	   	: out std_logic_vector(7 downto 0);
		bout_top		: out std_logic_vector(7 downto 0);
		X_barycentre_top: out std_logic_vector (8 downto 0);
		Y_barycentre_top: out std_logic_vector (8 downto 0)

	); 

end entity top;


