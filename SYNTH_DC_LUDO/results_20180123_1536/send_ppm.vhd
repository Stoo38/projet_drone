
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_send_ppm is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_send_ppm;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_send_ppm.all;

entity send_ppm is

   port( i_clk, i_reset_n : in std_logic;  i_reg : in std_logic_vector (31 
         downto 0);  o_ppm : out std_logic);

end send_ppm;

architecture SYN_rtl of send_ppm is

   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2111
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI311
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component MUX22
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component DFE1
      port( D, E, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADD22
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component OAI222
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal sig_in_init, sig_out_local_count_19_port, sig_out_local_count_18_port
      , sig_out_local_count_17_port, sig_out_local_count_16_port, 
      sig_out_local_count_15_port, sig_out_local_count_14_port, 
      sig_out_local_count_13_port, sig_out_local_count_12_port, 
      sig_out_local_count_11_port, sig_out_local_count_10_port, 
      sig_out_local_count_9_port, sig_out_local_count_8_port, 
      sig_out_local_count_7_port, sig_out_local_count_6_port, 
      sig_out_local_count_5_port, sig_out_local_count_4_port, 
      sig_out_local_count_3_port, sig_out_local_count_2_port, 
      sig_out_local_count_1_port, sig_out_local_count_0_port, 
      sig_reg_storage_31_port, sig_reg_storage_30_port, sig_reg_storage_29_port
      , sig_reg_storage_28_port, sig_reg_storage_27_port, 
      sig_reg_storage_26_port, sig_reg_storage_25_port, sig_reg_storage_24_port
      , sig_reg_storage_23_port, sig_reg_storage_22_port, 
      sig_reg_storage_21_port, sig_reg_storage_20_port, sig_reg_storage_19_port
      , sig_reg_storage_18_port, sig_reg_storage_17_port, 
      sig_reg_storage_16_port, sig_reg_storage_15_port, sig_reg_storage_14_port
      , sig_reg_storage_13_port, sig_reg_storage_12_port, 
      sig_reg_storage_11_port, sig_reg_storage_10_port, sig_reg_storage_9_port,
      sig_reg_storage_8_port, sig_reg_storage_7_port, sig_reg_storage_6_port, 
      sig_reg_storage_5_port, sig_reg_storage_4_port, sig_reg_storage_3_port, 
      sig_reg_storage_2_port, sig_reg_storage_1_port, sig_reg_storage_0_port, 
      sig_cyclesTrame1_15_port, sig_cyclesTrame1_14_port, 
      sig_cyclesTrame1_13_port, sig_cyclesTrame1_12_port, 
      sig_cyclesTrame1_11_port, sig_cyclesTrame1_10_port, 
      sig_cyclesTrame1_9_port, sig_cyclesTrame1_8_port, sig_cyclesTrame1_7_port
      , sig_cyclesTrame1_6_port, sig_cyclesTrame1_5_port, 
      sig_cyclesTrame1_4_port, sig_cyclesTrame1_3_port, sig_cyclesTrame1_2_port
      , sig_cyclesTrame2_15_port, sig_cyclesTrame2_14_port, 
      sig_cyclesTrame2_13_port, sig_cyclesTrame2_12_port, 
      sig_cyclesTrame2_11_port, sig_cyclesTrame2_10_port, 
      sig_cyclesTrame2_9_port, sig_cyclesTrame2_8_port, sig_cyclesTrame2_7_port
      , sig_cyclesTrame2_6_port, sig_cyclesTrame2_5_port, 
      sig_cyclesTrame2_4_port, sig_cyclesTrame2_3_port, sig_cyclesTrame2_2_port
      , sig_cyclesTrame3_15_port, sig_cyclesTrame3_14_port, 
      sig_cyclesTrame3_13_port, sig_cyclesTrame3_12_port, 
      sig_cyclesTrame3_11_port, sig_cyclesTrame3_10_port, 
      sig_cyclesTrame3_9_port, sig_cyclesTrame3_8_port, sig_cyclesTrame3_7_port
      , sig_cyclesTrame3_6_port, sig_cyclesTrame3_5_port, 
      sig_cyclesTrame3_4_port, sig_cyclesTrame3_3_port, sig_cyclesTrame3_2_port
      , sig_cyclesTrame4_15_port, sig_cyclesTrame4_14_port, 
      sig_cyclesTrame4_13_port, sig_cyclesTrame4_12_port, 
      sig_cyclesTrame4_11_port, sig_cyclesTrame4_10_port, 
      sig_cyclesTrame4_9_port, sig_cyclesTrame4_8_port, sig_cyclesTrame4_7_port
      , sig_cyclesTrame4_6_port, sig_cyclesTrame4_5_port, 
      sig_cyclesTrame4_4_port, sig_cyclesTrame4_3_port, sig_cyclesTrame4_2_port
      , current_state_2_port, current_state_1_port, current_state_0_port, 
      sig_state_2_port, sig_state_1_port, sig_state_0_port, N78, N79, N81, N82,
      N148, N156, N163, N169, N179, N180, N181, N182, N183, N184, N185, N186, 
      N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, 
      N204, dp_cluster_0_N52, dp_cluster_0_N51, dp_cluster_0_N50, 
      dp_cluster_0_N49, dp_cluster_0_N48, dp_cluster_0_N47, dp_cluster_0_N46, 
      dp_cluster_0_N45, dp_cluster_0_N44, dp_cluster_0_N43, dp_cluster_0_N42, 
      dp_cluster_0_N41, dp_cluster_0_N40, dp_cluster_0_N39, dp_cluster_0_N38, 
      dp_cluster_0_N35, dp_cluster_0_N31, dp_cluster_0_N30, dp_cluster_0_N296, 
      dp_cluster_0_N295, dp_cluster_0_N294, dp_cluster_0_N293, 
      dp_cluster_0_N292, dp_cluster_0_N291, dp_cluster_0_N290, dp_cluster_0_N29
      , dp_cluster_0_N289, dp_cluster_0_N288, dp_cluster_0_N287, 
      dp_cluster_0_N286, dp_cluster_0_N285, dp_cluster_0_N284, 
      dp_cluster_0_N283, dp_cluster_0_N282, dp_cluster_0_N281, 
      dp_cluster_0_N280, dp_cluster_0_N28, dp_cluster_0_N279, dp_cluster_0_N278
      , dp_cluster_0_N27, dp_cluster_0_N26, dp_cluster_0_N25, dp_cluster_0_N24,
      dp_cluster_0_N23, dp_cluster_0_N22, dp_cluster_0_N21, dp_cluster_0_N20, 
      dp_cluster_0_N19, dp_cluster_0_N18, dp_cluster_1_N268, dp_cluster_1_N266,
      dp_cluster_1_N265, dp_cluster_1_N264, dp_cluster_1_N263, 
      dp_cluster_2_N253, dp_cluster_2_N251, dp_cluster_2_N250, 
      dp_cluster_2_N249, dp_cluster_2_N248, dp_cluster_3_N238, 
      dp_cluster_3_N236, dp_cluster_3_N235, dp_cluster_3_N234, 
      dp_cluster_3_N233, dp_cluster_4_N223, dp_cluster_4_N221, 
      dp_cluster_4_N220, dp_cluster_4_N219, dp_cluster_4_N218, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78_port, n79_port, n80, n81_port, n82_port, n83, n84, n85, 
      n86, n87, n88, n89, n90, n91, local_counter1_n22, local_counter1_N65, 
      local_counter1_N64, local_counter1_N63, local_counter1_N62, 
      local_counter1_N61, local_counter1_N60, local_counter1_N59, 
      local_counter1_N58, local_counter1_N57, local_counter1_N56, 
      local_counter1_N55, local_counter1_N54, local_counter1_N53, 
      local_counter1_N52, local_counter1_N51, local_counter1_N50, 
      local_counter1_N49, local_counter1_N48, local_counter1_N47, 
      local_counter1_N46, local_counter1_N24, local_counter1_N23, 
      local_counter1_N22_port, local_counter1_N21, local_counter1_N20, 
      local_counter1_N19, local_counter1_N18, local_counter1_N17, 
      local_counter1_N16, local_counter1_N15, local_counter1_N14, 
      local_counter1_N13, local_counter1_N12, local_counter1_N11, 
      local_counter1_N10, local_counter1_N9, local_counter1_N8, 
      local_counter1_N7, local_counter1_v_val_0_port, 
      local_counter1_v_val_1_port, local_counter1_v_val_2_port, 
      local_counter1_v_val_3_port, local_counter1_v_val_4_port, 
      local_counter1_v_val_5_port, local_counter1_v_val_6_port, 
      local_counter1_v_val_7_port, local_counter1_v_val_8_port, 
      local_counter1_v_val_9_port, local_counter1_v_val_10_port, 
      local_counter1_v_val_11_port, local_counter1_v_val_12_port, 
      local_counter1_v_val_13_port, local_counter1_v_val_14_port, 
      local_counter1_v_val_15_port, local_counter1_v_val_16_port, 
      local_counter1_v_val_17_port, local_counter1_v_val_18_port, 
      local_counter1_v_val_19_port, local_counter1_add_34_carry_2_port, 
      local_counter1_add_34_carry_3_port, local_counter1_add_34_carry_4_port, 
      local_counter1_add_34_carry_5_port, local_counter1_add_34_carry_6_port, 
      local_counter1_add_34_carry_7_port, local_counter1_add_34_carry_8_port, 
      local_counter1_add_34_carry_9_port, local_counter1_add_34_carry_10_port, 
      local_counter1_add_34_carry_11_port, local_counter1_add_34_carry_12_port,
      local_counter1_add_34_carry_13_port, local_counter1_add_34_carry_14_port,
      local_counter1_add_34_carry_15_port, local_counter1_add_34_carry_16_port,
      local_counter1_add_34_carry_17_port, local_counter1_add_34_carry_18_port,
      local_counter1_add_34_carry_19_port, dp_cluster_4_sub_123_cf_carry_3_port
      , dp_cluster_4_sub_123_cf_carry_4_port, 
      dp_cluster_4_sub_123_cf_carry_5_port, 
      dp_cluster_4_sub_123_cf_carry_6_port, 
      dp_cluster_4_sub_123_cf_carry_7_port, 
      dp_cluster_4_sub_123_cf_carry_8_port, 
      dp_cluster_4_sub_123_cf_carry_9_port, 
      dp_cluster_4_sub_123_cf_carry_10_port, 
      dp_cluster_4_sub_123_cf_carry_11_port, 
      dp_cluster_4_sub_123_cf_carry_12_port, 
      dp_cluster_4_sub_123_cf_carry_13_port, 
      dp_cluster_4_sub_123_cf_carry_14_port, dp_cluster_4_mult_123_A2_8_port, 
      dp_cluster_4_mult_123_A2_12_port, dp_cluster_4_mult_123_A1_11_port, 
      dp_cluster_4_mult_123_SUMB_1_5_port, dp_cluster_4_mult_123_SUMB_2_5_port,
      dp_cluster_4_mult_123_SUMB_3_5_port, dp_cluster_4_mult_123_SUMB_4_1_port,
      dp_cluster_4_mult_123_SUMB_4_5_port, dp_cluster_4_mult_123_SUMB_5_1_port,
      dp_cluster_4_mult_123_SUMB_5_5_port, dp_cluster_4_mult_123_SUMB_6_1_port,
      dp_cluster_4_mult_123_SUMB_6_5_port, dp_cluster_4_mult_123_SUMB_7_1_port,
      dp_cluster_4_mult_123_SUMB_7_5_port, 
      dp_cluster_4_mult_123_CARRYB_1_5_port, 
      dp_cluster_4_mult_123_CARRYB_2_5_port, 
      dp_cluster_4_mult_123_CARRYB_3_5_port, 
      dp_cluster_4_mult_123_CARRYB_4_1_port, 
      dp_cluster_4_mult_123_CARRYB_4_5_port, 
      dp_cluster_4_mult_123_CARRYB_5_1_port, 
      dp_cluster_4_mult_123_CARRYB_5_5_port, 
      dp_cluster_4_mult_123_CARRYB_6_1_port, 
      dp_cluster_4_mult_123_CARRYB_6_5_port, 
      dp_cluster_4_mult_123_CARRYB_7_1_port, 
      dp_cluster_4_mult_123_CARRYB_7_5_port, 
      dp_cluster_3_sub_120_cf_carry_3_port, 
      dp_cluster_3_sub_120_cf_carry_4_port, 
      dp_cluster_3_sub_120_cf_carry_5_port, 
      dp_cluster_3_sub_120_cf_carry_6_port, 
      dp_cluster_3_sub_120_cf_carry_7_port, 
      dp_cluster_3_sub_120_cf_carry_8_port, 
      dp_cluster_3_sub_120_cf_carry_9_port, 
      dp_cluster_3_sub_120_cf_carry_10_port, 
      dp_cluster_3_sub_120_cf_carry_11_port, 
      dp_cluster_3_sub_120_cf_carry_12_port, 
      dp_cluster_3_sub_120_cf_carry_13_port, 
      dp_cluster_3_sub_120_cf_carry_14_port, dp_cluster_3_mult_120_A2_8_port, 
      dp_cluster_3_mult_120_A2_12_port, dp_cluster_3_mult_120_A1_11_port, 
      dp_cluster_3_mult_120_SUMB_1_5_port, dp_cluster_3_mult_120_SUMB_2_5_port,
      dp_cluster_3_mult_120_SUMB_3_5_port, dp_cluster_3_mult_120_SUMB_4_1_port,
      dp_cluster_3_mult_120_SUMB_4_5_port, dp_cluster_3_mult_120_SUMB_5_1_port,
      dp_cluster_3_mult_120_SUMB_5_5_port, dp_cluster_3_mult_120_SUMB_6_1_port,
      dp_cluster_3_mult_120_SUMB_6_5_port, dp_cluster_3_mult_120_SUMB_7_1_port,
      dp_cluster_3_mult_120_SUMB_7_5_port, 
      dp_cluster_3_mult_120_CARRYB_1_5_port, 
      dp_cluster_3_mult_120_CARRYB_2_5_port, 
      dp_cluster_3_mult_120_CARRYB_3_5_port, 
      dp_cluster_3_mult_120_CARRYB_4_1_port, 
      dp_cluster_3_mult_120_CARRYB_4_5_port, 
      dp_cluster_3_mult_120_CARRYB_5_1_port, 
      dp_cluster_3_mult_120_CARRYB_5_5_port, 
      dp_cluster_3_mult_120_CARRYB_6_1_port, 
      dp_cluster_3_mult_120_CARRYB_6_5_port, 
      dp_cluster_3_mult_120_CARRYB_7_1_port, 
      dp_cluster_3_mult_120_CARRYB_7_5_port, 
      dp_cluster_2_sub_117_cf_carry_3_port, 
      dp_cluster_2_sub_117_cf_carry_4_port, 
      dp_cluster_2_sub_117_cf_carry_5_port, 
      dp_cluster_2_sub_117_cf_carry_6_port, 
      dp_cluster_2_sub_117_cf_carry_7_port, 
      dp_cluster_2_sub_117_cf_carry_8_port, 
      dp_cluster_2_sub_117_cf_carry_9_port, 
      dp_cluster_2_sub_117_cf_carry_10_port, 
      dp_cluster_2_sub_117_cf_carry_11_port, 
      dp_cluster_2_sub_117_cf_carry_12_port, 
      dp_cluster_2_sub_117_cf_carry_13_port, 
      dp_cluster_2_sub_117_cf_carry_14_port, dp_cluster_2_mult_117_A2_8_port, 
      dp_cluster_2_mult_117_A2_12_port, dp_cluster_2_mult_117_A1_11_port, 
      dp_cluster_2_mult_117_SUMB_1_5_port, dp_cluster_2_mult_117_SUMB_2_5_port,
      dp_cluster_2_mult_117_SUMB_3_5_port, dp_cluster_2_mult_117_SUMB_4_1_port,
      dp_cluster_2_mult_117_SUMB_4_5_port, dp_cluster_2_mult_117_SUMB_5_1_port,
      dp_cluster_2_mult_117_SUMB_5_5_port, dp_cluster_2_mult_117_SUMB_6_1_port,
      dp_cluster_2_mult_117_SUMB_6_5_port, dp_cluster_2_mult_117_SUMB_7_1_port,
      dp_cluster_2_mult_117_SUMB_7_5_port, 
      dp_cluster_2_mult_117_CARRYB_1_5_port, 
      dp_cluster_2_mult_117_CARRYB_2_5_port, 
      dp_cluster_2_mult_117_CARRYB_3_5_port, 
      dp_cluster_2_mult_117_CARRYB_4_1_port, 
      dp_cluster_2_mult_117_CARRYB_4_5_port, 
      dp_cluster_2_mult_117_CARRYB_5_1_port, 
      dp_cluster_2_mult_117_CARRYB_5_5_port, 
      dp_cluster_2_mult_117_CARRYB_6_1_port, 
      dp_cluster_2_mult_117_CARRYB_6_5_port, 
      dp_cluster_2_mult_117_CARRYB_7_1_port, 
      dp_cluster_2_mult_117_CARRYB_7_5_port, 
      dp_cluster_1_sub_114_cf_carry_3_port, 
      dp_cluster_1_sub_114_cf_carry_4_port, 
      dp_cluster_1_sub_114_cf_carry_5_port, 
      dp_cluster_1_sub_114_cf_carry_6_port, 
      dp_cluster_1_sub_114_cf_carry_7_port, 
      dp_cluster_1_sub_114_cf_carry_8_port, 
      dp_cluster_1_sub_114_cf_carry_9_port, 
      dp_cluster_1_sub_114_cf_carry_10_port, 
      dp_cluster_1_sub_114_cf_carry_11_port, 
      dp_cluster_1_sub_114_cf_carry_12_port, 
      dp_cluster_1_sub_114_cf_carry_13_port, 
      dp_cluster_1_sub_114_cf_carry_14_port, dp_cluster_1_mult_114_A2_8_port, 
      dp_cluster_1_mult_114_A2_12_port, dp_cluster_1_mult_114_A1_11_port, 
      dp_cluster_1_mult_114_SUMB_1_5_port, dp_cluster_1_mult_114_SUMB_2_5_port,
      dp_cluster_1_mult_114_SUMB_3_5_port, dp_cluster_1_mult_114_SUMB_4_1_port,
      dp_cluster_1_mult_114_SUMB_4_5_port, dp_cluster_1_mult_114_SUMB_5_1_port,
      dp_cluster_1_mult_114_SUMB_5_5_port, dp_cluster_1_mult_114_SUMB_6_1_port,
      dp_cluster_1_mult_114_SUMB_6_5_port, dp_cluster_1_mult_114_SUMB_7_1_port,
      dp_cluster_1_mult_114_SUMB_7_5_port, 
      dp_cluster_1_mult_114_CARRYB_1_5_port, 
      dp_cluster_1_mult_114_CARRYB_2_5_port, 
      dp_cluster_1_mult_114_CARRYB_3_5_port, 
      dp_cluster_1_mult_114_CARRYB_4_1_port, 
      dp_cluster_1_mult_114_CARRYB_4_5_port, 
      dp_cluster_1_mult_114_CARRYB_5_1_port, 
      dp_cluster_1_mult_114_CARRYB_5_5_port, 
      dp_cluster_1_mult_114_CARRYB_6_1_port, 
      dp_cluster_1_mult_114_CARRYB_6_5_port, 
      dp_cluster_1_mult_114_CARRYB_7_1_port, 
      dp_cluster_1_mult_114_CARRYB_7_5_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_2_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_3_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_4_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_5_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_6_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_7_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_8_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_9_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_10_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_11_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_12_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_13_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_14_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_15_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_16_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_17_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_18_port, 
      dp_cluster_0_sub_0_root_sub_235_cf_carry_19_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_2_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_3_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_4_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_5_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_6_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_7_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_8_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_9_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_10_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_11_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_12_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_13_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_14_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_15_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_16_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_17_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_18_port, 
      dp_cluster_0_add_1_root_sub_235_cf_carry_19_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_2_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_3_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_4_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_5_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_6_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_7_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_8_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_9_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_10_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_11_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_12_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_13_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_14_port, 
      dp_cluster_0_add_3_root_sub_235_cf_carry_15_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_3_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_4_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_5_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_6_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_7_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_8_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_9_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_10_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_11_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_12_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_13_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_14_port, 
      dp_cluster_0_sub_4_root_sub_235_cf_carry_15_port, n105, n106, n107, n108,
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148_port, n149, n150, n151, n152, n153, n154, n155, 
      n156_port, n157, n158, n159, n160, n161, n162, n163_port, n164, n165, 
      n166, n167, n168, n169_port, n170, n171, n172, n173, n174, n175, n176, 
      n177, n178, n179_port, n180_port, n181_port, n182_port, n183_port, 
      n184_port, n185_port, n186_port, n187_port, n188_port, n189_port, 
      n190_port, n191_port, n192_port, n193_port, n194_port, n195_port, 
      n196_port, n197_port, n198_port, n199, n200, n201, n202, n203, n204_port,
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, 
      n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, 
      n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, 
      n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, 
      n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, 
      n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, 
      n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, 
      n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, 
      n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, 
      n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, 
      n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, 
      n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, 
      n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, 
      n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, 
      n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, 
      n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, 
      n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, 
      n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, 
      n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, 
      n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, 
      n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, 
      n469, n470, n471, n472, n473, n474, n475, n476, n_1000, n_1001, n_1002, 
      n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, 
      n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, 
      n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, 
      n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, 
      n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, 
      n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055 : 
      std_logic;

begin
   
   U16 : OAI222 port map( A => n67, B => n247, C => sig_state_2_port, D => n70,
                           Q => n62);
   U22 : OAI212 port map( A => n77, B => sig_state_1_port, C => n238, Q => n74)
                           ;
   U23 : OAI222 port map( A => n238, B => n127, C => n76, D => n78_port, Q => 
                           N79);
   U25 : OAI212 port map( A => sig_state_0_port, B => n77, C => n80, Q => 
                           n79_port);
   U26 : OAI222 port map( A => n80, B => n110, C => sig_state_0_port, D => n76,
                           Q => N78);
   local_counter1_add_34_U1_1_1 : ADD22 port map( A => 
                           local_counter1_v_val_1_port, B => 
                           local_counter1_v_val_0_port, CO => 
                           local_counter1_add_34_carry_2_port, S => 
                           local_counter1_N7);
   local_counter1_add_34_U1_1_2 : ADD22 port map( A => 
                           local_counter1_v_val_2_port, B => 
                           local_counter1_add_34_carry_2_port, CO => 
                           local_counter1_add_34_carry_3_port, S => 
                           local_counter1_N8);
   local_counter1_add_34_U1_1_3 : ADD22 port map( A => 
                           local_counter1_v_val_3_port, B => 
                           local_counter1_add_34_carry_3_port, CO => 
                           local_counter1_add_34_carry_4_port, S => 
                           local_counter1_N9);
   local_counter1_add_34_U1_1_4 : ADD22 port map( A => 
                           local_counter1_v_val_4_port, B => 
                           local_counter1_add_34_carry_4_port, CO => 
                           local_counter1_add_34_carry_5_port, S => 
                           local_counter1_N10);
   local_counter1_add_34_U1_1_5 : ADD22 port map( A => 
                           local_counter1_v_val_5_port, B => 
                           local_counter1_add_34_carry_5_port, CO => 
                           local_counter1_add_34_carry_6_port, S => 
                           local_counter1_N11);
   local_counter1_add_34_U1_1_6 : ADD22 port map( A => 
                           local_counter1_v_val_6_port, B => 
                           local_counter1_add_34_carry_6_port, CO => 
                           local_counter1_add_34_carry_7_port, S => 
                           local_counter1_N12);
   local_counter1_add_34_U1_1_7 : ADD22 port map( A => 
                           local_counter1_v_val_7_port, B => 
                           local_counter1_add_34_carry_7_port, CO => 
                           local_counter1_add_34_carry_8_port, S => 
                           local_counter1_N13);
   local_counter1_add_34_U1_1_8 : ADD22 port map( A => 
                           local_counter1_v_val_8_port, B => 
                           local_counter1_add_34_carry_8_port, CO => 
                           local_counter1_add_34_carry_9_port, S => 
                           local_counter1_N14);
   local_counter1_add_34_U1_1_9 : ADD22 port map( A => 
                           local_counter1_v_val_9_port, B => 
                           local_counter1_add_34_carry_9_port, CO => 
                           local_counter1_add_34_carry_10_port, S => 
                           local_counter1_N15);
   local_counter1_add_34_U1_1_10 : ADD22 port map( A => 
                           local_counter1_v_val_10_port, B => 
                           local_counter1_add_34_carry_10_port, CO => 
                           local_counter1_add_34_carry_11_port, S => 
                           local_counter1_N16);
   local_counter1_add_34_U1_1_11 : ADD22 port map( A => 
                           local_counter1_v_val_11_port, B => 
                           local_counter1_add_34_carry_11_port, CO => 
                           local_counter1_add_34_carry_12_port, S => 
                           local_counter1_N17);
   local_counter1_add_34_U1_1_12 : ADD22 port map( A => 
                           local_counter1_v_val_12_port, B => 
                           local_counter1_add_34_carry_12_port, CO => 
                           local_counter1_add_34_carry_13_port, S => 
                           local_counter1_N18);
   local_counter1_add_34_U1_1_13 : ADD22 port map( A => 
                           local_counter1_v_val_13_port, B => 
                           local_counter1_add_34_carry_13_port, CO => 
                           local_counter1_add_34_carry_14_port, S => 
                           local_counter1_N19);
   local_counter1_add_34_U1_1_14 : ADD22 port map( A => 
                           local_counter1_v_val_14_port, B => 
                           local_counter1_add_34_carry_14_port, CO => 
                           local_counter1_add_34_carry_15_port, S => 
                           local_counter1_N20);
   local_counter1_add_34_U1_1_15 : ADD22 port map( A => 
                           local_counter1_v_val_15_port, B => 
                           local_counter1_add_34_carry_15_port, CO => 
                           local_counter1_add_34_carry_16_port, S => 
                           local_counter1_N21);
   local_counter1_add_34_U1_1_16 : ADD22 port map( A => 
                           local_counter1_v_val_16_port, B => 
                           local_counter1_add_34_carry_16_port, CO => 
                           local_counter1_add_34_carry_17_port, S => 
                           local_counter1_N22_port);
   local_counter1_add_34_U1_1_17 : ADD22 port map( A => 
                           local_counter1_v_val_17_port, B => 
                           local_counter1_add_34_carry_17_port, CO => 
                           local_counter1_add_34_carry_18_port, S => 
                           local_counter1_N23);
   local_counter1_add_34_U1_1_18 : ADD22 port map( A => 
                           local_counter1_v_val_18_port, B => 
                           local_counter1_add_34_carry_18_port, CO => 
                           local_counter1_add_34_carry_19_port, S => 
                           local_counter1_N24);
   dp_cluster_4_mult_123_S3_2_5 : ADD32 port map( A => sig_reg_storage_26_port,
                           B => dp_cluster_4_mult_123_CARRYB_1_5_port, CI => 
                           sig_reg_storage_25_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_2_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_2_5_port);
   dp_cluster_4_mult_123_S3_3_5 : ADD32 port map( A => sig_reg_storage_27_port,
                           B => dp_cluster_4_mult_123_CARRYB_2_5_port, CI => 
                           sig_reg_storage_26_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_3_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_3_5_port);
   dp_cluster_4_mult_123_S3_4_5 : ADD32 port map( A => sig_reg_storage_28_port,
                           B => dp_cluster_4_mult_123_CARRYB_3_5_port, CI => 
                           sig_reg_storage_27_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_4_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_4_5_port);
   dp_cluster_4_mult_123_S3_5_5 : ADD32 port map( A => sig_reg_storage_29_port,
                           B => dp_cluster_4_mult_123_CARRYB_4_5_port, CI => 
                           sig_reg_storage_28_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_5_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_5_5_port);
   dp_cluster_4_mult_123_S2_5_1 : ADD32 port map( A => sig_reg_storage_29_port,
                           B => dp_cluster_4_mult_123_CARRYB_4_1_port, CI => 
                           dp_cluster_4_mult_123_SUMB_1_5_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_5_1_port, S => 
                           dp_cluster_4_mult_123_SUMB_5_1_port);
   dp_cluster_4_mult_123_S3_6_5 : ADD32 port map( A => sig_reg_storage_30_port,
                           B => dp_cluster_4_mult_123_CARRYB_5_5_port, CI => 
                           sig_reg_storage_29_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_6_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_6_5_port);
   dp_cluster_4_mult_123_S2_6_1 : ADD32 port map( A => sig_reg_storage_30_port,
                           B => dp_cluster_4_mult_123_CARRYB_5_1_port, CI => 
                           dp_cluster_4_mult_123_SUMB_2_5_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_6_1_port, S => 
                           dp_cluster_4_mult_123_SUMB_6_1_port);
   dp_cluster_4_mult_123_S5_5 : ADD32 port map( A => sig_reg_storage_31_port, B
                           => dp_cluster_4_mult_123_CARRYB_6_5_port, CI => 
                           sig_reg_storage_30_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_7_5_port, S => 
                           dp_cluster_4_mult_123_SUMB_7_5_port);
   dp_cluster_4_mult_123_S4_1 : ADD32 port map( A => sig_reg_storage_31_port, B
                           => dp_cluster_4_mult_123_CARRYB_6_1_port, CI => 
                           dp_cluster_4_mult_123_SUMB_3_5_port, CO => 
                           dp_cluster_4_mult_123_CARRYB_7_1_port, S => 
                           dp_cluster_4_mult_123_SUMB_7_1_port);
   dp_cluster_3_mult_120_S3_2_5 : ADD32 port map( A => sig_reg_storage_18_port,
                           B => dp_cluster_3_mult_120_CARRYB_1_5_port, CI => 
                           sig_reg_storage_17_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_2_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_2_5_port);
   dp_cluster_3_mult_120_S3_3_5 : ADD32 port map( A => sig_reg_storage_19_port,
                           B => dp_cluster_3_mult_120_CARRYB_2_5_port, CI => 
                           sig_reg_storage_18_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_3_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_3_5_port);
   dp_cluster_3_mult_120_S3_4_5 : ADD32 port map( A => sig_reg_storage_20_port,
                           B => dp_cluster_3_mult_120_CARRYB_3_5_port, CI => 
                           sig_reg_storage_19_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_4_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_4_5_port);
   dp_cluster_3_mult_120_S3_5_5 : ADD32 port map( A => sig_reg_storage_21_port,
                           B => dp_cluster_3_mult_120_CARRYB_4_5_port, CI => 
                           sig_reg_storage_20_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_5_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_5_5_port);
   dp_cluster_3_mult_120_S2_5_1 : ADD32 port map( A => sig_reg_storage_21_port,
                           B => dp_cluster_3_mult_120_CARRYB_4_1_port, CI => 
                           dp_cluster_3_mult_120_SUMB_1_5_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_5_1_port, S => 
                           dp_cluster_3_mult_120_SUMB_5_1_port);
   dp_cluster_3_mult_120_S3_6_5 : ADD32 port map( A => sig_reg_storage_22_port,
                           B => dp_cluster_3_mult_120_CARRYB_5_5_port, CI => 
                           sig_reg_storage_21_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_6_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_6_5_port);
   dp_cluster_3_mult_120_S2_6_1 : ADD32 port map( A => sig_reg_storage_22_port,
                           B => dp_cluster_3_mult_120_CARRYB_5_1_port, CI => 
                           dp_cluster_3_mult_120_SUMB_2_5_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_6_1_port, S => 
                           dp_cluster_3_mult_120_SUMB_6_1_port);
   dp_cluster_3_mult_120_S5_5 : ADD32 port map( A => sig_reg_storage_23_port, B
                           => dp_cluster_3_mult_120_CARRYB_6_5_port, CI => 
                           sig_reg_storage_22_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_7_5_port, S => 
                           dp_cluster_3_mult_120_SUMB_7_5_port);
   dp_cluster_3_mult_120_S4_1 : ADD32 port map( A => sig_reg_storage_23_port, B
                           => dp_cluster_3_mult_120_CARRYB_6_1_port, CI => 
                           dp_cluster_3_mult_120_SUMB_3_5_port, CO => 
                           dp_cluster_3_mult_120_CARRYB_7_1_port, S => 
                           dp_cluster_3_mult_120_SUMB_7_1_port);
   dp_cluster_2_mult_117_S3_2_5 : ADD32 port map( A => sig_reg_storage_10_port,
                           B => dp_cluster_2_mult_117_CARRYB_1_5_port, CI => 
                           sig_reg_storage_9_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_2_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_2_5_port);
   dp_cluster_2_mult_117_S3_3_5 : ADD32 port map( A => sig_reg_storage_11_port,
                           B => dp_cluster_2_mult_117_CARRYB_2_5_port, CI => 
                           sig_reg_storage_10_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_3_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_3_5_port);
   dp_cluster_2_mult_117_S3_4_5 : ADD32 port map( A => sig_reg_storage_12_port,
                           B => dp_cluster_2_mult_117_CARRYB_3_5_port, CI => 
                           sig_reg_storage_11_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_4_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_4_5_port);
   dp_cluster_2_mult_117_S3_5_5 : ADD32 port map( A => sig_reg_storage_13_port,
                           B => dp_cluster_2_mult_117_CARRYB_4_5_port, CI => 
                           sig_reg_storage_12_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_5_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_5_5_port);
   dp_cluster_2_mult_117_S2_5_1 : ADD32 port map( A => sig_reg_storage_13_port,
                           B => dp_cluster_2_mult_117_CARRYB_4_1_port, CI => 
                           dp_cluster_2_mult_117_SUMB_1_5_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_5_1_port, S => 
                           dp_cluster_2_mult_117_SUMB_5_1_port);
   dp_cluster_2_mult_117_S3_6_5 : ADD32 port map( A => sig_reg_storage_14_port,
                           B => dp_cluster_2_mult_117_CARRYB_5_5_port, CI => 
                           sig_reg_storage_13_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_6_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_6_5_port);
   dp_cluster_2_mult_117_S2_6_1 : ADD32 port map( A => sig_reg_storage_14_port,
                           B => dp_cluster_2_mult_117_CARRYB_5_1_port, CI => 
                           dp_cluster_2_mult_117_SUMB_2_5_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_6_1_port, S => 
                           dp_cluster_2_mult_117_SUMB_6_1_port);
   dp_cluster_2_mult_117_S5_5 : ADD32 port map( A => sig_reg_storage_15_port, B
                           => dp_cluster_2_mult_117_CARRYB_6_5_port, CI => 
                           sig_reg_storage_14_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_7_5_port, S => 
                           dp_cluster_2_mult_117_SUMB_7_5_port);
   dp_cluster_2_mult_117_S4_1 : ADD32 port map( A => sig_reg_storage_15_port, B
                           => dp_cluster_2_mult_117_CARRYB_6_1_port, CI => 
                           dp_cluster_2_mult_117_SUMB_3_5_port, CO => 
                           dp_cluster_2_mult_117_CARRYB_7_1_port, S => 
                           dp_cluster_2_mult_117_SUMB_7_1_port);
   dp_cluster_1_mult_114_S3_2_5 : ADD32 port map( A => sig_reg_storage_2_port, 
                           B => dp_cluster_1_mult_114_CARRYB_1_5_port, CI => 
                           sig_reg_storage_1_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_2_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_2_5_port);
   dp_cluster_1_mult_114_S3_3_5 : ADD32 port map( A => sig_reg_storage_3_port, 
                           B => dp_cluster_1_mult_114_CARRYB_2_5_port, CI => 
                           sig_reg_storage_2_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_3_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_3_5_port);
   dp_cluster_1_mult_114_S3_4_5 : ADD32 port map( A => sig_reg_storage_4_port, 
                           B => dp_cluster_1_mult_114_CARRYB_3_5_port, CI => 
                           sig_reg_storage_3_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_4_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_4_5_port);
   dp_cluster_1_mult_114_S3_5_5 : ADD32 port map( A => sig_reg_storage_5_port, 
                           B => dp_cluster_1_mult_114_CARRYB_4_5_port, CI => 
                           sig_reg_storage_4_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_5_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_5_5_port);
   dp_cluster_1_mult_114_S2_5_1 : ADD32 port map( A => sig_reg_storage_5_port, 
                           B => dp_cluster_1_mult_114_CARRYB_4_1_port, CI => 
                           dp_cluster_1_mult_114_SUMB_1_5_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_5_1_port, S => 
                           dp_cluster_1_mult_114_SUMB_5_1_port);
   dp_cluster_1_mult_114_S3_6_5 : ADD32 port map( A => sig_reg_storage_6_port, 
                           B => dp_cluster_1_mult_114_CARRYB_5_5_port, CI => 
                           sig_reg_storage_5_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_6_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_6_5_port);
   dp_cluster_1_mult_114_S2_6_1 : ADD32 port map( A => sig_reg_storage_6_port, 
                           B => dp_cluster_1_mult_114_CARRYB_5_1_port, CI => 
                           dp_cluster_1_mult_114_SUMB_2_5_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_6_1_port, S => 
                           dp_cluster_1_mult_114_SUMB_6_1_port);
   dp_cluster_1_mult_114_S5_5 : ADD32 port map( A => sig_reg_storage_7_port, B 
                           => dp_cluster_1_mult_114_CARRYB_6_5_port, CI => 
                           sig_reg_storage_6_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_7_5_port, S => 
                           dp_cluster_1_mult_114_SUMB_7_5_port);
   dp_cluster_1_mult_114_S4_1 : ADD32 port map( A => sig_reg_storage_7_port, B 
                           => dp_cluster_1_mult_114_CARRYB_6_1_port, CI => 
                           dp_cluster_1_mult_114_SUMB_3_5_port, CO => 
                           dp_cluster_1_mult_114_CARRYB_7_1_port, S => 
                           dp_cluster_1_mult_114_SUMB_7_1_port);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_2 : ADD32 port map( A => 
                           dp_cluster_0_N295, B => n285, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_2_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_3_port, 
                           S => N180);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_3 : ADD32 port map( A => 
                           dp_cluster_0_N294, B => n284, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_3_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_4_port, 
                           S => N181);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_4 : ADD32 port map( A => 
                           dp_cluster_0_N293, B => n283, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_4_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_5_port, 
                           S => N182);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_5 : ADD32 port map( A => 
                           dp_cluster_0_N292, B => n282, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_5_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_6_port, 
                           S => N183);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_6 : ADD32 port map( A => 
                           dp_cluster_0_N291, B => n280, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_6_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_7_port, 
                           S => N184);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_7 : ADD32 port map( A => 
                           dp_cluster_0_N290, B => n279, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_7_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_8_port, 
                           S => N185);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_8 : ADD32 port map( A => 
                           dp_cluster_0_N289, B => n277, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_8_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_9_port, 
                           S => N186);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_9 : ADD32 port map( A => 
                           dp_cluster_0_N288, B => n276, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_9_port, CO 
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_10_port,
                           S => N187);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_10 : ADD32 port map( A => 
                           dp_cluster_0_N287, B => n275, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_10_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_11_port,
                           S => N188);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_11 : ADD32 port map( A => 
                           dp_cluster_0_N286, B => n273, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_11_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_12_port,
                           S => N189);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_12 : ADD32 port map( A => 
                           dp_cluster_0_N285, B => n272, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_12_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_13_port,
                           S => N190);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_13 : ADD32 port map( A => 
                           dp_cluster_0_N284, B => n271, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_13_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_14_port,
                           S => N191);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_14 : ADD32 port map( A => 
                           dp_cluster_0_N283, B => n270, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_14_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_15_port,
                           S => N192);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_15 : ADD32 port map( A => 
                           dp_cluster_0_N282, B => n269, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_15_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_16_port,
                           S => N193);
   dp_cluster_0_sub_0_root_sub_235_cf_U2_16 : ADD32 port map( A => 
                           dp_cluster_0_N281, B => n268, CI => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_16_port, CO
                           => dp_cluster_0_sub_0_root_sub_235_cf_carry_17_port,
                           S => N194);
   dp_cluster_0_add_1_root_sub_235_cf_U1_2 : ADD32 port map( A => 
                           dp_cluster_0_N18, B => n265, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_2_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_3_port, 
                           S => dp_cluster_0_N295);
   dp_cluster_0_add_1_root_sub_235_cf_U1_3 : ADD32 port map( A => 
                           dp_cluster_0_N19, B => n264, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_3_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_4_port, 
                           S => dp_cluster_0_N294);
   dp_cluster_0_add_1_root_sub_235_cf_U1_4 : ADD32 port map( A => 
                           dp_cluster_0_N20, B => n263, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_4_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_5_port, 
                           S => dp_cluster_0_N293);
   dp_cluster_0_add_1_root_sub_235_cf_U1_5 : ADD32 port map( A => 
                           dp_cluster_0_N21, B => n262, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_5_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_6_port, 
                           S => dp_cluster_0_N292);
   dp_cluster_0_add_1_root_sub_235_cf_U1_6 : ADD32 port map( A => 
                           dp_cluster_0_N22, B => n260, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_6_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_7_port, 
                           S => dp_cluster_0_N291);
   dp_cluster_0_add_1_root_sub_235_cf_U1_7 : ADD32 port map( A => 
                           dp_cluster_0_N23, B => n259, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_7_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_8_port, 
                           S => dp_cluster_0_N290);
   dp_cluster_0_add_1_root_sub_235_cf_U1_8 : ADD32 port map( A => 
                           dp_cluster_0_N24, B => n257, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_8_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_9_port, 
                           S => dp_cluster_0_N289);
   dp_cluster_0_add_1_root_sub_235_cf_U1_9 : ADD32 port map( A => 
                           dp_cluster_0_N25, B => n256, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_9_port, CO 
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_10_port,
                           S => dp_cluster_0_N288);
   dp_cluster_0_add_1_root_sub_235_cf_U1_10 : ADD32 port map( A => 
                           dp_cluster_0_N26, B => n255, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_10_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_11_port,
                           S => dp_cluster_0_N287);
   dp_cluster_0_add_1_root_sub_235_cf_U1_11 : ADD32 port map( A => 
                           dp_cluster_0_N27, B => n253, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_11_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_12_port,
                           S => dp_cluster_0_N286);
   dp_cluster_0_add_1_root_sub_235_cf_U1_12 : ADD32 port map( A => 
                           dp_cluster_0_N28, B => n252, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_12_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_13_port,
                           S => dp_cluster_0_N285);
   dp_cluster_0_add_1_root_sub_235_cf_U1_13 : ADD32 port map( A => 
                           dp_cluster_0_N29, B => n251, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_13_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_14_port,
                           S => dp_cluster_0_N284);
   dp_cluster_0_add_1_root_sub_235_cf_U1_14 : ADD32 port map( A => 
                           dp_cluster_0_N30, B => n250, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_14_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_15_port,
                           S => dp_cluster_0_N283);
   dp_cluster_0_add_1_root_sub_235_cf_U1_15 : ADD32 port map( A => 
                           dp_cluster_0_N31, B => n138, CI => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_15_port, CO
                           => dp_cluster_0_add_1_root_sub_235_cf_carry_16_port,
                           S => dp_cluster_0_N282);
   dp_cluster_0_add_3_root_sub_235_cf_U1_2 : ADD32 port map( A => 
                           sig_cyclesTrame2_2_port, B => 
                           sig_cyclesTrame3_2_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_2_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_3_port, 
                           S => dp_cluster_0_N38);
   dp_cluster_0_add_3_root_sub_235_cf_U1_3 : ADD32 port map( A => 
                           sig_cyclesTrame2_3_port, B => 
                           sig_cyclesTrame3_3_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_3_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_4_port, 
                           S => dp_cluster_0_N39);
   dp_cluster_0_add_3_root_sub_235_cf_U1_4 : ADD32 port map( A => 
                           sig_cyclesTrame2_4_port, B => 
                           sig_cyclesTrame3_4_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_4_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_5_port, 
                           S => dp_cluster_0_N40);
   dp_cluster_0_add_3_root_sub_235_cf_U1_5 : ADD32 port map( A => 
                           sig_cyclesTrame2_5_port, B => 
                           sig_cyclesTrame3_5_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_5_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_6_port, 
                           S => dp_cluster_0_N41);
   dp_cluster_0_add_3_root_sub_235_cf_U1_6 : ADD32 port map( A => 
                           sig_cyclesTrame2_6_port, B => 
                           sig_cyclesTrame3_6_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_6_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_7_port, 
                           S => dp_cluster_0_N42);
   dp_cluster_0_add_3_root_sub_235_cf_U1_7 : ADD32 port map( A => 
                           sig_cyclesTrame2_7_port, B => 
                           sig_cyclesTrame3_7_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_7_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_8_port, 
                           S => dp_cluster_0_N43);
   dp_cluster_0_add_3_root_sub_235_cf_U1_8 : ADD32 port map( A => 
                           sig_cyclesTrame2_8_port, B => 
                           sig_cyclesTrame3_8_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_8_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_9_port, 
                           S => dp_cluster_0_N44);
   dp_cluster_0_add_3_root_sub_235_cf_U1_9 : ADD32 port map( A => 
                           sig_cyclesTrame2_9_port, B => 
                           sig_cyclesTrame3_9_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_9_port, CO 
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_10_port,
                           S => dp_cluster_0_N45);
   dp_cluster_0_add_3_root_sub_235_cf_U1_10 : ADD32 port map( A => 
                           sig_cyclesTrame2_10_port, B => 
                           sig_cyclesTrame3_10_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_10_port, CO
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_11_port,
                           S => dp_cluster_0_N46);
   dp_cluster_0_add_3_root_sub_235_cf_U1_11 : ADD32 port map( A => 
                           sig_cyclesTrame2_11_port, B => 
                           sig_cyclesTrame3_11_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_11_port, CO
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_12_port,
                           S => dp_cluster_0_N47);
   dp_cluster_0_add_3_root_sub_235_cf_U1_12 : ADD32 port map( A => 
                           sig_cyclesTrame2_12_port, B => 
                           sig_cyclesTrame3_12_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_12_port, CO
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_13_port,
                           S => dp_cluster_0_N48);
   dp_cluster_0_add_3_root_sub_235_cf_U1_13 : ADD32 port map( A => 
                           sig_cyclesTrame2_13_port, B => 
                           sig_cyclesTrame3_13_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_13_port, CO
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_14_port,
                           S => dp_cluster_0_N49);
   dp_cluster_0_add_3_root_sub_235_cf_U1_14 : ADD32 port map( A => 
                           sig_cyclesTrame2_14_port, B => 
                           sig_cyclesTrame3_14_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_14_port, CO
                           => dp_cluster_0_add_3_root_sub_235_cf_carry_15_port,
                           S => dp_cluster_0_N50);
   dp_cluster_0_add_3_root_sub_235_cf_U1_15 : ADD32 port map( A => 
                           sig_cyclesTrame2_15_port, B => 
                           sig_cyclesTrame3_15_port, CI => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_15_port, CO
                           => dp_cluster_0_N52, S => dp_cluster_0_N51);
   current_state_reg_0_inst : DF3 port map( D => N81, C => i_clk, Q => 
                           current_state_0_port, QN => n131);
   current_state_reg_1_inst : DF3 port map( D => N82, C => i_clk, Q => 
                           current_state_1_port, QN => n130);
   current_state_reg_2_inst : DF3 port map( D => n241, C => i_clk, Q => 
                           current_state_2_port, QN => n_1000);
   sig_out_ppm_reg : DF3 port map( D => n240, C => i_clk, Q => o_ppm, QN => 
                           n_1001);
   local_counter1_o_count_reg_0_inst : DF3 port map( D => local_counter1_N46, C
                           => i_clk, Q => sig_out_local_count_0_port, QN => 
                           n111);
   local_counter1_o_count_reg_1_inst : DF3 port map( D => local_counter1_N47, C
                           => i_clk, Q => sig_out_local_count_1_port, QN => 
                           n129);
   local_counter1_o_count_reg_2_inst : DF3 port map( D => local_counter1_N48, C
                           => i_clk, Q => sig_out_local_count_2_port, QN => 
                           n_1002);
   local_counter1_o_count_reg_3_inst : DF3 port map( D => local_counter1_N49, C
                           => i_clk, Q => sig_out_local_count_3_port, QN => 
                           n_1003);
   local_counter1_o_count_reg_4_inst : DF3 port map( D => local_counter1_N50, C
                           => i_clk, Q => sig_out_local_count_4_port, QN => 
                           n_1004);
   local_counter1_o_count_reg_5_inst : DF3 port map( D => local_counter1_N51, C
                           => i_clk, Q => sig_out_local_count_5_port, QN => 
                           n_1005);
   local_counter1_o_count_reg_6_inst : DF3 port map( D => local_counter1_N52, C
                           => i_clk, Q => sig_out_local_count_6_port, QN => 
                           n_1006);
   local_counter1_o_count_reg_7_inst : DF3 port map( D => local_counter1_N53, C
                           => i_clk, Q => sig_out_local_count_7_port, QN => 
                           n_1007);
   local_counter1_o_count_reg_8_inst : DF3 port map( D => local_counter1_N54, C
                           => i_clk, Q => sig_out_local_count_8_port, QN => 
                           n_1008);
   local_counter1_o_count_reg_9_inst : DF3 port map( D => local_counter1_N55, C
                           => i_clk, Q => sig_out_local_count_9_port, QN => 
                           n_1009);
   local_counter1_o_count_reg_10_inst : DF3 port map( D => local_counter1_N56, 
                           C => i_clk, Q => sig_out_local_count_10_port, QN => 
                           n_1010);
   local_counter1_o_count_reg_11_inst : DF3 port map( D => local_counter1_N57, 
                           C => i_clk, Q => sig_out_local_count_11_port, QN => 
                           n_1011);
   local_counter1_o_count_reg_12_inst : DF3 port map( D => local_counter1_N58, 
                           C => i_clk, Q => sig_out_local_count_12_port, QN => 
                           n_1012);
   local_counter1_o_count_reg_13_inst : DF3 port map( D => local_counter1_N59, 
                           C => i_clk, Q => sig_out_local_count_13_port, QN => 
                           n_1013);
   local_counter1_o_count_reg_14_inst : DF3 port map( D => local_counter1_N60, 
                           C => i_clk, Q => sig_out_local_count_14_port, QN => 
                           n_1014);
   local_counter1_o_count_reg_15_inst : DF3 port map( D => local_counter1_N61, 
                           C => i_clk, Q => sig_out_local_count_15_port, QN => 
                           n_1015);
   local_counter1_o_count_reg_16_inst : DF3 port map( D => local_counter1_N62, 
                           C => i_clk, Q => sig_out_local_count_16_port, QN => 
                           n126);
   local_counter1_o_count_reg_17_inst : DF3 port map( D => local_counter1_N63, 
                           C => i_clk, Q => sig_out_local_count_17_port, QN => 
                           n_1016);
   local_counter1_o_count_reg_18_inst : DF3 port map( D => local_counter1_N64, 
                           C => i_clk, Q => sig_out_local_count_18_port, QN => 
                           n_1017);
   local_counter1_o_count_reg_19_inst : DF3 port map( D => local_counter1_N65, 
                           C => i_clk, Q => sig_out_local_count_19_port, QN => 
                           n_1018);
   local_counter1_v_val_reg_19_inst : DF3 port map( D => local_counter1_N65, C 
                           => i_clk, Q => local_counter1_v_val_19_port, QN => 
                           n_1019);
   local_counter1_v_val_reg_18_inst : DF3 port map( D => local_counter1_N64, C 
                           => i_clk, Q => local_counter1_v_val_18_port, QN => 
                           n_1020);
   local_counter1_v_val_reg_17_inst : DF3 port map( D => local_counter1_N63, C 
                           => i_clk, Q => local_counter1_v_val_17_port, QN => 
                           n_1021);
   local_counter1_v_val_reg_16_inst : DF3 port map( D => local_counter1_N62, C 
                           => i_clk, Q => local_counter1_v_val_16_port, QN => 
                           n_1022);
   local_counter1_v_val_reg_15_inst : DF3 port map( D => local_counter1_N61, C 
                           => i_clk, Q => local_counter1_v_val_15_port, QN => 
                           n_1023);
   local_counter1_v_val_reg_14_inst : DF3 port map( D => local_counter1_N60, C 
                           => i_clk, Q => local_counter1_v_val_14_port, QN => 
                           n_1024);
   local_counter1_v_val_reg_13_inst : DF3 port map( D => local_counter1_N59, C 
                           => i_clk, Q => local_counter1_v_val_13_port, QN => 
                           n_1025);
   local_counter1_v_val_reg_12_inst : DF3 port map( D => local_counter1_N58, C 
                           => i_clk, Q => local_counter1_v_val_12_port, QN => 
                           n_1026);
   local_counter1_v_val_reg_11_inst : DF3 port map( D => local_counter1_N57, C 
                           => i_clk, Q => local_counter1_v_val_11_port, QN => 
                           n_1027);
   local_counter1_v_val_reg_10_inst : DF3 port map( D => local_counter1_N56, C 
                           => i_clk, Q => local_counter1_v_val_10_port, QN => 
                           n_1028);
   local_counter1_v_val_reg_9_inst : DF3 port map( D => local_counter1_N55, C 
                           => i_clk, Q => local_counter1_v_val_9_port, QN => 
                           n_1029);
   local_counter1_v_val_reg_8_inst : DF3 port map( D => local_counter1_N54, C 
                           => i_clk, Q => local_counter1_v_val_8_port, QN => 
                           n_1030);
   local_counter1_v_val_reg_7_inst : DF3 port map( D => local_counter1_N53, C 
                           => i_clk, Q => local_counter1_v_val_7_port, QN => 
                           n_1031);
   local_counter1_v_val_reg_6_inst : DF3 port map( D => local_counter1_N52, C 
                           => i_clk, Q => local_counter1_v_val_6_port, QN => 
                           n_1032);
   local_counter1_v_val_reg_5_inst : DF3 port map( D => local_counter1_N51, C 
                           => i_clk, Q => local_counter1_v_val_5_port, QN => 
                           n_1033);
   local_counter1_v_val_reg_4_inst : DF3 port map( D => local_counter1_N50, C 
                           => i_clk, Q => local_counter1_v_val_4_port, QN => 
                           n_1034);
   local_counter1_v_val_reg_3_inst : DF3 port map( D => local_counter1_N49, C 
                           => i_clk, Q => local_counter1_v_val_3_port, QN => 
                           n_1035);
   local_counter1_v_val_reg_2_inst : DF3 port map( D => local_counter1_N48, C 
                           => i_clk, Q => local_counter1_v_val_2_port, QN => 
                           n_1036);
   local_counter1_v_val_reg_1_inst : DF3 port map( D => local_counter1_N47, C 
                           => i_clk, Q => local_counter1_v_val_1_port, QN => 
                           n_1037);
   local_counter1_v_val_reg_0_inst : DF3 port map( D => local_counter1_N46, C 
                           => i_clk, Q => local_counter1_v_val_0_port, QN => 
                           n_1038);
   sig_state_reg_2_inst : DFE1 port map( D => n237, E => N204, C => i_clk, Q =>
                           sig_state_2_port, QN => n_1039);
   sig_state_reg_1_inst : DFE1 port map( D => N79, E => N204, C => i_clk, Q => 
                           sig_state_1_port, QN => n127);
   sig_state_reg_0_inst : DFE1 port map( D => N78, E => N204, C => i_clk, Q => 
                           sig_state_0_port, QN => n110);
   sig_reg_storage_reg_30_inst : DFE1 port map( D => i_reg(30), E => n236, C =>
                           i_clk, Q => sig_reg_storage_30_port, QN => n_1040);
   sig_reg_storage_reg_29_inst : DFE1 port map( D => i_reg(29), E => n236, C =>
                           i_clk, Q => sig_reg_storage_29_port, QN => n_1041);
   sig_reg_storage_reg_22_inst : DFE1 port map( D => i_reg(22), E => n235, C =>
                           i_clk, Q => sig_reg_storage_22_port, QN => n_1042);
   sig_reg_storage_reg_14_inst : DFE1 port map( D => i_reg(14), E => n234, C =>
                           i_clk, Q => sig_reg_storage_14_port, QN => n_1043);
   sig_reg_storage_reg_6_inst : DFE1 port map( D => i_reg(6), E => n232, C => 
                           i_clk, Q => sig_reg_storage_6_port, QN => n_1044);
   sig_reg_storage_reg_21_inst : DFE1 port map( D => i_reg(21), E => n235, C =>
                           i_clk, Q => sig_reg_storage_21_port, QN => n_1045);
   sig_reg_storage_reg_13_inst : DFE1 port map( D => i_reg(13), E => n233, C =>
                           i_clk, Q => sig_reg_storage_13_port, QN => n_1046);
   sig_reg_storage_reg_5_inst : DFE1 port map( D => i_reg(5), E => n232, C => 
                           i_clk, Q => sig_reg_storage_5_port, QN => n_1047);
   sig_reg_storage_reg_28_inst : DFE1 port map( D => i_reg(28), E => n236, C =>
                           i_clk, Q => sig_reg_storage_28_port, QN => n114);
   sig_reg_storage_reg_20_inst : DFE1 port map( D => i_reg(20), E => n234, C =>
                           i_clk, Q => sig_reg_storage_20_port, QN => n106);
   sig_reg_storage_reg_12_inst : DFE1 port map( D => i_reg(12), E => n233, C =>
                           i_clk, Q => sig_reg_storage_12_port, QN => n107);
   sig_reg_storage_reg_27_inst : DFE1 port map( D => i_reg(27), E => n235, C =>
                           i_clk, Q => sig_reg_storage_27_port, QN => n_1048);
   sig_reg_storage_reg_26_inst : DFE1 port map( D => i_reg(26), E => n235, C =>
                           i_clk, Q => sig_reg_storage_26_port, QN => n_1049);
   sig_reg_storage_reg_19_inst : DFE1 port map( D => i_reg(19), E => n234, C =>
                           i_clk, Q => sig_reg_storage_19_port, QN => n_1050);
   sig_reg_storage_reg_18_inst : DFE1 port map( D => i_reg(18), E => n234, C =>
                           i_clk, Q => sig_reg_storage_18_port, QN => n_1051);
   sig_reg_storage_reg_11_inst : DFE1 port map( D => i_reg(11), E => n233, C =>
                           i_clk, Q => sig_reg_storage_11_port, QN => n_1052);
   sig_reg_storage_reg_10_inst : DFE1 port map( D => i_reg(10), E => n233, C =>
                           i_clk, Q => sig_reg_storage_10_port, QN => n_1053);
   sig_reg_storage_reg_3_inst : DFE1 port map( D => i_reg(3), E => n232, C => 
                           i_clk, Q => sig_reg_storage_3_port, QN => n_1054);
   sig_reg_storage_reg_4_inst : DFE1 port map( D => i_reg(4), E => n232, C => 
                           i_clk, Q => sig_reg_storage_4_port, QN => n112);
   sig_reg_storage_reg_2_inst : DFE1 port map( D => i_reg(2), E => n232, C => 
                           i_clk, Q => sig_reg_storage_2_port, QN => n_1055);
   sig_reg_storage_reg_15_inst : DFE1 port map( D => i_reg(15), E => n234, C =>
                           i_clk, Q => sig_reg_storage_15_port, QN => n125);
   sig_reg_storage_reg_31_inst : DFE1 port map( D => i_reg(31), E => n236, C =>
                           i_clk, Q => sig_reg_storage_31_port, QN => n124);
   sig_reg_storage_reg_23_inst : DFE1 port map( D => i_reg(23), E => n235, C =>
                           i_clk, Q => sig_reg_storage_23_port, QN => n123);
   sig_reg_storage_reg_7_inst : DFE1 port map( D => i_reg(7), E => n233, C => 
                           i_clk, Q => sig_reg_storage_7_port, QN => n122);
   sig_reg_storage_reg_9_inst : DFE1 port map( D => i_reg(9), E => n233, C => 
                           i_clk, Q => sig_reg_storage_9_port, QN => n121);
   sig_reg_storage_reg_17_inst : DFE1 port map( D => i_reg(17), E => n234, C =>
                           i_clk, Q => sig_reg_storage_17_port, QN => n120);
   sig_reg_storage_reg_25_inst : DFE1 port map( D => i_reg(25), E => n235, C =>
                           i_clk, Q => sig_reg_storage_25_port, QN => n119);
   sig_reg_storage_reg_8_inst : DFE1 port map( D => i_reg(8), E => n233, C => 
                           i_clk, Q => sig_reg_storage_8_port, QN => n118);
   sig_reg_storage_reg_16_inst : DFE1 port map( D => i_reg(16), E => n234, C =>
                           i_clk, Q => sig_reg_storage_16_port, QN => n117);
   sig_reg_storage_reg_1_inst : DFE1 port map( D => i_reg(1), E => n232, C => 
                           i_clk, Q => sig_reg_storage_1_port, QN => n113);
   sig_reg_storage_reg_24_inst : DFE1 port map( D => i_reg(24), E => n235, C =>
                           i_clk, Q => sig_reg_storage_24_port, QN => n128);
   sig_reg_storage_reg_0_inst : DFE1 port map( D => i_reg(0), E => n232, C => 
                           i_clk, Q => sig_reg_storage_0_port, QN => n115);
   U87 : NOR21 port map( A => n230, B => n133, Q => local_counter1_N65);
   U88 : MUX22 port map( A => dp_cluster_1_mult_114_SUMB_5_5_port, B => n303, S
                           => dp_cluster_1_mult_114_A2_8_port, Q => n105);
   U89 : MUX22 port map( A => dp_cluster_3_mult_120_SUMB_5_5_port, B => n281, S
                           => dp_cluster_3_mult_120_A2_8_port, Q => n108);
   U90 : MUX22 port map( A => dp_cluster_2_mult_117_SUMB_5_5_port, B => n289, S
                           => dp_cluster_2_mult_117_A2_8_port, Q => n109);
   U91 : MUX22 port map( A => dp_cluster_4_mult_123_SUMB_5_5_port, B => n261, S
                           => dp_cluster_4_mult_123_A2_8_port, Q => n116);
   U92 : XNR21 port map( A => n291, B => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_18_port, Q 
                           => dp_cluster_0_N279);
   U93 : XNR21 port map( A => dp_cluster_0_N279, B => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_18_port, Q 
                           => N196);
   U94 : INV3 port map( A => dp_cluster_0_N48, Q => n272);
   U95 : NOR21 port map( A => dp_cluster_0_sub_0_root_sub_235_cf_carry_18_port,
                           B => dp_cluster_0_N279, Q => n159);
   U96 : INV3 port map( A => n162, Q => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_19_port);
   U97 : NOR21 port map( A => dp_cluster_0_add_1_root_sub_235_cf_carry_18_port,
                           B => n291, Q => n162);
   U98 : NOR21 port map( A => sig_cyclesTrame1_12_port, B => n225, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_13_port);
   U99 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_12_port, 
                           Q => n225);
   U100 : XNR21 port map( A => n291, B => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_17_port, Q 
                           => dp_cluster_0_N280);
   U101 : INV3 port map( A => sig_cyclesTrame4_12_port, Q => n252);
   U102 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_12_port
                           , B => n294, Q => dp_cluster_0_N28);
   U103 : INV3 port map( A => dp_cluster_0_N45, Q => n276);
   U104 : INV3 port map( A => dp_cluster_0_N46, Q => n275);
   U105 : INV3 port map( A => dp_cluster_0_N47, Q => n273);
   U106 : INV3 port map( A => dp_cluster_0_N49, Q => n271);
   U107 : INV3 port map( A => sig_cyclesTrame1_12_port, Q => n294);
   U108 : INV3 port map( A => n158, Q => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_18_port);
   U109 : NOR21 port map( A => dp_cluster_0_sub_0_root_sub_235_cf_carry_17_port
                           , B => dp_cluster_0_N280, Q => n158);
   U110 : INV3 port map( A => n164, Q => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_18_port);
   U111 : NOR21 port map( A => dp_cluster_0_add_1_root_sub_235_cf_carry_17_port
                           , B => n291, Q => n164);
   U112 : NOR21 port map( A => sig_cyclesTrame1_13_port, B => n226, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_14_port);
   U113 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_13_port,
                           Q => n226);
   U114 : NOR21 port map( A => sig_cyclesTrame1_11_port, B => n224, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_12_port);
   U115 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_11_port,
                           Q => n224);
   U116 : NOR21 port map( A => sig_cyclesTrame1_10_port, B => n157, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_11_port);
   U117 : INV3 port map( A => n157, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_10_port);
   U118 : NOR21 port map( A => n298, B => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_9_port, Q 
                           => n157);
   U119 : INV3 port map( A => dp_cluster_0_N35, Q => n291);
   U120 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_12_port, B => 
                           dp_cluster_1_N265, Q => sig_cyclesTrame1_12_port);
   U121 : INV3 port map( A => dp_cluster_0_N52, Q => n268);
   U122 : XNR21 port map( A => n291, B => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_16_port, Q 
                           => dp_cluster_0_N281);
   U123 : INV3 port map( A => sig_cyclesTrame4_10_port, Q => n255);
   U124 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_10_port
                           , B => n297, Q => dp_cluster_0_N26);
   U125 : INV3 port map( A => sig_cyclesTrame4_9_port, Q => n256);
   U126 : XNR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_9_port,
                           B => n298, Q => dp_cluster_0_N25);
   U127 : INV3 port map( A => sig_cyclesTrame4_13_port, Q => n251);
   U128 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_13_port
                           , B => n293, Q => dp_cluster_0_N29);
   U129 : INV3 port map( A => sig_cyclesTrame4_11_port, Q => n253);
   U130 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_11_port
                           , B => n295, Q => dp_cluster_0_N27);
   U131 : INV3 port map( A => dp_cluster_0_N41, Q => n282);
   U132 : INV3 port map( A => dp_cluster_0_N42, Q => n280);
   U133 : INV3 port map( A => dp_cluster_0_N43, Q => n279);
   U134 : INV3 port map( A => dp_cluster_0_N44, Q => n277);
   U135 : INV3 port map( A => dp_cluster_0_N50, Q => n270);
   U136 : INV3 port map( A => dp_cluster_0_N51, Q => n269);
   U137 : INV3 port map( A => sig_cyclesTrame1_11_port, Q => n295);
   U138 : INV3 port map( A => n163_port, Q => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_17_port);
   U139 : NOR21 port map( A => dp_cluster_0_add_1_root_sub_235_cf_carry_16_port
                           , B => n291, Q => n163_port);
   U140 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_12_port, B => 
                           dp_cluster_2_N250, Q => sig_cyclesTrame2_12_port);
   U141 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_12_port, B => 
                           dp_cluster_3_N235, Q => sig_cyclesTrame3_12_port);
   U142 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_12_port, B => 
                           dp_cluster_4_N220, Q => sig_cyclesTrame4_12_port);
   U143 : NOR21 port map( A => sig_cyclesTrame1_5_port, B => n223, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_6_port);
   U144 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_5_port, 
                           Q => n223);
   U145 : NOR21 port map( A => sig_cyclesTrame1_8_port, B => n156_port, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_9_port);
   U146 : NOR21 port map( A => n186_port, B => n187_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_13_port);
   U147 : INV3 port map( A => dp_cluster_3_sub_120_cf_carry_12_port, Q => 
                           n186_port);
   U148 : INV3 port map( A => dp_cluster_3_N235, Q => n187_port);
   U149 : NOR21 port map( A => n200, B => n201, Q => 
                           dp_cluster_2_sub_117_cf_carry_13_port);
   U150 : INV3 port map( A => dp_cluster_2_sub_117_cf_carry_12_port, Q => n200)
                           ;
   U151 : INV3 port map( A => dp_cluster_2_N250, Q => n201);
   U152 : NOR21 port map( A => sig_cyclesTrame1_14_port, B => n227, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_15_port);
   U153 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_14_port,
                           Q => n227);
   U154 : INV3 port map( A => sig_cyclesTrame1_9_port, Q => n298);
   U155 : INV3 port map( A => sig_cyclesTrame1_13_port, Q => n293);
   U156 : INV3 port map( A => sig_cyclesTrame1_10_port, Q => n297);
   U157 : NOR21 port map( A => n214, B => n215, Q => 
                           dp_cluster_1_sub_114_cf_carry_13_port);
   U158 : INV3 port map( A => dp_cluster_1_sub_114_cf_carry_12_port, Q => n214)
                           ;
   U159 : INV3 port map( A => dp_cluster_1_N265, Q => n215);
   U160 : NOR21 port map( A => n172, B => n173, Q => 
                           dp_cluster_4_sub_123_cf_carry_13_port);
   U161 : INV3 port map( A => dp_cluster_4_sub_123_cf_carry_12_port, Q => n172)
                           ;
   U162 : INV3 port map( A => dp_cluster_4_N220, Q => n173);
   U163 : INV3 port map( A => n155, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_7_port);
   U164 : NOR21 port map( A => n302, B => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_6_port, Q 
                           => n155);
   U165 : INV3 port map( A => n156_port, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_8_port);
   U166 : NOR21 port map( A => n301, B => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_7_port, Q 
                           => n156_port);
   U167 : NOR21 port map( A => sig_cyclesTrame1_15_port, B => n228, Q => 
                           dp_cluster_0_N35);
   U168 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_15_port,
                           Q => n228);
   U169 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_11_port, B => 
                           dp_cluster_1_N266, Q => sig_cyclesTrame1_11_port);
   U170 : XOR21 port map( A => n458, B => n300, Q => dp_cluster_1_N265);
   U171 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_15_port
                           , B => n153, Q => dp_cluster_0_N31);
   U172 : INV3 port map( A => sig_cyclesTrame4_6_port, Q => n260);
   U173 : XNR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_6_port,
                           B => n302, Q => dp_cluster_0_N22);
   U174 : INV3 port map( A => sig_cyclesTrame4_14_port, Q => n250);
   U175 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_14_port
                           , B => n292, Q => dp_cluster_0_N30);
   U176 : INV3 port map( A => sig_cyclesTrame4_5_port, Q => n262);
   U177 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_5_port,
                           B => n304, Q => dp_cluster_0_N21);
   U178 : INV3 port map( A => sig_cyclesTrame4_7_port, Q => n259);
   U179 : XNR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_7_port,
                           B => n301, Q => dp_cluster_0_N23);
   U180 : INV3 port map( A => sig_cyclesTrame4_8_port, Q => n257);
   U181 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_8_port,
                           B => n299, Q => dp_cluster_0_N24);
   U182 : INV3 port map( A => dp_cluster_0_N39, Q => n284);
   U183 : INV3 port map( A => dp_cluster_0_N40, Q => n283);
   U184 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_13_port, B => 
                           dp_cluster_2_N249, Q => sig_cyclesTrame2_13_port);
   U185 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_11_port, B => 
                           dp_cluster_2_N251, Q => sig_cyclesTrame2_11_port);
   U186 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_13_port, B => 
                           dp_cluster_3_N234, Q => sig_cyclesTrame3_13_port);
   U187 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_11_port, B => 
                           dp_cluster_3_N236, Q => sig_cyclesTrame3_11_port);
   U188 : XNR21 port map( A => dp_cluster_3_sub_120_cf_carry_10_port, B => n108
                           , Q => sig_cyclesTrame3_10_port);
   U189 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_9_port, B => 
                           dp_cluster_1_N268, Q => sig_cyclesTrame1_9_port);
   U190 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_9_port, B => 
                           dp_cluster_4_N223, Q => sig_cyclesTrame4_9_port);
   U191 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_13_port, B => 
                           dp_cluster_1_N264, Q => sig_cyclesTrame1_13_port);
   U192 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_13_port, B => 
                           dp_cluster_4_N219, Q => sig_cyclesTrame4_13_port);
   U193 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_11_port, B => 
                           dp_cluster_4_N221, Q => sig_cyclesTrame4_11_port);
   U194 : XOR21 port map( A => n476, B => n258, Q => dp_cluster_4_N220);
   U195 : XOR21 port map( A => n470, B => n278, Q => dp_cluster_3_N235);
   U196 : XOR21 port map( A => n464, B => n288, Q => dp_cluster_2_N250);
   U197 : XNR21 port map( A => dp_cluster_1_sub_114_cf_carry_10_port, B => n105
                           , Q => sig_cyclesTrame1_10_port);
   U198 : XNR21 port map( A => dp_cluster_4_sub_123_cf_carry_10_port, B => n116
                           , Q => sig_cyclesTrame4_10_port);
   U199 : NOR21 port map( A => n216, B => n217, Q => 
                           dp_cluster_1_sub_114_cf_carry_14_port);
   U200 : INV3 port map( A => dp_cluster_1_N264, Q => n217);
   U201 : INV3 port map( A => dp_cluster_1_sub_114_cf_carry_13_port, Q => n216)
                           ;
   U202 : NOR21 port map( A => n137, B => n171, Q => 
                           dp_cluster_4_sub_123_cf_carry_12_port);
   U203 : INV3 port map( A => dp_cluster_4_N221, Q => n171);
   U204 : NOR21 port map( A => n142, B => n185_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_12_port);
   U205 : INV3 port map( A => dp_cluster_3_N236, Q => n185_port);
   U206 : NOR21 port map( A => n147, B => n199, Q => 
                           dp_cluster_2_sub_117_cf_carry_12_port);
   U207 : INV3 port map( A => dp_cluster_2_N251, Q => n199);
   U208 : NOR21 port map( A => sig_cyclesTrame1_4_port, B => n222, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_5_port);
   U209 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_4_port, 
                           Q => n222);
   U210 : INV3 port map( A => sig_cyclesTrame1_7_port, Q => n301);
   U211 : INV3 port map( A => sig_cyclesTrame1_8_port, Q => n299);
   U212 : INV3 port map( A => sig_cyclesTrame1_5_port, Q => n304);
   U213 : INV3 port map( A => sig_cyclesTrame1_6_port, Q => n302);
   U214 : INV3 port map( A => sig_cyclesTrame1_14_port, Q => n292);
   U215 : NOR21 port map( A => n211, B => n212, Q => 
                           dp_cluster_1_sub_114_cf_carry_10_port);
   U216 : INV3 port map( A => dp_cluster_1_sub_114_cf_carry_9_port, Q => n211);
   U217 : INV3 port map( A => dp_cluster_1_N268, Q => n212);
   U218 : NOR21 port map( A => n152, B => n213, Q => 
                           dp_cluster_1_sub_114_cf_carry_12_port);
   U219 : INV3 port map( A => dp_cluster_1_N266, Q => n213);
   U220 : INV3 port map( A => n152, Q => dp_cluster_1_sub_114_cf_carry_11_port)
                           ;
   U221 : NOR21 port map( A => n105, B => dp_cluster_1_sub_114_cf_carry_10_port
                           , Q => n152);
   U222 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_9_port, B => 
                           dp_cluster_2_N253, Q => sig_cyclesTrame2_9_port);
   U223 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_9_port, B => 
                           dp_cluster_3_N238, Q => sig_cyclesTrame3_9_port);
   U224 : XNR21 port map( A => dp_cluster_2_sub_117_cf_carry_10_port, B => n109
                           , Q => sig_cyclesTrame2_10_port);
   U225 : NOR21 port map( A => n183_port, B => n184_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_10_port);
   U226 : INV3 port map( A => dp_cluster_3_sub_120_cf_carry_9_port, Q => 
                           n183_port);
   U227 : INV3 port map( A => dp_cluster_3_N238, Q => n184_port);
   U228 : NOR21 port map( A => n197_port, B => n198_port, Q => 
                           dp_cluster_2_sub_117_cf_carry_10_port);
   U229 : INV3 port map( A => dp_cluster_2_sub_117_cf_carry_9_port, Q => 
                           n197_port);
   U230 : INV3 port map( A => dp_cluster_2_N253, Q => n198_port);
   U231 : NOR21 port map( A => n174, B => n175, Q => 
                           dp_cluster_4_sub_123_cf_carry_14_port);
   U232 : INV3 port map( A => dp_cluster_4_N219, Q => n175);
   U233 : INV3 port map( A => dp_cluster_4_sub_123_cf_carry_13_port, Q => n174)
                           ;
   U234 : NOR21 port map( A => n188_port, B => n189_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_14_port);
   U235 : INV3 port map( A => dp_cluster_3_N234, Q => n189_port);
   U236 : INV3 port map( A => dp_cluster_3_sub_120_cf_carry_13_port, Q => 
                           n188_port);
   U237 : NOR21 port map( A => n202, B => n203, Q => 
                           dp_cluster_2_sub_117_cf_carry_14_port);
   U238 : INV3 port map( A => dp_cluster_2_N249, Q => n203);
   U239 : INV3 port map( A => dp_cluster_2_sub_117_cf_carry_13_port, Q => n202)
                           ;
   U240 : INV3 port map( A => n137, Q => dp_cluster_4_sub_123_cf_carry_11_port)
                           ;
   U241 : NOR21 port map( A => n116, B => dp_cluster_4_sub_123_cf_carry_10_port
                           , Q => n137);
   U242 : INV3 port map( A => n142, Q => dp_cluster_3_sub_120_cf_carry_11_port)
                           ;
   U243 : NOR21 port map( A => n108, B => dp_cluster_3_sub_120_cf_carry_10_port
                           , Q => n142);
   U244 : INV3 port map( A => n147, Q => dp_cluster_2_sub_117_cf_carry_11_port)
                           ;
   U245 : NOR21 port map( A => n109, B => dp_cluster_2_sub_117_cf_carry_10_port
                           , Q => n147);
   U246 : NOR21 port map( A => n169_port, B => n170, Q => 
                           dp_cluster_4_sub_123_cf_carry_10_port);
   U247 : INV3 port map( A => dp_cluster_4_N223, Q => n170);
   U248 : INV3 port map( A => dp_cluster_4_sub_123_cf_carry_9_port, Q => 
                           n169_port);
   U249 : BUF2 port map( A => n244, Q => n232);
   U250 : BUF2 port map( A => n244, Q => n233);
   U251 : BUF2 port map( A => n244, Q => n234);
   U252 : BUF2 port map( A => n244, Q => n235);
   U253 : BUF2 port map( A => n244, Q => n236);
   U254 : NOR40 port map( A => n249, B => n452, C => n451, D => n450, Q => N198
                           );
   U255 : NAND31 port map( A => n447, B => n446, C => n445, Q => n451);
   U256 : NAND22 port map( A => n449, B => n448, Q => n450);
   U257 : INV3 port map( A => n438, Q => n249);
   U258 : NAND41 port map( A => n266, B => n444, C => n443, D => n442, Q => 
                           n452);
   U259 : NAND22 port map( A => n129, B => N179, Q => n444);
   U260 : INV3 port map( A => n439, Q => n266);
   U261 : NOR21 port map( A => n441, B => n440, Q => n442);
   U262 : XOR21 port map( A => n296, B => dp_cluster_1_mult_114_SUMB_6_5_port, 
                           Q => dp_cluster_1_N266);
   U263 : NOR40 port map( A => n437, B => n436, C => n435, D => n434, Q => n438
                           );
   U264 : NAND31 port map( A => n426, B => n425, C => n424, Q => n437);
   U265 : NAND22 port map( A => n428, B => n427, Q => n436);
   U266 : NAND31 port map( A => n431, B => n430, C => n429, Q => n435);
   U267 : NOR21 port map( A => sig_cyclesTrame1_3_port, B => n221, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_4_port);
   U268 : INV3 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_3_port, 
                           Q => n221);
   U269 : INV3 port map( A => sig_cyclesTrame4_3_port, Q => n264);
   U270 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_3_port,
                           B => n306, Q => dp_cluster_0_N19);
   U271 : INV3 port map( A => sig_cyclesTrame4_4_port, Q => n263);
   U272 : XOR21 port map( A => dp_cluster_0_sub_4_root_sub_235_cf_carry_4_port,
                           B => n305, Q => dp_cluster_0_N20);
   U273 : INV3 port map( A => n161, Q => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_2_port);
   U274 : INV3 port map( A => dp_cluster_0_N38, Q => n285);
   U275 : NOR21 port map( A => n132, B => dp_cluster_0_N296, Q => n161);
   U276 : INV3 port map( A => n154, Q => 
                           dp_cluster_0_add_3_root_sub_235_cf_carry_2_port);
   U277 : NOR21 port map( A => n117, B => n118, Q => n154);
   U278 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_7_5_port, Q => n300);
   U279 : BUF2 port map( A => local_counter1_n22, Q => n230);
   U280 : BUF2 port map( A => local_counter1_n22, Q => n229);
   U281 : INV3 port map( A => sig_cyclesTrame1_2_port, Q => n307);
   U282 : INV3 port map( A => sig_cyclesTrame1_3_port, Q => n306);
   U283 : INV3 port map( A => sig_cyclesTrame1_4_port, Q => n305);
   U284 : BUF2 port map( A => local_counter1_n22, Q => n231);
   U285 : NOR21 port map( A => n230, B => n311, Q => local_counter1_N63);
   U286 : INV3 port map( A => local_counter1_N23, Q => n311);
   U287 : NOR21 port map( A => n230, B => n313, Q => local_counter1_N61);
   U288 : INV3 port map( A => local_counter1_N21, Q => n313);
   U289 : NOR21 port map( A => n230, B => n315, Q => local_counter1_N59);
   U290 : INV3 port map( A => local_counter1_N19, Q => n315);
   U291 : NOR21 port map( A => n230, B => n317, Q => local_counter1_N57);
   U292 : INV3 port map( A => local_counter1_N17, Q => n317);
   U293 : NOR21 port map( A => n230, B => n319, Q => local_counter1_N55);
   U294 : INV3 port map( A => local_counter1_N15, Q => n319);
   U295 : NOR21 port map( A => n230, B => n321, Q => local_counter1_N53);
   U296 : INV3 port map( A => local_counter1_N13, Q => n321);
   U297 : NOR21 port map( A => n229, B => n322, Q => local_counter1_N52);
   U298 : INV3 port map( A => local_counter1_N12, Q => n322);
   U299 : NOR21 port map( A => n229, B => n323, Q => local_counter1_N51);
   U300 : INV3 port map( A => local_counter1_N11, Q => n323);
   U301 : NOR21 port map( A => n229, B => n324, Q => local_counter1_N50);
   U302 : INV3 port map( A => local_counter1_N10, Q => n324);
   U303 : NOR21 port map( A => n229, B => n325, Q => local_counter1_N49);
   U304 : INV3 port map( A => local_counter1_N9, Q => n325);
   U305 : NOR21 port map( A => n229, B => n326, Q => local_counter1_N48);
   U306 : INV3 port map( A => local_counter1_N8, Q => n326);
   U307 : NOR21 port map( A => n229, B => n327, Q => local_counter1_N47);
   U308 : INV3 port map( A => local_counter1_N7, Q => n327);
   U309 : NOR21 port map( A => n231, B => n310, Q => local_counter1_N64);
   U310 : INV3 port map( A => local_counter1_N24, Q => n310);
   U311 : NOR21 port map( A => n231, B => n312, Q => local_counter1_N62);
   U312 : INV3 port map( A => local_counter1_N22_port, Q => n312);
   U313 : NOR21 port map( A => n231, B => n314, Q => local_counter1_N60);
   U314 : INV3 port map( A => local_counter1_N20, Q => n314);
   U315 : NOR21 port map( A => n231, B => n316, Q => local_counter1_N58);
   U316 : INV3 port map( A => local_counter1_N18, Q => n316);
   U317 : NOR21 port map( A => n231, B => n318, Q => local_counter1_N56);
   U318 : INV3 port map( A => local_counter1_N16, Q => n318);
   U319 : NOR21 port map( A => n231, B => n320, Q => local_counter1_N54);
   U320 : INV3 port map( A => local_counter1_N14, Q => n320);
   U321 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_8_port, B => 
                           dp_cluster_2_mult_117_SUMB_7_1_port, Q => 
                           sig_cyclesTrame2_8_port);
   U322 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_5_port, B => 
                           dp_cluster_2_mult_117_SUMB_4_1_port, Q => 
                           sig_cyclesTrame2_5_port);
   U323 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_8_port, B => 
                           dp_cluster_3_mult_120_SUMB_7_1_port, Q => 
                           sig_cyclesTrame3_8_port);
   U324 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_5_port, B => 
                           dp_cluster_3_mult_120_SUMB_4_1_port, Q => 
                           sig_cyclesTrame3_5_port);
   U325 : XOR21 port map( A => dp_cluster_3_sub_120_cf_carry_7_port, B => 
                           dp_cluster_3_mult_120_SUMB_6_1_port, Q => 
                           sig_cyclesTrame3_7_port);
   U326 : XNR21 port map( A => dp_cluster_3_sub_120_cf_carry_6_port, B => 
                           dp_cluster_3_mult_120_SUMB_5_1_port, Q => 
                           sig_cyclesTrame3_6_port);
   U327 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_8_port, B => 
                           dp_cluster_1_mult_114_SUMB_7_1_port, Q => 
                           sig_cyclesTrame1_8_port);
   U328 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_8_port, B => 
                           dp_cluster_4_mult_123_SUMB_7_1_port, Q => 
                           sig_cyclesTrame4_8_port);
   U329 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_5_port, B => 
                           dp_cluster_1_mult_114_SUMB_4_1_port, Q => 
                           sig_cyclesTrame1_5_port);
   U330 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_5_port, B => 
                           dp_cluster_4_mult_123_SUMB_4_1_port, Q => 
                           sig_cyclesTrame4_5_port);
   U331 : XOR21 port map( A => dp_cluster_1_sub_114_cf_carry_7_port, B => 
                           dp_cluster_1_mult_114_SUMB_6_1_port, Q => 
                           sig_cyclesTrame1_7_port);
   U332 : XOR21 port map( A => dp_cluster_4_sub_123_cf_carry_7_port, B => 
                           dp_cluster_4_mult_123_SUMB_6_1_port, Q => 
                           sig_cyclesTrame4_7_port);
   U333 : XOR21 port map( A => dp_cluster_1_mult_114_A1_11_port, B => n457, Q 
                           => dp_cluster_1_N264);
   U334 : NOR21 port map( A => n300, B => n458, Q => n457);
   U335 : XOR21 port map( A => dp_cluster_1_mult_114_SUMB_4_5_port, B => 
                           dp_cluster_1_mult_114_CARRYB_7_1_port, Q => 
                           dp_cluster_1_N268);
   U336 : XNR21 port map( A => dp_cluster_1_sub_114_cf_carry_14_port, B => 
                           dp_cluster_1_N263, Q => sig_cyclesTrame1_14_port);
   U337 : XNR21 port map( A => dp_cluster_1_sub_114_cf_carry_6_port, B => 
                           dp_cluster_1_mult_114_SUMB_5_1_port, Q => 
                           sig_cyclesTrame1_6_port);
   U338 : XNR21 port map( A => dp_cluster_4_sub_123_cf_carry_6_port, B => 
                           dp_cluster_4_mult_123_SUMB_5_1_port, Q => 
                           sig_cyclesTrame4_6_port);
   U339 : XOR21 port map( A => n254, B => dp_cluster_4_mult_123_SUMB_6_5_port, 
                           Q => dp_cluster_4_N221);
   U340 : XOR21 port map( A => n274, B => dp_cluster_3_mult_120_SUMB_6_5_port, 
                           Q => dp_cluster_3_N236);
   U341 : XOR21 port map( A => n287, B => dp_cluster_2_mult_117_SUMB_6_5_port, 
                           Q => dp_cluster_2_N251);
   U342 : NAND22 port map( A => n296, B => dp_cluster_1_mult_114_SUMB_6_5_port,
                           Q => n458);
   U343 : NOR21 port map( A => n150, B => n207, Q => 
                           dp_cluster_1_sub_114_cf_carry_6_port);
   U344 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_4_1_port, Q => n207);
   U345 : NOR21 port map( A => n218, B => n219, Q => 
                           dp_cluster_1_mult_114_A2_8_port);
   U346 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_4_5_port, Q => n219);
   U347 : INV3 port map( A => dp_cluster_1_mult_114_CARRYB_7_1_port, Q => n218)
                           ;
   U348 : NOR21 port map( A => n209, B => n210, Q => 
                           dp_cluster_1_sub_114_cf_carry_9_port);
   U349 : INV3 port map( A => dp_cluster_1_sub_114_cf_carry_8_port, Q => n209);
   U350 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_7_1_port, Q => n210);
   U351 : NOR21 port map( A => n167, B => n168, Q => 
                           dp_cluster_4_sub_123_cf_carry_9_port);
   U352 : INV3 port map( A => dp_cluster_4_sub_123_cf_carry_8_port, Q => n167);
   U353 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_7_1_port, Q => n168);
   U354 : NOR21 port map( A => n151, B => n208, Q => 
                           dp_cluster_1_sub_114_cf_carry_8_port);
   U355 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_6_1_port, Q => n208);
   U356 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_7_5_port, Q => n258);
   U357 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_7_5_port, Q => n278);
   U358 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_7_5_port, Q => n288);
   U359 : INV3 port map( A => dp_cluster_1_mult_114_SUMB_5_5_port, Q => n303);
   U360 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_5_5_port, Q => n261);
   U361 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_5_5_port, Q => n281);
   U362 : INV3 port map( A => n453, Q => n296);
   U363 : NAND22 port map( A => dp_cluster_1_mult_114_A2_8_port, B => 
                           dp_cluster_1_mult_114_SUMB_5_5_port, Q => n453);
   U364 : NOR21 port map( A => n300, B => n456, Q => n455);
   U365 : NAND22 port map( A => n296, B => dp_cluster_1_mult_114_SUMB_6_5_port,
                           Q => n456);
   U366 : XOR21 port map( A => n118, B => n117, Q => n132);
   U367 : INV3 port map( A => n151, Q => dp_cluster_1_sub_114_cf_carry_7_port);
   U368 : NOR21 port map( A => dp_cluster_1_mult_114_SUMB_5_1_port, B => 
                           dp_cluster_1_sub_114_cf_carry_6_port, Q => n151);
   U369 : INV3 port map( A => n136, Q => dp_cluster_4_sub_123_cf_carry_7_port);
   U370 : NOR21 port map( A => dp_cluster_4_mult_123_SUMB_5_1_port, B => 
                           dp_cluster_4_sub_123_cf_carry_6_port, Q => n136);
   U371 : XOR21 port map( A => dp_cluster_2_sub_117_cf_carry_7_port, B => 
                           dp_cluster_2_mult_117_SUMB_6_1_port, Q => 
                           sig_cyclesTrame2_7_port);
   U372 : XNR21 port map( A => dp_cluster_2_sub_117_cf_carry_14_port, B => 
                           dp_cluster_2_N248, Q => sig_cyclesTrame2_14_port);
   U373 : XNR21 port map( A => dp_cluster_2_sub_117_cf_carry_6_port, B => 
                           dp_cluster_2_mult_117_SUMB_5_1_port, Q => 
                           sig_cyclesTrame2_6_port);
   U374 : XNR21 port map( A => dp_cluster_3_sub_120_cf_carry_14_port, B => 
                           dp_cluster_3_N233, Q => sig_cyclesTrame3_14_port);
   U375 : XOR21 port map( A => dp_cluster_4_mult_123_A1_11_port, B => n475, Q 
                           => dp_cluster_4_N219);
   U376 : NOR21 port map( A => n258, B => n476, Q => n475);
   U377 : XOR21 port map( A => dp_cluster_3_mult_120_A1_11_port, B => n469, Q 
                           => dp_cluster_3_N234);
   U378 : NOR21 port map( A => n278, B => n470, Q => n469);
   U379 : XOR21 port map( A => dp_cluster_2_mult_117_A1_11_port, B => n463, Q 
                           => dp_cluster_2_N249);
   U380 : NOR21 port map( A => n288, B => n464, Q => n463);
   U381 : XOR21 port map( A => dp_cluster_4_mult_123_SUMB_4_5_port, B => 
                           dp_cluster_4_mult_123_CARRYB_7_1_port, Q => 
                           dp_cluster_4_N223);
   U382 : XOR21 port map( A => dp_cluster_3_mult_120_SUMB_4_5_port, B => 
                           dp_cluster_3_mult_120_CARRYB_7_1_port, Q => 
                           dp_cluster_3_N238);
   U383 : XOR21 port map( A => dp_cluster_2_mult_117_SUMB_4_5_port, B => 
                           dp_cluster_2_mult_117_CARRYB_7_1_port, Q => 
                           dp_cluster_2_N253);
   U384 : XNR21 port map( A => dp_cluster_4_sub_123_cf_carry_14_port, B => 
                           dp_cluster_4_N218, Q => sig_cyclesTrame4_14_port);
   U385 : NAND22 port map( A => n254, B => dp_cluster_4_mult_123_SUMB_6_5_port,
                           Q => n476);
   U386 : NAND22 port map( A => n274, B => dp_cluster_3_mult_120_SUMB_6_5_port,
                           Q => n470);
   U387 : NAND22 port map( A => n287, B => dp_cluster_2_mult_117_SUMB_6_5_port,
                           Q => n464);
   U388 : NOR21 port map( A => n135, B => n165, Q => 
                           dp_cluster_4_sub_123_cf_carry_6_port);
   U389 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_4_1_port, Q => n165);
   U390 : NOR21 port map( A => n140, B => n179_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_6_port);
   U391 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_4_1_port, Q => 
                           n179_port);
   U392 : NOR21 port map( A => n145, B => n193_port, Q => 
                           dp_cluster_2_sub_117_cf_carry_6_port);
   U393 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_4_1_port, Q => 
                           n193_port);
   U394 : NOR21 port map( A => n176, B => n177, Q => 
                           dp_cluster_4_mult_123_A2_8_port);
   U395 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_4_5_port, Q => n177);
   U396 : INV3 port map( A => dp_cluster_4_mult_123_CARRYB_7_1_port, Q => n176)
                           ;
   U397 : NOR21 port map( A => n181_port, B => n182_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_9_port);
   U398 : INV3 port map( A => dp_cluster_3_sub_120_cf_carry_8_port, Q => 
                           n181_port);
   U399 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_7_1_port, Q => 
                           n182_port);
   U400 : NOR21 port map( A => n195_port, B => n196_port, Q => 
                           dp_cluster_2_sub_117_cf_carry_9_port);
   U401 : INV3 port map( A => dp_cluster_2_sub_117_cf_carry_8_port, Q => 
                           n195_port);
   U402 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_7_1_port, Q => 
                           n196_port);
   U403 : NOR21 port map( A => n136, B => n166, Q => 
                           dp_cluster_4_sub_123_cf_carry_8_port);
   U404 : INV3 port map( A => dp_cluster_4_mult_123_SUMB_6_1_port, Q => n166);
   U405 : NOR21 port map( A => n141, B => n180_port, Q => 
                           dp_cluster_3_sub_120_cf_carry_8_port);
   U406 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_6_1_port, Q => 
                           n180_port);
   U407 : NOR21 port map( A => n146, B => n194_port, Q => 
                           dp_cluster_2_sub_117_cf_carry_8_port);
   U408 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_6_1_port, Q => 
                           n194_port);
   U409 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_5_5_port, Q => n289);
   U410 : INV3 port map( A => n471, Q => n254);
   U411 : NAND22 port map( A => dp_cluster_4_mult_123_A2_8_port, B => 
                           dp_cluster_4_mult_123_SUMB_5_5_port, Q => n471);
   U412 : INV3 port map( A => n465, Q => n274);
   U413 : NAND22 port map( A => dp_cluster_3_mult_120_A2_8_port, B => 
                           dp_cluster_3_mult_120_SUMB_5_5_port, Q => n465);
   U414 : INV3 port map( A => n459, Q => n287);
   U415 : NAND22 port map( A => dp_cluster_2_mult_117_A2_8_port, B => 
                           dp_cluster_2_mult_117_SUMB_5_5_port, Q => n459);
   U416 : NOR21 port map( A => n258, B => n474, Q => n473);
   U417 : NAND22 port map( A => n254, B => dp_cluster_4_mult_123_SUMB_6_5_port,
                           Q => n474);
   U418 : NOR21 port map( A => n278, B => n468, Q => n467);
   U419 : NAND22 port map( A => n274, B => dp_cluster_3_mult_120_SUMB_6_5_port,
                           Q => n468);
   U420 : NOR21 port map( A => n288, B => n462, Q => n461);
   U421 : NAND22 port map( A => n287, B => dp_cluster_2_mult_117_SUMB_6_5_port,
                           Q => n462);
   U422 : INV3 port map( A => n153, Q => sig_cyclesTrame1_15_port);
   U423 : NOR21 port map( A => dp_cluster_1_N263, B => 
                           dp_cluster_1_sub_114_cf_carry_14_port, Q => n153);
   U424 : INV3 port map( A => n141, Q => dp_cluster_3_sub_120_cf_carry_7_port);
   U425 : NOR21 port map( A => dp_cluster_3_mult_120_SUMB_5_1_port, B => 
                           dp_cluster_3_sub_120_cf_carry_6_port, Q => n141);
   U426 : INV3 port map( A => n146, Q => dp_cluster_2_sub_117_cf_carry_7_port);
   U427 : NOR21 port map( A => dp_cluster_2_mult_117_SUMB_5_1_port, B => 
                           dp_cluster_2_sub_117_cf_carry_6_port, Q => n146);
   U428 : INV3 port map( A => dp_cluster_1_mult_114_CARRYB_7_5_port, Q => n220)
                           ;
   U429 : INV3 port map( A => dp_cluster_4_mult_123_CARRYB_7_5_port, Q => n178)
                           ;
   U430 : NOR21 port map( A => n190_port, B => n191_port, Q => 
                           dp_cluster_3_mult_120_A2_8_port);
   U431 : INV3 port map( A => dp_cluster_3_mult_120_CARRYB_7_1_port, Q => 
                           n190_port);
   U432 : INV3 port map( A => dp_cluster_3_mult_120_SUMB_4_5_port, Q => 
                           n191_port);
   U433 : NOR21 port map( A => n204_port, B => n205, Q => 
                           dp_cluster_2_mult_117_A2_8_port);
   U434 : INV3 port map( A => dp_cluster_2_mult_117_CARRYB_7_1_port, Q => 
                           n204_port);
   U435 : INV3 port map( A => dp_cluster_2_mult_117_SUMB_4_5_port, Q => n205);
   U436 : INV3 port map( A => n148_port, Q => sig_cyclesTrame2_15_port);
   U437 : NOR21 port map( A => dp_cluster_2_N248, B => 
                           dp_cluster_2_sub_117_cf_carry_14_port, Q => 
                           n148_port);
   U438 : INV3 port map( A => n143, Q => sig_cyclesTrame3_15_port);
   U439 : NOR21 port map( A => dp_cluster_3_N233, B => 
                           dp_cluster_3_sub_120_cf_carry_14_port, Q => n143);
   U440 : INV3 port map( A => n138, Q => sig_cyclesTrame4_15_port);
   U441 : NOR21 port map( A => dp_cluster_4_N218, B => 
                           dp_cluster_4_sub_123_cf_carry_14_port, Q => n138);
   U442 : INV3 port map( A => dp_cluster_3_mult_120_CARRYB_7_5_port, Q => 
                           n192_port);
   U443 : INV3 port map( A => dp_cluster_2_mult_117_CARRYB_7_5_port, Q => n206)
                           ;
   U444 : INV3 port map( A => n366, Q => n286);
   U445 : NOR40 port map( A => n365, B => n364, C => n363, D => n362, Q => n366
                           );
   U446 : NAND31 port map( A => n354, B => n353, C => n352, Q => n365);
   U447 : NAND22 port map( A => n356, B => n355, Q => n364);
   U448 : INV3 port map( A => n390, Q => n267);
   U449 : NOR40 port map( A => n389, B => n388, C => n387, D => n386, Q => n390
                           );
   U450 : NAND31 port map( A => n378, B => n377, C => n376, Q => n389);
   U451 : NAND22 port map( A => n380, B => n379, Q => n388);
   U452 : INV3 port map( A => n342, Q => n290);
   U453 : NOR40 port map( A => n341, B => n340, C => n339, D => n338, Q => n342
                           );
   U454 : NAND31 port map( A => n330, B => n329, C => n328, Q => n341);
   U455 : NAND22 port map( A => n332, B => n331, Q => n340);
   U456 : INV3 port map( A => n414, Q => n248);
   U457 : NOR40 port map( A => n413, B => n412, C => n411, D => n410, Q => n414
                           );
   U458 : NAND31 port map( A => n402, B => n401, C => n400, Q => n413);
   U459 : NAND22 port map( A => n404, B => n403, Q => n412);
   U460 : XNR21 port map( A => dp_cluster_0_N296, B => n132, Q => N179);
   U461 : NAND31 port map( A => n308, B => n67, C => n240, Q => n76);
   U462 : INV3 port map( A => n58, Q => n308);
   U463 : INV3 port map( A => n77, Q => n240);
   U464 : INV3 port map( A => n91, Q => n245);
   U465 : INV3 port map( A => n63, Q => n246);
   U466 : INV3 port map( A => n59, Q => n244);
   U467 : XOR21 port map( A => sig_reg_storage_16_port, B => 
                           sig_reg_storage_17_port, Q => 
                           sig_cyclesTrame3_2_port);
   U468 : XOR21 port map( A => sig_reg_storage_24_port, B => 
                           sig_reg_storage_25_port, Q => 
                           sig_cyclesTrame4_2_port);
   U469 : XOR21 port map( A => sig_reg_storage_0_port, B => 
                           sig_reg_storage_1_port, Q => sig_cyclesTrame1_2_port
                           );
   U470 : XNR21 port map( A => dp_cluster_1_sub_114_cf_carry_3_port, B => 
                           sig_reg_storage_2_port, Q => sig_cyclesTrame1_3_port
                           );
   U471 : XNR21 port map( A => dp_cluster_1_sub_114_cf_carry_4_port, B => 
                           sig_reg_storage_3_port, Q => sig_cyclesTrame1_4_port
                           );
   U472 : AOI211 port map( A => n58, B => n240, C => n81_port, Q => n80);
   U473 : NOR31 port map( A => n246, B => N198, C => n239, Q => n81_port);
   U474 : INV3 port map( A => i_reset_n, Q => n239);
   U475 : NAND22 port map( A => sig_state_0_port, B => n127, Q => n78_port);
   U476 : INV3 port map( A => n79_port, Q => n238);
   U477 : NAND22 port map( A => i_reset_n, B => n242, Q => local_counter1_n22);
   U478 : INV3 port map( A => sig_in_init, Q => n242);
   U479 : OAI2111 port map( A => n245, B => n58, C => n59, D => n60, Q => 
                           sig_in_init);
   U480 : AOI221 port map( A => n61, B => n62, C => N198, D => n63, Q => n60);
   U481 : NOR21 port map( A => n115, B => n113, Q => 
                           dp_cluster_1_sub_114_cf_carry_3_port);
   U482 : NOR21 port map( A => n115, B => n113, Q => 
                           dp_cluster_1_mult_114_CARRYB_1_5_port);
   U483 : NOR21 port map( A => sig_cyclesTrame1_2_port, B => n115, Q => 
                           dp_cluster_0_sub_4_root_sub_235_cf_carry_3_port);
   U484 : INV3 port map( A => n73, Q => n237);
   U485 : AOI211 port map( A => n74, B => sig_state_2_port, C => n75, Q => n73)
                           ;
   U486 : NOR40 port map( A => n76, B => n127, C => n110, D => sig_state_2_port
                           , Q => n75);
   U487 : XNR21 port map( A => N194, B => sig_out_local_count_16_port, Q => 
                           n429);
   U488 : INV3 port map( A => n160, Q => 
                           dp_cluster_0_add_1_root_sub_235_cf_carry_2_port);
   U489 : INV3 port map( A => sig_cyclesTrame4_2_port, Q => n265);
   U490 : XOR21 port map( A => sig_reg_storage_0_port, B => n307, Q => 
                           dp_cluster_0_N18);
   U491 : NAND22 port map( A => n433, B => n432, Q => n434);
   U492 : XNR21 port map( A => N195, B => sig_out_local_count_17_port, Q => 
                           n432);
   U493 : XNR21 port map( A => N196, B => sig_out_local_count_18_port, Q => 
                           n433);
   U494 : XNR21 port map( A => dp_cluster_0_N280, B => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_17_port, Q 
                           => N195);
   U495 : XNR21 port map( A => N197, B => sig_out_local_count_19_port, Q => 
                           n443);
   U496 : XNR21 port map( A => dp_cluster_0_sub_0_root_sub_235_cf_carry_19_port
                           , B => dp_cluster_0_N278, Q => N197);
   U497 : XNR21 port map( A => dp_cluster_0_add_1_root_sub_235_cf_carry_19_port
                           , B => dp_cluster_0_N35, Q => dp_cluster_0_N278);
   U498 : INV3 port map( A => n159, Q => 
                           dp_cluster_0_sub_0_root_sub_235_cf_carry_19_port);
   U499 : INV3 port map( A => n149, Q => dp_cluster_1_sub_114_cf_carry_4_port);
   U500 : NOR21 port map( A => sig_reg_storage_2_port, B => 
                           dp_cluster_1_sub_114_cf_carry_3_port, Q => n149);
   U501 : NOR21 port map( A => n229, B => local_counter1_v_val_0_port, Q => 
                           local_counter1_N46);
   U502 : XNR21 port map( A => local_counter1_add_34_carry_19_port, B => 
                           local_counter1_v_val_19_port, Q => n133);
   U503 : XOR21 port map( A => sig_reg_storage_8_port, B => 
                           sig_reg_storage_9_port, Q => sig_cyclesTrame2_2_port
                           );
   U504 : XNR21 port map( A => dp_cluster_2_sub_117_cf_carry_4_port, B => 
                           sig_reg_storage_11_port, Q => 
                           sig_cyclesTrame2_4_port);
   U505 : XNR21 port map( A => dp_cluster_2_sub_117_cf_carry_3_port, B => 
                           sig_reg_storage_10_port, Q => 
                           sig_cyclesTrame2_3_port);
   U506 : XNR21 port map( A => dp_cluster_3_sub_120_cf_carry_4_port, B => 
                           sig_reg_storage_19_port, Q => 
                           sig_cyclesTrame3_4_port);
   U507 : XNR21 port map( A => dp_cluster_3_sub_120_cf_carry_3_port, B => 
                           sig_reg_storage_18_port, Q => 
                           sig_cyclesTrame3_3_port);
   U508 : XOR21 port map( A => sig_reg_storage_4_port, B => 
                           sig_reg_storage_0_port, Q => 
                           dp_cluster_1_mult_114_SUMB_4_1_port);
   U509 : XNR21 port map( A => n454, B => dp_cluster_1_mult_114_A2_12_port, Q 
                           => dp_cluster_1_N263);
   U510 : NOR21 port map( A => n220, B => n122, Q => 
                           dp_cluster_1_mult_114_A2_12_port);
   U511 : NAND22 port map( A => dp_cluster_1_mult_114_A1_11_port, B => n455, Q 
                           => n454);
   U512 : XNR21 port map( A => n115, B => sig_reg_storage_24_port, Q => 
                           dp_cluster_0_N296);
   U513 : XNR21 port map( A => dp_cluster_4_sub_123_cf_carry_4_port, B => 
                           sig_reg_storage_27_port, Q => 
                           sig_cyclesTrame4_4_port);
   U514 : XNR21 port map( A => dp_cluster_4_sub_123_cf_carry_3_port, B => 
                           sig_reg_storage_26_port, Q => 
                           sig_cyclesTrame4_3_port);
   U515 : XOR21 port map( A => sig_reg_storage_7_port, B => 
                           dp_cluster_1_mult_114_CARRYB_7_5_port, Q => 
                           dp_cluster_1_mult_114_A1_11_port);
   U516 : NOR21 port map( A => sig_reg_storage_24_port, B => n115, Q => n160);
   U517 : NOR21 port map( A => n128, B => n119, Q => 
                           dp_cluster_4_sub_123_cf_carry_3_port);
   U518 : NOR21 port map( A => n128, B => n119, Q => 
                           dp_cluster_4_mult_123_CARRYB_1_5_port);
   U519 : NOR21 port map( A => n114, B => n128, Q => 
                           dp_cluster_4_mult_123_CARRYB_4_1_port);
   U520 : XOR21 port map( A => sig_reg_storage_24_port, B => 
                           sig_reg_storage_25_port, Q => 
                           dp_cluster_4_mult_123_SUMB_1_5_port);
   U521 : NOR21 port map( A => n112, B => n115, Q => 
                           dp_cluster_1_mult_114_CARRYB_4_1_port);
   U522 : XOR21 port map( A => sig_reg_storage_0_port, B => 
                           sig_reg_storage_1_port, Q => 
                           dp_cluster_1_mult_114_SUMB_1_5_port);
   U523 : NOR21 port map( A => n117, B => n120, Q => 
                           dp_cluster_3_mult_120_CARRYB_1_5_port);
   U524 : NOR21 port map( A => n118, B => n121, Q => 
                           dp_cluster_2_mult_117_CARRYB_1_5_port);
   U525 : NOR21 port map( A => n106, B => n117, Q => 
                           dp_cluster_3_mult_120_CARRYB_4_1_port);
   U526 : XOR21 port map( A => sig_reg_storage_16_port, B => 
                           sig_reg_storage_17_port, Q => 
                           dp_cluster_3_mult_120_SUMB_1_5_port);
   U527 : NOR21 port map( A => n107, B => n118, Q => 
                           dp_cluster_2_mult_117_CARRYB_4_1_port);
   U528 : XOR21 port map( A => sig_reg_storage_8_port, B => 
                           sig_reg_storage_9_port, Q => 
                           dp_cluster_2_mult_117_SUMB_1_5_port);
   U529 : NOR21 port map( A => n117, B => n120, Q => 
                           dp_cluster_3_sub_120_cf_carry_3_port);
   U530 : NOR21 port map( A => n118, B => n121, Q => 
                           dp_cluster_2_sub_117_cf_carry_3_port);
   U531 : XNR21 port map( A => N193, B => sig_out_local_count_15_port, Q => 
                           n431);
   U532 : INV3 port map( A => n134, Q => dp_cluster_4_sub_123_cf_carry_4_port);
   U533 : NOR21 port map( A => sig_reg_storage_26_port, B => 
                           dp_cluster_4_sub_123_cf_carry_3_port, Q => n134);
   U534 : INV3 port map( A => n139, Q => dp_cluster_3_sub_120_cf_carry_4_port);
   U535 : NOR21 port map( A => sig_reg_storage_18_port, B => 
                           dp_cluster_3_sub_120_cf_carry_3_port, Q => n139);
   U536 : INV3 port map( A => n144, Q => dp_cluster_2_sub_117_cf_carry_4_port);
   U537 : NOR21 port map( A => sig_reg_storage_10_port, B => 
                           dp_cluster_2_sub_117_cf_carry_3_port, Q => n144);
   U538 : INV3 port map( A => n150, Q => dp_cluster_1_sub_114_cf_carry_5_port);
   U539 : NOR21 port map( A => sig_reg_storage_3_port, B => 
                           dp_cluster_1_sub_114_cf_carry_4_port, Q => n150);
   U540 : INV3 port map( A => n135, Q => dp_cluster_4_sub_123_cf_carry_5_port);
   U541 : NOR21 port map( A => sig_reg_storage_27_port, B => 
                           dp_cluster_4_sub_123_cf_carry_4_port, Q => n135);
   U542 : INV3 port map( A => n140, Q => dp_cluster_3_sub_120_cf_carry_5_port);
   U543 : NOR21 port map( A => sig_reg_storage_19_port, B => 
                           dp_cluster_3_sub_120_cf_carry_4_port, Q => n140);
   U544 : INV3 port map( A => n145, Q => dp_cluster_2_sub_117_cf_carry_5_port);
   U545 : NOR21 port map( A => sig_reg_storage_11_port, B => 
                           dp_cluster_2_sub_117_cf_carry_4_port, Q => n145);
   U546 : INV3 port map( A => n64, Q => n241);
   U547 : NAND31 port map( A => i_reset_n, B => n63, C => N198, Q => n64);
   U548 : XOR21 port map( A => sig_reg_storage_28_port, B => 
                           sig_reg_storage_24_port, Q => 
                           dp_cluster_4_mult_123_SUMB_4_1_port);
   U549 : XOR21 port map( A => sig_reg_storage_20_port, B => 
                           sig_reg_storage_16_port, Q => 
                           dp_cluster_3_mult_120_SUMB_4_1_port);
   U550 : XOR21 port map( A => sig_reg_storage_12_port, B => 
                           sig_reg_storage_8_port, Q => 
                           dp_cluster_2_mult_117_SUMB_4_1_port);
   U551 : XNR21 port map( A => n472, B => dp_cluster_4_mult_123_A2_12_port, Q 
                           => dp_cluster_4_N218);
   U552 : NOR21 port map( A => n178, B => n124, Q => 
                           dp_cluster_4_mult_123_A2_12_port);
   U553 : NAND22 port map( A => dp_cluster_4_mult_123_A1_11_port, B => n473, Q 
                           => n472);
   U554 : XNR21 port map( A => n460, B => dp_cluster_2_mult_117_A2_12_port, Q 
                           => dp_cluster_2_N248);
   U555 : NOR21 port map( A => n206, B => n125, Q => 
                           dp_cluster_2_mult_117_A2_12_port);
   U556 : NAND22 port map( A => dp_cluster_2_mult_117_A1_11_port, B => n461, Q 
                           => n460);
   U557 : XOR21 port map( A => sig_reg_storage_31_port, B => 
                           dp_cluster_4_mult_123_CARRYB_7_5_port, Q => 
                           dp_cluster_4_mult_123_A1_11_port);
   U558 : XOR21 port map( A => sig_reg_storage_23_port, B => 
                           dp_cluster_3_mult_120_CARRYB_7_5_port, Q => 
                           dp_cluster_3_mult_120_A1_11_port);
   U559 : XOR21 port map( A => sig_reg_storage_15_port, B => 
                           dp_cluster_2_mult_117_CARRYB_7_5_port, Q => 
                           dp_cluster_2_mult_117_A1_11_port);
   U560 : OAI2111 port map( A => N198, B => n246, C => n65, D => i_reset_n, Q 
                           => N82);
   U561 : NAND31 port map( A => n243, B => n308, C => n66, Q => n65);
   U562 : INV3 port map( A => n67, Q => n243);
   U563 : XNR21 port map( A => N191, B => sig_out_local_count_13_port, Q => 
                           n428);
   U564 : XNR21 port map( A => N192, B => sig_out_local_count_14_port, Q => 
                           n430);
   U565 : XNR21 port map( A => n466, B => dp_cluster_3_mult_120_A2_12_port, Q 
                           => dp_cluster_3_N233);
   U566 : NOR21 port map( A => n192_port, B => n123, Q => 
                           dp_cluster_3_mult_120_A2_12_port);
   U567 : NAND22 port map( A => dp_cluster_3_mult_120_A1_11_port, B => n467, Q 
                           => n466);
   U568 : XNR21 port map( A => N190, B => sig_out_local_count_12_port, Q => 
                           n427);
   U569 : XNR21 port map( A => N189, B => sig_out_local_count_11_port, Q => 
                           n424);
   U570 : XNR21 port map( A => N188, B => sig_out_local_count_10_port, Q => 
                           n426);
   U571 : XNR21 port map( A => N187, B => sig_out_local_count_9_port, Q => n425
                           );
   U572 : INV3 port map( A => N169, Q => n247);
   U573 : AOI311 port map( A => N148, B => n127, C => sig_state_0_port, D => 
                           n71, Q => n70);
   U574 : NOR40 port map( A => n248, B => n423, C => n422, D => n421, Q => N169
                           );
   U575 : NOR40 port map( A => n290, B => n351, C => n350, D => n349, Q => N148
                           );
   U576 : NAND31 port map( A => sig_out_local_count_0_port, B => n126, C => 
                           n343, Q => n351);
   U577 : NAND31 port map( A => n346, B => n345, C => n344, Q => n350);
   U578 : NAND22 port map( A => n348, B => n347, Q => n349);
   U579 : NOR21 port map( A => n72, B => n127, Q => n71);
   U580 : AOI221 port map( A => N156, B => n110, C => N163, D => 
                           sig_state_0_port, Q => n72);
   U581 : NOR40 port map( A => n267, B => n399, C => n398, D => n397, Q => N163
                           );
   U582 : NOR40 port map( A => n286, B => n375, C => n374, D => n373, Q => N156
                           );
   U583 : NAND31 port map( A => n359, B => n358, C => n357, Q => n363);
   U584 : XNR21 port map( A => sig_cyclesTrame2_11_port, B => 
                           sig_out_local_count_11_port, Q => n358);
   U585 : XNR21 port map( A => sig_cyclesTrame2_12_port, B => 
                           sig_out_local_count_12_port, Q => n359);
   U586 : XNR21 port map( A => sig_cyclesTrame2_13_port, B => 
                           sig_out_local_count_13_port, Q => n357);
   U587 : NAND31 port map( A => n383, B => n382, C => n381, Q => n387);
   U588 : XNR21 port map( A => sig_cyclesTrame3_11_port, B => 
                           sig_out_local_count_11_port, Q => n382);
   U589 : XNR21 port map( A => sig_cyclesTrame3_12_port, B => 
                           sig_out_local_count_12_port, Q => n383);
   U590 : XNR21 port map( A => sig_cyclesTrame3_13_port, B => 
                           sig_out_local_count_13_port, Q => n381);
   U591 : NAND31 port map( A => n335, B => n334, C => n333, Q => n339);
   U592 : XNR21 port map( A => sig_cyclesTrame1_11_port, B => 
                           sig_out_local_count_11_port, Q => n334);
   U593 : XNR21 port map( A => sig_cyclesTrame1_12_port, B => 
                           sig_out_local_count_12_port, Q => n335);
   U594 : XNR21 port map( A => sig_cyclesTrame1_13_port, B => 
                           sig_out_local_count_13_port, Q => n333);
   U595 : NAND31 port map( A => n407, B => n406, C => n405, Q => n411);
   U596 : XNR21 port map( A => sig_cyclesTrame4_11_port, B => 
                           sig_out_local_count_11_port, Q => n406);
   U597 : XNR21 port map( A => sig_cyclesTrame4_12_port, B => 
                           sig_out_local_count_12_port, Q => n407);
   U598 : XNR21 port map( A => sig_cyclesTrame4_13_port, B => 
                           sig_out_local_count_13_port, Q => n405);
   U599 : NAND22 port map( A => n361, B => n360, Q => n362);
   U600 : XNR21 port map( A => sig_cyclesTrame2_15_port, B => 
                           sig_out_local_count_15_port, Q => n360);
   U601 : XNR21 port map( A => sig_cyclesTrame2_14_port, B => 
                           sig_out_local_count_14_port, Q => n361);
   U602 : NAND22 port map( A => n385, B => n384, Q => n386);
   U603 : XNR21 port map( A => sig_cyclesTrame3_15_port, B => 
                           sig_out_local_count_15_port, Q => n384);
   U604 : XNR21 port map( A => sig_cyclesTrame3_14_port, B => 
                           sig_out_local_count_14_port, Q => n385);
   U605 : NAND22 port map( A => n337, B => n336, Q => n338);
   U606 : XNR21 port map( A => sig_cyclesTrame1_15_port, B => 
                           sig_out_local_count_15_port, Q => n336);
   U607 : XNR21 port map( A => sig_cyclesTrame1_14_port, B => 
                           sig_out_local_count_14_port, Q => n337);
   U608 : NAND22 port map( A => n409, B => n408, Q => n410);
   U609 : XNR21 port map( A => sig_cyclesTrame4_15_port, B => 
                           sig_out_local_count_15_port, Q => n408);
   U610 : XNR21 port map( A => sig_cyclesTrame4_14_port, B => 
                           sig_out_local_count_14_port, Q => n409);
   U611 : OAI2111 port map( A => n62, B => n68, C => n69, D => i_reset_n, Q => 
                           N81);
   U612 : NAND22 port map( A => n61, B => n130, Q => n68);
   U613 : NAND31 port map( A => n308, B => n67, C => n66, Q => n69);
   U614 : XNR21 port map( A => N185, B => sig_out_local_count_7_port, Q => n448
                           );
   U615 : XNR21 port map( A => N186, B => sig_out_local_count_8_port, Q => n449
                           );
   U616 : XNR21 port map( A => sig_cyclesTrame2_9_port, B => 
                           sig_out_local_count_9_port, Q => n355);
   U617 : XNR21 port map( A => N184, B => sig_out_local_count_6_port, Q => n445
                           );
   U618 : XNR21 port map( A => sig_cyclesTrame2_10_port, B => 
                           sig_out_local_count_10_port, Q => n356);
   U619 : XNR21 port map( A => sig_cyclesTrame3_10_port, B => 
                           sig_out_local_count_10_port, Q => n380);
   U620 : XNR21 port map( A => sig_cyclesTrame1_10_port, B => 
                           sig_out_local_count_10_port, Q => n332);
   U621 : XNR21 port map( A => N183, B => sig_out_local_count_5_port, Q => n447
                           );
   U622 : XOR21 port map( A => N181, B => sig_out_local_count_3_port, Q => n440
                           );
   U623 : XNR21 port map( A => sig_cyclesTrame3_9_port, B => 
                           sig_out_local_count_9_port, Q => n379);
   U624 : XNR21 port map( A => sig_cyclesTrame1_9_port, B => 
                           sig_out_local_count_9_port, Q => n331);
   U625 : XNR21 port map( A => sig_cyclesTrame4_9_port, B => 
                           sig_out_local_count_9_port, Q => n403);
   U626 : XNR21 port map( A => sig_cyclesTrame2_8_port, B => 
                           sig_out_local_count_8_port, Q => n352);
   U627 : XNR21 port map( A => sig_cyclesTrame3_8_port, B => 
                           sig_out_local_count_8_port, Q => n376);
   U628 : XNR21 port map( A => sig_cyclesTrame1_8_port, B => 
                           sig_out_local_count_8_port, Q => n328);
   U629 : XNR21 port map( A => sig_cyclesTrame4_8_port, B => 
                           sig_out_local_count_8_port, Q => n400);
   U630 : XNR21 port map( A => sig_cyclesTrame4_10_port, B => 
                           sig_out_local_count_10_port, Q => n404);
   U631 : XNR21 port map( A => N182, B => sig_out_local_count_4_port, Q => n446
                           );
   U632 : XOR21 port map( A => N180, B => sig_out_local_count_2_port, Q => n441
                           );
   U633 : XNR21 port map( A => sig_cyclesTrame2_6_port, B => 
                           sig_out_local_count_6_port, Q => n353);
   U634 : XNR21 port map( A => sig_cyclesTrame3_6_port, B => 
                           sig_out_local_count_6_port, Q => n377);
   U635 : XNR21 port map( A => sig_cyclesTrame2_7_port, B => 
                           sig_out_local_count_7_port, Q => n354);
   U636 : XNR21 port map( A => sig_cyclesTrame3_7_port, B => 
                           sig_out_local_count_7_port, Q => n378);
   U637 : XNR21 port map( A => sig_cyclesTrame1_7_port, B => 
                           sig_out_local_count_7_port, Q => n330);
   U638 : XNR21 port map( A => sig_cyclesTrame4_7_port, B => 
                           sig_out_local_count_7_port, Q => n402);
   U639 : XNR21 port map( A => sig_cyclesTrame1_6_port, B => 
                           sig_out_local_count_6_port, Q => n329);
   U640 : XNR21 port map( A => sig_cyclesTrame4_6_port, B => 
                           sig_out_local_count_6_port, Q => n401);
   U641 : AOI221 port map( A => n129, B => n111, C => n111, D => N179, Q => 
                           n439);
   U642 : XNR21 port map( A => sig_cyclesTrame1_5_port, B => 
                           sig_out_local_count_5_port, Q => n348);
   U643 : NAND22 port map( A => n372, B => n371, Q => n373);
   U644 : XNR21 port map( A => sig_cyclesTrame2_4_port, B => 
                           sig_out_local_count_4_port, Q => n371);
   U645 : XNR21 port map( A => sig_cyclesTrame2_5_port, B => 
                           sig_out_local_count_5_port, Q => n372);
   U646 : NAND22 port map( A => n396, B => n395, Q => n397);
   U647 : XNR21 port map( A => sig_cyclesTrame3_4_port, B => 
                           sig_out_local_count_4_port, Q => n395);
   U648 : XNR21 port map( A => sig_cyclesTrame3_5_port, B => 
                           sig_out_local_count_5_port, Q => n396);
   U649 : NAND22 port map( A => n420, B => n419, Q => n421);
   U650 : XNR21 port map( A => sig_cyclesTrame4_4_port, B => 
                           sig_out_local_count_4_port, Q => n419);
   U651 : XNR21 port map( A => sig_cyclesTrame4_5_port, B => 
                           sig_out_local_count_5_port, Q => n420);
   U652 : NAND31 port map( A => n370, B => n369, C => n368, Q => n374);
   U653 : XNR21 port map( A => n118, B => sig_out_local_count_1_port, Q => n370
                           );
   U654 : XNR21 port map( A => sig_cyclesTrame2_2_port, B => 
                           sig_out_local_count_2_port, Q => n368);
   U655 : XNR21 port map( A => sig_cyclesTrame2_3_port, B => 
                           sig_out_local_count_3_port, Q => n369);
   U656 : NAND31 port map( A => n394, B => n393, C => n392, Q => n398);
   U657 : XNR21 port map( A => n117, B => sig_out_local_count_1_port, Q => n394
                           );
   U658 : XNR21 port map( A => sig_cyclesTrame3_2_port, B => 
                           sig_out_local_count_2_port, Q => n392);
   U659 : XNR21 port map( A => sig_cyclesTrame3_3_port, B => 
                           sig_out_local_count_3_port, Q => n393);
   U660 : NAND31 port map( A => n418, B => n417, C => n416, Q => n422);
   U661 : XNR21 port map( A => n128, B => sig_out_local_count_1_port, Q => n418
                           );
   U662 : XNR21 port map( A => sig_cyclesTrame4_2_port, B => 
                           sig_out_local_count_2_port, Q => n416);
   U663 : XNR21 port map( A => sig_cyclesTrame4_3_port, B => 
                           sig_out_local_count_3_port, Q => n417);
   U664 : XNR21 port map( A => sig_cyclesTrame1_4_port, B => 
                           sig_out_local_count_4_port, Q => n347);
   U665 : XNR21 port map( A => sig_cyclesTrame1_2_port, B => 
                           sig_out_local_count_2_port, Q => n344);
   U666 : XNR21 port map( A => sig_cyclesTrame1_3_port, B => 
                           sig_out_local_count_3_port, Q => n345);
   U667 : NAND41 port map( A => n82_port, B => n83, C => n84, D => n85, Q => 
                           n58);
   U668 : NOR21 port map( A => sig_out_local_count_16_port, B => 
                           sig_out_local_count_15_port, Q => n82_port);
   U669 : NOR31 port map( A => sig_out_local_count_17_port, B => 
                           sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n83);
   U670 : NOR40 port map( A => sig_out_local_count_5_port, B => n309, C => 
                           sig_out_local_count_4_port, D => 
                           sig_out_local_count_2_port, Q => n84);
   U671 : NOR31 port map( A => sig_out_local_count_17_port, B => 
                           sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n343);
   U672 : NAND31 port map( A => sig_out_local_count_0_port, B => n126, C => 
                           n367, Q => n375);
   U673 : NOR31 port map( A => sig_out_local_count_17_port, B => 
                           sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n367);
   U674 : NAND31 port map( A => sig_out_local_count_0_port, B => n126, C => 
                           n391, Q => n399);
   U675 : NOR31 port map( A => sig_out_local_count_17_port, B => 
                           sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n391);
   U676 : INV3 port map( A => n90, Q => n309);
   U677 : NOR21 port map( A => sig_out_local_count_9_port, B => 
                           sig_out_local_count_7_port, Q => n90);
   U678 : NOR31 port map( A => n86, B => n87, C => n88, Q => n85);
   U679 : NAND22 port map( A => sig_out_local_count_8_port, B => 
                           sig_out_local_count_6_port, Q => n88);
   U680 : NAND31 port map( A => sig_out_local_count_1_port, B => 
                           sig_out_local_count_12_port, C => 
                           sig_out_local_count_3_port, Q => n87);
   U681 : NAND41 port map( A => sig_out_local_count_11_port, B => 
                           sig_out_local_count_10_port, C => n89, D => 
                           sig_out_local_count_0_port, Q => n86);
   U682 : NOR21 port map( A => sig_out_local_count_14_port, B => 
                           sig_out_local_count_13_port, Q => n89);
   U683 : XNR21 port map( A => n115, B => sig_out_local_count_1_port, Q => n346
                           );
   U684 : NAND31 port map( A => n110, B => n127, C => sig_state_2_port, Q => 
                           n67);
   U685 : NOR21 port map( A => n245, B => current_state_2_port, Q => n66);
   U686 : NAND31 port map( A => sig_out_local_count_0_port, B => n126, C => 
                           n415, Q => n423);
   U687 : NOR31 port map( A => sig_out_local_count_17_port, B => 
                           sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n415);
   U688 : NAND22 port map( A => n66, B => i_reset_n, Q => n77);
   U689 : NOR21 port map( A => current_state_0_port, B => current_state_1_port,
                           Q => n91);
   U690 : NOR31 port map( A => current_state_0_port, B => current_state_2_port,
                           C => n130, Q => n63);
   U691 : AOI221 port map( A => n61, B => current_state_1_port, C => n91, D => 
                           current_state_2_port, Q => n59);
   U692 : NOR21 port map( A => n131, B => current_state_2_port, Q => n61);
   U693 : NAND31 port map( A => n61, B => n130, C => i_reset_n, Q => N204);

end SYN_rtl;
