
-- 
-- Definition of  send_ppm
-- 
--      Mon Jan 15 10:53:56 2018
--      
--      Precision RTL Synthesis, 2014a.1_64-bit
-- 

   library IEEE;
   library altera_mf;
--library lpm;
   library altera;
   use IEEE.STD_LOGIC_1164.ALL;
   use altera_mf.altera_mf_components.all, 
	--lpm.lpm_components.all,
	 altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cyclonev ;
use cyclonev.cyclonev_components.all;

entity modgen_counter_20_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (19 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (19 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_20_0 ;

architecture IMPLEMENTATION of modgen_counter_20_0 is 
   signal nx25072z3, nx25072z1, nx26069z39, nx26069z37, nx26069z35, 
      nx26069z33, nx26069z31, nx26069z29, nx26069z27, nx26069z25, nx26069z23, 
      nx26069z21, nx26069z19, nx26069z17, nx26069z15, nx26069z13, nx26069z11, 
      nx26069z9, nx26069z7, nx26069z5, nx26069z3, nx60520z1, inc_d_0, 
      inc_d_1, inc_d_2, inc_d_3, inc_d_4, inc_d_5, inc_d_6, inc_d_7, inc_d_8, 
      inc_d_9, inc_d_10, inc_d_11, inc_d_12, inc_d_13, inc_d_14, inc_d_15, 
      inc_d_16, inc_d_17, inc_d_18, inc_d_19, nx26069z38, nx26069z36, 
      nx26069z34, nx26069z32, nx26069z30, nx26069z28, nx26069z26, nx26069z24, 
      nx26069z22, nx26069z20, nx26069z18, nx26069z16, nx26069z14, nx26069z12, 
      nx26069z10, nx26069z8, nx26069z6, nx26069z4, nx26069z2: std_logic ;

begin
   q(19) <= nx60520z1 ;
   q(18) <= nx26069z3 ;
   q(17) <= nx26069z5 ;
   q(16) <= nx26069z7 ;
   q(15) <= nx26069z9 ;
   q(14) <= nx26069z11 ;
   q(13) <= nx26069z13 ;
   q(12) <= nx26069z15 ;
   q(11) <= nx26069z17 ;
   q(10) <= nx26069z19 ;
   q(9) <= nx26069z21 ;
   q(8) <= nx26069z23 ;
   q(7) <= nx26069z25 ;
   q(6) <= nx26069z27 ;
   q(5) <= nx26069z29 ;
   q(4) <= nx26069z31 ;
   q(3) <= nx26069z33 ;
   q(2) <= nx26069z35 ;
   q(1) <= nx26069z37 ;
   q(0) <= nx26069z39 ;
   nx25072z3 <= '0';
   nx25072z1 <= '1';
   ix26069z62827 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_0, cout=>nx26069z38, datad=>nx26069z39, 
      dataf=>nx25072z3, cin=>nx25072z1);
   ix26069z62826 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_1, cout=>nx26069z36, datad=>nx26069z37, 
      dataf=>nx25072z3, cin=>nx26069z38);
   ix26069z62825 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_2, cout=>nx26069z34, datad=>nx26069z35, 
      dataf=>nx25072z3, cin=>nx26069z36);
   ix26069z62824 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_3, cout=>nx26069z32, datad=>nx26069z33, 
      dataf=>nx25072z3, cin=>nx26069z34);
   ix26069z62823 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_4, cout=>nx26069z30, datad=>nx26069z31, 
      dataf=>nx25072z3, cin=>nx26069z32);
   ix26069z62822 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_5, cout=>nx26069z28, datad=>nx26069z29, 
      dataf=>nx25072z3, cin=>nx26069z30);
   ix26069z62821 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_6, cout=>nx26069z26, datad=>nx26069z27, 
      dataf=>nx25072z3, cin=>nx26069z28);
   ix26069z62820 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_7, cout=>nx26069z24, datad=>nx26069z25, 
      dataf=>nx25072z3, cin=>nx26069z26);
   ix26069z62819 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_8, cout=>nx26069z22, datad=>nx26069z23, 
      dataf=>nx25072z3, cin=>nx26069z24);
   ix26069z62818 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_9, cout=>nx26069z20, datad=>nx26069z21, 
      dataf=>nx25072z3, cin=>nx26069z22);
   ix26069z62817 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_10, cout=>nx26069z18, datad=>nx26069z19, 
      dataf=>nx25072z3, cin=>nx26069z20);
   ix26069z62816 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_11, cout=>nx26069z16, datad=>nx26069z17, 
      dataf=>nx25072z3, cin=>nx26069z18);
   ix26069z62815 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_12, cout=>nx26069z14, datad=>nx26069z15, 
      dataf=>nx25072z3, cin=>nx26069z16);
   ix26069z62814 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_13, cout=>nx26069z12, datad=>nx26069z13, 
      dataf=>nx25072z3, cin=>nx26069z14);
   ix26069z62813 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_14, cout=>nx26069z10, datad=>nx26069z11, 
      dataf=>nx25072z3, cin=>nx26069z12);
   ix26069z62812 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_15, cout=>nx26069z8, datad=>nx26069z9, dataf
      =>nx25072z3, cin=>nx26069z10);
   ix26069z62811 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_16, cout=>nx26069z6, datad=>nx26069z7, dataf
      =>nx25072z3, cin=>nx26069z8);
   ix26069z62810 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_17, cout=>nx26069z4, datad=>nx26069z5, dataf
      =>nx25072z3, cin=>nx26069z6);
   ix26069z62809 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_18, cout=>nx26069z2, datad=>nx26069z3, dataf
      =>nx25072z3, cin=>nx26069z4);
   ix26069z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>inc_d_19, datad=>nx60520z1, dataf=>nx25072z3, cin
      =>nx26069z2);
   reg_q_19 : dffeas port map ( q=>nx60520z1, d=>inc_d_19, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_18 : dffeas port map ( q=>nx26069z3, d=>inc_d_18, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_17 : dffeas port map ( q=>nx26069z5, d=>inc_d_17, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_16 : dffeas port map ( q=>nx26069z7, d=>inc_d_16, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_15 : dffeas port map ( q=>nx26069z9, d=>inc_d_15, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_14 : dffeas port map ( q=>nx26069z11, d=>inc_d_14, clk=>clock, ena
      =>nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr
      =>sclear, sload=>nx25072z3);
   reg_q_13 : dffeas port map ( q=>nx26069z13, d=>inc_d_13, clk=>clock, ena
      =>nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr
      =>sclear, sload=>nx25072z3);
   reg_q_12 : dffeas port map ( q=>nx26069z15, d=>inc_d_12, clk=>clock, ena
      =>nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr
      =>sclear, sload=>nx25072z3);
   reg_q_11 : dffeas port map ( q=>nx26069z17, d=>inc_d_11, clk=>clock, ena
      =>nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr
      =>sclear, sload=>nx25072z3);
   reg_q_10 : dffeas port map ( q=>nx26069z19, d=>inc_d_10, clk=>clock, ena
      =>nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr
      =>sclear, sload=>nx25072z3);
   reg_q_9 : dffeas port map ( q=>nx26069z21, d=>inc_d_9, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_8 : dffeas port map ( q=>nx26069z23, d=>inc_d_8, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_7 : dffeas port map ( q=>nx26069z25, d=>inc_d_7, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_6 : dffeas port map ( q=>nx26069z27, d=>inc_d_6, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_5 : dffeas port map ( q=>nx26069z29, d=>inc_d_5, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_4 : dffeas port map ( q=>nx26069z31, d=>inc_d_4, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_3 : dffeas port map ( q=>nx26069z33, d=>inc_d_3, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_2 : dffeas port map ( q=>nx26069z35, d=>inc_d_2, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_1 : dffeas port map ( q=>nx26069z37, d=>inc_d_1, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
   reg_q_0 : dffeas port map ( q=>nx26069z39, d=>inc_d_0, clk=>clock, ena=>
      nx25072z1, clrn=>nx25072z1, prn=>nx25072z1, asdata=>nx25072z3, sclr=>
      sclear, sload=>nx25072z3);
end IMPLEMENTATION ;

   library IEEE;library altera_mf;library lpm;library altera;
   use IEEE.STD_LOGIC_1164.ALL;
   use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cyclonev ;
use cyclonev.cyclonev_components.all;

entity send_ppm is 
   port (
      i_clk : IN std_logic ;
      i_reset_n : IN std_logic ;
      i_reg : IN std_logic_vector (31 DOWNTO 0) ;
      o_ppm : OUT std_logic) ;
end send_ppm ;

architecture rtl of send_ppm is 
   component modgen_counter_20_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (19 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (19 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal o_ppm_dup_0: std_logic ;
   
   signal sig_out_local_count: std_logic_vector (19 DOWNTO 0) ;
   
   signal sig_final1: std_logic_vector (15 DOWNTO 0) ;
   
   signal sig_final2: std_logic_vector (15 DOWNTO 0) ;
   
   signal sig_final3: std_logic_vector (15 DOWNTO 0) ;
   
   signal sig_final4: std_logic_vector (15 DOWNTO 0) ;
   
   signal sig_state: std_logic_vector (2 DOWNTO 0) ;
   
   signal sig_reg_storage: std_logic_vector (31 DOWNTO 0) ;
   
   signal current_state: std_logic_vector (4 DOWNTO 1) ;
   
   signal rtlcn7930: std_logic_vector (17 DOWNTO 0) ;
   
   signal nx19104z153, nx19104z136, nx19104z127, nx19104z102, nx19104z126, 
      nx19104z125, nx19104z93, nx19104z68, nx19104z92, nx19104z91, 
      nx19104z59, nx19104z34, nx19104z58, nx19104z57, nx19104z25, nx19104z4, 
      nx19104z24, nx19104z144, nx19104z19, nx19104z17, nx19104z6, nx19104z32, 
      nx19104z26, nx19104z55, nx19104z53, nx19104z52, nx19104z50, nx19104z49, 
      nx19104z35, nx19104z66, nx19104z60, nx19104z89, nx19104z87, nx19104z86, 
      nx19104z84, nx19104z83, nx19104z69, nx19104z100, nx19104z94, 
      nx19104z123, nx19104z121, nx19104z120, nx19104z118, nx19104z117, 
      nx19104z103, nx19104z134, nx19104z128, nx19104z143, nx19104z137, 
      nx19104z152, nx19104z146, GND_EXMPLR46, nx19104z16, nx19104z14, 
      nx19104z8, nx19104z28, nx19104z47, nx19104z45, nx19104z37, nx19104z62, 
      nx19104z81, nx19104z79, nx19104z71, nx19104z96, nx19104z115, 
      nx19104z113, nx19104z105, nx19104z130, nx19104z139, nx19104z148, 
      nx19104z10, nx19104z11, nx19104z9, nx19104z12, nx19104z29, nx19104z30, 
      nx19104z40, nx19104z41, nx19104z39, nx19104z42, nx19104z38, nx19104z43, 
      nx19104z63, nx19104z64, nx19104z74, nx19104z75, nx19104z73, nx19104z76, 
      nx19104z72, nx19104z77, nx19104z97, nx19104z98, nx19104z108, 
      nx19104z109, nx19104z107, nx19104z110, nx19104z106, nx19104z111, 
      nx19104z131, nx19104z132, nx19104z140, nx19104z141, nx19104z149, 
      nx19104z150, nx19104z15, nx19104z13, nx19104z31, nx19104z48, 
      nx19104z46, nx19104z44, nx19104z65, nx19104z82, nx19104z80, nx19104z78, 
      nx19104z99, nx19104z116, nx19104z114, nx19104z112, nx19104z133, 
      nx19104z142, nx19104z151, nx19104z5, i_clk_int, i_reset_n_int: 
   std_logic ;
   
   signal i_reg_int: std_logic_vector (31 DOWNTO 0) ;
   
   signal PWR, not_i_reset_n, nx19104z1, nx18107z1, nx5537z8, nx24215z3, 
      nx5537z2, nx24215z2, nx5537z38, nx5537z7, nx22221z4, nx22221z2, 
      nx19104z21, nx5537z1, nx24215z1, nx23218z1, nx22221z1, nx22221z3, a_17, 
      nx19104z2, nx5537z27, nx19104z135, nx19104z124, nx19104z101, 
      nx19104z90, nx19104z67, nx19104z56, nx19104z33, nx19104z23, nx19104z3, 
      nx5537z46, nx5537z45, nx5537z44, nx5537z43, nx5537z42, nx5537z41, 
      nx5537z40, nx5537z39, nx5537z37, nx5537z36, nx5537z35, nx5537z34, 
      nx5537z33, nx5537z32, nx5537z31, nx5537z30, nx5537z29, nx5537z28, 
      nx5537z26, nx5537z25, nx5537z24, nx5537z23, nx5537z22, nx5537z21, 
      nx5537z20, nx5537z19, nx5537z17, nx5537z16, nx5537z15, nx5537z14, 
      nx5537z13, nx5537z12, nx5537z11, nx5537z10, nx5537z18, nx5537z9, 
      nx5537z6, nx5537z5, nx5537z4, nx5537z3, nx45248z1, nx20101z1, 
      nx17110z1, not_i_reset_n_repl, nx19104z145, nx49530z1, 
      NOT_i_reg_int_31, NOT_GND, nx49529z1, NOT_i_reg_int_23, nx49528z1, 
      NOT_i_reg_int_15, nx49527z1, NOT_i_reg_int_7: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   local_counter1_modgen_counter_o_count : modgen_counter_20_0 port map ( 
      clock=>i_clk_int, q(19)=>sig_out_local_count(19), q(18)=>
      sig_out_local_count(18), q(17)=>sig_out_local_count(17), q(16)=>
      sig_out_local_count(16), q(15)=>sig_out_local_count(15), q(14)=>
      sig_out_local_count(14), q(13)=>sig_out_local_count(13), q(12)=>
      sig_out_local_count(12), q(11)=>sig_out_local_count(11), q(10)=>
      sig_out_local_count(10), q(9)=>sig_out_local_count(9), q(8)=>
      sig_out_local_count(8), q(7)=>sig_out_local_count(7), q(6)=>
      sig_out_local_count(6), q(5)=>sig_out_local_count(5), q(4)=>
      sig_out_local_count(4), q(3)=>sig_out_local_count(3), q(2)=>
      sig_out_local_count(2), q(1)=>sig_out_local_count(1), q(0)=>
      sig_out_local_count(0), clk_en=>DANGLING(0,0), aclear=>DANGLING(0,1), 
      sload=>DANGLING(0,2), data(19)=>DANGLING(0,3), data(18)=>DANGLING(0,4), 
      data(17)=>DANGLING(0,5), data(16)=>DANGLING(0,6), data(15)=>
      DANGLING(0,7), data(14)=>DANGLING(0,8), data(13)=>DANGLING(0,9), 
      data(12)=>DANGLING(0,10), data(11)=>DANGLING(0,11), data(10)=>
      DANGLING(0,12), data(9)=>DANGLING(0,13), data(8)=>DANGLING(0,14), 
      data(7)=>DANGLING(0,15), data(6)=>DANGLING(0,16), data(5)=>
      DANGLING(0,17), data(4)=>DANGLING(0,18), data(3)=>DANGLING(0,19), 
      data(2)=>DANGLING(0,20), data(1)=>DANGLING(0,21), data(0)=>
      DANGLING(0,22), aset=>DANGLING(0,23), sclear=>nx5537z1, updn=>
      DANGLING(0,24), cnt_en=>DANGLING(0,25));
   nx19104z19 <= NOT rtlcn7930(1);
   nx19104z6 <= NOT rtlcn7930(2);
   nx19104z26 <= NOT rtlcn7930(3);
   nx19104z53 <= NOT rtlcn7930(4);
   nx19104z50 <= NOT rtlcn7930(5);
   nx19104z35 <= NOT rtlcn7930(6);
   nx19104z60 <= NOT rtlcn7930(7);
   nx19104z87 <= NOT rtlcn7930(8);
   nx19104z84 <= NOT rtlcn7930(9);
   nx19104z69 <= NOT rtlcn7930(10);
   nx19104z94 <= NOT rtlcn7930(11);
   nx19104z121 <= NOT rtlcn7930(12);
   nx19104z118 <= NOT rtlcn7930(13);
   nx19104z103 <= NOT rtlcn7930(14);
   nx19104z128 <= NOT rtlcn7930(15);
   nx19104z137 <= NOT rtlcn7930(16);
   nx19104z146 <= NOT rtlcn7930(17);
   GND_EXMPLR46 <= '0';
   cyclonev_mac_0 : cyclonev_mac
      generic map (ax_width => 18,
         ay_scan_in_width => 18,
         az_width => 0,
         bx_width => 18,
         by_width => 18,
         bz_width => 0,
         scan_out_width => 0,
         result_a_width => 16,
         result_b_width => 1,
         operation_mode => "m18x18_plus36",
         mode_sub_location => 0,
         operand_source_max => "input",
         operand_source_may => "input",
         operand_source_mbx => "input",
         operand_source_mby => "input",
         preadder_subtract_a => "false",
         preadder_subtract_b => "false",
         signed_max => "false",
         signed_may => "false",
         signed_mbx => "false",
         signed_mby => "false",
         ay_use_scan_in => "false",
         by_use_scan_in => "false",
         delay_scan_out_ay => "false",
         delay_scan_out_by => "false",
         use_chainadder => "false",
         enable_double_accum => "false",
         load_const_value => 0,
         coef_a_0 => 0,
         coef_a_1 => 0,
         coef_a_2 => 0,
         coef_a_3 => 0,
         coef_a_4 => 0,
         coef_a_5 => 0,
         coef_a_6 => 0,
         coef_a_7 => 0,
         coef_b_0 => 0,
         coef_b_1 => 0,
         coef_b_2 => 0,
         coef_b_3 => 0,
         coef_b_4 => 0,
         coef_b_5 => 0,
         coef_b_6 => 0,
         coef_b_7 => 0,
         ax_clock => "none",
         ay_scan_in_clock => "none",
         az_clock => "none",
         bx_clock => "none",
         by_clock => "none",
         bz_clock => "none",
         coef_sel_a_clock => "none",
         coef_sel_b_clock => "none",
         sub_clock => "none",
         negate_clock => "none",
         accumulate_clock => "none",
         load_const_clock => "none",
         output_clock => "none") 
       port map ( resulta(63)=>DANGLING(0,26), resulta(62)=>DANGLING(0,27), 
      resulta(61)=>DANGLING(0,28), resulta(60)=>DANGLING(0,29), resulta(59)
      =>DANGLING(0,30), resulta(58)=>DANGLING(0,31), resulta(57)=>
      DANGLING(0,32), resulta(56)=>DANGLING(0,33), resulta(55)=>
      DANGLING(0,34), resulta(54)=>DANGLING(0,35), resulta(53)=>
      DANGLING(0,36), resulta(52)=>DANGLING(0,37), resulta(51)=>
      DANGLING(0,38), resulta(50)=>DANGLING(0,39), resulta(49)=>
      DANGLING(0,40), resulta(48)=>DANGLING(0,41), resulta(47)=>
      DANGLING(0,42), resulta(46)=>DANGLING(0,43), resulta(45)=>
      DANGLING(0,44), resulta(44)=>DANGLING(0,45), resulta(43)=>
      DANGLING(0,46), resulta(42)=>DANGLING(0,47), resulta(41)=>
      DANGLING(0,48), resulta(40)=>DANGLING(0,49), resulta(39)=>
      DANGLING(0,50), resulta(38)=>DANGLING(0,51), resulta(37)=>
      DANGLING(0,52), resulta(36)=>DANGLING(0,53), resulta(35)=>
      DANGLING(0,54), resulta(34)=>DANGLING(0,55), resulta(33)=>
      DANGLING(0,56), resulta(32)=>DANGLING(0,57), resulta(31)=>
      DANGLING(0,58), resulta(30)=>DANGLING(0,59), resulta(29)=>
      DANGLING(0,60), resulta(28)=>DANGLING(0,61), resulta(27)=>
      DANGLING(0,62), resulta(26)=>DANGLING(0,63), resulta(25)=>
      DANGLING(0,64), resulta(24)=>DANGLING(0,65), resulta(23)=>
      DANGLING(0,66), resulta(22)=>DANGLING(0,67), resulta(21)=>
      DANGLING(0,68), resulta(20)=>DANGLING(0,69), resulta(19)=>
      DANGLING(0,70), resulta(18)=>DANGLING(0,71), resulta(17)=>
      DANGLING(0,72), resulta(16)=>DANGLING(0,73), resulta(15)=>
      sig_final4(15), resulta(14)=>sig_final4(14), resulta(13)=>
      sig_final4(13), resulta(12)=>sig_final4(12), resulta(11)=>
      sig_final4(11), resulta(10)=>sig_final4(10), resulta(9)=>sig_final4(9), 
      resulta(8)=>sig_final4(8), resulta(7)=>sig_final4(7), resulta(6)=>
      sig_final4(6), resulta(5)=>sig_final4(5), resulta(4)=>sig_final4(4), 
      resulta(3)=>sig_final4(3), resulta(2)=>sig_final4(2), resulta(1)=>
      sig_final4(1), resulta(0)=>sig_final4(0), accumulate=>GND_EXMPLR46, 
      aclr(1)=>GND_EXMPLR46, aclr(0)=>GND_EXMPLR46, ax(26)=>DANGLING(0,74), 
      ax(25)=>DANGLING(0,75), ax(24)=>DANGLING(0,76), ax(23)=>DANGLING(0,77), 
      ax(22)=>DANGLING(0,78), ax(21)=>DANGLING(0,79), ax(20)=>DANGLING(0,80), 
      ax(19)=>DANGLING(0,81), ax(18)=>DANGLING(0,82), ax(17)=>GND_EXMPLR46, 
      ax(16)=>GND_EXMPLR46, ax(15)=>GND_EXMPLR46, ax(14)=>GND_EXMPLR46, 
      ax(13)=>GND_EXMPLR46, ax(12)=>GND_EXMPLR46, ax(11)=>GND_EXMPLR46, 
      ax(10)=>GND_EXMPLR46, ax(9)=>GND_EXMPLR46, ax(8)=>GND_EXMPLR46, ax(7)
      =>GND_EXMPLR46, ax(6)=>PWR, ax(5)=>PWR, ax(4)=>GND_EXMPLR46, ax(3)=>
      GND_EXMPLR46, ax(2)=>GND_EXMPLR46, ax(1)=>PWR, ax(0)=>GND_EXMPLR46, 
      ay(26)=>DANGLING(0,83), ay(25)=>DANGLING(0,84), ay(24)=>DANGLING(0,85), 
      ay(23)=>DANGLING(0,86), ay(22)=>DANGLING(0,87), ay(21)=>DANGLING(0,88), 
      ay(20)=>DANGLING(0,89), ay(19)=>DANGLING(0,90), ay(18)=>DANGLING(0,91), 
      ay(17)=>GND_EXMPLR46, ay(16)=>GND_EXMPLR46, ay(15)=>GND_EXMPLR46, 
      ay(14)=>GND_EXMPLR46, ay(13)=>GND_EXMPLR46, ay(12)=>GND_EXMPLR46, 
      ay(11)=>GND_EXMPLR46, ay(10)=>GND_EXMPLR46, ay(9)=>GND_EXMPLR46, ay(8)
      =>GND_EXMPLR46, ay(7)=>sig_reg_storage(31), ay(6)=>sig_reg_storage(30), 
      ay(5)=>sig_reg_storage(29), ay(4)=>sig_reg_storage(28), ay(3)=>
      sig_reg_storage(27), ay(2)=>sig_reg_storage(26), ay(1)=>
      sig_reg_storage(25), ay(0)=>sig_reg_storage(24), bx(17)=>GND_EXMPLR46, 
      bx(16)=>GND_EXMPLR46, bx(15)=>GND_EXMPLR46, bx(14)=>GND_EXMPLR46, 
      bx(13)=>GND_EXMPLR46, bx(12)=>GND_EXMPLR46, bx(11)=>GND_EXMPLR46, 
      bx(10)=>GND_EXMPLR46, bx(9)=>GND_EXMPLR46, bx(8)=>GND_EXMPLR46, bx(7)
      =>GND_EXMPLR46, bx(6)=>GND_EXMPLR46, bx(5)=>GND_EXMPLR46, bx(4)=>
      GND_EXMPLR46, bx(3)=>GND_EXMPLR46, bx(2)=>GND_EXMPLR46, bx(1)=>
      GND_EXMPLR46, bx(0)=>GND_EXMPLR46, by(18)=>DANGLING(0,92), by(17)=>
      GND_EXMPLR46, by(16)=>GND_EXMPLR46, by(15)=>GND_EXMPLR46, by(14)=>PWR, 
      by(13)=>GND_EXMPLR46, by(12)=>GND_EXMPLR46, by(11)=>GND_EXMPLR46, 
      by(10)=>PWR, by(9)=>GND_EXMPLR46, by(8)=>GND_EXMPLR46, by(7)=>
      GND_EXMPLR46, by(6)=>PWR, by(5)=>GND_EXMPLR46, by(4)=>PWR, by(3)=>PWR, 
      by(2)=>GND_EXMPLR46, by(1)=>PWR, by(0)=>PWR, clk(2)=>GND_EXMPLR46, 
      clk(1)=>GND_EXMPLR46, clk(0)=>GND_EXMPLR46, ena(2)=>GND_EXMPLR46, 
      ena(1)=>GND_EXMPLR46, ena(0)=>GND_EXMPLR46, loadconst=>GND_EXMPLR46, 
      negate=>GND_EXMPLR46, sub=>GND_EXMPLR46);
   cyclonev_mac_1 : cyclonev_mac
      generic map (ax_width => 18,
         ay_scan_in_width => 18,
         az_width => 0,
         bx_width => 18,
         by_width => 18,
         bz_width => 0,
         scan_out_width => 0,
         result_a_width => 16,
         result_b_width => 1,
         operation_mode => "m18x18_plus36",
         mode_sub_location => 0,
         operand_source_max => "input",
         operand_source_may => "input",
         operand_source_mbx => "input",
         operand_source_mby => "input",
         preadder_subtract_a => "false",
         preadder_subtract_b => "false",
         signed_max => "false",
         signed_may => "false",
         signed_mbx => "false",
         signed_mby => "false",
         ay_use_scan_in => "false",
         by_use_scan_in => "false",
         delay_scan_out_ay => "false",
         delay_scan_out_by => "false",
         use_chainadder => "false",
         enable_double_accum => "false",
         load_const_value => 0,
         coef_a_0 => 0,
         coef_a_1 => 0,
         coef_a_2 => 0,
         coef_a_3 => 0,
         coef_a_4 => 0,
         coef_a_5 => 0,
         coef_a_6 => 0,
         coef_a_7 => 0,
         coef_b_0 => 0,
         coef_b_1 => 0,
         coef_b_2 => 0,
         coef_b_3 => 0,
         coef_b_4 => 0,
         coef_b_5 => 0,
         coef_b_6 => 0,
         coef_b_7 => 0,
         ax_clock => "none",
         ay_scan_in_clock => "none",
         az_clock => "none",
         bx_clock => "none",
         by_clock => "none",
         bz_clock => "none",
         coef_sel_a_clock => "none",
         coef_sel_b_clock => "none",
         sub_clock => "none",
         negate_clock => "none",
         accumulate_clock => "none",
         load_const_clock => "none",
         output_clock => "none") 
       port map ( resulta(63)=>DANGLING(0,93), resulta(62)=>DANGLING(0,94), 
      resulta(61)=>DANGLING(0,95), resulta(60)=>DANGLING(0,96), resulta(59)
      =>DANGLING(0,97), resulta(58)=>DANGLING(0,98), resulta(57)=>
      DANGLING(0,99), resulta(56)=>DANGLING(0,100), resulta(55)=>
      DANGLING(0,101), resulta(54)=>DANGLING(0,102), resulta(53)=>
      DANGLING(0,103), resulta(52)=>DANGLING(0,104), resulta(51)=>
      DANGLING(0,105), resulta(50)=>DANGLING(0,106), resulta(49)=>
      DANGLING(0,107), resulta(48)=>DANGLING(0,108), resulta(47)=>
      DANGLING(0,109), resulta(46)=>DANGLING(0,110), resulta(45)=>
      DANGLING(0,111), resulta(44)=>DANGLING(0,112), resulta(43)=>
      DANGLING(0,113), resulta(42)=>DANGLING(0,114), resulta(41)=>
      DANGLING(0,115), resulta(40)=>DANGLING(0,116), resulta(39)=>
      DANGLING(0,117), resulta(38)=>DANGLING(0,118), resulta(37)=>
      DANGLING(0,119), resulta(36)=>DANGLING(0,120), resulta(35)=>
      DANGLING(0,121), resulta(34)=>DANGLING(0,122), resulta(33)=>
      DANGLING(0,123), resulta(32)=>DANGLING(0,124), resulta(31)=>
      DANGLING(0,125), resulta(30)=>DANGLING(0,126), resulta(29)=>
      DANGLING(0,127), resulta(28)=>DANGLING(0,128), resulta(27)=>
      DANGLING(0,129), resulta(26)=>DANGLING(0,130), resulta(25)=>
      DANGLING(0,131), resulta(24)=>DANGLING(0,132), resulta(23)=>
      DANGLING(0,133), resulta(22)=>DANGLING(0,134), resulta(21)=>
      DANGLING(0,135), resulta(20)=>DANGLING(0,136), resulta(19)=>
      DANGLING(0,137), resulta(18)=>DANGLING(0,138), resulta(17)=>
      DANGLING(0,139), resulta(16)=>DANGLING(0,140), resulta(15)=>
      sig_final3(15), resulta(14)=>sig_final3(14), resulta(13)=>
      sig_final3(13), resulta(12)=>sig_final3(12), resulta(11)=>
      sig_final3(11), resulta(10)=>sig_final3(10), resulta(9)=>sig_final3(9), 
      resulta(8)=>sig_final3(8), resulta(7)=>sig_final3(7), resulta(6)=>
      sig_final3(6), resulta(5)=>sig_final3(5), resulta(4)=>sig_final3(4), 
      resulta(3)=>sig_final3(3), resulta(2)=>sig_final3(2), resulta(1)=>
      sig_final3(1), resulta(0)=>sig_final3(0), accumulate=>GND_EXMPLR46, 
      aclr(1)=>GND_EXMPLR46, aclr(0)=>GND_EXMPLR46, ax(26)=>DANGLING(0,141), 
      ax(25)=>DANGLING(0,142), ax(24)=>DANGLING(0,143), ax(23)=>
      DANGLING(0,144), ax(22)=>DANGLING(0,145), ax(21)=>DANGLING(0,146), 
      ax(20)=>DANGLING(0,147), ax(19)=>DANGLING(0,148), ax(18)=>
      DANGLING(0,149), ax(17)=>GND_EXMPLR46, ax(16)=>GND_EXMPLR46, ax(15)=>
      GND_EXMPLR46, ax(14)=>GND_EXMPLR46, ax(13)=>GND_EXMPLR46, ax(12)=>
      GND_EXMPLR46, ax(11)=>GND_EXMPLR46, ax(10)=>GND_EXMPLR46, ax(9)=>
      GND_EXMPLR46, ax(8)=>GND_EXMPLR46, ax(7)=>GND_EXMPLR46, ax(6)=>PWR, 
      ax(5)=>PWR, ax(4)=>GND_EXMPLR46, ax(3)=>GND_EXMPLR46, ax(2)=>
      GND_EXMPLR46, ax(1)=>PWR, ax(0)=>GND_EXMPLR46, ay(26)=>DANGLING(0,150), 
      ay(25)=>DANGLING(0,151), ay(24)=>DANGLING(0,152), ay(23)=>
      DANGLING(0,153), ay(22)=>DANGLING(0,154), ay(21)=>DANGLING(0,155), 
      ay(20)=>DANGLING(0,156), ay(19)=>DANGLING(0,157), ay(18)=>
      DANGLING(0,158), ay(17)=>GND_EXMPLR46, ay(16)=>GND_EXMPLR46, ay(15)=>
      GND_EXMPLR46, ay(14)=>GND_EXMPLR46, ay(13)=>GND_EXMPLR46, ay(12)=>
      GND_EXMPLR46, ay(11)=>GND_EXMPLR46, ay(10)=>GND_EXMPLR46, ay(9)=>
      GND_EXMPLR46, ay(8)=>GND_EXMPLR46, ay(7)=>sig_reg_storage(23), ay(6)=>
      sig_reg_storage(22), ay(5)=>sig_reg_storage(21), ay(4)=>
      sig_reg_storage(20), ay(3)=>sig_reg_storage(19), ay(2)=>
      sig_reg_storage(18), ay(1)=>sig_reg_storage(17), ay(0)=>
      sig_reg_storage(16), bx(17)=>GND_EXMPLR46, bx(16)=>GND_EXMPLR46, 
      bx(15)=>GND_EXMPLR46, bx(14)=>GND_EXMPLR46, bx(13)=>GND_EXMPLR46, 
      bx(12)=>GND_EXMPLR46, bx(11)=>GND_EXMPLR46, bx(10)=>GND_EXMPLR46, 
      bx(9)=>GND_EXMPLR46, bx(8)=>GND_EXMPLR46, bx(7)=>GND_EXMPLR46, bx(6)=>
      GND_EXMPLR46, bx(5)=>GND_EXMPLR46, bx(4)=>GND_EXMPLR46, bx(3)=>
      GND_EXMPLR46, bx(2)=>GND_EXMPLR46, bx(1)=>GND_EXMPLR46, bx(0)=>
      GND_EXMPLR46, by(18)=>DANGLING(0,159), by(17)=>GND_EXMPLR46, by(16)=>
      GND_EXMPLR46, by(15)=>GND_EXMPLR46, by(14)=>PWR, by(13)=>GND_EXMPLR46, 
      by(12)=>GND_EXMPLR46, by(11)=>GND_EXMPLR46, by(10)=>PWR, by(9)=>
      GND_EXMPLR46, by(8)=>GND_EXMPLR46, by(7)=>GND_EXMPLR46, by(6)=>PWR, 
      by(5)=>GND_EXMPLR46, by(4)=>PWR, by(3)=>PWR, by(2)=>GND_EXMPLR46, 
      by(1)=>PWR, by(0)=>PWR, clk(2)=>GND_EXMPLR46, clk(1)=>GND_EXMPLR46, 
      clk(0)=>GND_EXMPLR46, ena(2)=>GND_EXMPLR46, ena(1)=>GND_EXMPLR46, 
      ena(0)=>GND_EXMPLR46, loadconst=>GND_EXMPLR46, negate=>GND_EXMPLR46, 
      sub=>GND_EXMPLR46);
   cyclonev_mac_2 : cyclonev_mac
      generic map (ax_width => 18,
         ay_scan_in_width => 18,
         az_width => 0,
         bx_width => 18,
         by_width => 18,
         bz_width => 0,
         scan_out_width => 0,
         result_a_width => 16,
         result_b_width => 1,
         operation_mode => "m18x18_plus36",
         mode_sub_location => 0,
         operand_source_max => "input",
         operand_source_may => "input",
         operand_source_mbx => "input",
         operand_source_mby => "input",
         preadder_subtract_a => "false",
         preadder_subtract_b => "false",
         signed_max => "false",
         signed_may => "false",
         signed_mbx => "false",
         signed_mby => "false",
         ay_use_scan_in => "false",
         by_use_scan_in => "false",
         delay_scan_out_ay => "false",
         delay_scan_out_by => "false",
         use_chainadder => "false",
         enable_double_accum => "false",
         load_const_value => 0,
         coef_a_0 => 0,
         coef_a_1 => 0,
         coef_a_2 => 0,
         coef_a_3 => 0,
         coef_a_4 => 0,
         coef_a_5 => 0,
         coef_a_6 => 0,
         coef_a_7 => 0,
         coef_b_0 => 0,
         coef_b_1 => 0,
         coef_b_2 => 0,
         coef_b_3 => 0,
         coef_b_4 => 0,
         coef_b_5 => 0,
         coef_b_6 => 0,
         coef_b_7 => 0,
         ax_clock => "none",
         ay_scan_in_clock => "none",
         az_clock => "none",
         bx_clock => "none",
         by_clock => "none",
         bz_clock => "none",
         coef_sel_a_clock => "none",
         coef_sel_b_clock => "none",
         sub_clock => "none",
         negate_clock => "none",
         accumulate_clock => "none",
         load_const_clock => "none",
         output_clock => "none") 
       port map ( resulta(63)=>DANGLING(0,160), resulta(62)=>DANGLING(0,161), 
      resulta(61)=>DANGLING(0,162), resulta(60)=>DANGLING(0,163), 
      resulta(59)=>DANGLING(0,164), resulta(58)=>DANGLING(0,165), 
      resulta(57)=>DANGLING(0,166), resulta(56)=>DANGLING(0,167), 
      resulta(55)=>DANGLING(0,168), resulta(54)=>DANGLING(0,169), 
      resulta(53)=>DANGLING(0,170), resulta(52)=>DANGLING(0,171), 
      resulta(51)=>DANGLING(0,172), resulta(50)=>DANGLING(0,173), 
      resulta(49)=>DANGLING(0,174), resulta(48)=>DANGLING(0,175), 
      resulta(47)=>DANGLING(0,176), resulta(46)=>DANGLING(0,177), 
      resulta(45)=>DANGLING(0,178), resulta(44)=>DANGLING(0,179), 
      resulta(43)=>DANGLING(0,180), resulta(42)=>DANGLING(0,181), 
      resulta(41)=>DANGLING(0,182), resulta(40)=>DANGLING(0,183), 
      resulta(39)=>DANGLING(0,184), resulta(38)=>DANGLING(0,185), 
      resulta(37)=>DANGLING(0,186), resulta(36)=>DANGLING(0,187), 
      resulta(35)=>DANGLING(0,188), resulta(34)=>DANGLING(0,189), 
      resulta(33)=>DANGLING(0,190), resulta(32)=>DANGLING(0,191), 
      resulta(31)=>DANGLING(0,192), resulta(30)=>DANGLING(0,193), 
      resulta(29)=>DANGLING(0,194), resulta(28)=>DANGLING(0,195), 
      resulta(27)=>DANGLING(0,196), resulta(26)=>DANGLING(0,197), 
      resulta(25)=>DANGLING(0,198), resulta(24)=>DANGLING(0,199), 
      resulta(23)=>DANGLING(0,200), resulta(22)=>DANGLING(0,201), 
      resulta(21)=>DANGLING(0,202), resulta(20)=>DANGLING(0,203), 
      resulta(19)=>DANGLING(0,204), resulta(18)=>DANGLING(0,205), 
      resulta(17)=>DANGLING(0,206), resulta(16)=>DANGLING(0,207), 
      resulta(15)=>sig_final2(15), resulta(14)=>sig_final2(14), resulta(13)
      =>sig_final2(13), resulta(12)=>sig_final2(12), resulta(11)=>
      sig_final2(11), resulta(10)=>sig_final2(10), resulta(9)=>sig_final2(9), 
      resulta(8)=>sig_final2(8), resulta(7)=>sig_final2(7), resulta(6)=>
      sig_final2(6), resulta(5)=>sig_final2(5), resulta(4)=>sig_final2(4), 
      resulta(3)=>sig_final2(3), resulta(2)=>sig_final2(2), resulta(1)=>
      sig_final2(1), resulta(0)=>sig_final2(0), accumulate=>GND_EXMPLR46, 
      aclr(1)=>GND_EXMPLR46, aclr(0)=>GND_EXMPLR46, ax(26)=>DANGLING(0,208), 
      ax(25)=>DANGLING(0,209), ax(24)=>DANGLING(0,210), ax(23)=>
      DANGLING(0,211), ax(22)=>DANGLING(0,212), ax(21)=>DANGLING(0,213), 
      ax(20)=>DANGLING(0,214), ax(19)=>DANGLING(0,215), ax(18)=>
      DANGLING(0,216), ax(17)=>GND_EXMPLR46, ax(16)=>GND_EXMPLR46, ax(15)=>
      GND_EXMPLR46, ax(14)=>GND_EXMPLR46, ax(13)=>GND_EXMPLR46, ax(12)=>
      GND_EXMPLR46, ax(11)=>GND_EXMPLR46, ax(10)=>GND_EXMPLR46, ax(9)=>
      GND_EXMPLR46, ax(8)=>GND_EXMPLR46, ax(7)=>GND_EXMPLR46, ax(6)=>PWR, 
      ax(5)=>PWR, ax(4)=>GND_EXMPLR46, ax(3)=>GND_EXMPLR46, ax(2)=>
      GND_EXMPLR46, ax(1)=>PWR, ax(0)=>GND_EXMPLR46, ay(26)=>DANGLING(0,217), 
      ay(25)=>DANGLING(0,218), ay(24)=>DANGLING(0,219), ay(23)=>
      DANGLING(0,220), ay(22)=>DANGLING(0,221), ay(21)=>DANGLING(0,222), 
      ay(20)=>DANGLING(0,223), ay(19)=>DANGLING(0,224), ay(18)=>
      DANGLING(0,225), ay(17)=>GND_EXMPLR46, ay(16)=>GND_EXMPLR46, ay(15)=>
      GND_EXMPLR46, ay(14)=>GND_EXMPLR46, ay(13)=>GND_EXMPLR46, ay(12)=>
      GND_EXMPLR46, ay(11)=>GND_EXMPLR46, ay(10)=>GND_EXMPLR46, ay(9)=>
      GND_EXMPLR46, ay(8)=>GND_EXMPLR46, ay(7)=>sig_reg_storage(15), ay(6)=>
      sig_reg_storage(14), ay(5)=>sig_reg_storage(13), ay(4)=>
      sig_reg_storage(12), ay(3)=>sig_reg_storage(11), ay(2)=>
      sig_reg_storage(10), ay(1)=>sig_reg_storage(9), ay(0)=>
      sig_reg_storage(8), bx(17)=>GND_EXMPLR46, bx(16)=>GND_EXMPLR46, bx(15)
      =>GND_EXMPLR46, bx(14)=>GND_EXMPLR46, bx(13)=>GND_EXMPLR46, bx(12)=>
      GND_EXMPLR46, bx(11)=>GND_EXMPLR46, bx(10)=>GND_EXMPLR46, bx(9)=>
      GND_EXMPLR46, bx(8)=>GND_EXMPLR46, bx(7)=>GND_EXMPLR46, bx(6)=>
      GND_EXMPLR46, bx(5)=>GND_EXMPLR46, bx(4)=>GND_EXMPLR46, bx(3)=>
      GND_EXMPLR46, bx(2)=>GND_EXMPLR46, bx(1)=>GND_EXMPLR46, bx(0)=>
      GND_EXMPLR46, by(18)=>DANGLING(0,226), by(17)=>GND_EXMPLR46, by(16)=>
      GND_EXMPLR46, by(15)=>GND_EXMPLR46, by(14)=>PWR, by(13)=>GND_EXMPLR46, 
      by(12)=>GND_EXMPLR46, by(11)=>GND_EXMPLR46, by(10)=>PWR, by(9)=>
      GND_EXMPLR46, by(8)=>GND_EXMPLR46, by(7)=>GND_EXMPLR46, by(6)=>PWR, 
      by(5)=>GND_EXMPLR46, by(4)=>PWR, by(3)=>PWR, by(2)=>GND_EXMPLR46, 
      by(1)=>PWR, by(0)=>PWR, clk(2)=>GND_EXMPLR46, clk(1)=>GND_EXMPLR46, 
      clk(0)=>GND_EXMPLR46, ena(2)=>GND_EXMPLR46, ena(1)=>GND_EXMPLR46, 
      ena(0)=>GND_EXMPLR46, loadconst=>GND_EXMPLR46, negate=>GND_EXMPLR46, 
      sub=>GND_EXMPLR46);
   cyclonev_mac_3 : cyclonev_mac
      generic map (ax_width => 18,
         ay_scan_in_width => 18,
         az_width => 0,
         bx_width => 18,
         by_width => 18,
         bz_width => 0,
         scan_out_width => 0,
         result_a_width => 16,
         result_b_width => 1,
         operation_mode => "m18x18_plus36",
         mode_sub_location => 0,
         operand_source_max => "input",
         operand_source_may => "input",
         operand_source_mbx => "input",
         operand_source_mby => "input",
         preadder_subtract_a => "false",
         preadder_subtract_b => "false",
         signed_max => "false",
         signed_may => "false",
         signed_mbx => "false",
         signed_mby => "false",
         ay_use_scan_in => "false",
         by_use_scan_in => "false",
         delay_scan_out_ay => "false",
         delay_scan_out_by => "false",
         use_chainadder => "false",
         enable_double_accum => "false",
         load_const_value => 0,
         coef_a_0 => 0,
         coef_a_1 => 0,
         coef_a_2 => 0,
         coef_a_3 => 0,
         coef_a_4 => 0,
         coef_a_5 => 0,
         coef_a_6 => 0,
         coef_a_7 => 0,
         coef_b_0 => 0,
         coef_b_1 => 0,
         coef_b_2 => 0,
         coef_b_3 => 0,
         coef_b_4 => 0,
         coef_b_5 => 0,
         coef_b_6 => 0,
         coef_b_7 => 0,
         ax_clock => "none",
         ay_scan_in_clock => "none",
         az_clock => "none",
         bx_clock => "none",
         by_clock => "none",
         bz_clock => "none",
         coef_sel_a_clock => "none",
         coef_sel_b_clock => "none",
         sub_clock => "none",
         negate_clock => "none",
         accumulate_clock => "none",
         load_const_clock => "none",
         output_clock => "none") 
       port map ( resulta(63)=>DANGLING(0,227), resulta(62)=>DANGLING(0,228), 
      resulta(61)=>DANGLING(0,229), resulta(60)=>DANGLING(0,230), 
      resulta(59)=>DANGLING(0,231), resulta(58)=>DANGLING(0,232), 
      resulta(57)=>DANGLING(0,233), resulta(56)=>DANGLING(0,234), 
      resulta(55)=>DANGLING(0,235), resulta(54)=>DANGLING(0,236), 
      resulta(53)=>DANGLING(0,237), resulta(52)=>DANGLING(0,238), 
      resulta(51)=>DANGLING(0,239), resulta(50)=>DANGLING(0,240), 
      resulta(49)=>DANGLING(0,241), resulta(48)=>DANGLING(0,242), 
      resulta(47)=>DANGLING(0,243), resulta(46)=>DANGLING(0,244), 
      resulta(45)=>DANGLING(0,245), resulta(44)=>DANGLING(0,246), 
      resulta(43)=>DANGLING(0,247), resulta(42)=>DANGLING(0,248), 
      resulta(41)=>DANGLING(0,249), resulta(40)=>DANGLING(0,250), 
      resulta(39)=>DANGLING(0,251), resulta(38)=>DANGLING(0,252), 
      resulta(37)=>DANGLING(0,253), resulta(36)=>DANGLING(0,254), 
      resulta(35)=>DANGLING(0,255), resulta(34)=>DANGLING(0,256), 
      resulta(33)=>DANGLING(0,257), resulta(32)=>DANGLING(0,258), 
      resulta(31)=>DANGLING(0,259), resulta(30)=>DANGLING(0,260), 
      resulta(29)=>DANGLING(0,261), resulta(28)=>DANGLING(0,262), 
      resulta(27)=>DANGLING(0,263), resulta(26)=>DANGLING(0,264), 
      resulta(25)=>DANGLING(0,265), resulta(24)=>DANGLING(0,266), 
      resulta(23)=>DANGLING(0,267), resulta(22)=>DANGLING(0,268), 
      resulta(21)=>DANGLING(0,269), resulta(20)=>DANGLING(0,270), 
      resulta(19)=>DANGLING(0,271), resulta(18)=>DANGLING(0,272), 
      resulta(17)=>DANGLING(0,273), resulta(16)=>DANGLING(0,274), 
      resulta(15)=>sig_final1(15), resulta(14)=>sig_final1(14), resulta(13)
      =>sig_final1(13), resulta(12)=>sig_final1(12), resulta(11)=>
      sig_final1(11), resulta(10)=>sig_final1(10), resulta(9)=>sig_final1(9), 
      resulta(8)=>sig_final1(8), resulta(7)=>sig_final1(7), resulta(6)=>
      sig_final1(6), resulta(5)=>sig_final1(5), resulta(4)=>sig_final1(4), 
      resulta(3)=>sig_final1(3), resulta(2)=>sig_final1(2), resulta(1)=>
      sig_final1(1), resulta(0)=>sig_final1(0), accumulate=>GND_EXMPLR46, 
      aclr(1)=>GND_EXMPLR46, aclr(0)=>GND_EXMPLR46, ax(26)=>DANGLING(0,275), 
      ax(25)=>DANGLING(0,276), ax(24)=>DANGLING(0,277), ax(23)=>
      DANGLING(0,278), ax(22)=>DANGLING(0,279), ax(21)=>DANGLING(0,280), 
      ax(20)=>DANGLING(0,281), ax(19)=>DANGLING(0,282), ax(18)=>
      DANGLING(0,283), ax(17)=>GND_EXMPLR46, ax(16)=>GND_EXMPLR46, ax(15)=>
      GND_EXMPLR46, ax(14)=>GND_EXMPLR46, ax(13)=>GND_EXMPLR46, ax(12)=>
      GND_EXMPLR46, ax(11)=>GND_EXMPLR46, ax(10)=>GND_EXMPLR46, ax(9)=>
      GND_EXMPLR46, ax(8)=>GND_EXMPLR46, ax(7)=>GND_EXMPLR46, ax(6)=>PWR, 
      ax(5)=>PWR, ax(4)=>GND_EXMPLR46, ax(3)=>GND_EXMPLR46, ax(2)=>
      GND_EXMPLR46, ax(1)=>PWR, ax(0)=>GND_EXMPLR46, ay(26)=>DANGLING(0,284), 
      ay(25)=>DANGLING(0,285), ay(24)=>DANGLING(0,286), ay(23)=>
      DANGLING(0,287), ay(22)=>DANGLING(0,288), ay(21)=>DANGLING(0,289), 
      ay(20)=>DANGLING(0,290), ay(19)=>DANGLING(0,291), ay(18)=>
      DANGLING(0,292), ay(17)=>GND_EXMPLR46, ay(16)=>GND_EXMPLR46, ay(15)=>
      GND_EXMPLR46, ay(14)=>GND_EXMPLR46, ay(13)=>GND_EXMPLR46, ay(12)=>
      GND_EXMPLR46, ay(11)=>GND_EXMPLR46, ay(10)=>GND_EXMPLR46, ay(9)=>
      GND_EXMPLR46, ay(8)=>GND_EXMPLR46, ay(7)=>sig_reg_storage(7), ay(6)=>
      sig_reg_storage(6), ay(5)=>sig_reg_storage(5), ay(4)=>
      sig_reg_storage(4), ay(3)=>sig_reg_storage(3), ay(2)=>
      sig_reg_storage(2), ay(1)=>sig_reg_storage(1), ay(0)=>
      sig_reg_storage(0), bx(17)=>GND_EXMPLR46, bx(16)=>GND_EXMPLR46, bx(15)
      =>GND_EXMPLR46, bx(14)=>GND_EXMPLR46, bx(13)=>GND_EXMPLR46, bx(12)=>
      GND_EXMPLR46, bx(11)=>GND_EXMPLR46, bx(10)=>GND_EXMPLR46, bx(9)=>
      GND_EXMPLR46, bx(8)=>GND_EXMPLR46, bx(7)=>GND_EXMPLR46, bx(6)=>
      GND_EXMPLR46, bx(5)=>GND_EXMPLR46, bx(4)=>GND_EXMPLR46, bx(3)=>
      GND_EXMPLR46, bx(2)=>GND_EXMPLR46, bx(1)=>GND_EXMPLR46, bx(0)=>
      GND_EXMPLR46, by(18)=>DANGLING(0,293), by(17)=>GND_EXMPLR46, by(16)=>
      GND_EXMPLR46, by(15)=>GND_EXMPLR46, by(14)=>PWR, by(13)=>GND_EXMPLR46, 
      by(12)=>GND_EXMPLR46, by(11)=>GND_EXMPLR46, by(10)=>PWR, by(9)=>
      GND_EXMPLR46, by(8)=>GND_EXMPLR46, by(7)=>GND_EXMPLR46, by(6)=>PWR, 
      by(5)=>GND_EXMPLR46, by(4)=>PWR, by(3)=>PWR, by(2)=>GND_EXMPLR46, 
      by(1)=>PWR, by(0)=>PWR, clk(2)=>GND_EXMPLR46, clk(1)=>GND_EXMPLR46, 
      clk(0)=>GND_EXMPLR46, ena(2)=>GND_EXMPLR46, ena(1)=>GND_EXMPLR46, 
      ena(0)=>GND_EXMPLR46, loadconst=>GND_EXMPLR46, negate=>GND_EXMPLR46, 
      sub=>GND_EXMPLR46);
   PWR <= '1';
   not_i_reset_n <= NOT i_reset_n_int;
   nx19104z21 <= NOT rtlcn7930(0);
   nx19104z5 <= '0';
   i_clk_ibuf : cyclonev_io_ibuf port map ( o=>i_clk_int, i=>i_clk);
   i_reset_n_ibuf : cyclonev_io_ibuf port map ( o=>i_reset_n_int, i=>
      i_reset_n);
   i_reg_ibuf_31 : cyclonev_io_ibuf port map ( o=>i_reg_int(31), i=>
      i_reg(31));
   i_reg_ibuf_30 : cyclonev_io_ibuf port map ( o=>i_reg_int(30), i=>
      i_reg(30));
   i_reg_ibuf_29 : cyclonev_io_ibuf port map ( o=>i_reg_int(29), i=>
      i_reg(29));
   i_reg_ibuf_28 : cyclonev_io_ibuf port map ( o=>i_reg_int(28), i=>
      i_reg(28));
   i_reg_ibuf_27 : cyclonev_io_ibuf port map ( o=>i_reg_int(27), i=>
      i_reg(27));
   i_reg_ibuf_26 : cyclonev_io_ibuf port map ( o=>i_reg_int(26), i=>
      i_reg(26));
   i_reg_ibuf_25 : cyclonev_io_ibuf port map ( o=>i_reg_int(25), i=>
      i_reg(25));
   i_reg_ibuf_24 : cyclonev_io_ibuf port map ( o=>i_reg_int(24), i=>
      i_reg(24));
   i_reg_ibuf_23 : cyclonev_io_ibuf port map ( o=>i_reg_int(23), i=>
      i_reg(23));
   i_reg_ibuf_22 : cyclonev_io_ibuf port map ( o=>i_reg_int(22), i=>
      i_reg(22));
   i_reg_ibuf_21 : cyclonev_io_ibuf port map ( o=>i_reg_int(21), i=>
      i_reg(21));
   i_reg_ibuf_20 : cyclonev_io_ibuf port map ( o=>i_reg_int(20), i=>
      i_reg(20));
   i_reg_ibuf_19 : cyclonev_io_ibuf port map ( o=>i_reg_int(19), i=>
      i_reg(19));
   i_reg_ibuf_18 : cyclonev_io_ibuf port map ( o=>i_reg_int(18), i=>
      i_reg(18));
   i_reg_ibuf_17 : cyclonev_io_ibuf port map ( o=>i_reg_int(17), i=>
      i_reg(17));
   i_reg_ibuf_16 : cyclonev_io_ibuf port map ( o=>i_reg_int(16), i=>
      i_reg(16));
   i_reg_ibuf_15 : cyclonev_io_ibuf port map ( o=>i_reg_int(15), i=>
      i_reg(15));
   i_reg_ibuf_14 : cyclonev_io_ibuf port map ( o=>i_reg_int(14), i=>
      i_reg(14));
   i_reg_ibuf_13 : cyclonev_io_ibuf port map ( o=>i_reg_int(13), i=>
      i_reg(13));
   i_reg_ibuf_12 : cyclonev_io_ibuf port map ( o=>i_reg_int(12), i=>
      i_reg(12));
   i_reg_ibuf_11 : cyclonev_io_ibuf port map ( o=>i_reg_int(11), i=>
      i_reg(11));
   i_reg_ibuf_10 : cyclonev_io_ibuf port map ( o=>i_reg_int(10), i=>
      i_reg(10));
   i_reg_ibuf_9 : cyclonev_io_ibuf port map ( o=>i_reg_int(9), i=>i_reg(9));
   i_reg_ibuf_8 : cyclonev_io_ibuf port map ( o=>i_reg_int(8), i=>i_reg(8));
   i_reg_ibuf_7 : cyclonev_io_ibuf port map ( o=>i_reg_int(7), i=>i_reg(7));
   i_reg_ibuf_6 : cyclonev_io_ibuf port map ( o=>i_reg_int(6), i=>i_reg(6));
   i_reg_ibuf_5 : cyclonev_io_ibuf port map ( o=>i_reg_int(5), i=>i_reg(5));
   i_reg_ibuf_4 : cyclonev_io_ibuf port map ( o=>i_reg_int(4), i=>i_reg(4));
   i_reg_ibuf_3 : cyclonev_io_ibuf port map ( o=>i_reg_int(3), i=>i_reg(3));
   i_reg_ibuf_2 : cyclonev_io_ibuf port map ( o=>i_reg_int(2), i=>i_reg(2));
   i_reg_ibuf_1 : cyclonev_io_ibuf port map ( o=>i_reg_int(1), i=>i_reg(1));
   i_reg_ibuf_0 : cyclonev_io_ibuf port map ( o=>i_reg_int(0), i=>i_reg(0));
   o_ppm_obuf : cyclonev_io_obuf port map ( o=>o_ppm, i=>o_ppm_dup_0);
   not_i_reset_n_repl <= NOT i_reset_n_int;
   sig_reg_storage(31) <= NOT nx49530z1;
   NOT_i_reg_int_31 <= NOT i_reg_int(31);
   NOT_GND <= NOT GND_EXMPLR46;
   sig_reg_storage(23) <= NOT nx49529z1;
   NOT_i_reg_int_23 <= NOT i_reg_int(23);
   sig_reg_storage(15) <= NOT nx49528z1;
   NOT_i_reg_int_15 <= NOT i_reg_int(15);
   sig_reg_storage(7) <= NOT nx49527z1;
   NOT_i_reg_int_7 <= NOT i_reg_int(7);
   ix19104z62818 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z24, cout=>nx19104z17, datad=>PWR, dataf=>
      nx19104z19, cin=>nx19104z21);
   ix19104z62810 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z4, cout=>nx19104z32, datad=>nx19104z5, 
      dataf=>nx19104z6, cin=>nx19104z17);
   ix19104z62822 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z25, cout=>nx19104z55, datad=>nx19104z5, 
      dataf=>nx19104z26, cin=>nx19104z32);
   ix19104z62837 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z57, cout=>nx19104z52, datad=>nx19104z5, 
      dataf=>nx19104z53, cin=>nx19104z55);
   ix19104z62835 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z58, cout=>nx19104z49, datad=>nx19104z5, 
      dataf=>nx19104z50, cin=>nx19104z52);
   ix19104z62827 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z34, cout=>nx19104z66, datad=>PWR, dataf=>
      nx19104z35, cin=>nx19104z49);
   ix19104z62840 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z59, cout=>nx19104z89, datad=>PWR, dataf=>
      nx19104z60, cin=>nx19104z66);
   ix19104z62855 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z91, cout=>nx19104z86, datad=>nx19104z5, 
      dataf=>nx19104z87, cin=>nx19104z89);
   ix19104z62853 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z92, cout=>nx19104z83, datad=>PWR, dataf=>
      nx19104z84, cin=>nx19104z86);
   ix19104z62845 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z68, cout=>nx19104z100, datad=>nx19104z5, 
      dataf=>nx19104z69, cin=>nx19104z83);
   ix19104z62858 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z93, cout=>nx19104z123, datad=>nx19104z5, 
      dataf=>nx19104z94, cin=>nx19104z100);
   ix19104z62873 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z125, cout=>nx19104z120, datad=>nx19104z5, 
      dataf=>nx19104z121, cin=>nx19104z123);
   ix19104z62871 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z126, cout=>nx19104z117, datad=>nx19104z5, 
      dataf=>nx19104z118, cin=>nx19104z120);
   ix19104z62863 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z102, cout=>nx19104z134, datad=>nx19104z5, 
      dataf=>nx19104z103, cin=>nx19104z117);
   ix19104z62876 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z127, cout=>nx19104z143, datad=>nx19104z5, 
      dataf=>nx19104z128, cin=>nx19104z134);
   ix19104z62882 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z136, cout=>nx19104z152, datad=>nx19104z5, 
      dataf=>nx19104z137, cin=>nx19104z143);
   ix19104z62887 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>nx19104z153, cout=>nx19104z145, datad=>nx19104z5, 
      dataf=>nx19104z146, cin=>nx19104z152);
   ix19104z62815 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z16, cout=>nx19104z10, shareout=>nx19104z11, 
      dataa=>sig_final3(0), datac=>sig_final1(0), datad=>sig_final4(0), cin
      =>GND_EXMPLR46, sharein=>GND_EXMPLR46);
   ix19104z62814 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z14, cout=>nx19104z9, shareout=>nx19104z12, 
      datab=>sig_final3(1), datac=>sig_final1(1), datad=>sig_final4(1), cin
      =>nx19104z10, sharein=>nx19104z11);
   ix19104z62813 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z8, cout=>nx19104z29, shareout=>nx19104z30, 
      dataa=>sig_final3(2), datac=>sig_final1(2), datad=>sig_final4(2), cin
      =>nx19104z9, sharein=>nx19104z12);
   ix19104z62825 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z28, cout=>nx19104z40, shareout=>nx19104z41, 
      datab=>sig_final3(3), datac=>sig_final1(3), datad=>sig_final4(3), cin
      =>nx19104z29, sharein=>nx19104z30);
   ix19104z62832 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z47, cout=>nx19104z39, shareout=>nx19104z42, 
      dataa=>sig_final3(4), datac=>sig_final1(4), datad=>sig_final4(4), cin
      =>nx19104z40, sharein=>nx19104z41);
   ix19104z62831 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z45, cout=>nx19104z38, shareout=>nx19104z43, 
      datab=>sig_final3(5), datac=>sig_final1(5), datad=>sig_final4(5), cin
      =>nx19104z39, sharein=>nx19104z42);
   ix19104z62830 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z37, cout=>nx19104z63, shareout=>nx19104z64, 
      dataa=>sig_final3(6), datac=>sig_final1(6), datad=>sig_final4(6), cin
      =>nx19104z38, sharein=>nx19104z43);
   ix19104z62843 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z62, cout=>nx19104z74, shareout=>nx19104z75, 
      datab=>sig_final3(7), datac=>sig_final1(7), datad=>sig_final4(7), cin
      =>nx19104z63, sharein=>nx19104z64);
   ix19104z62850 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z81, cout=>nx19104z73, shareout=>nx19104z76, 
      dataa=>sig_final3(8), datac=>sig_final1(8), datad=>sig_final4(8), cin
      =>nx19104z74, sharein=>nx19104z75);
   ix19104z62849 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z79, cout=>nx19104z72, shareout=>nx19104z77, 
      datab=>sig_final3(9), datac=>sig_final1(9), datad=>sig_final4(9), cin
      =>nx19104z73, sharein=>nx19104z76);
   ix19104z62848 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z71, cout=>nx19104z97, shareout=>nx19104z98, 
      dataa=>sig_final3(10), datac=>sig_final1(10), datad=>sig_final4(10), 
      cin=>nx19104z72, sharein=>nx19104z77);
   ix19104z62861 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z96, cout=>nx19104z108, shareout=>
      nx19104z109, datab=>sig_final3(11), datac=>sig_final1(11), datad=>
      sig_final4(11), cin=>nx19104z97, sharein=>nx19104z98);
   ix19104z62868 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z115, cout=>nx19104z107, shareout=>
      nx19104z110, dataa=>sig_final3(12), datac=>sig_final1(12), datad=>
      sig_final4(12), cin=>nx19104z108, sharein=>nx19104z109);
   ix19104z62867 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z113, cout=>nx19104z106, shareout=>
      nx19104z111, datab=>sig_final3(13), datac=>sig_final1(13), datad=>
      sig_final4(13), cin=>nx19104z107, sharein=>nx19104z110);
   ix19104z62866 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000faa00000a55a",
         shared_arith => "on") 
       port map ( sumout=>nx19104z105, cout=>nx19104z131, shareout=>
      nx19104z132, dataa=>sig_final3(14), datac=>sig_final1(14), datad=>
      sig_final4(14), cin=>nx19104z106, sharein=>nx19104z111);
   ix19104z62879 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000fcc00000c33c",
         shared_arith => "on") 
       port map ( sumout=>nx19104z130, cout=>nx19104z140, shareout=>
      nx19104z141, datab=>sig_final3(15), datac=>sig_final1(15), datad=>
      sig_final4(15), cin=>nx19104z131, sharein=>nx19104z132);
   ix19104z62885 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000aaaa0000aaaa",
         shared_arith => "on") 
       port map ( sumout=>nx19104z139, cout=>nx19104z149, shareout=>
      nx19104z150, dataa=>nx19104z5, cin=>nx19104z140, sharein=>nx19104z141
   );
   ix19104z62890 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000aaaa0000aaaa",
         shared_arith => "on") 
       port map ( sumout=>nx19104z148, dataa=>nx19104z5, cin=>nx19104z149, 
      sharein=>nx19104z150);
   ix19104z62817 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(0), cout=>nx19104z15, datad=>nx19104z16, 
      dataf=>sig_final2(0), cin=>GND_EXMPLR46);
   ix19104z62816 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(1), cout=>nx19104z13, datad=>nx19104z14, 
      dataf=>sig_final2(1), cin=>nx19104z15);
   ix19104z62812 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(2), cout=>nx19104z31, datad=>nx19104z8, 
      dataf=>sig_final2(2), cin=>nx19104z13);
   ix19104z62824 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(3), cout=>nx19104z48, datad=>nx19104z28, 
      dataf=>sig_final2(3), cin=>nx19104z31);
   ix19104z62834 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(4), cout=>nx19104z46, datad=>nx19104z47, 
      dataf=>sig_final2(4), cin=>nx19104z48);
   ix19104z62833 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(5), cout=>nx19104z44, datad=>nx19104z45, 
      dataf=>sig_final2(5), cin=>nx19104z46);
   ix19104z62829 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(6), cout=>nx19104z65, datad=>nx19104z37, 
      dataf=>sig_final2(6), cin=>nx19104z44);
   ix19104z62842 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(7), cout=>nx19104z82, datad=>nx19104z62, 
      dataf=>sig_final2(7), cin=>nx19104z65);
   ix19104z62852 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(8), cout=>nx19104z80, datad=>nx19104z81, 
      dataf=>sig_final2(8), cin=>nx19104z82);
   ix19104z62851 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(9), cout=>nx19104z78, datad=>nx19104z79, 
      dataf=>sig_final2(9), cin=>nx19104z80);
   ix19104z62847 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(10), cout=>nx19104z99, datad=>nx19104z71, 
      dataf=>sig_final2(10), cin=>nx19104z78);
   ix19104z62860 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(11), cout=>nx19104z116, datad=>
      nx19104z96, dataf=>sig_final2(11), cin=>nx19104z99);
   ix19104z62870 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(12), cout=>nx19104z114, datad=>
      nx19104z115, dataf=>sig_final2(12), cin=>nx19104z116);
   ix19104z62869 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(13), cout=>nx19104z112, datad=>
      nx19104z113, dataf=>sig_final2(13), cin=>nx19104z114);
   ix19104z62865 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(14), cout=>nx19104z133, datad=>
      nx19104z105, dataf=>sig_final2(14), cin=>nx19104z112);
   ix19104z62878 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(15), cout=>nx19104z142, datad=>
      nx19104z130, dataf=>sig_final2(15), cin=>nx19104z133);
   ix19104z62884 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(16), cout=>nx19104z151, datad=>
      nx19104z139, dataf=>nx19104z5, cin=>nx19104z142);
   ix19104z62889 : cyclonev_lcell_comb
      generic map (lut_mask => X"000000ff0000ff00") 
       port map ( sumout=>rtlcn7930(17), datad=>nx19104z148, dataf=>
      nx19104z5, cin=>nx19104z151);
   ix19104z62886 : cyclonev_lcell_comb
      generic map (lut_mask => X"00000f0f0000f0f0") 
       port map ( sumout=>nx19104z144, datac=>GND_EXMPLR46, cin=>nx19104z145
   );
   ix5537z62814 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff01010426",
         extended_lut => "on") 
       port map ( combout=>nx5537z8, dataa=>sig_state(1), datab=>
      sig_state(0), datac=>nx5537z9, datad=>nx5537z18, datae=>sig_state(2), 
      dataf=>nx5537z27, datag=>nx5537z38);
   reg_sig_state_2 : dffeas port map ( q=>sig_state(2), d=>nx22221z1, clk=>
      i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, sclr=>
      not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_sig_state_1 : dffeas port map ( q=>sig_state(1), d=>nx23218z1, clk=>
      i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, sclr=>
      not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_sig_state_0 : dffeas port map ( q=>sig_state(0), d=>nx24215z1, clk=>
      i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, sclr=>
      not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_7 : dffeas port map ( q=>nx49530z1, d=>
      NOT_i_reg_int_31, clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>NOT_GND, sclr=>not_i_reset_n, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_6 : dffeas port map ( q=>sig_reg_storage(30), 
      d=>i_reg_int(30), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_5 : dffeas port map ( q=>sig_reg_storage(29), 
      d=>i_reg_int(29), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_4 : dffeas port map ( q=>sig_reg_storage(28), 
      d=>i_reg_int(28), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_3 : dffeas port map ( q=>sig_reg_storage(27), 
      d=>i_reg_int(27), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_2 : dffeas port map ( q=>sig_reg_storage(26), 
      d=>i_reg_int(26), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_1 : dffeas port map ( q=>sig_reg_storage(25), 
      d=>i_reg_int(25), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_0_ay_0 : dffeas port map ( q=>sig_reg_storage(24), 
      d=>i_reg_int(24), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_7 : dffeas port map ( q=>nx49529z1, d=>
      NOT_i_reg_int_23, clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>NOT_GND, sclr=>not_i_reset_n, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_6 : dffeas port map ( q=>sig_reg_storage(22), 
      d=>i_reg_int(22), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_5 : dffeas port map ( q=>sig_reg_storage(21), 
      d=>i_reg_int(21), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_4 : dffeas port map ( q=>sig_reg_storage(20), 
      d=>i_reg_int(20), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_3 : dffeas port map ( q=>sig_reg_storage(19), 
      d=>i_reg_int(19), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_2 : dffeas port map ( q=>sig_reg_storage(18), 
      d=>i_reg_int(18), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_1 : dffeas port map ( q=>sig_reg_storage(17), 
      d=>i_reg_int(17), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_1_ay_0 : dffeas port map ( q=>sig_reg_storage(16), 
      d=>i_reg_int(16), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_7 : dffeas port map ( q=>nx49528z1, d=>
      NOT_i_reg_int_15, clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>NOT_GND, sclr=>not_i_reset_n, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_6 : dffeas port map ( q=>sig_reg_storage(14), 
      d=>i_reg_int(14), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_5 : dffeas port map ( q=>sig_reg_storage(13), 
      d=>i_reg_int(13), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_4 : dffeas port map ( q=>sig_reg_storage(12), 
      d=>i_reg_int(12), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_3 : dffeas port map ( q=>sig_reg_storage(11), 
      d=>i_reg_int(11), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_2 : dffeas port map ( q=>sig_reg_storage(10), 
      d=>i_reg_int(10), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_1 : dffeas port map ( q=>sig_reg_storage(9), d
      =>i_reg_int(9), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_2_ay_0 : dffeas port map ( q=>sig_reg_storage(8), d
      =>i_reg_int(8), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_7 : dffeas port map ( q=>nx49527z1, d=>
      NOT_i_reg_int_7, clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>NOT_GND, sclr=>not_i_reset_n, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_6 : dffeas port map ( q=>sig_reg_storage(6), d
      =>i_reg_int(6), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_5 : dffeas port map ( q=>sig_reg_storage(5), d
      =>i_reg_int(5), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_4 : dffeas port map ( q=>sig_reg_storage(4), d
      =>i_reg_int(4), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_3 : dffeas port map ( q=>sig_reg_storage(3), d
      =>i_reg_int(3), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_2 : dffeas port map ( q=>sig_reg_storage(2), d
      =>i_reg_int(2), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_1 : dffeas port map ( q=>sig_reg_storage(1), d
      =>i_reg_int(1), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_pipe_cyclonev_mac_3_ay_0 : dffeas port map ( q=>sig_reg_storage(0), d
      =>i_reg_int(0), clk=>i_clk_int, ena=>nx45248z1, clrn=>PWR, prn=>PWR, 
      asdata=>GND_EXMPLR46, sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_sig_out_ppm : dffeas port map ( q=>o_ppm_dup_0, d=>current_state(1), 
      clk=>i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, 
      sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_current_state_4 : dffeas port map ( q=>current_state(4), d=>nx20101z1, 
      clk=>i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, 
      sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_current_state_3 : dffeas port map ( q=>current_state(3), d=>nx19104z1, 
      clk=>i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, 
      sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_current_state_2 : dffeas port map ( q=>current_state(2), d=>nx18107z1, 
      clk=>i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, 
      sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   reg_current_state_1 : dffeas port map ( q=>current_state(1), d=>nx17110z1, 
      clk=>i_clk_int, ena=>PWR, clrn=>PWR, prn=>PWR, asdata=>GND_EXMPLR46, 
      sclr=>not_i_reset_n_repl, sload=>GND_EXMPLR46);
   ix19104z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"a0a0a0b3a0a0a0a0") 
       port map ( combout=>nx19104z1, dataa=>nx19104z2, datab=>nx24215z3, 
      datac=>current_state(3), datad=>sig_state(0), datae=>sig_state(1), 
      dataf=>sig_state(2));
   ix18107z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000ffffffffffff") 
       port map ( combout=>nx18107z1, datae=>nx24215z2, dataf=>nx5537z8);
   ix24215z62809 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffd") 
       port map ( combout=>nx24215z3, dataa=>current_state(1), datab=>
      nx5537z3, datac=>nx5537z4, datad=>nx5537z5, datae=>nx5537z6, dataf=>
      nx5537z7);
   ix5537z62808 : cyclonev_lcell_comb
      generic map (lut_mask => X"5555555555555557") 
       port map ( combout=>nx5537z2, dataa=>current_state(1), datab=>
      nx5537z3, datac=>nx5537z4, datad=>nx5537z5, datae=>nx5537z6, dataf=>
      nx5537z7);
   ix24215z62808 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff000f0000") 
       port map ( combout=>nx24215z2, datac=>sig_state(0), datad=>
      sig_state(1), datae=>sig_state(2), dataf=>nx24215z3);
   ix5537z62844 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx5537z38, datab=>nx5537z7, datac=>nx5537z39, 
      datad=>nx5537z41, datae=>nx5537z43, dataf=>nx5537z45);
   ix5537z62813 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx5537z7, datac=>sig_out_local_count(16), datad=>
      sig_out_local_count(17), datae=>sig_out_local_count(18), dataf=>
      sig_out_local_count(19));
   ix22221z62810 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx22221z4, datab=>nx5537z3, datac=>nx5537z4, 
      datad=>nx5537z5, datae=>nx5537z6, dataf=>nx5537z7);
   ix22221z62808 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000ffffffffffff") 
       port map ( combout=>nx22221z2, datae=>sig_state(0), dataf=>
      sig_state(1));
   ix5537z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"3f333333ff333333") 
       port map ( combout=>nx5537z1, datab=>i_reset_n_int, datac=>
      current_state(3), datad=>nx5537z2, datae=>nx5537z8, dataf=>nx19104z2);
   ix24215z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"f0f0c0c3f0f0000f") 
       port map ( combout=>nx24215z1, datab=>current_state(3), datac=>
      sig_state(0), datad=>nx24215z2, datae=>nx22221z3, dataf=>nx19104z2);
   ix23218z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"f0f0a0b4f0f0003c") 
       port map ( combout=>nx23218z1, dataa=>current_state(3), datab=>
      sig_state(0), datac=>sig_state(1), datad=>nx24215z2, datae=>nx22221z3, 
      dataf=>nx19104z2);
   ix22221z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"cccc88c9cccc00c3") 
       port map ( combout=>nx22221z1, dataa=>current_state(3), datab=>
      sig_state(2), datac=>nx22221z2, datad=>nx24215z2, datae=>nx22221z3, 
      dataf=>nx19104z2);
   ix22221z62809 : cyclonev_lcell_comb
      generic map (lut_mask => X"f8f8f8fcf8f8f8f8") 
       port map ( combout=>nx22221z3, dataa=>nx22221z4, datab=>
      current_state(1), datac=>current_state(2), datad=>sig_state(0), datae
      =>sig_state(1), dataf=>sig_state(2));
   ix19104z62881 : cyclonev_lcell_comb
      generic map (lut_mask => X"0000ffffffff0000") 
       port map ( combout=>a_17, datae=>sig_out_local_count(16), dataf=>
      nx19104z136);
   ix19104z62808 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx19104z2, datab=>nx19104z3, datac=>nx19104z33, 
      datad=>nx19104z67, datae=>nx19104z101, dataf=>nx19104z135);
   ix5537z62833 : cyclonev_lcell_comb
      generic map (lut_mask => X"5555555555555557") 
       port map ( combout=>nx5537z27, dataa=>current_state(2), datab=>
      sig_state(2), datac=>nx22221z2, datad=>nx5537z7, datae=>nx5537z28, 
      dataf=>nx5537z33);
   ix19104z62880 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffbffbeffeffff") 
       port map ( combout=>nx19104z135, dataa=>a_17, datab=>nx19104z144, 
      datac=>nx19104z153, datad=>sig_out_local_count(17), datae=>
      sig_out_local_count(18), dataf=>sig_out_local_count(19));
   ix19104z62875 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx19104z124, datac=>sig_out_local_count(12), 
      datad=>sig_out_local_count(13), datae=>nx19104z125, dataf=>nx19104z126
   );
   ix19104z62862 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffff3fcffffff3fc") 
       port map ( combout=>nx19104z101, datab=>sig_out_local_count(14), 
      datac=>sig_out_local_count(15), datad=>nx19104z102, datae=>nx19104z124, 
      dataf=>nx19104z127);
   ix19104z62857 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx19104z90, datac=>sig_out_local_count(8), datad
      =>sig_out_local_count(9), datae=>nx19104z91, dataf=>nx19104z92);
   ix19104z62844 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffff3fcffffff3fc") 
       port map ( combout=>nx19104z67, datab=>sig_out_local_count(10), datac
      =>sig_out_local_count(11), datad=>nx19104z68, datae=>nx19104z90, dataf
      =>nx19104z93);
   ix19104z62839 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx19104z56, datac=>sig_out_local_count(4), datad
      =>sig_out_local_count(5), datae=>nx19104z57, dataf=>nx19104z58);
   ix19104z62826 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffff3fcffffff3fc") 
       port map ( combout=>nx19104z33, datab=>sig_out_local_count(6), datac
      =>sig_out_local_count(7), datad=>nx19104z34, datae=>nx19104z56, dataf
      =>nx19104z59);
   ix19104z62821 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx19104z23, datac=>sig_out_local_count(0), datad
      =>sig_out_local_count(1), datae=>rtlcn7930(0), dataf=>nx19104z24);
   ix19104z62809 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffff3fcffffff3fc") 
       port map ( combout=>nx19104z3, datab=>sig_out_local_count(2), datac=>
      sig_out_local_count(3), datad=>nx19104z4, datae=>nx19104z23, dataf=>
      nx19104z25);
   ix5537z62852 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z46, datac=>sig_final4(12), datad=>
      sig_final4(13), datae=>sig_out_local_count(12), dataf=>
      sig_out_local_count(13));
   ix5537z62851 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z45, datab=>sig_final4(14), datac=>
      sig_final4(15), datad=>sig_out_local_count(14), datae=>
      sig_out_local_count(15), dataf=>nx5537z46);
   ix5537z62850 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z44, datac=>sig_final4(8), datad=>
      sig_final4(9), datae=>sig_out_local_count(8), dataf=>
      sig_out_local_count(9));
   ix5537z62849 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z43, datab=>sig_final4(10), datac=>
      sig_final4(11), datad=>sig_out_local_count(10), datae=>
      sig_out_local_count(11), dataf=>nx5537z44);
   ix5537z62848 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z42, datac=>sig_final4(4), datad=>
      sig_final4(5), datae=>sig_out_local_count(4), dataf=>
      sig_out_local_count(5));
   ix5537z62847 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z41, datab=>sig_final4(6), datac=>
      sig_final4(7), datad=>sig_out_local_count(6), datae=>
      sig_out_local_count(7), dataf=>nx5537z42);
   ix5537z62846 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z40, datac=>sig_final4(0), datad=>
      sig_final4(1), datae=>sig_out_local_count(0), dataf=>
      sig_out_local_count(1));
   ix5537z62845 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z39, datab=>sig_final4(2), datac=>
      sig_final4(3), datad=>sig_out_local_count(2), datae=>
      sig_out_local_count(3), dataf=>nx5537z40);
   ix5537z62843 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z37, datac=>sig_final3(14), datad=>
      sig_final3(15), datae=>sig_out_local_count(14), dataf=>
      sig_out_local_count(15));
   ix5537z62842 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z36, datac=>sig_final3(12), datad=>
      sig_final3(13), datae=>sig_out_local_count(12), dataf=>
      sig_out_local_count(13));
   ix5537z62841 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z35, datac=>sig_final3(10), datad=>
      sig_final3(11), datae=>sig_out_local_count(10), dataf=>
      sig_out_local_count(11));
   ix5537z62840 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z34, datac=>sig_final3(8), datad=>
      sig_final3(9), datae=>sig_out_local_count(8), dataf=>
      sig_out_local_count(9));
   ix5537z62839 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx5537z33, datac=>nx5537z34, datad=>nx5537z35, 
      datae=>nx5537z36, dataf=>nx5537z37);
   ix5537z62838 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z32, datac=>sig_final3(6), datad=>
      sig_final3(7), datae=>sig_out_local_count(6), dataf=>
      sig_out_local_count(7));
   ix5537z62837 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z31, datac=>sig_final3(4), datad=>
      sig_final3(5), datae=>sig_out_local_count(4), dataf=>
      sig_out_local_count(5));
   ix5537z62836 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z30, datac=>sig_final3(2), datad=>
      sig_final3(3), datae=>sig_out_local_count(2), dataf=>
      sig_out_local_count(3));
   ix5537z62835 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z29, datac=>sig_final3(0), datad=>
      sig_final3(1), datae=>sig_out_local_count(0), dataf=>
      sig_out_local_count(1));
   ix5537z62834 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffff0") 
       port map ( combout=>nx5537z28, datac=>nx5537z29, datad=>nx5537z30, 
      datae=>nx5537z31, dataf=>nx5537z32);
   ix5537z62832 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z26, datac=>sig_final2(12), datad=>
      sig_final2(13), datae=>sig_out_local_count(12), dataf=>
      sig_out_local_count(13));
   ix5537z62831 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z25, datab=>sig_final2(14), datac=>
      sig_final2(15), datad=>sig_out_local_count(14), datae=>
      sig_out_local_count(15), dataf=>nx5537z26);
   ix5537z62830 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z24, datac=>sig_final2(8), datad=>
      sig_final2(9), datae=>sig_out_local_count(8), dataf=>
      sig_out_local_count(9));
   ix5537z62829 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z23, datab=>sig_final2(10), datac=>
      sig_final2(11), datad=>sig_out_local_count(10), datae=>
      sig_out_local_count(11), dataf=>nx5537z24);
   ix5537z62828 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z22, datac=>sig_final2(4), datad=>
      sig_final2(5), datae=>sig_out_local_count(4), dataf=>
      sig_out_local_count(5));
   ix5537z62827 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z21, datab=>sig_final2(6), datac=>
      sig_final2(7), datad=>sig_out_local_count(6), datae=>
      sig_out_local_count(7), dataf=>nx5537z22);
   ix5537z62826 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z20, datac=>sig_final2(0), datad=>
      sig_final2(1), datae=>sig_out_local_count(0), dataf=>
      sig_out_local_count(1));
   ix5537z62825 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z19, datab=>sig_final2(2), datac=>
      sig_final2(3), datad=>sig_out_local_count(2), datae=>
      sig_out_local_count(3), dataf=>nx5537z20);
   ix5537z62823 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z17, datac=>sig_final1(12), datad=>
      sig_final1(13), datae=>sig_out_local_count(12), dataf=>
      sig_out_local_count(13));
   ix5537z62822 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z16, datab=>sig_final1(14), datac=>
      sig_final1(15), datad=>sig_out_local_count(14), datae=>
      sig_out_local_count(15), dataf=>nx5537z17);
   ix5537z62821 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z15, datac=>sig_final1(8), datad=>
      sig_final1(9), datae=>sig_out_local_count(8), dataf=>
      sig_out_local_count(9));
   ix5537z62820 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z14, datab=>sig_final1(10), datac=>
      sig_final1(11), datad=>sig_out_local_count(10), datae=>
      sig_out_local_count(11), dataf=>nx5537z15);
   ix5537z62819 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z13, datac=>sig_final1(4), datad=>
      sig_final1(5), datae=>sig_out_local_count(4), dataf=>
      sig_out_local_count(5));
   ix5537z62818 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z12, datab=>sig_final1(6), datac=>
      sig_final1(7), datad=>sig_out_local_count(6), datae=>
      sig_out_local_count(7), dataf=>nx5537z13);
   ix5537z62817 : cyclonev_lcell_comb
      generic map (lut_mask => X"0ffff0ffff0ffff0") 
       port map ( combout=>nx5537z11, datac=>sig_final1(0), datad=>
      sig_final1(1), datae=>sig_out_local_count(0), dataf=>
      sig_out_local_count(1));
   ix5537z62816 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff3fcff3fc") 
       port map ( combout=>nx5537z10, datab=>sig_final1(2), datac=>
      sig_final1(3), datad=>sig_out_local_count(2), datae=>
      sig_out_local_count(3), dataf=>nx5537z11);
   ix5537z62824 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx5537z18, datab=>nx5537z7, datac=>nx5537z19, 
      datad=>nx5537z21, datae=>nx5537z23, dataf=>nx5537z25);
   ix5537z62815 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffffffffc") 
       port map ( combout=>nx5537z9, datab=>nx5537z7, datac=>nx5537z10, 
      datad=>nx5537z12, datae=>nx5537z14, dataf=>nx5537z16);
   ix5537z62812 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffff0fffffffffff") 
       port map ( combout=>nx5537z6, datac=>sig_out_local_count(0), datad=>
      sig_out_local_count(1), datae=>sig_out_local_count(2), dataf=>
      sig_out_local_count(3));
   ix5537z62811 : cyclonev_lcell_comb
      generic map (lut_mask => X"fffffffffff0ffff") 
       port map ( combout=>nx5537z5, datac=>sig_out_local_count(4), datad=>
      sig_out_local_count(5), datae=>sig_out_local_count(6), dataf=>
      sig_out_local_count(7));
   ix5537z62810 : cyclonev_lcell_comb
      generic map (lut_mask => X"ff0fffffffffffff") 
       port map ( combout=>nx5537z4, datac=>sig_out_local_count(8), datad=>
      sig_out_local_count(9), datae=>sig_out_local_count(10), dataf=>
      sig_out_local_count(11));
   ix5537z62809 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffffffffff0f") 
       port map ( combout=>nx5537z3, datac=>sig_out_local_count(12), datad=>
      sig_out_local_count(13), datae=>sig_out_local_count(14), dataf=>
      sig_out_local_count(15));
   ix45248z62808 : cyclonev_lcell_comb
      generic map (lut_mask => X"ffffffff0000ffff") 
       port map ( combout=>nx45248z1, datae=>i_reset_n_int, dataf=>
      current_state(4));
   ix20101z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"00000000ffff0000") 
       port map ( combout=>nx20101z1, datae=>current_state(3), dataf=>
      nx19104z2);
   ix17110z62807 : cyclonev_lcell_comb
      generic map (lut_mask => X"00ff000000000000") 
       port map ( combout=>nx17110z1, datad=>current_state(3), datae=>
      nx24215z3, dataf=>nx5537z8);
end rtl ;

