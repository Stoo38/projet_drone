
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

   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX20
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component MUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI310
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR32
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND42
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR22
      port( A, B : in std_logic;  Q : out std_logic);
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
   
   signal sig_out_local_count_19_port, sig_out_local_count_16_port, 
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
      sig_cyclesTrame1_15_port, sig_cyclesTrame1_12_port, 
      sig_cyclesTrame2_15_port, sig_cyclesTrame2_14_port, 
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
      , N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, 
      N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N76
      , N77, sig_state_2_port, sig_state_1_port, sig_state_0_port, N78, N79, 
      N80, N81, N82, N83, N179, N180, N181, N182, N183, N184, N185, N186, N187,
      N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N204, N218, 
      N219, N220, N221, N223, N233, N234, N235, N236, N238, N248, N249, N250, 
      N251, N253, N263, N264, N265, N266, N268, N278, N279, N280, N281, N282, 
      N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, 
      N295, N296, local_counter1_N65, local_counter1_N64, local_counter1_N63, 
      local_counter1_N62, local_counter1_N61, local_counter1_N60, 
      local_counter1_N59, local_counter1_N58, local_counter1_N57, 
      local_counter1_N56, local_counter1_N55, local_counter1_N54, 
      local_counter1_N53, local_counter1_N52, local_counter1_N51, 
      local_counter1_N50, local_counter1_N49, local_counter1_N48, 
      local_counter1_N47, local_counter1_N46, local_counter1_N24, 
      local_counter1_N23, local_counter1_N22, local_counter1_N21, 
      local_counter1_N20, local_counter1_N19, local_counter1_N18, 
      local_counter1_N17, local_counter1_N16, local_counter1_N15, 
      local_counter1_N14, local_counter1_N13, local_counter1_N12, 
      local_counter1_N11, local_counter1_N10, local_counter1_N9, 
      local_counter1_N8, local_counter1_N7, local_counter1_v_val_0_port, 
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
      local_counter1_add_34_carry_19_port, sub_0_root_sub_235_cf_carry_2_port, 
      sub_0_root_sub_235_cf_carry_3_port, sub_0_root_sub_235_cf_carry_4_port, 
      sub_0_root_sub_235_cf_carry_5_port, sub_0_root_sub_235_cf_carry_6_port, 
      sub_0_root_sub_235_cf_carry_7_port, sub_0_root_sub_235_cf_carry_8_port, 
      sub_0_root_sub_235_cf_carry_9_port, sub_0_root_sub_235_cf_carry_10_port, 
      sub_0_root_sub_235_cf_carry_11_port, sub_0_root_sub_235_cf_carry_12_port,
      sub_0_root_sub_235_cf_carry_13_port, sub_0_root_sub_235_cf_carry_14_port,
      sub_0_root_sub_235_cf_carry_15_port, sub_0_root_sub_235_cf_carry_16_port,
      sub_0_root_sub_235_cf_carry_17_port, sub_0_root_sub_235_cf_carry_18_port,
      add_3_root_sub_235_cf_carry_2_port, add_3_root_sub_235_cf_carry_3_port, 
      add_3_root_sub_235_cf_carry_4_port, add_3_root_sub_235_cf_carry_5_port, 
      add_3_root_sub_235_cf_carry_6_port, add_3_root_sub_235_cf_carry_7_port, 
      add_3_root_sub_235_cf_carry_8_port, add_3_root_sub_235_cf_carry_9_port, 
      add_3_root_sub_235_cf_carry_10_port, add_3_root_sub_235_cf_carry_11_port,
      add_3_root_sub_235_cf_carry_12_port, add_3_root_sub_235_cf_carry_13_port,
      add_3_root_sub_235_cf_carry_14_port, add_3_root_sub_235_cf_carry_15_port,
      add_3_root_sub_235_cf_carry_16_port, add_1_root_sub_235_cf_carry_2_port, 
      add_1_root_sub_235_cf_carry_3_port, add_1_root_sub_235_cf_carry_4_port, 
      add_1_root_sub_235_cf_carry_5_port, add_1_root_sub_235_cf_carry_6_port, 
      add_1_root_sub_235_cf_carry_7_port, add_1_root_sub_235_cf_carry_8_port, 
      add_1_root_sub_235_cf_carry_9_port, add_1_root_sub_235_cf_carry_10_port, 
      add_1_root_sub_235_cf_carry_11_port, add_1_root_sub_235_cf_carry_12_port,
      add_1_root_sub_235_cf_carry_13_port, add_1_root_sub_235_cf_carry_14_port,
      add_1_root_sub_235_cf_carry_15_port, add_1_root_sub_235_cf_carry_16_port,
      add_1_root_sub_235_cf_carry_17_port, add_1_root_sub_235_cf_carry_18_port,
      sub_123_cf_carry_3_port, sub_123_cf_carry_4_port, sub_123_cf_carry_5_port
      , sub_123_cf_carry_6_port, sub_123_cf_carry_7_port, 
      sub_123_cf_carry_8_port, sub_123_cf_carry_9_port, 
      sub_123_cf_carry_10_port, sub_123_cf_carry_11_port, 
      sub_123_cf_carry_12_port, sub_123_cf_carry_13_port, 
      sub_123_cf_carry_14_port, mult_123_A2_8_port, mult_123_A2_12_port, 
      mult_123_A1_11_port, mult_123_SUMB_1_5_port, mult_123_SUMB_2_5_port, 
      mult_123_SUMB_3_5_port, mult_123_SUMB_4_1_port, mult_123_SUMB_4_5_port, 
      mult_123_SUMB_5_1_port, mult_123_SUMB_5_5_port, mult_123_SUMB_6_1_port, 
      mult_123_SUMB_6_5_port, mult_123_SUMB_7_1_port, mult_123_SUMB_7_5_port, 
      mult_123_CARRYB_1_5_port, mult_123_CARRYB_2_5_port, 
      mult_123_CARRYB_3_5_port, mult_123_CARRYB_4_1_port, 
      mult_123_CARRYB_4_5_port, mult_123_CARRYB_5_1_port, 
      mult_123_CARRYB_5_5_port, mult_123_CARRYB_6_1_port, 
      mult_123_CARRYB_6_5_port, mult_123_CARRYB_7_1_port, 
      mult_123_CARRYB_7_5_port, sub_4_root_sub_235_cf_carry_3_port, 
      sub_4_root_sub_235_cf_carry_4_port, sub_4_root_sub_235_cf_carry_5_port, 
      sub_4_root_sub_235_cf_carry_6_port, sub_4_root_sub_235_cf_carry_7_port, 
      sub_4_root_sub_235_cf_carry_8_port, sub_4_root_sub_235_cf_carry_9_port, 
      sub_4_root_sub_235_cf_carry_10_port, sub_4_root_sub_235_cf_carry_11_port,
      sub_4_root_sub_235_cf_carry_12_port, sub_4_root_sub_235_cf_carry_13_port,
      sub_4_root_sub_235_cf_carry_14_port, sub_4_root_sub_235_cf_carry_15_port,
      sub_4_root_sub_235_cf_carry_16_port, sub_120_cf_carry_3_port, 
      sub_120_cf_carry_4_port, sub_120_cf_carry_5_port, sub_120_cf_carry_6_port
      , sub_120_cf_carry_7_port, sub_120_cf_carry_8_port, 
      sub_120_cf_carry_9_port, sub_120_cf_carry_10_port, 
      sub_120_cf_carry_11_port, sub_120_cf_carry_12_port, 
      sub_120_cf_carry_13_port, sub_120_cf_carry_14_port, mult_120_A2_8_port, 
      mult_120_A2_12_port, mult_120_A1_11_port, mult_120_SUMB_1_5_port, 
      mult_120_SUMB_2_5_port, mult_120_SUMB_3_5_port, mult_120_SUMB_4_1_port, 
      mult_120_SUMB_4_5_port, mult_120_SUMB_5_1_port, mult_120_SUMB_5_5_port, 
      mult_120_SUMB_6_1_port, mult_120_SUMB_6_5_port, mult_120_SUMB_7_1_port, 
      mult_120_SUMB_7_5_port, mult_120_CARRYB_1_5_port, 
      mult_120_CARRYB_2_5_port, mult_120_CARRYB_3_5_port, 
      mult_120_CARRYB_4_1_port, mult_120_CARRYB_4_5_port, 
      mult_120_CARRYB_5_1_port, mult_120_CARRYB_5_5_port, 
      mult_120_CARRYB_6_1_port, mult_120_CARRYB_6_5_port, 
      mult_120_CARRYB_7_1_port, mult_120_CARRYB_7_5_port, 
      sub_117_cf_carry_3_port, sub_117_cf_carry_4_port, sub_117_cf_carry_5_port
      , sub_117_cf_carry_6_port, sub_117_cf_carry_7_port, 
      sub_117_cf_carry_8_port, sub_117_cf_carry_9_port, 
      sub_117_cf_carry_10_port, sub_117_cf_carry_11_port, 
      sub_117_cf_carry_12_port, sub_117_cf_carry_13_port, 
      sub_117_cf_carry_14_port, mult_117_A2_8_port, mult_117_A2_12_port, 
      mult_117_A1_11_port, mult_117_SUMB_1_5_port, mult_117_SUMB_2_5_port, 
      mult_117_SUMB_3_5_port, mult_117_SUMB_4_1_port, mult_117_SUMB_4_5_port, 
      mult_117_SUMB_5_1_port, mult_117_SUMB_5_5_port, mult_117_SUMB_6_1_port, 
      mult_117_SUMB_6_5_port, mult_117_SUMB_7_1_port, mult_117_SUMB_7_5_port, 
      mult_117_CARRYB_1_5_port, mult_117_CARRYB_2_5_port, 
      mult_117_CARRYB_3_5_port, mult_117_CARRYB_4_1_port, 
      mult_117_CARRYB_4_5_port, mult_117_CARRYB_5_1_port, 
      mult_117_CARRYB_5_5_port, mult_117_CARRYB_6_1_port, 
      mult_117_CARRYB_6_5_port, mult_117_CARRYB_7_1_port, 
      mult_117_CARRYB_7_5_port, sub_114_cf_carry_3_port, 
      sub_114_cf_carry_4_port, sub_114_cf_carry_5_port, sub_114_cf_carry_6_port
      , sub_114_cf_carry_7_port, sub_114_cf_carry_8_port, 
      sub_114_cf_carry_9_port, sub_114_cf_carry_10_port, 
      sub_114_cf_carry_11_port, sub_114_cf_carry_12_port, 
      sub_114_cf_carry_13_port, sub_114_cf_carry_14_port, mult_114_A2_8_port, 
      mult_114_A2_12_port, mult_114_A1_11_port, mult_114_SUMB_1_5_port, 
      mult_114_SUMB_2_5_port, mult_114_SUMB_3_5_port, mult_114_SUMB_4_1_port, 
      mult_114_SUMB_4_5_port, mult_114_SUMB_5_1_port, mult_114_SUMB_5_5_port, 
      mult_114_SUMB_6_1_port, mult_114_SUMB_6_5_port, mult_114_SUMB_7_1_port, 
      mult_114_SUMB_7_5_port, mult_114_CARRYB_1_5_port, 
      mult_114_CARRYB_2_5_port, mult_114_CARRYB_3_5_port, 
      mult_114_CARRYB_4_1_port, mult_114_CARRYB_4_5_port, 
      mult_114_CARRYB_5_1_port, mult_114_CARRYB_5_5_port, 
      mult_114_CARRYB_6_1_port, mult_114_CARRYB_6_5_port, 
      mult_114_CARRYB_7_1_port, mult_114_CARRYB_7_5_port, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179_port, n180_port, n181_port, n182_port, n183_port, n184_port, 
      n185_port, n186_port, n187_port, n188_port, n189_port, n190_port, 
      n191_port, n192_port, n193_port, n194_port, n195_port, n196_port, 
      n197_port, n198, n199, n200, n201, n202, n203, n204_port, n205, n206, 
      n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, 
      n218_port, n219_port, n220_port, n221_port, n222, n223_port, n224, n225, 
      n226, n227, n228, n229, n230, n231, n232, n233_port, n234_port, n235_port
      , n236_port, n237, n238_port, n239, n240, n241, n242, n243, n244, n245, 
      n246, n247, n248_port, n249_port, n250_port, n251_port, n252, n253_port, 
      n254, n255, n256, n257, n258, n259, n260, n261, n262, n263_port, 
      n264_port, n265_port, n266_port, n267, n268_port, n269, n270, n271, n272,
      n273, n274, n275, n276, n277, n278_port, n279_port, n280_port, n281_port,
      n282_port, n283_port, n284_port, n285_port, n286_port, n287_port, 
      n288_port, n289_port, n290_port, n291_port, n292_port, n293_port, 
      n294_port, n295_port, n296_port, n297, n298, n299, n300, n301, n302, n303
      , n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
      n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, 
      n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, 
      n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, 
      n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, 
      n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, 
      n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, 
      n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, 
      n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, 
      n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, 
      n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, 
      n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, 
      n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, 
      n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, 
      n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, 
      n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, 
      n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, 
      n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, 
      n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, 
      n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, 
      n544, n545, n546, n547, n548, n549, n550, n551, n552, n_1000, n_1001, 
      n_1002, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, 
      n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, 
      n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, 
      n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, 
      n_1038, n_1039, n_1040, n_1041, n_1042 : std_logic;

begin
   
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
                           local_counter1_N22);
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
   sub_0_root_sub_235_cf_U2_2 : ADD32 port map( A => N295, B => n537, CI => 
                           sub_0_root_sub_235_cf_carry_2_port, CO => 
                           sub_0_root_sub_235_cf_carry_3_port, S => N180);
   sub_0_root_sub_235_cf_U2_3 : ADD32 port map( A => N294, B => n536, CI => 
                           sub_0_root_sub_235_cf_carry_3_port, CO => 
                           sub_0_root_sub_235_cf_carry_4_port, S => N181);
   sub_0_root_sub_235_cf_U2_4 : ADD32 port map( A => N293, B => n535, CI => 
                           sub_0_root_sub_235_cf_carry_4_port, CO => 
                           sub_0_root_sub_235_cf_carry_5_port, S => N182);
   sub_0_root_sub_235_cf_U2_5 : ADD32 port map( A => N292, B => n534, CI => 
                           sub_0_root_sub_235_cf_carry_5_port, CO => 
                           sub_0_root_sub_235_cf_carry_6_port, S => N183);
   sub_0_root_sub_235_cf_U2_6 : ADD32 port map( A => N291, B => n533, CI => 
                           sub_0_root_sub_235_cf_carry_6_port, CO => 
                           sub_0_root_sub_235_cf_carry_7_port, S => N184);
   sub_0_root_sub_235_cf_U2_7 : ADD32 port map( A => N290, B => n532, CI => 
                           sub_0_root_sub_235_cf_carry_7_port, CO => 
                           sub_0_root_sub_235_cf_carry_8_port, S => N185);
   sub_0_root_sub_235_cf_U2_8 : ADD32 port map( A => N289, B => n531, CI => 
                           sub_0_root_sub_235_cf_carry_8_port, CO => 
                           sub_0_root_sub_235_cf_carry_9_port, S => N186);
   sub_0_root_sub_235_cf_U2_9 : ADD32 port map( A => N288, B => n530, CI => 
                           sub_0_root_sub_235_cf_carry_9_port, CO => 
                           sub_0_root_sub_235_cf_carry_10_port, S => N187);
   sub_0_root_sub_235_cf_U2_10 : ADD32 port map( A => N287, B => n528, CI => 
                           sub_0_root_sub_235_cf_carry_10_port, CO => 
                           sub_0_root_sub_235_cf_carry_11_port, S => N188);
   sub_0_root_sub_235_cf_U2_11 : ADD32 port map( A => N286, B => n527, CI => 
                           sub_0_root_sub_235_cf_carry_11_port, CO => 
                           sub_0_root_sub_235_cf_carry_12_port, S => N189);
   sub_0_root_sub_235_cf_U2_12 : ADD32 port map( A => N285, B => n526, CI => 
                           sub_0_root_sub_235_cf_carry_12_port, CO => 
                           sub_0_root_sub_235_cf_carry_13_port, S => N190);
   sub_0_root_sub_235_cf_U2_13 : ADD32 port map( A => N284, B => n525, CI => 
                           sub_0_root_sub_235_cf_carry_13_port, CO => 
                           sub_0_root_sub_235_cf_carry_14_port, S => N191);
   sub_0_root_sub_235_cf_U2_14 : ADD32 port map( A => N283, B => n524, CI => 
                           sub_0_root_sub_235_cf_carry_14_port, CO => 
                           sub_0_root_sub_235_cf_carry_15_port, S => N192);
   sub_0_root_sub_235_cf_U2_15 : ADD32 port map( A => N282, B => n523, CI => 
                           sub_0_root_sub_235_cf_carry_15_port, CO => 
                           sub_0_root_sub_235_cf_carry_16_port, S => N193);
   sub_0_root_sub_235_cf_U2_16 : ADD32 port map( A => N281, B => n522, CI => 
                           sub_0_root_sub_235_cf_carry_16_port, CO => 
                           sub_0_root_sub_235_cf_carry_17_port, S => N194);
   add_3_root_sub_235_cf_U1_2 : ADD32 port map( A => sig_cyclesTrame2_2_port, B
                           => sig_cyclesTrame3_2_port, CI => 
                           add_3_root_sub_235_cf_carry_2_port, CO => 
                           add_3_root_sub_235_cf_carry_3_port, S => N38);
   add_3_root_sub_235_cf_U1_3 : ADD32 port map( A => sig_cyclesTrame2_3_port, B
                           => sig_cyclesTrame3_3_port, CI => 
                           add_3_root_sub_235_cf_carry_3_port, CO => 
                           add_3_root_sub_235_cf_carry_4_port, S => N39);
   add_3_root_sub_235_cf_U1_4 : ADD32 port map( A => sig_cyclesTrame2_4_port, B
                           => sig_cyclesTrame3_4_port, CI => 
                           add_3_root_sub_235_cf_carry_4_port, CO => 
                           add_3_root_sub_235_cf_carry_5_port, S => N40);
   add_3_root_sub_235_cf_U1_5 : ADD32 port map( A => sig_cyclesTrame2_5_port, B
                           => sig_cyclesTrame3_5_port, CI => 
                           add_3_root_sub_235_cf_carry_5_port, CO => 
                           add_3_root_sub_235_cf_carry_6_port, S => N41);
   add_3_root_sub_235_cf_U1_6 : ADD32 port map( A => sig_cyclesTrame2_6_port, B
                           => sig_cyclesTrame3_6_port, CI => 
                           add_3_root_sub_235_cf_carry_6_port, CO => 
                           add_3_root_sub_235_cf_carry_7_port, S => N42);
   add_3_root_sub_235_cf_U1_7 : ADD32 port map( A => sig_cyclesTrame2_7_port, B
                           => sig_cyclesTrame3_7_port, CI => 
                           add_3_root_sub_235_cf_carry_7_port, CO => 
                           add_3_root_sub_235_cf_carry_8_port, S => N43);
   add_3_root_sub_235_cf_U1_8 : ADD32 port map( A => sig_cyclesTrame2_8_port, B
                           => sig_cyclesTrame3_8_port, CI => 
                           add_3_root_sub_235_cf_carry_8_port, CO => 
                           add_3_root_sub_235_cf_carry_9_port, S => N44);
   add_3_root_sub_235_cf_U1_9 : ADD32 port map( A => sig_cyclesTrame2_9_port, B
                           => sig_cyclesTrame3_9_port, CI => 
                           add_3_root_sub_235_cf_carry_9_port, CO => 
                           add_3_root_sub_235_cf_carry_10_port, S => N45);
   add_3_root_sub_235_cf_U1_10 : ADD32 port map( A => sig_cyclesTrame2_10_port,
                           B => sig_cyclesTrame3_10_port, CI => 
                           add_3_root_sub_235_cf_carry_10_port, CO => 
                           add_3_root_sub_235_cf_carry_11_port, S => N46);
   add_3_root_sub_235_cf_U1_11 : ADD32 port map( A => sig_cyclesTrame2_11_port,
                           B => sig_cyclesTrame3_11_port, CI => 
                           add_3_root_sub_235_cf_carry_11_port, CO => 
                           add_3_root_sub_235_cf_carry_12_port, S => N47);
   add_3_root_sub_235_cf_U1_12 : ADD32 port map( A => sig_cyclesTrame2_12_port,
                           B => sig_cyclesTrame3_12_port, CI => 
                           add_3_root_sub_235_cf_carry_12_port, CO => 
                           add_3_root_sub_235_cf_carry_13_port, S => N48);
   add_3_root_sub_235_cf_U1_13 : ADD32 port map( A => sig_cyclesTrame2_13_port,
                           B => sig_cyclesTrame3_13_port, CI => 
                           add_3_root_sub_235_cf_carry_13_port, CO => 
                           add_3_root_sub_235_cf_carry_14_port, S => N49);
   add_3_root_sub_235_cf_U1_14 : ADD32 port map( A => sig_cyclesTrame2_14_port,
                           B => sig_cyclesTrame3_14_port, CI => 
                           add_3_root_sub_235_cf_carry_14_port, CO => 
                           add_3_root_sub_235_cf_carry_15_port, S => N50);
   add_3_root_sub_235_cf_U1_15 : ADD32 port map( A => sig_cyclesTrame2_15_port,
                           B => sig_cyclesTrame3_15_port, CI => 
                           add_3_root_sub_235_cf_carry_15_port, CO => 
                           add_3_root_sub_235_cf_carry_16_port, S => N51);
   add_1_root_sub_235_cf_U1_2 : ADD32 port map( A => N18, B => n552, CI => 
                           add_1_root_sub_235_cf_carry_2_port, CO => 
                           add_1_root_sub_235_cf_carry_3_port, S => N295);
   add_1_root_sub_235_cf_U1_3 : ADD32 port map( A => N19, B => n551, CI => 
                           add_1_root_sub_235_cf_carry_3_port, CO => 
                           add_1_root_sub_235_cf_carry_4_port, S => N294);
   add_1_root_sub_235_cf_U1_4 : ADD32 port map( A => N20, B => n550, CI => 
                           add_1_root_sub_235_cf_carry_4_port, CO => 
                           add_1_root_sub_235_cf_carry_5_port, S => N293);
   add_1_root_sub_235_cf_U1_5 : ADD32 port map( A => N21, B => n549, CI => 
                           add_1_root_sub_235_cf_carry_5_port, CO => 
                           add_1_root_sub_235_cf_carry_6_port, S => N292);
   add_1_root_sub_235_cf_U1_6 : ADD32 port map( A => N22, B => n548, CI => 
                           add_1_root_sub_235_cf_carry_6_port, CO => 
                           add_1_root_sub_235_cf_carry_7_port, S => N291);
   add_1_root_sub_235_cf_U1_7 : ADD32 port map( A => N23, B => n547, CI => 
                           add_1_root_sub_235_cf_carry_7_port, CO => 
                           add_1_root_sub_235_cf_carry_8_port, S => N290);
   add_1_root_sub_235_cf_U1_8 : ADD32 port map( A => N24, B => n546, CI => 
                           add_1_root_sub_235_cf_carry_8_port, CO => 
                           add_1_root_sub_235_cf_carry_9_port, S => N289);
   add_1_root_sub_235_cf_U1_9 : ADD32 port map( A => N25, B => n545, CI => 
                           add_1_root_sub_235_cf_carry_9_port, CO => 
                           add_1_root_sub_235_cf_carry_10_port, S => N288);
   add_1_root_sub_235_cf_U1_10 : ADD32 port map( A => N26, B => n543, CI => 
                           add_1_root_sub_235_cf_carry_10_port, CO => 
                           add_1_root_sub_235_cf_carry_11_port, S => N287);
   add_1_root_sub_235_cf_U1_11 : ADD32 port map( A => N27, B => n542, CI => 
                           add_1_root_sub_235_cf_carry_11_port, CO => 
                           add_1_root_sub_235_cf_carry_12_port, S => N286);
   add_1_root_sub_235_cf_U1_12 : ADD32 port map( A => N28, B => n541, CI => 
                           add_1_root_sub_235_cf_carry_12_port, CO => 
                           add_1_root_sub_235_cf_carry_13_port, S => N285);
   add_1_root_sub_235_cf_U1_13 : ADD32 port map( A => N29, B => n540, CI => 
                           add_1_root_sub_235_cf_carry_13_port, CO => 
                           add_1_root_sub_235_cf_carry_14_port, S => N284);
   add_1_root_sub_235_cf_U1_14 : ADD32 port map( A => N30, B => n539, CI => 
                           add_1_root_sub_235_cf_carry_14_port, CO => 
                           add_1_root_sub_235_cf_carry_15_port, S => N283);
   add_1_root_sub_235_cf_U1_15 : ADD32 port map( A => N31, B => n217, CI => 
                           add_1_root_sub_235_cf_carry_15_port, CO => 
                           add_1_root_sub_235_cf_carry_16_port, S => N282);
   mult_123_S3_2_5 : ADD32 port map( A => sig_reg_storage_26_port, B => 
                           mult_123_CARRYB_1_5_port, CI => 
                           sig_reg_storage_25_port, CO => 
                           mult_123_CARRYB_2_5_port, S => 
                           mult_123_SUMB_2_5_port);
   mult_123_S3_3_5 : ADD32 port map( A => sig_reg_storage_27_port, B => 
                           mult_123_CARRYB_2_5_port, CI => 
                           sig_reg_storage_26_port, CO => 
                           mult_123_CARRYB_3_5_port, S => 
                           mult_123_SUMB_3_5_port);
   mult_123_S3_4_5 : ADD32 port map( A => sig_reg_storage_28_port, B => 
                           mult_123_CARRYB_3_5_port, CI => 
                           sig_reg_storage_27_port, CO => 
                           mult_123_CARRYB_4_5_port, S => 
                           mult_123_SUMB_4_5_port);
   mult_123_S3_5_5 : ADD32 port map( A => sig_reg_storage_29_port, B => 
                           mult_123_CARRYB_4_5_port, CI => 
                           sig_reg_storage_28_port, CO => 
                           mult_123_CARRYB_5_5_port, S => 
                           mult_123_SUMB_5_5_port);
   mult_123_S2_5_1 : ADD32 port map( A => sig_reg_storage_29_port, B => 
                           mult_123_CARRYB_4_1_port, CI => 
                           mult_123_SUMB_1_5_port, CO => 
                           mult_123_CARRYB_5_1_port, S => 
                           mult_123_SUMB_5_1_port);
   mult_123_S3_6_5 : ADD32 port map( A => sig_reg_storage_30_port, B => 
                           mult_123_CARRYB_5_5_port, CI => 
                           sig_reg_storage_29_port, CO => 
                           mult_123_CARRYB_6_5_port, S => 
                           mult_123_SUMB_6_5_port);
   mult_123_S2_6_1 : ADD32 port map( A => sig_reg_storage_30_port, B => 
                           mult_123_CARRYB_5_1_port, CI => 
                           mult_123_SUMB_2_5_port, CO => 
                           mult_123_CARRYB_6_1_port, S => 
                           mult_123_SUMB_6_1_port);
   mult_123_S5_5 : ADD32 port map( A => sig_reg_storage_31_port, B => 
                           mult_123_CARRYB_6_5_port, CI => 
                           sig_reg_storage_30_port, CO => 
                           mult_123_CARRYB_7_5_port, S => 
                           mult_123_SUMB_7_5_port);
   mult_123_S4_1 : ADD32 port map( A => sig_reg_storage_31_port, B => 
                           mult_123_CARRYB_6_1_port, CI => 
                           mult_123_SUMB_3_5_port, CO => 
                           mult_123_CARRYB_7_1_port, S => 
                           mult_123_SUMB_7_1_port);
   mult_120_S3_2_5 : ADD32 port map( A => sig_reg_storage_18_port, B => 
                           mult_120_CARRYB_1_5_port, CI => 
                           sig_reg_storage_17_port, CO => 
                           mult_120_CARRYB_2_5_port, S => 
                           mult_120_SUMB_2_5_port);
   mult_120_S3_3_5 : ADD32 port map( A => sig_reg_storage_19_port, B => 
                           mult_120_CARRYB_2_5_port, CI => 
                           sig_reg_storage_18_port, CO => 
                           mult_120_CARRYB_3_5_port, S => 
                           mult_120_SUMB_3_5_port);
   mult_120_S3_4_5 : ADD32 port map( A => sig_reg_storage_20_port, B => 
                           mult_120_CARRYB_3_5_port, CI => 
                           sig_reg_storage_19_port, CO => 
                           mult_120_CARRYB_4_5_port, S => 
                           mult_120_SUMB_4_5_port);
   mult_120_S3_5_5 : ADD32 port map( A => sig_reg_storage_21_port, B => 
                           mult_120_CARRYB_4_5_port, CI => 
                           sig_reg_storage_20_port, CO => 
                           mult_120_CARRYB_5_5_port, S => 
                           mult_120_SUMB_5_5_port);
   mult_120_S2_5_1 : ADD32 port map( A => sig_reg_storage_21_port, B => 
                           mult_120_CARRYB_4_1_port, CI => 
                           mult_120_SUMB_1_5_port, CO => 
                           mult_120_CARRYB_5_1_port, S => 
                           mult_120_SUMB_5_1_port);
   mult_120_S3_6_5 : ADD32 port map( A => sig_reg_storage_22_port, B => 
                           mult_120_CARRYB_5_5_port, CI => 
                           sig_reg_storage_21_port, CO => 
                           mult_120_CARRYB_6_5_port, S => 
                           mult_120_SUMB_6_5_port);
   mult_120_S2_6_1 : ADD32 port map( A => sig_reg_storage_22_port, B => 
                           mult_120_CARRYB_5_1_port, CI => 
                           mult_120_SUMB_2_5_port, CO => 
                           mult_120_CARRYB_6_1_port, S => 
                           mult_120_SUMB_6_1_port);
   mult_120_S5_5 : ADD32 port map( A => sig_reg_storage_23_port, B => 
                           mult_120_CARRYB_6_5_port, CI => 
                           sig_reg_storage_22_port, CO => 
                           mult_120_CARRYB_7_5_port, S => 
                           mult_120_SUMB_7_5_port);
   mult_120_S4_1 : ADD32 port map( A => sig_reg_storage_23_port, B => 
                           mult_120_CARRYB_6_1_port, CI => 
                           mult_120_SUMB_3_5_port, CO => 
                           mult_120_CARRYB_7_1_port, S => 
                           mult_120_SUMB_7_1_port);
   mult_117_S3_2_5 : ADD32 port map( A => sig_reg_storage_10_port, B => 
                           mult_117_CARRYB_1_5_port, CI => 
                           sig_reg_storage_9_port, CO => 
                           mult_117_CARRYB_2_5_port, S => 
                           mult_117_SUMB_2_5_port);
   mult_117_S3_3_5 : ADD32 port map( A => sig_reg_storage_11_port, B => 
                           mult_117_CARRYB_2_5_port, CI => 
                           sig_reg_storage_10_port, CO => 
                           mult_117_CARRYB_3_5_port, S => 
                           mult_117_SUMB_3_5_port);
   mult_117_S3_4_5 : ADD32 port map( A => sig_reg_storage_12_port, B => 
                           mult_117_CARRYB_3_5_port, CI => 
                           sig_reg_storage_11_port, CO => 
                           mult_117_CARRYB_4_5_port, S => 
                           mult_117_SUMB_4_5_port);
   mult_117_S3_5_5 : ADD32 port map( A => sig_reg_storage_13_port, B => 
                           mult_117_CARRYB_4_5_port, CI => 
                           sig_reg_storage_12_port, CO => 
                           mult_117_CARRYB_5_5_port, S => 
                           mult_117_SUMB_5_5_port);
   mult_117_S2_5_1 : ADD32 port map( A => sig_reg_storage_13_port, B => 
                           mult_117_CARRYB_4_1_port, CI => 
                           mult_117_SUMB_1_5_port, CO => 
                           mult_117_CARRYB_5_1_port, S => 
                           mult_117_SUMB_5_1_port);
   mult_117_S3_6_5 : ADD32 port map( A => sig_reg_storage_14_port, B => 
                           mult_117_CARRYB_5_5_port, CI => 
                           sig_reg_storage_13_port, CO => 
                           mult_117_CARRYB_6_5_port, S => 
                           mult_117_SUMB_6_5_port);
   mult_117_S2_6_1 : ADD32 port map( A => sig_reg_storage_14_port, B => 
                           mult_117_CARRYB_5_1_port, CI => 
                           mult_117_SUMB_2_5_port, CO => 
                           mult_117_CARRYB_6_1_port, S => 
                           mult_117_SUMB_6_1_port);
   mult_117_S5_5 : ADD32 port map( A => sig_reg_storage_15_port, B => 
                           mult_117_CARRYB_6_5_port, CI => 
                           sig_reg_storage_14_port, CO => 
                           mult_117_CARRYB_7_5_port, S => 
                           mult_117_SUMB_7_5_port);
   mult_117_S4_1 : ADD32 port map( A => sig_reg_storage_15_port, B => 
                           mult_117_CARRYB_6_1_port, CI => 
                           mult_117_SUMB_3_5_port, CO => 
                           mult_117_CARRYB_7_1_port, S => 
                           mult_117_SUMB_7_1_port);
   mult_114_S3_2_5 : ADD32 port map( A => sig_reg_storage_2_port, B => 
                           mult_114_CARRYB_1_5_port, CI => 
                           sig_reg_storage_1_port, CO => 
                           mult_114_CARRYB_2_5_port, S => 
                           mult_114_SUMB_2_5_port);
   mult_114_S3_3_5 : ADD32 port map( A => sig_reg_storage_3_port, B => 
                           mult_114_CARRYB_2_5_port, CI => 
                           sig_reg_storage_2_port, CO => 
                           mult_114_CARRYB_3_5_port, S => 
                           mult_114_SUMB_3_5_port);
   mult_114_S3_4_5 : ADD32 port map( A => sig_reg_storage_4_port, B => 
                           mult_114_CARRYB_3_5_port, CI => 
                           sig_reg_storage_3_port, CO => 
                           mult_114_CARRYB_4_5_port, S => 
                           mult_114_SUMB_4_5_port);
   mult_114_S3_5_5 : ADD32 port map( A => sig_reg_storage_5_port, B => 
                           mult_114_CARRYB_4_5_port, CI => 
                           sig_reg_storage_4_port, CO => 
                           mult_114_CARRYB_5_5_port, S => 
                           mult_114_SUMB_5_5_port);
   mult_114_S2_5_1 : ADD32 port map( A => sig_reg_storage_5_port, B => 
                           mult_114_CARRYB_4_1_port, CI => 
                           mult_114_SUMB_1_5_port, CO => 
                           mult_114_CARRYB_5_1_port, S => 
                           mult_114_SUMB_5_1_port);
   mult_114_S3_6_5 : ADD32 port map( A => sig_reg_storage_6_port, B => 
                           mult_114_CARRYB_5_5_port, CI => 
                           sig_reg_storage_5_port, CO => 
                           mult_114_CARRYB_6_5_port, S => 
                           mult_114_SUMB_6_5_port);
   mult_114_S2_6_1 : ADD32 port map( A => sig_reg_storage_6_port, B => 
                           mult_114_CARRYB_5_1_port, CI => 
                           mult_114_SUMB_2_5_port, CO => 
                           mult_114_CARRYB_6_1_port, S => 
                           mult_114_SUMB_6_1_port);
   mult_114_S5_5 : ADD32 port map( A => sig_reg_storage_7_port, B => 
                           mult_114_CARRYB_6_5_port, CI => 
                           sig_reg_storage_6_port, CO => 
                           mult_114_CARRYB_7_5_port, S => 
                           mult_114_SUMB_7_5_port);
   mult_114_S4_1 : ADD32 port map( A => sig_reg_storage_7_port, B => 
                           mult_114_CARRYB_6_1_port, CI => 
                           mult_114_SUMB_3_5_port, CO => 
                           mult_114_CARRYB_7_1_port, S => 
                           mult_114_SUMB_7_1_port);
   current_state_reg_0_inst : DF3 port map( D => N81, C => i_clk, Q => n175, QN
                           => n518);
   current_state_reg_2_inst : DF3 port map( D => N83, C => i_clk, Q => n165, QN
                           => n515);
   current_state_reg_1_inst : DF3 port map( D => N82, C => i_clk, Q => n_1000, 
                           QN => n517);
   sig_out_ppm_reg : DF3 port map( D => N77, C => i_clk, Q => o_ppm, QN => 
                           n_1001);
   local_counter1_o_count_reg_0_inst : DF3 port map( D => local_counter1_N46, C
                           => i_clk, Q => sig_out_local_count_0_port, QN => 
                           n181_port);
   local_counter1_o_count_reg_1_inst : DF3 port map( D => local_counter1_N47, C
                           => i_clk, Q => sig_out_local_count_1_port, QN => 
                           n_1002);
   local_counter1_o_count_reg_2_inst : DF3 port map( D => local_counter1_N48, C
                           => i_clk, Q => sig_out_local_count_2_port, QN => 
                           n180_port);
   local_counter1_o_count_reg_3_inst : DF3 port map( D => local_counter1_N49, C
                           => i_clk, Q => sig_out_local_count_3_port, QN => 
                           n164);
   local_counter1_o_count_reg_4_inst : DF3 port map( D => local_counter1_N50, C
                           => i_clk, Q => sig_out_local_count_4_port, QN => 
                           n170);
   local_counter1_o_count_reg_5_inst : DF3 port map( D => local_counter1_N51, C
                           => i_clk, Q => sig_out_local_count_5_port, QN => 
                           n179_port);
   local_counter1_o_count_reg_6_inst : DF3 port map( D => local_counter1_N52, C
                           => i_clk, Q => sig_out_local_count_6_port, QN => 
                           n173);
   local_counter1_o_count_reg_7_inst : DF3 port map( D => local_counter1_N53, C
                           => i_clk, Q => sig_out_local_count_7_port, QN => 
                           n178);
   local_counter1_o_count_reg_8_inst : DF3 port map( D => local_counter1_N54, C
                           => i_clk, Q => sig_out_local_count_8_port, QN => 
                           n166);
   local_counter1_o_count_reg_9_inst : DF3 port map( D => local_counter1_N55, C
                           => i_clk, Q => sig_out_local_count_9_port, QN => 
                           n172);
   local_counter1_o_count_reg_10_inst : DF3 port map( D => local_counter1_N56, 
                           C => i_clk, Q => sig_out_local_count_10_port, QN => 
                           n_1003);
   local_counter1_o_count_reg_11_inst : DF3 port map( D => local_counter1_N57, 
                           C => i_clk, Q => sig_out_local_count_11_port, QN => 
                           n_1004);
   local_counter1_o_count_reg_12_inst : DF3 port map( D => local_counter1_N58, 
                           C => i_clk, Q => sig_out_local_count_12_port, QN => 
                           n163);
   local_counter1_o_count_reg_13_inst : DF3 port map( D => local_counter1_N59, 
                           C => i_clk, Q => sig_out_local_count_13_port, QN => 
                           n169);
   local_counter1_o_count_reg_14_inst : DF3 port map( D => local_counter1_N60, 
                           C => i_clk, Q => sig_out_local_count_14_port, QN => 
                           n177);
   local_counter1_o_count_reg_15_inst : DF3 port map( D => local_counter1_N61, 
                           C => i_clk, Q => sig_out_local_count_15_port, QN => 
                           n171);
   local_counter1_o_count_reg_16_inst : DF3 port map( D => local_counter1_N62, 
                           C => i_clk, Q => sig_out_local_count_16_port, QN => 
                           n_1005);
   local_counter1_o_count_reg_17_inst : DF3 port map( D => local_counter1_N63, 
                           C => i_clk, Q => n_1006, QN => n168);
   local_counter1_o_count_reg_18_inst : DF3 port map( D => local_counter1_N64, 
                           C => i_clk, Q => n_1007, QN => n176);
   local_counter1_o_count_reg_19_inst : DF3 port map( D => local_counter1_N65, 
                           C => i_clk, Q => sig_out_local_count_19_port, QN => 
                           n_1008);
   local_counter1_v_val_reg_19_inst : DF3 port map( D => local_counter1_N65, C 
                           => i_clk, Q => local_counter1_v_val_19_port, QN => 
                           n_1009);
   local_counter1_v_val_reg_18_inst : DF3 port map( D => local_counter1_N64, C 
                           => i_clk, Q => local_counter1_v_val_18_port, QN => 
                           n_1010);
   local_counter1_v_val_reg_17_inst : DF3 port map( D => local_counter1_N63, C 
                           => i_clk, Q => local_counter1_v_val_17_port, QN => 
                           n_1011);
   local_counter1_v_val_reg_16_inst : DF3 port map( D => local_counter1_N62, C 
                           => i_clk, Q => local_counter1_v_val_16_port, QN => 
                           n_1012);
   local_counter1_v_val_reg_15_inst : DF3 port map( D => local_counter1_N61, C 
                           => i_clk, Q => local_counter1_v_val_15_port, QN => 
                           n_1013);
   local_counter1_v_val_reg_14_inst : DF3 port map( D => local_counter1_N60, C 
                           => i_clk, Q => local_counter1_v_val_14_port, QN => 
                           n_1014);
   local_counter1_v_val_reg_13_inst : DF3 port map( D => local_counter1_N59, C 
                           => i_clk, Q => local_counter1_v_val_13_port, QN => 
                           n_1015);
   local_counter1_v_val_reg_12_inst : DF3 port map( D => local_counter1_N58, C 
                           => i_clk, Q => local_counter1_v_val_12_port, QN => 
                           n_1016);
   local_counter1_v_val_reg_11_inst : DF3 port map( D => local_counter1_N57, C 
                           => i_clk, Q => local_counter1_v_val_11_port, QN => 
                           n_1017);
   local_counter1_v_val_reg_10_inst : DF3 port map( D => local_counter1_N56, C 
                           => i_clk, Q => local_counter1_v_val_10_port, QN => 
                           n_1018);
   local_counter1_v_val_reg_9_inst : DF3 port map( D => local_counter1_N55, C 
                           => i_clk, Q => local_counter1_v_val_9_port, QN => 
                           n_1019);
   local_counter1_v_val_reg_8_inst : DF3 port map( D => local_counter1_N54, C 
                           => i_clk, Q => local_counter1_v_val_8_port, QN => 
                           n_1020);
   local_counter1_v_val_reg_7_inst : DF3 port map( D => local_counter1_N53, C 
                           => i_clk, Q => local_counter1_v_val_7_port, QN => 
                           n_1021);
   local_counter1_v_val_reg_6_inst : DF3 port map( D => local_counter1_N52, C 
                           => i_clk, Q => local_counter1_v_val_6_port, QN => 
                           n_1022);
   local_counter1_v_val_reg_5_inst : DF3 port map( D => local_counter1_N51, C 
                           => i_clk, Q => local_counter1_v_val_5_port, QN => 
                           n_1023);
   local_counter1_v_val_reg_4_inst : DF3 port map( D => local_counter1_N50, C 
                           => i_clk, Q => local_counter1_v_val_4_port, QN => 
                           n_1024);
   local_counter1_v_val_reg_3_inst : DF3 port map( D => local_counter1_N49, C 
                           => i_clk, Q => local_counter1_v_val_3_port, QN => 
                           n_1025);
   local_counter1_v_val_reg_2_inst : DF3 port map( D => local_counter1_N48, C 
                           => i_clk, Q => local_counter1_v_val_2_port, QN => 
                           n_1026);
   local_counter1_v_val_reg_1_inst : DF3 port map( D => local_counter1_N47, C 
                           => i_clk, Q => local_counter1_v_val_1_port, QN => 
                           n_1027);
   local_counter1_v_val_reg_0_inst : DF3 port map( D => local_counter1_N46, C 
                           => i_clk, Q => local_counter1_v_val_0_port, QN => 
                           n_1028);
   sig_state_reg_1_inst : DFE1 port map( D => N79, E => N204, C => i_clk, Q => 
                           sig_state_1_port, QN => n174);
   sig_state_reg_2_inst : DFE1 port map( D => N80, E => N204, C => i_clk, Q => 
                           sig_state_2_port, QN => n182_port);
   sig_state_reg_0_inst : DFE1 port map( D => N78, E => N204, C => i_clk, Q => 
                           sig_state_0_port, QN => n167);
   sig_reg_storage_reg_5_inst : DFE1 port map( D => i_reg(5), E => N76, C => 
                           i_clk, Q => sig_reg_storage_5_port, QN => n_1029);
   sig_reg_storage_reg_6_inst : DFE1 port map( D => i_reg(6), E => N76, C => 
                           i_clk, Q => sig_reg_storage_6_port, QN => n_1030);
   sig_reg_storage_reg_13_inst : DFE1 port map( D => i_reg(13), E => N76, C => 
                           i_clk, Q => sig_reg_storage_13_port, QN => n_1031);
   sig_reg_storage_reg_14_inst : DFE1 port map( D => i_reg(14), E => N76, C => 
                           i_clk, Q => sig_reg_storage_14_port, QN => n_1032);
   sig_reg_storage_reg_21_inst : DFE1 port map( D => i_reg(21), E => N76, C => 
                           i_clk, Q => sig_reg_storage_21_port, QN => n_1033);
   sig_reg_storage_reg_22_inst : DFE1 port map( D => i_reg(22), E => N76, C => 
                           i_clk, Q => sig_reg_storage_22_port, QN => n_1034);
   sig_reg_storage_reg_29_inst : DFE1 port map( D => i_reg(29), E => N76, C => 
                           i_clk, Q => sig_reg_storage_29_port, QN => n_1035);
   sig_reg_storage_reg_30_inst : DFE1 port map( D => i_reg(30), E => N76, C => 
                           i_clk, Q => sig_reg_storage_30_port, QN => n_1036);
   sig_reg_storage_reg_4_inst : DFE1 port map( D => i_reg(4), E => N76, C => 
                           i_clk, Q => sig_reg_storage_4_port, QN => n183_port)
                           ;
   sig_reg_storage_reg_12_inst : DFE1 port map( D => i_reg(12), E => N76, C => 
                           i_clk, Q => sig_reg_storage_12_port, QN => n186_port
                           );
   sig_reg_storage_reg_20_inst : DFE1 port map( D => i_reg(20), E => N76, C => 
                           i_clk, Q => sig_reg_storage_20_port, QN => n185_port
                           );
   sig_reg_storage_reg_28_inst : DFE1 port map( D => i_reg(28), E => N76, C => 
                           i_clk, Q => sig_reg_storage_28_port, QN => n184_port
                           );
   sig_reg_storage_reg_2_inst : DFE1 port map( D => i_reg(2), E => N76, C => 
                           i_clk, Q => sig_reg_storage_2_port, QN => n210);
   sig_reg_storage_reg_3_inst : DFE1 port map( D => i_reg(3), E => N76, C => 
                           i_clk, Q => sig_reg_storage_3_port, QN => n212);
   sig_reg_storage_reg_10_inst : DFE1 port map( D => i_reg(10), E => N76, C => 
                           i_clk, Q => sig_reg_storage_10_port, QN => n_1037);
   sig_reg_storage_reg_11_inst : DFE1 port map( D => i_reg(11), E => N76, C => 
                           i_clk, Q => sig_reg_storage_11_port, QN => n_1038);
   sig_reg_storage_reg_18_inst : DFE1 port map( D => i_reg(18), E => N76, C => 
                           i_clk, Q => sig_reg_storage_18_port, QN => n_1039);
   sig_reg_storage_reg_19_inst : DFE1 port map( D => i_reg(19), E => N76, C => 
                           i_clk, Q => sig_reg_storage_19_port, QN => n_1040);
   sig_reg_storage_reg_26_inst : DFE1 port map( D => i_reg(26), E => N76, C => 
                           i_clk, Q => sig_reg_storage_26_port, QN => n_1041);
   sig_reg_storage_reg_27_inst : DFE1 port map( D => i_reg(27), E => N76, C => 
                           i_clk, Q => sig_reg_storage_27_port, QN => n_1042);
   sig_reg_storage_reg_1_inst : DFE1 port map( D => i_reg(1), E => N76, C => 
                           i_clk, Q => sig_reg_storage_1_port, QN => n197_port)
                           ;
   sig_reg_storage_reg_9_inst : DFE1 port map( D => i_reg(9), E => N76, C => 
                           i_clk, Q => sig_reg_storage_9_port, QN => n196_port)
                           ;
   sig_reg_storage_reg_17_inst : DFE1 port map( D => i_reg(17), E => N76, C => 
                           i_clk, Q => sig_reg_storage_17_port, QN => n195_port
                           );
   sig_reg_storage_reg_25_inst : DFE1 port map( D => i_reg(25), E => N76, C => 
                           i_clk, Q => sig_reg_storage_25_port, QN => n194_port
                           );
   sig_reg_storage_reg_15_inst : DFE1 port map( D => i_reg(15), E => N76, C => 
                           i_clk, Q => sig_reg_storage_15_port, QN => n193_port
                           );
   sig_reg_storage_reg_23_inst : DFE1 port map( D => i_reg(23), E => N76, C => 
                           i_clk, Q => sig_reg_storage_23_port, QN => n192_port
                           );
   sig_reg_storage_reg_31_inst : DFE1 port map( D => i_reg(31), E => N76, C => 
                           i_clk, Q => sig_reg_storage_31_port, QN => n191_port
                           );
   sig_reg_storage_reg_7_inst : DFE1 port map( D => i_reg(7), E => N76, C => 
                           i_clk, Q => sig_reg_storage_7_port, QN => n190_port)
                           ;
   sig_reg_storage_reg_8_inst : DFE1 port map( D => i_reg(8), E => N76, C => 
                           i_clk, Q => sig_reg_storage_8_port, QN => n189_port)
                           ;
   sig_reg_storage_reg_16_inst : DFE1 port map( D => i_reg(16), E => N76, C => 
                           i_clk, Q => sig_reg_storage_16_port, QN => n188_port
                           );
   sig_reg_storage_reg_24_inst : DFE1 port map( D => i_reg(24), E => N76, C => 
                           i_clk, Q => sig_reg_storage_24_port, QN => n516);
   sig_reg_storage_reg_0_inst : DFE1 port map( D => i_reg(0), E => N76, C => 
                           i_clk, Q => sig_reg_storage_0_port, QN => n187_port)
                           ;
   U123 : NOR22 port map( A => n347, B => n419, Q => n357);
   U124 : NAND22 port map( A => n420, B => n421, Q => n347);
   U125 : NAND42 port map( A => n336, B => i_reset_n, C => n337, D => n338, Q 
                           => n316);
   U126 : NOR32 port map( A => n175, B => n517, C => n165, Q => n340);
   U127 : INV3 port map( A => n336, Q => N76);
   U128 : INV3 port map( A => sub_4_root_sub_235_cf_carry_16_port, Q => n519);
   U129 : NOR20 port map( A => add_1_root_sub_235_cf_carry_18_port, B => n519, 
                           Q => n241);
   U130 : NOR21 port map( A => n315, B => n190_port, Q => mult_114_A2_12_port);
   U131 : NOR21 port map( A => n257, B => n191_port, Q => mult_123_A2_12_port);
   U132 : NOR21 port map( A => n287_port, B => n192_port, Q => 
                           mult_120_A2_12_port);
   U133 : NOR21 port map( A => n301, B => n193_port, Q => mult_117_A2_12_port);
   U134 : XNR21 port map( A => N279, B => sub_0_root_sub_235_cf_carry_18_port, 
                           Q => N196);
   U135 : NOR21 port map( A => sub_0_root_sub_235_cf_carry_18_port, B => N279, 
                           Q => n243);
   U136 : XNR20 port map( A => n519, B => add_1_root_sub_235_cf_carry_17_port, 
                           Q => N280);
   U137 : XNR20 port map( A => n519, B => add_1_root_sub_235_cf_carry_18_port, 
                           Q => N279);
   U138 : INV3 port map( A => n240, Q => add_1_root_sub_235_cf_carry_18_port);
   U139 : NOR20 port map( A => add_1_root_sub_235_cf_carry_17_port, B => n519, 
                           Q => n240);
   U140 : XNR21 port map( A => N280, B => sub_0_root_sub_235_cf_carry_17_port, 
                           Q => N195);
   U141 : INV3 port map( A => n242, Q => sub_0_root_sub_235_cf_carry_18_port);
   U142 : NOR21 port map( A => sub_0_root_sub_235_cf_carry_17_port, B => N280, 
                           Q => n242);
   U143 : INV3 port map( A => n239, Q => add_1_root_sub_235_cf_carry_17_port);
   U144 : NOR20 port map( A => add_1_root_sub_235_cf_carry_16_port, B => n519, 
                           Q => n239);
   U145 : XNR20 port map( A => n519, B => add_1_root_sub_235_cf_carry_16_port, 
                           Q => N281);
   U146 : NOR21 port map( A => sig_cyclesTrame1_12_port, B => n268_port, Q => 
                           sub_4_root_sub_235_cf_carry_13_port);
   U147 : INV3 port map( A => sub_4_root_sub_235_cf_carry_12_port, Q => 
                           n268_port);
   U148 : XOR21 port map( A => n241, B => sub_4_root_sub_235_cf_carry_16_port, 
                           Q => N278);
   U149 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_15_port, B => 
                           n235_port, Q => N31);
   U150 : NOR21 port map( A => n266_port, B => n267, Q => 
                           sub_4_root_sub_235_cf_carry_12_port);
   U151 : INV3 port map( A => sub_4_root_sub_235_cf_carry_11_port, Q => n267);
   U152 : INV3 port map( A => n199, Q => n266_port);
   U153 : NOR21 port map( A => n269, B => n270, Q => 
                           sub_4_root_sub_235_cf_carry_14_port);
   U154 : INV3 port map( A => sub_4_root_sub_235_cf_carry_13_port, Q => n270);
   U155 : INV3 port map( A => n200, Q => n269);
   U156 : NOR21 port map( A => n265_port, B => n220_port, Q => 
                           sub_4_root_sub_235_cf_carry_11_port);
   U157 : INV3 port map( A => n201, Q => n265_port);
   U158 : NOR21 port map( A => n271, B => n272, Q => 
                           sub_4_root_sub_235_cf_carry_15_port);
   U159 : INV3 port map( A => sub_4_root_sub_235_cf_carry_14_port, Q => n272);
   U160 : INV3 port map( A => n202, Q => n271);
   U161 : INV3 port map( A => n220_port, Q => 
                           sub_4_root_sub_235_cf_carry_10_port);
   U162 : NOR21 port map( A => n198, B => sub_4_root_sub_235_cf_carry_9_port, Q
                           => n220_port);
   U163 : NOR21 port map( A => sig_cyclesTrame1_15_port, B => n273, Q => 
                           sub_4_root_sub_235_cf_carry_16_port);
   U164 : INV3 port map( A => sub_4_root_sub_235_cf_carry_15_port, Q => n273);
   U165 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_10_port, B => n201, 
                           Q => N26);
   U166 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_11_port, B => n199, 
                           Q => N27);
   U167 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_12_port, B => n520, 
                           Q => N28);
   U168 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_14_port, B => n202, 
                           Q => N30);
   U169 : XNR21 port map( A => sub_4_root_sub_235_cf_carry_9_port, B => n198, Q
                           => N25);
   U170 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_13_port, B => n200, 
                           Q => N29);
   U171 : XNR21 port map( A => sub_114_cf_carry_9_port, B => N268, Q => n198);
   U172 : INV3 port map( A => n235_port, Q => sig_cyclesTrame1_15_port);
   U173 : NOR21 port map( A => N263, B => sub_114_cf_carry_14_port, Q => 
                           n235_port);
   U174 : XNR21 port map( A => sub_114_cf_carry_11_port, B => N266, Q => n199);
   U175 : XNR21 port map( A => sub_114_cf_carry_13_port, B => N264, Q => n200);
   U176 : XOR21 port map( A => sub_114_cf_carry_10_port, B => n521, Q => n201);
   U177 : XOR21 port map( A => sub_114_cf_carry_14_port, B => N263, Q => n202);
   U178 : XOR21 port map( A => sub_117_cf_carry_12_port, B => N250, Q => 
                           sig_cyclesTrame2_12_port);
   U179 : XOR21 port map( A => sub_117_cf_carry_13_port, B => N249, Q => 
                           sig_cyclesTrame2_13_port);
   U180 : XOR21 port map( A => sub_117_cf_carry_11_port, B => N251, Q => 
                           sig_cyclesTrame2_11_port);
   U181 : XOR21 port map( A => sub_117_cf_carry_9_port, B => N253, Q => 
                           sig_cyclesTrame2_9_port);
   U182 : XOR21 port map( A => sub_120_cf_carry_12_port, B => N235, Q => 
                           sig_cyclesTrame3_12_port);
   U183 : XOR21 port map( A => sub_120_cf_carry_13_port, B => N234, Q => 
                           sig_cyclesTrame3_13_port);
   U184 : XOR21 port map( A => sub_120_cf_carry_11_port, B => N236, Q => 
                           sig_cyclesTrame3_11_port);
   U185 : XOR21 port map( A => sub_120_cf_carry_9_port, B => N238, Q => 
                           sig_cyclesTrame3_9_port);
   U186 : XNR21 port map( A => sub_117_cf_carry_14_port, B => N248, Q => 
                           sig_cyclesTrame2_14_port);
   U187 : XNR21 port map( A => sub_117_cf_carry_10_port, B => n529, Q => 
                           sig_cyclesTrame2_10_port);
   U188 : XNR21 port map( A => sub_120_cf_carry_14_port, B => N233, Q => 
                           sig_cyclesTrame3_14_port);
   U189 : XNR21 port map( A => sub_120_cf_carry_10_port, B => n538, Q => 
                           sig_cyclesTrame3_10_port);
   U190 : NOR21 port map( A => n262, B => n263_port, Q => 
                           sub_4_root_sub_235_cf_carry_6_port);
   U191 : INV3 port map( A => sub_4_root_sub_235_cf_carry_5_port, Q => 
                           n263_port);
   U192 : INV3 port map( A => n205, Q => n262);
   U193 : NOR21 port map( A => n264_port, B => n219_port, Q => 
                           sub_4_root_sub_235_cf_carry_9_port);
   U194 : INV3 port map( A => n206, Q => n264_port);
   U195 : NOR21 port map( A => n311, B => n312, Q => sub_114_cf_carry_14_port);
   U196 : INV3 port map( A => sub_114_cf_carry_13_port, Q => n312);
   U197 : INV3 port map( A => N264, Q => n311);
   U198 : NOR21 port map( A => n253_port, B => n254, Q => 
                           sub_123_cf_carry_14_port);
   U199 : INV3 port map( A => sub_123_cf_carry_13_port, Q => n254);
   U200 : INV3 port map( A => N219, Q => n253_port);
   U201 : NOR21 port map( A => n283_port, B => n284_port, Q => 
                           sub_120_cf_carry_14_port);
   U202 : INV3 port map( A => sub_120_cf_carry_13_port, Q => n284_port);
   U203 : INV3 port map( A => N234, Q => n283_port);
   U204 : NOR21 port map( A => n297, B => n298, Q => sub_117_cf_carry_14_port);
   U205 : INV3 port map( A => sub_117_cf_carry_13_port, Q => n298);
   U206 : INV3 port map( A => N249, Q => n297);
   U207 : INV3 port map( A => n218_port, Q => 
                           sub_4_root_sub_235_cf_carry_7_port);
   U208 : NOR21 port map( A => n204_port, B => 
                           sub_4_root_sub_235_cf_carry_6_port, Q => n218_port);
   U209 : NOR21 port map( A => n308, B => n234_port, Q => 
                           sub_114_cf_carry_12_port);
   U210 : INV3 port map( A => N266, Q => n308);
   U211 : NOR21 port map( A => n250_port, B => n216, Q => 
                           sub_123_cf_carry_12_port);
   U212 : INV3 port map( A => N221, Q => n250_port);
   U213 : NOR21 port map( A => n280_port, B => n224, Q => 
                           sub_120_cf_carry_12_port);
   U214 : INV3 port map( A => N236, Q => n280_port);
   U215 : NOR21 port map( A => n294_port, B => n229, Q => 
                           sub_117_cf_carry_12_port);
   U216 : INV3 port map( A => N251, Q => n294_port);
   U217 : NOR21 port map( A => n309, B => n310, Q => sub_114_cf_carry_13_port);
   U218 : INV3 port map( A => sub_114_cf_carry_12_port, Q => n310);
   U219 : INV3 port map( A => N265, Q => n309);
   U220 : NOR21 port map( A => n251_port, B => n252, Q => 
                           sub_123_cf_carry_13_port);
   U221 : INV3 port map( A => sub_123_cf_carry_12_port, Q => n252);
   U222 : INV3 port map( A => N220, Q => n251_port);
   U223 : NOR21 port map( A => n281_port, B => n282_port, Q => 
                           sub_120_cf_carry_13_port);
   U224 : INV3 port map( A => sub_120_cf_carry_12_port, Q => n282_port);
   U225 : INV3 port map( A => N235, Q => n281_port);
   U226 : NOR21 port map( A => n295_port, B => n296_port, Q => 
                           sub_117_cf_carry_13_port);
   U227 : INV3 port map( A => sub_117_cf_carry_12_port, Q => n296_port);
   U228 : INV3 port map( A => N250, Q => n295_port);
   U229 : INV3 port map( A => n219_port, Q => 
                           sub_4_root_sub_235_cf_carry_8_port);
   U230 : NOR21 port map( A => n203, B => sub_4_root_sub_235_cf_carry_7_port, Q
                           => n219_port);
   U231 : XOR21 port map( A => sub_114_cf_carry_12_port, B => N265, Q => 
                           sig_cyclesTrame1_12_port);
   U232 : INV3 port map( A => n230, Q => sig_cyclesTrame2_15_port);
   U233 : NOR21 port map( A => N248, B => sub_117_cf_carry_14_port, Q => n230);
   U234 : NOR21 port map( A => n306, B => n307, Q => sub_114_cf_carry_10_port);
   U235 : INV3 port map( A => sub_114_cf_carry_9_port, Q => n307);
   U236 : INV3 port map( A => N268, Q => n306);
   U237 : NOR21 port map( A => n248_port, B => n249_port, Q => 
                           sub_123_cf_carry_10_port);
   U238 : INV3 port map( A => sub_123_cf_carry_9_port, Q => n249_port);
   U239 : INV3 port map( A => N223, Q => n248_port);
   U240 : NOR21 port map( A => n278_port, B => n279_port, Q => 
                           sub_120_cf_carry_10_port);
   U241 : INV3 port map( A => sub_120_cf_carry_9_port, Q => n279_port);
   U242 : INV3 port map( A => N238, Q => n278_port);
   U243 : NOR21 port map( A => n292_port, B => n293_port, Q => 
                           sub_117_cf_carry_10_port);
   U244 : INV3 port map( A => sub_117_cf_carry_9_port, Q => n293_port);
   U245 : INV3 port map( A => N253, Q => n292_port);
   U246 : INV3 port map( A => n234_port, Q => sub_114_cf_carry_11_port);
   U247 : NOR21 port map( A => n521, B => sub_114_cf_carry_10_port, Q => 
                           n234_port);
   U248 : INV3 port map( A => n216, Q => sub_123_cf_carry_11_port);
   U249 : NOR21 port map( A => n544, B => sub_123_cf_carry_10_port, Q => n216);
   U250 : INV3 port map( A => n224, Q => sub_120_cf_carry_11_port);
   U251 : NOR21 port map( A => n538, B => sub_120_cf_carry_10_port, Q => n224);
   U252 : INV3 port map( A => n229, Q => sub_117_cf_carry_11_port);
   U253 : NOR21 port map( A => n529, B => sub_117_cf_carry_10_port, Q => n229);
   U254 : INV3 port map( A => n225, Q => sig_cyclesTrame3_15_port);
   U255 : NOR21 port map( A => N233, B => sub_120_cf_carry_14_port, Q => n225);
   U256 : XOR21 port map( A => sub_123_cf_carry_12_port, B => N220, Q => 
                           sig_cyclesTrame4_12_port);
   U257 : XOR21 port map( A => sub_123_cf_carry_13_port, B => N219, Q => 
                           sig_cyclesTrame4_13_port);
   U258 : XOR21 port map( A => sub_123_cf_carry_11_port, B => N221, Q => 
                           sig_cyclesTrame4_11_port);
   U259 : XOR21 port map( A => sub_123_cf_carry_9_port, B => N223, Q => 
                           sig_cyclesTrame4_9_port);
   U260 : XNR21 port map( A => sub_4_root_sub_235_cf_carry_6_port, B => 
                           n204_port, Q => N22);
   U261 : XNR21 port map( A => sub_4_root_sub_235_cf_carry_7_port, B => n203, Q
                           => N23);
   U262 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_8_port, B => n206, Q
                           => N24);
   U263 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_5_port, B => n205, Q
                           => N21);
   U264 : XNR21 port map( A => sub_123_cf_carry_14_port, B => N218, Q => 
                           sig_cyclesTrame4_14_port);
   U265 : XNR21 port map( A => sub_123_cf_carry_10_port, B => n544, Q => 
                           sig_cyclesTrame4_10_port);
   U266 : INV3 port map( A => n217, Q => sig_cyclesTrame4_15_port);
   U267 : NOR21 port map( A => N218, B => sub_123_cf_carry_14_port, Q => n217);
   U268 : XNR21 port map( A => sub_114_cf_carry_7_port, B => 
                           mult_114_SUMB_6_1_port, Q => n203);
   U269 : XOR21 port map( A => sub_114_cf_carry_6_port, B => 
                           mult_114_SUMB_5_1_port, Q => n204_port);
   U270 : XNR21 port map( A => sub_114_cf_carry_5_port, B => 
                           mult_114_SUMB_4_1_port, Q => n205);
   U271 : XNR21 port map( A => sub_114_cf_carry_8_port, B => 
                           mult_114_SUMB_7_1_port, Q => n206);
   U272 : INV3 port map( A => mult_114_CARRYB_7_5_port, Q => n315);
   U273 : INV3 port map( A => mult_123_CARRYB_7_5_port, Q => n257);
   U274 : INV3 port map( A => mult_120_CARRYB_7_5_port, Q => n287_port);
   U275 : INV3 port map( A => mult_117_CARRYB_7_5_port, Q => n301);
   U276 : XOR21 port map( A => n189_port, B => n188_port, Q => n207);
   U277 : XOR21 port map( A => mult_114_SUMB_4_5_port, B => 
                           mult_114_CARRYB_7_1_port, Q => N268);
   U278 : XOR21 port map( A => mult_123_SUMB_4_5_port, B => 
                           mult_123_CARRYB_7_1_port, Q => N223);
   U279 : XOR21 port map( A => mult_120_SUMB_4_5_port, B => 
                           mult_120_CARRYB_7_1_port, Q => N238);
   U280 : XOR21 port map( A => mult_117_SUMB_4_5_port, B => 
                           mult_117_CARRYB_7_1_port, Q => N253);
   U281 : XOR21 port map( A => sub_117_cf_carry_8_port, B => 
                           mult_117_SUMB_7_1_port, Q => sig_cyclesTrame2_8_port
                           );
   U282 : XOR21 port map( A => sub_117_cf_carry_5_port, B => 
                           mult_117_SUMB_4_1_port, Q => sig_cyclesTrame2_5_port
                           );
   U283 : XOR21 port map( A => sub_117_cf_carry_7_port, B => 
                           mult_117_SUMB_6_1_port, Q => sig_cyclesTrame2_7_port
                           );
   U284 : XOR21 port map( A => sub_120_cf_carry_8_port, B => 
                           mult_120_SUMB_7_1_port, Q => sig_cyclesTrame3_8_port
                           );
   U285 : XOR21 port map( A => sub_120_cf_carry_5_port, B => 
                           mult_120_SUMB_4_1_port, Q => sig_cyclesTrame3_5_port
                           );
   U286 : XOR21 port map( A => sub_120_cf_carry_7_port, B => 
                           mult_120_SUMB_6_1_port, Q => sig_cyclesTrame3_7_port
                           );
   U287 : XNR21 port map( A => sub_117_cf_carry_6_port, B => 
                           mult_117_SUMB_5_1_port, Q => sig_cyclesTrame2_6_port
                           );
   U288 : XNR21 port map( A => sub_120_cf_carry_6_port, B => 
                           mult_120_SUMB_5_1_port, Q => sig_cyclesTrame3_6_port
                           );
   U289 : NOR21 port map( A => n258, B => n259, Q => 
                           sub_4_root_sub_235_cf_carry_4_port);
   U290 : INV3 port map( A => sub_4_root_sub_235_cf_carry_3_port, Q => n259);
   U291 : INV3 port map( A => n209, Q => n258);
   U292 : NOR21 port map( A => n260, B => n261, Q => 
                           sub_4_root_sub_235_cf_carry_5_port);
   U293 : INV3 port map( A => sub_4_root_sub_235_cf_carry_4_port, Q => n261);
   U294 : INV3 port map( A => n211, Q => n260);
   U295 : NOR21 port map( A => n302, B => n232, Q => sub_114_cf_carry_6_port);
   U296 : INV3 port map( A => mult_114_SUMB_4_1_port, Q => n302);
   U297 : NOR21 port map( A => n244, B => n214, Q => sub_123_cf_carry_6_port);
   U298 : INV3 port map( A => mult_123_SUMB_4_1_port, Q => n244);
   U299 : NOR21 port map( A => n274, B => n222, Q => sub_120_cf_carry_6_port);
   U300 : INV3 port map( A => mult_120_SUMB_4_1_port, Q => n274);
   U301 : NOR21 port map( A => n288_port, B => n227, Q => 
                           sub_117_cf_carry_6_port);
   U302 : INV3 port map( A => mult_117_SUMB_4_1_port, Q => n288_port);
   U303 : XOR21 port map( A => sub_123_cf_carry_8_port, B => 
                           mult_123_SUMB_7_1_port, Q => sig_cyclesTrame4_8_port
                           );
   U304 : XOR21 port map( A => sub_123_cf_carry_5_port, B => 
                           mult_123_SUMB_4_1_port, Q => sig_cyclesTrame4_5_port
                           );
   U305 : XOR21 port map( A => sub_123_cf_carry_7_port, B => 
                           mult_123_SUMB_6_1_port, Q => sig_cyclesTrame4_7_port
                           );
   U306 : NOR21 port map( A => n304, B => n305, Q => sub_114_cf_carry_9_port);
   U307 : INV3 port map( A => sub_114_cf_carry_8_port, Q => n305);
   U308 : INV3 port map( A => mult_114_SUMB_7_1_port, Q => n304);
   U309 : NOR21 port map( A => n246, B => n247, Q => sub_123_cf_carry_9_port);
   U310 : INV3 port map( A => sub_123_cf_carry_8_port, Q => n247);
   U311 : INV3 port map( A => mult_123_SUMB_7_1_port, Q => n246);
   U312 : NOR21 port map( A => n276, B => n277, Q => sub_120_cf_carry_9_port);
   U313 : INV3 port map( A => sub_120_cf_carry_8_port, Q => n277);
   U314 : INV3 port map( A => mult_120_SUMB_7_1_port, Q => n276);
   U315 : NOR21 port map( A => n290_port, B => n291_port, Q => 
                           sub_117_cf_carry_9_port);
   U316 : INV3 port map( A => sub_117_cf_carry_8_port, Q => n291_port);
   U317 : INV3 port map( A => mult_117_SUMB_7_1_port, Q => n290_port);
   U318 : NOR21 port map( A => n303, B => n233_port, Q => 
                           sub_114_cf_carry_8_port);
   U319 : INV3 port map( A => mult_114_SUMB_6_1_port, Q => n303);
   U320 : NOR21 port map( A => n245, B => n215, Q => sub_123_cf_carry_8_port);
   U321 : INV3 port map( A => mult_123_SUMB_6_1_port, Q => n245);
   U322 : NOR21 port map( A => n275, B => n223_port, Q => 
                           sub_120_cf_carry_8_port);
   U323 : INV3 port map( A => mult_120_SUMB_6_1_port, Q => n275);
   U324 : NOR21 port map( A => n289_port, B => n228, Q => 
                           sub_117_cf_carry_8_port);
   U325 : INV3 port map( A => mult_117_SUMB_6_1_port, Q => n289_port);
   U326 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_3_port, B => n209, Q
                           => N19);
   U327 : XOR21 port map( A => sub_4_root_sub_235_cf_carry_4_port, B => n211, Q
                           => N20);
   U328 : INV3 port map( A => n238_port, Q => 
                           sub_0_root_sub_235_cf_carry_2_port);
   U329 : NOR21 port map( A => n207, B => N296, Q => n238_port);
   U330 : INV3 port map( A => n237, Q => add_3_root_sub_235_cf_carry_2_port);
   U331 : NOR21 port map( A => n188_port, B => n189_port, Q => n237);
   U332 : XNR21 port map( A => sub_123_cf_carry_6_port, B => 
                           mult_123_SUMB_5_1_port, Q => sig_cyclesTrame4_6_port
                           );
   U333 : INV3 port map( A => n233_port, Q => sub_114_cf_carry_7_port);
   U334 : NOR21 port map( A => mult_114_SUMB_5_1_port, B => 
                           sub_114_cf_carry_6_port, Q => n233_port);
   U335 : INV3 port map( A => n215, Q => sub_123_cf_carry_7_port);
   U336 : NOR21 port map( A => mult_123_SUMB_5_1_port, B => 
                           sub_123_cf_carry_6_port, Q => n215);
   U337 : INV3 port map( A => n223_port, Q => sub_120_cf_carry_7_port);
   U338 : NOR21 port map( A => mult_120_SUMB_5_1_port, B => 
                           sub_120_cf_carry_6_port, Q => n223_port);
   U339 : INV3 port map( A => n228, Q => sub_117_cf_carry_7_port);
   U340 : NOR21 port map( A => mult_117_SUMB_5_1_port, B => 
                           sub_117_cf_carry_6_port, Q => n228);
   U341 : NOR21 port map( A => n313, B => n314, Q => mult_114_A2_8_port);
   U342 : INV3 port map( A => mult_114_SUMB_4_5_port, Q => n314);
   U343 : INV3 port map( A => mult_114_CARRYB_7_1_port, Q => n313);
   U344 : NOR21 port map( A => n255, B => n256, Q => mult_123_A2_8_port);
   U345 : INV3 port map( A => mult_123_SUMB_4_5_port, Q => n256);
   U346 : INV3 port map( A => mult_123_CARRYB_7_1_port, Q => n255);
   U347 : NOR21 port map( A => n285_port, B => n286_port, Q => 
                           mult_120_A2_8_port);
   U348 : INV3 port map( A => mult_120_SUMB_4_5_port, Q => n286_port);
   U349 : INV3 port map( A => mult_120_CARRYB_7_1_port, Q => n285_port);
   U350 : NOR21 port map( A => n299, B => n300, Q => mult_117_A2_8_port);
   U351 : INV3 port map( A => mult_117_SUMB_4_5_port, Q => n300);
   U352 : INV3 port map( A => mult_117_CARRYB_7_1_port, Q => n299);
   U353 : XNR21 port map( A => N296, B => n207, Q => N179);
   U354 : XNR21 port map( A => sig_reg_storage_0_port, B => 
                           sig_reg_storage_1_port, Q => n208);
   U355 : XNR21 port map( A => sub_114_cf_carry_3_port, B => n210, Q => n209);
   U356 : XNR21 port map( A => sub_114_cf_carry_4_port, B => n212, Q => n211);
   U357 : NOR21 port map( A => sig_reg_storage_24_port, B => n187_port, Q => 
                           n236_port);
   U358 : XOR21 port map( A => n243, B => N278, Q => N197);
   U359 : XOR21 port map( A => sig_reg_storage_4_port, B => 
                           sig_reg_storage_0_port, Q => mult_114_SUMB_4_1_port)
                           ;
   U360 : XOR21 port map( A => sig_reg_storage_28_port, B => 
                           sig_reg_storage_24_port, Q => mult_123_SUMB_4_1_port
                           );
   U361 : XOR21 port map( A => sig_reg_storage_20_port, B => 
                           sig_reg_storage_16_port, Q => mult_120_SUMB_4_1_port
                           );
   U362 : XOR21 port map( A => sig_reg_storage_12_port, B => 
                           sig_reg_storage_8_port, Q => mult_117_SUMB_4_1_port)
                           ;
   U363 : XNR21 port map( A => n187_port, B => sig_reg_storage_24_port, Q => 
                           N296);
   U364 : XOR21 port map( A => sig_reg_storage_8_port, B => 
                           sig_reg_storage_9_port, Q => sig_cyclesTrame2_2_port
                           );
   U365 : XOR21 port map( A => sig_reg_storage_16_port, B => 
                           sig_reg_storage_17_port, Q => 
                           sig_cyclesTrame3_2_port);
   U366 : XNR21 port map( A => sub_117_cf_carry_4_port, B => 
                           sig_reg_storage_11_port, Q => 
                           sig_cyclesTrame2_4_port);
   U367 : XNR21 port map( A => sub_117_cf_carry_3_port, B => 
                           sig_reg_storage_10_port, Q => 
                           sig_cyclesTrame2_3_port);
   U368 : XNR21 port map( A => sub_120_cf_carry_4_port, B => 
                           sig_reg_storage_19_port, Q => 
                           sig_cyclesTrame3_4_port);
   U369 : XNR21 port map( A => sub_120_cf_carry_3_port, B => 
                           sig_reg_storage_18_port, Q => 
                           sig_cyclesTrame3_3_port);
   U370 : NOR21 port map( A => mult_114_SUMB_1_5_port, B => n187_port, Q => 
                           sub_4_root_sub_235_cf_carry_3_port);
   U371 : NOR21 port map( A => n197_port, B => n187_port, Q => 
                           sub_114_cf_carry_3_port);
   U372 : NOR21 port map( A => n194_port, B => n516, Q => 
                           sub_123_cf_carry_3_port);
   U373 : NOR21 port map( A => n187_port, B => n197_port, Q => 
                           mult_114_CARRYB_1_5_port);
   U374 : NOR21 port map( A => n183_port, B => n187_port, Q => 
                           mult_114_CARRYB_4_1_port);
   U375 : XOR21 port map( A => sig_reg_storage_0_port, B => 
                           sig_reg_storage_1_port, Q => mult_114_SUMB_1_5_port)
                           ;
   U376 : NOR21 port map( A => n516, B => n194_port, Q => 
                           mult_123_CARRYB_1_5_port);
   U377 : NOR21 port map( A => n184_port, B => n516, Q => 
                           mult_123_CARRYB_4_1_port);
   U378 : XOR21 port map( A => sig_reg_storage_24_port, B => 
                           sig_reg_storage_25_port, Q => mult_123_SUMB_1_5_port
                           );
   U379 : NOR21 port map( A => n188_port, B => n195_port, Q => 
                           mult_120_CARRYB_1_5_port);
   U380 : NOR21 port map( A => n189_port, B => n196_port, Q => 
                           mult_117_CARRYB_1_5_port);
   U381 : NOR21 port map( A => n185_port, B => n188_port, Q => 
                           mult_120_CARRYB_4_1_port);
   U382 : XOR21 port map( A => sig_reg_storage_16_port, B => 
                           sig_reg_storage_17_port, Q => mult_120_SUMB_1_5_port
                           );
   U383 : NOR21 port map( A => n186_port, B => n189_port, Q => 
                           mult_117_CARRYB_4_1_port);
   U384 : XOR21 port map( A => sig_reg_storage_8_port, B => 
                           sig_reg_storage_9_port, Q => mult_117_SUMB_1_5_port)
                           ;
   U385 : NOR21 port map( A => n195_port, B => n188_port, Q => 
                           sub_120_cf_carry_3_port);
   U386 : NOR21 port map( A => n196_port, B => n189_port, Q => 
                           sub_117_cf_carry_3_port);
   U387 : XOR21 port map( A => sig_reg_storage_7_port, B => 
                           mult_114_CARRYB_7_5_port, Q => mult_114_A1_11_port);
   U388 : XOR21 port map( A => sig_reg_storage_31_port, B => 
                           mult_123_CARRYB_7_5_port, Q => mult_123_A1_11_port);
   U389 : XOR21 port map( A => sig_reg_storage_23_port, B => 
                           mult_120_CARRYB_7_5_port, Q => mult_120_A1_11_port);
   U390 : XOR21 port map( A => sig_reg_storage_15_port, B => 
                           mult_117_CARRYB_7_5_port, Q => mult_117_A1_11_port);
   U391 : XOR21 port map( A => sig_reg_storage_24_port, B => 
                           sig_reg_storage_25_port, Q => 
                           sig_cyclesTrame4_2_port);
   U392 : INV3 port map( A => n236_port, Q => 
                           add_1_root_sub_235_cf_carry_2_port);
   U393 : XOR21 port map( A => sig_reg_storage_0_port, B => n208, Q => N18);
   U394 : XNR21 port map( A => sub_123_cf_carry_3_port, B => 
                           sig_reg_storage_26_port, Q => 
                           sig_cyclesTrame4_3_port);
   U395 : XNR21 port map( A => sub_123_cf_carry_4_port, B => 
                           sig_reg_storage_27_port, Q => 
                           sig_cyclesTrame4_4_port);
   U396 : INV3 port map( A => n231, Q => sub_114_cf_carry_4_port);
   U397 : NOR21 port map( A => sig_reg_storage_2_port, B => 
                           sub_114_cf_carry_3_port, Q => n231);
   U398 : INV3 port map( A => n213, Q => sub_123_cf_carry_4_port);
   U399 : NOR21 port map( A => sig_reg_storage_26_port, B => 
                           sub_123_cf_carry_3_port, Q => n213);
   U400 : INV3 port map( A => n221_port, Q => sub_120_cf_carry_4_port);
   U401 : NOR21 port map( A => sig_reg_storage_18_port, B => 
                           sub_120_cf_carry_3_port, Q => n221_port);
   U402 : INV3 port map( A => n226, Q => sub_117_cf_carry_4_port);
   U403 : NOR21 port map( A => sig_reg_storage_10_port, B => 
                           sub_117_cf_carry_3_port, Q => n226);
   U404 : INV3 port map( A => n232, Q => sub_114_cf_carry_5_port);
   U405 : NOR21 port map( A => sig_reg_storage_3_port, B => 
                           sub_114_cf_carry_4_port, Q => n232);
   U406 : INV3 port map( A => n214, Q => sub_123_cf_carry_5_port);
   U407 : NOR21 port map( A => sig_reg_storage_27_port, B => 
                           sub_123_cf_carry_4_port, Q => n214);
   U408 : INV3 port map( A => n222, Q => sub_120_cf_carry_5_port);
   U409 : NOR21 port map( A => sig_reg_storage_19_port, B => 
                           sub_120_cf_carry_4_port, Q => n222);
   U410 : INV3 port map( A => n227, Q => sub_117_cf_carry_5_port);
   U411 : NOR21 port map( A => sig_reg_storage_11_port, B => 
                           sub_117_cf_carry_4_port, Q => n227);
   U412 : CLKIN0 port map( A => sig_cyclesTrame1_12_port, Q => n520);
   U413 : XOR20 port map( A => mult_114_A2_8_port, B => mult_114_SUMB_5_5_port,
                           Q => n521);
   U414 : CLKIN0 port map( A => add_3_root_sub_235_cf_carry_16_port, Q => n522)
                           ;
   U415 : CLKIN0 port map( A => N51, Q => n523);
   U416 : CLKIN0 port map( A => N50, Q => n524);
   U417 : CLKIN0 port map( A => N49, Q => n525);
   U418 : CLKIN0 port map( A => N48, Q => n526);
   U419 : CLKIN0 port map( A => N47, Q => n527);
   U420 : CLKIN0 port map( A => N46, Q => n528);
   U421 : XOR20 port map( A => mult_117_A2_8_port, B => mult_117_SUMB_5_5_port,
                           Q => n529);
   U422 : CLKIN0 port map( A => N45, Q => n530);
   U423 : CLKIN0 port map( A => N44, Q => n531);
   U424 : CLKIN0 port map( A => N43, Q => n532);
   U425 : CLKIN0 port map( A => N42, Q => n533);
   U426 : CLKIN0 port map( A => N41, Q => n534);
   U427 : CLKIN0 port map( A => N40, Q => n535);
   U428 : CLKIN0 port map( A => N39, Q => n536);
   U429 : CLKIN0 port map( A => N38, Q => n537);
   U430 : XOR20 port map( A => mult_120_A2_8_port, B => mult_120_SUMB_5_5_port,
                           Q => n538);
   U431 : CLKIN0 port map( A => sig_cyclesTrame4_14_port, Q => n539);
   U432 : CLKIN0 port map( A => sig_cyclesTrame4_13_port, Q => n540);
   U433 : CLKIN0 port map( A => sig_cyclesTrame4_12_port, Q => n541);
   U434 : CLKIN0 port map( A => sig_cyclesTrame4_11_port, Q => n542);
   U435 : CLKIN0 port map( A => sig_cyclesTrame4_10_port, Q => n543);
   U436 : XOR20 port map( A => mult_123_A2_8_port, B => mult_123_SUMB_5_5_port,
                           Q => n544);
   U437 : CLKIN0 port map( A => sig_cyclesTrame4_9_port, Q => n545);
   U438 : CLKIN0 port map( A => sig_cyclesTrame4_8_port, Q => n546);
   U439 : CLKIN0 port map( A => sig_cyclesTrame4_7_port, Q => n547);
   U440 : CLKIN0 port map( A => sig_cyclesTrame4_6_port, Q => n548);
   U441 : CLKIN0 port map( A => sig_cyclesTrame4_5_port, Q => n549);
   U442 : CLKIN0 port map( A => sig_cyclesTrame4_4_port, Q => n550);
   U443 : CLKIN0 port map( A => sig_cyclesTrame4_3_port, Q => n551);
   U444 : CLKIN0 port map( A => sig_cyclesTrame4_2_port, Q => n552);
   U445 : NOR20 port map( A => n316, B => n317, Q => local_counter1_N65);
   U446 : XNR20 port map( A => local_counter1_v_val_19_port, B => 
                           local_counter1_add_34_carry_19_port, Q => n317);
   U447 : NOR20 port map( A => n316, B => n318, Q => local_counter1_N64);
   U448 : CLKIN0 port map( A => local_counter1_N24, Q => n318);
   U449 : NOR20 port map( A => n316, B => n319, Q => local_counter1_N63);
   U450 : CLKIN0 port map( A => local_counter1_N23, Q => n319);
   U451 : NOR20 port map( A => n316, B => n320, Q => local_counter1_N62);
   U452 : CLKIN0 port map( A => local_counter1_N22, Q => n320);
   U453 : NOR20 port map( A => n316, B => n321, Q => local_counter1_N61);
   U454 : CLKIN0 port map( A => local_counter1_N21, Q => n321);
   U455 : NOR20 port map( A => n316, B => n322, Q => local_counter1_N60);
   U456 : CLKIN0 port map( A => local_counter1_N20, Q => n322);
   U457 : NOR20 port map( A => n316, B => n323, Q => local_counter1_N59);
   U458 : CLKIN0 port map( A => local_counter1_N19, Q => n323);
   U459 : NOR20 port map( A => n316, B => n324, Q => local_counter1_N58);
   U460 : CLKIN0 port map( A => local_counter1_N18, Q => n324);
   U461 : NOR20 port map( A => n316, B => n325, Q => local_counter1_N57);
   U462 : CLKIN0 port map( A => local_counter1_N17, Q => n325);
   U463 : NOR20 port map( A => n316, B => n326, Q => local_counter1_N56);
   U464 : CLKIN0 port map( A => local_counter1_N16, Q => n326);
   U465 : NOR20 port map( A => n316, B => n327, Q => local_counter1_N55);
   U466 : CLKIN0 port map( A => local_counter1_N15, Q => n327);
   U467 : NOR20 port map( A => n316, B => n328, Q => local_counter1_N54);
   U468 : CLKIN0 port map( A => local_counter1_N14, Q => n328);
   U469 : NOR20 port map( A => n316, B => n329, Q => local_counter1_N53);
   U470 : CLKIN0 port map( A => local_counter1_N13, Q => n329);
   U471 : NOR20 port map( A => n316, B => n330, Q => local_counter1_N52);
   U472 : CLKIN0 port map( A => local_counter1_N12, Q => n330);
   U473 : NOR20 port map( A => n316, B => n331, Q => local_counter1_N51);
   U474 : CLKIN0 port map( A => local_counter1_N11, Q => n331);
   U475 : NOR20 port map( A => n316, B => n332, Q => local_counter1_N50);
   U476 : CLKIN0 port map( A => local_counter1_N10, Q => n332);
   U477 : NOR20 port map( A => n316, B => n333, Q => local_counter1_N49);
   U478 : CLKIN0 port map( A => local_counter1_N9, Q => n333);
   U479 : NOR20 port map( A => n316, B => n334, Q => local_counter1_N48);
   U480 : CLKIN0 port map( A => local_counter1_N8, Q => n334);
   U481 : NOR20 port map( A => n316, B => n335, Q => local_counter1_N47);
   U482 : CLKIN0 port map( A => local_counter1_N7, Q => n335);
   U483 : NOR20 port map( A => n316, B => local_counter1_v_val_0_port, Q => 
                           local_counter1_N46);
   U484 : NAND20 port map( A => n339, B => n340, Q => n338);
   U485 : CLKIN0 port map( A => n341, Q => n337);
   U486 : OAI310 port map( A => n342, B => n518, C => n165, D => n343, Q => 
                           n341);
   U487 : NAND20 port map( A => n344, B => n345, Q => n343);
   U488 : AOI210 port map( A => n346, B => n339, C => n347, Q => n342);
   U489 : NOR30 port map( A => n348, B => n349, C => n350, Q => N83);
   U490 : OAI2110 port map( A => n339, B => n349, C => n351, D => i_reset_n, Q 
                           => N82);
   U491 : NAND30 port map( A => n344, B => n346, C => n352, Q => n351);
   U492 : NAND30 port map( A => n353, B => n354, C => i_reset_n, Q => N81);
   U493 : NAND30 port map( A => n344, B => n355, C => n352, Q => n354);
   U494 : CLKIN0 port map( A => n356, Q => n344);
   U495 : OAI210 port map( A => n355, B => n350, C => n357, Q => n353);
   U496 : IMUX20 port map( A => n358, B => n359, S => sig_state_2_port, Q => 
                           N80);
   U497 : AOI210 port map( A => N77, B => n360, C => n361, Q => n359);
   U498 : NAND20 port map( A => n362, B => n363, Q => n358);
   U499 : CLKIN0 port map( A => n360, Q => n363);
   U500 : IMUX20 port map( A => n364, B => n365, S => sig_state_1_port, Q => 
                           N79);
   U501 : AOI210 port map( A => N77, B => n167, C => n361, Q => n365);
   U502 : NAND20 port map( A => n362, B => sig_state_0_port, Q => n364);
   U503 : MUX21 port map( A => n361, B => n362, S => n167, Q => N78);
   U504 : NOR30 port map( A => n356, B => n346, C => n366, Q => n362);
   U505 : CLKIN0 port map( A => n355, Q => n346);
   U506 : NAND30 port map( A => n167, B => n174, C => sig_state_2_port, Q => 
                           n355);
   U507 : OAI310 port map( A => n348, B => n339, C => n349, D => n367, Q => 
                           n361);
   U508 : NAND20 port map( A => N77, B => n356, Q => n367);
   U509 : NAND40 port map( A => n368, B => n369, C => n370, D => n371, Q => 
                           n356);
   U510 : NOR40 port map( A => sig_out_local_count_9_port, B => 
                           sig_out_local_count_7_port, C => 
                           sig_out_local_count_5_port, D => 
                           sig_out_local_count_4_port, Q => n371);
   U511 : NOR40 port map( A => sig_out_local_count_2_port, B => 
                           sig_out_local_count_15_port, C => 
                           sig_out_local_count_14_port, D => 
                           sig_out_local_count_13_port, Q => n370);
   U512 : CLKIN0 port map( A => n372, Q => n369);
   U513 : NAND40 port map( A => n373, B => sig_out_local_count_1_port, C => 
                           sig_out_local_count_10_port, D => 
                           sig_out_local_count_11_port, Q => n372);
   U514 : NOR40 port map( A => n163, B => n164, C => n173, D => n166, Q => n368
                           );
   U515 : CLKIN0 port map( A => n340, Q => n349);
   U516 : CLKIN0 port map( A => n350, Q => n339);
   U517 : NAND40 port map( A => n374, B => n375, C => n376, D => n377, Q => 
                           n350);
   U518 : NOR40 port map( A => n378, B => n379, C => n380, D => n381, Q => n377
                           );
   U519 : NAND20 port map( A => n382, B => n383, Q => n381);
   U520 : XNR20 port map( A => n163, B => n384, Q => n383);
   U521 : AOI220 port map( A => N190, B => n340, C => n357, D => 
                           sig_cyclesTrame4_12_port, Q => n384);
   U522 : XNR20 port map( A => n172, B => n385, Q => n382);
   U523 : AOI220 port map( A => N187, B => n340, C => n357, D => 
                           sig_cyclesTrame4_9_port, Q => n385);
   U524 : XNR20 port map( A => sig_out_local_count_10_port, B => n386, Q => 
                           n380);
   U525 : AOI220 port map( A => N188, B => n340, C => n357, D => 
                           sig_cyclesTrame4_10_port, Q => n386);
   U526 : OAI220 port map( A => N196, B => n176, C => N195, D => n168, Q => 
                           n379);
   U527 : XNR20 port map( A => sig_out_local_count_11_port, B => n387, Q => 
                           n378);
   U528 : AOI220 port map( A => N189, B => n340, C => n357, D => 
                           sig_cyclesTrame4_11_port, Q => n387);
   U529 : NOR40 port map( A => n388, B => n389, C => n390, D => n391, Q => n376
                           );
   U530 : XNR20 port map( A => sig_out_local_count_2_port, B => n392, Q => n391
                           );
   U531 : AOI220 port map( A => N180, B => n340, C => n357, D => 
                           sig_cyclesTrame4_2_port, Q => n392);
   U532 : XNR20 port map( A => sig_out_local_count_3_port, B => n393, Q => n390
                           );
   U533 : AOI220 port map( A => N181, B => n340, C => n357, D => 
                           sig_cyclesTrame4_3_port, Q => n393);
   U534 : NAND20 port map( A => n394, B => n395, Q => n389);
   U535 : XNR20 port map( A => n171, B => n396, Q => n395);
   U536 : AOI220 port map( A => N193, B => n340, C => n357, D => 
                           sig_cyclesTrame4_15_port, Q => n396);
   U537 : XNR20 port map( A => n169, B => n397, Q => n394);
   U538 : AOI220 port map( A => N191, B => n340, C => n357, D => 
                           sig_cyclesTrame4_13_port, Q => n397);
   U539 : XNR20 port map( A => sig_out_local_count_14_port, B => n398, Q => 
                           n388);
   U540 : AOI220 port map( A => N192, B => n340, C => n357, D => 
                           sig_cyclesTrame4_14_port, Q => n398);
   U541 : NOR40 port map( A => n399, B => n400, C => n401, D => n402, Q => n375
                           );
   U542 : XNR20 port map( A => sig_out_local_count_7_port, B => n403, Q => n402
                           );
   U543 : AOI220 port map( A => N185, B => n340, C => n357, D => 
                           sig_cyclesTrame4_7_port, Q => n403);
   U544 : XNR20 port map( A => sig_out_local_count_5_port, B => n404, Q => n401
                           );
   U545 : AOI220 port map( A => N183, B => n340, C => n357, D => 
                           sig_cyclesTrame4_5_port, Q => n404);
   U546 : NAND20 port map( A => n405, B => n406, Q => n400);
   U547 : XNR20 port map( A => n170, B => n407, Q => n406);
   U548 : AOI220 port map( A => N182, B => n340, C => n357, D => 
                           sig_cyclesTrame4_4_port, Q => n407);
   U549 : XOR20 port map( A => sig_out_local_count_1_port, B => n408, Q => n405
                           );
   U550 : AOI220 port map( A => N179, B => n340, C => n357, D => n516, Q => 
                           n408);
   U551 : XNR20 port map( A => sig_out_local_count_6_port, B => n409, Q => n399
                           );
   U552 : AOI220 port map( A => N184, B => n340, C => n357, D => 
                           sig_cyclesTrame4_6_port, Q => n409);
   U553 : NOR40 port map( A => n410, B => n411, C => n412, D => n413, Q => n374
                           );
   U554 : XNR20 port map( A => n414, B => sig_out_local_count_19_port, Q => 
                           n413);
   U555 : NAND20 port map( A => N197, B => n340, Q => n414);
   U556 : XNR20 port map( A => sig_out_local_count_8_port, B => n415, Q => n412
                           );
   U557 : AOI220 port map( A => N186, B => n340, C => n357, D => 
                           sig_cyclesTrame4_8_port, Q => n415);
   U558 : XNR20 port map( A => n416, B => sig_out_local_count_16_port, Q => 
                           n411);
   U559 : NAND20 port map( A => N194, B => n340, Q => n416);
   U560 : NAND20 port map( A => n417, B => n418, Q => n410);
   U561 : XNR20 port map( A => sig_out_local_count_0_port, B => n357, Q => n418
                           );
   U562 : NAND40 port map( A => n422, B => n423, C => n424, D => n425, Q => 
                           n421);
   U563 : NOR40 port map( A => n426, B => n427, C => n428, D => n360, Q => n425
                           );
   U564 : NAND20 port map( A => sig_state_1_port, B => sig_state_0_port, Q => 
                           n360);
   U565 : XNR20 port map( A => sig_reg_storage_16_port, B => 
                           sig_out_local_count_1_port, Q => n428);
   U566 : NAND20 port map( A => n429, B => n430, Q => n426);
   U567 : XNR20 port map( A => sig_out_local_count_10_port, B => 
                           sig_cyclesTrame3_10_port, Q => n430);
   U568 : XNR20 port map( A => sig_out_local_count_11_port, B => 
                           sig_cyclesTrame3_11_port, Q => n429);
   U569 : NOR40 port map( A => n431, B => n432, C => n433, D => n434, Q => n424
                           );
   U570 : XNR20 port map( A => n171, B => sig_cyclesTrame3_15_port, Q => n434);
   U571 : XNR20 port map( A => n177, B => sig_cyclesTrame3_14_port, Q => n433);
   U572 : XNR20 port map( A => n169, B => sig_cyclesTrame3_13_port, Q => n432);
   U573 : XNR20 port map( A => n163, B => sig_cyclesTrame3_12_port, Q => n431);
   U574 : NOR40 port map( A => n435, B => n436, C => n437, D => n438, Q => n423
                           );
   U575 : XNR20 port map( A => n179_port, B => sig_cyclesTrame3_5_port, Q => 
                           n438);
   U576 : XNR20 port map( A => n170, B => sig_cyclesTrame3_4_port, Q => n437);
   U577 : XNR20 port map( A => n164, B => sig_cyclesTrame3_3_port, Q => n436);
   U578 : XNR20 port map( A => n180_port, B => sig_cyclesTrame3_2_port, Q => 
                           n435);
   U579 : NOR40 port map( A => n439, B => n440, C => n441, D => n442, Q => n422
                           );
   U580 : XNR20 port map( A => n172, B => sig_cyclesTrame3_9_port, Q => n442);
   U581 : XNR20 port map( A => n166, B => sig_cyclesTrame3_8_port, Q => n441);
   U582 : XNR20 port map( A => n178, B => sig_cyclesTrame3_7_port, Q => n440);
   U583 : XNR20 port map( A => n173, B => sig_cyclesTrame3_6_port, Q => n439);
   U584 : MUX21 port map( A => n443, B => n444, S => sig_state_0_port, Q => 
                           n420);
   U585 : NAND40 port map( A => n445, B => n446, C => n447, D => n448, Q => 
                           n444);
   U586 : NOR40 port map( A => n449, B => n450, C => n451, D => n452, Q => n448
                           );
   U587 : XNR20 port map( A => n200, B => sig_out_local_count_13_port, Q => 
                           n452);
   U588 : XNR20 port map( A => n199, B => sig_out_local_count_11_port, Q => 
                           n451);
   U589 : NAND20 port map( A => n453, B => n174, Q => n450);
   U590 : XNR20 port map( A => sig_out_local_count_12_port, B => 
                           sig_cyclesTrame1_12_port, Q => n453);
   U591 : XNR20 port map( A => n201, B => sig_out_local_count_10_port, Q => 
                           n449);
   U592 : NOR40 port map( A => n454, B => n455, C => n456, D => n457, Q => n447
                           );
   U593 : XNR20 port map( A => n209, B => sig_out_local_count_3_port, Q => n457
                           );
   U594 : XNR20 port map( A => n208, B => sig_out_local_count_2_port, Q => n456
                           );
   U595 : XNR20 port map( A => n235_port, B => sig_out_local_count_15_port, Q 
                           => n455);
   U596 : XNR20 port map( A => n202, B => sig_out_local_count_14_port, Q => 
                           n454);
   U597 : NOR40 port map( A => n458, B => n459, C => n460, D => n461, Q => n446
                           );
   U598 : XNR20 port map( A => n203, B => sig_out_local_count_7_port, Q => n461
                           );
   U599 : XNR20 port map( A => n204_port, B => sig_out_local_count_6_port, Q =>
                           n460);
   U600 : XNR20 port map( A => n205, B => sig_out_local_count_5_port, Q => n459
                           );
   U601 : XNR20 port map( A => n211, B => sig_out_local_count_4_port, Q => n458
                           );
   U602 : NOR40 port map( A => n462, B => n463, C => n464, D => n427, Q => n445
                           );
   U603 : XNR20 port map( A => sig_reg_storage_0_port, B => 
                           sig_out_local_count_1_port, Q => n464);
   U604 : XNR20 port map( A => n198, B => sig_out_local_count_9_port, Q => n463
                           );
   U605 : XNR20 port map( A => n206, B => sig_out_local_count_8_port, Q => n462
                           );
   U606 : NAND40 port map( A => n465, B => n466, C => n467, D => n468, Q => 
                           n443);
   U607 : NOR40 port map( A => n469, B => n470, C => n471, D => n472, Q => n468
                           );
   U608 : XNR20 port map( A => n177, B => sig_cyclesTrame2_14_port, Q => n472);
   U609 : XNR20 port map( A => n169, B => sig_cyclesTrame2_13_port, Q => n471);
   U610 : NAND20 port map( A => n473, B => n474, Q => n470);
   U611 : XNR20 port map( A => sig_out_local_count_11_port, B => 
                           sig_cyclesTrame2_11_port, Q => n474);
   U612 : XNR20 port map( A => sig_out_local_count_10_port, B => 
                           sig_cyclesTrame2_10_port, Q => n473);
   U613 : XNR20 port map( A => n163, B => sig_cyclesTrame2_12_port, Q => n469);
   U614 : NOR40 port map( A => n475, B => n476, C => n477, D => n478, Q => n467
                           );
   U615 : XNR20 port map( A => n170, B => sig_cyclesTrame2_4_port, Q => n478);
   U616 : XNR20 port map( A => n164, B => sig_cyclesTrame2_3_port, Q => n477);
   U617 : XNR20 port map( A => n180_port, B => sig_cyclesTrame2_2_port, Q => 
                           n476);
   U618 : XNR20 port map( A => n171, B => sig_cyclesTrame2_15_port, Q => n475);
   U619 : NOR40 port map( A => n479, B => n480, C => n481, D => n482, Q => n466
                           );
   U620 : XNR20 port map( A => n166, B => sig_cyclesTrame2_8_port, Q => n482);
   U621 : XNR20 port map( A => n178, B => sig_cyclesTrame2_7_port, Q => n481);
   U622 : XNR20 port map( A => n173, B => sig_cyclesTrame2_6_port, Q => n480);
   U623 : XNR20 port map( A => n179_port, B => sig_cyclesTrame2_5_port, Q => 
                           n479);
   U624 : NOR40 port map( A => n483, B => n484, C => n174, D => n427, Q => n465
                           );
   U625 : NAND20 port map( A => n373, B => n182_port, Q => n427);
   U626 : NOR40 port map( A => n181_port, B => n485, C => 
                           sig_out_local_count_16_port, D => 
                           sig_out_local_count_19_port, Q => n373);
   U627 : XNR20 port map( A => n172, B => sig_cyclesTrame2_9_port, Q => n484);
   U628 : XNR20 port map( A => sig_reg_storage_8_port, B => 
                           sig_out_local_count_1_port, Q => n483);
   U629 : IMUX20 port map( A => n485, B => n486, S => n340, Q => n417);
   U630 : CLKIN0 port map( A => n487, Q => n486);
   U631 : AOI220 port map( A => n176, B => N196, C => n168, D => N195, Q => 
                           n487);
   U632 : NAND20 port map( A => n176, B => n168, Q => n485);
   U633 : CLKIN0 port map( A => n366, Q => N77);
   U634 : NAND20 port map( A => n352, B => i_reset_n, Q => n366);
   U635 : NOR20 port map( A => n488, B => n165, Q => n352);
   U636 : IMUX20 port map( A => n345, B => n489, S => n515, Q => n336);
   U637 : NOR20 port map( A => n517, B => n518, Q => n489);
   U638 : CLKIN0 port map( A => n488, Q => n345);
   U639 : NAND20 port map( A => n517, B => n518, Q => n488);
   U640 : XNR20 port map( A => n490, B => mult_114_SUMB_6_5_port, Q => N266);
   U641 : XOR20 port map( A => mult_114_SUMB_7_5_port, B => n491, Q => N265);
   U642 : XNR20 port map( A => n492, B => mult_114_A1_11_port, Q => N264);
   U643 : XNR20 port map( A => n493, B => mult_114_A2_12_port, Q => N263);
   U644 : NAND20 port map( A => n494, B => mult_114_A1_11_port, Q => n493);
   U645 : CLKIN0 port map( A => n492, Q => n494);
   U646 : NAND20 port map( A => n491, B => mult_114_SUMB_7_5_port, Q => n492);
   U647 : NOR20 port map( A => n490, B => n495, Q => n491);
   U648 : CLKIN0 port map( A => mult_114_SUMB_6_5_port, Q => n495);
   U649 : NAND20 port map( A => mult_114_A2_8_port, B => mult_114_SUMB_5_5_port
                           , Q => n490);
   U650 : XNR20 port map( A => n496, B => mult_117_SUMB_6_5_port, Q => N251);
   U651 : XOR20 port map( A => mult_117_SUMB_7_5_port, B => n497, Q => N250);
   U652 : XNR20 port map( A => n498, B => mult_117_A1_11_port, Q => N249);
   U653 : XNR20 port map( A => n499, B => mult_117_A2_12_port, Q => N248);
   U654 : NAND20 port map( A => n500, B => mult_117_A1_11_port, Q => n499);
   U655 : CLKIN0 port map( A => n498, Q => n500);
   U656 : NAND20 port map( A => n497, B => mult_117_SUMB_7_5_port, Q => n498);
   U657 : NOR20 port map( A => n496, B => n501, Q => n497);
   U658 : CLKIN0 port map( A => mult_117_SUMB_6_5_port, Q => n501);
   U659 : NAND20 port map( A => mult_117_A2_8_port, B => mult_117_SUMB_5_5_port
                           , Q => n496);
   U660 : XNR20 port map( A => n502, B => mult_120_SUMB_6_5_port, Q => N236);
   U661 : XOR20 port map( A => mult_120_SUMB_7_5_port, B => n503, Q => N235);
   U662 : XNR20 port map( A => n504, B => mult_120_A1_11_port, Q => N234);
   U663 : XNR20 port map( A => n505, B => mult_120_A2_12_port, Q => N233);
   U664 : NAND20 port map( A => n506, B => mult_120_A1_11_port, Q => n505);
   U665 : CLKIN0 port map( A => n504, Q => n506);
   U666 : NAND20 port map( A => n503, B => mult_120_SUMB_7_5_port, Q => n504);
   U667 : NOR20 port map( A => n502, B => n507, Q => n503);
   U668 : CLKIN0 port map( A => mult_120_SUMB_6_5_port, Q => n507);
   U669 : NAND20 port map( A => mult_120_A2_8_port, B => mult_120_SUMB_5_5_port
                           , Q => n502);
   U670 : XNR20 port map( A => n508, B => mult_123_SUMB_6_5_port, Q => N221);
   U671 : XOR20 port map( A => mult_123_SUMB_7_5_port, B => n509, Q => N220);
   U672 : XNR20 port map( A => n510, B => mult_123_A1_11_port, Q => N219);
   U673 : XNR20 port map( A => n511, B => mult_123_A2_12_port, Q => N218);
   U674 : NAND20 port map( A => n512, B => mult_123_A1_11_port, Q => n511);
   U675 : CLKIN0 port map( A => n510, Q => n512);
   U676 : NAND20 port map( A => n509, B => mult_123_SUMB_7_5_port, Q => n510);
   U677 : NOR20 port map( A => n508, B => n513, Q => n509);
   U678 : CLKIN0 port map( A => mult_123_SUMB_6_5_port, Q => n513);
   U679 : NAND20 port map( A => mult_123_A2_8_port, B => mult_123_SUMB_5_5_port
                           , Q => n508);
   U680 : CLKIN0 port map( A => n514, Q => N204);
   U681 : NOR20 port map( A => n348, B => n419, Q => n514);
   U682 : NAND30 port map( A => n515, B => n175, C => n517, Q => n419);
   U683 : CLKIN0 port map( A => i_reset_n, Q => n348);

end SYN_rtl;
