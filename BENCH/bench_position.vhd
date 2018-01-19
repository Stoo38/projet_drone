-------------------------------------------------------------------------------
--
-- FILE NAME: BENCH.vhd
-- AUTHOR: Ludovic BERNARD
-- Created: 17 Nov 27
-- Test Bench for getting the drone's position
-------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
--use IEEE.std_logic_arith.all;

library LIB_VHD;
use LIB_VHD.all;

entity bench is
end bench;


architecture test_position of bench is

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
		X_barycentre 	: out std_logic_vector (8 downto 0);
		Y_barycentre 	: out std_logic_vector (8 downto 0));
  end component;


signal clk 					: std_logic := '0';
signal n_reset 				: std_logic := '1';
signal x_count, y_count		: std_logic_vector (8 downto 0):= "000000000";
signal r,g,b				: std_logic_vector (7 downto 0) := x"FF";
signal sortie_x, sortie_y 	: std_logic_vector(8 downto 0);
signal img 					: std_logic := '1';


begin


barycentre : position port map  (
		n_reset => n_reset,
		IMG => img,
		VGA_CLK => clk,
		X_Cont => x_count,
		Y_Cont => y_count,
		r_proc => r,
		g_proc => g,
		b_proc => b,
		X_barycentre => sortie_x, 
		Y_barycentre =>  sortie_y);

 	clk <= not clk after 40 ns;
 	n_reset <=  '0' , '1' after 200 ns; 
	img <= '1';


	process 

--    variable seed1, seed2: positive;               -- seed values for random generator
--    variable rand1 : real;   -- random real-number value in range 0 to 1  
--    variable range_of_rand1 : real := 255.0;    -- the range of random values created will be 0 to 2pow9.
--	variable rand_num : integer := 0;
--	variable zero : integer :=0;

		begin


--			uniform(seed1, seed2, rand1);   -- generate random number
--			rand_num := integer(rand1*range_of_rand1);  -- rescale to 0..2 pow 10, convert integer part

			wait until clk'event and clk ='1' ;
			for i in 0 to 511 loop
				for j in 0 to 511 loop
					x_count <= std_logic_vector(to_unsigned(i, 9));
					y_count <= std_logic_vector(to_unsigned(j, 9));
					if (x_count < "100000000") then
						r <= "00000000";
						g <= "00000000";
						b <= "00000000";
					else 
						r <= "11111111";
						g <= "11111111";
						b <= "11111111";
					end if;			
					wait until clk'event and clk ='1' ;
				end loop;
			end loop;
			wait for 1000000 ns ;
		end process;
end test_position;
