-- Quartus II VHDL Template
-- blanker

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity image_process is

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

end entity;

architecture rtl of image_process is
type gen_states is (S0,S1);

signal 	t 					: integer ;
signal   ri,gi,bi,nri,ngi,nbi 	: std_logic_vector(7 downto 0);
signal   state,next_state : gen_states;

begin

clk:process(VGA_CLK)
begin 
	if (VGA_CLK'event and VGA_CLK ='1') then	
		if (reset='0') then
			ri <= x"00"; gi <= x"00"; bi <= x"00";
			state <= S0;
		else
			ri <= r; gi <= g; bi <= b;
			for t in 0 to 7 loop		 
				r_out(t) <= (nri(t) and IMG); g_out(t) <= (ngi(t) and IMG); b_out(t) <= (nbi(t) and IMG);
			end loop;
			state <= next_state; 
		end if;
	end if;
end process clk;	
	   
gen:process(ri,gi,bi,X_Cont,Y_Cont,IMG,state,SW1)
begin
	nri <= ri; ngi <= gi;  nbi <= bi;
	case state is
  
		when S0 =>
		next_state <= S1;

		when S1 =>
		next_state <= S1;
			if (X_Cont >= x"0" and X_Cont <= x"0FE" and Y_Cont >= x"0" and  Y_Cont <= x"0FE" and SW1='0' ) then
			nri <= gi; ngi <= gi;  nbi <= gi; 						-- quart sup gauche image N & B

			elsif (X_Cont >= x"FF" and X_Cont <= x"1FF" and Y_Cont >= x"0"  and Y_Cont <= x"0FE"  and SW1='0' ) then
			nri <= x"FF"-gi; ngi <= x"FF"-gi;  nbi <= x"FF"-gi; -- quart sup droit image N & B negatif

			elsif (X_Cont >= x"0" and X_Cont <= x"AA" and Y_Cont >= x"0FF" and Y_Cont <= x"1FF"  and SW1='0' ) then
			nri <= gi; ngi <= x"00";  nbi <= x"00";				-- tiers inf gauche  image rouge

			elsif (X_Cont >=x"AB" and X_Cont <= x"154" and Y_Cont >= x"0FF" and Y_Cont <= x"1FF"  and SW1='0' ) then
			nri <= x"00"; ngi <= gi;  nbi <= x"00";				-- tiers centre image vert

			--		  elsif (X_Cont >=x"155" and X_Cont <= x"1FF" and Y_Cont >= x"0FF" and Y_Cont <= x"1FF" ) then
			--		  else  -- le reste
			elsif ( SW1='0') then  
			nri <= x"00"; ngi <= x"00";  nbi <= gi;				-- tiers droit image bleu		  
			else  -- le reste soit  SW1='1'

---------------------------------------------------------------------------------------------------------------------------			
				--if (ri <= x"20") then
				--nri <= x"00";
				--else 
				--nri <= x"FF";
				--end if;

				--if (gi <= x"20") then
				--ngi <= x"00";
				--else 
				--ngi <= x"FF";
				--end if;

				--if (bi <= x"20") then
				--nbi <= x"00";
				--else 
				--nbi <= x"FF";
				--end if;
				

				--if (nri = x"00" and ngi = x"00" ) then 
				--nbi <= x"00";
				--elsif (nri = x"00" and nbi = x"00" ) then
				--ngi <= x"00";
				--elsif (ngi = x"00" and nbi = x"00" ) then
				--nri <= x"00";
				--end if;
---------------------------------------------------------------------------------------------------------------------------
				if ((ri <= x"20") or (gi <= x"20") or (bi <= x"20")) then
				nri <= x"00";
				ngi <= x"00";
				nbi <= x"00";
				else 
				nri <= x"FF";
				ngi <= x"FF";
				nbi <= x"FF";
				end if;


			end if;	 

	end case;
 
end process gen;
		
end rtl;
