-- reset actif bas Le 31/03/2014  RR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- -----------------------------------------
Entity PWM_cycle is
-- -----------------------------------------
Port ( Rst : In std_logic;
Clk : In std_logic;
CLOCK_50  : In std_logic;
--commande : in std_logic;
--pwm_low : In std_logic_vector (7 downto 0);
pwm_high : In std_logic_vector (7 downto 0);
--pwm_cycle : In std_logic_vector (7 downto 0);
pwm_number_out: Out std_logic_vector(3 downto 0); 
--cnt_out : Out std_logic_vector(20 downto 0);
tempo_flag : Out std_logic;
--new_trame : Out std_logic;
PWMout : Out std_logic );
end PWM_cycle;

-- -----------------------------------------
Architecture RTL_Accum of PWM_cycle is
-- -----------------------------------------

-- type Trame_states is (pwm_init_s, pwm_high_s, pwm_low_s);  
--type Trame_states is (pwm_init_high_s, pwm_high_s, pwm_low_s, pwm_tempo);  
type Trame_states is (pwm_init_high_s, pwm_high_s, pwm_low_s, new_t0, new_t1);  

signal   etat, etat_suivant	: Trame_states;
signal   pwm_signal				: std_logic;
signal   count_pwm		 		: std_logic_vector(7 downto 0);
signal   next_count_pwm			: std_logic_vector(7 downto 0);
--signal   count_pwm_high 		: std_logic_vector(7 downto 0);
--signal   count_pwm_low        : std_logic_vector(7 downto 0);
signal   pwm_periode          : std_logic_vector(7 downto 0);
signal   pwm_number,next_pwm_number 		: std_logic_vector(3 downto 0);
signal   tempo,next_tempo,tempo_var 		: std_logic_vector(9 downto 0);
signal   new_trame_int,next_new_trame_int	: std_logic;
CONSTANT	divider_rate			: INTEGER := 30;
--variable	cnt			: INTEGER RANGE 0 TO 67108863;
signal	cnt,next_cnt			: std_logic_vector(20 downto 0);

begin 

 --pwm_high <= "00001000";
--pwm_periode <= "01100100"; -- periode = 100
 pwm_periode <= "00000100"; -- periode = 4
 
P_STATE:process(Clk)
	begin
		if (Clk='1' and Clk'EVENT ) then
		   if (Rst ='0') then 
		      etat <= pwm_init_high_s;
				count_pwm(7 downto 0) <= count_pwm(7 downto 0);	
				pwmout <= '0';
				pwm_number <= "0000";
				tempo <= "0000000000";		    		
		    else     
		   	etat <= etat_suivant;
	  	   	count_pwm(7 downto 0) <= next_count_pwm(7 downto 0);
			pwm_number <= next_pwm_number;
		    pwmout <= pwm_signal;
		    tempo<=next_tempo;
		   end if ;
	  	   		  
		end if;
	end process P_STATE;
	
Pwm:process(etat, pwm_high, pwm_periode, pwm_number,tempo, count_pwm, new_trame_int) 
  begin
  next_pwm_number <= pwm_number; next_count_pwm <= count_pwm; pwm_signal <= '0';next_tempo<=tempo;tempo_flag<='0';	
	case etat is
	
	         when pwm_init_high_s =>
	            next_count_pwm(7 downto 0) <= "00000000"; -- pour commencer  a 0 sur 1ere ligne
	            etat_suivant <= pwm_high_s;
			
			 when pwm_high_s =>
			    next_count_pwm(7 downto 0) <= count_pwm(7 downto 0) + "00000001";
			    if ( count_pwm > pwm_high )then 
				 etat_suivant <= pwm_low_s;
				else 
				 pwm_signal <= '1';
				 etat_suivant <= pwm_high_s;
				end if;
				
			when pwm_low_s =>
			    if ( count_pwm > pwm_periode and pwm_number<"1000") then 
				 next_count_pwm <= "00000000";
				 etat_suivant <= pwm_init_high_s;
				 next_pwm_number <= pwm_number + "0001";
				elsif  ( count_pwm > pwm_periode and pwm_number="1000") then
				 next_pwm_number <= "0000";
	--			 etat_suivant <= pwm_tempo;
			     etat_suivant <= new_t0;
				else
				 next_count_pwm <= count_pwm + "00000001";
				 etat_suivant <= pwm_low_s;		 
				end if;				
			
			when new_t0 =>
			    if (new_trame_int='0') then
	             etat_suivant <= new_t1;
	            else 
	             etat_suivant <=new_t0;
	            end if;	
			
			when new_t1 =>
			    if (new_trame_int='1') then
	             etat_suivant <= pwm_init_high_s;
	            else 
	             etat_suivant <=new_t1;
	            end if;
	            tempo_flag<='1';	
	            
--			when pwm_tempo =>
--			    tempo_flag<='1';
--			    if (tempo=tempo_var) then
--	             next_tempo<= "0000000000";
--	             etat_suivant <= pwm_init_high_s;
--	            else 
--	             next_tempo<=tempo + "0000000001";
--	             etat_suivant <=pwm_tempo;
--	            end if;
						 
	end case;
	pwm_number_out <= pwm_number;
end process Pwm;

tempo_22_5ms:process(CLOCK_50)
BEGIN
		IF (CLOCK_50'EVENT AND CLOCK_50 = '1') THEN
			IF  (rst = '0') THEN
			   	cnt <= "000000000000000000000";
				new_trame_int <= '0';
				ELSE  
				new_trame_int <= next_new_trame_int;
				cnt <= next_cnt;				
			END IF;
		END IF;

--	qa <= cnt;
END PROCESS tempo_22_5ms;

process(new_trame_int,cnt)
 begin

--    IF (cnt =       "010001001010101000100" ) THEN --IF (cnt = "01000100101010001000" ) THEN  -- 11 250 000 ns / 20 ns
    IF (cnt =         "010001001010101000100" ) THEN
	  next_new_trame_int <= '1';  
	  next_cnt <= cnt+"000000000000000000001";
--	 ELSIF (cnt =     "100010010101010001000" ) THEN --IF (cnt = "00100010010101000100" ) THEN  -- 22 500 000 ns / 20 ns
	 ELSIF (cnt =     "100010010101010001000" ) THEN 
	  next_new_trame_int <= '0';
	  next_cnt <=     "000000000000000000000"; 
	 ELSE
	  next_cnt <= cnt+"000000000000000000001";
	  next_new_trame_int <= new_trame_int;
	END IF;
 --   new_trame <= new_trame_int;
 --   cnt_out <= cnt;
end process;

end RTL_Accum;


