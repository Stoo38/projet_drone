library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

library LIB_VHD;
use LIB_VHD.constants_package.all;

entity global_counter is
		          port(	i_clk			: in std_logic;
                  	i_reset_n	: in std_logic;
										o_count		: out std_logic_vector(const_vector_size-1 downto 0) --Doit pouvoir compter jusqu'à 22.5 ms
						);
end global_counter;

architecture a of global_counter is
  begin

    process(i_clk)

      variable v_val : std_logic_vector (const_vector_size-1 downto 0);

      begin

	      if (i_clk'event and i_clk = '1') then
          	if (i_reset_n = '0') then 
	        	v_val := (others => '0');
  	      	else
            	if (v_val = "00000000000010001001010101000100") then
              		v_val := (others => '0');
            	else
              		v_val := v_val + "00000000000000000000000000000001";
            	end if;
	        end if;
	        o_count <= v_val;  
          end if;

    end process;
end a;
