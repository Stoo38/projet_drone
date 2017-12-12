-------------------------------------------------------------------------------
--
-- FILE NAME: BENCH.vhd
-- AUTHOR: Katell Morin-Allory
-- Created: 17 Jul 12
-- Test Bench for the generic buffers between n senders , m receivers
-------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library lib_GENBUF;
use lib_GENBUF.Type_def.all;
use lib_GENBUF.all;


entity bench is
end bench;


architecture test of bench is

  component GENBUF
    port (
      CLK          : in     std_logic;
      RST        : in     std_logic;
      StoB_REQ     : in     std_logic_vector ( 0 to send_no);
      RtoB_ACK     : in     std_logic_vector (0 to receive_no);
      DI           : in     DATA_ARRAY_df (0 to send_no);
      sender_num   : out    integer;
      reveiver_num : out    integer;
      depth_num    : out    integer;
      word_len     : out    integer;    -- DO
      DO_onespin           : buffer DATA_PORT_df;
      BtoS_ACK     : buffer std_logic_vector (0 to send_no);
      BtoR_REQ     : buffer std_logic_vector (0 to receive_no));
  end component;

  signal clk 			: std_logic := '0';
  signal reset 			: std_logic;
  signal StoB_REQ, BtoS_ACK	: std_logic_vector (0 to send_no);
  signal RtoB_ACK, BtoR_REQ	: std_logic_vector (0 to receive_no);
  signal sender_num, receiver_num, depth_num, word_len : integer;
  signal DI 			: DATA_ARRAY_df ( 0 to send_no);
  signal DO 			: DATA_PORT_df;

begin  -- test

  clk <= not clk after 100 ns;
  reset <= '0', '1' after 5 ns, '0' after 205 ns;


  inst_gen: genbuf port map (
    CLK          => clk,
    RST          => reset,
    StoB_REQ     => StoB_REQ,
    RtoB_ACK     => RtoB_ACK,
    DI           => DI,
    sender_num   => sender_num,
    reveiver_num => receiver_num,
    depth_num    => depth_num,
    word_len     => word_len,
    DO_onespin   => DO,
    BtoS_ACK     => BtoS_ACK,
    BtoR_REQ     => BtoR_REQ);

	P1 : process
	
	variable sender : integer := 0;

	begin

		for sender in 0 to 3 loop
			DI(sender) <= (others => '0');
			StoB_REQ(sender) <= '0';

			wait for 300 ns;
			StoB_REQ(sender) <= '1';
			wait until rising_edge(clk);
			DI(sender) <= (others => '1');
			wait until  BtoS_ACK(sender) = '1'; 
			wait until rising_edge(clk);
			StoB_REQ(sender) <= '0';
			DI(sender) <= (others => '0');
			wait until  BtoS_ACK(sender) = '0';
		end loop;
	end process;
end test;
