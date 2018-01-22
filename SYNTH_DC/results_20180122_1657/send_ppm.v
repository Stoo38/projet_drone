
module send_ppm ( i_clk, i_reset_n, i_reg, o_ppm );
  input [31:0] i_reg;
  input i_clk, i_reset_n;
  output o_ppm;
  wire   sig_in_init, N78, N79, N81, N82, N148, N156, N163, N169, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N198, N204, \dp_cluster_0/N52 ,
         \dp_cluster_0/N51 , \dp_cluster_0/N50 , \dp_cluster_0/N49 ,
         \dp_cluster_0/N48 , \dp_cluster_0/N47 , \dp_cluster_0/N46 ,
         \dp_cluster_0/N45 , \dp_cluster_0/N44 , \dp_cluster_0/N43 ,
         \dp_cluster_0/N42 , \dp_cluster_0/N41 , \dp_cluster_0/N40 ,
         \dp_cluster_0/N39 , \dp_cluster_0/N38 , \dp_cluster_0/N35 ,
         \dp_cluster_0/N31 , \dp_cluster_0/N30 , \dp_cluster_0/N296 ,
         \dp_cluster_0/N295 , \dp_cluster_0/N294 , \dp_cluster_0/N293 ,
         \dp_cluster_0/N292 , \dp_cluster_0/N291 , \dp_cluster_0/N290 ,
         \dp_cluster_0/N29 , \dp_cluster_0/N289 , \dp_cluster_0/N288 ,
         \dp_cluster_0/N287 , \dp_cluster_0/N286 , \dp_cluster_0/N285 ,
         \dp_cluster_0/N284 , \dp_cluster_0/N283 , \dp_cluster_0/N282 ,
         \dp_cluster_0/N281 , \dp_cluster_0/N280 , \dp_cluster_0/N28 ,
         \dp_cluster_0/N279 , \dp_cluster_0/N278 , \dp_cluster_0/N27 ,
         \dp_cluster_0/N26 , \dp_cluster_0/N25 , \dp_cluster_0/N24 ,
         \dp_cluster_0/N23 , \dp_cluster_0/N22 , \dp_cluster_0/N21 ,
         \dp_cluster_0/N20 , \dp_cluster_0/N19 , \dp_cluster_0/N18 ,
         \dp_cluster_1/N268 , \dp_cluster_1/N266 , \dp_cluster_1/N265 ,
         \dp_cluster_1/N264 , \dp_cluster_1/N263 , \dp_cluster_2/N253 ,
         \dp_cluster_2/N251 , \dp_cluster_2/N250 , \dp_cluster_2/N249 ,
         \dp_cluster_2/N248 , \dp_cluster_3/N238 , \dp_cluster_3/N236 ,
         \dp_cluster_3/N235 , \dp_cluster_3/N234 , \dp_cluster_3/N233 ,
         \dp_cluster_4/N223 , \dp_cluster_4/N221 , \dp_cluster_4/N220 ,
         \dp_cluster_4/N219 , \dp_cluster_4/N218 , n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, \local_counter1/n22 , \local_counter1/N65 , \local_counter1/N64 ,
         \local_counter1/N63 , \local_counter1/N62 , \local_counter1/N61 ,
         \local_counter1/N60 , \local_counter1/N59 , \local_counter1/N58 ,
         \local_counter1/N57 , \local_counter1/N56 , \local_counter1/N55 ,
         \local_counter1/N54 , \local_counter1/N53 , \local_counter1/N52 ,
         \local_counter1/N51 , \local_counter1/N50 , \local_counter1/N49 ,
         \local_counter1/N48 , \local_counter1/N47 , \local_counter1/N46 ,
         \local_counter1/N24 , \local_counter1/N23 , \local_counter1/N22 ,
         \local_counter1/N21 , \local_counter1/N20 , \local_counter1/N19 ,
         \local_counter1/N18 , \local_counter1/N17 , \local_counter1/N16 ,
         \local_counter1/N15 , \local_counter1/N14 , \local_counter1/N13 ,
         \local_counter1/N12 , \local_counter1/N11 , \local_counter1/N10 ,
         \local_counter1/N9 , \local_counter1/N8 , \local_counter1/N7 ,
         \dp_cluster_4/sub_123_cf/carry[3] ,
         \dp_cluster_4/sub_123_cf/carry[4] ,
         \dp_cluster_4/sub_123_cf/carry[5] ,
         \dp_cluster_4/sub_123_cf/carry[6] ,
         \dp_cluster_4/sub_123_cf/carry[7] ,
         \dp_cluster_4/sub_123_cf/carry[8] ,
         \dp_cluster_4/sub_123_cf/carry[9] ,
         \dp_cluster_4/sub_123_cf/carry[10] ,
         \dp_cluster_4/sub_123_cf/carry[11] ,
         \dp_cluster_4/sub_123_cf/carry[12] ,
         \dp_cluster_4/sub_123_cf/carry[13] ,
         \dp_cluster_4/sub_123_cf/carry[14] , \dp_cluster_4/mult_123/A2[8] ,
         \dp_cluster_4/mult_123/A2[12] , \dp_cluster_4/mult_123/A1[11] ,
         \dp_cluster_4/mult_123/SUMB[1][5] ,
         \dp_cluster_4/mult_123/SUMB[2][5] ,
         \dp_cluster_4/mult_123/SUMB[3][5] ,
         \dp_cluster_4/mult_123/SUMB[4][1] ,
         \dp_cluster_4/mult_123/SUMB[4][5] ,
         \dp_cluster_4/mult_123/SUMB[5][1] ,
         \dp_cluster_4/mult_123/SUMB[5][5] ,
         \dp_cluster_4/mult_123/SUMB[6][1] ,
         \dp_cluster_4/mult_123/SUMB[6][5] ,
         \dp_cluster_4/mult_123/SUMB[7][1] ,
         \dp_cluster_4/mult_123/SUMB[7][5] ,
         \dp_cluster_4/mult_123/CARRYB[1][5] ,
         \dp_cluster_4/mult_123/CARRYB[2][5] ,
         \dp_cluster_4/mult_123/CARRYB[3][5] ,
         \dp_cluster_4/mult_123/CARRYB[4][1] ,
         \dp_cluster_4/mult_123/CARRYB[4][5] ,
         \dp_cluster_4/mult_123/CARRYB[5][1] ,
         \dp_cluster_4/mult_123/CARRYB[5][5] ,
         \dp_cluster_4/mult_123/CARRYB[6][1] ,
         \dp_cluster_4/mult_123/CARRYB[6][5] ,
         \dp_cluster_4/mult_123/CARRYB[7][1] ,
         \dp_cluster_4/mult_123/CARRYB[7][5] ,
         \dp_cluster_3/sub_120_cf/carry[3] ,
         \dp_cluster_3/sub_120_cf/carry[4] ,
         \dp_cluster_3/sub_120_cf/carry[5] ,
         \dp_cluster_3/sub_120_cf/carry[6] ,
         \dp_cluster_3/sub_120_cf/carry[7] ,
         \dp_cluster_3/sub_120_cf/carry[8] ,
         \dp_cluster_3/sub_120_cf/carry[9] ,
         \dp_cluster_3/sub_120_cf/carry[10] ,
         \dp_cluster_3/sub_120_cf/carry[11] ,
         \dp_cluster_3/sub_120_cf/carry[12] ,
         \dp_cluster_3/sub_120_cf/carry[13] ,
         \dp_cluster_3/sub_120_cf/carry[14] , \dp_cluster_3/mult_120/A2[8] ,
         \dp_cluster_3/mult_120/A2[12] , \dp_cluster_3/mult_120/A1[11] ,
         \dp_cluster_3/mult_120/SUMB[1][5] ,
         \dp_cluster_3/mult_120/SUMB[2][5] ,
         \dp_cluster_3/mult_120/SUMB[3][5] ,
         \dp_cluster_3/mult_120/SUMB[4][1] ,
         \dp_cluster_3/mult_120/SUMB[4][5] ,
         \dp_cluster_3/mult_120/SUMB[5][1] ,
         \dp_cluster_3/mult_120/SUMB[5][5] ,
         \dp_cluster_3/mult_120/SUMB[6][1] ,
         \dp_cluster_3/mult_120/SUMB[6][5] ,
         \dp_cluster_3/mult_120/SUMB[7][1] ,
         \dp_cluster_3/mult_120/SUMB[7][5] ,
         \dp_cluster_3/mult_120/CARRYB[1][5] ,
         \dp_cluster_3/mult_120/CARRYB[2][5] ,
         \dp_cluster_3/mult_120/CARRYB[3][5] ,
         \dp_cluster_3/mult_120/CARRYB[4][1] ,
         \dp_cluster_3/mult_120/CARRYB[4][5] ,
         \dp_cluster_3/mult_120/CARRYB[5][1] ,
         \dp_cluster_3/mult_120/CARRYB[5][5] ,
         \dp_cluster_3/mult_120/CARRYB[6][1] ,
         \dp_cluster_3/mult_120/CARRYB[6][5] ,
         \dp_cluster_3/mult_120/CARRYB[7][1] ,
         \dp_cluster_3/mult_120/CARRYB[7][5] ,
         \dp_cluster_2/sub_117_cf/carry[3] ,
         \dp_cluster_2/sub_117_cf/carry[4] ,
         \dp_cluster_2/sub_117_cf/carry[5] ,
         \dp_cluster_2/sub_117_cf/carry[6] ,
         \dp_cluster_2/sub_117_cf/carry[7] ,
         \dp_cluster_2/sub_117_cf/carry[8] ,
         \dp_cluster_2/sub_117_cf/carry[9] ,
         \dp_cluster_2/sub_117_cf/carry[10] ,
         \dp_cluster_2/sub_117_cf/carry[11] ,
         \dp_cluster_2/sub_117_cf/carry[12] ,
         \dp_cluster_2/sub_117_cf/carry[13] ,
         \dp_cluster_2/sub_117_cf/carry[14] , \dp_cluster_2/mult_117/A2[8] ,
         \dp_cluster_2/mult_117/A2[12] , \dp_cluster_2/mult_117/A1[11] ,
         \dp_cluster_2/mult_117/SUMB[1][5] ,
         \dp_cluster_2/mult_117/SUMB[2][5] ,
         \dp_cluster_2/mult_117/SUMB[3][5] ,
         \dp_cluster_2/mult_117/SUMB[4][1] ,
         \dp_cluster_2/mult_117/SUMB[4][5] ,
         \dp_cluster_2/mult_117/SUMB[5][1] ,
         \dp_cluster_2/mult_117/SUMB[5][5] ,
         \dp_cluster_2/mult_117/SUMB[6][1] ,
         \dp_cluster_2/mult_117/SUMB[6][5] ,
         \dp_cluster_2/mult_117/SUMB[7][1] ,
         \dp_cluster_2/mult_117/SUMB[7][5] ,
         \dp_cluster_2/mult_117/CARRYB[1][5] ,
         \dp_cluster_2/mult_117/CARRYB[2][5] ,
         \dp_cluster_2/mult_117/CARRYB[3][5] ,
         \dp_cluster_2/mult_117/CARRYB[4][1] ,
         \dp_cluster_2/mult_117/CARRYB[4][5] ,
         \dp_cluster_2/mult_117/CARRYB[5][1] ,
         \dp_cluster_2/mult_117/CARRYB[5][5] ,
         \dp_cluster_2/mult_117/CARRYB[6][1] ,
         \dp_cluster_2/mult_117/CARRYB[6][5] ,
         \dp_cluster_2/mult_117/CARRYB[7][1] ,
         \dp_cluster_2/mult_117/CARRYB[7][5] ,
         \dp_cluster_1/sub_114_cf/carry[3] ,
         \dp_cluster_1/sub_114_cf/carry[4] ,
         \dp_cluster_1/sub_114_cf/carry[5] ,
         \dp_cluster_1/sub_114_cf/carry[6] ,
         \dp_cluster_1/sub_114_cf/carry[7] ,
         \dp_cluster_1/sub_114_cf/carry[8] ,
         \dp_cluster_1/sub_114_cf/carry[9] ,
         \dp_cluster_1/sub_114_cf/carry[10] ,
         \dp_cluster_1/sub_114_cf/carry[11] ,
         \dp_cluster_1/sub_114_cf/carry[12] ,
         \dp_cluster_1/sub_114_cf/carry[13] ,
         \dp_cluster_1/sub_114_cf/carry[14] , \dp_cluster_1/mult_114/A2[8] ,
         \dp_cluster_1/mult_114/A2[12] , \dp_cluster_1/mult_114/A1[11] ,
         \dp_cluster_1/mult_114/SUMB[1][5] ,
         \dp_cluster_1/mult_114/SUMB[2][5] ,
         \dp_cluster_1/mult_114/SUMB[3][5] ,
         \dp_cluster_1/mult_114/SUMB[4][1] ,
         \dp_cluster_1/mult_114/SUMB[4][5] ,
         \dp_cluster_1/mult_114/SUMB[5][1] ,
         \dp_cluster_1/mult_114/SUMB[5][5] ,
         \dp_cluster_1/mult_114/SUMB[6][1] ,
         \dp_cluster_1/mult_114/SUMB[6][5] ,
         \dp_cluster_1/mult_114/SUMB[7][1] ,
         \dp_cluster_1/mult_114/SUMB[7][5] ,
         \dp_cluster_1/mult_114/CARRYB[1][5] ,
         \dp_cluster_1/mult_114/CARRYB[2][5] ,
         \dp_cluster_1/mult_114/CARRYB[3][5] ,
         \dp_cluster_1/mult_114/CARRYB[4][1] ,
         \dp_cluster_1/mult_114/CARRYB[4][5] ,
         \dp_cluster_1/mult_114/CARRYB[5][1] ,
         \dp_cluster_1/mult_114/CARRYB[5][5] ,
         \dp_cluster_1/mult_114/CARRYB[6][1] ,
         \dp_cluster_1/mult_114/CARRYB[6][5] ,
         \dp_cluster_1/mult_114/CARRYB[7][1] ,
         \dp_cluster_1/mult_114/CARRYB[7][5] , n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476;
  wire   [19:0] sig_out_local_count;
  wire   [31:0] sig_reg_storage;
  wire   [15:0] sig_cyclesTrame1;
  wire   [15:0] sig_cyclesTrame2;
  wire   [15:0] sig_cyclesTrame3;
  wire   [15:0] sig_cyclesTrame4;
  wire   [2:0] current_state;
  wire   [2:0] sig_state;
  wire   [19:0] \local_counter1/v_val ;
  wire   [19:2] \local_counter1/add_34/carry ;
  wire   [20:0] \dp_cluster_0/sub_0_root_sub_235_cf/carry ;
  wire   [19:1] \dp_cluster_0/add_1_root_sub_235_cf/carry ;
  wire   [19:1] \dp_cluster_0/add_3_root_sub_235_cf/carry ;
  wire   [20:0] \dp_cluster_0/sub_4_root_sub_235_cf/carry ;

  OAI222 U16 ( .A(n67), .B(n247), .C(sig_state[2]), .D(n70), .Q(n62) );
  OAI212 U22 ( .A(n77), .B(sig_state[1]), .C(n238), .Q(n74) );
  OAI222 U23 ( .A(n238), .B(n127), .C(n76), .D(n78), .Q(N79) );
  OAI212 U25 ( .A(sig_state[0]), .B(n77), .C(n80), .Q(n79) );
  OAI222 U26 ( .A(n80), .B(n110), .C(sig_state[0]), .D(n76), .Q(N78) );
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
  ADD32 \dp_cluster_4/mult_123/S3_2_5  ( .A(sig_reg_storage[26]), .B(
        \dp_cluster_4/mult_123/CARRYB[1][5] ), .CI(sig_reg_storage[25]), .CO(
        \dp_cluster_4/mult_123/CARRYB[2][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[2][5] ) );
  ADD32 \dp_cluster_4/mult_123/S3_3_5  ( .A(sig_reg_storage[27]), .B(
        \dp_cluster_4/mult_123/CARRYB[2][5] ), .CI(sig_reg_storage[26]), .CO(
        \dp_cluster_4/mult_123/CARRYB[3][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[3][5] ) );
  ADD32 \dp_cluster_4/mult_123/S3_4_5  ( .A(sig_reg_storage[28]), .B(
        \dp_cluster_4/mult_123/CARRYB[3][5] ), .CI(sig_reg_storage[27]), .CO(
        \dp_cluster_4/mult_123/CARRYB[4][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[4][5] ) );
  ADD32 \dp_cluster_4/mult_123/S3_5_5  ( .A(sig_reg_storage[29]), .B(
        \dp_cluster_4/mult_123/CARRYB[4][5] ), .CI(sig_reg_storage[28]), .CO(
        \dp_cluster_4/mult_123/CARRYB[5][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[5][5] ) );
  ADD32 \dp_cluster_4/mult_123/S2_5_1  ( .A(sig_reg_storage[29]), .B(
        \dp_cluster_4/mult_123/CARRYB[4][1] ), .CI(
        \dp_cluster_4/mult_123/SUMB[1][5] ), .CO(
        \dp_cluster_4/mult_123/CARRYB[5][1] ), .S(
        \dp_cluster_4/mult_123/SUMB[5][1] ) );
  ADD32 \dp_cluster_4/mult_123/S3_6_5  ( .A(sig_reg_storage[30]), .B(
        \dp_cluster_4/mult_123/CARRYB[5][5] ), .CI(sig_reg_storage[29]), .CO(
        \dp_cluster_4/mult_123/CARRYB[6][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[6][5] ) );
  ADD32 \dp_cluster_4/mult_123/S2_6_1  ( .A(sig_reg_storage[30]), .B(
        \dp_cluster_4/mult_123/CARRYB[5][1] ), .CI(
        \dp_cluster_4/mult_123/SUMB[2][5] ), .CO(
        \dp_cluster_4/mult_123/CARRYB[6][1] ), .S(
        \dp_cluster_4/mult_123/SUMB[6][1] ) );
  ADD32 \dp_cluster_4/mult_123/S5_5  ( .A(sig_reg_storage[31]), .B(
        \dp_cluster_4/mult_123/CARRYB[6][5] ), .CI(sig_reg_storage[30]), .CO(
        \dp_cluster_4/mult_123/CARRYB[7][5] ), .S(
        \dp_cluster_4/mult_123/SUMB[7][5] ) );
  ADD32 \dp_cluster_4/mult_123/S4_1  ( .A(sig_reg_storage[31]), .B(
        \dp_cluster_4/mult_123/CARRYB[6][1] ), .CI(
        \dp_cluster_4/mult_123/SUMB[3][5] ), .CO(
        \dp_cluster_4/mult_123/CARRYB[7][1] ), .S(
        \dp_cluster_4/mult_123/SUMB[7][1] ) );
  ADD32 \dp_cluster_3/mult_120/S3_2_5  ( .A(sig_reg_storage[18]), .B(
        \dp_cluster_3/mult_120/CARRYB[1][5] ), .CI(sig_reg_storage[17]), .CO(
        \dp_cluster_3/mult_120/CARRYB[2][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[2][5] ) );
  ADD32 \dp_cluster_3/mult_120/S3_3_5  ( .A(sig_reg_storage[19]), .B(
        \dp_cluster_3/mult_120/CARRYB[2][5] ), .CI(sig_reg_storage[18]), .CO(
        \dp_cluster_3/mult_120/CARRYB[3][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[3][5] ) );
  ADD32 \dp_cluster_3/mult_120/S3_4_5  ( .A(sig_reg_storage[20]), .B(
        \dp_cluster_3/mult_120/CARRYB[3][5] ), .CI(sig_reg_storage[19]), .CO(
        \dp_cluster_3/mult_120/CARRYB[4][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[4][5] ) );
  ADD32 \dp_cluster_3/mult_120/S3_5_5  ( .A(sig_reg_storage[21]), .B(
        \dp_cluster_3/mult_120/CARRYB[4][5] ), .CI(sig_reg_storage[20]), .CO(
        \dp_cluster_3/mult_120/CARRYB[5][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[5][5] ) );
  ADD32 \dp_cluster_3/mult_120/S2_5_1  ( .A(sig_reg_storage[21]), .B(
        \dp_cluster_3/mult_120/CARRYB[4][1] ), .CI(
        \dp_cluster_3/mult_120/SUMB[1][5] ), .CO(
        \dp_cluster_3/mult_120/CARRYB[5][1] ), .S(
        \dp_cluster_3/mult_120/SUMB[5][1] ) );
  ADD32 \dp_cluster_3/mult_120/S3_6_5  ( .A(sig_reg_storage[22]), .B(
        \dp_cluster_3/mult_120/CARRYB[5][5] ), .CI(sig_reg_storage[21]), .CO(
        \dp_cluster_3/mult_120/CARRYB[6][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[6][5] ) );
  ADD32 \dp_cluster_3/mult_120/S2_6_1  ( .A(sig_reg_storage[22]), .B(
        \dp_cluster_3/mult_120/CARRYB[5][1] ), .CI(
        \dp_cluster_3/mult_120/SUMB[2][5] ), .CO(
        \dp_cluster_3/mult_120/CARRYB[6][1] ), .S(
        \dp_cluster_3/mult_120/SUMB[6][1] ) );
  ADD32 \dp_cluster_3/mult_120/S5_5  ( .A(sig_reg_storage[23]), .B(
        \dp_cluster_3/mult_120/CARRYB[6][5] ), .CI(sig_reg_storage[22]), .CO(
        \dp_cluster_3/mult_120/CARRYB[7][5] ), .S(
        \dp_cluster_3/mult_120/SUMB[7][5] ) );
  ADD32 \dp_cluster_3/mult_120/S4_1  ( .A(sig_reg_storage[23]), .B(
        \dp_cluster_3/mult_120/CARRYB[6][1] ), .CI(
        \dp_cluster_3/mult_120/SUMB[3][5] ), .CO(
        \dp_cluster_3/mult_120/CARRYB[7][1] ), .S(
        \dp_cluster_3/mult_120/SUMB[7][1] ) );
  ADD32 \dp_cluster_2/mult_117/S3_2_5  ( .A(sig_reg_storage[10]), .B(
        \dp_cluster_2/mult_117/CARRYB[1][5] ), .CI(sig_reg_storage[9]), .CO(
        \dp_cluster_2/mult_117/CARRYB[2][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[2][5] ) );
  ADD32 \dp_cluster_2/mult_117/S3_3_5  ( .A(sig_reg_storage[11]), .B(
        \dp_cluster_2/mult_117/CARRYB[2][5] ), .CI(sig_reg_storage[10]), .CO(
        \dp_cluster_2/mult_117/CARRYB[3][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[3][5] ) );
  ADD32 \dp_cluster_2/mult_117/S3_4_5  ( .A(sig_reg_storage[12]), .B(
        \dp_cluster_2/mult_117/CARRYB[3][5] ), .CI(sig_reg_storage[11]), .CO(
        \dp_cluster_2/mult_117/CARRYB[4][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[4][5] ) );
  ADD32 \dp_cluster_2/mult_117/S3_5_5  ( .A(sig_reg_storage[13]), .B(
        \dp_cluster_2/mult_117/CARRYB[4][5] ), .CI(sig_reg_storage[12]), .CO(
        \dp_cluster_2/mult_117/CARRYB[5][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[5][5] ) );
  ADD32 \dp_cluster_2/mult_117/S2_5_1  ( .A(sig_reg_storage[13]), .B(
        \dp_cluster_2/mult_117/CARRYB[4][1] ), .CI(
        \dp_cluster_2/mult_117/SUMB[1][5] ), .CO(
        \dp_cluster_2/mult_117/CARRYB[5][1] ), .S(
        \dp_cluster_2/mult_117/SUMB[5][1] ) );
  ADD32 \dp_cluster_2/mult_117/S3_6_5  ( .A(sig_reg_storage[14]), .B(
        \dp_cluster_2/mult_117/CARRYB[5][5] ), .CI(sig_reg_storage[13]), .CO(
        \dp_cluster_2/mult_117/CARRYB[6][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[6][5] ) );
  ADD32 \dp_cluster_2/mult_117/S2_6_1  ( .A(sig_reg_storage[14]), .B(
        \dp_cluster_2/mult_117/CARRYB[5][1] ), .CI(
        \dp_cluster_2/mult_117/SUMB[2][5] ), .CO(
        \dp_cluster_2/mult_117/CARRYB[6][1] ), .S(
        \dp_cluster_2/mult_117/SUMB[6][1] ) );
  ADD32 \dp_cluster_2/mult_117/S5_5  ( .A(sig_reg_storage[15]), .B(
        \dp_cluster_2/mult_117/CARRYB[6][5] ), .CI(sig_reg_storage[14]), .CO(
        \dp_cluster_2/mult_117/CARRYB[7][5] ), .S(
        \dp_cluster_2/mult_117/SUMB[7][5] ) );
  ADD32 \dp_cluster_2/mult_117/S4_1  ( .A(sig_reg_storage[15]), .B(
        \dp_cluster_2/mult_117/CARRYB[6][1] ), .CI(
        \dp_cluster_2/mult_117/SUMB[3][5] ), .CO(
        \dp_cluster_2/mult_117/CARRYB[7][1] ), .S(
        \dp_cluster_2/mult_117/SUMB[7][1] ) );
  ADD32 \dp_cluster_1/mult_114/S3_2_5  ( .A(sig_reg_storage[2]), .B(
        \dp_cluster_1/mult_114/CARRYB[1][5] ), .CI(sig_reg_storage[1]), .CO(
        \dp_cluster_1/mult_114/CARRYB[2][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[2][5] ) );
  ADD32 \dp_cluster_1/mult_114/S3_3_5  ( .A(sig_reg_storage[3]), .B(
        \dp_cluster_1/mult_114/CARRYB[2][5] ), .CI(sig_reg_storage[2]), .CO(
        \dp_cluster_1/mult_114/CARRYB[3][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[3][5] ) );
  ADD32 \dp_cluster_1/mult_114/S3_4_5  ( .A(sig_reg_storage[4]), .B(
        \dp_cluster_1/mult_114/CARRYB[3][5] ), .CI(sig_reg_storage[3]), .CO(
        \dp_cluster_1/mult_114/CARRYB[4][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[4][5] ) );
  ADD32 \dp_cluster_1/mult_114/S3_5_5  ( .A(sig_reg_storage[5]), .B(
        \dp_cluster_1/mult_114/CARRYB[4][5] ), .CI(sig_reg_storage[4]), .CO(
        \dp_cluster_1/mult_114/CARRYB[5][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[5][5] ) );
  ADD32 \dp_cluster_1/mult_114/S2_5_1  ( .A(sig_reg_storage[5]), .B(
        \dp_cluster_1/mult_114/CARRYB[4][1] ), .CI(
        \dp_cluster_1/mult_114/SUMB[1][5] ), .CO(
        \dp_cluster_1/mult_114/CARRYB[5][1] ), .S(
        \dp_cluster_1/mult_114/SUMB[5][1] ) );
  ADD32 \dp_cluster_1/mult_114/S3_6_5  ( .A(sig_reg_storage[6]), .B(
        \dp_cluster_1/mult_114/CARRYB[5][5] ), .CI(sig_reg_storage[5]), .CO(
        \dp_cluster_1/mult_114/CARRYB[6][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[6][5] ) );
  ADD32 \dp_cluster_1/mult_114/S2_6_1  ( .A(sig_reg_storage[6]), .B(
        \dp_cluster_1/mult_114/CARRYB[5][1] ), .CI(
        \dp_cluster_1/mult_114/SUMB[2][5] ), .CO(
        \dp_cluster_1/mult_114/CARRYB[6][1] ), .S(
        \dp_cluster_1/mult_114/SUMB[6][1] ) );
  ADD32 \dp_cluster_1/mult_114/S5_5  ( .A(sig_reg_storage[7]), .B(
        \dp_cluster_1/mult_114/CARRYB[6][5] ), .CI(sig_reg_storage[6]), .CO(
        \dp_cluster_1/mult_114/CARRYB[7][5] ), .S(
        \dp_cluster_1/mult_114/SUMB[7][5] ) );
  ADD32 \dp_cluster_1/mult_114/S4_1  ( .A(sig_reg_storage[7]), .B(
        \dp_cluster_1/mult_114/CARRYB[6][1] ), .CI(
        \dp_cluster_1/mult_114/SUMB[3][5] ), .CO(
        \dp_cluster_1/mult_114/CARRYB[7][1] ), .S(
        \dp_cluster_1/mult_114/SUMB[7][1] ) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_2  ( .A(\dp_cluster_0/N295 ), 
        .B(n285), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [2]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [3]), .S(N180) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_3  ( .A(\dp_cluster_0/N294 ), 
        .B(n284), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [3]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [4]), .S(N181) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_4  ( .A(\dp_cluster_0/N293 ), 
        .B(n283), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [4]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [5]), .S(N182) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_5  ( .A(\dp_cluster_0/N292 ), 
        .B(n282), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [5]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [6]), .S(N183) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_6  ( .A(\dp_cluster_0/N291 ), 
        .B(n280), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [6]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [7]), .S(N184) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_7  ( .A(\dp_cluster_0/N290 ), 
        .B(n279), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [7]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [8]), .S(N185) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_8  ( .A(\dp_cluster_0/N289 ), 
        .B(n277), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [8]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [9]), .S(N186) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_9  ( .A(\dp_cluster_0/N288 ), 
        .B(n276), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [9]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [10]), .S(N187) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_10  ( .A(\dp_cluster_0/N287 ), 
        .B(n275), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [10]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [11]), .S(N188) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_11  ( .A(\dp_cluster_0/N286 ), 
        .B(n273), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [11]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [12]), .S(N189) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_12  ( .A(\dp_cluster_0/N285 ), 
        .B(n272), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [12]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [13]), .S(N190) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_13  ( .A(\dp_cluster_0/N284 ), 
        .B(n271), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [13]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [14]), .S(N191) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_14  ( .A(\dp_cluster_0/N283 ), 
        .B(n270), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [14]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [15]), .S(N192) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_15  ( .A(\dp_cluster_0/N282 ), 
        .B(n269), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [15]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [16]), .S(N193) );
  ADD32 \dp_cluster_0/sub_0_root_sub_235_cf/U2_16  ( .A(\dp_cluster_0/N281 ), 
        .B(n268), .CI(\dp_cluster_0/sub_0_root_sub_235_cf/carry [16]), .CO(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), .S(N194) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_2  ( .A(\dp_cluster_0/N18 ), 
        .B(n265), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [2]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [3]), .S(\dp_cluster_0/N295 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_3  ( .A(\dp_cluster_0/N19 ), 
        .B(n264), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [3]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [4]), .S(\dp_cluster_0/N294 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_4  ( .A(\dp_cluster_0/N20 ), 
        .B(n263), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [4]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [5]), .S(\dp_cluster_0/N293 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_5  ( .A(\dp_cluster_0/N21 ), 
        .B(n262), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [5]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [6]), .S(\dp_cluster_0/N292 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_6  ( .A(\dp_cluster_0/N22 ), 
        .B(n260), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [6]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [7]), .S(\dp_cluster_0/N291 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_7  ( .A(\dp_cluster_0/N23 ), 
        .B(n259), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [7]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [8]), .S(\dp_cluster_0/N290 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_8  ( .A(\dp_cluster_0/N24 ), 
        .B(n257), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [8]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [9]), .S(\dp_cluster_0/N289 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_9  ( .A(\dp_cluster_0/N25 ), 
        .B(n256), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [9]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [10]), .S(
        \dp_cluster_0/N288 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_10  ( .A(\dp_cluster_0/N26 ), 
        .B(n255), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [10]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [11]), .S(
        \dp_cluster_0/N287 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_11  ( .A(\dp_cluster_0/N27 ), 
        .B(n253), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [11]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [12]), .S(
        \dp_cluster_0/N286 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_12  ( .A(\dp_cluster_0/N28 ), 
        .B(n252), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [12]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [13]), .S(
        \dp_cluster_0/N285 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_13  ( .A(\dp_cluster_0/N29 ), 
        .B(n251), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [13]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [14]), .S(
        \dp_cluster_0/N284 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_14  ( .A(\dp_cluster_0/N30 ), 
        .B(n250), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [14]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [15]), .S(
        \dp_cluster_0/N283 ) );
  ADD32 \dp_cluster_0/add_1_root_sub_235_cf/U1_15  ( .A(\dp_cluster_0/N31 ), 
        .B(n138), .CI(\dp_cluster_0/add_1_root_sub_235_cf/carry [15]), .CO(
        \dp_cluster_0/add_1_root_sub_235_cf/carry [16]), .S(
        \dp_cluster_0/N282 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_2  ( .A(sig_cyclesTrame2[2]), 
        .B(sig_cyclesTrame3[2]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [2]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [3]), .S(\dp_cluster_0/N38 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_3  ( .A(sig_cyclesTrame2[3]), 
        .B(sig_cyclesTrame3[3]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [3]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [4]), .S(\dp_cluster_0/N39 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_4  ( .A(sig_cyclesTrame2[4]), 
        .B(sig_cyclesTrame3[4]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [4]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [5]), .S(\dp_cluster_0/N40 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_5  ( .A(sig_cyclesTrame2[5]), 
        .B(sig_cyclesTrame3[5]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [5]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [6]), .S(\dp_cluster_0/N41 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_6  ( .A(sig_cyclesTrame2[6]), 
        .B(sig_cyclesTrame3[6]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [6]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [7]), .S(\dp_cluster_0/N42 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_7  ( .A(sig_cyclesTrame2[7]), 
        .B(sig_cyclesTrame3[7]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [7]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [8]), .S(\dp_cluster_0/N43 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_8  ( .A(sig_cyclesTrame2[8]), 
        .B(sig_cyclesTrame3[8]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [8]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [9]), .S(\dp_cluster_0/N44 )
         );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_9  ( .A(sig_cyclesTrame2[9]), 
        .B(sig_cyclesTrame3[9]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [9]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [10]), .S(\dp_cluster_0/N45 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_10  ( .A(sig_cyclesTrame2[10]), 
        .B(sig_cyclesTrame3[10]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [10]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [11]), .S(\dp_cluster_0/N46 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_11  ( .A(sig_cyclesTrame2[11]), 
        .B(sig_cyclesTrame3[11]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [11]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [12]), .S(\dp_cluster_0/N47 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_12  ( .A(sig_cyclesTrame2[12]), 
        .B(sig_cyclesTrame3[12]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [12]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [13]), .S(\dp_cluster_0/N48 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_13  ( .A(sig_cyclesTrame2[13]), 
        .B(sig_cyclesTrame3[13]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [13]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [14]), .S(\dp_cluster_0/N49 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_14  ( .A(sig_cyclesTrame2[14]), 
        .B(sig_cyclesTrame3[14]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [14]), .CO(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [15]), .S(\dp_cluster_0/N50 ) );
  ADD32 \dp_cluster_0/add_3_root_sub_235_cf/U1_15  ( .A(sig_cyclesTrame2[15]), 
        .B(sig_cyclesTrame3[15]), .CI(
        \dp_cluster_0/add_3_root_sub_235_cf/carry [15]), .CO(
        \dp_cluster_0/N52 ), .S(\dp_cluster_0/N51 ) );
  DF3 \current_state_reg[0]  ( .D(N81), .C(i_clk), .Q(current_state[0]), .QN(
        n131) );
  DF3 \current_state_reg[1]  ( .D(N82), .C(i_clk), .Q(current_state[1]), .QN(
        n130) );
  DF3 \current_state_reg[2]  ( .D(n241), .C(i_clk), .Q(current_state[2]) );
  DF3 sig_out_ppm_reg ( .D(n240), .C(i_clk), .Q(o_ppm) );
  DF3 \local_counter1/o_count_reg[0]  ( .D(\local_counter1/N46 ), .C(i_clk), 
        .Q(sig_out_local_count[0]), .QN(n111) );
  DF3 \local_counter1/o_count_reg[1]  ( .D(\local_counter1/N47 ), .C(i_clk), 
        .Q(sig_out_local_count[1]), .QN(n129) );
  DF3 \local_counter1/o_count_reg[2]  ( .D(\local_counter1/N48 ), .C(i_clk), 
        .Q(sig_out_local_count[2]) );
  DF3 \local_counter1/o_count_reg[3]  ( .D(\local_counter1/N49 ), .C(i_clk), 
        .Q(sig_out_local_count[3]) );
  DF3 \local_counter1/o_count_reg[4]  ( .D(\local_counter1/N50 ), .C(i_clk), 
        .Q(sig_out_local_count[4]) );
  DF3 \local_counter1/o_count_reg[5]  ( .D(\local_counter1/N51 ), .C(i_clk), 
        .Q(sig_out_local_count[5]) );
  DF3 \local_counter1/o_count_reg[6]  ( .D(\local_counter1/N52 ), .C(i_clk), 
        .Q(sig_out_local_count[6]) );
  DF3 \local_counter1/o_count_reg[7]  ( .D(\local_counter1/N53 ), .C(i_clk), 
        .Q(sig_out_local_count[7]) );
  DF3 \local_counter1/o_count_reg[8]  ( .D(\local_counter1/N54 ), .C(i_clk), 
        .Q(sig_out_local_count[8]) );
  DF3 \local_counter1/o_count_reg[9]  ( .D(\local_counter1/N55 ), .C(i_clk), 
        .Q(sig_out_local_count[9]) );
  DF3 \local_counter1/o_count_reg[10]  ( .D(\local_counter1/N56 ), .C(i_clk), 
        .Q(sig_out_local_count[10]) );
  DF3 \local_counter1/o_count_reg[11]  ( .D(\local_counter1/N57 ), .C(i_clk), 
        .Q(sig_out_local_count[11]) );
  DF3 \local_counter1/o_count_reg[12]  ( .D(\local_counter1/N58 ), .C(i_clk), 
        .Q(sig_out_local_count[12]) );
  DF3 \local_counter1/o_count_reg[13]  ( .D(\local_counter1/N59 ), .C(i_clk), 
        .Q(sig_out_local_count[13]) );
  DF3 \local_counter1/o_count_reg[14]  ( .D(\local_counter1/N60 ), .C(i_clk), 
        .Q(sig_out_local_count[14]) );
  DF3 \local_counter1/o_count_reg[15]  ( .D(\local_counter1/N61 ), .C(i_clk), 
        .Q(sig_out_local_count[15]) );
  DF3 \local_counter1/o_count_reg[16]  ( .D(\local_counter1/N62 ), .C(i_clk), 
        .Q(sig_out_local_count[16]), .QN(n126) );
  DF3 \local_counter1/o_count_reg[17]  ( .D(\local_counter1/N63 ), .C(i_clk), 
        .Q(sig_out_local_count[17]) );
  DF3 \local_counter1/o_count_reg[18]  ( .D(\local_counter1/N64 ), .C(i_clk), 
        .Q(sig_out_local_count[18]) );
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
  DFE1 \sig_state_reg[2]  ( .D(n237), .E(N204), .C(i_clk), .Q(sig_state[2]) );
  DFE1 \sig_state_reg[1]  ( .D(N79), .E(N204), .C(i_clk), .Q(sig_state[1]), 
        .QN(n127) );
  DFE1 \sig_state_reg[0]  ( .D(N78), .E(N204), .C(i_clk), .Q(sig_state[0]), 
        .QN(n110) );
  DFE1 \sig_reg_storage_reg[30]  ( .D(i_reg[30]), .E(n236), .C(i_clk), .Q(
        sig_reg_storage[30]) );
  DFE1 \sig_reg_storage_reg[29]  ( .D(i_reg[29]), .E(n236), .C(i_clk), .Q(
        sig_reg_storage[29]) );
  DFE1 \sig_reg_storage_reg[22]  ( .D(i_reg[22]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[22]) );
  DFE1 \sig_reg_storage_reg[14]  ( .D(i_reg[14]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[14]) );
  DFE1 \sig_reg_storage_reg[6]  ( .D(i_reg[6]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[6]) );
  DFE1 \sig_reg_storage_reg[21]  ( .D(i_reg[21]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[21]) );
  DFE1 \sig_reg_storage_reg[13]  ( .D(i_reg[13]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[13]) );
  DFE1 \sig_reg_storage_reg[5]  ( .D(i_reg[5]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[5]) );
  DFE1 \sig_reg_storage_reg[28]  ( .D(i_reg[28]), .E(n236), .C(i_clk), .Q(
        sig_reg_storage[28]), .QN(n114) );
  DFE1 \sig_reg_storage_reg[20]  ( .D(i_reg[20]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[20]), .QN(n106) );
  DFE1 \sig_reg_storage_reg[12]  ( .D(i_reg[12]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[12]), .QN(n107) );
  DFE1 \sig_reg_storage_reg[27]  ( .D(i_reg[27]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[27]) );
  DFE1 \sig_reg_storage_reg[26]  ( .D(i_reg[26]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[26]) );
  DFE1 \sig_reg_storage_reg[19]  ( .D(i_reg[19]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[19]) );
  DFE1 \sig_reg_storage_reg[18]  ( .D(i_reg[18]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[18]) );
  DFE1 \sig_reg_storage_reg[11]  ( .D(i_reg[11]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[11]) );
  DFE1 \sig_reg_storage_reg[10]  ( .D(i_reg[10]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[10]) );
  DFE1 \sig_reg_storage_reg[3]  ( .D(i_reg[3]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[3]) );
  DFE1 \sig_reg_storage_reg[4]  ( .D(i_reg[4]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[4]), .QN(n112) );
  DFE1 \sig_reg_storage_reg[2]  ( .D(i_reg[2]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[2]) );
  DFE1 \sig_reg_storage_reg[15]  ( .D(i_reg[15]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[15]), .QN(n125) );
  DFE1 \sig_reg_storage_reg[31]  ( .D(i_reg[31]), .E(n236), .C(i_clk), .Q(
        sig_reg_storage[31]), .QN(n124) );
  DFE1 \sig_reg_storage_reg[23]  ( .D(i_reg[23]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[23]), .QN(n123) );
  DFE1 \sig_reg_storage_reg[7]  ( .D(i_reg[7]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[7]), .QN(n122) );
  DFE1 \sig_reg_storage_reg[9]  ( .D(i_reg[9]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[9]), .QN(n121) );
  DFE1 \sig_reg_storage_reg[17]  ( .D(i_reg[17]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[17]), .QN(n120) );
  DFE1 \sig_reg_storage_reg[25]  ( .D(i_reg[25]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[25]), .QN(n119) );
  DFE1 \sig_reg_storage_reg[8]  ( .D(i_reg[8]), .E(n233), .C(i_clk), .Q(
        sig_reg_storage[8]), .QN(n118) );
  DFE1 \sig_reg_storage_reg[16]  ( .D(i_reg[16]), .E(n234), .C(i_clk), .Q(
        sig_reg_storage[16]), .QN(n117) );
  DFE1 \sig_reg_storage_reg[1]  ( .D(i_reg[1]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[1]), .QN(n113) );
  DFE1 \sig_reg_storage_reg[24]  ( .D(i_reg[24]), .E(n235), .C(i_clk), .Q(
        sig_reg_storage[24]), .QN(n128) );
  DFE1 \sig_reg_storage_reg[0]  ( .D(i_reg[0]), .E(n232), .C(i_clk), .Q(
        sig_reg_storage[0]), .QN(n115) );
  NOR21 U87 ( .A(n230), .B(n133), .Q(\local_counter1/N65 ) );
  MUX22 U88 ( .A(\dp_cluster_1/mult_114/SUMB[5][5] ), .B(n303), .S(
        \dp_cluster_1/mult_114/A2[8] ), .Q(n105) );
  MUX22 U89 ( .A(\dp_cluster_3/mult_120/SUMB[5][5] ), .B(n281), .S(
        \dp_cluster_3/mult_120/A2[8] ), .Q(n108) );
  MUX22 U90 ( .A(\dp_cluster_2/mult_117/SUMB[5][5] ), .B(n289), .S(
        \dp_cluster_2/mult_117/A2[8] ), .Q(n109) );
  MUX22 U91 ( .A(\dp_cluster_4/mult_123/SUMB[5][5] ), .B(n261), .S(
        \dp_cluster_4/mult_123/A2[8] ), .Q(n116) );
  XNR21 U92 ( .A(n291), .B(\dp_cluster_0/add_1_root_sub_235_cf/carry [18]), 
        .Q(\dp_cluster_0/N279 ) );
  XNR21 U93 ( .A(\dp_cluster_0/N279 ), .B(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [18]), .Q(N196) );
  INV3 U94 ( .A(\dp_cluster_0/N48 ), .Q(n272) );
  NOR21 U95 ( .A(\dp_cluster_0/sub_0_root_sub_235_cf/carry [18]), .B(
        \dp_cluster_0/N279 ), .Q(n159) );
  INV3 U96 ( .A(n162), .Q(\dp_cluster_0/add_1_root_sub_235_cf/carry [19]) );
  NOR21 U97 ( .A(\dp_cluster_0/add_1_root_sub_235_cf/carry [18]), .B(n291), 
        .Q(n162) );
  NOR21 U98 ( .A(sig_cyclesTrame1[12]), .B(n225), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [13]) );
  INV3 U99 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [12]), .Q(n225) );
  XNR21 U100 ( .A(n291), .B(\dp_cluster_0/add_1_root_sub_235_cf/carry [17]), 
        .Q(\dp_cluster_0/N280 ) );
  INV3 U101 ( .A(sig_cyclesTrame4[12]), .Q(n252) );
  XOR21 U102 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [12]), .B(n294), 
        .Q(\dp_cluster_0/N28 ) );
  INV3 U103 ( .A(\dp_cluster_0/N45 ), .Q(n276) );
  INV3 U104 ( .A(\dp_cluster_0/N46 ), .Q(n275) );
  INV3 U105 ( .A(\dp_cluster_0/N47 ), .Q(n273) );
  INV3 U106 ( .A(\dp_cluster_0/N49 ), .Q(n271) );
  INV3 U107 ( .A(sig_cyclesTrame1[12]), .Q(n294) );
  INV3 U108 ( .A(n158), .Q(\dp_cluster_0/sub_0_root_sub_235_cf/carry [18]) );
  NOR21 U109 ( .A(\dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), .B(
        \dp_cluster_0/N280 ), .Q(n158) );
  INV3 U110 ( .A(n164), .Q(\dp_cluster_0/add_1_root_sub_235_cf/carry [18]) );
  NOR21 U111 ( .A(\dp_cluster_0/add_1_root_sub_235_cf/carry [17]), .B(n291), 
        .Q(n164) );
  NOR21 U112 ( .A(sig_cyclesTrame1[13]), .B(n226), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [14]) );
  INV3 U113 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [13]), .Q(n226) );
  NOR21 U114 ( .A(sig_cyclesTrame1[11]), .B(n224), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [12]) );
  INV3 U115 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [11]), .Q(n224) );
  NOR21 U116 ( .A(sig_cyclesTrame1[10]), .B(n157), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [11]) );
  INV3 U117 ( .A(n157), .Q(\dp_cluster_0/sub_4_root_sub_235_cf/carry [10]) );
  NOR21 U118 ( .A(n298), .B(\dp_cluster_0/sub_4_root_sub_235_cf/carry [9]), 
        .Q(n157) );
  INV3 U119 ( .A(\dp_cluster_0/N35 ), .Q(n291) );
  XOR21 U120 ( .A(\dp_cluster_1/sub_114_cf/carry[12] ), .B(\dp_cluster_1/N265 ), .Q(sig_cyclesTrame1[12]) );
  INV3 U121 ( .A(\dp_cluster_0/N52 ), .Q(n268) );
  XNR21 U122 ( .A(n291), .B(\dp_cluster_0/add_1_root_sub_235_cf/carry [16]), 
        .Q(\dp_cluster_0/N281 ) );
  INV3 U123 ( .A(sig_cyclesTrame4[10]), .Q(n255) );
  XOR21 U124 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [10]), .B(n297), 
        .Q(\dp_cluster_0/N26 ) );
  INV3 U125 ( .A(sig_cyclesTrame4[9]), .Q(n256) );
  XNR21 U126 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [9]), .B(n298), 
        .Q(\dp_cluster_0/N25 ) );
  INV3 U127 ( .A(sig_cyclesTrame4[13]), .Q(n251) );
  XOR21 U128 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [13]), .B(n293), 
        .Q(\dp_cluster_0/N29 ) );
  INV3 U129 ( .A(sig_cyclesTrame4[11]), .Q(n253) );
  XOR21 U130 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [11]), .B(n295), 
        .Q(\dp_cluster_0/N27 ) );
  INV3 U131 ( .A(\dp_cluster_0/N41 ), .Q(n282) );
  INV3 U132 ( .A(\dp_cluster_0/N42 ), .Q(n280) );
  INV3 U133 ( .A(\dp_cluster_0/N43 ), .Q(n279) );
  INV3 U134 ( .A(\dp_cluster_0/N44 ), .Q(n277) );
  INV3 U135 ( .A(\dp_cluster_0/N50 ), .Q(n270) );
  INV3 U136 ( .A(\dp_cluster_0/N51 ), .Q(n269) );
  INV3 U137 ( .A(sig_cyclesTrame1[11]), .Q(n295) );
  INV3 U138 ( .A(n163), .Q(\dp_cluster_0/add_1_root_sub_235_cf/carry [17]) );
  NOR21 U139 ( .A(\dp_cluster_0/add_1_root_sub_235_cf/carry [16]), .B(n291), 
        .Q(n163) );
  XOR21 U140 ( .A(\dp_cluster_2/sub_117_cf/carry[12] ), .B(\dp_cluster_2/N250 ), .Q(sig_cyclesTrame2[12]) );
  XOR21 U141 ( .A(\dp_cluster_3/sub_120_cf/carry[12] ), .B(\dp_cluster_3/N235 ), .Q(sig_cyclesTrame3[12]) );
  XOR21 U142 ( .A(\dp_cluster_4/sub_123_cf/carry[12] ), .B(\dp_cluster_4/N220 ), .Q(sig_cyclesTrame4[12]) );
  NOR21 U143 ( .A(sig_cyclesTrame1[5]), .B(n223), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [6]) );
  INV3 U144 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [5]), .Q(n223) );
  NOR21 U145 ( .A(sig_cyclesTrame1[8]), .B(n156), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [9]) );
  NOR21 U146 ( .A(n186), .B(n187), .Q(\dp_cluster_3/sub_120_cf/carry[13] ) );
  INV3 U147 ( .A(\dp_cluster_3/sub_120_cf/carry[12] ), .Q(n186) );
  INV3 U148 ( .A(\dp_cluster_3/N235 ), .Q(n187) );
  NOR21 U149 ( .A(n200), .B(n201), .Q(\dp_cluster_2/sub_117_cf/carry[13] ) );
  INV3 U150 ( .A(\dp_cluster_2/sub_117_cf/carry[12] ), .Q(n200) );
  INV3 U151 ( .A(\dp_cluster_2/N250 ), .Q(n201) );
  NOR21 U152 ( .A(sig_cyclesTrame1[14]), .B(n227), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [15]) );
  INV3 U153 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [14]), .Q(n227) );
  INV3 U154 ( .A(sig_cyclesTrame1[9]), .Q(n298) );
  INV3 U155 ( .A(sig_cyclesTrame1[13]), .Q(n293) );
  INV3 U156 ( .A(sig_cyclesTrame1[10]), .Q(n297) );
  NOR21 U157 ( .A(n214), .B(n215), .Q(\dp_cluster_1/sub_114_cf/carry[13] ) );
  INV3 U158 ( .A(\dp_cluster_1/sub_114_cf/carry[12] ), .Q(n214) );
  INV3 U159 ( .A(\dp_cluster_1/N265 ), .Q(n215) );
  NOR21 U160 ( .A(n172), .B(n173), .Q(\dp_cluster_4/sub_123_cf/carry[13] ) );
  INV3 U161 ( .A(\dp_cluster_4/sub_123_cf/carry[12] ), .Q(n172) );
  INV3 U162 ( .A(\dp_cluster_4/N220 ), .Q(n173) );
  INV3 U163 ( .A(n155), .Q(\dp_cluster_0/sub_4_root_sub_235_cf/carry [7]) );
  NOR21 U164 ( .A(n302), .B(\dp_cluster_0/sub_4_root_sub_235_cf/carry [6]), 
        .Q(n155) );
  INV3 U165 ( .A(n156), .Q(\dp_cluster_0/sub_4_root_sub_235_cf/carry [8]) );
  NOR21 U166 ( .A(n301), .B(\dp_cluster_0/sub_4_root_sub_235_cf/carry [7]), 
        .Q(n156) );
  NOR21 U167 ( .A(sig_cyclesTrame1[15]), .B(n228), .Q(\dp_cluster_0/N35 ) );
  INV3 U168 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [15]), .Q(n228) );
  XOR21 U169 ( .A(\dp_cluster_1/sub_114_cf/carry[11] ), .B(\dp_cluster_1/N266 ), .Q(sig_cyclesTrame1[11]) );
  XOR21 U170 ( .A(n458), .B(n300), .Q(\dp_cluster_1/N265 ) );
  XOR21 U171 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [15]), .B(n153), 
        .Q(\dp_cluster_0/N31 ) );
  INV3 U172 ( .A(sig_cyclesTrame4[6]), .Q(n260) );
  XNR21 U173 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [6]), .B(n302), 
        .Q(\dp_cluster_0/N22 ) );
  INV3 U174 ( .A(sig_cyclesTrame4[14]), .Q(n250) );
  XOR21 U175 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [14]), .B(n292), 
        .Q(\dp_cluster_0/N30 ) );
  INV3 U176 ( .A(sig_cyclesTrame4[5]), .Q(n262) );
  XOR21 U177 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [5]), .B(n304), 
        .Q(\dp_cluster_0/N21 ) );
  INV3 U178 ( .A(sig_cyclesTrame4[7]), .Q(n259) );
  XNR21 U179 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [7]), .B(n301), 
        .Q(\dp_cluster_0/N23 ) );
  INV3 U180 ( .A(sig_cyclesTrame4[8]), .Q(n257) );
  XOR21 U181 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [8]), .B(n299), 
        .Q(\dp_cluster_0/N24 ) );
  INV3 U182 ( .A(\dp_cluster_0/N39 ), .Q(n284) );
  INV3 U183 ( .A(\dp_cluster_0/N40 ), .Q(n283) );
  XOR21 U184 ( .A(\dp_cluster_2/sub_117_cf/carry[13] ), .B(\dp_cluster_2/N249 ), .Q(sig_cyclesTrame2[13]) );
  XOR21 U185 ( .A(\dp_cluster_2/sub_117_cf/carry[11] ), .B(\dp_cluster_2/N251 ), .Q(sig_cyclesTrame2[11]) );
  XOR21 U186 ( .A(\dp_cluster_3/sub_120_cf/carry[13] ), .B(\dp_cluster_3/N234 ), .Q(sig_cyclesTrame3[13]) );
  XOR21 U187 ( .A(\dp_cluster_3/sub_120_cf/carry[11] ), .B(\dp_cluster_3/N236 ), .Q(sig_cyclesTrame3[11]) );
  XNR21 U188 ( .A(\dp_cluster_3/sub_120_cf/carry[10] ), .B(n108), .Q(
        sig_cyclesTrame3[10]) );
  XOR21 U189 ( .A(\dp_cluster_1/sub_114_cf/carry[9] ), .B(\dp_cluster_1/N268 ), 
        .Q(sig_cyclesTrame1[9]) );
  XOR21 U190 ( .A(\dp_cluster_4/sub_123_cf/carry[9] ), .B(\dp_cluster_4/N223 ), 
        .Q(sig_cyclesTrame4[9]) );
  XOR21 U191 ( .A(\dp_cluster_1/sub_114_cf/carry[13] ), .B(\dp_cluster_1/N264 ), .Q(sig_cyclesTrame1[13]) );
  XOR21 U192 ( .A(\dp_cluster_4/sub_123_cf/carry[13] ), .B(\dp_cluster_4/N219 ), .Q(sig_cyclesTrame4[13]) );
  XOR21 U193 ( .A(\dp_cluster_4/sub_123_cf/carry[11] ), .B(\dp_cluster_4/N221 ), .Q(sig_cyclesTrame4[11]) );
  XOR21 U194 ( .A(n476), .B(n258), .Q(\dp_cluster_4/N220 ) );
  XOR21 U195 ( .A(n470), .B(n278), .Q(\dp_cluster_3/N235 ) );
  XOR21 U196 ( .A(n464), .B(n288), .Q(\dp_cluster_2/N250 ) );
  XNR21 U197 ( .A(\dp_cluster_1/sub_114_cf/carry[10] ), .B(n105), .Q(
        sig_cyclesTrame1[10]) );
  XNR21 U198 ( .A(\dp_cluster_4/sub_123_cf/carry[10] ), .B(n116), .Q(
        sig_cyclesTrame4[10]) );
  NOR21 U199 ( .A(n216), .B(n217), .Q(\dp_cluster_1/sub_114_cf/carry[14] ) );
  INV3 U200 ( .A(\dp_cluster_1/N264 ), .Q(n217) );
  INV3 U201 ( .A(\dp_cluster_1/sub_114_cf/carry[13] ), .Q(n216) );
  NOR21 U202 ( .A(n137), .B(n171), .Q(\dp_cluster_4/sub_123_cf/carry[12] ) );
  INV3 U203 ( .A(\dp_cluster_4/N221 ), .Q(n171) );
  NOR21 U204 ( .A(n142), .B(n185), .Q(\dp_cluster_3/sub_120_cf/carry[12] ) );
  INV3 U205 ( .A(\dp_cluster_3/N236 ), .Q(n185) );
  NOR21 U206 ( .A(n147), .B(n199), .Q(\dp_cluster_2/sub_117_cf/carry[12] ) );
  INV3 U207 ( .A(\dp_cluster_2/N251 ), .Q(n199) );
  NOR21 U208 ( .A(sig_cyclesTrame1[4]), .B(n222), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [5]) );
  INV3 U209 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [4]), .Q(n222) );
  INV3 U210 ( .A(sig_cyclesTrame1[7]), .Q(n301) );
  INV3 U211 ( .A(sig_cyclesTrame1[8]), .Q(n299) );
  INV3 U212 ( .A(sig_cyclesTrame1[5]), .Q(n304) );
  INV3 U213 ( .A(sig_cyclesTrame1[6]), .Q(n302) );
  INV3 U214 ( .A(sig_cyclesTrame1[14]), .Q(n292) );
  NOR21 U215 ( .A(n211), .B(n212), .Q(\dp_cluster_1/sub_114_cf/carry[10] ) );
  INV3 U216 ( .A(\dp_cluster_1/sub_114_cf/carry[9] ), .Q(n211) );
  INV3 U217 ( .A(\dp_cluster_1/N268 ), .Q(n212) );
  NOR21 U218 ( .A(n152), .B(n213), .Q(\dp_cluster_1/sub_114_cf/carry[12] ) );
  INV3 U219 ( .A(\dp_cluster_1/N266 ), .Q(n213) );
  INV3 U220 ( .A(n152), .Q(\dp_cluster_1/sub_114_cf/carry[11] ) );
  NOR21 U221 ( .A(n105), .B(\dp_cluster_1/sub_114_cf/carry[10] ), .Q(n152) );
  XOR21 U222 ( .A(\dp_cluster_2/sub_117_cf/carry[9] ), .B(\dp_cluster_2/N253 ), 
        .Q(sig_cyclesTrame2[9]) );
  XOR21 U223 ( .A(\dp_cluster_3/sub_120_cf/carry[9] ), .B(\dp_cluster_3/N238 ), 
        .Q(sig_cyclesTrame3[9]) );
  XNR21 U224 ( .A(\dp_cluster_2/sub_117_cf/carry[10] ), .B(n109), .Q(
        sig_cyclesTrame2[10]) );
  NOR21 U225 ( .A(n183), .B(n184), .Q(\dp_cluster_3/sub_120_cf/carry[10] ) );
  INV3 U226 ( .A(\dp_cluster_3/sub_120_cf/carry[9] ), .Q(n183) );
  INV3 U227 ( .A(\dp_cluster_3/N238 ), .Q(n184) );
  NOR21 U228 ( .A(n197), .B(n198), .Q(\dp_cluster_2/sub_117_cf/carry[10] ) );
  INV3 U229 ( .A(\dp_cluster_2/sub_117_cf/carry[9] ), .Q(n197) );
  INV3 U230 ( .A(\dp_cluster_2/N253 ), .Q(n198) );
  NOR21 U231 ( .A(n174), .B(n175), .Q(\dp_cluster_4/sub_123_cf/carry[14] ) );
  INV3 U232 ( .A(\dp_cluster_4/N219 ), .Q(n175) );
  INV3 U233 ( .A(\dp_cluster_4/sub_123_cf/carry[13] ), .Q(n174) );
  NOR21 U234 ( .A(n188), .B(n189), .Q(\dp_cluster_3/sub_120_cf/carry[14] ) );
  INV3 U235 ( .A(\dp_cluster_3/N234 ), .Q(n189) );
  INV3 U236 ( .A(\dp_cluster_3/sub_120_cf/carry[13] ), .Q(n188) );
  NOR21 U237 ( .A(n202), .B(n203), .Q(\dp_cluster_2/sub_117_cf/carry[14] ) );
  INV3 U238 ( .A(\dp_cluster_2/N249 ), .Q(n203) );
  INV3 U239 ( .A(\dp_cluster_2/sub_117_cf/carry[13] ), .Q(n202) );
  INV3 U240 ( .A(n137), .Q(\dp_cluster_4/sub_123_cf/carry[11] ) );
  NOR21 U241 ( .A(n116), .B(\dp_cluster_4/sub_123_cf/carry[10] ), .Q(n137) );
  INV3 U242 ( .A(n142), .Q(\dp_cluster_3/sub_120_cf/carry[11] ) );
  NOR21 U243 ( .A(n108), .B(\dp_cluster_3/sub_120_cf/carry[10] ), .Q(n142) );
  INV3 U244 ( .A(n147), .Q(\dp_cluster_2/sub_117_cf/carry[11] ) );
  NOR21 U245 ( .A(n109), .B(\dp_cluster_2/sub_117_cf/carry[10] ), .Q(n147) );
  NOR21 U246 ( .A(n169), .B(n170), .Q(\dp_cluster_4/sub_123_cf/carry[10] ) );
  INV3 U247 ( .A(\dp_cluster_4/N223 ), .Q(n170) );
  INV3 U248 ( .A(\dp_cluster_4/sub_123_cf/carry[9] ), .Q(n169) );
  BUF2 U249 ( .A(n244), .Q(n232) );
  BUF2 U250 ( .A(n244), .Q(n233) );
  BUF2 U251 ( .A(n244), .Q(n234) );
  BUF2 U252 ( .A(n244), .Q(n235) );
  BUF2 U253 ( .A(n244), .Q(n236) );
  NOR40 U254 ( .A(n249), .B(n452), .C(n451), .D(n450), .Q(N198) );
  NAND31 U255 ( .A(n447), .B(n446), .C(n445), .Q(n451) );
  NAND22 U256 ( .A(n449), .B(n448), .Q(n450) );
  INV3 U257 ( .A(n438), .Q(n249) );
  NAND41 U258 ( .A(n266), .B(n444), .C(n443), .D(n442), .Q(n452) );
  NAND22 U259 ( .A(n129), .B(N179), .Q(n444) );
  INV3 U260 ( .A(n439), .Q(n266) );
  NOR21 U261 ( .A(n441), .B(n440), .Q(n442) );
  XOR21 U262 ( .A(n296), .B(\dp_cluster_1/mult_114/SUMB[6][5] ), .Q(
        \dp_cluster_1/N266 ) );
  NOR40 U263 ( .A(n437), .B(n436), .C(n435), .D(n434), .Q(n438) );
  NAND31 U264 ( .A(n426), .B(n425), .C(n424), .Q(n437) );
  NAND22 U265 ( .A(n428), .B(n427), .Q(n436) );
  NAND31 U266 ( .A(n431), .B(n430), .C(n429), .Q(n435) );
  NOR21 U267 ( .A(sig_cyclesTrame1[3]), .B(n221), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [4]) );
  INV3 U268 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [3]), .Q(n221) );
  INV3 U269 ( .A(sig_cyclesTrame4[3]), .Q(n264) );
  XOR21 U270 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [3]), .B(n306), 
        .Q(\dp_cluster_0/N19 ) );
  INV3 U271 ( .A(sig_cyclesTrame4[4]), .Q(n263) );
  XOR21 U272 ( .A(\dp_cluster_0/sub_4_root_sub_235_cf/carry [4]), .B(n305), 
        .Q(\dp_cluster_0/N20 ) );
  INV3 U273 ( .A(n161), .Q(\dp_cluster_0/sub_0_root_sub_235_cf/carry [2]) );
  INV3 U274 ( .A(\dp_cluster_0/N38 ), .Q(n285) );
  NOR21 U275 ( .A(n132), .B(\dp_cluster_0/N296 ), .Q(n161) );
  INV3 U276 ( .A(n154), .Q(\dp_cluster_0/add_3_root_sub_235_cf/carry [2]) );
  NOR21 U277 ( .A(n117), .B(n118), .Q(n154) );
  INV3 U278 ( .A(\dp_cluster_1/mult_114/SUMB[7][5] ), .Q(n300) );
  BUF2 U279 ( .A(\local_counter1/n22 ), .Q(n230) );
  BUF2 U280 ( .A(\local_counter1/n22 ), .Q(n229) );
  INV3 U281 ( .A(sig_cyclesTrame1[2]), .Q(n307) );
  INV3 U282 ( .A(sig_cyclesTrame1[3]), .Q(n306) );
  INV3 U283 ( .A(sig_cyclesTrame1[4]), .Q(n305) );
  BUF2 U284 ( .A(\local_counter1/n22 ), .Q(n231) );
  NOR21 U285 ( .A(n230), .B(n311), .Q(\local_counter1/N63 ) );
  INV3 U286 ( .A(\local_counter1/N23 ), .Q(n311) );
  NOR21 U287 ( .A(n230), .B(n313), .Q(\local_counter1/N61 ) );
  INV3 U288 ( .A(\local_counter1/N21 ), .Q(n313) );
  NOR21 U289 ( .A(n230), .B(n315), .Q(\local_counter1/N59 ) );
  INV3 U290 ( .A(\local_counter1/N19 ), .Q(n315) );
  NOR21 U291 ( .A(n230), .B(n317), .Q(\local_counter1/N57 ) );
  INV3 U292 ( .A(\local_counter1/N17 ), .Q(n317) );
  NOR21 U293 ( .A(n230), .B(n319), .Q(\local_counter1/N55 ) );
  INV3 U294 ( .A(\local_counter1/N15 ), .Q(n319) );
  NOR21 U295 ( .A(n230), .B(n321), .Q(\local_counter1/N53 ) );
  INV3 U296 ( .A(\local_counter1/N13 ), .Q(n321) );
  NOR21 U297 ( .A(n229), .B(n322), .Q(\local_counter1/N52 ) );
  INV3 U298 ( .A(\local_counter1/N12 ), .Q(n322) );
  NOR21 U299 ( .A(n229), .B(n323), .Q(\local_counter1/N51 ) );
  INV3 U300 ( .A(\local_counter1/N11 ), .Q(n323) );
  NOR21 U301 ( .A(n229), .B(n324), .Q(\local_counter1/N50 ) );
  INV3 U302 ( .A(\local_counter1/N10 ), .Q(n324) );
  NOR21 U303 ( .A(n229), .B(n325), .Q(\local_counter1/N49 ) );
  INV3 U304 ( .A(\local_counter1/N9 ), .Q(n325) );
  NOR21 U305 ( .A(n229), .B(n326), .Q(\local_counter1/N48 ) );
  INV3 U306 ( .A(\local_counter1/N8 ), .Q(n326) );
  NOR21 U307 ( .A(n229), .B(n327), .Q(\local_counter1/N47 ) );
  INV3 U308 ( .A(\local_counter1/N7 ), .Q(n327) );
  NOR21 U309 ( .A(n231), .B(n310), .Q(\local_counter1/N64 ) );
  INV3 U310 ( .A(\local_counter1/N24 ), .Q(n310) );
  NOR21 U311 ( .A(n231), .B(n312), .Q(\local_counter1/N62 ) );
  INV3 U312 ( .A(\local_counter1/N22 ), .Q(n312) );
  NOR21 U313 ( .A(n231), .B(n314), .Q(\local_counter1/N60 ) );
  INV3 U314 ( .A(\local_counter1/N20 ), .Q(n314) );
  NOR21 U315 ( .A(n231), .B(n316), .Q(\local_counter1/N58 ) );
  INV3 U316 ( .A(\local_counter1/N18 ), .Q(n316) );
  NOR21 U317 ( .A(n231), .B(n318), .Q(\local_counter1/N56 ) );
  INV3 U318 ( .A(\local_counter1/N16 ), .Q(n318) );
  NOR21 U319 ( .A(n231), .B(n320), .Q(\local_counter1/N54 ) );
  INV3 U320 ( .A(\local_counter1/N14 ), .Q(n320) );
  XOR21 U321 ( .A(\dp_cluster_2/sub_117_cf/carry[8] ), .B(
        \dp_cluster_2/mult_117/SUMB[7][1] ), .Q(sig_cyclesTrame2[8]) );
  XOR21 U322 ( .A(\dp_cluster_2/sub_117_cf/carry[5] ), .B(
        \dp_cluster_2/mult_117/SUMB[4][1] ), .Q(sig_cyclesTrame2[5]) );
  XOR21 U323 ( .A(\dp_cluster_3/sub_120_cf/carry[8] ), .B(
        \dp_cluster_3/mult_120/SUMB[7][1] ), .Q(sig_cyclesTrame3[8]) );
  XOR21 U324 ( .A(\dp_cluster_3/sub_120_cf/carry[5] ), .B(
        \dp_cluster_3/mult_120/SUMB[4][1] ), .Q(sig_cyclesTrame3[5]) );
  XOR21 U325 ( .A(\dp_cluster_3/sub_120_cf/carry[7] ), .B(
        \dp_cluster_3/mult_120/SUMB[6][1] ), .Q(sig_cyclesTrame3[7]) );
  XNR21 U326 ( .A(\dp_cluster_3/sub_120_cf/carry[6] ), .B(
        \dp_cluster_3/mult_120/SUMB[5][1] ), .Q(sig_cyclesTrame3[6]) );
  XOR21 U327 ( .A(\dp_cluster_1/sub_114_cf/carry[8] ), .B(
        \dp_cluster_1/mult_114/SUMB[7][1] ), .Q(sig_cyclesTrame1[8]) );
  XOR21 U328 ( .A(\dp_cluster_4/sub_123_cf/carry[8] ), .B(
        \dp_cluster_4/mult_123/SUMB[7][1] ), .Q(sig_cyclesTrame4[8]) );
  XOR21 U329 ( .A(\dp_cluster_1/sub_114_cf/carry[5] ), .B(
        \dp_cluster_1/mult_114/SUMB[4][1] ), .Q(sig_cyclesTrame1[5]) );
  XOR21 U330 ( .A(\dp_cluster_4/sub_123_cf/carry[5] ), .B(
        \dp_cluster_4/mult_123/SUMB[4][1] ), .Q(sig_cyclesTrame4[5]) );
  XOR21 U331 ( .A(\dp_cluster_1/sub_114_cf/carry[7] ), .B(
        \dp_cluster_1/mult_114/SUMB[6][1] ), .Q(sig_cyclesTrame1[7]) );
  XOR21 U332 ( .A(\dp_cluster_4/sub_123_cf/carry[7] ), .B(
        \dp_cluster_4/mult_123/SUMB[6][1] ), .Q(sig_cyclesTrame4[7]) );
  XOR21 U333 ( .A(\dp_cluster_1/mult_114/A1[11] ), .B(n457), .Q(
        \dp_cluster_1/N264 ) );
  NOR21 U334 ( .A(n300), .B(n458), .Q(n457) );
  XOR21 U335 ( .A(\dp_cluster_1/mult_114/SUMB[4][5] ), .B(
        \dp_cluster_1/mult_114/CARRYB[7][1] ), .Q(\dp_cluster_1/N268 ) );
  XNR21 U336 ( .A(\dp_cluster_1/sub_114_cf/carry[14] ), .B(\dp_cluster_1/N263 ), .Q(sig_cyclesTrame1[14]) );
  XNR21 U337 ( .A(\dp_cluster_1/sub_114_cf/carry[6] ), .B(
        \dp_cluster_1/mult_114/SUMB[5][1] ), .Q(sig_cyclesTrame1[6]) );
  XNR21 U338 ( .A(\dp_cluster_4/sub_123_cf/carry[6] ), .B(
        \dp_cluster_4/mult_123/SUMB[5][1] ), .Q(sig_cyclesTrame4[6]) );
  XOR21 U339 ( .A(n254), .B(\dp_cluster_4/mult_123/SUMB[6][5] ), .Q(
        \dp_cluster_4/N221 ) );
  XOR21 U340 ( .A(n274), .B(\dp_cluster_3/mult_120/SUMB[6][5] ), .Q(
        \dp_cluster_3/N236 ) );
  XOR21 U341 ( .A(n287), .B(\dp_cluster_2/mult_117/SUMB[6][5] ), .Q(
        \dp_cluster_2/N251 ) );
  NAND22 U342 ( .A(n296), .B(\dp_cluster_1/mult_114/SUMB[6][5] ), .Q(n458) );
  NOR21 U343 ( .A(n150), .B(n207), .Q(\dp_cluster_1/sub_114_cf/carry[6] ) );
  INV3 U344 ( .A(\dp_cluster_1/mult_114/SUMB[4][1] ), .Q(n207) );
  NOR21 U345 ( .A(n218), .B(n219), .Q(\dp_cluster_1/mult_114/A2[8] ) );
  INV3 U346 ( .A(\dp_cluster_1/mult_114/SUMB[4][5] ), .Q(n219) );
  INV3 U347 ( .A(\dp_cluster_1/mult_114/CARRYB[7][1] ), .Q(n218) );
  NOR21 U348 ( .A(n209), .B(n210), .Q(\dp_cluster_1/sub_114_cf/carry[9] ) );
  INV3 U349 ( .A(\dp_cluster_1/sub_114_cf/carry[8] ), .Q(n209) );
  INV3 U350 ( .A(\dp_cluster_1/mult_114/SUMB[7][1] ), .Q(n210) );
  NOR21 U351 ( .A(n167), .B(n168), .Q(\dp_cluster_4/sub_123_cf/carry[9] ) );
  INV3 U352 ( .A(\dp_cluster_4/sub_123_cf/carry[8] ), .Q(n167) );
  INV3 U353 ( .A(\dp_cluster_4/mult_123/SUMB[7][1] ), .Q(n168) );
  NOR21 U354 ( .A(n151), .B(n208), .Q(\dp_cluster_1/sub_114_cf/carry[8] ) );
  INV3 U355 ( .A(\dp_cluster_1/mult_114/SUMB[6][1] ), .Q(n208) );
  INV3 U356 ( .A(\dp_cluster_4/mult_123/SUMB[7][5] ), .Q(n258) );
  INV3 U357 ( .A(\dp_cluster_3/mult_120/SUMB[7][5] ), .Q(n278) );
  INV3 U358 ( .A(\dp_cluster_2/mult_117/SUMB[7][5] ), .Q(n288) );
  INV3 U359 ( .A(\dp_cluster_1/mult_114/SUMB[5][5] ), .Q(n303) );
  INV3 U360 ( .A(\dp_cluster_4/mult_123/SUMB[5][5] ), .Q(n261) );
  INV3 U361 ( .A(\dp_cluster_3/mult_120/SUMB[5][5] ), .Q(n281) );
  INV3 U362 ( .A(n453), .Q(n296) );
  NAND22 U363 ( .A(\dp_cluster_1/mult_114/A2[8] ), .B(
        \dp_cluster_1/mult_114/SUMB[5][5] ), .Q(n453) );
  NOR21 U364 ( .A(n300), .B(n456), .Q(n455) );
  NAND22 U365 ( .A(n296), .B(\dp_cluster_1/mult_114/SUMB[6][5] ), .Q(n456) );
  XOR21 U366 ( .A(n118), .B(n117), .Q(n132) );
  INV3 U367 ( .A(n151), .Q(\dp_cluster_1/sub_114_cf/carry[7] ) );
  NOR21 U368 ( .A(\dp_cluster_1/mult_114/SUMB[5][1] ), .B(
        \dp_cluster_1/sub_114_cf/carry[6] ), .Q(n151) );
  INV3 U369 ( .A(n136), .Q(\dp_cluster_4/sub_123_cf/carry[7] ) );
  NOR21 U370 ( .A(\dp_cluster_4/mult_123/SUMB[5][1] ), .B(
        \dp_cluster_4/sub_123_cf/carry[6] ), .Q(n136) );
  XOR21 U371 ( .A(\dp_cluster_2/sub_117_cf/carry[7] ), .B(
        \dp_cluster_2/mult_117/SUMB[6][1] ), .Q(sig_cyclesTrame2[7]) );
  XNR21 U372 ( .A(\dp_cluster_2/sub_117_cf/carry[14] ), .B(\dp_cluster_2/N248 ), .Q(sig_cyclesTrame2[14]) );
  XNR21 U373 ( .A(\dp_cluster_2/sub_117_cf/carry[6] ), .B(
        \dp_cluster_2/mult_117/SUMB[5][1] ), .Q(sig_cyclesTrame2[6]) );
  XNR21 U374 ( .A(\dp_cluster_3/sub_120_cf/carry[14] ), .B(\dp_cluster_3/N233 ), .Q(sig_cyclesTrame3[14]) );
  XOR21 U375 ( .A(\dp_cluster_4/mult_123/A1[11] ), .B(n475), .Q(
        \dp_cluster_4/N219 ) );
  NOR21 U376 ( .A(n258), .B(n476), .Q(n475) );
  XOR21 U377 ( .A(\dp_cluster_3/mult_120/A1[11] ), .B(n469), .Q(
        \dp_cluster_3/N234 ) );
  NOR21 U378 ( .A(n278), .B(n470), .Q(n469) );
  XOR21 U379 ( .A(\dp_cluster_2/mult_117/A1[11] ), .B(n463), .Q(
        \dp_cluster_2/N249 ) );
  NOR21 U380 ( .A(n288), .B(n464), .Q(n463) );
  XOR21 U381 ( .A(\dp_cluster_4/mult_123/SUMB[4][5] ), .B(
        \dp_cluster_4/mult_123/CARRYB[7][1] ), .Q(\dp_cluster_4/N223 ) );
  XOR21 U382 ( .A(\dp_cluster_3/mult_120/SUMB[4][5] ), .B(
        \dp_cluster_3/mult_120/CARRYB[7][1] ), .Q(\dp_cluster_3/N238 ) );
  XOR21 U383 ( .A(\dp_cluster_2/mult_117/SUMB[4][5] ), .B(
        \dp_cluster_2/mult_117/CARRYB[7][1] ), .Q(\dp_cluster_2/N253 ) );
  XNR21 U384 ( .A(\dp_cluster_4/sub_123_cf/carry[14] ), .B(\dp_cluster_4/N218 ), .Q(sig_cyclesTrame4[14]) );
  NAND22 U385 ( .A(n254), .B(\dp_cluster_4/mult_123/SUMB[6][5] ), .Q(n476) );
  NAND22 U386 ( .A(n274), .B(\dp_cluster_3/mult_120/SUMB[6][5] ), .Q(n470) );
  NAND22 U387 ( .A(n287), .B(\dp_cluster_2/mult_117/SUMB[6][5] ), .Q(n464) );
  NOR21 U388 ( .A(n135), .B(n165), .Q(\dp_cluster_4/sub_123_cf/carry[6] ) );
  INV3 U389 ( .A(\dp_cluster_4/mult_123/SUMB[4][1] ), .Q(n165) );
  NOR21 U390 ( .A(n140), .B(n179), .Q(\dp_cluster_3/sub_120_cf/carry[6] ) );
  INV3 U391 ( .A(\dp_cluster_3/mult_120/SUMB[4][1] ), .Q(n179) );
  NOR21 U392 ( .A(n145), .B(n193), .Q(\dp_cluster_2/sub_117_cf/carry[6] ) );
  INV3 U393 ( .A(\dp_cluster_2/mult_117/SUMB[4][1] ), .Q(n193) );
  NOR21 U394 ( .A(n176), .B(n177), .Q(\dp_cluster_4/mult_123/A2[8] ) );
  INV3 U395 ( .A(\dp_cluster_4/mult_123/SUMB[4][5] ), .Q(n177) );
  INV3 U396 ( .A(\dp_cluster_4/mult_123/CARRYB[7][1] ), .Q(n176) );
  NOR21 U397 ( .A(n181), .B(n182), .Q(\dp_cluster_3/sub_120_cf/carry[9] ) );
  INV3 U398 ( .A(\dp_cluster_3/sub_120_cf/carry[8] ), .Q(n181) );
  INV3 U399 ( .A(\dp_cluster_3/mult_120/SUMB[7][1] ), .Q(n182) );
  NOR21 U400 ( .A(n195), .B(n196), .Q(\dp_cluster_2/sub_117_cf/carry[9] ) );
  INV3 U401 ( .A(\dp_cluster_2/sub_117_cf/carry[8] ), .Q(n195) );
  INV3 U402 ( .A(\dp_cluster_2/mult_117/SUMB[7][1] ), .Q(n196) );
  NOR21 U403 ( .A(n136), .B(n166), .Q(\dp_cluster_4/sub_123_cf/carry[8] ) );
  INV3 U404 ( .A(\dp_cluster_4/mult_123/SUMB[6][1] ), .Q(n166) );
  NOR21 U405 ( .A(n141), .B(n180), .Q(\dp_cluster_3/sub_120_cf/carry[8] ) );
  INV3 U406 ( .A(\dp_cluster_3/mult_120/SUMB[6][1] ), .Q(n180) );
  NOR21 U407 ( .A(n146), .B(n194), .Q(\dp_cluster_2/sub_117_cf/carry[8] ) );
  INV3 U408 ( .A(\dp_cluster_2/mult_117/SUMB[6][1] ), .Q(n194) );
  INV3 U409 ( .A(\dp_cluster_2/mult_117/SUMB[5][5] ), .Q(n289) );
  INV3 U410 ( .A(n471), .Q(n254) );
  NAND22 U411 ( .A(\dp_cluster_4/mult_123/A2[8] ), .B(
        \dp_cluster_4/mult_123/SUMB[5][5] ), .Q(n471) );
  INV3 U412 ( .A(n465), .Q(n274) );
  NAND22 U413 ( .A(\dp_cluster_3/mult_120/A2[8] ), .B(
        \dp_cluster_3/mult_120/SUMB[5][5] ), .Q(n465) );
  INV3 U414 ( .A(n459), .Q(n287) );
  NAND22 U415 ( .A(\dp_cluster_2/mult_117/A2[8] ), .B(
        \dp_cluster_2/mult_117/SUMB[5][5] ), .Q(n459) );
  NOR21 U416 ( .A(n258), .B(n474), .Q(n473) );
  NAND22 U417 ( .A(n254), .B(\dp_cluster_4/mult_123/SUMB[6][5] ), .Q(n474) );
  NOR21 U418 ( .A(n278), .B(n468), .Q(n467) );
  NAND22 U419 ( .A(n274), .B(\dp_cluster_3/mult_120/SUMB[6][5] ), .Q(n468) );
  NOR21 U420 ( .A(n288), .B(n462), .Q(n461) );
  NAND22 U421 ( .A(n287), .B(\dp_cluster_2/mult_117/SUMB[6][5] ), .Q(n462) );
  INV3 U422 ( .A(n153), .Q(sig_cyclesTrame1[15]) );
  NOR21 U423 ( .A(\dp_cluster_1/N263 ), .B(\dp_cluster_1/sub_114_cf/carry[14] ), .Q(n153) );
  INV3 U424 ( .A(n141), .Q(\dp_cluster_3/sub_120_cf/carry[7] ) );
  NOR21 U425 ( .A(\dp_cluster_3/mult_120/SUMB[5][1] ), .B(
        \dp_cluster_3/sub_120_cf/carry[6] ), .Q(n141) );
  INV3 U426 ( .A(n146), .Q(\dp_cluster_2/sub_117_cf/carry[7] ) );
  NOR21 U427 ( .A(\dp_cluster_2/mult_117/SUMB[5][1] ), .B(
        \dp_cluster_2/sub_117_cf/carry[6] ), .Q(n146) );
  INV3 U428 ( .A(\dp_cluster_1/mult_114/CARRYB[7][5] ), .Q(n220) );
  INV3 U429 ( .A(\dp_cluster_4/mult_123/CARRYB[7][5] ), .Q(n178) );
  NOR21 U430 ( .A(n190), .B(n191), .Q(\dp_cluster_3/mult_120/A2[8] ) );
  INV3 U431 ( .A(\dp_cluster_3/mult_120/CARRYB[7][1] ), .Q(n190) );
  INV3 U432 ( .A(\dp_cluster_3/mult_120/SUMB[4][5] ), .Q(n191) );
  NOR21 U433 ( .A(n204), .B(n205), .Q(\dp_cluster_2/mult_117/A2[8] ) );
  INV3 U434 ( .A(\dp_cluster_2/mult_117/CARRYB[7][1] ), .Q(n204) );
  INV3 U435 ( .A(\dp_cluster_2/mult_117/SUMB[4][5] ), .Q(n205) );
  INV3 U436 ( .A(n148), .Q(sig_cyclesTrame2[15]) );
  NOR21 U437 ( .A(\dp_cluster_2/N248 ), .B(\dp_cluster_2/sub_117_cf/carry[14] ), .Q(n148) );
  INV3 U438 ( .A(n143), .Q(sig_cyclesTrame3[15]) );
  NOR21 U439 ( .A(\dp_cluster_3/N233 ), .B(\dp_cluster_3/sub_120_cf/carry[14] ), .Q(n143) );
  INV3 U440 ( .A(n138), .Q(sig_cyclesTrame4[15]) );
  NOR21 U441 ( .A(\dp_cluster_4/N218 ), .B(\dp_cluster_4/sub_123_cf/carry[14] ), .Q(n138) );
  INV3 U442 ( .A(\dp_cluster_3/mult_120/CARRYB[7][5] ), .Q(n192) );
  INV3 U443 ( .A(\dp_cluster_2/mult_117/CARRYB[7][5] ), .Q(n206) );
  INV3 U444 ( .A(n366), .Q(n286) );
  NOR40 U445 ( .A(n365), .B(n364), .C(n363), .D(n362), .Q(n366) );
  NAND31 U446 ( .A(n354), .B(n353), .C(n352), .Q(n365) );
  NAND22 U447 ( .A(n356), .B(n355), .Q(n364) );
  INV3 U448 ( .A(n390), .Q(n267) );
  NOR40 U449 ( .A(n389), .B(n388), .C(n387), .D(n386), .Q(n390) );
  NAND31 U450 ( .A(n378), .B(n377), .C(n376), .Q(n389) );
  NAND22 U451 ( .A(n380), .B(n379), .Q(n388) );
  INV3 U452 ( .A(n342), .Q(n290) );
  NOR40 U453 ( .A(n341), .B(n340), .C(n339), .D(n338), .Q(n342) );
  NAND31 U454 ( .A(n330), .B(n329), .C(n328), .Q(n341) );
  NAND22 U455 ( .A(n332), .B(n331), .Q(n340) );
  INV3 U456 ( .A(n414), .Q(n248) );
  NOR40 U457 ( .A(n413), .B(n412), .C(n411), .D(n410), .Q(n414) );
  NAND31 U458 ( .A(n402), .B(n401), .C(n400), .Q(n413) );
  NAND22 U459 ( .A(n404), .B(n403), .Q(n412) );
  XNR21 U460 ( .A(\dp_cluster_0/N296 ), .B(n132), .Q(N179) );
  NAND31 U461 ( .A(n308), .B(n67), .C(n240), .Q(n76) );
  INV3 U462 ( .A(n58), .Q(n308) );
  INV3 U463 ( .A(n77), .Q(n240) );
  INV3 U464 ( .A(n91), .Q(n245) );
  INV3 U465 ( .A(n63), .Q(n246) );
  INV3 U466 ( .A(n59), .Q(n244) );
  XOR21 U467 ( .A(sig_reg_storage[16]), .B(sig_reg_storage[17]), .Q(
        sig_cyclesTrame3[2]) );
  XOR21 U468 ( .A(sig_reg_storage[24]), .B(sig_reg_storage[25]), .Q(
        sig_cyclesTrame4[2]) );
  XOR21 U469 ( .A(sig_reg_storage[0]), .B(sig_reg_storage[1]), .Q(
        sig_cyclesTrame1[2]) );
  XNR21 U470 ( .A(\dp_cluster_1/sub_114_cf/carry[3] ), .B(sig_reg_storage[2]), 
        .Q(sig_cyclesTrame1[3]) );
  XNR21 U471 ( .A(\dp_cluster_1/sub_114_cf/carry[4] ), .B(sig_reg_storage[3]), 
        .Q(sig_cyclesTrame1[4]) );
  AOI211 U472 ( .A(n58), .B(n240), .C(n81), .Q(n80) );
  NOR31 U473 ( .A(n246), .B(N198), .C(n239), .Q(n81) );
  INV3 U474 ( .A(i_reset_n), .Q(n239) );
  NAND22 U475 ( .A(sig_state[0]), .B(n127), .Q(n78) );
  INV3 U476 ( .A(n79), .Q(n238) );
  NAND22 U477 ( .A(i_reset_n), .B(n242), .Q(\local_counter1/n22 ) );
  INV3 U478 ( .A(sig_in_init), .Q(n242) );
  OAI2111 U479 ( .A(n245), .B(n58), .C(n59), .D(n60), .Q(sig_in_init) );
  AOI221 U480 ( .A(n61), .B(n62), .C(N198), .D(n63), .Q(n60) );
  NOR21 U481 ( .A(n115), .B(n113), .Q(\dp_cluster_1/sub_114_cf/carry[3] ) );
  NOR21 U482 ( .A(n115), .B(n113), .Q(\dp_cluster_1/mult_114/CARRYB[1][5] ) );
  NOR21 U483 ( .A(sig_cyclesTrame1[2]), .B(n115), .Q(
        \dp_cluster_0/sub_4_root_sub_235_cf/carry [3]) );
  INV3 U484 ( .A(n73), .Q(n237) );
  AOI211 U485 ( .A(n74), .B(sig_state[2]), .C(n75), .Q(n73) );
  NOR40 U486 ( .A(n76), .B(n127), .C(n110), .D(sig_state[2]), .Q(n75) );
  XNR21 U487 ( .A(N194), .B(sig_out_local_count[16]), .Q(n429) );
  INV3 U488 ( .A(n160), .Q(\dp_cluster_0/add_1_root_sub_235_cf/carry [2]) );
  INV3 U489 ( .A(sig_cyclesTrame4[2]), .Q(n265) );
  XOR21 U490 ( .A(sig_reg_storage[0]), .B(n307), .Q(\dp_cluster_0/N18 ) );
  NAND22 U491 ( .A(n433), .B(n432), .Q(n434) );
  XNR21 U492 ( .A(N195), .B(sig_out_local_count[17]), .Q(n432) );
  XNR21 U493 ( .A(N196), .B(sig_out_local_count[18]), .Q(n433) );
  XNR21 U494 ( .A(\dp_cluster_0/N280 ), .B(
        \dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), .Q(N195) );
  XNR21 U495 ( .A(N197), .B(sig_out_local_count[19]), .Q(n443) );
  XNR21 U496 ( .A(\dp_cluster_0/sub_0_root_sub_235_cf/carry [19]), .B(
        \dp_cluster_0/N278 ), .Q(N197) );
  XNR21 U497 ( .A(\dp_cluster_0/add_1_root_sub_235_cf/carry [19]), .B(
        \dp_cluster_0/N35 ), .Q(\dp_cluster_0/N278 ) );
  INV3 U498 ( .A(n159), .Q(\dp_cluster_0/sub_0_root_sub_235_cf/carry [19]) );
  INV3 U499 ( .A(n149), .Q(\dp_cluster_1/sub_114_cf/carry[4] ) );
  NOR21 U500 ( .A(sig_reg_storage[2]), .B(\dp_cluster_1/sub_114_cf/carry[3] ), 
        .Q(n149) );
  NOR21 U501 ( .A(n229), .B(\local_counter1/v_val [0]), .Q(
        \local_counter1/N46 ) );
  XNR21 U502 ( .A(\local_counter1/add_34/carry [19]), .B(
        \local_counter1/v_val [19]), .Q(n133) );
  XOR21 U503 ( .A(sig_reg_storage[8]), .B(sig_reg_storage[9]), .Q(
        sig_cyclesTrame2[2]) );
  XNR21 U504 ( .A(\dp_cluster_2/sub_117_cf/carry[4] ), .B(sig_reg_storage[11]), 
        .Q(sig_cyclesTrame2[4]) );
  XNR21 U505 ( .A(\dp_cluster_2/sub_117_cf/carry[3] ), .B(sig_reg_storage[10]), 
        .Q(sig_cyclesTrame2[3]) );
  XNR21 U506 ( .A(\dp_cluster_3/sub_120_cf/carry[4] ), .B(sig_reg_storage[19]), 
        .Q(sig_cyclesTrame3[4]) );
  XNR21 U507 ( .A(\dp_cluster_3/sub_120_cf/carry[3] ), .B(sig_reg_storage[18]), 
        .Q(sig_cyclesTrame3[3]) );
  XOR21 U508 ( .A(sig_reg_storage[4]), .B(sig_reg_storage[0]), .Q(
        \dp_cluster_1/mult_114/SUMB[4][1] ) );
  XNR21 U509 ( .A(n454), .B(\dp_cluster_1/mult_114/A2[12] ), .Q(
        \dp_cluster_1/N263 ) );
  NOR21 U510 ( .A(n220), .B(n122), .Q(\dp_cluster_1/mult_114/A2[12] ) );
  NAND22 U511 ( .A(\dp_cluster_1/mult_114/A1[11] ), .B(n455), .Q(n454) );
  XNR21 U512 ( .A(n115), .B(sig_reg_storage[24]), .Q(\dp_cluster_0/N296 ) );
  XNR21 U513 ( .A(\dp_cluster_4/sub_123_cf/carry[4] ), .B(sig_reg_storage[27]), 
        .Q(sig_cyclesTrame4[4]) );
  XNR21 U514 ( .A(\dp_cluster_4/sub_123_cf/carry[3] ), .B(sig_reg_storage[26]), 
        .Q(sig_cyclesTrame4[3]) );
  XOR21 U515 ( .A(sig_reg_storage[7]), .B(\dp_cluster_1/mult_114/CARRYB[7][5] ), .Q(\dp_cluster_1/mult_114/A1[11] ) );
  NOR21 U516 ( .A(sig_reg_storage[24]), .B(n115), .Q(n160) );
  NOR21 U517 ( .A(n128), .B(n119), .Q(\dp_cluster_4/sub_123_cf/carry[3] ) );
  NOR21 U518 ( .A(n128), .B(n119), .Q(\dp_cluster_4/mult_123/CARRYB[1][5] ) );
  NOR21 U519 ( .A(n114), .B(n128), .Q(\dp_cluster_4/mult_123/CARRYB[4][1] ) );
  XOR21 U520 ( .A(sig_reg_storage[24]), .B(sig_reg_storage[25]), .Q(
        \dp_cluster_4/mult_123/SUMB[1][5] ) );
  NOR21 U521 ( .A(n112), .B(n115), .Q(\dp_cluster_1/mult_114/CARRYB[4][1] ) );
  XOR21 U522 ( .A(sig_reg_storage[0]), .B(sig_reg_storage[1]), .Q(
        \dp_cluster_1/mult_114/SUMB[1][5] ) );
  NOR21 U523 ( .A(n117), .B(n120), .Q(\dp_cluster_3/mult_120/CARRYB[1][5] ) );
  NOR21 U524 ( .A(n118), .B(n121), .Q(\dp_cluster_2/mult_117/CARRYB[1][5] ) );
  NOR21 U525 ( .A(n106), .B(n117), .Q(\dp_cluster_3/mult_120/CARRYB[4][1] ) );
  XOR21 U526 ( .A(sig_reg_storage[16]), .B(sig_reg_storage[17]), .Q(
        \dp_cluster_3/mult_120/SUMB[1][5] ) );
  NOR21 U527 ( .A(n107), .B(n118), .Q(\dp_cluster_2/mult_117/CARRYB[4][1] ) );
  XOR21 U528 ( .A(sig_reg_storage[8]), .B(sig_reg_storage[9]), .Q(
        \dp_cluster_2/mult_117/SUMB[1][5] ) );
  NOR21 U529 ( .A(n117), .B(n120), .Q(\dp_cluster_3/sub_120_cf/carry[3] ) );
  NOR21 U530 ( .A(n118), .B(n121), .Q(\dp_cluster_2/sub_117_cf/carry[3] ) );
  XNR21 U531 ( .A(N193), .B(sig_out_local_count[15]), .Q(n431) );
  INV3 U532 ( .A(n134), .Q(\dp_cluster_4/sub_123_cf/carry[4] ) );
  NOR21 U533 ( .A(sig_reg_storage[26]), .B(\dp_cluster_4/sub_123_cf/carry[3] ), 
        .Q(n134) );
  INV3 U534 ( .A(n139), .Q(\dp_cluster_3/sub_120_cf/carry[4] ) );
  NOR21 U535 ( .A(sig_reg_storage[18]), .B(\dp_cluster_3/sub_120_cf/carry[3] ), 
        .Q(n139) );
  INV3 U536 ( .A(n144), .Q(\dp_cluster_2/sub_117_cf/carry[4] ) );
  NOR21 U537 ( .A(sig_reg_storage[10]), .B(\dp_cluster_2/sub_117_cf/carry[3] ), 
        .Q(n144) );
  INV3 U538 ( .A(n150), .Q(\dp_cluster_1/sub_114_cf/carry[5] ) );
  NOR21 U539 ( .A(sig_reg_storage[3]), .B(\dp_cluster_1/sub_114_cf/carry[4] ), 
        .Q(n150) );
  INV3 U540 ( .A(n135), .Q(\dp_cluster_4/sub_123_cf/carry[5] ) );
  NOR21 U541 ( .A(sig_reg_storage[27]), .B(\dp_cluster_4/sub_123_cf/carry[4] ), 
        .Q(n135) );
  INV3 U542 ( .A(n140), .Q(\dp_cluster_3/sub_120_cf/carry[5] ) );
  NOR21 U543 ( .A(sig_reg_storage[19]), .B(\dp_cluster_3/sub_120_cf/carry[4] ), 
        .Q(n140) );
  INV3 U544 ( .A(n145), .Q(\dp_cluster_2/sub_117_cf/carry[5] ) );
  NOR21 U545 ( .A(sig_reg_storage[11]), .B(\dp_cluster_2/sub_117_cf/carry[4] ), 
        .Q(n145) );
  INV3 U546 ( .A(n64), .Q(n241) );
  NAND31 U547 ( .A(i_reset_n), .B(n63), .C(N198), .Q(n64) );
  XOR21 U548 ( .A(sig_reg_storage[28]), .B(sig_reg_storage[24]), .Q(
        \dp_cluster_4/mult_123/SUMB[4][1] ) );
  XOR21 U549 ( .A(sig_reg_storage[20]), .B(sig_reg_storage[16]), .Q(
        \dp_cluster_3/mult_120/SUMB[4][1] ) );
  XOR21 U550 ( .A(sig_reg_storage[12]), .B(sig_reg_storage[8]), .Q(
        \dp_cluster_2/mult_117/SUMB[4][1] ) );
  XNR21 U551 ( .A(n472), .B(\dp_cluster_4/mult_123/A2[12] ), .Q(
        \dp_cluster_4/N218 ) );
  NOR21 U552 ( .A(n178), .B(n124), .Q(\dp_cluster_4/mult_123/A2[12] ) );
  NAND22 U553 ( .A(\dp_cluster_4/mult_123/A1[11] ), .B(n473), .Q(n472) );
  XNR21 U554 ( .A(n460), .B(\dp_cluster_2/mult_117/A2[12] ), .Q(
        \dp_cluster_2/N248 ) );
  NOR21 U555 ( .A(n206), .B(n125), .Q(\dp_cluster_2/mult_117/A2[12] ) );
  NAND22 U556 ( .A(\dp_cluster_2/mult_117/A1[11] ), .B(n461), .Q(n460) );
  XOR21 U557 ( .A(sig_reg_storage[31]), .B(
        \dp_cluster_4/mult_123/CARRYB[7][5] ), .Q(
        \dp_cluster_4/mult_123/A1[11] ) );
  XOR21 U558 ( .A(sig_reg_storage[23]), .B(
        \dp_cluster_3/mult_120/CARRYB[7][5] ), .Q(
        \dp_cluster_3/mult_120/A1[11] ) );
  XOR21 U559 ( .A(sig_reg_storage[15]), .B(
        \dp_cluster_2/mult_117/CARRYB[7][5] ), .Q(
        \dp_cluster_2/mult_117/A1[11] ) );
  OAI2111 U560 ( .A(N198), .B(n246), .C(n65), .D(i_reset_n), .Q(N82) );
  NAND31 U561 ( .A(n243), .B(n308), .C(n66), .Q(n65) );
  INV3 U562 ( .A(n67), .Q(n243) );
  XNR21 U563 ( .A(N191), .B(sig_out_local_count[13]), .Q(n428) );
  XNR21 U564 ( .A(N192), .B(sig_out_local_count[14]), .Q(n430) );
  XNR21 U565 ( .A(n466), .B(\dp_cluster_3/mult_120/A2[12] ), .Q(
        \dp_cluster_3/N233 ) );
  NOR21 U566 ( .A(n192), .B(n123), .Q(\dp_cluster_3/mult_120/A2[12] ) );
  NAND22 U567 ( .A(\dp_cluster_3/mult_120/A1[11] ), .B(n467), .Q(n466) );
  XNR21 U568 ( .A(N190), .B(sig_out_local_count[12]), .Q(n427) );
  XNR21 U569 ( .A(N189), .B(sig_out_local_count[11]), .Q(n424) );
  XNR21 U570 ( .A(N188), .B(sig_out_local_count[10]), .Q(n426) );
  XNR21 U571 ( .A(N187), .B(sig_out_local_count[9]), .Q(n425) );
  INV3 U572 ( .A(N169), .Q(n247) );
  AOI311 U573 ( .A(N148), .B(n127), .C(sig_state[0]), .D(n71), .Q(n70) );
  NOR40 U574 ( .A(n248), .B(n423), .C(n422), .D(n421), .Q(N169) );
  NOR40 U575 ( .A(n290), .B(n351), .C(n350), .D(n349), .Q(N148) );
  NAND31 U576 ( .A(sig_out_local_count[0]), .B(n126), .C(n343), .Q(n351) );
  NAND31 U577 ( .A(n346), .B(n345), .C(n344), .Q(n350) );
  NAND22 U578 ( .A(n348), .B(n347), .Q(n349) );
  NOR21 U579 ( .A(n72), .B(n127), .Q(n71) );
  AOI221 U580 ( .A(N156), .B(n110), .C(N163), .D(sig_state[0]), .Q(n72) );
  NOR40 U581 ( .A(n267), .B(n399), .C(n398), .D(n397), .Q(N163) );
  NOR40 U582 ( .A(n286), .B(n375), .C(n374), .D(n373), .Q(N156) );
  NAND31 U583 ( .A(n359), .B(n358), .C(n357), .Q(n363) );
  XNR21 U584 ( .A(sig_cyclesTrame2[11]), .B(sig_out_local_count[11]), .Q(n358)
         );
  XNR21 U585 ( .A(sig_cyclesTrame2[12]), .B(sig_out_local_count[12]), .Q(n359)
         );
  XNR21 U586 ( .A(sig_cyclesTrame2[13]), .B(sig_out_local_count[13]), .Q(n357)
         );
  NAND31 U587 ( .A(n383), .B(n382), .C(n381), .Q(n387) );
  XNR21 U588 ( .A(sig_cyclesTrame3[11]), .B(sig_out_local_count[11]), .Q(n382)
         );
  XNR21 U589 ( .A(sig_cyclesTrame3[12]), .B(sig_out_local_count[12]), .Q(n383)
         );
  XNR21 U590 ( .A(sig_cyclesTrame3[13]), .B(sig_out_local_count[13]), .Q(n381)
         );
  NAND31 U591 ( .A(n335), .B(n334), .C(n333), .Q(n339) );
  XNR21 U592 ( .A(sig_cyclesTrame1[11]), .B(sig_out_local_count[11]), .Q(n334)
         );
  XNR21 U593 ( .A(sig_cyclesTrame1[12]), .B(sig_out_local_count[12]), .Q(n335)
         );
  XNR21 U594 ( .A(sig_cyclesTrame1[13]), .B(sig_out_local_count[13]), .Q(n333)
         );
  NAND31 U595 ( .A(n407), .B(n406), .C(n405), .Q(n411) );
  XNR21 U596 ( .A(sig_cyclesTrame4[11]), .B(sig_out_local_count[11]), .Q(n406)
         );
  XNR21 U597 ( .A(sig_cyclesTrame4[12]), .B(sig_out_local_count[12]), .Q(n407)
         );
  XNR21 U598 ( .A(sig_cyclesTrame4[13]), .B(sig_out_local_count[13]), .Q(n405)
         );
  NAND22 U599 ( .A(n361), .B(n360), .Q(n362) );
  XNR21 U600 ( .A(sig_cyclesTrame2[15]), .B(sig_out_local_count[15]), .Q(n360)
         );
  XNR21 U601 ( .A(sig_cyclesTrame2[14]), .B(sig_out_local_count[14]), .Q(n361)
         );
  NAND22 U602 ( .A(n385), .B(n384), .Q(n386) );
  XNR21 U603 ( .A(sig_cyclesTrame3[15]), .B(sig_out_local_count[15]), .Q(n384)
         );
  XNR21 U604 ( .A(sig_cyclesTrame3[14]), .B(sig_out_local_count[14]), .Q(n385)
         );
  NAND22 U605 ( .A(n337), .B(n336), .Q(n338) );
  XNR21 U606 ( .A(sig_cyclesTrame1[15]), .B(sig_out_local_count[15]), .Q(n336)
         );
  XNR21 U607 ( .A(sig_cyclesTrame1[14]), .B(sig_out_local_count[14]), .Q(n337)
         );
  NAND22 U608 ( .A(n409), .B(n408), .Q(n410) );
  XNR21 U609 ( .A(sig_cyclesTrame4[15]), .B(sig_out_local_count[15]), .Q(n408)
         );
  XNR21 U610 ( .A(sig_cyclesTrame4[14]), .B(sig_out_local_count[14]), .Q(n409)
         );
  OAI2111 U611 ( .A(n62), .B(n68), .C(n69), .D(i_reset_n), .Q(N81) );
  NAND22 U612 ( .A(n61), .B(n130), .Q(n68) );
  NAND31 U613 ( .A(n308), .B(n67), .C(n66), .Q(n69) );
  XNR21 U614 ( .A(N185), .B(sig_out_local_count[7]), .Q(n448) );
  XNR21 U615 ( .A(N186), .B(sig_out_local_count[8]), .Q(n449) );
  XNR21 U616 ( .A(sig_cyclesTrame2[9]), .B(sig_out_local_count[9]), .Q(n355)
         );
  XNR21 U617 ( .A(N184), .B(sig_out_local_count[6]), .Q(n445) );
  XNR21 U618 ( .A(sig_cyclesTrame2[10]), .B(sig_out_local_count[10]), .Q(n356)
         );
  XNR21 U619 ( .A(sig_cyclesTrame3[10]), .B(sig_out_local_count[10]), .Q(n380)
         );
  XNR21 U620 ( .A(sig_cyclesTrame1[10]), .B(sig_out_local_count[10]), .Q(n332)
         );
  XNR21 U621 ( .A(N183), .B(sig_out_local_count[5]), .Q(n447) );
  XOR21 U622 ( .A(N181), .B(sig_out_local_count[3]), .Q(n440) );
  XNR21 U623 ( .A(sig_cyclesTrame3[9]), .B(sig_out_local_count[9]), .Q(n379)
         );
  XNR21 U624 ( .A(sig_cyclesTrame1[9]), .B(sig_out_local_count[9]), .Q(n331)
         );
  XNR21 U625 ( .A(sig_cyclesTrame4[9]), .B(sig_out_local_count[9]), .Q(n403)
         );
  XNR21 U626 ( .A(sig_cyclesTrame2[8]), .B(sig_out_local_count[8]), .Q(n352)
         );
  XNR21 U627 ( .A(sig_cyclesTrame3[8]), .B(sig_out_local_count[8]), .Q(n376)
         );
  XNR21 U628 ( .A(sig_cyclesTrame1[8]), .B(sig_out_local_count[8]), .Q(n328)
         );
  XNR21 U629 ( .A(sig_cyclesTrame4[8]), .B(sig_out_local_count[8]), .Q(n400)
         );
  XNR21 U630 ( .A(sig_cyclesTrame4[10]), .B(sig_out_local_count[10]), .Q(n404)
         );
  XNR21 U631 ( .A(N182), .B(sig_out_local_count[4]), .Q(n446) );
  XOR21 U632 ( .A(N180), .B(sig_out_local_count[2]), .Q(n441) );
  XNR21 U633 ( .A(sig_cyclesTrame2[6]), .B(sig_out_local_count[6]), .Q(n353)
         );
  XNR21 U634 ( .A(sig_cyclesTrame3[6]), .B(sig_out_local_count[6]), .Q(n377)
         );
  XNR21 U635 ( .A(sig_cyclesTrame2[7]), .B(sig_out_local_count[7]), .Q(n354)
         );
  XNR21 U636 ( .A(sig_cyclesTrame3[7]), .B(sig_out_local_count[7]), .Q(n378)
         );
  XNR21 U637 ( .A(sig_cyclesTrame1[7]), .B(sig_out_local_count[7]), .Q(n330)
         );
  XNR21 U638 ( .A(sig_cyclesTrame4[7]), .B(sig_out_local_count[7]), .Q(n402)
         );
  XNR21 U639 ( .A(sig_cyclesTrame1[6]), .B(sig_out_local_count[6]), .Q(n329)
         );
  XNR21 U640 ( .A(sig_cyclesTrame4[6]), .B(sig_out_local_count[6]), .Q(n401)
         );
  AOI221 U641 ( .A(n129), .B(n111), .C(n111), .D(N179), .Q(n439) );
  XNR21 U642 ( .A(sig_cyclesTrame1[5]), .B(sig_out_local_count[5]), .Q(n348)
         );
  NAND22 U643 ( .A(n372), .B(n371), .Q(n373) );
  XNR21 U644 ( .A(sig_cyclesTrame2[4]), .B(sig_out_local_count[4]), .Q(n371)
         );
  XNR21 U645 ( .A(sig_cyclesTrame2[5]), .B(sig_out_local_count[5]), .Q(n372)
         );
  NAND22 U646 ( .A(n396), .B(n395), .Q(n397) );
  XNR21 U647 ( .A(sig_cyclesTrame3[4]), .B(sig_out_local_count[4]), .Q(n395)
         );
  XNR21 U648 ( .A(sig_cyclesTrame3[5]), .B(sig_out_local_count[5]), .Q(n396)
         );
  NAND22 U649 ( .A(n420), .B(n419), .Q(n421) );
  XNR21 U650 ( .A(sig_cyclesTrame4[4]), .B(sig_out_local_count[4]), .Q(n419)
         );
  XNR21 U651 ( .A(sig_cyclesTrame4[5]), .B(sig_out_local_count[5]), .Q(n420)
         );
  NAND31 U652 ( .A(n370), .B(n369), .C(n368), .Q(n374) );
  XNR21 U653 ( .A(n118), .B(sig_out_local_count[1]), .Q(n370) );
  XNR21 U654 ( .A(sig_cyclesTrame2[2]), .B(sig_out_local_count[2]), .Q(n368)
         );
  XNR21 U655 ( .A(sig_cyclesTrame2[3]), .B(sig_out_local_count[3]), .Q(n369)
         );
  NAND31 U656 ( .A(n394), .B(n393), .C(n392), .Q(n398) );
  XNR21 U657 ( .A(n117), .B(sig_out_local_count[1]), .Q(n394) );
  XNR21 U658 ( .A(sig_cyclesTrame3[2]), .B(sig_out_local_count[2]), .Q(n392)
         );
  XNR21 U659 ( .A(sig_cyclesTrame3[3]), .B(sig_out_local_count[3]), .Q(n393)
         );
  NAND31 U660 ( .A(n418), .B(n417), .C(n416), .Q(n422) );
  XNR21 U661 ( .A(n128), .B(sig_out_local_count[1]), .Q(n418) );
  XNR21 U662 ( .A(sig_cyclesTrame4[2]), .B(sig_out_local_count[2]), .Q(n416)
         );
  XNR21 U663 ( .A(sig_cyclesTrame4[3]), .B(sig_out_local_count[3]), .Q(n417)
         );
  XNR21 U664 ( .A(sig_cyclesTrame1[4]), .B(sig_out_local_count[4]), .Q(n347)
         );
  XNR21 U665 ( .A(sig_cyclesTrame1[2]), .B(sig_out_local_count[2]), .Q(n344)
         );
  XNR21 U666 ( .A(sig_cyclesTrame1[3]), .B(sig_out_local_count[3]), .Q(n345)
         );
  NAND41 U667 ( .A(n82), .B(n83), .C(n84), .D(n85), .Q(n58) );
  NOR21 U668 ( .A(sig_out_local_count[16]), .B(sig_out_local_count[15]), .Q(
        n82) );
  NOR31 U669 ( .A(sig_out_local_count[17]), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n83) );
  NOR40 U670 ( .A(sig_out_local_count[5]), .B(n309), .C(sig_out_local_count[4]), .D(sig_out_local_count[2]), .Q(n84) );
  NOR31 U671 ( .A(sig_out_local_count[17]), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n343) );
  NAND31 U672 ( .A(sig_out_local_count[0]), .B(n126), .C(n367), .Q(n375) );
  NOR31 U673 ( .A(sig_out_local_count[17]), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n367) );
  NAND31 U674 ( .A(sig_out_local_count[0]), .B(n126), .C(n391), .Q(n399) );
  NOR31 U675 ( .A(sig_out_local_count[17]), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n391) );
  INV3 U676 ( .A(n90), .Q(n309) );
  NOR21 U677 ( .A(sig_out_local_count[9]), .B(sig_out_local_count[7]), .Q(n90)
         );
  NOR31 U678 ( .A(n86), .B(n87), .C(n88), .Q(n85) );
  NAND22 U679 ( .A(sig_out_local_count[8]), .B(sig_out_local_count[6]), .Q(n88) );
  NAND31 U680 ( .A(sig_out_local_count[1]), .B(sig_out_local_count[12]), .C(
        sig_out_local_count[3]), .Q(n87) );
  NAND41 U681 ( .A(sig_out_local_count[11]), .B(sig_out_local_count[10]), .C(
        n89), .D(sig_out_local_count[0]), .Q(n86) );
  NOR21 U682 ( .A(sig_out_local_count[14]), .B(sig_out_local_count[13]), .Q(
        n89) );
  XNR21 U683 ( .A(n115), .B(sig_out_local_count[1]), .Q(n346) );
  NAND31 U684 ( .A(n110), .B(n127), .C(sig_state[2]), .Q(n67) );
  NOR21 U685 ( .A(n245), .B(current_state[2]), .Q(n66) );
  NAND31 U686 ( .A(sig_out_local_count[0]), .B(n126), .C(n415), .Q(n423) );
  NOR31 U687 ( .A(sig_out_local_count[17]), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n415) );
  NAND22 U688 ( .A(n66), .B(i_reset_n), .Q(n77) );
  NOR21 U689 ( .A(current_state[0]), .B(current_state[1]), .Q(n91) );
  NOR31 U690 ( .A(current_state[0]), .B(current_state[2]), .C(n130), .Q(n63)
         );
  AOI221 U691 ( .A(n61), .B(current_state[1]), .C(n91), .D(current_state[2]), 
        .Q(n59) );
  NOR21 U692 ( .A(n131), .B(current_state[2]), .Q(n61) );
  NAND31 U693 ( .A(n61), .B(n130), .C(i_reset_n), .Q(N204) );
endmodule

