library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity local_counter is
		          port(	i_clk			: in std_logic;
                    i_reset_n	: in std_logic;
										i_init		: in std_logic;
										o_count 	: out std_logic_vector(9 downto 0));
end local_counter;

architecture b of local_counter is
  begin

    process(i_clk, i_init)

      variable v_val : std_logic_vector (9 downto 0);

      begin	
	
	      if (i_clk'event and i_clk = '1') then

          	if (i_reset_n = '0') then 
	          v_val := (others => '0');

  	      	else
            	if i_init = '1' then
              		v_val := (others => '0');
            	else
              		v_val := v_val + "0000000001";
            	end if;
	        end if;
	        o_count <= v_val;  
          end if;

    end process;
end b;
