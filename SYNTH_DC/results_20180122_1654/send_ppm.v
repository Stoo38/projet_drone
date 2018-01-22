
module send_ppm ( i_clk, i_reset_n, i_reg, o_ppm );
  input [31:0] i_reg;
  input i_clk, i_reset_n;
  output o_ppm;
  wire   N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51,
         N76, N77, N78, N79, N80, N81, N82, N83, N179, N180, N181, N182, N183,
         N184, N185, N186, N187, N188, N189, N190, N191, N192, N193, N194,
         N195, N196, N197, N204, N218, N219, N220, N221, N223, N233, N234,
         N235, N236, N238, N248, N249, N250, N251, N253, N263, N264, N265,
         N266, N268, N278, N279, N280, N281, N282, N283, N284, N285, N286,
         N287, N288, N289, N290, N291, N292, N293, N294, N295, N296,
         \local_counter1/N65 , \local_counter1/N64 , \local_counter1/N63 ,
         \local_counter1/N62 , \local_counter1/N61 , \local_counter1/N60 ,
         \local_counter1/N59 , \local_counter1/N58 , \local_counter1/N57 ,
         \local_counter1/N56 , \local_counter1/N55 , \local_counter1/N54 ,
         \local_counter1/N53 , \local_counter1/N52 , \local_counter1/N51 ,
         \local_counter1/N50 , \local_counter1/N49 , \local_counter1/N48 ,
         \local_counter1/N47 , \local_counter1/N46 , \local_counter1/N24 ,
         \local_counter1/N23 , \local_counter1/N22 , \local_counter1/N21 ,
         \local_counter1/N20 , \local_counter1/N19 , \local_counter1/N18 ,
         \local_counter1/N17 , \local_counter1/N16 , \local_counter1/N15 ,
         \local_counter1/N14 , \local_counter1/N13 , \local_counter1/N12 ,
         \local_counter1/N11 , \local_counter1/N10 , \local_counter1/N9 ,
         \local_counter1/N8 , \local_counter1/N7 , \sub_123_cf/carry[3] ,
         \sub_123_cf/carry[4] , \sub_123_cf/carry[5] , \sub_123_cf/carry[6] ,
         \sub_123_cf/carry[7] , \sub_123_cf/carry[8] , \sub_123_cf/carry[9] ,
         \sub_123_cf/carry[10] , \sub_123_cf/carry[11] ,
         \sub_123_cf/carry[12] , \sub_123_cf/carry[13] ,
         \sub_123_cf/carry[14] , \mult_123/A2[8] , \mult_123/A2[12] ,
         \mult_123/A1[11] , \mult_123/SUMB[1][5] , \mult_123/SUMB[2][5] ,
         \mult_123/SUMB[3][5] , \mult_123/SUMB[4][1] , \mult_123/SUMB[4][5] ,
         \mult_123/SUMB[5][1] , \mult_123/SUMB[5][5] , \mult_123/SUMB[6][1] ,
         \mult_123/SUMB[6][5] , \mult_123/SUMB[7][1] , \mult_123/SUMB[7][5] ,
         \mult_123/CARRYB[1][5] , \mult_123/CARRYB[2][5] ,
         \mult_123/CARRYB[3][5] , \mult_123/CARRYB[4][1] ,
         \mult_123/CARRYB[4][5] , \mult_123/CARRYB[5][1] ,
         \mult_123/CARRYB[5][5] , \mult_123/CARRYB[6][1] ,
         \mult_123/CARRYB[6][5] , \mult_123/CARRYB[7][1] ,
         \mult_123/CARRYB[7][5] , \sub_120_cf/carry[3] , \sub_120_cf/carry[4] ,
         \sub_120_cf/carry[5] , \sub_120_cf/carry[6] , \sub_120_cf/carry[7] ,
         \sub_120_cf/carry[8] , \sub_120_cf/carry[9] , \sub_120_cf/carry[10] ,
         \sub_120_cf/carry[11] , \sub_120_cf/carry[12] ,
         \sub_120_cf/carry[13] , \sub_120_cf/carry[14] , \mult_120/A2[8] ,
         \mult_120/A2[12] , \mult_120/A1[11] , \mult_120/SUMB[1][5] ,
         \mult_120/SUMB[2][5] , \mult_120/SUMB[3][5] , \mult_120/SUMB[4][1] ,
         \mult_120/SUMB[4][5] , \mult_120/SUMB[5][1] , \mult_120/SUMB[5][5] ,
         \mult_120/SUMB[6][1] , \mult_120/SUMB[6][5] , \mult_120/SUMB[7][1] ,
         \mult_120/SUMB[7][5] , \mult_120/CARRYB[1][5] ,
         \mult_120/CARRYB[2][5] , \mult_120/CARRYB[3][5] ,
         \mult_120/CARRYB[4][1] , \mult_120/CARRYB[4][5] ,
         \mult_120/CARRYB[5][1] , \mult_120/CARRYB[5][5] ,
         \mult_120/CARRYB[6][1] , \mult_120/CARRYB[6][5] ,
         \mult_120/CARRYB[7][1] , \mult_120/CARRYB[7][5] ,
         \sub_117_cf/carry[3] , \sub_117_cf/carry[4] , \sub_117_cf/carry[5] ,
         \sub_117_cf/carry[6] , \sub_117_cf/carry[7] , \sub_117_cf/carry[8] ,
         \sub_117_cf/carry[9] , \sub_117_cf/carry[10] , \sub_117_cf/carry[11] ,
         \sub_117_cf/carry[12] , \sub_117_cf/carry[13] ,
         \sub_117_cf/carry[14] , \mult_117/A2[8] , \mult_117/A2[12] ,
         \mult_117/A1[11] , \mult_117/SUMB[1][5] , \mult_117/SUMB[2][5] ,
         \mult_117/SUMB[3][5] , \mult_117/SUMB[4][1] , \mult_117/SUMB[4][5] ,
         \mult_117/SUMB[5][1] , \mult_117/SUMB[5][5] , \mult_117/SUMB[6][1] ,
         \mult_117/SUMB[6][5] , \mult_117/SUMB[7][1] , \mult_117/SUMB[7][5] ,
         \mult_117/CARRYB[1][5] , \mult_117/CARRYB[2][5] ,
         \mult_117/CARRYB[3][5] , \mult_117/CARRYB[4][1] ,
         \mult_117/CARRYB[4][5] , \mult_117/CARRYB[5][1] ,
         \mult_117/CARRYB[5][5] , \mult_117/CARRYB[6][1] ,
         \mult_117/CARRYB[6][5] , \mult_117/CARRYB[7][1] ,
         \mult_117/CARRYB[7][5] , \sub_114_cf/carry[3] , \sub_114_cf/carry[4] ,
         \sub_114_cf/carry[5] , \sub_114_cf/carry[6] , \sub_114_cf/carry[7] ,
         \sub_114_cf/carry[8] , \sub_114_cf/carry[9] , \sub_114_cf/carry[10] ,
         \sub_114_cf/carry[11] , \sub_114_cf/carry[12] ,
         \sub_114_cf/carry[13] , \sub_114_cf/carry[14] , \mult_114/A2[8] ,
         \mult_114/A2[12] , \mult_114/A1[11] , \mult_114/SUMB[1][5] ,
         \mult_114/SUMB[2][5] , \mult_114/SUMB[3][5] , \mult_114/SUMB[4][1] ,
         \mult_114/SUMB[4][5] , \mult_114/SUMB[5][1] , \mult_114/SUMB[5][5] ,
         \mult_114/SUMB[6][1] , \mult_114/SUMB[6][5] , \mult_114/SUMB[7][1] ,
         \mult_114/SUMB[7][5] , \mult_114/CARRYB[1][5] ,
         \mult_114/CARRYB[2][5] , \mult_114/CARRYB[3][5] ,
         \mult_114/CARRYB[4][1] , \mult_114/CARRYB[4][5] ,
         \mult_114/CARRYB[5][1] , \mult_114/CARRYB[5][5] ,
         \mult_114/CARRYB[6][1] , \mult_114/CARRYB[6][5] ,
         \mult_114/CARRYB[7][1] , \mult_114/CARRYB[7][5] , n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552;
  wire   [19:0] sig_out_local_count;
  wire   [31:0] sig_reg_storage;
  wire   [15:0] sig_cyclesTrame1;
  wire   [15:0] sig_cyclesTrame2;
  wire   [15:0] sig_cyclesTrame3;
  wire   [15:0] sig_cyclesTrame4;
  wire   [2:0] sig_state;
  wire   [19:0] \local_counter1/v_val ;
  wire   [19:2] \local_counter1/add_34/carry ;
  wire   [20:0] \sub_0_root_sub_235_cf/carry ;
  wire   [19:1] \add_3_root_sub_235_cf/carry ;
  wire   [19:1] \add_1_root_sub_235_cf/carry ;
  wire   [20:0] \sub_4_root_sub_235_cf/carry ;

  ADD22 \local_counter1/add_34/U1_1_1  ( .A(\local_counter1/v_val [1]), .B(
        \local_counter1/v_val [0]), .CO(\local_counter1/add_34/carry [2]), .S(
        \local_counter1/N7 ) );
  ADD22 \local_counter1/add_34/U1_1_2  ( .A(\local_counter1/v_val [2]), .B(
        \local_counter1/add_34/carry [2]), .CO(
        \local_counter1/add_34/carry [3]), .S(\local_counter1/N8 ) );
  ADD22 \local_counter1/add_34/U1_1_3  ( .A(\local_counter1/v_val [3]), .B(
        \local_counter1/add_34/carry [3]), .CO(
        \local_counter1/add_34/carry [4]), .S(\local_counter1/N9 ) );
  ADD22 \local_counter1/add_34/U1_1_4  ( .A(\local_counter1/v_val [4]), .B(
        \local_counter1/add_34/carry [4]), .CO(
        \local_counter1/add_34/carry [5]), .S(\local_counter1/N10 ) );
  ADD22 \local_counter1/add_34/U1_1_5  ( .A(\local_counter1/v_val [5]), .B(
        \local_counter1/add_34/carry [5]), .CO(
        \local_counter1/add_34/carry [6]), .S(\local_counter1/N11 ) );
  ADD22 \local_counter1/add_34/U1_1_6  ( .A(\local_counter1/v_val [6]), .B(
        \local_counter1/add_34/carry [6]), .CO(
        \local_counter1/add_34/carry [7]), .S(\local_counter1/N12 ) );
  ADD22 \local_counter1/add_34/U1_1_7  ( .A(\local_counter1/v_val [7]), .B(
        \local_counter1/add_34/carry [7]), .CO(
        \local_counter1/add_34/carry [8]), .S(\local_counter1/N13 ) );
  ADD22 \local_counter1/add_34/U1_1_8  ( .A(\local_counter1/v_val [8]), .B(
        \local_counter1/add_34/carry [8]), .CO(
        \local_counter1/add_34/carry [9]), .S(\local_counter1/N14 ) );
  ADD22 \local_counter1/add_34/U1_1_9  ( .A(\local_counter1/v_val [9]), .B(
        \local_counter1/add_34/carry [9]), .CO(
        \local_counter1/add_34/carry [10]), .S(\local_counter1/N15 ) );
  ADD22 \local_counter1/add_34/U1_1_10  ( .A(\local_counter1/v_val [10]), .B(
        \local_counter1/add_34/carry [10]), .CO(
        \local_counter1/add_34/carry [11]), .S(\local_counter1/N16 ) );
  ADD22 \local_counter1/add_34/U1_1_11  ( .A(\local_counter1/v_val [11]), .B(
        \local_counter1/add_34/carry [11]), .CO(
        \local_counter1/add_34/carry [12]), .S(\local_counter1/N17 ) );
  ADD22 \local_counter1/add_34/U1_1_12  ( .A(\local_counter1/v_val [12]), .B(
        \local_counter1/add_34/carry [12]), .CO(
        \local_counter1/add_34/carry [13]), .S(\local_counter1/N18 ) );
  ADD22 \local_counter1/add_34/U1_1_13  ( .A(\local_counter1/v_val [13]), .B(
        \local_counter1/add_34/carry [13]), .CO(
        \local_counter1/add_34/carry [14]), .S(\local_counter1/N19 ) );
  ADD22 \local_counter1/add_34/U1_1_14  ( .A(\local_counter1/v_val [14]), .B(
        \local_counter1/add_34/carry [14]), .CO(
        \local_counter1/add_34/carry [15]), .S(\local_counter1/N20 ) );
  ADD22 \local_counter1/add_34/U1_1_15  ( .A(\local_counter1/v_val [15]), .B(
        \local_counter1/add_34/carry [15]), .CO(
        \local_counter1/add_34/carry [16]), .S(\local_counter1/N21 ) );
  ADD22 \local_counter1/add_34/U1_1_16  ( .A(\local_counter1/v_val [16]), .B(
        \local_counter1/add_34/carry [16]), .CO(
        \local_counter1/add_34/carry [17]), .S(\local_counter1/N22 ) );
  ADD22 \local_counter1/add_34/U1_1_17  ( .A(\local_counter1/v_val [17]), .B(
        \local_counter1/add_34/carry [17]), .CO(
        \local_counter1/add_34/carry [18]), .S(\local_counter1/N23 ) );
  ADD22 \local_counter1/add_34/U1_1_18  ( .A(\local_counter1/v_val [18]), .B(
        \local_counter1/add_34/carry [18]), .CO(
        \local_counter1/add_34/carry [19]), .S(\local_counter1/N24 ) );
  ADD32 \sub_0_root_sub_235_cf/U2_2  ( .A(N295), .B(n537), .CI(
        \sub_0_root_sub_235_cf/carry [2]), .CO(
        \sub_0_root_sub_235_cf/carry [3]), .S(N180) );
  ADD32 \sub_0_root_sub_235_cf/U2_3  ( .A(N294), .B(n536), .CI(
        \sub_0_root_sub_235_cf/carry [3]), .CO(
        \sub_0_root_sub_235_cf/carry [4]), .S(N181) );
  ADD32 \sub_0_root_sub_235_cf/U2_4  ( .A(N293), .B(n535), .CI(
        \sub_0_root_sub_235_cf/carry [4]), .CO(
        \sub_0_root_sub_235_cf/carry [5]), .S(N182) );
  ADD32 \sub_0_root_sub_235_cf/U2_5  ( .A(N292), .B(n534), .CI(
        \sub_0_root_sub_235_cf/carry [5]), .CO(
        \sub_0_root_sub_235_cf/carry [6]), .S(N183) );
  ADD32 \sub_0_root_sub_235_cf/U2_6  ( .A(N291), .B(n533), .CI(
        \sub_0_root_sub_235_cf/carry [6]), .CO(
        \sub_0_root_sub_235_cf/carry [7]), .S(N184) );
  ADD32 \sub_0_root_sub_235_cf/U2_7  ( .A(N290), .B(n532), .CI(
        \sub_0_root_sub_235_cf/carry [7]), .CO(
        \sub_0_root_sub_235_cf/carry [8]), .S(N185) );
  ADD32 \sub_0_root_sub_235_cf/U2_8  ( .A(N289), .B(n531), .CI(
        \sub_0_root_sub_235_cf/carry [8]), .CO(
        \sub_0_root_sub_235_cf/carry [9]), .S(N186) );
  ADD32 \sub_0_root_sub_235_cf/U2_9  ( .A(N288), .B(n530), .CI(
        \sub_0_root_sub_235_cf/carry [9]), .CO(
        \sub_0_root_sub_235_cf/carry [10]), .S(N187) );
  ADD32 \sub_0_root_sub_235_cf/U2_10  ( .A(N287), .B(n528), .CI(
        \sub_0_root_sub_235_cf/carry [10]), .CO(
        \sub_0_root_sub_235_cf/carry [11]), .S(N188) );
  ADD32 \sub_0_root_sub_235_cf/U2_11  ( .A(N286), .B(n527), .CI(
        \sub_0_root_sub_235_cf/carry [11]), .CO(
        \sub_0_root_sub_235_cf/carry [12]), .S(N189) );
  ADD32 \sub_0_root_sub_235_cf/U2_12  ( .A(N285), .B(n526), .CI(
        \sub_0_root_sub_235_cf/carry [12]), .CO(
        \sub_0_root_sub_235_cf/carry [13]), .S(N190) );
  ADD32 \sub_0_root_sub_235_cf/U2_13  ( .A(N284), .B(n525), .CI(
        \sub_0_root_sub_235_cf/carry [13]), .CO(
        \sub_0_root_sub_235_cf/carry [14]), .S(N191) );
  ADD32 \sub_0_root_sub_235_cf/U2_14  ( .A(N283), .B(n524), .CI(
        \sub_0_root_sub_235_cf/carry [14]), .CO(
        \sub_0_root_sub_235_cf/carry [15]), .S(N192) );
  ADD32 \sub_0_root_sub_235_cf/U2_15  ( .A(N282), .B(n523), .CI(
        \sub_0_root_sub_235_cf/carry [15]), .CO(
        \sub_0_root_sub_235_cf/carry [16]), .S(N193) );
  ADD32 \sub_0_root_sub_235_cf/U2_16  ( .A(N281), .B(n522), .CI(
        \sub_0_root_sub_235_cf/carry [16]), .CO(
        \sub_0_root_sub_235_cf/carry [17]), .S(N194) );
  ADD32 \add_3_root_sub_235_cf/U1_2  ( .A(sig_cyclesTrame2[2]), .B(
        sig_cyclesTrame3[2]), .CI(\add_3_root_sub_235_cf/carry [2]), .CO(
        \add_3_root_sub_235_cf/carry [3]), .S(N38) );
  ADD32 \add_3_root_sub_235_cf/U1_3  ( .A(sig_cyclesTrame2[3]), .B(
        sig_cyclesTrame3[3]), .CI(\add_3_root_sub_235_cf/carry [3]), .CO(
        \add_3_root_sub_235_cf/carry [4]), .S(N39) );
  ADD32 \add_3_root_sub_235_cf/U1_4  ( .A(sig_cyclesTrame2[4]), .B(
        sig_cyclesTrame3[4]), .CI(\add_3_root_sub_235_cf/carry [4]), .CO(
        \add_3_root_sub_235_cf/carry [5]), .S(N40) );
  ADD32 \add_3_root_sub_235_cf/U1_5  ( .A(sig_cyclesTrame2[5]), .B(
        sig_cyclesTrame3[5]), .CI(\add_3_root_sub_235_cf/carry [5]), .CO(
        \add_3_root_sub_235_cf/carry [6]), .S(N41) );
  ADD32 \add_3_root_sub_235_cf/U1_6  ( .A(sig_cyclesTrame2[6]), .B(
        sig_cyclesTrame3[6]), .CI(\add_3_root_sub_235_cf/carry [6]), .CO(
        \add_3_root_sub_235_cf/carry [7]), .S(N42) );
  ADD32 \add_3_root_sub_235_cf/U1_7  ( .A(sig_cyclesTrame2[7]), .B(
        sig_cyclesTrame3[7]), .CI(\add_3_root_sub_235_cf/carry [7]), .CO(
        \add_3_root_sub_235_cf/carry [8]), .S(N43) );
  ADD32 \add_3_root_sub_235_cf/U1_8  ( .A(sig_cyclesTrame2[8]), .B(
        sig_cyclesTrame3[8]), .CI(\add_3_root_sub_235_cf/carry [8]), .CO(
        \add_3_root_sub_235_cf/carry [9]), .S(N44) );
  ADD32 \add_3_root_sub_235_cf/U1_9  ( .A(sig_cyclesTrame2[9]), .B(
        sig_cyclesTrame3[9]), .CI(\add_3_root_sub_235_cf/carry [9]), .CO(
        \add_3_root_sub_235_cf/carry [10]), .S(N45) );
  ADD32 \add_3_root_sub_235_cf/U1_10  ( .A(sig_cyclesTrame2[10]), .B(
        sig_cyclesTrame3[10]), .CI(\add_3_root_sub_235_cf/carry [10]), .CO(
        \add_3_root_sub_235_cf/carry [11]), .S(N46) );
  ADD32 \add_3_root_sub_235_cf/U1_11  ( .A(sig_cyclesTrame2[11]), .B(
        sig_cyclesTrame3[11]), .CI(\add_3_root_sub_235_cf/carry [11]), .CO(
        \add_3_root_sub_235_cf/carry [12]), .S(N47) );
  ADD32 \add_3_root_sub_235_cf/U1_12  ( .A(sig_cyclesTrame2[12]), .B(
        sig_cyclesTrame3[12]), .CI(\add_3_root_sub_235_cf/carry [12]), .CO(
        \add_3_root_sub_235_cf/carry [13]), .S(N48) );
  ADD32 \add_3_root_sub_235_cf/U1_13  ( .A(sig_cyclesTrame2[13]), .B(
        sig_cyclesTrame3[13]), .CI(\add_3_root_sub_235_cf/carry [13]), .CO(
        \add_3_root_sub_235_cf/carry [14]), .S(N49) );
  ADD32 \add_3_root_sub_235_cf/U1_14  ( .A(sig_cyclesTrame2[14]), .B(
        sig_cyclesTrame3[14]), .CI(\add_3_root_sub_235_cf/carry [14]), .CO(
        \add_3_root_sub_235_cf/carry [15]), .S(N50) );
  ADD32 \add_3_root_sub_235_cf/U1_15  ( .A(sig_cyclesTrame2[15]), .B(
        sig_cyclesTrame3[15]), .CI(\add_3_root_sub_235_cf/carry [15]), .CO(
        \add_3_root_sub_235_cf/carry [16]), .S(N51) );
  ADD32 \add_1_root_sub_235_cf/U1_2  ( .A(N18), .B(n552), .CI(
        \add_1_root_sub_235_cf/carry [2]), .CO(
        \add_1_root_sub_235_cf/carry [3]), .S(N295) );
  ADD32 \add_1_root_sub_235_cf/U1_3  ( .A(N19), .B(n551), .CI(
        \add_1_root_sub_235_cf/carry [3]), .CO(
        \add_1_root_sub_235_cf/carry [4]), .S(N294) );
  ADD32 \add_1_root_sub_235_cf/U1_4  ( .A(N20), .B(n550), .CI(
        \add_1_root_sub_235_cf/carry [4]), .CO(
        \add_1_root_sub_235_cf/carry [5]), .S(N293) );
  ADD32 \add_1_root_sub_235_cf/U1_5  ( .A(N21), .B(n549), .CI(
        \add_1_root_sub_235_cf/carry [5]), .CO(
        \add_1_root_sub_235_cf/carry [6]), .S(N292) );
  ADD32 \add_1_root_sub_235_cf/U1_6  ( .A(N22), .B(n548), .CI(
        \add_1_root_sub_235_cf/carry [6]), .CO(
        \add_1_root_sub_235_cf/carry [7]), .S(N291) );
  ADD32 \add_1_root_sub_235_cf/U1_7  ( .A(N23), .B(n547), .CI(
        \add_1_root_sub_235_cf/carry [7]), .CO(
        \add_1_root_sub_235_cf/carry [8]), .S(N290) );
  ADD32 \add_1_root_sub_235_cf/U1_8  ( .A(N24), .B(n546), .CI(
        \add_1_root_sub_235_cf/carry [8]), .CO(
        \add_1_root_sub_235_cf/carry [9]), .S(N289) );
  ADD32 \add_1_root_sub_235_cf/U1_9  ( .A(N25), .B(n545), .CI(
        \add_1_root_sub_235_cf/carry [9]), .CO(
        \add_1_root_sub_235_cf/carry [10]), .S(N288) );
  ADD32 \add_1_root_sub_235_cf/U1_10  ( .A(N26), .B(n543), .CI(
        \add_1_root_sub_235_cf/carry [10]), .CO(
        \add_1_root_sub_235_cf/carry [11]), .S(N287) );
  ADD32 \add_1_root_sub_235_cf/U1_11  ( .A(N27), .B(n542), .CI(
        \add_1_root_sub_235_cf/carry [11]), .CO(
        \add_1_root_sub_235_cf/carry [12]), .S(N286) );
  ADD32 \add_1_root_sub_235_cf/U1_12  ( .A(N28), .B(n541), .CI(
        \add_1_root_sub_235_cf/carry [12]), .CO(
        \add_1_root_sub_235_cf/carry [13]), .S(N285) );
  ADD32 \add_1_root_sub_235_cf/U1_13  ( .A(N29), .B(n540), .CI(
        \add_1_root_sub_235_cf/carry [13]), .CO(
        \add_1_root_sub_235_cf/carry [14]), .S(N284) );
  ADD32 \add_1_root_sub_235_cf/U1_14  ( .A(N30), .B(n539), .CI(
        \add_1_root_sub_235_cf/carry [14]), .CO(
        \add_1_root_sub_235_cf/carry [15]), .S(N283) );
  ADD32 \add_1_root_sub_235_cf/U1_15  ( .A(N31), .B(n217), .CI(
        \add_1_root_sub_235_cf/carry [15]), .CO(
        \add_1_root_sub_235_cf/carry [16]), .S(N282) );
  ADD32 \mult_123/S3_2_5  ( .A(sig_reg_storage[26]), .B(
        \mult_123/CARRYB[1][5] ), .CI(sig_reg_storage[25]), .CO(
        \mult_123/CARRYB[2][5] ), .S(\mult_123/SUMB[2][5] ) );
  ADD32 \mult_123/S3_3_5  ( .A(sig_reg_storage[27]), .B(
        \mult_123/CARRYB[2][5] ), .CI(sig_reg_storage[26]), .CO(
        \mult_123/CARRYB[3][5] ), .S(\mult_123/SUMB[3][5] ) );
  ADD32 \mult_123/S3_4_5  ( .A(sig_reg_storage[28]), .B(
        \mult_123/CARRYB[3][5] ), .CI(sig_reg_storage[27]), .CO(
        \mult_123/CARRYB[4][5] ), .S(\mult_123/SUMB[4][5] ) );
  ADD32 \mult_123/S3_5_5  ( .A(sig_reg_storage[29]), .B(
        \mult_123/CARRYB[4][5] ), .CI(sig_reg_storage[28]), .CO(
        \mult_123/CARRYB[5][5] ), .S(\mult_123/SUMB[5][5] ) );
  ADD32 \mult_123/S2_5_1  ( .A(sig_reg_storage[29]), .B(
        \mult_123/CARRYB[4][1] ), .CI(\mult_123/SUMB[1][5] ), .CO(
        \mult_123/CARRYB[5][1] ), .S(\mult_123/SUMB[5][1] ) );
  ADD32 \mult_123/S3_6_5  ( .A(sig_reg_storage[30]), .B(
        \mult_123/CARRYB[5][5] ), .CI(sig_reg_storage[29]), .CO(
        \mult_123/CARRYB[6][5] ), .S(\mult_123/SUMB[6][5] ) );
  ADD32 \mult_123/S2_6_1  ( .A(sig_reg_storage[30]), .B(
        \mult_123/CARRYB[5][1] ), .CI(\mult_123/SUMB[2][5] ), .CO(
        \mult_123/CARRYB[6][1] ), .S(\mult_123/SUMB[6][1] ) );
  ADD32 \mult_123/S5_5  ( .A(sig_reg_storage[31]), .B(\mult_123/CARRYB[6][5] ), 
        .CI(sig_reg_storage[30]), .CO(\mult_123/CARRYB[7][5] ), .S(
        \mult_123/SUMB[7][5] ) );
  ADD32 \mult_123/S4_1  ( .A(sig_reg_storage[31]), .B(\mult_123/CARRYB[6][1] ), 
        .CI(\mult_123/SUMB[3][5] ), .CO(\mult_123/CARRYB[7][1] ), .S(
        \mult_123/SUMB[7][1] ) );
  ADD32 \mult_120/S3_2_5  ( .A(sig_reg_storage[18]), .B(
        \mult_120/CARRYB[1][5] ), .CI(sig_reg_storage[17]), .CO(
        \mult_120/CARRYB[2][5] ), .S(\mult_120/SUMB[2][5] ) );
  ADD32 \mult_120/S3_3_5  ( .A(sig_reg_storage[19]), .B(
        \mult_120/CARRYB[2][5] ), .CI(sig_reg_storage[18]), .CO(
        \mult_120/CARRYB[3][5] ), .S(\mult_120/SUMB[3][5] ) );
  ADD32 \mult_120/S3_4_5  ( .A(sig_reg_storage[20]), .B(
        \mult_120/CARRYB[3][5] ), .CI(sig_reg_storage[19]), .CO(
        \mult_120/CARRYB[4][5] ), .S(\mult_120/SUMB[4][5] ) );
  ADD32 \mult_120/S3_5_5  ( .A(sig_reg_storage[21]), .B(
        \mult_120/CARRYB[4][5] ), .CI(sig_reg_storage[20]), .CO(
        \mult_120/CARRYB[5][5] ), .S(\mult_120/SUMB[5][5] ) );
  ADD32 \mult_120/S2_5_1  ( .A(sig_reg_storage[21]), .B(
        \mult_120/CARRYB[4][1] ), .CI(\mult_120/SUMB[1][5] ), .CO(
        \mult_120/CARRYB[5][1] ), .S(\mult_120/SUMB[5][1] ) );
  ADD32 \mult_120/S3_6_5  ( .A(sig_reg_storage[22]), .B(
        \mult_120/CARRYB[5][5] ), .CI(sig_reg_storage[21]), .CO(
        \mult_120/CARRYB[6][5] ), .S(\mult_120/SUMB[6][5] ) );
  ADD32 \mult_120/S2_6_1  ( .A(sig_reg_storage[22]), .B(
        \mult_120/CARRYB[5][1] ), .CI(\mult_120/SUMB[2][5] ), .CO(
        \mult_120/CARRYB[6][1] ), .S(\mult_120/SUMB[6][1] ) );
  ADD32 \mult_120/S5_5  ( .A(sig_reg_storage[23]), .B(\mult_120/CARRYB[6][5] ), 
        .CI(sig_reg_storage[22]), .CO(\mult_120/CARRYB[7][5] ), .S(
        \mult_120/SUMB[7][5] ) );
  ADD32 \mult_120/S4_1  ( .A(sig_reg_storage[23]), .B(\mult_120/CARRYB[6][1] ), 
        .CI(\mult_120/SUMB[3][5] ), .CO(\mult_120/CARRYB[7][1] ), .S(
        \mult_120/SUMB[7][1] ) );
  ADD32 \mult_117/S3_2_5  ( .A(sig_reg_storage[10]), .B(
        \mult_117/CARRYB[1][5] ), .CI(sig_reg_storage[9]), .CO(
        \mult_117/CARRYB[2][5] ), .S(\mult_117/SUMB[2][5] ) );
  ADD32 \mult_117/S3_3_5  ( .A(sig_reg_storage[11]), .B(
        \mult_117/CARRYB[2][5] ), .CI(sig_reg_storage[10]), .CO(
        \mult_117/CARRYB[3][5] ), .S(\mult_117/SUMB[3][5] ) );
  ADD32 \mult_117/S3_4_5  ( .A(sig_reg_storage[12]), .B(
        \mult_117/CARRYB[3][5] ), .CI(sig_reg_storage[11]), .CO(
        \mult_117/CARRYB[4][5] ), .S(\mult_117/SUMB[4][5] ) );
  ADD32 \mult_117/S3_5_5  ( .A(sig_reg_storage[13]), .B(
        \mult_117/CARRYB[4][5] ), .CI(sig_reg_storage[12]), .CO(
        \mult_117/CARRYB[5][5] ), .S(\mult_117/SUMB[5][5] ) );
  ADD32 \mult_117/S2_5_1  ( .A(sig_reg_storage[13]), .B(
        \mult_117/CARRYB[4][1] ), .CI(\mult_117/SUMB[1][5] ), .CO(
        \mult_117/CARRYB[5][1] ), .S(\mult_117/SUMB[5][1] ) );
  ADD32 \mult_117/S3_6_5  ( .A(sig_reg_storage[14]), .B(
        \mult_117/CARRYB[5][5] ), .CI(sig_reg_storage[13]), .CO(
        \mult_117/CARRYB[6][5] ), .S(\mult_117/SUMB[6][5] ) );
  ADD32 \mult_117/S2_6_1  ( .A(sig_reg_storage[14]), .B(
        \mult_117/CARRYB[5][1] ), .CI(\mult_117/SUMB[2][5] ), .CO(
        \mult_117/CARRYB[6][1] ), .S(\mult_117/SUMB[6][1] ) );
  ADD32 \mult_117/S5_5  ( .A(sig_reg_storage[15]), .B(\mult_117/CARRYB[6][5] ), 
        .CI(sig_reg_storage[14]), .CO(\mult_117/CARRYB[7][5] ), .S(
        \mult_117/SUMB[7][5] ) );
  ADD32 \mult_117/S4_1  ( .A(sig_reg_storage[15]), .B(\mult_117/CARRYB[6][1] ), 
        .CI(\mult_117/SUMB[3][5] ), .CO(\mult_117/CARRYB[7][1] ), .S(
        \mult_117/SUMB[7][1] ) );
  ADD32 \mult_114/S3_2_5  ( .A(sig_reg_storage[2]), .B(\mult_114/CARRYB[1][5] ), .CI(sig_reg_storage[1]), .CO(\mult_114/CARRYB[2][5] ), .S(
        \mult_114/SUMB[2][5] ) );
  ADD32 \mult_114/S3_3_5  ( .A(sig_reg_storage[3]), .B(\mult_114/CARRYB[2][5] ), .CI(sig_reg_storage[2]), .CO(\mult_114/CARRYB[3][5] ), .S(
        \mult_114/SUMB[3][5] ) );
  ADD32 \mult_114/S3_4_5  ( .A(sig_reg_storage[4]), .B(\mult_114/CARRYB[3][5] ), .CI(sig_reg_storage[3]), .CO(\mult_114/CARRYB[4][5] ), .S(
        \mult_114/SUMB[4][5] ) );
  ADD32 \mult_114/S3_5_5  ( .A(sig_reg_storage[5]), .B(\mult_114/CARRYB[4][5] ), .CI(sig_reg_storage[4]), .CO(\mult_114/CARRYB[5][5] ), .S(
        \mult_114/SUMB[5][5] ) );
  ADD32 \mult_114/S2_5_1  ( .A(sig_reg_storage[5]), .B(\mult_114/CARRYB[4][1] ), .CI(\mult_114/SUMB[1][5] ), .CO(\mult_114/CARRYB[5][1] ), .S(
        \mult_114/SUMB[5][1] ) );
  ADD32 \mult_114/S3_6_5  ( .A(sig_reg_storage[6]), .B(\mult_114/CARRYB[5][5] ), .CI(sig_reg_storage[5]), .CO(\mult_114/CARRYB[6][5] ), .S(
        \mult_114/SUMB[6][5] ) );
  ADD32 \mult_114/S2_6_1  ( .A(sig_reg_storage[6]), .B(\mult_114/CARRYB[5][1] ), .CI(\mult_114/SUMB[2][5] ), .CO(\mult_114/CARRYB[6][1] ), .S(
        \mult_114/SUMB[6][1] ) );
  ADD32 \mult_114/S5_5  ( .A(sig_reg_storage[7]), .B(\mult_114/CARRYB[6][5] ), 
        .CI(sig_reg_storage[6]), .CO(\mult_114/CARRYB[7][5] ), .S(
        \mult_114/SUMB[7][5] ) );
  ADD32 \mult_114/S4_1  ( .A(sig_reg_storage[7]), .B(\mult_114/CARRYB[6][1] ), 
        .CI(\mult_114/SUMB[3][5] ), .CO(\mult_114/CARRYB[7][1] ), .S(
        \mult_114/SUMB[7][1] ) );
  DF3 \current_state_reg[0]  ( .D(N81), .C(i_clk), .Q(n175), .QN(n518) );
  DF3 \current_state_reg[2]  ( .D(N83), .C(i_clk), .Q(n165), .QN(n515) );
  DF3 \current_state_reg[1]  ( .D(N82), .C(i_clk), .QN(n517) );
  DF3 sig_out_ppm_reg ( .D(N77), .C(i_clk), .Q(o_ppm) );
  DF3 \local_counter1/o_count_reg[0]  ( .D(\local_counter1/N46 ), .C(i_clk), 
        .Q(sig_out_local_count[0]), .QN(n181) );
  DF3 \local_counter1/o_count_reg[1]  ( .D(\local_counter1/N47 ), .C(i_clk), 
        .Q(sig_out_local_count[1]) );
  DF3 \local_counter1/o_count_reg[2]  ( .D(\local_counter1/N48 ), .C(i_clk), 
        .Q(sig_out_local_count[2]), .QN(n180) );
  DF3 \local_counter1/o_count_reg[3]  ( .D(\local_counter1/N49 ), .C(i_clk), 
        .Q(sig_out_local_count[3]), .QN(n164) );
  DF3 \local_counter1/o_count_reg[4]  ( .D(\local_counter1/N50 ), .C(i_clk), 
        .Q(sig_out_local_count[4]), .QN(n170) );
  DF3 \local_counter1/o_count_reg[5]  ( .D(\local_counter1/N51 ), .C(i_clk), 
        .Q(sig_out_local_count[5]), .QN(n179) );
  DF3 \local_counter1/o_count_reg[6]  ( .D(\local_counter1/N52 ), .C(i_clk), 
        .Q(sig_out_local_count[6]), .QN(n173) );
  DF3 \local_counter1/o_count_reg[7]  ( .D(\local_counter1/N53 ), .C(i_clk), 
        .Q(sig_out_local_count[7]), .QN(n178) );
  DF3 \local_counter1/o_count_reg[8]  ( .D(\local_counter1/N54 ), .C(i_clk), 
        .Q(sig_out_local_count[8]), .QN(n166) );
  DF3 \local_counter1/o_count_reg[9]  ( .D(\local_counter1/N55 ), .C(i_clk), 
        .Q(sig_out_local_count[9]), .QN(n172) );
  DF3 \local_counter1/o_count_reg[10]  ( .D(\local_counter1/N56 ), .C(i_clk), 
        .Q(sig_out_local_count[10]) );
  DF3 \local_counter1/o_count_reg[11]  ( .D(\local_counter1/N57 ), .C(i_clk), 
        .Q(sig_out_local_count[11]) );
  DF3 \local_counter1/o_count_reg[12]  ( .D(\local_counter1/N58 ), .C(i_clk), 
        .Q(sig_out_local_count[12]), .QN(n163) );
  DF3 \local_counter1/o_count_reg[13]  ( .D(\local_counter1/N59 ), .C(i_clk), 
        .Q(sig_out_local_count[13]), .QN(n169) );
  DF3 \local_counter1/o_count_reg[14]  ( .D(\local_counter1/N60 ), .C(i_clk), 
        .Q(sig_out_local_count[14]), .QN(n177) );
  DF3 \local_counter1/o_count_reg[15]  ( .D(\local_counter1/N61 ), .C(i_clk), 
        .Q(sig_out_local_count[15]), .QN(n171) );
  DF3 \local_counter1/o_count_reg[16]  ( .D(\local_counter1/N62 ), .C(i_clk), 
        .Q(sig_out_local_count[16]) );
  DF3 \local_counter1/o_count_reg[17]  ( .D(\local_counter1/N63 ), .C(i_clk), 
        .QN(n168) );
  DF3 \local_counter1/o_count_reg[18]  ( .D(\local_counter1/N64 ), .C(i_clk), 
        .QN(n176) );
  DF3 \local_counter1/o_count_reg[19]  ( .D(\local_counter1/N65 ), .C(i_clk), 
        .Q(sig_out_local_count[19]) );
  DF3 \local_counter1/v_val_reg[19]  ( .D(\local_counter1/N65 ), .C(i_clk), 
        .Q(\local_counter1/v_val [19]) );
  DF3 \local_counter1/v_val_reg[18]  ( .D(\local_counter1/N64 ), .C(i_clk), 
        .Q(\local_counter1/v_val [18]) );
  DF3 \local_counter1/v_val_reg[17]  ( .D(\local_counter1/N63 ), .C(i_clk), 
        .Q(\local_counter1/v_val [17]) );
  DF3 \local_counter1/v_val_reg[16]  ( .D(\local_counter1/N62 ), .C(i_clk), 
        .Q(\local_counter1/v_val [16]) );
  DF3 \local_counter1/v_val_reg[15]  ( .D(\local_counter1/N61 ), .C(i_clk), 
        .Q(\local_counter1/v_val [15]) );
  DF3 \local_counter1/v_val_reg[14]  ( .D(\local_counter1/N60 ), .C(i_clk), 
        .Q(\local_counter1/v_val [14]) );
  DF3 \local_counter1/v_val_reg[13]  ( .D(\local_counter1/N59 ), .C(i_clk), 
        .Q(\local_counter1/v_val [13]) );
  DF3 \local_counter1/v_val_reg[12]  ( .D(\local_counter1/N58 ), .C(i_clk), 
        .Q(\local_counter1/v_val [12]) );
  DF3 \local_counter1/v_val_reg[11]  ( .D(\local_counter1/N57 ), .C(i_clk), 
        .Q(\local_counter1/v_val [11]) );
  DF3 \local_counter1/v_val_reg[10]  ( .D(\local_counter1/N56 ), .C(i_clk), 
        .Q(\local_counter1/v_val [10]) );
  DF3 \local_counter1/v_val_reg[9]  ( .D(\local_counter1/N55 ), .C(i_clk), .Q(
        \local_counter1/v_val [9]) );
  DF3 \local_counter1/v_val_reg[8]  ( .D(\local_counter1/N54 ), .C(i_clk), .Q(
        \local_counter1/v_val [8]) );
  DF3 \local_counter1/v_val_reg[7]  ( .D(\local_counter1/N53 ), .C(i_clk), .Q(
        \local_counter1/v_val [7]) );
  DF3 \local_counter1/v_val_reg[6]  ( .D(\local_counter1/N52 ), .C(i_clk), .Q(
        \local_counter1/v_val [6]) );
  DF3 \local_counter1/v_val_reg[5]  ( .D(\local_counter1/N51 ), .C(i_clk), .Q(
        \local_counter1/v_val [5]) );
  DF3 \local_counter1/v_val_reg[4]  ( .D(\local_counter1/N50 ), .C(i_clk), .Q(
        \local_counter1/v_val [4]) );
  DF3 \local_counter1/v_val_reg[3]  ( .D(\local_counter1/N49 ), .C(i_clk), .Q(
        \local_counter1/v_val [3]) );
  DF3 \local_counter1/v_val_reg[2]  ( .D(\local_counter1/N48 ), .C(i_clk), .Q(
        \local_counter1/v_val [2]) );
  DF3 \local_counter1/v_val_reg[1]  ( .D(\local_counter1/N47 ), .C(i_clk), .Q(
        \local_counter1/v_val [1]) );
  DF3 \local_counter1/v_val_reg[0]  ( .D(\local_counter1/N46 ), .C(i_clk), .Q(
        \local_counter1/v_val [0]) );
  DFE1 \sig_state_reg[1]  ( .D(N79), .E(N204), .C(i_clk), .Q(sig_state[1]), 
        .QN(n174) );
  DFE1 \sig_state_reg[2]  ( .D(N80), .E(N204), .C(i_clk), .Q(sig_state[2]), 
        .QN(n182) );
  DFE1 \sig_state_reg[0]  ( .D(N78), .E(N204), .C(i_clk), .Q(sig_state[0]), 
        .QN(n167) );
  DFE1 \sig_reg_storage_reg[5]  ( .D(i_reg[5]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[5]) );
  DFE1 \sig_reg_storage_reg[6]  ( .D(i_reg[6]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[6]) );
  DFE1 \sig_reg_storage_reg[13]  ( .D(i_reg[13]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[13]) );
  DFE1 \sig_reg_storage_reg[14]  ( .D(i_reg[14]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[14]) );
  DFE1 \sig_reg_storage_reg[21]  ( .D(i_reg[21]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[21]) );
  DFE1 \sig_reg_storage_reg[22]  ( .D(i_reg[22]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[22]) );
  DFE1 \sig_reg_storage_reg[29]  ( .D(i_reg[29]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[29]) );
  DFE1 \sig_reg_storage_reg[30]  ( .D(i_reg[30]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[30]) );
  DFE1 \sig_reg_storage_reg[4]  ( .D(i_reg[4]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[4]), .QN(n183) );
  DFE1 \sig_reg_storage_reg[12]  ( .D(i_reg[12]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[12]), .QN(n186) );
  DFE1 \sig_reg_storage_reg[20]  ( .D(i_reg[20]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[20]), .QN(n185) );
  DFE1 \sig_reg_storage_reg[28]  ( .D(i_reg[28]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[28]), .QN(n184) );
  DFE1 \sig_reg_storage_reg[2]  ( .D(i_reg[2]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[2]), .QN(n210) );
  DFE1 \sig_reg_storage_reg[3]  ( .D(i_reg[3]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[3]), .QN(n212) );
  DFE1 \sig_reg_storage_reg[10]  ( .D(i_reg[10]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[10]) );
  DFE1 \sig_reg_storage_reg[11]  ( .D(i_reg[11]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[11]) );
  DFE1 \sig_reg_storage_reg[18]  ( .D(i_reg[18]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[18]) );
  DFE1 \sig_reg_storage_reg[19]  ( .D(i_reg[19]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[19]) );
  DFE1 \sig_reg_storage_reg[26]  ( .D(i_reg[26]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[26]) );
  DFE1 \sig_reg_storage_reg[27]  ( .D(i_reg[27]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[27]) );
  DFE1 \sig_reg_storage_reg[1]  ( .D(i_reg[1]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[1]), .QN(n197) );
  DFE1 \sig_reg_storage_reg[9]  ( .D(i_reg[9]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[9]), .QN(n196) );
  DFE1 \sig_reg_storage_reg[17]  ( .D(i_reg[17]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[17]), .QN(n195) );
  DFE1 \sig_reg_storage_reg[25]  ( .D(i_reg[25]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[25]), .QN(n194) );
  DFE1 \sig_reg_storage_reg[15]  ( .D(i_reg[15]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[15]), .QN(n193) );
  DFE1 \sig_reg_storage_reg[23]  ( .D(i_reg[23]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[23]), .QN(n192) );
  DFE1 \sig_reg_storage_reg[31]  ( .D(i_reg[31]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[31]), .QN(n191) );
  DFE1 \sig_reg_storage_reg[7]  ( .D(i_reg[7]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[7]), .QN(n190) );
  DFE1 \sig_reg_storage_reg[8]  ( .D(i_reg[8]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[8]), .QN(n189) );
  DFE1 \sig_reg_storage_reg[16]  ( .D(i_reg[16]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[16]), .QN(n188) );
  DFE1 \sig_reg_storage_reg[24]  ( .D(i_reg[24]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[24]), .QN(n516) );
  DFE1 \sig_reg_storage_reg[0]  ( .D(i_reg[0]), .E(N76), .C(i_clk), .Q(
        sig_reg_storage[0]), .QN(n187) );
  NOR22 U123 ( .A(n347), .B(n419), .Q(n357) );
  NAND22 U124 ( .A(n420), .B(n421), .Q(n347) );
  NAND42 U125 ( .A(n336), .B(i_reset_n), .C(n337), .D(n338), .Q(n316) );
  NOR32 U126 ( .A(n175), .B(n517), .C(n165), .Q(n340) );
  INV3 U127 ( .A(n336), .Q(N76) );
  INV3 U128 ( .A(\sub_4_root_sub_235_cf/carry [16]), .Q(n519) );
  NOR20 U129 ( .A(\add_1_root_sub_235_cf/carry [18]), .B(n519), .Q(n241) );
  NOR21 U130 ( .A(n315), .B(n190), .Q(\mult_114/A2[12] ) );
  NOR21 U131 ( .A(n257), .B(n191), .Q(\mult_123/A2[12] ) );
  NOR21 U132 ( .A(n287), .B(n192), .Q(\mult_120/A2[12] ) );
  NOR21 U133 ( .A(n301), .B(n193), .Q(\mult_117/A2[12] ) );
  XNR21 U134 ( .A(N279), .B(\sub_0_root_sub_235_cf/carry [18]), .Q(N196) );
  NOR21 U135 ( .A(\sub_0_root_sub_235_cf/carry [18]), .B(N279), .Q(n243) );
  XNR20 U136 ( .A(n519), .B(\add_1_root_sub_235_cf/carry [17]), .Q(N280) );
  XNR20 U137 ( .A(n519), .B(\add_1_root_sub_235_cf/carry [18]), .Q(N279) );
  INV3 U138 ( .A(n240), .Q(\add_1_root_sub_235_cf/carry [18]) );
  NOR20 U139 ( .A(\add_1_root_sub_235_cf/carry [17]), .B(n519), .Q(n240) );
  XNR21 U140 ( .A(N280), .B(\sub_0_root_sub_235_cf/carry [17]), .Q(N195) );
  INV3 U141 ( .A(n242), .Q(\sub_0_root_sub_235_cf/carry [18]) );
  NOR21 U142 ( .A(\sub_0_root_sub_235_cf/carry [17]), .B(N280), .Q(n242) );
  INV3 U143 ( .A(n239), .Q(\add_1_root_sub_235_cf/carry [17]) );
  NOR20 U144 ( .A(\add_1_root_sub_235_cf/carry [16]), .B(n519), .Q(n239) );
  XNR20 U145 ( .A(n519), .B(\add_1_root_sub_235_cf/carry [16]), .Q(N281) );
  NOR21 U146 ( .A(sig_cyclesTrame1[12]), .B(n268), .Q(
        \sub_4_root_sub_235_cf/carry [13]) );
  INV3 U147 ( .A(\sub_4_root_sub_235_cf/carry [12]), .Q(n268) );
  XOR21 U148 ( .A(n241), .B(\sub_4_root_sub_235_cf/carry [16]), .Q(N278) );
  XOR21 U149 ( .A(\sub_4_root_sub_235_cf/carry [15]), .B(n235), .Q(N31) );
  NOR21 U150 ( .A(n266), .B(n267), .Q(\sub_4_root_sub_235_cf/carry [12]) );
  INV3 U151 ( .A(\sub_4_root_sub_235_cf/carry [11]), .Q(n267) );
  INV3 U152 ( .A(n199), .Q(n266) );
  NOR21 U153 ( .A(n269), .B(n270), .Q(\sub_4_root_sub_235_cf/carry [14]) );
  INV3 U154 ( .A(\sub_4_root_sub_235_cf/carry [13]), .Q(n270) );
  INV3 U155 ( .A(n200), .Q(n269) );
  NOR21 U156 ( .A(n265), .B(n220), .Q(\sub_4_root_sub_235_cf/carry [11]) );
  INV3 U157 ( .A(n201), .Q(n265) );
  NOR21 U158 ( .A(n271), .B(n272), .Q(\sub_4_root_sub_235_cf/carry [15]) );
  INV3 U159 ( .A(\sub_4_root_sub_235_cf/carry [14]), .Q(n272) );
  INV3 U160 ( .A(n202), .Q(n271) );
  INV3 U161 ( .A(n220), .Q(\sub_4_root_sub_235_cf/carry [10]) );
  NOR21 U162 ( .A(n198), .B(\sub_4_root_sub_235_cf/carry [9]), .Q(n220) );
  NOR21 U163 ( .A(sig_cyclesTrame1[15]), .B(n273), .Q(
        \sub_4_root_sub_235_cf/carry [16]) );
  INV3 U164 ( .A(\sub_4_root_sub_235_cf/carry [15]), .Q(n273) );
  XOR21 U165 ( .A(\sub_4_root_sub_235_cf/carry [10]), .B(n201), .Q(N26) );
  XOR21 U166 ( .A(\sub_4_root_sub_235_cf/carry [11]), .B(n199), .Q(N27) );
  XOR21 U167 ( .A(\sub_4_root_sub_235_cf/carry [12]), .B(n520), .Q(N28) );
  XOR21 U168 ( .A(\sub_4_root_sub_235_cf/carry [14]), .B(n202), .Q(N30) );
  XNR21 U169 ( .A(\sub_4_root_sub_235_cf/carry [9]), .B(n198), .Q(N25) );
  XOR21 U170 ( .A(\sub_4_root_sub_235_cf/carry [13]), .B(n200), .Q(N29) );
  XNR21 U171 ( .A(\sub_114_cf/carry[9] ), .B(N268), .Q(n198) );
  INV3 U172 ( .A(n235), .Q(sig_cyclesTrame1[15]) );
  NOR21 U173 ( .A(N263), .B(\sub_114_cf/carry[14] ), .Q(n235) );
  XNR21 U174 ( .A(\sub_114_cf/carry[11] ), .B(N266), .Q(n199) );
  XNR21 U175 ( .A(\sub_114_cf/carry[13] ), .B(N264), .Q(n200) );
  XOR21 U176 ( .A(\sub_114_cf/carry[10] ), .B(n521), .Q(n201) );
  XOR21 U177 ( .A(\sub_114_cf/carry[14] ), .B(N263), .Q(n202) );
  XOR21 U178 ( .A(\sub_117_cf/carry[12] ), .B(N250), .Q(sig_cyclesTrame2[12])
         );
  XOR21 U179 ( .A(\sub_117_cf/carry[13] ), .B(N249), .Q(sig_cyclesTrame2[13])
         );
  XOR21 U180 ( .A(\sub_117_cf/carry[11] ), .B(N251), .Q(sig_cyclesTrame2[11])
         );
  XOR21 U181 ( .A(\sub_117_cf/carry[9] ), .B(N253), .Q(sig_cyclesTrame2[9]) );
  XOR21 U182 ( .A(\sub_120_cf/carry[12] ), .B(N235), .Q(sig_cyclesTrame3[12])
         );
  XOR21 U183 ( .A(\sub_120_cf/carry[13] ), .B(N234), .Q(sig_cyclesTrame3[13])
         );
  XOR21 U184 ( .A(\sub_120_cf/carry[11] ), .B(N236), .Q(sig_cyclesTrame3[11])
         );
  XOR21 U185 ( .A(\sub_120_cf/carry[9] ), .B(N238), .Q(sig_cyclesTrame3[9]) );
  XNR21 U186 ( .A(\sub_117_cf/carry[14] ), .B(N248), .Q(sig_cyclesTrame2[14])
         );
  XNR21 U187 ( .A(\sub_117_cf/carry[10] ), .B(n529), .Q(sig_cyclesTrame2[10])
         );
  XNR21 U188 ( .A(\sub_120_cf/carry[14] ), .B(N233), .Q(sig_cyclesTrame3[14])
         );
  XNR21 U189 ( .A(\sub_120_cf/carry[10] ), .B(n538), .Q(sig_cyclesTrame3[10])
         );
  NOR21 U190 ( .A(n262), .B(n263), .Q(\sub_4_root_sub_235_cf/carry [6]) );
  INV3 U191 ( .A(\sub_4_root_sub_235_cf/carry [5]), .Q(n263) );
  INV3 U192 ( .A(n205), .Q(n262) );
  NOR21 U193 ( .A(n264), .B(n219), .Q(\sub_4_root_sub_235_cf/carry [9]) );
  INV3 U194 ( .A(n206), .Q(n264) );
  NOR21 U195 ( .A(n311), .B(n312), .Q(\sub_114_cf/carry[14] ) );
  INV3 U196 ( .A(\sub_114_cf/carry[13] ), .Q(n312) );
  INV3 U197 ( .A(N264), .Q(n311) );
  NOR21 U198 ( .A(n253), .B(n254), .Q(\sub_123_cf/carry[14] ) );
  INV3 U199 ( .A(\sub_123_cf/carry[13] ), .Q(n254) );
  INV3 U200 ( .A(N219), .Q(n253) );
  NOR21 U201 ( .A(n283), .B(n284), .Q(\sub_120_cf/carry[14] ) );
  INV3 U202 ( .A(\sub_120_cf/carry[13] ), .Q(n284) );
  INV3 U203 ( .A(N234), .Q(n283) );
  NOR21 U204 ( .A(n297), .B(n298), .Q(\sub_117_cf/carry[14] ) );
  INV3 U205 ( .A(\sub_117_cf/carry[13] ), .Q(n298) );
  INV3 U206 ( .A(N249), .Q(n297) );
  INV3 U207 ( .A(n218), .Q(\sub_4_root_sub_235_cf/carry [7]) );
  NOR21 U208 ( .A(n204), .B(\sub_4_root_sub_235_cf/carry [6]), .Q(n218) );
  NOR21 U209 ( .A(n308), .B(n234), .Q(\sub_114_cf/carry[12] ) );
  INV3 U210 ( .A(N266), .Q(n308) );
  NOR21 U211 ( .A(n250), .B(n216), .Q(\sub_123_cf/carry[12] ) );
  INV3 U212 ( .A(N221), .Q(n250) );
  NOR21 U213 ( .A(n280), .B(n224), .Q(\sub_120_cf/carry[12] ) );
  INV3 U214 ( .A(N236), .Q(n280) );
  NOR21 U215 ( .A(n294), .B(n229), .Q(\sub_117_cf/carry[12] ) );
  INV3 U216 ( .A(N251), .Q(n294) );
  NOR21 U217 ( .A(n309), .B(n310), .Q(\sub_114_cf/carry[13] ) );
  INV3 U218 ( .A(\sub_114_cf/carry[12] ), .Q(n310) );
  INV3 U219 ( .A(N265), .Q(n309) );
  NOR21 U220 ( .A(n251), .B(n252), .Q(\sub_123_cf/carry[13] ) );
  INV3 U221 ( .A(\sub_123_cf/carry[12] ), .Q(n252) );
  INV3 U222 ( .A(N220), .Q(n251) );
  NOR21 U223 ( .A(n281), .B(n282), .Q(\sub_120_cf/carry[13] ) );
  INV3 U224 ( .A(\sub_120_cf/carry[12] ), .Q(n282) );
  INV3 U225 ( .A(N235), .Q(n281) );
  NOR21 U226 ( .A(n295), .B(n296), .Q(\sub_117_cf/carry[13] ) );
  INV3 U227 ( .A(\sub_117_cf/carry[12] ), .Q(n296) );
  INV3 U228 ( .A(N250), .Q(n295) );
  INV3 U229 ( .A(n219), .Q(\sub_4_root_sub_235_cf/carry [8]) );
  NOR21 U230 ( .A(n203), .B(\sub_4_root_sub_235_cf/carry [7]), .Q(n219) );
  XOR21 U231 ( .A(\sub_114_cf/carry[12] ), .B(N265), .Q(sig_cyclesTrame1[12])
         );
  INV3 U232 ( .A(n230), .Q(sig_cyclesTrame2[15]) );
  NOR21 U233 ( .A(N248), .B(\sub_117_cf/carry[14] ), .Q(n230) );
  NOR21 U234 ( .A(n306), .B(n307), .Q(\sub_114_cf/carry[10] ) );
  INV3 U235 ( .A(\sub_114_cf/carry[9] ), .Q(n307) );
  INV3 U236 ( .A(N268), .Q(n306) );
  NOR21 U237 ( .A(n248), .B(n249), .Q(\sub_123_cf/carry[10] ) );
  INV3 U238 ( .A(\sub_123_cf/carry[9] ), .Q(n249) );
  INV3 U239 ( .A(N223), .Q(n248) );
  NOR21 U240 ( .A(n278), .B(n279), .Q(\sub_120_cf/carry[10] ) );
  INV3 U241 ( .A(\sub_120_cf/carry[9] ), .Q(n279) );
  INV3 U242 ( .A(N238), .Q(n278) );
  NOR21 U243 ( .A(n292), .B(n293), .Q(\sub_117_cf/carry[10] ) );
  INV3 U244 ( .A(\sub_117_cf/carry[9] ), .Q(n293) );
  INV3 U245 ( .A(N253), .Q(n292) );
  INV3 U246 ( .A(n234), .Q(\sub_114_cf/carry[11] ) );
  NOR21 U247 ( .A(n521), .B(\sub_114_cf/carry[10] ), .Q(n234) );
  INV3 U248 ( .A(n216), .Q(\sub_123_cf/carry[11] ) );
  NOR21 U249 ( .A(n544), .B(\sub_123_cf/carry[10] ), .Q(n216) );
  INV3 U250 ( .A(n224), .Q(\sub_120_cf/carry[11] ) );
  NOR21 U251 ( .A(n538), .B(\sub_120_cf/carry[10] ), .Q(n224) );
  INV3 U252 ( .A(n229), .Q(\sub_117_cf/carry[11] ) );
  NOR21 U253 ( .A(n529), .B(\sub_117_cf/carry[10] ), .Q(n229) );
  INV3 U254 ( .A(n225), .Q(sig_cyclesTrame3[15]) );
  NOR21 U255 ( .A(N233), .B(\sub_120_cf/carry[14] ), .Q(n225) );
  XOR21 U256 ( .A(\sub_123_cf/carry[12] ), .B(N220), .Q(sig_cyclesTrame4[12])
         );
  XOR21 U257 ( .A(\sub_123_cf/carry[13] ), .B(N219), .Q(sig_cyclesTrame4[13])
         );
  XOR21 U258 ( .A(\sub_123_cf/carry[11] ), .B(N221), .Q(sig_cyclesTrame4[11])
         );
  XOR21 U259 ( .A(\sub_123_cf/carry[9] ), .B(N223), .Q(sig_cyclesTrame4[9]) );
  XNR21 U260 ( .A(\sub_4_root_sub_235_cf/carry [6]), .B(n204), .Q(N22) );
  XNR21 U261 ( .A(\sub_4_root_sub_235_cf/carry [7]), .B(n203), .Q(N23) );
  XOR21 U262 ( .A(\sub_4_root_sub_235_cf/carry [8]), .B(n206), .Q(N24) );
  XOR21 U263 ( .A(\sub_4_root_sub_235_cf/carry [5]), .B(n205), .Q(N21) );
  XNR21 U264 ( .A(\sub_123_cf/carry[14] ), .B(N218), .Q(sig_cyclesTrame4[14])
         );
  XNR21 U265 ( .A(\sub_123_cf/carry[10] ), .B(n544), .Q(sig_cyclesTrame4[10])
         );
  INV3 U266 ( .A(n217), .Q(sig_cyclesTrame4[15]) );
  NOR21 U267 ( .A(N218), .B(\sub_123_cf/carry[14] ), .Q(n217) );
  XNR21 U268 ( .A(\sub_114_cf/carry[7] ), .B(\mult_114/SUMB[6][1] ), .Q(n203)
         );
  XOR21 U269 ( .A(\sub_114_cf/carry[6] ), .B(\mult_114/SUMB[5][1] ), .Q(n204)
         );
  XNR21 U270 ( .A(\sub_114_cf/carry[5] ), .B(\mult_114/SUMB[4][1] ), .Q(n205)
         );
  XNR21 U271 ( .A(\sub_114_cf/carry[8] ), .B(\mult_114/SUMB[7][1] ), .Q(n206)
         );
  INV3 U272 ( .A(\mult_114/CARRYB[7][5] ), .Q(n315) );
  INV3 U273 ( .A(\mult_123/CARRYB[7][5] ), .Q(n257) );
  INV3 U274 ( .A(\mult_120/CARRYB[7][5] ), .Q(n287) );
  INV3 U275 ( .A(\mult_117/CARRYB[7][5] ), .Q(n301) );
  XOR21 U276 ( .A(n189), .B(n188), .Q(n207) );
  XOR21 U277 ( .A(\mult_114/SUMB[4][5] ), .B(\mult_114/CARRYB[7][1] ), .Q(N268) );
  XOR21 U278 ( .A(\mult_123/SUMB[4][5] ), .B(\mult_123/CARRYB[7][1] ), .Q(N223) );
  XOR21 U279 ( .A(\mult_120/SUMB[4][5] ), .B(\mult_120/CARRYB[7][1] ), .Q(N238) );
  XOR21 U280 ( .A(\mult_117/SUMB[4][5] ), .B(\mult_117/CARRYB[7][1] ), .Q(N253) );
  XOR21 U281 ( .A(\sub_117_cf/carry[8] ), .B(\mult_117/SUMB[7][1] ), .Q(
        sig_cyclesTrame2[8]) );
  XOR21 U282 ( .A(\sub_117_cf/carry[5] ), .B(\mult_117/SUMB[4][1] ), .Q(
        sig_cyclesTrame2[5]) );
  XOR21 U283 ( .A(\sub_117_cf/carry[7] ), .B(\mult_117/SUMB[6][1] ), .Q(
        sig_cyclesTrame2[7]) );
  XOR21 U284 ( .A(\sub_120_cf/carry[8] ), .B(\mult_120/SUMB[7][1] ), .Q(
        sig_cyclesTrame3[8]) );
  XOR21 U285 ( .A(\sub_120_cf/carry[5] ), .B(\mult_120/SUMB[4][1] ), .Q(
        sig_cyclesTrame3[5]) );
  XOR21 U286 ( .A(\sub_120_cf/carry[7] ), .B(\mult_120/SUMB[6][1] ), .Q(
        sig_cyclesTrame3[7]) );
  XNR21 U287 ( .A(\sub_117_cf/carry[6] ), .B(\mult_117/SUMB[5][1] ), .Q(
        sig_cyclesTrame2[6]) );
  XNR21 U288 ( .A(\sub_120_cf/carry[6] ), .B(\mult_120/SUMB[5][1] ), .Q(
        sig_cyclesTrame3[6]) );
  NOR21 U289 ( .A(n258), .B(n259), .Q(\sub_4_root_sub_235_cf/carry [4]) );
  INV3 U290 ( .A(\sub_4_root_sub_235_cf/carry [3]), .Q(n259) );
  INV3 U291 ( .A(n209), .Q(n258) );
  NOR21 U292 ( .A(n260), .B(n261), .Q(\sub_4_root_sub_235_cf/carry [5]) );
  INV3 U293 ( .A(\sub_4_root_sub_235_cf/carry [4]), .Q(n261) );
  INV3 U294 ( .A(n211), .Q(n260) );
  NOR21 U295 ( .A(n302), .B(n232), .Q(\sub_114_cf/carry[6] ) );
  INV3 U296 ( .A(\mult_114/SUMB[4][1] ), .Q(n302) );
  NOR21 U297 ( .A(n244), .B(n214), .Q(\sub_123_cf/carry[6] ) );
  INV3 U298 ( .A(\mult_123/SUMB[4][1] ), .Q(n244) );
  NOR21 U299 ( .A(n274), .B(n222), .Q(\sub_120_cf/carry[6] ) );
  INV3 U300 ( .A(\mult_120/SUMB[4][1] ), .Q(n274) );
  NOR21 U301 ( .A(n288), .B(n227), .Q(\sub_117_cf/carry[6] ) );
  INV3 U302 ( .A(\mult_117/SUMB[4][1] ), .Q(n288) );
  XOR21 U303 ( .A(\sub_123_cf/carry[8] ), .B(\mult_123/SUMB[7][1] ), .Q(
        sig_cyclesTrame4[8]) );
  XOR21 U304 ( .A(\sub_123_cf/carry[5] ), .B(\mult_123/SUMB[4][1] ), .Q(
        sig_cyclesTrame4[5]) );
  XOR21 U305 ( .A(\sub_123_cf/carry[7] ), .B(\mult_123/SUMB[6][1] ), .Q(
        sig_cyclesTrame4[7]) );
  NOR21 U306 ( .A(n304), .B(n305), .Q(\sub_114_cf/carry[9] ) );
  INV3 U307 ( .A(\sub_114_cf/carry[8] ), .Q(n305) );
  INV3 U308 ( .A(\mult_114/SUMB[7][1] ), .Q(n304) );
  NOR21 U309 ( .A(n246), .B(n247), .Q(\sub_123_cf/carry[9] ) );
  INV3 U310 ( .A(\sub_123_cf/carry[8] ), .Q(n247) );
  INV3 U311 ( .A(\mult_123/SUMB[7][1] ), .Q(n246) );
  NOR21 U312 ( .A(n276), .B(n277), .Q(\sub_120_cf/carry[9] ) );
  INV3 U313 ( .A(\sub_120_cf/carry[8] ), .Q(n277) );
  INV3 U314 ( .A(\mult_120/SUMB[7][1] ), .Q(n276) );
  NOR21 U315 ( .A(n290), .B(n291), .Q(\sub_117_cf/carry[9] ) );
  INV3 U316 ( .A(\sub_117_cf/carry[8] ), .Q(n291) );
  INV3 U317 ( .A(\mult_117/SUMB[7][1] ), .Q(n290) );
  NOR21 U318 ( .A(n303), .B(n233), .Q(\sub_114_cf/carry[8] ) );
  INV3 U319 ( .A(\mult_114/SUMB[6][1] ), .Q(n303) );
  NOR21 U320 ( .A(n245), .B(n215), .Q(\sub_123_cf/carry[8] ) );
  INV3 U321 ( .A(\mult_123/SUMB[6][1] ), .Q(n245) );
  NOR21 U322 ( .A(n275), .B(n223), .Q(\sub_120_cf/carry[8] ) );
  INV3 U323 ( .A(\mult_120/SUMB[6][1] ), .Q(n275) );
  NOR21 U324 ( .A(n289), .B(n228), .Q(\sub_117_cf/carry[8] ) );
  INV3 U325 ( .A(\mult_117/SUMB[6][1] ), .Q(n289) );
  XOR21 U326 ( .A(\sub_4_root_sub_235_cf/carry [3]), .B(n209), .Q(N19) );
  XOR21 U327 ( .A(\sub_4_root_sub_235_cf/carry [4]), .B(n211), .Q(N20) );
  INV3 U328 ( .A(n238), .Q(\sub_0_root_sub_235_cf/carry [2]) );
  NOR21 U329 ( .A(n207), .B(N296), .Q(n238) );
  INV3 U330 ( .A(n237), .Q(\add_3_root_sub_235_cf/carry [2]) );
  NOR21 U331 ( .A(n188), .B(n189), .Q(n237) );
  XNR21 U332 ( .A(\sub_123_cf/carry[6] ), .B(\mult_123/SUMB[5][1] ), .Q(
        sig_cyclesTrame4[6]) );
  INV3 U333 ( .A(n233), .Q(\sub_114_cf/carry[7] ) );
  NOR21 U334 ( .A(\mult_114/SUMB[5][1] ), .B(\sub_114_cf/carry[6] ), .Q(n233)
         );
  INV3 U335 ( .A(n215), .Q(\sub_123_cf/carry[7] ) );
  NOR21 U336 ( .A(\mult_123/SUMB[5][1] ), .B(\sub_123_cf/carry[6] ), .Q(n215)
         );
  INV3 U337 ( .A(n223), .Q(\sub_120_cf/carry[7] ) );
  NOR21 U338 ( .A(\mult_120/SUMB[5][1] ), .B(\sub_120_cf/carry[6] ), .Q(n223)
         );
  INV3 U339 ( .A(n228), .Q(\sub_117_cf/carry[7] ) );
  NOR21 U340 ( .A(\mult_117/SUMB[5][1] ), .B(\sub_117_cf/carry[6] ), .Q(n228)
         );
  NOR21 U341 ( .A(n313), .B(n314), .Q(\mult_114/A2[8] ) );
  INV3 U342 ( .A(\mult_114/SUMB[4][5] ), .Q(n314) );
  INV3 U343 ( .A(\mult_114/CARRYB[7][1] ), .Q(n313) );
  NOR21 U344 ( .A(n255), .B(n256), .Q(\mult_123/A2[8] ) );
  INV3 U345 ( .A(\mult_123/SUMB[4][5] ), .Q(n256) );
  INV3 U346 ( .A(\mult_123/CARRYB[7][1] ), .Q(n255) );
  NOR21 U347 ( .A(n285), .B(n286), .Q(\mult_120/A2[8] ) );
  INV3 U348 ( .A(\mult_120/SUMB[4][5] ), .Q(n286) );
  INV3 U349 ( .A(\mult_120/CARRYB[7][1] ), .Q(n285) );
  NOR21 U350 ( .A(n299), .B(n300), .Q(\mult_117/A2[8] ) );
  INV3 U351 ( .A(\mult_117/SUMB[4][5] ), .Q(n300) );
  INV3 U352 ( .A(\mult_117/CARRYB[7][1] ), .Q(n299) );
  XNR21 U353 ( .A(N296), .B(n207), .Q(N179) );
  XNR21 U354 ( .A(sig_reg_storage[0]), .B(sig_reg_storage[1]), .Q(n208) );
  XNR21 U355 ( .A(\sub_114_cf/carry[3] ), .B(n210), .Q(n209) );
  XNR21 U356 ( .A(\sub_114_cf/carry[4] ), .B(n212), .Q(n211) );
  NOR21 U357 ( .A(sig_reg_storage[24]), .B(n187), .Q(n236) );
  XOR21 U358 ( .A(n243), .B(N278), .Q(N197) );
  XOR21 U359 ( .A(sig_reg_storage[4]), .B(sig_reg_storage[0]), .Q(
        \mult_114/SUMB[4][1] ) );
  XOR21 U360 ( .A(sig_reg_storage[28]), .B(sig_reg_storage[24]), .Q(
        \mult_123/SUMB[4][1] ) );
  XOR21 U361 ( .A(sig_reg_storage[20]), .B(sig_reg_storage[16]), .Q(
        \mult_120/SUMB[4][1] ) );
  XOR21 U362 ( .A(sig_reg_storage[12]), .B(sig_reg_storage[8]), .Q(
        \mult_117/SUMB[4][1] ) );
  XNR21 U363 ( .A(n187), .B(sig_reg_storage[24]), .Q(N296) );
  XOR21 U364 ( .A(sig_reg_storage[8]), .B(sig_reg_storage[9]), .Q(
        sig_cyclesTrame2[2]) );
  XOR21 U365 ( .A(sig_reg_storage[16]), .B(sig_reg_storage[17]), .Q(
        sig_cyclesTrame3[2]) );
  XNR21 U366 ( .A(\sub_117_cf/carry[4] ), .B(sig_reg_storage[11]), .Q(
        sig_cyclesTrame2[4]) );
  XNR21 U367 ( .A(\sub_117_cf/carry[3] ), .B(sig_reg_storage[10]), .Q(
        sig_cyclesTrame2[3]) );
  XNR21 U368 ( .A(\sub_120_cf/carry[4] ), .B(sig_reg_storage[19]), .Q(
        sig_cyclesTrame3[4]) );
  XNR21 U369 ( .A(\sub_120_cf/carry[3] ), .B(sig_reg_storage[18]), .Q(
        sig_cyclesTrame3[3]) );
  NOR21 U370 ( .A(\mult_114/SUMB[1][5] ), .B(n187), .Q(
        \sub_4_root_sub_235_cf/carry [3]) );
  NOR21 U371 ( .A(n197), .B(n187), .Q(\sub_114_cf/carry[3] ) );
  NOR21 U372 ( .A(n194), .B(n516), .Q(\sub_123_cf/carry[3] ) );
  NOR21 U373 ( .A(n187), .B(n197), .Q(\mult_114/CARRYB[1][5] ) );
  NOR21 U374 ( .A(n183), .B(n187), .Q(\mult_114/CARRYB[4][1] ) );
  XOR21 U375 ( .A(sig_reg_storage[0]), .B(sig_reg_storage[1]), .Q(
        \mult_114/SUMB[1][5] ) );
  NOR21 U376 ( .A(n516), .B(n194), .Q(\mult_123/CARRYB[1][5] ) );
  NOR21 U377 ( .A(n184), .B(n516), .Q(\mult_123/CARRYB[4][1] ) );
  XOR21 U378 ( .A(sig_reg_storage[24]), .B(sig_reg_storage[25]), .Q(
        \mult_123/SUMB[1][5] ) );
  NOR21 U379 ( .A(n188), .B(n195), .Q(\mult_120/CARRYB[1][5] ) );
  NOR21 U380 ( .A(n189), .B(n196), .Q(\mult_117/CARRYB[1][5] ) );
  NOR21 U381 ( .A(n185), .B(n188), .Q(\mult_120/CARRYB[4][1] ) );
  XOR21 U382 ( .A(sig_reg_storage[16]), .B(sig_reg_storage[17]), .Q(
        \mult_120/SUMB[1][5] ) );
  NOR21 U383 ( .A(n186), .B(n189), .Q(\mult_117/CARRYB[4][1] ) );
  XOR21 U384 ( .A(sig_reg_storage[8]), .B(sig_reg_storage[9]), .Q(
        \mult_117/SUMB[1][5] ) );
  NOR21 U385 ( .A(n195), .B(n188), .Q(\sub_120_cf/carry[3] ) );
  NOR21 U386 ( .A(n196), .B(n189), .Q(\sub_117_cf/carry[3] ) );
  XOR21 U387 ( .A(sig_reg_storage[7]), .B(\mult_114/CARRYB[7][5] ), .Q(
        \mult_114/A1[11] ) );
  XOR21 U388 ( .A(sig_reg_storage[31]), .B(\mult_123/CARRYB[7][5] ), .Q(
        \mult_123/A1[11] ) );
  XOR21 U389 ( .A(sig_reg_storage[23]), .B(\mult_120/CARRYB[7][5] ), .Q(
        \mult_120/A1[11] ) );
  XOR21 U390 ( .A(sig_reg_storage[15]), .B(\mult_117/CARRYB[7][5] ), .Q(
        \mult_117/A1[11] ) );
  XOR21 U391 ( .A(sig_reg_storage[24]), .B(sig_reg_storage[25]), .Q(
        sig_cyclesTrame4[2]) );
  INV3 U392 ( .A(n236), .Q(\add_1_root_sub_235_cf/carry [2]) );
  XOR21 U393 ( .A(sig_reg_storage[0]), .B(n208), .Q(N18) );
  XNR21 U394 ( .A(\sub_123_cf/carry[3] ), .B(sig_reg_storage[26]), .Q(
        sig_cyclesTrame4[3]) );
  XNR21 U395 ( .A(\sub_123_cf/carry[4] ), .B(sig_reg_storage[27]), .Q(
        sig_cyclesTrame4[4]) );
  INV3 U396 ( .A(n231), .Q(\sub_114_cf/carry[4] ) );
  NOR21 U397 ( .A(sig_reg_storage[2]), .B(\sub_114_cf/carry[3] ), .Q(n231) );
  INV3 U398 ( .A(n213), .Q(\sub_123_cf/carry[4] ) );
  NOR21 U399 ( .A(sig_reg_storage[26]), .B(\sub_123_cf/carry[3] ), .Q(n213) );
  INV3 U400 ( .A(n221), .Q(\sub_120_cf/carry[4] ) );
  NOR21 U401 ( .A(sig_reg_storage[18]), .B(\sub_120_cf/carry[3] ), .Q(n221) );
  INV3 U402 ( .A(n226), .Q(\sub_117_cf/carry[4] ) );
  NOR21 U403 ( .A(sig_reg_storage[10]), .B(\sub_117_cf/carry[3] ), .Q(n226) );
  INV3 U404 ( .A(n232), .Q(\sub_114_cf/carry[5] ) );
  NOR21 U405 ( .A(sig_reg_storage[3]), .B(\sub_114_cf/carry[4] ), .Q(n232) );
  INV3 U406 ( .A(n214), .Q(\sub_123_cf/carry[5] ) );
  NOR21 U407 ( .A(sig_reg_storage[27]), .B(\sub_123_cf/carry[4] ), .Q(n214) );
  INV3 U408 ( .A(n222), .Q(\sub_120_cf/carry[5] ) );
  NOR21 U409 ( .A(sig_reg_storage[19]), .B(\sub_120_cf/carry[4] ), .Q(n222) );
  INV3 U410 ( .A(n227), .Q(\sub_117_cf/carry[5] ) );
  NOR21 U411 ( .A(sig_reg_storage[11]), .B(\sub_117_cf/carry[4] ), .Q(n227) );
  CLKIN0 U412 ( .A(sig_cyclesTrame1[12]), .Q(n520) );
  XOR20 U413 ( .A(\mult_114/A2[8] ), .B(\mult_114/SUMB[5][5] ), .Q(n521) );
  CLKIN0 U414 ( .A(\add_3_root_sub_235_cf/carry [16]), .Q(n522) );
  CLKIN0 U415 ( .A(N51), .Q(n523) );
  CLKIN0 U416 ( .A(N50), .Q(n524) );
  CLKIN0 U417 ( .A(N49), .Q(n525) );
  CLKIN0 U418 ( .A(N48), .Q(n526) );
  CLKIN0 U419 ( .A(N47), .Q(n527) );
  CLKIN0 U420 ( .A(N46), .Q(n528) );
  XOR20 U421 ( .A(\mult_117/A2[8] ), .B(\mult_117/SUMB[5][5] ), .Q(n529) );
  CLKIN0 U422 ( .A(N45), .Q(n530) );
  CLKIN0 U423 ( .A(N44), .Q(n531) );
  CLKIN0 U424 ( .A(N43), .Q(n532) );
  CLKIN0 U425 ( .A(N42), .Q(n533) );
  CLKIN0 U426 ( .A(N41), .Q(n534) );
  CLKIN0 U427 ( .A(N40), .Q(n535) );
  CLKIN0 U428 ( .A(N39), .Q(n536) );
  CLKIN0 U429 ( .A(N38), .Q(n537) );
  XOR20 U430 ( .A(\mult_120/A2[8] ), .B(\mult_120/SUMB[5][5] ), .Q(n538) );
  CLKIN0 U431 ( .A(sig_cyclesTrame4[14]), .Q(n539) );
  CLKIN0 U432 ( .A(sig_cyclesTrame4[13]), .Q(n540) );
  CLKIN0 U433 ( .A(sig_cyclesTrame4[12]), .Q(n541) );
  CLKIN0 U434 ( .A(sig_cyclesTrame4[11]), .Q(n542) );
  CLKIN0 U435 ( .A(sig_cyclesTrame4[10]), .Q(n543) );
  XOR20 U436 ( .A(\mult_123/A2[8] ), .B(\mult_123/SUMB[5][5] ), .Q(n544) );
  CLKIN0 U437 ( .A(sig_cyclesTrame4[9]), .Q(n545) );
  CLKIN0 U438 ( .A(sig_cyclesTrame4[8]), .Q(n546) );
  CLKIN0 U439 ( .A(sig_cyclesTrame4[7]), .Q(n547) );
  CLKIN0 U440 ( .A(sig_cyclesTrame4[6]), .Q(n548) );
  CLKIN0 U441 ( .A(sig_cyclesTrame4[5]), .Q(n549) );
  CLKIN0 U442 ( .A(sig_cyclesTrame4[4]), .Q(n550) );
  CLKIN0 U443 ( .A(sig_cyclesTrame4[3]), .Q(n551) );
  CLKIN0 U444 ( .A(sig_cyclesTrame4[2]), .Q(n552) );
  NOR20 U445 ( .A(n316), .B(n317), .Q(\local_counter1/N65 ) );
  XNR20 U446 ( .A(\local_counter1/v_val [19]), .B(
        \local_counter1/add_34/carry [19]), .Q(n317) );
  NOR20 U447 ( .A(n316), .B(n318), .Q(\local_counter1/N64 ) );
  CLKIN0 U448 ( .A(\local_counter1/N24 ), .Q(n318) );
  NOR20 U449 ( .A(n316), .B(n319), .Q(\local_counter1/N63 ) );
  CLKIN0 U450 ( .A(\local_counter1/N23 ), .Q(n319) );
  NOR20 U451 ( .A(n316), .B(n320), .Q(\local_counter1/N62 ) );
  CLKIN0 U452 ( .A(\local_counter1/N22 ), .Q(n320) );
  NOR20 U453 ( .A(n316), .B(n321), .Q(\local_counter1/N61 ) );
  CLKIN0 U454 ( .A(\local_counter1/N21 ), .Q(n321) );
  NOR20 U455 ( .A(n316), .B(n322), .Q(\local_counter1/N60 ) );
  CLKIN0 U456 ( .A(\local_counter1/N20 ), .Q(n322) );
  NOR20 U457 ( .A(n316), .B(n323), .Q(\local_counter1/N59 ) );
  CLKIN0 U458 ( .A(\local_counter1/N19 ), .Q(n323) );
  NOR20 U459 ( .A(n316), .B(n324), .Q(\local_counter1/N58 ) );
  CLKIN0 U460 ( .A(\local_counter1/N18 ), .Q(n324) );
  NOR20 U461 ( .A(n316), .B(n325), .Q(\local_counter1/N57 ) );
  CLKIN0 U462 ( .A(\local_counter1/N17 ), .Q(n325) );
  NOR20 U463 ( .A(n316), .B(n326), .Q(\local_counter1/N56 ) );
  CLKIN0 U464 ( .A(\local_counter1/N16 ), .Q(n326) );
  NOR20 U465 ( .A(n316), .B(n327), .Q(\local_counter1/N55 ) );
  CLKIN0 U466 ( .A(\local_counter1/N15 ), .Q(n327) );
  NOR20 U467 ( .A(n316), .B(n328), .Q(\local_counter1/N54 ) );
  CLKIN0 U468 ( .A(\local_counter1/N14 ), .Q(n328) );
  NOR20 U469 ( .A(n316), .B(n329), .Q(\local_counter1/N53 ) );
  CLKIN0 U470 ( .A(\local_counter1/N13 ), .Q(n329) );
  NOR20 U471 ( .A(n316), .B(n330), .Q(\local_counter1/N52 ) );
  CLKIN0 U472 ( .A(\local_counter1/N12 ), .Q(n330) );
  NOR20 U473 ( .A(n316), .B(n331), .Q(\local_counter1/N51 ) );
  CLKIN0 U474 ( .A(\local_counter1/N11 ), .Q(n331) );
  NOR20 U475 ( .A(n316), .B(n332), .Q(\local_counter1/N50 ) );
  CLKIN0 U476 ( .A(\local_counter1/N10 ), .Q(n332) );
  NOR20 U477 ( .A(n316), .B(n333), .Q(\local_counter1/N49 ) );
  CLKIN0 U478 ( .A(\local_counter1/N9 ), .Q(n333) );
  NOR20 U479 ( .A(n316), .B(n334), .Q(\local_counter1/N48 ) );
  CLKIN0 U480 ( .A(\local_counter1/N8 ), .Q(n334) );
  NOR20 U481 ( .A(n316), .B(n335), .Q(\local_counter1/N47 ) );
  CLKIN0 U482 ( .A(\local_counter1/N7 ), .Q(n335) );
  NOR20 U483 ( .A(n316), .B(\local_counter1/v_val [0]), .Q(
        \local_counter1/N46 ) );
  NAND20 U484 ( .A(n339), .B(n340), .Q(n338) );
  CLKIN0 U485 ( .A(n341), .Q(n337) );
  OAI310 U486 ( .A(n342), .B(n518), .C(n165), .D(n343), .Q(n341) );
  NAND20 U487 ( .A(n344), .B(n345), .Q(n343) );
  AOI210 U488 ( .A(n346), .B(n339), .C(n347), .Q(n342) );
  NOR30 U489 ( .A(n348), .B(n349), .C(n350), .Q(N83) );
  OAI2110 U490 ( .A(n339), .B(n349), .C(n351), .D(i_reset_n), .Q(N82) );
  NAND30 U491 ( .A(n344), .B(n346), .C(n352), .Q(n351) );
  NAND30 U492 ( .A(n353), .B(n354), .C(i_reset_n), .Q(N81) );
  NAND30 U493 ( .A(n344), .B(n355), .C(n352), .Q(n354) );
  CLKIN0 U494 ( .A(n356), .Q(n344) );
  OAI210 U495 ( .A(n355), .B(n350), .C(n357), .Q(n353) );
  IMUX20 U496 ( .A(n358), .B(n359), .S(sig_state[2]), .Q(N80) );
  AOI210 U497 ( .A(N77), .B(n360), .C(n361), .Q(n359) );
  NAND20 U498 ( .A(n362), .B(n363), .Q(n358) );
  CLKIN0 U499 ( .A(n360), .Q(n363) );
  IMUX20 U500 ( .A(n364), .B(n365), .S(sig_state[1]), .Q(N79) );
  AOI210 U501 ( .A(N77), .B(n167), .C(n361), .Q(n365) );
  NAND20 U502 ( .A(n362), .B(sig_state[0]), .Q(n364) );
  MUX21 U503 ( .A(n361), .B(n362), .S(n167), .Q(N78) );
  NOR30 U504 ( .A(n356), .B(n346), .C(n366), .Q(n362) );
  CLKIN0 U505 ( .A(n355), .Q(n346) );
  NAND30 U506 ( .A(n167), .B(n174), .C(sig_state[2]), .Q(n355) );
  OAI310 U507 ( .A(n348), .B(n339), .C(n349), .D(n367), .Q(n361) );
  NAND20 U508 ( .A(N77), .B(n356), .Q(n367) );
  NAND40 U509 ( .A(n368), .B(n369), .C(n370), .D(n371), .Q(n356) );
  NOR40 U510 ( .A(sig_out_local_count[9]), .B(sig_out_local_count[7]), .C(
        sig_out_local_count[5]), .D(sig_out_local_count[4]), .Q(n371) );
  NOR40 U511 ( .A(sig_out_local_count[2]), .B(sig_out_local_count[15]), .C(
        sig_out_local_count[14]), .D(sig_out_local_count[13]), .Q(n370) );
  CLKIN0 U512 ( .A(n372), .Q(n369) );
  NAND40 U513 ( .A(n373), .B(sig_out_local_count[1]), .C(
        sig_out_local_count[10]), .D(sig_out_local_count[11]), .Q(n372) );
  NOR40 U514 ( .A(n163), .B(n164), .C(n173), .D(n166), .Q(n368) );
  CLKIN0 U515 ( .A(n340), .Q(n349) );
  CLKIN0 U516 ( .A(n350), .Q(n339) );
  NAND40 U517 ( .A(n374), .B(n375), .C(n376), .D(n377), .Q(n350) );
  NOR40 U518 ( .A(n378), .B(n379), .C(n380), .D(n381), .Q(n377) );
  NAND20 U519 ( .A(n382), .B(n383), .Q(n381) );
  XNR20 U520 ( .A(n163), .B(n384), .Q(n383) );
  AOI220 U521 ( .A(N190), .B(n340), .C(n357), .D(sig_cyclesTrame4[12]), .Q(
        n384) );
  XNR20 U522 ( .A(n172), .B(n385), .Q(n382) );
  AOI220 U523 ( .A(N187), .B(n340), .C(n357), .D(sig_cyclesTrame4[9]), .Q(n385) );
  XNR20 U524 ( .A(sig_out_local_count[10]), .B(n386), .Q(n380) );
  AOI220 U525 ( .A(N188), .B(n340), .C(n357), .D(sig_cyclesTrame4[10]), .Q(
        n386) );
  OAI220 U526 ( .A(N196), .B(n176), .C(N195), .D(n168), .Q(n379) );
  XNR20 U527 ( .A(sig_out_local_count[11]), .B(n387), .Q(n378) );
  AOI220 U528 ( .A(N189), .B(n340), .C(n357), .D(sig_cyclesTrame4[11]), .Q(
        n387) );
  NOR40 U529 ( .A(n388), .B(n389), .C(n390), .D(n391), .Q(n376) );
  XNR20 U530 ( .A(sig_out_local_count[2]), .B(n392), .Q(n391) );
  AOI220 U531 ( .A(N180), .B(n340), .C(n357), .D(sig_cyclesTrame4[2]), .Q(n392) );
  XNR20 U532 ( .A(sig_out_local_count[3]), .B(n393), .Q(n390) );
  AOI220 U533 ( .A(N181), .B(n340), .C(n357), .D(sig_cyclesTrame4[3]), .Q(n393) );
  NAND20 U534 ( .A(n394), .B(n395), .Q(n389) );
  XNR20 U535 ( .A(n171), .B(n396), .Q(n395) );
  AOI220 U536 ( .A(N193), .B(n340), .C(n357), .D(sig_cyclesTrame4[15]), .Q(
        n396) );
  XNR20 U537 ( .A(n169), .B(n397), .Q(n394) );
  AOI220 U538 ( .A(N191), .B(n340), .C(n357), .D(sig_cyclesTrame4[13]), .Q(
        n397) );
  XNR20 U539 ( .A(sig_out_local_count[14]), .B(n398), .Q(n388) );
  AOI220 U540 ( .A(N192), .B(n340), .C(n357), .D(sig_cyclesTrame4[14]), .Q(
        n398) );
  NOR40 U541 ( .A(n399), .B(n400), .C(n401), .D(n402), .Q(n375) );
  XNR20 U542 ( .A(sig_out_local_count[7]), .B(n403), .Q(n402) );
  AOI220 U543 ( .A(N185), .B(n340), .C(n357), .D(sig_cyclesTrame4[7]), .Q(n403) );
  XNR20 U544 ( .A(sig_out_local_count[5]), .B(n404), .Q(n401) );
  AOI220 U545 ( .A(N183), .B(n340), .C(n357), .D(sig_cyclesTrame4[5]), .Q(n404) );
  NAND20 U546 ( .A(n405), .B(n406), .Q(n400) );
  XNR20 U547 ( .A(n170), .B(n407), .Q(n406) );
  AOI220 U548 ( .A(N182), .B(n340), .C(n357), .D(sig_cyclesTrame4[4]), .Q(n407) );
  XOR20 U549 ( .A(sig_out_local_count[1]), .B(n408), .Q(n405) );
  AOI220 U550 ( .A(N179), .B(n340), .C(n357), .D(n516), .Q(n408) );
  XNR20 U551 ( .A(sig_out_local_count[6]), .B(n409), .Q(n399) );
  AOI220 U552 ( .A(N184), .B(n340), .C(n357), .D(sig_cyclesTrame4[6]), .Q(n409) );
  NOR40 U553 ( .A(n410), .B(n411), .C(n412), .D(n413), .Q(n374) );
  XNR20 U554 ( .A(n414), .B(sig_out_local_count[19]), .Q(n413) );
  NAND20 U555 ( .A(N197), .B(n340), .Q(n414) );
  XNR20 U556 ( .A(sig_out_local_count[8]), .B(n415), .Q(n412) );
  AOI220 U557 ( .A(N186), .B(n340), .C(n357), .D(sig_cyclesTrame4[8]), .Q(n415) );
  XNR20 U558 ( .A(n416), .B(sig_out_local_count[16]), .Q(n411) );
  NAND20 U559 ( .A(N194), .B(n340), .Q(n416) );
  NAND20 U560 ( .A(n417), .B(n418), .Q(n410) );
  XNR20 U561 ( .A(sig_out_local_count[0]), .B(n357), .Q(n418) );
  NAND40 U562 ( .A(n422), .B(n423), .C(n424), .D(n425), .Q(n421) );
  NOR40 U563 ( .A(n426), .B(n427), .C(n428), .D(n360), .Q(n425) );
  NAND20 U564 ( .A(sig_state[1]), .B(sig_state[0]), .Q(n360) );
  XNR20 U565 ( .A(sig_reg_storage[16]), .B(sig_out_local_count[1]), .Q(n428)
         );
  NAND20 U566 ( .A(n429), .B(n430), .Q(n426) );
  XNR20 U567 ( .A(sig_out_local_count[10]), .B(sig_cyclesTrame3[10]), .Q(n430)
         );
  XNR20 U568 ( .A(sig_out_local_count[11]), .B(sig_cyclesTrame3[11]), .Q(n429)
         );
  NOR40 U569 ( .A(n431), .B(n432), .C(n433), .D(n434), .Q(n424) );
  XNR20 U570 ( .A(n171), .B(sig_cyclesTrame3[15]), .Q(n434) );
  XNR20 U571 ( .A(n177), .B(sig_cyclesTrame3[14]), .Q(n433) );
  XNR20 U572 ( .A(n169), .B(sig_cyclesTrame3[13]), .Q(n432) );
  XNR20 U573 ( .A(n163), .B(sig_cyclesTrame3[12]), .Q(n431) );
  NOR40 U574 ( .A(n435), .B(n436), .C(n437), .D(n438), .Q(n423) );
  XNR20 U575 ( .A(n179), .B(sig_cyclesTrame3[5]), .Q(n438) );
  XNR20 U576 ( .A(n170), .B(sig_cyclesTrame3[4]), .Q(n437) );
  XNR20 U577 ( .A(n164), .B(sig_cyclesTrame3[3]), .Q(n436) );
  XNR20 U578 ( .A(n180), .B(sig_cyclesTrame3[2]), .Q(n435) );
  NOR40 U579 ( .A(n439), .B(n440), .C(n441), .D(n442), .Q(n422) );
  XNR20 U580 ( .A(n172), .B(sig_cyclesTrame3[9]), .Q(n442) );
  XNR20 U581 ( .A(n166), .B(sig_cyclesTrame3[8]), .Q(n441) );
  XNR20 U582 ( .A(n178), .B(sig_cyclesTrame3[7]), .Q(n440) );
  XNR20 U583 ( .A(n173), .B(sig_cyclesTrame3[6]), .Q(n439) );
  MUX21 U584 ( .A(n443), .B(n444), .S(sig_state[0]), .Q(n420) );
  NAND40 U585 ( .A(n445), .B(n446), .C(n447), .D(n448), .Q(n444) );
  NOR40 U586 ( .A(n449), .B(n450), .C(n451), .D(n452), .Q(n448) );
  XNR20 U587 ( .A(n200), .B(sig_out_local_count[13]), .Q(n452) );
  XNR20 U588 ( .A(n199), .B(sig_out_local_count[11]), .Q(n451) );
  NAND20 U589 ( .A(n453), .B(n174), .Q(n450) );
  XNR20 U590 ( .A(sig_out_local_count[12]), .B(sig_cyclesTrame1[12]), .Q(n453)
         );
  XNR20 U591 ( .A(n201), .B(sig_out_local_count[10]), .Q(n449) );
  NOR40 U592 ( .A(n454), .B(n455), .C(n456), .D(n457), .Q(n447) );
  XNR20 U593 ( .A(n209), .B(sig_out_local_count[3]), .Q(n457) );
  XNR20 U594 ( .A(n208), .B(sig_out_local_count[2]), .Q(n456) );
  XNR20 U595 ( .A(n235), .B(sig_out_local_count[15]), .Q(n455) );
  XNR20 U596 ( .A(n202), .B(sig_out_local_count[14]), .Q(n454) );
  NOR40 U597 ( .A(n458), .B(n459), .C(n460), .D(n461), .Q(n446) );
  XNR20 U598 ( .A(n203), .B(sig_out_local_count[7]), .Q(n461) );
  XNR20 U599 ( .A(n204), .B(sig_out_local_count[6]), .Q(n460) );
  XNR20 U600 ( .A(n205), .B(sig_out_local_count[5]), .Q(n459) );
  XNR20 U601 ( .A(n211), .B(sig_out_local_count[4]), .Q(n458) );
  NOR40 U602 ( .A(n462), .B(n463), .C(n464), .D(n427), .Q(n445) );
  XNR20 U603 ( .A(sig_reg_storage[0]), .B(sig_out_local_count[1]), .Q(n464) );
  XNR20 U604 ( .A(n198), .B(sig_out_local_count[9]), .Q(n463) );
  XNR20 U605 ( .A(n206), .B(sig_out_local_count[8]), .Q(n462) );
  NAND40 U606 ( .A(n465), .B(n466), .C(n467), .D(n468), .Q(n443) );
  NOR40 U607 ( .A(n469), .B(n470), .C(n471), .D(n472), .Q(n468) );
  XNR20 U608 ( .A(n177), .B(sig_cyclesTrame2[14]), .Q(n472) );
  XNR20 U609 ( .A(n169), .B(sig_cyclesTrame2[13]), .Q(n471) );
  NAND20 U610 ( .A(n473), .B(n474), .Q(n470) );
  XNR20 U611 ( .A(sig_out_local_count[11]), .B(sig_cyclesTrame2[11]), .Q(n474)
         );
  XNR20 U612 ( .A(sig_out_local_count[10]), .B(sig_cyclesTrame2[10]), .Q(n473)
         );
  XNR20 U613 ( .A(n163), .B(sig_cyclesTrame2[12]), .Q(n469) );
  NOR40 U614 ( .A(n475), .B(n476), .C(n477), .D(n478), .Q(n467) );
  XNR20 U615 ( .A(n170), .B(sig_cyclesTrame2[4]), .Q(n478) );
  XNR20 U616 ( .A(n164), .B(sig_cyclesTrame2[3]), .Q(n477) );
  XNR20 U617 ( .A(n180), .B(sig_cyclesTrame2[2]), .Q(n476) );
  XNR20 U618 ( .A(n171), .B(sig_cyclesTrame2[15]), .Q(n475) );
  NOR40 U619 ( .A(n479), .B(n480), .C(n481), .D(n482), .Q(n466) );
  XNR20 U620 ( .A(n166), .B(sig_cyclesTrame2[8]), .Q(n482) );
  XNR20 U621 ( .A(n178), .B(sig_cyclesTrame2[7]), .Q(n481) );
  XNR20 U622 ( .A(n173), .B(sig_cyclesTrame2[6]), .Q(n480) );
  XNR20 U623 ( .A(n179), .B(sig_cyclesTrame2[5]), .Q(n479) );
  NOR40 U624 ( .A(n483), .B(n484), .C(n174), .D(n427), .Q(n465) );
  NAND20 U625 ( .A(n373), .B(n182), .Q(n427) );
  NOR40 U626 ( .A(n181), .B(n485), .C(sig_out_local_count[16]), .D(
        sig_out_local_count[19]), .Q(n373) );
  XNR20 U627 ( .A(n172), .B(sig_cyclesTrame2[9]), .Q(n484) );
  XNR20 U628 ( .A(sig_reg_storage[8]), .B(sig_out_local_count[1]), .Q(n483) );
  IMUX20 U629 ( .A(n485), .B(n486), .S(n340), .Q(n417) );
  CLKIN0 U630 ( .A(n487), .Q(n486) );
  AOI220 U631 ( .A(n176), .B(N196), .C(n168), .D(N195), .Q(n487) );
  NAND20 U632 ( .A(n176), .B(n168), .Q(n485) );
  CLKIN0 U633 ( .A(n366), .Q(N77) );
  NAND20 U634 ( .A(n352), .B(i_reset_n), .Q(n366) );
  NOR20 U635 ( .A(n488), .B(n165), .Q(n352) );
  IMUX20 U636 ( .A(n345), .B(n489), .S(n515), .Q(n336) );
  NOR20 U637 ( .A(n517), .B(n518), .Q(n489) );
  CLKIN0 U638 ( .A(n488), .Q(n345) );
  NAND20 U639 ( .A(n517), .B(n518), .Q(n488) );
  XNR20 U640 ( .A(n490), .B(\mult_114/SUMB[6][5] ), .Q(N266) );
  XOR20 U641 ( .A(\mult_114/SUMB[7][5] ), .B(n491), .Q(N265) );
  XNR20 U642 ( .A(n492), .B(\mult_114/A1[11] ), .Q(N264) );
  XNR20 U643 ( .A(n493), .B(\mult_114/A2[12] ), .Q(N263) );
  NAND20 U644 ( .A(n494), .B(\mult_114/A1[11] ), .Q(n493) );
  CLKIN0 U645 ( .A(n492), .Q(n494) );
  NAND20 U646 ( .A(n491), .B(\mult_114/SUMB[7][5] ), .Q(n492) );
  NOR20 U647 ( .A(n490), .B(n495), .Q(n491) );
  CLKIN0 U648 ( .A(\mult_114/SUMB[6][5] ), .Q(n495) );
  NAND20 U649 ( .A(\mult_114/A2[8] ), .B(\mult_114/SUMB[5][5] ), .Q(n490) );
  XNR20 U650 ( .A(n496), .B(\mult_117/SUMB[6][5] ), .Q(N251) );
  XOR20 U651 ( .A(\mult_117/SUMB[7][5] ), .B(n497), .Q(N250) );
  XNR20 U652 ( .A(n498), .B(\mult_117/A1[11] ), .Q(N249) );
  XNR20 U653 ( .A(n499), .B(\mult_117/A2[12] ), .Q(N248) );
  NAND20 U654 ( .A(n500), .B(\mult_117/A1[11] ), .Q(n499) );
  CLKIN0 U655 ( .A(n498), .Q(n500) );
  NAND20 U656 ( .A(n497), .B(\mult_117/SUMB[7][5] ), .Q(n498) );
  NOR20 U657 ( .A(n496), .B(n501), .Q(n497) );
  CLKIN0 U658 ( .A(\mult_117/SUMB[6][5] ), .Q(n501) );
  NAND20 U659 ( .A(\mult_117/A2[8] ), .B(\mult_117/SUMB[5][5] ), .Q(n496) );
  XNR20 U660 ( .A(n502), .B(\mult_120/SUMB[6][5] ), .Q(N236) );
  XOR20 U661 ( .A(\mult_120/SUMB[7][5] ), .B(n503), .Q(N235) );
  XNR20 U662 ( .A(n504), .B(\mult_120/A1[11] ), .Q(N234) );
  XNR20 U663 ( .A(n505), .B(\mult_120/A2[12] ), .Q(N233) );
  NAND20 U664 ( .A(n506), .B(\mult_120/A1[11] ), .Q(n505) );
  CLKIN0 U665 ( .A(n504), .Q(n506) );
  NAND20 U666 ( .A(n503), .B(\mult_120/SUMB[7][5] ), .Q(n504) );
  NOR20 U667 ( .A(n502), .B(n507), .Q(n503) );
  CLKIN0 U668 ( .A(\mult_120/SUMB[6][5] ), .Q(n507) );
  NAND20 U669 ( .A(\mult_120/A2[8] ), .B(\mult_120/SUMB[5][5] ), .Q(n502) );
  XNR20 U670 ( .A(n508), .B(\mult_123/SUMB[6][5] ), .Q(N221) );
  XOR20 U671 ( .A(\mult_123/SUMB[7][5] ), .B(n509), .Q(N220) );
  XNR20 U672 ( .A(n510), .B(\mult_123/A1[11] ), .Q(N219) );
  XNR20 U673 ( .A(n511), .B(\mult_123/A2[12] ), .Q(N218) );
  NAND20 U674 ( .A(n512), .B(\mult_123/A1[11] ), .Q(n511) );
  CLKIN0 U675 ( .A(n510), .Q(n512) );
  NAND20 U676 ( .A(n509), .B(\mult_123/SUMB[7][5] ), .Q(n510) );
  NOR20 U677 ( .A(n508), .B(n513), .Q(n509) );
  CLKIN0 U678 ( .A(\mult_123/SUMB[6][5] ), .Q(n513) );
  NAND20 U679 ( .A(\mult_123/A2[8] ), .B(\mult_123/SUMB[5][5] ), .Q(n508) );
  CLKIN0 U680 ( .A(n514), .Q(N204) );
  NOR20 U681 ( .A(n348), .B(n419), .Q(n514) );
  NAND30 U682 ( .A(n515), .B(n175), .C(n517), .Q(n419) );
  CLKIN0 U683 ( .A(i_reset_n), .Q(n348) );
endmodule

