library IEEE ;
use IEEE.std_logic_1164.ALL ;
USE ieee.numeric_std.all;

--library lib_FILTRE ;

entity test_io is
	port(	
		CLK		: in STD_LOGIC ;
		RESET		: in STD_LOGIC ;
		ledR_out	: out STD_LOGIC_VECTOR(7 downto 0 );
	    io_Out	: out STD_LOGIC_VECTOR(3 downto 0 ) ) ;
end test_io;

architecture A of test_io is


-- DE1-SOC Pinout

attribute chip_pin          		: string;
attribute chip_pin of clk  : signal is "AF14";
attribute chip_pin of RESET : signal is "AA14";  -- Key0
attribute chip_pin  of  ledR_out     : signal is "W20,Y19,W19,W17,V18,V17,W16,V16";
---- Servo Connecteurs GPIO_0 (4 coins)
attribute chip_pin of io_Out  : signal is "AC18,Y17,AG18,AJ21";
---- Servo Connecteurs GPIO_1 (4 coins)
--attribute chip_pin of io_Out  : signal is "AB17,AA21,AA20,AC22";


---- DE1 Pinout

--attribute chip_pin          		: string;
--attribute chip_pin of clk  : signal is "L1";
--attribute chip_pin of RESET : signal is "R22";
--attribute chip_pin of DAC_WRb  : signal is "P18";
--attribute chip_pin  of  cna_Out     : signal is "F20,E18,G18,G17,H17,H18,N21,N15"; 
--attribute chip_pin  of  ledR_out     : signal is "U18,Y18,V19,T18,Y19,U19,R19,R20"; 
----attribute chip_pin  of  ledR_out : signal is "U21";


	SIGNAL	count_signal: unsigned(27 DOWNTO 0);
	
BEGIN
PROCESS (clk, reset)
	BEGIN
	
		IF reset = '0' THEN		
			count_signal <= (OTHERS => '0');			
		 ELSIF (clk'EVENT AND clk = '1') THEN			
						count_signal <= count_signal + "00000000000000001";					
		END IF;
END PROCESS;

	io_out(3 downto 0) <= STD_LOGIC_VECTOR(count_signal(12 downto 9));	
	ledR_out(7 downto 0) <= STD_LOGIC_VECTOR(count_signal(27 downto 20));


end A;

