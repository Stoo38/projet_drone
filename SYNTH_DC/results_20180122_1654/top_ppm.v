
module top_ppm ( i_clk_top, i_reset_n_top, i_sel_top, o_ppm_top );
  input [3:0] i_sel_top;
  input i_clk_top, i_reset_n_top;
  output o_ppm_top;
  wire   sig_clk25, N3, \decoder1/n14 , \decoder1/n13 , \decoder1/n12 ,
         \decoder1/n11 , \decoder1/n10 , \decoder1/n9 , \decoder1/n8 ,
         \send_ppm1/n95 , \send_ppm1/n94 , \send_ppm1/n93 , \send_ppm1/n92 ,
         \send_ppm1/n91 , \send_ppm1/n90 , \send_ppm1/n89 , \send_ppm1/n88 ,
         \send_ppm1/n87 , \send_ppm1/n86 , \send_ppm1/n85 , \send_ppm1/n84 ,
         \send_ppm1/n83 , \send_ppm1/n82 , \send_ppm1/n81 , \send_ppm1/n80 ,
         \send_ppm1/n79 , \send_ppm1/n78 , \send_ppm1/n77 , \send_ppm1/n76 ,
         \send_ppm1/n75 , \send_ppm1/n74 , \send_ppm1/n73 , \send_ppm1/n72 ,
         \send_ppm1/n71 , \send_ppm1/n70 , \send_ppm1/n69 , \send_ppm1/n68 ,
         \send_ppm1/n67 , \send_ppm1/n66 , \send_ppm1/n65 , \send_ppm1/n64 ,
         \send_ppm1/n63 , \send_ppm1/n62 , \send_ppm1/n61 , \send_ppm1/n60 ,
         \send_ppm1/n59 , \send_ppm1/n58 , \send_ppm1/n57 , \send_ppm1/n55 ,
         \send_ppm1/n53 , \send_ppm1/dp_cluster_4/N218 ,
         \send_ppm1/dp_cluster_4/N219 , \send_ppm1/dp_cluster_4/N220 ,
         \send_ppm1/dp_cluster_4/N221 , \send_ppm1/dp_cluster_4/N223 ,
         \send_ppm1/dp_cluster_3/N233 , \send_ppm1/dp_cluster_3/N234 ,
         \send_ppm1/dp_cluster_3/N235 , \send_ppm1/dp_cluster_3/N236 ,
         \send_ppm1/dp_cluster_3/N238 , \send_ppm1/dp_cluster_2/N248 ,
         \send_ppm1/dp_cluster_2/N249 , \send_ppm1/dp_cluster_2/N250 ,
         \send_ppm1/dp_cluster_2/N251 , \send_ppm1/dp_cluster_2/N253 ,
         \send_ppm1/dp_cluster_1/N263 , \send_ppm1/dp_cluster_1/N264 ,
         \send_ppm1/dp_cluster_1/N265 , \send_ppm1/dp_cluster_1/N266 ,
         \send_ppm1/dp_cluster_1/N268 , \send_ppm1/dp_cluster_0/N18 ,
         \send_ppm1/dp_cluster_0/N19 , \send_ppm1/dp_cluster_0/N20 ,
         \send_ppm1/dp_cluster_0/N21 , \send_ppm1/dp_cluster_0/N22 ,
         \send_ppm1/dp_cluster_0/N23 , \send_ppm1/dp_cluster_0/N24 ,
         \send_ppm1/dp_cluster_0/N25 , \send_ppm1/dp_cluster_0/N26 ,
         \send_ppm1/dp_cluster_0/N27 , \send_ppm1/dp_cluster_0/N278 ,
         \send_ppm1/dp_cluster_0/N279 , \send_ppm1/dp_cluster_0/N28 ,
         \send_ppm1/dp_cluster_0/N280 , \send_ppm1/dp_cluster_0/N281 ,
         \send_ppm1/dp_cluster_0/N282 , \send_ppm1/dp_cluster_0/N283 ,
         \send_ppm1/dp_cluster_0/N284 , \send_ppm1/dp_cluster_0/N285 ,
         \send_ppm1/dp_cluster_0/N286 , \send_ppm1/dp_cluster_0/N287 ,
         \send_ppm1/dp_cluster_0/N288 , \send_ppm1/dp_cluster_0/N289 ,
         \send_ppm1/dp_cluster_0/N29 , \send_ppm1/dp_cluster_0/N290 ,
         \send_ppm1/dp_cluster_0/N291 , \send_ppm1/dp_cluster_0/N292 ,
         \send_ppm1/dp_cluster_0/N293 , \send_ppm1/dp_cluster_0/N294 ,
         \send_ppm1/dp_cluster_0/N295 , \send_ppm1/dp_cluster_0/N296 ,
         \send_ppm1/dp_cluster_0/N30 , \send_ppm1/dp_cluster_0/N31 ,
         \send_ppm1/dp_cluster_0/N38 , \send_ppm1/dp_cluster_0/N39 ,
         \send_ppm1/dp_cluster_0/N40 , \send_ppm1/dp_cluster_0/N41 ,
         \send_ppm1/dp_cluster_0/N42 , \send_ppm1/dp_cluster_0/N43 ,
         \send_ppm1/dp_cluster_0/N44 , \send_ppm1/dp_cluster_0/N45 ,
         \send_ppm1/dp_cluster_0/N46 , \send_ppm1/dp_cluster_0/N47 ,
         \send_ppm1/dp_cluster_0/N48 , \send_ppm1/dp_cluster_0/N49 ,
         \send_ppm1/dp_cluster_0/N50 , \send_ppm1/dp_cluster_0/N51 ,
         \send_ppm1/N198 , \send_ppm1/N197 , \send_ppm1/N196 ,
         \send_ppm1/N195 , \send_ppm1/N194 , \send_ppm1/N193 ,
         \send_ppm1/N192 , \send_ppm1/N191 , \send_ppm1/N190 ,
         \send_ppm1/N189 , \send_ppm1/N188 , \send_ppm1/N187 ,
         \send_ppm1/N186 , \send_ppm1/N185 , \send_ppm1/N184 ,
         \send_ppm1/N183 , \send_ppm1/N182 , \send_ppm1/N181 ,
         \send_ppm1/N180 , \send_ppm1/N179 , \send_ppm1/N169 ,
         \send_ppm1/N163 , \send_ppm1/N156 , \send_ppm1/N148 , \send_ppm1/N82 ,
         \send_ppm1/N81 , \send_ppm1/sig_in_init ,
         \send_ppm1/local_counter1/n22 , \send_ppm1/local_counter1/N65 ,
         \send_ppm1/local_counter1/N64 , \send_ppm1/local_counter1/N63 ,
         \send_ppm1/local_counter1/N62 , \send_ppm1/local_counter1/N61 ,
         \send_ppm1/local_counter1/N60 , \send_ppm1/local_counter1/N59 ,
         \send_ppm1/local_counter1/N58 , \send_ppm1/local_counter1/N57 ,
         \send_ppm1/local_counter1/N56 , \send_ppm1/local_counter1/N55 ,
         \send_ppm1/local_counter1/N54 , \send_ppm1/local_counter1/N53 ,
         \send_ppm1/local_counter1/N52 , \send_ppm1/local_counter1/N51 ,
         \send_ppm1/local_counter1/N50 , \send_ppm1/local_counter1/N49 ,
         \send_ppm1/local_counter1/N48 , \send_ppm1/local_counter1/N47 ,
         \send_ppm1/local_counter1/N46 , \send_ppm1/local_counter1/N24 ,
         \send_ppm1/local_counter1/N23 , \send_ppm1/local_counter1/N22 ,
         \send_ppm1/local_counter1/N21 , \send_ppm1/local_counter1/N20 ,
         \send_ppm1/local_counter1/N19 , \send_ppm1/local_counter1/N18 ,
         \send_ppm1/local_counter1/N17 , \send_ppm1/local_counter1/N16 ,
         \send_ppm1/local_counter1/N15 , \send_ppm1/local_counter1/N14 ,
         \send_ppm1/local_counter1/N13 , \send_ppm1/local_counter1/N12 ,
         \send_ppm1/local_counter1/N11 , \send_ppm1/local_counter1/N10 ,
         \send_ppm1/local_counter1/N9 , \send_ppm1/local_counter1/N8 ,
         \send_ppm1/local_counter1/N7 ,
         \send_ppm1/dp_cluster_1/mult_114/A2[8] ,
         \send_ppm1/dp_cluster_1/mult_114/A2[12] ,
         \send_ppm1/dp_cluster_1/mult_114/A1[11] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[1][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[2][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[3][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[4][1] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[4][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[5][1] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[5][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[6][1] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[6][5] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[7][1] ,
         \send_ppm1/dp_cluster_1/mult_114/SUMB[7][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[1][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[2][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[3][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][1] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][1] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][1] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][5] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][1] ,
         \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][5] ,
         \send_ppm1/dp_cluster_2/mult_117/A2[8] ,
         \send_ppm1/dp_cluster_2/mult_117/A2[12] ,
         \send_ppm1/dp_cluster_2/mult_117/A1[11] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[1][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[2][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[3][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[4][1] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[4][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[5][1] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[5][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[6][1] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[6][5] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[7][1] ,
         \send_ppm1/dp_cluster_2/mult_117/SUMB[7][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[1][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[2][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[3][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][1] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][1] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][1] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][5] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][1] ,
         \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][5] ,
         \send_ppm1/dp_cluster_3/mult_120/A2[8] ,
         \send_ppm1/dp_cluster_3/mult_120/A2[12] ,
         \send_ppm1/dp_cluster_3/mult_120/A1[11] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[1][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[2][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[3][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[4][1] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[4][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[5][1] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[5][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[6][1] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[6][5] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[7][1] ,
         \send_ppm1/dp_cluster_3/mult_120/SUMB[7][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[1][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[2][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[3][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][1] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][1] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][1] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][5] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][1] ,
         \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][5] ,
         \send_ppm1/dp_cluster_4/mult_123/A2[8] ,
         \send_ppm1/dp_cluster_4/mult_123/A2[12] ,
         \send_ppm1/dp_cluster_4/mult_123/A1[11] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[1][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[2][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[3][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[4][1] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[4][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[5][1] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[5][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[6][1] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[6][5] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[7][1] ,
         \send_ppm1/dp_cluster_4/mult_123/SUMB[7][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[1][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[2][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[3][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][1] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][1] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][1] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][5] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][1] ,
         \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][5] , n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371;
  wire   [31:0] sig_reg;
  wire   [2:0] \send_ppm1/sig_state ;
  wire   [2:0] \send_ppm1/current_state ;
  wire   [15:0] \send_ppm1/sig_cyclesTrame4 ;
  wire   [15:0] \send_ppm1/sig_cyclesTrame3 ;
  wire   [15:0] \send_ppm1/sig_cyclesTrame2 ;
  wire   [15:0] \send_ppm1/sig_cyclesTrame1 ;
  wire   [31:0] \send_ppm1/sig_reg_storage ;
  wire   [19:0] \send_ppm1/sig_out_local_count ;
  wire   [19:0] \send_ppm1/local_counter1/v_val ;
  wire   [19:2] \send_ppm1/local_counter1/add_34/carry ;
  wire   [20:0] \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry ;
  wire   [19:1] \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry ;
  wire   [19:1] \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry ;
  wire   [20:0] \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry ;
  wire   [16:1] \send_ppm1/dp_cluster_1/sub_114_cf/carry ;
  wire   [16:1] \send_ppm1/dp_cluster_2/sub_117_cf/carry ;
  wire   [16:1] \send_ppm1/dp_cluster_3/sub_120_cf/carry ;
  wire   [16:1] \send_ppm1/dp_cluster_4/sub_123_cf/carry ;
  assign sig_reg[23] = i_sel_top[2];

  OAI222 \send_ppm1/U39  ( .A(n145), .B(n193), .C(\send_ppm1/sig_state [2]), 
        .D(\send_ppm1/n91 ), .Q(\send_ppm1/n64 ) );
  OAI212 \send_ppm1/U16  ( .A(\send_ppm1/sig_state [0]), .B(\send_ppm1/n70 ), 
        .C(n133), .Q(\send_ppm1/n66 ) );
  OAI212 \send_ppm1/U13  ( .A(\send_ppm1/n67 ), .B(\send_ppm1/n57 ), .C(
        \send_ppm1/n68 ), .Q(\send_ppm1/n95 ) );
  OAI222 \send_ppm1/U6  ( .A(n132), .B(\send_ppm1/n58 ), .C(n136), .D(
        \send_ppm1/n65 ), .Q(\send_ppm1/n94 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_1  ( .A(
        \send_ppm1/local_counter1/v_val [1]), .B(
        \send_ppm1/local_counter1/v_val [0]), .CO(
        \send_ppm1/local_counter1/add_34/carry [2]), .S(
        \send_ppm1/local_counter1/N7 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_2  ( .A(
        \send_ppm1/local_counter1/v_val [2]), .B(
        \send_ppm1/local_counter1/add_34/carry [2]), .CO(
        \send_ppm1/local_counter1/add_34/carry [3]), .S(
        \send_ppm1/local_counter1/N8 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_3  ( .A(
        \send_ppm1/local_counter1/v_val [3]), .B(
        \send_ppm1/local_counter1/add_34/carry [3]), .CO(
        \send_ppm1/local_counter1/add_34/carry [4]), .S(
        \send_ppm1/local_counter1/N9 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_4  ( .A(
        \send_ppm1/local_counter1/v_val [4]), .B(
        \send_ppm1/local_counter1/add_34/carry [4]), .CO(
        \send_ppm1/local_counter1/add_34/carry [5]), .S(
        \send_ppm1/local_counter1/N10 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_5  ( .A(
        \send_ppm1/local_counter1/v_val [5]), .B(
        \send_ppm1/local_counter1/add_34/carry [5]), .CO(
        \send_ppm1/local_counter1/add_34/carry [6]), .S(
        \send_ppm1/local_counter1/N11 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_6  ( .A(
        \send_ppm1/local_counter1/v_val [6]), .B(
        \send_ppm1/local_counter1/add_34/carry [6]), .CO(
        \send_ppm1/local_counter1/add_34/carry [7]), .S(
        \send_ppm1/local_counter1/N12 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_7  ( .A(
        \send_ppm1/local_counter1/v_val [7]), .B(
        \send_ppm1/local_counter1/add_34/carry [7]), .CO(
        \send_ppm1/local_counter1/add_34/carry [8]), .S(
        \send_ppm1/local_counter1/N13 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_8  ( .A(
        \send_ppm1/local_counter1/v_val [8]), .B(
        \send_ppm1/local_counter1/add_34/carry [8]), .CO(
        \send_ppm1/local_counter1/add_34/carry [9]), .S(
        \send_ppm1/local_counter1/N14 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_9  ( .A(
        \send_ppm1/local_counter1/v_val [9]), .B(
        \send_ppm1/local_counter1/add_34/carry [9]), .CO(
        \send_ppm1/local_counter1/add_34/carry [10]), .S(
        \send_ppm1/local_counter1/N15 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_10  ( .A(
        \send_ppm1/local_counter1/v_val [10]), .B(
        \send_ppm1/local_counter1/add_34/carry [10]), .CO(
        \send_ppm1/local_counter1/add_34/carry [11]), .S(
        \send_ppm1/local_counter1/N16 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_11  ( .A(
        \send_ppm1/local_counter1/v_val [11]), .B(
        \send_ppm1/local_counter1/add_34/carry [11]), .CO(
        \send_ppm1/local_counter1/add_34/carry [12]), .S(
        \send_ppm1/local_counter1/N17 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_12  ( .A(
        \send_ppm1/local_counter1/v_val [12]), .B(
        \send_ppm1/local_counter1/add_34/carry [12]), .CO(
        \send_ppm1/local_counter1/add_34/carry [13]), .S(
        \send_ppm1/local_counter1/N18 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_13  ( .A(
        \send_ppm1/local_counter1/v_val [13]), .B(
        \send_ppm1/local_counter1/add_34/carry [13]), .CO(
        \send_ppm1/local_counter1/add_34/carry [14]), .S(
        \send_ppm1/local_counter1/N19 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_14  ( .A(
        \send_ppm1/local_counter1/v_val [14]), .B(
        \send_ppm1/local_counter1/add_34/carry [14]), .CO(
        \send_ppm1/local_counter1/add_34/carry [15]), .S(
        \send_ppm1/local_counter1/N20 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_15  ( .A(
        \send_ppm1/local_counter1/v_val [15]), .B(
        \send_ppm1/local_counter1/add_34/carry [15]), .CO(
        \send_ppm1/local_counter1/add_34/carry [16]), .S(
        \send_ppm1/local_counter1/N21 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_16  ( .A(
        \send_ppm1/local_counter1/v_val [16]), .B(
        \send_ppm1/local_counter1/add_34/carry [16]), .CO(
        \send_ppm1/local_counter1/add_34/carry [17]), .S(
        \send_ppm1/local_counter1/N22 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_17  ( .A(
        \send_ppm1/local_counter1/v_val [17]), .B(
        \send_ppm1/local_counter1/add_34/carry [17]), .CO(
        \send_ppm1/local_counter1/add_34/carry [18]), .S(
        \send_ppm1/local_counter1/N23 ) );
  ADD22 \send_ppm1/local_counter1/add_34/U1_1_18  ( .A(
        \send_ppm1/local_counter1/v_val [18]), .B(
        \send_ppm1/local_counter1/add_34/carry [18]), .CO(
        \send_ppm1/local_counter1/add_34/carry [19]), .S(
        \send_ppm1/local_counter1/N24 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_2  ( .A(
        \send_ppm1/sig_cyclesTrame2 [2]), .B(\send_ppm1/sig_cyclesTrame3 [2]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [2]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [3]), .S(
        \send_ppm1/dp_cluster_0/N38 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_3  ( .A(
        \send_ppm1/sig_cyclesTrame2 [3]), .B(\send_ppm1/sig_cyclesTrame3 [3]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [3]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [4]), .S(
        \send_ppm1/dp_cluster_0/N39 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_4  ( .A(
        \send_ppm1/sig_cyclesTrame2 [4]), .B(\send_ppm1/sig_cyclesTrame3 [4]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [4]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [5]), .S(
        \send_ppm1/dp_cluster_0/N40 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_5  ( .A(
        \send_ppm1/sig_cyclesTrame2 [5]), .B(\send_ppm1/sig_cyclesTrame3 [5]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [5]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [6]), .S(
        \send_ppm1/dp_cluster_0/N41 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_6  ( .A(
        \send_ppm1/sig_cyclesTrame2 [6]), .B(\send_ppm1/sig_cyclesTrame3 [6]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [6]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [7]), .S(
        \send_ppm1/dp_cluster_0/N42 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_7  ( .A(
        \send_ppm1/sig_cyclesTrame2 [7]), .B(\send_ppm1/sig_cyclesTrame3 [7]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [7]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [8]), .S(
        \send_ppm1/dp_cluster_0/N43 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_8  ( .A(
        \send_ppm1/sig_cyclesTrame2 [8]), .B(\send_ppm1/sig_cyclesTrame3 [8]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [8]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [9]), .S(
        \send_ppm1/dp_cluster_0/N44 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_9  ( .A(
        \send_ppm1/sig_cyclesTrame2 [9]), .B(\send_ppm1/sig_cyclesTrame3 [9]), 
        .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [9]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [10]), .S(
        \send_ppm1/dp_cluster_0/N45 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_10  ( .A(
        \send_ppm1/sig_cyclesTrame2 [10]), .B(\send_ppm1/sig_cyclesTrame3 [10]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [10]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [11]), .S(
        \send_ppm1/dp_cluster_0/N46 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_11  ( .A(
        \send_ppm1/sig_cyclesTrame2 [11]), .B(\send_ppm1/sig_cyclesTrame3 [11]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [11]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [12]), .S(
        \send_ppm1/dp_cluster_0/N47 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_12  ( .A(
        \send_ppm1/sig_cyclesTrame2 [12]), .B(\send_ppm1/sig_cyclesTrame3 [12]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [12]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [13]), .S(
        \send_ppm1/dp_cluster_0/N48 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_13  ( .A(
        \send_ppm1/sig_cyclesTrame2 [13]), .B(\send_ppm1/sig_cyclesTrame3 [13]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [13]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [14]), .S(
        \send_ppm1/dp_cluster_0/N49 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_14  ( .A(
        \send_ppm1/sig_cyclesTrame2 [14]), .B(\send_ppm1/sig_cyclesTrame3 [14]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [14]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [15]), .S(
        \send_ppm1/dp_cluster_0/N50 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/U1_15  ( .A(
        \send_ppm1/sig_cyclesTrame2 [15]), .B(\send_ppm1/sig_cyclesTrame3 [15]), .CI(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [15]), .CO(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [16]), .S(
        \send_ppm1/dp_cluster_0/N51 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_2  ( .A(
        \send_ppm1/dp_cluster_0/N18 ), .B(n209), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [2]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [3]), .S(
        \send_ppm1/dp_cluster_0/N295 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_3  ( .A(
        \send_ppm1/dp_cluster_0/N19 ), .B(n208), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [3]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [4]), .S(
        \send_ppm1/dp_cluster_0/N294 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_4  ( .A(
        \send_ppm1/dp_cluster_0/N20 ), .B(n207), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [4]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [5]), .S(
        \send_ppm1/dp_cluster_0/N293 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_5  ( .A(
        \send_ppm1/dp_cluster_0/N21 ), .B(n206), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [5]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [6]), .S(
        \send_ppm1/dp_cluster_0/N292 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_6  ( .A(
        \send_ppm1/dp_cluster_0/N22 ), .B(n205), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [6]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [7]), .S(
        \send_ppm1/dp_cluster_0/N291 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_7  ( .A(
        \send_ppm1/dp_cluster_0/N23 ), .B(n204), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [7]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [8]), .S(
        \send_ppm1/dp_cluster_0/N290 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_8  ( .A(
        \send_ppm1/dp_cluster_0/N24 ), .B(n203), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [8]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [9]), .S(
        \send_ppm1/dp_cluster_0/N289 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_9  ( .A(
        \send_ppm1/dp_cluster_0/N25 ), .B(n202), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [9]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [10]), .S(
        \send_ppm1/dp_cluster_0/N288 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_10  ( .A(
        \send_ppm1/dp_cluster_0/N26 ), .B(n199), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [10]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [11]), .S(
        \send_ppm1/dp_cluster_0/N287 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_11  ( .A(
        \send_ppm1/dp_cluster_0/N27 ), .B(n198), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [11]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [12]), .S(
        \send_ppm1/dp_cluster_0/N286 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_12  ( .A(
        \send_ppm1/dp_cluster_0/N28 ), .B(n196), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [12]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [13]), .S(
        \send_ppm1/dp_cluster_0/N285 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_13  ( .A(
        \send_ppm1/dp_cluster_0/N29 ), .B(n195), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [13]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [14]), .S(
        \send_ppm1/dp_cluster_0/N284 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_14  ( .A(
        \send_ppm1/dp_cluster_0/N30 ), .B(n194), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [14]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [15]), .S(
        \send_ppm1/dp_cluster_0/N283 ) );
  ADD32 \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/U1_15  ( .A(
        \send_ppm1/dp_cluster_0/N31 ), .B(n48), .CI(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [15]), .CO(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [16]), .S(
        \send_ppm1/dp_cluster_0/N282 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_2  ( .A(
        \send_ppm1/dp_cluster_0/N295 ), .B(n187), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [2]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [3]), .S(
        \send_ppm1/N180 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_3  ( .A(
        \send_ppm1/dp_cluster_0/N294 ), .B(n186), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [3]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [4]), .S(
        \send_ppm1/N181 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_4  ( .A(
        \send_ppm1/dp_cluster_0/N293 ), .B(n185), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [4]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [5]), .S(
        \send_ppm1/N182 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_5  ( .A(
        \send_ppm1/dp_cluster_0/N292 ), .B(n184), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [5]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [6]), .S(
        \send_ppm1/N183 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_6  ( .A(
        \send_ppm1/dp_cluster_0/N291 ), .B(n183), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [6]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [7]), .S(
        \send_ppm1/N184 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_7  ( .A(
        \send_ppm1/dp_cluster_0/N290 ), .B(n182), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [7]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [8]), .S(
        \send_ppm1/N185 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_8  ( .A(
        \send_ppm1/dp_cluster_0/N289 ), .B(n181), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [8]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [9]), .S(
        \send_ppm1/N186 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_9  ( .A(
        \send_ppm1/dp_cluster_0/N288 ), .B(n180), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [9]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [10]), .S(
        \send_ppm1/N187 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_10  ( .A(
        \send_ppm1/dp_cluster_0/N287 ), .B(n177), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [10]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [11]), .S(
        \send_ppm1/N188 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_11  ( .A(
        \send_ppm1/dp_cluster_0/N286 ), .B(n176), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [11]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [12]), .S(
        \send_ppm1/N189 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_12  ( .A(
        \send_ppm1/dp_cluster_0/N285 ), .B(n174), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [12]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [13]), .S(
        \send_ppm1/N190 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_13  ( .A(
        \send_ppm1/dp_cluster_0/N284 ), .B(n173), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [13]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [14]), .S(
        \send_ppm1/N191 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_14  ( .A(
        \send_ppm1/dp_cluster_0/N283 ), .B(n172), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [14]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [15]), .S(
        \send_ppm1/N192 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_15  ( .A(
        \send_ppm1/dp_cluster_0/N282 ), .B(n171), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [15]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [16]), .S(
        \send_ppm1/N193 ) );
  ADD32 \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/U2_16  ( .A(
        \send_ppm1/dp_cluster_0/N281 ), .B(n170), .CI(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [16]), .CO(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), .S(
        \send_ppm1/N194 ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S3_2_5  ( .A(
        \send_ppm1/sig_reg_storage [2]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[1][5] ), .CI(
        \send_ppm1/sig_reg_storage [1]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[2][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[2][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S3_3_5  ( .A(
        \send_ppm1/sig_reg_storage [3]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[2][5] ), .CI(
        \send_ppm1/sig_reg_storage [2]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[3][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[3][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S3_4_5  ( .A(
        \send_ppm1/sig_reg_storage [4]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[3][5] ), .CI(
        \send_ppm1/sig_reg_storage [3]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[4][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S3_5_5  ( .A(
        \send_ppm1/sig_reg_storage [5]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][5] ), .CI(
        \send_ppm1/sig_reg_storage [4]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[5][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S2_5_1  ( .A(
        \send_ppm1/sig_reg_storage [5]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][1] ), .CI(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[1][5] ), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][1] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[5][1] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S3_6_5  ( .A(
        \send_ppm1/sig_reg_storage [6]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][5] ), .CI(
        \send_ppm1/sig_reg_storage [5]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[6][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S2_6_1  ( .A(
        \send_ppm1/sig_reg_storage [6]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[5][1] ), .CI(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[2][5] ), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][1] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[6][1] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S5_5  ( .A(
        \send_ppm1/sig_reg_storage [7]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][5] ), .CI(
        \send_ppm1/sig_reg_storage [6]), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][5] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[7][5] ) );
  ADD32 \send_ppm1/dp_cluster_1/mult_114/S4_1  ( .A(
        \send_ppm1/sig_reg_storage [7]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[6][1] ), .CI(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[3][5] ), .CO(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][1] ), .S(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[7][1] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S3_2_5  ( .A(
        \send_ppm1/sig_reg_storage [10]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[1][5] ), .CI(
        \send_ppm1/sig_reg_storage [9]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[2][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[2][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S3_3_5  ( .A(
        \send_ppm1/sig_reg_storage [11]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[2][5] ), .CI(
        \send_ppm1/sig_reg_storage [10]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[3][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[3][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S3_4_5  ( .A(
        \send_ppm1/sig_reg_storage [12]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[3][5] ), .CI(
        \send_ppm1/sig_reg_storage [11]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[4][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S3_5_5  ( .A(
        \send_ppm1/sig_reg_storage [13]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][5] ), .CI(
        \send_ppm1/sig_reg_storage [12]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[5][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S2_5_1  ( .A(
        \send_ppm1/sig_reg_storage [13]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][1] ), .CI(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[1][5] ), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][1] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[5][1] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S3_6_5  ( .A(
        \send_ppm1/sig_reg_storage [14]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][5] ), .CI(
        \send_ppm1/sig_reg_storage [13]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[6][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S2_6_1  ( .A(
        \send_ppm1/sig_reg_storage [14]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[5][1] ), .CI(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[2][5] ), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][1] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[6][1] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S5_5  ( .A(
        \send_ppm1/sig_reg_storage [15]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][5] ), .CI(
        \send_ppm1/sig_reg_storage [14]), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][5] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[7][5] ) );
  ADD32 \send_ppm1/dp_cluster_2/mult_117/S4_1  ( .A(
        \send_ppm1/sig_reg_storage [15]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[6][1] ), .CI(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[3][5] ), .CO(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][1] ), .S(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[7][1] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S3_2_5  ( .A(
        \send_ppm1/sig_reg_storage [18]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[1][5] ), .CI(
        \send_ppm1/sig_reg_storage [17]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[2][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[2][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S3_3_5  ( .A(
        \send_ppm1/sig_reg_storage [19]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[2][5] ), .CI(
        \send_ppm1/sig_reg_storage [18]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[3][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[3][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S3_4_5  ( .A(
        \send_ppm1/sig_reg_storage [20]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[3][5] ), .CI(
        \send_ppm1/sig_reg_storage [19]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[4][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S3_5_5  ( .A(
        \send_ppm1/sig_reg_storage [21]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][5] ), .CI(
        \send_ppm1/sig_reg_storage [20]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[5][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S2_5_1  ( .A(
        \send_ppm1/sig_reg_storage [21]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][1] ), .CI(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[1][5] ), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][1] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[5][1] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S3_6_5  ( .A(
        \send_ppm1/sig_reg_storage [22]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][5] ), .CI(
        \send_ppm1/sig_reg_storage [21]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[6][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S2_6_1  ( .A(
        \send_ppm1/sig_reg_storage [22]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[5][1] ), .CI(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[2][5] ), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][1] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[6][1] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S5_5  ( .A(
        \send_ppm1/sig_reg_storage [23]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][5] ), .CI(
        \send_ppm1/sig_reg_storage [22]), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][5] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[7][5] ) );
  ADD32 \send_ppm1/dp_cluster_3/mult_120/S4_1  ( .A(
        \send_ppm1/sig_reg_storage [23]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[6][1] ), .CI(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[3][5] ), .CO(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][1] ), .S(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[7][1] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S3_2_5  ( .A(
        \send_ppm1/sig_reg_storage [26]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[1][5] ), .CI(
        \send_ppm1/sig_reg_storage [25]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[2][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[2][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S3_3_5  ( .A(
        \send_ppm1/sig_reg_storage [27]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[2][5] ), .CI(
        \send_ppm1/sig_reg_storage [26]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[3][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[3][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S3_4_5  ( .A(
        \send_ppm1/sig_reg_storage [28]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[3][5] ), .CI(
        \send_ppm1/sig_reg_storage [27]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[4][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S3_5_5  ( .A(
        \send_ppm1/sig_reg_storage [29]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][5] ), .CI(
        \send_ppm1/sig_reg_storage [28]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[5][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S2_5_1  ( .A(
        \send_ppm1/sig_reg_storage [29]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][1] ), .CI(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[1][5] ), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][1] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[5][1] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S3_6_5  ( .A(
        \send_ppm1/sig_reg_storage [30]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][5] ), .CI(
        \send_ppm1/sig_reg_storage [29]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[6][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S2_6_1  ( .A(
        \send_ppm1/sig_reg_storage [30]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[5][1] ), .CI(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[2][5] ), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][1] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[6][1] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S5_5  ( .A(
        \send_ppm1/sig_reg_storage [31]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][5] ), .CI(
        \send_ppm1/sig_reg_storage [30]), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][5] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[7][5] ) );
  ADD32 \send_ppm1/dp_cluster_4/mult_123/S4_1  ( .A(
        \send_ppm1/sig_reg_storage [31]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[6][1] ), .CI(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[3][5] ), .CO(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][1] ), .S(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[7][1] ) );
  DF3 sig_clk25_reg ( .D(N3), .C(i_clk_top), .Q(sig_clk25) );
  DF3 \send_ppm1/sig_state_reg[1]  ( .D(\send_ppm1/n94 ), .C(n129), .Q(
        \send_ppm1/sig_state [1]), .QN(\send_ppm1/n58 ) );
  DF3 \send_ppm1/current_state_reg[0]  ( .D(\send_ppm1/N81 ), .C(n130), .Q(
        \send_ppm1/current_state [0]), .QN(\send_ppm1/n55 ) );
  DF3 \send_ppm1/sig_state_reg[2]  ( .D(\send_ppm1/n95 ), .C(n130), .Q(
        \send_ppm1/sig_state [2]), .QN(\send_ppm1/n57 ) );
  DF3 \send_ppm1/sig_out_ppm_reg  ( .D(n135), .C(n130), .Q(o_ppm_top) );
  DF3 \send_ppm1/current_state_reg[2]  ( .D(n134), .C(n130), .Q(
        \send_ppm1/current_state [2]) );
  DF3 \send_ppm1/current_state_reg[1]  ( .D(\send_ppm1/N82 ), .C(n130), .Q(
        \send_ppm1/current_state [1]), .QN(\send_ppm1/n53 ) );
  JK3 \send_ppm1/sig_state_reg[0]  ( .J(\send_ppm1/n69 ), .K(n133), .C(
        sig_clk25), .Q(\send_ppm1/sig_state [0]), .QN(\send_ppm1/n59 ) );
  DF3 \send_ppm1/local_counter1/o_count_reg[0]  ( .D(
        \send_ppm1/local_counter1/N46 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [0]), .QN(n3) );
  DF3 \send_ppm1/local_counter1/o_count_reg[1]  ( .D(
        \send_ppm1/local_counter1/N47 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [1]), .QN(n7) );
  DF3 \send_ppm1/local_counter1/o_count_reg[2]  ( .D(
        \send_ppm1/local_counter1/N48 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [2]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[3]  ( .D(
        \send_ppm1/local_counter1/N49 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [3]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[4]  ( .D(
        \send_ppm1/local_counter1/N50 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [4]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[5]  ( .D(
        \send_ppm1/local_counter1/N51 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [5]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[6]  ( .D(
        \send_ppm1/local_counter1/N52 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [6]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[7]  ( .D(
        \send_ppm1/local_counter1/N53 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [7]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[8]  ( .D(
        \send_ppm1/local_counter1/N54 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [8]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[9]  ( .D(
        \send_ppm1/local_counter1/N55 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [9]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[10]  ( .D(
        \send_ppm1/local_counter1/N56 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [10]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[11]  ( .D(
        \send_ppm1/local_counter1/N57 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [11]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[12]  ( .D(
        \send_ppm1/local_counter1/N58 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [12]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[13]  ( .D(
        \send_ppm1/local_counter1/N59 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [13]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[14]  ( .D(
        \send_ppm1/local_counter1/N60 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [14]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[15]  ( .D(
        \send_ppm1/local_counter1/N61 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [15]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[16]  ( .D(
        \send_ppm1/local_counter1/N62 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [16]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[17]  ( .D(
        \send_ppm1/local_counter1/N63 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [17]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[18]  ( .D(
        \send_ppm1/local_counter1/N64 ), .C(n130), .Q(
        \send_ppm1/sig_out_local_count [18]) );
  DF3 \send_ppm1/local_counter1/o_count_reg[19]  ( .D(
        \send_ppm1/local_counter1/N65 ), .C(n129), .Q(
        \send_ppm1/sig_out_local_count [19]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[19]  ( .D(
        \send_ppm1/local_counter1/N65 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [19]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[18]  ( .D(
        \send_ppm1/local_counter1/N64 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [18]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[17]  ( .D(
        \send_ppm1/local_counter1/N63 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [17]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[16]  ( .D(
        \send_ppm1/local_counter1/N62 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [16]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[15]  ( .D(
        \send_ppm1/local_counter1/N61 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [15]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[14]  ( .D(
        \send_ppm1/local_counter1/N60 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [14]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[13]  ( .D(
        \send_ppm1/local_counter1/N59 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [13]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[12]  ( .D(
        \send_ppm1/local_counter1/N58 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [12]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[11]  ( .D(
        \send_ppm1/local_counter1/N57 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [11]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[10]  ( .D(
        \send_ppm1/local_counter1/N56 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [10]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[9]  ( .D(
        \send_ppm1/local_counter1/N55 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [9]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[8]  ( .D(
        \send_ppm1/local_counter1/N54 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [8]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[7]  ( .D(
        \send_ppm1/local_counter1/N53 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [7]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[6]  ( .D(
        \send_ppm1/local_counter1/N52 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [6]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[5]  ( .D(
        \send_ppm1/local_counter1/N51 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [5]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[4]  ( .D(
        \send_ppm1/local_counter1/N50 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [4]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[3]  ( .D(
        \send_ppm1/local_counter1/N49 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [3]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[2]  ( .D(
        \send_ppm1/local_counter1/N48 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [2]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[1]  ( .D(
        \send_ppm1/local_counter1/N47 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [1]) );
  DF3 \send_ppm1/local_counter1/v_val_reg[0]  ( .D(
        \send_ppm1/local_counter1/N46 ), .C(n129), .Q(
        \send_ppm1/local_counter1/v_val [0]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[13]  ( .D(sig_reg[14]), .E(n126), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [13]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[5]  ( .D(sig_reg[6]), .E(n127), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [5]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[6]  ( .D(sig_reg[6]), .E(n127), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [6]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[14]  ( .D(sig_reg[14]), .E(n126), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [14]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[21]  ( .D(sig_reg[22]), .E(n125), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [21]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[22]  ( .D(sig_reg[22]), .E(n125), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [22]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[29]  ( .D(sig_reg[30]), .E(n124), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [29]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[30]  ( .D(sig_reg[30]), .E(n124), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [30]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[4]  ( .D(sig_reg[6]), .E(n127), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [4]), .QN(n9) );
  DFE1 \send_ppm1/sig_reg_storage_reg[12]  ( .D(sig_reg[14]), .E(n126), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [12]), .QN(n10) );
  DFE1 \send_ppm1/sig_reg_storage_reg[20]  ( .D(sig_reg[22]), .E(n125), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [20]), .QN(n11) );
  DFE1 \send_ppm1/sig_reg_storage_reg[28]  ( .D(sig_reg[30]), .E(n124), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [28]), .QN(n8) );
  DFE1 \send_ppm1/sig_reg_storage_reg[2]  ( .D(sig_reg[6]), .E(n128), .C(n130), 
        .Q(\send_ppm1/sig_reg_storage [2]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[3]  ( .D(sig_reg[6]), .E(n128), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [3]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[10]  ( .D(sig_reg[14]), .E(n127), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [10]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[11]  ( .D(sig_reg[14]), .E(n126), .C(
        n129), .Q(\send_ppm1/sig_reg_storage [11]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[18]  ( .D(sig_reg[22]), .E(n125), .C(
        n129), .Q(\send_ppm1/sig_reg_storage [18]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[19]  ( .D(sig_reg[22]), .E(n125), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [19]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[26]  ( .D(sig_reg[30]), .E(n124), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [26]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[27]  ( .D(sig_reg[30]), .E(n124), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [27]) );
  DFE1 \send_ppm1/sig_reg_storage_reg[1]  ( .D(sig_reg[6]), .E(n128), .C(n130), 
        .Q(\send_ppm1/sig_reg_storage [1]), .QN(n23) );
  DFE1 \send_ppm1/sig_reg_storage_reg[17]  ( .D(sig_reg[22]), .E(n126), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [17]), .QN(n22) );
  DFE1 \send_ppm1/sig_reg_storage_reg[9]  ( .D(sig_reg[14]), .E(n127), .C(n130), .Q(\send_ppm1/sig_reg_storage [9]), .QN(n21) );
  DFE1 \send_ppm1/sig_reg_storage_reg[25]  ( .D(sig_reg[30]), .E(n124), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [25]), .QN(n20) );
  DFE1 \send_ppm1/sig_reg_storage_reg[31]  ( .D(sig_reg[31]), .E(n124), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [31]), .QN(n19) );
  DFE1 \send_ppm1/sig_reg_storage_reg[7]  ( .D(sig_reg[7]), .E(n127), .C(n130), 
        .Q(\send_ppm1/sig_reg_storage [7]), .QN(n18) );
  DFE1 \send_ppm1/sig_reg_storage_reg[23]  ( .D(sig_reg[23]), .E(n125), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [23]), .QN(n17) );
  DFE1 \send_ppm1/sig_reg_storage_reg[15]  ( .D(sig_reg[15]), .E(n126), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [15]), .QN(n16) );
  DFE1 \send_ppm1/sig_reg_storage_reg[16]  ( .D(sig_reg[22]), .E(n126), .C(
        n130), .Q(\send_ppm1/sig_reg_storage [16]), .QN(n15) );
  DFE1 \send_ppm1/sig_reg_storage_reg[8]  ( .D(sig_reg[14]), .E(n127), .C(n130), .Q(\send_ppm1/sig_reg_storage [8]), .QN(n14) );
  DFE1 \send_ppm1/sig_reg_storage_reg[24]  ( .D(sig_reg[30]), .E(n125), .C(
        sig_clk25), .Q(\send_ppm1/sig_reg_storage [24]), .QN(n12) );
  DFE1 \send_ppm1/sig_reg_storage_reg[0]  ( .D(sig_reg[6]), .E(n128), .C(n130), 
        .Q(\send_ppm1/sig_reg_storage [0]), .QN(n13) );
  NOR21 U5 ( .A(n122), .B(n25), .Q(\send_ppm1/local_counter1/N65 ) );
  MUX22 U6 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[5][5] ), .B(n158), .S(
        \send_ppm1/dp_cluster_1/mult_114/A2[8] ), .Q(n2) );
  MUX22 U7 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[5][5] ), .B(n178), .S(
        \send_ppm1/dp_cluster_2/mult_117/A2[8] ), .Q(n4) );
  MUX22 U8 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[5][5] ), .B(n200), .S(
        \send_ppm1/dp_cluster_4/mult_123/A2[8] ), .Q(n5) );
  MUX22 U9 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[5][5] ), .B(n190), .S(
        \send_ppm1/dp_cluster_3/mult_120/A2[8] ), .Q(n6) );
  XNR21 U10 ( .A(n151), .B(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [18]), .Q(
        \send_ppm1/dp_cluster_0/N279 ) );
  NOR21 U11 ( .A(\send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [18]), 
        .B(\send_ppm1/dp_cluster_0/N279 ), .Q(n56) );
  INV3 U12 ( .A(n54), .Q(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [19]) );
  NOR21 U13 ( .A(\send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [18]), 
        .B(n151), .Q(n54) );
  XNR21 U14 ( .A(n151), .B(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [17]), .Q(
        \send_ppm1/dp_cluster_0/N280 ) );
  INV3 U15 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [16]), .Q(
        n151) );
  NOR21 U16 ( .A(\send_ppm1/sig_cyclesTrame1 [12]), .B(n61), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [13]) );
  INV3 U17 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [12]), .Q(
        n61) );
  INV3 U18 ( .A(\send_ppm1/dp_cluster_0/N48 ), .Q(n174) );
  INV3 U19 ( .A(n55), .Q(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [18]) );
  NOR21 U20 ( .A(\send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), 
        .B(\send_ppm1/dp_cluster_0/N280 ), .Q(n55) );
  INV3 U21 ( .A(n53), .Q(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [18]) );
  NOR21 U22 ( .A(\send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [17]), 
        .B(n151), .Q(n53) );
  INV3 U23 ( .A(\send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [16]), .Q(
        n170) );
  XNR21 U24 ( .A(n151), .B(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [16]), .Q(
        \send_ppm1/dp_cluster_0/N281 ) );
  NOR21 U25 ( .A(\send_ppm1/sig_cyclesTrame1 [15]), .B(n64), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [16]) );
  INV3 U26 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [15]), .Q(
        n64) );
  NOR21 U27 ( .A(\send_ppm1/sig_cyclesTrame1 [13]), .B(n62), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [14]) );
  INV3 U28 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [13]), .Q(
        n62) );
  NOR21 U29 ( .A(\send_ppm1/sig_cyclesTrame1 [14]), .B(n63), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [15]) );
  INV3 U30 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [14]), .Q(
        n63) );
  NOR21 U31 ( .A(\send_ppm1/sig_cyclesTrame1 [11]), .B(n60), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [12]) );
  INV3 U32 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [11]), .Q(
        n60) );
  INV3 U33 ( .A(\send_ppm1/sig_cyclesTrame4 [12]), .Q(n196) );
  XOR21 U34 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [12]), 
        .B(n154), .Q(\send_ppm1/dp_cluster_0/N28 ) );
  INV3 U35 ( .A(\send_ppm1/dp_cluster_0/N45 ), .Q(n180) );
  INV3 U36 ( .A(\send_ppm1/dp_cluster_0/N46 ), .Q(n177) );
  INV3 U37 ( .A(\send_ppm1/dp_cluster_0/N47 ), .Q(n176) );
  INV3 U38 ( .A(\send_ppm1/dp_cluster_0/N49 ), .Q(n173) );
  INV3 U39 ( .A(\send_ppm1/dp_cluster_0/N50 ), .Q(n172) );
  INV3 U40 ( .A(\send_ppm1/dp_cluster_0/N51 ), .Q(n171) );
  NOR21 U41 ( .A(\send_ppm1/sig_cyclesTrame1 [10]), .B(n28), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [11]) );
  INV3 U42 ( .A(\send_ppm1/sig_cyclesTrame1 [12]), .Q(n154) );
  INV3 U43 ( .A(n52), .Q(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [17]) );
  NOR21 U44 ( .A(\send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [16]), 
        .B(n151), .Q(n52) );
  INV3 U45 ( .A(n28), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [10]) );
  NOR21 U46 ( .A(n160), .B(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [9]), .Q(n28) );
  XOR21 U47 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [12]), .B(
        \send_ppm1/dp_cluster_2/N250 ), .Q(\send_ppm1/sig_cyclesTrame2 [12])
         );
  XOR21 U48 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [12]), .B(
        \send_ppm1/dp_cluster_3/N235 ), .Q(\send_ppm1/sig_cyclesTrame3 [12])
         );
  XOR21 U49 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [12]), .B(
        \send_ppm1/dp_cluster_1/N265 ), .Q(\send_ppm1/sig_cyclesTrame1 [12])
         );
  XOR21 U50 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [12]), .B(
        \send_ppm1/dp_cluster_4/N220 ), .Q(\send_ppm1/sig_cyclesTrame4 [12])
         );
  XOR21 U51 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [15]), 
        .B(n33), .Q(\send_ppm1/dp_cluster_0/N31 ) );
  NOR21 U52 ( .A(\send_ppm1/sig_cyclesTrame1 [5]), .B(n59), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [6]) );
  INV3 U53 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [5]), .Q(
        n59) );
  NOR21 U54 ( .A(\send_ppm1/sig_cyclesTrame1 [8]), .B(n27), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [9]) );
  NOR21 U55 ( .A(n89), .B(n90), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [13]) );
  INV3 U56 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [12]), .Q(n89) );
  INV3 U57 ( .A(\send_ppm1/dp_cluster_2/N250 ), .Q(n90) );
  NOR21 U58 ( .A(n103), .B(n104), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [13]) );
  INV3 U59 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [12]), .Q(n103) );
  INV3 U60 ( .A(\send_ppm1/dp_cluster_3/N235 ), .Q(n104) );
  NOR21 U61 ( .A(n75), .B(n76), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [13]) );
  INV3 U62 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [12]), .Q(n75) );
  INV3 U63 ( .A(\send_ppm1/dp_cluster_1/N265 ), .Q(n76) );
  NOR21 U64 ( .A(n117), .B(n118), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [13]) );
  INV3 U65 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [12]), .Q(n117) );
  INV3 U66 ( .A(\send_ppm1/dp_cluster_4/N220 ), .Q(n118) );
  INV3 U67 ( .A(\send_ppm1/sig_cyclesTrame4 [14]), .Q(n194) );
  XOR21 U68 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [14]), 
        .B(n152), .Q(\send_ppm1/dp_cluster_0/N30 ) );
  INV3 U69 ( .A(\send_ppm1/sig_cyclesTrame4 [10]), .Q(n199) );
  XOR21 U70 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [10]), 
        .B(n157), .Q(\send_ppm1/dp_cluster_0/N26 ) );
  INV3 U71 ( .A(\send_ppm1/sig_cyclesTrame4 [9]), .Q(n202) );
  XNR21 U72 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [9]), .B(
        n160), .Q(\send_ppm1/dp_cluster_0/N25 ) );
  INV3 U73 ( .A(\send_ppm1/sig_cyclesTrame4 [13]), .Q(n195) );
  XOR21 U74 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [13]), 
        .B(n153), .Q(\send_ppm1/dp_cluster_0/N29 ) );
  INV3 U75 ( .A(\send_ppm1/sig_cyclesTrame4 [11]), .Q(n198) );
  XOR21 U76 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [11]), 
        .B(n156), .Q(\send_ppm1/dp_cluster_0/N27 ) );
  INV3 U77 ( .A(\send_ppm1/dp_cluster_0/N41 ), .Q(n184) );
  INV3 U78 ( .A(\send_ppm1/dp_cluster_0/N42 ), .Q(n183) );
  INV3 U79 ( .A(\send_ppm1/dp_cluster_0/N43 ), .Q(n182) );
  INV3 U80 ( .A(\send_ppm1/dp_cluster_0/N44 ), .Q(n181) );
  INV3 U81 ( .A(\send_ppm1/sig_cyclesTrame1 [9]), .Q(n160) );
  INV3 U82 ( .A(\send_ppm1/sig_cyclesTrame1 [13]), .Q(n153) );
  INV3 U83 ( .A(\send_ppm1/sig_cyclesTrame1 [11]), .Q(n156) );
  INV3 U84 ( .A(\send_ppm1/sig_cyclesTrame1 [14]), .Q(n152) );
  INV3 U85 ( .A(\send_ppm1/sig_cyclesTrame1 [10]), .Q(n157) );
  INV3 U86 ( .A(n26), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [7]) );
  NOR21 U87 ( .A(n163), .B(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [6]), .Q(n26) );
  INV3 U88 ( .A(n27), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [8]) );
  NOR21 U89 ( .A(n162), .B(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [7]), .Q(n27) );
  XOR21 U90 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [13]), .B(
        \send_ppm1/dp_cluster_2/N249 ), .Q(\send_ppm1/sig_cyclesTrame2 [13])
         );
  XOR21 U91 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [9]), .B(
        \send_ppm1/dp_cluster_2/N253 ), .Q(\send_ppm1/sig_cyclesTrame2 [9]) );
  XOR21 U92 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [11]), .B(
        \send_ppm1/dp_cluster_2/N251 ), .Q(\send_ppm1/sig_cyclesTrame2 [11])
         );
  XOR21 U93 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [13]), .B(
        \send_ppm1/dp_cluster_3/N234 ), .Q(\send_ppm1/sig_cyclesTrame3 [13])
         );
  XOR21 U94 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [9]), .B(
        \send_ppm1/dp_cluster_3/N238 ), .Q(\send_ppm1/sig_cyclesTrame3 [9]) );
  XOR21 U95 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [11]), .B(
        \send_ppm1/dp_cluster_3/N236 ), .Q(\send_ppm1/sig_cyclesTrame3 [11])
         );
  XNR21 U96 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [14]), .B(
        \send_ppm1/dp_cluster_2/N248 ), .Q(\send_ppm1/sig_cyclesTrame2 [14])
         );
  XNR21 U97 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [10]), .B(n4), .Q(
        \send_ppm1/sig_cyclesTrame2 [10]) );
  XNR21 U98 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [14]), .B(
        \send_ppm1/dp_cluster_3/N233 ), .Q(\send_ppm1/sig_cyclesTrame3 [14])
         );
  XNR21 U99 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [10]), .B(n6), .Q(
        \send_ppm1/sig_cyclesTrame3 [10]) );
  XOR21 U100 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [9]), .B(
        \send_ppm1/dp_cluster_1/N268 ), .Q(\send_ppm1/sig_cyclesTrame1 [9]) );
  XOR21 U101 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [13]), .B(
        \send_ppm1/dp_cluster_1/N264 ), .Q(\send_ppm1/sig_cyclesTrame1 [13])
         );
  XOR21 U102 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [13]), .B(
        \send_ppm1/dp_cluster_4/N219 ), .Q(\send_ppm1/sig_cyclesTrame4 [13])
         );
  XOR21 U103 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [9]), .B(
        \send_ppm1/dp_cluster_4/N223 ), .Q(\send_ppm1/sig_cyclesTrame4 [9]) );
  XOR21 U104 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [11]), .B(
        \send_ppm1/dp_cluster_1/N266 ), .Q(\send_ppm1/sig_cyclesTrame1 [11])
         );
  XOR21 U105 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [11]), .B(
        \send_ppm1/dp_cluster_4/N221 ), .Q(\send_ppm1/sig_cyclesTrame4 [11])
         );
  XOR21 U106 ( .A(n254), .B(n155), .Q(\send_ppm1/dp_cluster_1/N265 ) );
  XOR21 U107 ( .A(n236), .B(n197), .Q(\send_ppm1/dp_cluster_4/N220 ) );
  XOR21 U108 ( .A(n248), .B(n175), .Q(\send_ppm1/dp_cluster_2/N250 ) );
  XOR21 U109 ( .A(n242), .B(n189), .Q(\send_ppm1/dp_cluster_3/N235 ) );
  XNR21 U110 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [14]), .B(
        \send_ppm1/dp_cluster_1/N263 ), .Q(\send_ppm1/sig_cyclesTrame1 [14])
         );
  XNR21 U111 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [14]), .B(
        \send_ppm1/dp_cluster_4/N218 ), .Q(\send_ppm1/sig_cyclesTrame4 [14])
         );
  XNR21 U112 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [10]), .B(n2), .Q(
        \send_ppm1/sig_cyclesTrame1 [10]) );
  XNR21 U113 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [10]), .B(n5), .Q(
        \send_ppm1/sig_cyclesTrame4 [10]) );
  NAND22 U114 ( .A(\decoder1/n11 ), .B(n141), .Q(sig_reg[14]) );
  INV3 U115 ( .A(sig_reg[15]), .Q(n141) );
  NOR21 U116 ( .A(n72), .B(n73), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [10]) );
  INV3 U117 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [9]), .Q(n72) );
  INV3 U118 ( .A(\send_ppm1/dp_cluster_1/N268 ), .Q(n73) );
  NOR21 U119 ( .A(n114), .B(n115), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [10]) );
  INV3 U120 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [9]), .Q(n114) );
  INV3 U121 ( .A(\send_ppm1/dp_cluster_4/N223 ), .Q(n115) );
  NOR21 U122 ( .A(n86), .B(n87), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [10]) );
  INV3 U123 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [9]), .Q(n86) );
  INV3 U124 ( .A(\send_ppm1/dp_cluster_2/N253 ), .Q(n87) );
  NOR21 U125 ( .A(n100), .B(n101), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [10]) );
  INV3 U126 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [9]), .Q(n100) );
  INV3 U127 ( .A(\send_ppm1/dp_cluster_3/N238 ), .Q(n101) );
  NOR21 U128 ( .A(n91), .B(n92), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [14]) );
  INV3 U129 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [13]), .Q(n91) );
  INV3 U130 ( .A(\send_ppm1/dp_cluster_2/N249 ), .Q(n92) );
  NOR21 U131 ( .A(n105), .B(n106), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [14]) );
  INV3 U132 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [13]), .Q(n105) );
  INV3 U133 ( .A(\send_ppm1/dp_cluster_3/N234 ), .Q(n106) );
  NOR21 U134 ( .A(n77), .B(n78), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [14]) );
  INV3 U135 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [13]), .Q(n77) );
  INV3 U136 ( .A(\send_ppm1/dp_cluster_1/N264 ), .Q(n78) );
  NOR21 U137 ( .A(n119), .B(n120), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [14]) );
  INV3 U138 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [13]), .Q(n119) );
  INV3 U139 ( .A(\send_ppm1/dp_cluster_4/N219 ), .Q(n120) );
  NOR21 U140 ( .A(n32), .B(n74), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [12]) );
  INV3 U141 ( .A(\send_ppm1/dp_cluster_1/N266 ), .Q(n74) );
  NOR21 U142 ( .A(n47), .B(n116), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [12]) );
  INV3 U143 ( .A(\send_ppm1/dp_cluster_4/N221 ), .Q(n116) );
  NOR21 U144 ( .A(n37), .B(n88), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [12]) );
  INV3 U145 ( .A(\send_ppm1/dp_cluster_2/N251 ), .Q(n88) );
  NOR21 U146 ( .A(n42), .B(n102), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [12]) );
  INV3 U147 ( .A(\send_ppm1/dp_cluster_3/N236 ), .Q(n102) );
  NOR21 U148 ( .A(\send_ppm1/sig_cyclesTrame1 [4]), .B(n58), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [5]) );
  INV3 U149 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [4]), .Q(
        n58) );
  INV3 U150 ( .A(\send_ppm1/sig_cyclesTrame4 [6]), .Q(n205) );
  XNR21 U151 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [6]), 
        .B(n163), .Q(\send_ppm1/dp_cluster_0/N22 ) );
  INV3 U152 ( .A(\send_ppm1/sig_cyclesTrame4 [5]), .Q(n206) );
  XOR21 U153 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [5]), 
        .B(n164), .Q(\send_ppm1/dp_cluster_0/N21 ) );
  INV3 U154 ( .A(\send_ppm1/sig_cyclesTrame4 [7]), .Q(n204) );
  XNR21 U155 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [7]), 
        .B(n162), .Q(\send_ppm1/dp_cluster_0/N23 ) );
  INV3 U156 ( .A(\send_ppm1/sig_cyclesTrame4 [8]), .Q(n203) );
  XOR21 U157 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [8]), 
        .B(n161), .Q(\send_ppm1/dp_cluster_0/N24 ) );
  INV3 U158 ( .A(\send_ppm1/dp_cluster_0/N39 ), .Q(n186) );
  INV3 U159 ( .A(\send_ppm1/dp_cluster_0/N40 ), .Q(n185) );
  INV3 U160 ( .A(\send_ppm1/N198 ), .Q(n149) );
  INV3 U161 ( .A(\send_ppm1/sig_cyclesTrame1 [7]), .Q(n162) );
  INV3 U162 ( .A(\send_ppm1/sig_cyclesTrame1 [8]), .Q(n161) );
  INV3 U163 ( .A(\send_ppm1/sig_cyclesTrame1 [5]), .Q(n164) );
  INV3 U164 ( .A(\send_ppm1/sig_cyclesTrame1 [6]), .Q(n163) );
  INV3 U165 ( .A(n38), .Q(\send_ppm1/sig_cyclesTrame2 [15]) );
  NOR21 U166 ( .A(\send_ppm1/dp_cluster_2/N248 ), .B(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [14]), .Q(n38) );
  INV3 U167 ( .A(n43), .Q(\send_ppm1/sig_cyclesTrame3 [15]) );
  NOR21 U168 ( .A(\send_ppm1/dp_cluster_3/N233 ), .B(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [14]), .Q(n43) );
  INV3 U169 ( .A(n33), .Q(\send_ppm1/sig_cyclesTrame1 [15]) );
  NOR21 U170 ( .A(\send_ppm1/dp_cluster_1/N263 ), .B(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [14]), .Q(n33) );
  INV3 U171 ( .A(n48), .Q(\send_ppm1/sig_cyclesTrame4 [15]) );
  NOR21 U172 ( .A(\send_ppm1/dp_cluster_4/N218 ), .B(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [14]), .Q(n48) );
  INV3 U173 ( .A(n32), .Q(\send_ppm1/dp_cluster_1/sub_114_cf/carry [11]) );
  NOR21 U174 ( .A(n2), .B(\send_ppm1/dp_cluster_1/sub_114_cf/carry [10]), .Q(
        n32) );
  INV3 U175 ( .A(n47), .Q(\send_ppm1/dp_cluster_4/sub_123_cf/carry [11]) );
  NOR21 U176 ( .A(n5), .B(\send_ppm1/dp_cluster_4/sub_123_cf/carry [10]), .Q(
        n47) );
  INV3 U177 ( .A(n37), .Q(\send_ppm1/dp_cluster_2/sub_117_cf/carry [11]) );
  NOR21 U178 ( .A(n4), .B(\send_ppm1/dp_cluster_2/sub_117_cf/carry [10]), .Q(
        n37) );
  INV3 U179 ( .A(n42), .Q(\send_ppm1/dp_cluster_3/sub_120_cf/carry [11]) );
  NOR21 U180 ( .A(n6), .B(\send_ppm1/dp_cluster_3/sub_120_cf/carry [10]), .Q(
        n42) );
  BUF2 U181 ( .A(n146), .Q(n124) );
  BUF2 U182 ( .A(n146), .Q(n125) );
  BUF2 U183 ( .A(n146), .Q(n126) );
  BUF2 U184 ( .A(n146), .Q(n127) );
  BUF2 U185 ( .A(n146), .Q(n128) );
  NOR40 U186 ( .A(n150), .B(n283), .C(n282), .D(n281), .Q(\send_ppm1/N198 ) );
  INV3 U187 ( .A(n269), .Q(n150) );
  NAND22 U188 ( .A(n280), .B(n279), .Q(n281) );
  NAND31 U189 ( .A(n278), .B(n277), .C(n276), .Q(n282) );
  NOR31 U190 ( .A(\send_ppm1/n71 ), .B(\send_ppm1/n72 ), .C(\send_ppm1/n70 ), 
        .Q(\send_ppm1/n69 ) );
  XOR21 U191 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [8]), .B(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[7][1] ), .Q(
        \send_ppm1/sig_cyclesTrame2 [8]) );
  XOR21 U192 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [5]), .B(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[4][1] ), .Q(
        \send_ppm1/sig_cyclesTrame2 [5]) );
  XOR21 U193 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [7]), .B(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[6][1] ), .Q(
        \send_ppm1/sig_cyclesTrame2 [7]) );
  NAND31 U194 ( .A(n139), .B(n137), .C(\decoder1/n14 ), .Q(\decoder1/n11 ) );
  XOR21 U195 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [8]), .B(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[7][1] ), .Q(
        \send_ppm1/sig_cyclesTrame3 [8]) );
  XOR21 U196 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [5]), .B(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[4][1] ), .Q(
        \send_ppm1/sig_cyclesTrame3 [5]) );
  XOR21 U197 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [7]), .B(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[6][1] ), .Q(
        \send_ppm1/sig_cyclesTrame3 [7]) );
  XNR21 U198 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [6]), .B(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[5][1] ), .Q(
        \send_ppm1/sig_cyclesTrame2 [6]) );
  XNR21 U199 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [6]), .B(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[5][1] ), .Q(
        \send_ppm1/sig_cyclesTrame3 [6]) );
  XOR21 U200 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [8]), .B(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[7][1] ), .Q(
        \send_ppm1/sig_cyclesTrame1 [8]) );
  XOR21 U201 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [8]), .B(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[7][1] ), .Q(
        \send_ppm1/sig_cyclesTrame4 [8]) );
  XOR21 U202 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [5]), .B(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[4][1] ), .Q(
        \send_ppm1/sig_cyclesTrame1 [5]) );
  XOR21 U203 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [5]), .B(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[4][1] ), .Q(
        \send_ppm1/sig_cyclesTrame4 [5]) );
  XOR21 U204 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [7]), .B(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[6][1] ), .Q(
        \send_ppm1/sig_cyclesTrame1 [7]) );
  XOR21 U205 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [7]), .B(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[6][1] ), .Q(
        \send_ppm1/sig_cyclesTrame4 [7]) );
  NAND41 U206 ( .A(n169), .B(n275), .C(n274), .D(n273), .Q(n283) );
  INV3 U207 ( .A(n270), .Q(n169) );
  NOR21 U208 ( .A(n272), .B(n271), .Q(n273) );
  NAND22 U209 ( .A(n7), .B(\send_ppm1/N179 ), .Q(n275) );
  XOR21 U210 ( .A(\send_ppm1/dp_cluster_2/mult_117/A1[11] ), .B(n247), .Q(
        \send_ppm1/dp_cluster_2/N249 ) );
  NOR21 U211 ( .A(n175), .B(n248), .Q(n247) );
  XOR21 U212 ( .A(\send_ppm1/dp_cluster_3/mult_120/A1[11] ), .B(n241), .Q(
        \send_ppm1/dp_cluster_3/N234 ) );
  NOR21 U213 ( .A(n189), .B(n242), .Q(n241) );
  XOR21 U214 ( .A(\send_ppm1/dp_cluster_1/mult_114/A1[11] ), .B(n253), .Q(
        \send_ppm1/dp_cluster_1/N264 ) );
  NOR21 U215 ( .A(n155), .B(n254), .Q(n253) );
  XOR21 U216 ( .A(\send_ppm1/dp_cluster_4/mult_123/A1[11] ), .B(n235), .Q(
        \send_ppm1/dp_cluster_4/N219 ) );
  NOR21 U217 ( .A(n197), .B(n236), .Q(n235) );
  XOR21 U218 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[4][5] ), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][1] ), .Q(
        \send_ppm1/dp_cluster_1/N268 ) );
  XOR21 U219 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[4][5] ), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][1] ), .Q(
        \send_ppm1/dp_cluster_4/N223 ) );
  XOR21 U220 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[4][5] ), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][1] ), .Q(
        \send_ppm1/dp_cluster_2/N253 ) );
  XOR21 U221 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[4][5] ), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][1] ), .Q(
        \send_ppm1/dp_cluster_3/N238 ) );
  XNR21 U222 ( .A(n244), .B(\send_ppm1/dp_cluster_2/mult_117/A2[12] ), .Q(
        \send_ppm1/dp_cluster_2/N248 ) );
  NAND22 U223 ( .A(\send_ppm1/dp_cluster_2/mult_117/A1[11] ), .B(n245), .Q(
        n244) );
  NOR21 U224 ( .A(n81), .B(n16), .Q(\send_ppm1/dp_cluster_2/mult_117/A2[12] )
         );
  NOR21 U225 ( .A(n175), .B(n246), .Q(n245) );
  XNR21 U226 ( .A(n238), .B(\send_ppm1/dp_cluster_3/mult_120/A2[12] ), .Q(
        \send_ppm1/dp_cluster_3/N233 ) );
  NAND22 U227 ( .A(\send_ppm1/dp_cluster_3/mult_120/A1[11] ), .B(n239), .Q(
        n238) );
  NOR21 U228 ( .A(n95), .B(n17), .Q(\send_ppm1/dp_cluster_3/mult_120/A2[12] )
         );
  NOR21 U229 ( .A(n189), .B(n240), .Q(n239) );
  XNR21 U230 ( .A(n250), .B(\send_ppm1/dp_cluster_1/mult_114/A2[12] ), .Q(
        \send_ppm1/dp_cluster_1/N263 ) );
  NAND22 U231 ( .A(\send_ppm1/dp_cluster_1/mult_114/A1[11] ), .B(n251), .Q(
        n250) );
  NOR21 U232 ( .A(n67), .B(n18), .Q(\send_ppm1/dp_cluster_1/mult_114/A2[12] )
         );
  NOR21 U233 ( .A(n155), .B(n252), .Q(n251) );
  XNR21 U234 ( .A(n232), .B(\send_ppm1/dp_cluster_4/mult_123/A2[12] ), .Q(
        \send_ppm1/dp_cluster_4/N218 ) );
  NAND22 U235 ( .A(\send_ppm1/dp_cluster_4/mult_123/A1[11] ), .B(n233), .Q(
        n232) );
  NOR21 U236 ( .A(n109), .B(n19), .Q(\send_ppm1/dp_cluster_4/mult_123/A2[12] )
         );
  NOR21 U237 ( .A(n197), .B(n234), .Q(n233) );
  XNR21 U238 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [6]), .B(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[5][1] ), .Q(
        \send_ppm1/sig_cyclesTrame1 [6]) );
  XNR21 U239 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [6]), .B(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[5][1] ), .Q(
        \send_ppm1/sig_cyclesTrame4 [6]) );
  XOR21 U240 ( .A(n159), .B(\send_ppm1/dp_cluster_1/mult_114/SUMB[6][5] ), .Q(
        \send_ppm1/dp_cluster_1/N266 ) );
  XOR21 U241 ( .A(n201), .B(\send_ppm1/dp_cluster_4/mult_123/SUMB[6][5] ), .Q(
        \send_ppm1/dp_cluster_4/N221 ) );
  XOR21 U242 ( .A(n179), .B(\send_ppm1/dp_cluster_2/mult_117/SUMB[6][5] ), .Q(
        \send_ppm1/dp_cluster_2/N251 ) );
  XOR21 U243 ( .A(n191), .B(\send_ppm1/dp_cluster_3/mult_120/SUMB[6][5] ), .Q(
        \send_ppm1/dp_cluster_3/N236 ) );
  NAND22 U244 ( .A(\decoder1/n11 ), .B(n138), .Q(sig_reg[6]) );
  INV3 U245 ( .A(sig_reg[7]), .Q(n138) );
  NAND22 U246 ( .A(\decoder1/n11 ), .B(n139), .Q(sig_reg[22]) );
  NAND22 U247 ( .A(\decoder1/n11 ), .B(n137), .Q(sig_reg[30]) );
  XNR21 U248 ( .A(\send_ppm1/dp_cluster_0/N296 ), .B(n24), .Q(\send_ppm1/N179 ) );
  NOR40 U249 ( .A(n371), .B(n370), .C(n369), .D(n368), .Q(\send_ppm1/N148 ) );
  NAND41 U250 ( .A(n168), .B(n355), .C(n354), .D(n353), .Q(n371) );
  NAND41 U251 ( .A(n359), .B(n358), .C(n357), .D(n356), .Q(n370) );
  NAND41 U252 ( .A(n363), .B(n362), .C(n361), .D(n360), .Q(n369) );
  NOR40 U253 ( .A(n268), .B(n267), .C(n266), .D(n265), .Q(n269) );
  NAND22 U254 ( .A(n259), .B(n258), .Q(n267) );
  NAND22 U255 ( .A(n264), .B(n263), .Q(n265) );
  NAND31 U256 ( .A(n257), .B(n256), .C(n255), .Q(n268) );
  AOI221 U257 ( .A(n7), .B(n3), .C(n3), .D(\send_ppm1/N179 ), .Q(n270) );
  NAND22 U258 ( .A(n159), .B(\send_ppm1/dp_cluster_1/mult_114/SUMB[6][5] ), 
        .Q(n254) );
  NAND22 U259 ( .A(n201), .B(\send_ppm1/dp_cluster_4/mult_123/SUMB[6][5] ), 
        .Q(n236) );
  NAND22 U260 ( .A(n179), .B(\send_ppm1/dp_cluster_2/mult_117/SUMB[6][5] ), 
        .Q(n248) );
  NAND22 U261 ( .A(n191), .B(\send_ppm1/dp_cluster_3/mult_120/SUMB[6][5] ), 
        .Q(n242) );
  INV3 U262 ( .A(\send_ppm1/n71 ), .Q(n211) );
  INV3 U263 ( .A(\send_ppm1/n60 ), .Q(n146) );
  NOR21 U264 ( .A(n30), .B(n68), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [6]) );
  INV3 U265 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[4][1] ), .Q(n68) );
  NOR21 U266 ( .A(n45), .B(n110), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [6]) );
  INV3 U267 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[4][1] ), .Q(n110) );
  NOR21 U268 ( .A(n35), .B(n82), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [6]) );
  INV3 U269 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[4][1] ), .Q(n82) );
  NOR21 U270 ( .A(n40), .B(n96), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [6]) );
  INV3 U271 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[4][1] ), .Q(n96) );
  NOR21 U272 ( .A(n65), .B(n66), .Q(\send_ppm1/dp_cluster_1/mult_114/A2[8] )
         );
  INV3 U273 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[4][5] ), .Q(n66) );
  INV3 U274 ( .A(\send_ppm1/dp_cluster_1/mult_114/CARRYB[7][1] ), .Q(n65) );
  NOR21 U275 ( .A(n107), .B(n108), .Q(\send_ppm1/dp_cluster_4/mult_123/A2[8] )
         );
  INV3 U276 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[4][5] ), .Q(n108) );
  INV3 U277 ( .A(\send_ppm1/dp_cluster_4/mult_123/CARRYB[7][1] ), .Q(n107) );
  NOR21 U278 ( .A(n79), .B(n80), .Q(\send_ppm1/dp_cluster_2/mult_117/A2[8] )
         );
  INV3 U279 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[4][5] ), .Q(n80) );
  INV3 U280 ( .A(\send_ppm1/dp_cluster_2/mult_117/CARRYB[7][1] ), .Q(n79) );
  NOR21 U281 ( .A(n93), .B(n94), .Q(\send_ppm1/dp_cluster_3/mult_120/A2[8] )
         );
  INV3 U282 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[4][5] ), .Q(n94) );
  INV3 U283 ( .A(\send_ppm1/dp_cluster_3/mult_120/CARRYB[7][1] ), .Q(n93) );
  NOR21 U284 ( .A(n70), .B(n71), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [9]) );
  INV3 U285 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [8]), .Q(n70) );
  INV3 U286 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[7][1] ), .Q(n71) );
  NOR21 U287 ( .A(n112), .B(n113), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [9]) );
  INV3 U288 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [8]), .Q(n112) );
  INV3 U289 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[7][1] ), .Q(n113) );
  NOR21 U290 ( .A(n84), .B(n85), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [9]) );
  INV3 U291 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [8]), .Q(n84) );
  INV3 U292 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[7][1] ), .Q(n85) );
  NOR21 U293 ( .A(n98), .B(n99), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [9]) );
  INV3 U294 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [8]), .Q(n98) );
  INV3 U295 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[7][1] ), .Q(n99) );
  NOR21 U296 ( .A(n31), .B(n69), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [8]) );
  INV3 U297 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[6][1] ), .Q(n69) );
  NOR21 U298 ( .A(n46), .B(n111), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [8]) );
  INV3 U299 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[6][1] ), .Q(n111) );
  NOR21 U300 ( .A(n36), .B(n83), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [8]) );
  INV3 U301 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[6][1] ), .Q(n83) );
  NOR21 U302 ( .A(n41), .B(n97), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [8]) );
  INV3 U303 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[6][1] ), .Q(n97) );
  INV3 U304 ( .A(n50), .Q(
        \send_ppm1/dp_cluster_0/add_3_root_sub_235_cf/carry [2]) );
  NOR21 U305 ( .A(n15), .B(n14), .Q(n50) );
  NOR21 U306 ( .A(\send_ppm1/sig_cyclesTrame1 [3]), .B(n57), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [4]) );
  INV3 U307 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [3]), .Q(
        n57) );
  INV3 U308 ( .A(\send_ppm1/sig_cyclesTrame4 [3]), .Q(n208) );
  XOR21 U309 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [3]), 
        .B(n166), .Q(\send_ppm1/dp_cluster_0/N19 ) );
  INV3 U310 ( .A(\send_ppm1/sig_cyclesTrame4 [4]), .Q(n207) );
  XOR21 U311 ( .A(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [4]), 
        .B(n165), .Q(\send_ppm1/dp_cluster_0/N20 ) );
  INV3 U312 ( .A(n51), .Q(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [2]) );
  INV3 U313 ( .A(\send_ppm1/dp_cluster_0/N38 ), .Q(n187) );
  NOR21 U314 ( .A(n24), .B(\send_ppm1/dp_cluster_0/N296 ), .Q(n51) );
  NAND22 U315 ( .A(n179), .B(\send_ppm1/dp_cluster_2/mult_117/SUMB[6][5] ), 
        .Q(n246) );
  NAND22 U316 ( .A(n191), .B(\send_ppm1/dp_cluster_3/mult_120/SUMB[6][5] ), 
        .Q(n240) );
  NAND22 U317 ( .A(n159), .B(\send_ppm1/dp_cluster_1/mult_114/SUMB[6][5] ), 
        .Q(n252) );
  NAND22 U318 ( .A(n201), .B(\send_ppm1/dp_cluster_4/mult_123/SUMB[6][5] ), 
        .Q(n234) );
  INV3 U319 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[7][5] ), .Q(n175) );
  INV3 U320 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[7][5] ), .Q(n189) );
  INV3 U321 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[7][5] ), .Q(n155) );
  INV3 U322 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[7][5] ), .Q(n197) );
  NOR21 U323 ( .A(n7), .B(n15), .Q(n306) );
  NOR21 U324 ( .A(n7), .B(n14), .Q(n328) );
  BUF2 U325 ( .A(\send_ppm1/local_counter1/n22 ), .Q(n122) );
  BUF2 U326 ( .A(\send_ppm1/local_counter1/n22 ), .Q(n121) );
  NAND22 U327 ( .A(\decoder1/n8 ), .B(\decoder1/n12 ), .Q(sig_reg[15]) );
  INV3 U328 ( .A(\send_ppm1/sig_cyclesTrame1 [2]), .Q(n167) );
  NOR21 U329 ( .A(n7), .B(n12), .Q(n284) );
  INV3 U330 ( .A(\send_ppm1/n72 ), .Q(n145) );
  INV3 U331 ( .A(\send_ppm1/n76 ), .Q(n148) );
  INV3 U332 ( .A(\send_ppm1/sig_cyclesTrame1 [3]), .Q(n166) );
  INV3 U333 ( .A(\send_ppm1/sig_cyclesTrame1 [4]), .Q(n165) );
  INV3 U334 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[5][5] ), .Q(n158) );
  INV3 U335 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[5][5] ), .Q(n200) );
  INV3 U336 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[5][5] ), .Q(n178) );
  INV3 U337 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[5][5] ), .Q(n190) );
  INV3 U338 ( .A(n249), .Q(n159) );
  NAND22 U339 ( .A(\send_ppm1/dp_cluster_1/mult_114/A2[8] ), .B(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[5][5] ), .Q(n249) );
  INV3 U340 ( .A(n231), .Q(n201) );
  NAND22 U341 ( .A(\send_ppm1/dp_cluster_4/mult_123/A2[8] ), .B(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[5][5] ), .Q(n231) );
  INV3 U342 ( .A(n243), .Q(n179) );
  NAND22 U343 ( .A(\send_ppm1/dp_cluster_2/mult_117/A2[8] ), .B(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[5][5] ), .Q(n243) );
  INV3 U344 ( .A(n237), .Q(n191) );
  NAND22 U345 ( .A(\send_ppm1/dp_cluster_3/mult_120/A2[8] ), .B(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[5][5] ), .Q(n237) );
  BUF2 U346 ( .A(\send_ppm1/local_counter1/n22 ), .Q(n123) );
  XOR21 U347 ( .A(n14), .B(n15), .Q(n24) );
  INV3 U348 ( .A(n31), .Q(\send_ppm1/dp_cluster_1/sub_114_cf/carry [7]) );
  NOR21 U349 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[5][1] ), .B(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [6]), .Q(n31) );
  INV3 U350 ( .A(n46), .Q(\send_ppm1/dp_cluster_4/sub_123_cf/carry [7]) );
  NOR21 U351 ( .A(\send_ppm1/dp_cluster_4/mult_123/SUMB[5][1] ), .B(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [6]), .Q(n46) );
  INV3 U352 ( .A(n36), .Q(\send_ppm1/dp_cluster_2/sub_117_cf/carry [7]) );
  NOR21 U353 ( .A(\send_ppm1/dp_cluster_2/mult_117/SUMB[5][1] ), .B(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [6]), .Q(n36) );
  INV3 U354 ( .A(n41), .Q(\send_ppm1/dp_cluster_3/sub_120_cf/carry [7]) );
  NOR21 U355 ( .A(\send_ppm1/dp_cluster_3/mult_120/SUMB[5][1] ), .B(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [6]), .Q(n41) );
  INV3 U356 ( .A(\send_ppm1/dp_cluster_2/mult_117/CARRYB[7][5] ), .Q(n81) );
  INV3 U357 ( .A(\send_ppm1/dp_cluster_3/mult_120/CARRYB[7][5] ), .Q(n95) );
  INV3 U358 ( .A(\send_ppm1/dp_cluster_1/mult_114/CARRYB[7][5] ), .Q(n67) );
  INV3 U359 ( .A(\send_ppm1/dp_cluster_4/mult_123/CARRYB[7][5] ), .Q(n109) );
  NOR21 U360 ( .A(n122), .B(n214), .Q(\send_ppm1/local_counter1/N63 ) );
  INV3 U361 ( .A(\send_ppm1/local_counter1/N23 ), .Q(n214) );
  NOR21 U362 ( .A(n122), .B(n216), .Q(\send_ppm1/local_counter1/N61 ) );
  INV3 U363 ( .A(\send_ppm1/local_counter1/N21 ), .Q(n216) );
  NOR21 U364 ( .A(n122), .B(n218), .Q(\send_ppm1/local_counter1/N59 ) );
  INV3 U365 ( .A(\send_ppm1/local_counter1/N19 ), .Q(n218) );
  NOR21 U366 ( .A(n122), .B(n220), .Q(\send_ppm1/local_counter1/N57 ) );
  INV3 U367 ( .A(\send_ppm1/local_counter1/N17 ), .Q(n220) );
  NOR21 U368 ( .A(n122), .B(n222), .Q(\send_ppm1/local_counter1/N55 ) );
  INV3 U369 ( .A(\send_ppm1/local_counter1/N15 ), .Q(n222) );
  NOR21 U370 ( .A(n122), .B(n224), .Q(\send_ppm1/local_counter1/N53 ) );
  INV3 U371 ( .A(\send_ppm1/local_counter1/N13 ), .Q(n224) );
  NOR21 U372 ( .A(n121), .B(n225), .Q(\send_ppm1/local_counter1/N52 ) );
  INV3 U373 ( .A(\send_ppm1/local_counter1/N12 ), .Q(n225) );
  NOR21 U374 ( .A(n121), .B(n226), .Q(\send_ppm1/local_counter1/N51 ) );
  INV3 U375 ( .A(\send_ppm1/local_counter1/N11 ), .Q(n226) );
  NOR21 U376 ( .A(n121), .B(n227), .Q(\send_ppm1/local_counter1/N50 ) );
  INV3 U377 ( .A(\send_ppm1/local_counter1/N10 ), .Q(n227) );
  NOR21 U378 ( .A(n121), .B(n228), .Q(\send_ppm1/local_counter1/N49 ) );
  INV3 U379 ( .A(\send_ppm1/local_counter1/N9 ), .Q(n228) );
  NOR21 U380 ( .A(n121), .B(n229), .Q(\send_ppm1/local_counter1/N48 ) );
  INV3 U381 ( .A(\send_ppm1/local_counter1/N8 ), .Q(n229) );
  NOR21 U382 ( .A(n121), .B(n230), .Q(\send_ppm1/local_counter1/N47 ) );
  INV3 U383 ( .A(\send_ppm1/local_counter1/N7 ), .Q(n230) );
  NOR21 U384 ( .A(n123), .B(n213), .Q(\send_ppm1/local_counter1/N64 ) );
  INV3 U385 ( .A(\send_ppm1/local_counter1/N24 ), .Q(n213) );
  NOR21 U386 ( .A(n123), .B(n215), .Q(\send_ppm1/local_counter1/N62 ) );
  INV3 U387 ( .A(\send_ppm1/local_counter1/N22 ), .Q(n215) );
  NOR21 U388 ( .A(n123), .B(n217), .Q(\send_ppm1/local_counter1/N60 ) );
  INV3 U389 ( .A(\send_ppm1/local_counter1/N20 ), .Q(n217) );
  NOR21 U390 ( .A(n123), .B(n219), .Q(\send_ppm1/local_counter1/N58 ) );
  INV3 U391 ( .A(\send_ppm1/local_counter1/N18 ), .Q(n219) );
  NOR21 U392 ( .A(n123), .B(n221), .Q(\send_ppm1/local_counter1/N56 ) );
  INV3 U393 ( .A(\send_ppm1/local_counter1/N16 ), .Q(n221) );
  NOR21 U394 ( .A(n123), .B(n223), .Q(\send_ppm1/local_counter1/N54 ) );
  INV3 U395 ( .A(\send_ppm1/local_counter1/N14 ), .Q(n223) );
  INV3 U396 ( .A(\send_ppm1/n70 ), .Q(n135) );
  INV3 U397 ( .A(n350), .Q(n168) );
  NOR21 U398 ( .A(n7), .B(n13), .Q(n350) );
  BUF6 U399 ( .A(sig_clk25), .Q(n129) );
  NOR21 U400 ( .A(n129), .B(n131), .Q(N3) );
  INV3 U401 ( .A(i_reset_n_top), .Q(n131) );
  NAND41 U402 ( .A(\send_ppm1/n82 ), .B(\send_ppm1/n83 ), .C(\send_ppm1/n84 ), 
        .D(\send_ppm1/n85 ), .Q(\send_ppm1/n71 ) );
  NOR21 U403 ( .A(\send_ppm1/sig_out_local_count [16]), .B(
        \send_ppm1/sig_out_local_count [15]), .Q(\send_ppm1/n82 ) );
  NOR31 U404 ( .A(\send_ppm1/n86 ), .B(\send_ppm1/n87 ), .C(\send_ppm1/n88 ), 
        .Q(\send_ppm1/n85 ) );
  NOR31 U405 ( .A(\send_ppm1/sig_out_local_count [17]), .B(
        \send_ppm1/sig_out_local_count [19]), .C(
        \send_ppm1/sig_out_local_count [18]), .Q(\send_ppm1/n83 ) );
  XOR21 U406 ( .A(\send_ppm1/sig_reg_storage [8]), .B(
        \send_ppm1/sig_reg_storage [9]), .Q(\send_ppm1/sig_cyclesTrame2 [2])
         );
  NOR31 U407 ( .A(\send_ppm1/sig_state [0]), .B(\send_ppm1/sig_state [1]), .C(
        \send_ppm1/n57 ), .Q(\send_ppm1/n72 ) );
  XOR21 U408 ( .A(\send_ppm1/sig_reg_storage [16]), .B(
        \send_ppm1/sig_reg_storage [17]), .Q(\send_ppm1/sig_cyclesTrame3 [2])
         );
  NOR31 U409 ( .A(\send_ppm1/current_state [0]), .B(
        \send_ppm1/current_state [2]), .C(\send_ppm1/n53 ), .Q(\send_ppm1/n76 ) );
  OAI2111 U410 ( .A(n142), .B(\decoder1/n10 ), .C(\decoder1/n13 ), .D(
        \decoder1/n12 ), .Q(sig_reg[7]) );
  INV3 U411 ( .A(\decoder1/n14 ), .Q(n142) );
  NAND22 U412 ( .A(sig_reg[23]), .B(\decoder1/n14 ), .Q(\decoder1/n13 ) );
  NAND41 U413 ( .A(n342), .B(n345), .C(n344), .D(n343), .Q(n346) );
  XNR21 U414 ( .A(\send_ppm1/sig_cyclesTrame2 [13]), .B(
        \send_ppm1/sig_out_local_count [13]), .Q(n343) );
  XNR21 U415 ( .A(\send_ppm1/sig_cyclesTrame2 [15]), .B(
        \send_ppm1/sig_out_local_count [15]), .Q(n345) );
  XNR21 U416 ( .A(\send_ppm1/sig_cyclesTrame2 [14]), .B(
        \send_ppm1/sig_out_local_count [14]), .Q(n344) );
  NAND41 U417 ( .A(n320), .B(n323), .C(n322), .D(n321), .Q(n324) );
  XNR21 U418 ( .A(\send_ppm1/sig_cyclesTrame3 [13]), .B(
        \send_ppm1/sig_out_local_count [13]), .Q(n321) );
  XNR21 U419 ( .A(\send_ppm1/sig_cyclesTrame3 [15]), .B(
        \send_ppm1/sig_out_local_count [15]), .Q(n323) );
  XNR21 U420 ( .A(\send_ppm1/sig_cyclesTrame3 [14]), .B(
        \send_ppm1/sig_out_local_count [14]), .Q(n322) );
  NAND41 U421 ( .A(n364), .B(n367), .C(n366), .D(n365), .Q(n368) );
  XNR21 U422 ( .A(\send_ppm1/sig_cyclesTrame1 [13]), .B(
        \send_ppm1/sig_out_local_count [13]), .Q(n365) );
  XNR21 U423 ( .A(\send_ppm1/sig_cyclesTrame1 [15]), .B(
        \send_ppm1/sig_out_local_count [15]), .Q(n367) );
  XNR21 U424 ( .A(\send_ppm1/sig_cyclesTrame1 [14]), .B(
        \send_ppm1/sig_out_local_count [14]), .Q(n366) );
  NAND41 U425 ( .A(n298), .B(n301), .C(n300), .D(n299), .Q(n302) );
  XNR21 U426 ( .A(\send_ppm1/sig_cyclesTrame4 [13]), .B(
        \send_ppm1/sig_out_local_count [13]), .Q(n299) );
  XNR21 U427 ( .A(\send_ppm1/sig_cyclesTrame4 [15]), .B(
        \send_ppm1/sig_out_local_count [15]), .Q(n301) );
  XNR21 U428 ( .A(\send_ppm1/sig_cyclesTrame4 [14]), .B(
        \send_ppm1/sig_out_local_count [14]), .Q(n300) );
  NOR40 U429 ( .A(\send_ppm1/sig_out_local_count [5]), .B(n212), .C(
        \send_ppm1/sig_out_local_count [4]), .D(
        \send_ppm1/sig_out_local_count [2]), .Q(\send_ppm1/n84 ) );
  INV3 U430 ( .A(\send_ppm1/n90 ), .Q(n212) );
  NOR21 U431 ( .A(\send_ppm1/sig_out_local_count [9]), .B(
        \send_ppm1/sig_out_local_count [7]), .Q(\send_ppm1/n90 ) );
  XNR21 U432 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [3]), .B(
        \send_ppm1/sig_reg_storage [10]), .Q(\send_ppm1/sig_cyclesTrame2 [3])
         );
  XNR21 U433 ( .A(\send_ppm1/dp_cluster_2/sub_117_cf/carry [4]), .B(
        \send_ppm1/sig_reg_storage [11]), .Q(\send_ppm1/sig_cyclesTrame2 [4])
         );
  NOR40 U434 ( .A(\send_ppm1/sig_out_local_count [19]), .B(
        \send_ppm1/sig_out_local_count [18]), .C(
        \send_ppm1/sig_out_local_count [17]), .D(
        \send_ppm1/sig_out_local_count [16]), .Q(n342) );
  NOR40 U435 ( .A(\send_ppm1/sig_out_local_count [19]), .B(
        \send_ppm1/sig_out_local_count [18]), .C(
        \send_ppm1/sig_out_local_count [17]), .D(
        \send_ppm1/sig_out_local_count [16]), .Q(n320) );
  NOR40 U436 ( .A(\send_ppm1/sig_out_local_count [19]), .B(
        \send_ppm1/sig_out_local_count [18]), .C(
        \send_ppm1/sig_out_local_count [17]), .D(
        \send_ppm1/sig_out_local_count [16]), .Q(n364) );
  NOR40 U437 ( .A(\send_ppm1/sig_out_local_count [19]), .B(
        \send_ppm1/sig_out_local_count [18]), .C(
        \send_ppm1/sig_out_local_count [17]), .D(
        \send_ppm1/sig_out_local_count [16]), .Q(n298) );
  XNR21 U438 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [3]), .B(
        \send_ppm1/sig_reg_storage [18]), .Q(\send_ppm1/sig_cyclesTrame3 [3])
         );
  XNR21 U439 ( .A(\send_ppm1/dp_cluster_3/sub_120_cf/carry [4]), .B(
        \send_ppm1/sig_reg_storage [19]), .Q(\send_ppm1/sig_cyclesTrame3 [4])
         );
  INV3 U440 ( .A(\send_ppm1/N169 ), .Q(n193) );
  AOI311 U441 ( .A(\send_ppm1/N148 ), .B(\send_ppm1/n58 ), .C(
        \send_ppm1/sig_state [0]), .D(\send_ppm1/n92 ), .Q(\send_ppm1/n91 ) );
  NOR40 U442 ( .A(n305), .B(n304), .C(n303), .D(n302), .Q(\send_ppm1/N169 ) );
  NAND41 U443 ( .A(n341), .B(n340), .C(n339), .D(n338), .Q(n347) );
  XNR21 U444 ( .A(\send_ppm1/sig_cyclesTrame2 [9]), .B(
        \send_ppm1/sig_out_local_count [9]), .Q(n338) );
  XNR21 U445 ( .A(\send_ppm1/sig_cyclesTrame2 [10]), .B(
        \send_ppm1/sig_out_local_count [10]), .Q(n339) );
  XNR21 U446 ( .A(\send_ppm1/sig_cyclesTrame2 [11]), .B(
        \send_ppm1/sig_out_local_count [11]), .Q(n340) );
  NAND41 U447 ( .A(n319), .B(n318), .C(n317), .D(n316), .Q(n325) );
  XNR21 U448 ( .A(\send_ppm1/sig_cyclesTrame3 [9]), .B(
        \send_ppm1/sig_out_local_count [9]), .Q(n316) );
  XNR21 U449 ( .A(\send_ppm1/sig_cyclesTrame3 [10]), .B(
        \send_ppm1/sig_out_local_count [10]), .Q(n317) );
  XNR21 U450 ( .A(\send_ppm1/sig_cyclesTrame3 [11]), .B(
        \send_ppm1/sig_out_local_count [11]), .Q(n318) );
  NAND41 U451 ( .A(n297), .B(n296), .C(n295), .D(n294), .Q(n303) );
  XNR21 U452 ( .A(\send_ppm1/sig_cyclesTrame4 [9]), .B(
        \send_ppm1/sig_out_local_count [9]), .Q(n294) );
  XNR21 U453 ( .A(\send_ppm1/sig_cyclesTrame4 [10]), .B(
        \send_ppm1/sig_out_local_count [10]), .Q(n295) );
  XNR21 U454 ( .A(\send_ppm1/sig_cyclesTrame4 [11]), .B(
        \send_ppm1/sig_out_local_count [11]), .Q(n296) );
  NAND41 U455 ( .A(\send_ppm1/sig_out_local_count [11]), .B(
        \send_ppm1/sig_out_local_count [10]), .C(\send_ppm1/n89 ), .D(
        \send_ppm1/sig_out_local_count [0]), .Q(\send_ppm1/n86 ) );
  NOR21 U456 ( .A(\send_ppm1/sig_out_local_count [14]), .B(
        \send_ppm1/sig_out_local_count [13]), .Q(\send_ppm1/n89 ) );
  XOR21 U457 ( .A(\send_ppm1/sig_reg_storage [24]), .B(
        \send_ppm1/sig_reg_storage [25]), .Q(\send_ppm1/sig_cyclesTrame4 [2])
         );
  XOR21 U458 ( .A(\send_ppm1/sig_reg_storage [0]), .B(
        \send_ppm1/sig_reg_storage [1]), .Q(\send_ppm1/sig_cyclesTrame1 [2])
         );
  NAND41 U459 ( .A(n337), .B(n336), .C(n335), .D(n334), .Q(n348) );
  XNR21 U460 ( .A(\send_ppm1/sig_cyclesTrame2 [5]), .B(
        \send_ppm1/sig_out_local_count [5]), .Q(n334) );
  XNR21 U461 ( .A(\send_ppm1/sig_cyclesTrame2 [7]), .B(
        \send_ppm1/sig_out_local_count [7]), .Q(n336) );
  XNR21 U462 ( .A(\send_ppm1/sig_cyclesTrame2 [6]), .B(
        \send_ppm1/sig_out_local_count [6]), .Q(n335) );
  NAND41 U463 ( .A(n315), .B(n314), .C(n313), .D(n312), .Q(n326) );
  XNR21 U464 ( .A(\send_ppm1/sig_cyclesTrame3 [5]), .B(
        \send_ppm1/sig_out_local_count [5]), .Q(n312) );
  XNR21 U465 ( .A(\send_ppm1/sig_cyclesTrame3 [7]), .B(
        \send_ppm1/sig_out_local_count [7]), .Q(n314) );
  XNR21 U466 ( .A(\send_ppm1/sig_cyclesTrame3 [6]), .B(
        \send_ppm1/sig_out_local_count [6]), .Q(n313) );
  NAND41 U467 ( .A(n293), .B(n292), .C(n291), .D(n290), .Q(n304) );
  XNR21 U468 ( .A(\send_ppm1/sig_cyclesTrame4 [5]), .B(
        \send_ppm1/sig_out_local_count [5]), .Q(n290) );
  XNR21 U469 ( .A(\send_ppm1/sig_cyclesTrame4 [7]), .B(
        \send_ppm1/sig_out_local_count [7]), .Q(n292) );
  XNR21 U470 ( .A(\send_ppm1/sig_cyclesTrame4 [6]), .B(
        \send_ppm1/sig_out_local_count [6]), .Q(n291) );
  XOR21 U471 ( .A(\send_ppm1/sig_reg_storage [4]), .B(
        \send_ppm1/sig_reg_storage [0]), .Q(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[4][1] ) );
  XOR21 U472 ( .A(\send_ppm1/sig_reg_storage [28]), .B(
        \send_ppm1/sig_reg_storage [24]), .Q(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[4][1] ) );
  XOR21 U473 ( .A(\send_ppm1/sig_reg_storage [12]), .B(
        \send_ppm1/sig_reg_storage [8]), .Q(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[4][1] ) );
  XOR21 U474 ( .A(\send_ppm1/sig_reg_storage [20]), .B(
        \send_ppm1/sig_reg_storage [16]), .Q(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[4][1] ) );
  XNR21 U475 ( .A(n13), .B(\send_ppm1/sig_reg_storage [24]), .Q(
        \send_ppm1/dp_cluster_0/N296 ) );
  NAND41 U476 ( .A(n188), .B(n333), .C(n332), .D(n331), .Q(n349) );
  INV3 U477 ( .A(n328), .Q(n188) );
  NOR21 U478 ( .A(n330), .B(n329), .Q(n331) );
  XNR21 U479 ( .A(\send_ppm1/sig_cyclesTrame2 [2]), .B(
        \send_ppm1/sig_out_local_count [2]), .Q(n332) );
  NAND41 U480 ( .A(n192), .B(n311), .C(n310), .D(n309), .Q(n327) );
  INV3 U481 ( .A(n306), .Q(n192) );
  NOR21 U482 ( .A(n308), .B(n307), .Q(n309) );
  XNR21 U483 ( .A(\send_ppm1/sig_cyclesTrame3 [2]), .B(
        \send_ppm1/sig_out_local_count [2]), .Q(n310) );
  NAND41 U484 ( .A(n210), .B(n289), .C(n288), .D(n287), .Q(n305) );
  INV3 U485 ( .A(n284), .Q(n210) );
  NOR21 U486 ( .A(n286), .B(n285), .Q(n287) );
  XNR21 U487 ( .A(\send_ppm1/sig_cyclesTrame4 [2]), .B(
        \send_ppm1/sig_out_local_count [2]), .Q(n288) );
  XOR21 U488 ( .A(\send_ppm1/sig_reg_storage [15]), .B(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[7][5] ), .Q(
        \send_ppm1/dp_cluster_2/mult_117/A1[11] ) );
  XOR21 U489 ( .A(\send_ppm1/sig_reg_storage [23]), .B(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[7][5] ), .Q(
        \send_ppm1/dp_cluster_3/mult_120/A1[11] ) );
  XOR21 U490 ( .A(\send_ppm1/sig_reg_storage [7]), .B(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[7][5] ), .Q(
        \send_ppm1/dp_cluster_1/mult_114/A1[11] ) );
  XOR21 U491 ( .A(\send_ppm1/sig_reg_storage [31]), .B(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[7][5] ), .Q(
        \send_ppm1/dp_cluster_4/mult_123/A1[11] ) );
  XNR21 U492 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [3]), .B(
        \send_ppm1/sig_reg_storage [2]), .Q(\send_ppm1/sig_cyclesTrame1 [3])
         );
  XNR21 U493 ( .A(\send_ppm1/dp_cluster_1/sub_114_cf/carry [4]), .B(
        \send_ppm1/sig_reg_storage [3]), .Q(\send_ppm1/sig_cyclesTrame1 [4])
         );
  XNR21 U494 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [3]), .B(
        \send_ppm1/sig_reg_storage [26]), .Q(\send_ppm1/sig_cyclesTrame4 [3])
         );
  XNR21 U495 ( .A(\send_ppm1/dp_cluster_4/sub_123_cf/carry [4]), .B(
        \send_ppm1/sig_reg_storage [27]), .Q(\send_ppm1/sig_cyclesTrame4 [4])
         );
  AOI221 U496 ( .A(\send_ppm1/n63 ), .B(\send_ppm1/current_state [1]), .C(
        \send_ppm1/n62 ), .D(\send_ppm1/current_state [2]), .Q(\send_ppm1/n60 ) );
  NOR21 U497 ( .A(\send_ppm1/sig_reg_storage [24]), .B(n13), .Q(n49) );
  NAND22 U498 ( .A(i_reset_n_top), .B(\send_ppm1/n79 ), .Q(\send_ppm1/n70 ) );
  NOR21 U499 ( .A(n147), .B(\send_ppm1/current_state [2]), .Q(\send_ppm1/n79 )
         );
  INV3 U500 ( .A(\send_ppm1/n62 ), .Q(n147) );
  OAI2111 U501 ( .A(n137), .B(\decoder1/n8 ), .C(\decoder1/n9 ), .D(
        \decoder1/n10 ), .Q(sig_reg[31]) );
  NAND22 U502 ( .A(i_sel_top[3]), .B(n140), .Q(\decoder1/n9 ) );
  INV3 U503 ( .A(i_sel_top[1]), .Q(n140) );
  OAI2111 U504 ( .A(\send_ppm1/N198 ), .B(n148), .C(\send_ppm1/n78 ), .D(
        i_reset_n_top), .Q(\send_ppm1/N82 ) );
  NAND31 U505 ( .A(\send_ppm1/n72 ), .B(n211), .C(\send_ppm1/n79 ), .Q(
        \send_ppm1/n78 ) );
  OAI2111 U506 ( .A(\send_ppm1/n64 ), .B(\send_ppm1/n80 ), .C(\send_ppm1/n81 ), 
        .D(i_reset_n_top), .Q(\send_ppm1/N81 ) );
  NAND22 U507 ( .A(\send_ppm1/n63 ), .B(\send_ppm1/n53 ), .Q(\send_ppm1/n80 )
         );
  NAND31 U508 ( .A(n211), .B(n145), .C(\send_ppm1/n79 ), .Q(\send_ppm1/n81 )
         );
  NOR21 U509 ( .A(\send_ppm1/n55 ), .B(\send_ppm1/current_state [2]), .Q(
        \send_ppm1/n63 ) );
  NOR21 U510 ( .A(n143), .B(i_sel_top[1]), .Q(\decoder1/n14 ) );
  NAND31 U511 ( .A(n262), .B(n261), .C(n260), .Q(n266) );
  XNR21 U512 ( .A(\send_ppm1/N193 ), .B(\send_ppm1/sig_out_local_count [15]), 
        .Q(n262) );
  XNR21 U513 ( .A(\send_ppm1/N192 ), .B(\send_ppm1/sig_out_local_count [14]), 
        .Q(n261) );
  XNR21 U514 ( .A(\send_ppm1/N194 ), .B(\send_ppm1/sig_out_local_count [16]), 
        .Q(n260) );
  XOR21 U515 ( .A(\send_ppm1/sig_cyclesTrame2 [3]), .B(
        \send_ppm1/sig_out_local_count [3]), .Q(n330) );
  NAND31 U516 ( .A(\send_ppm1/sig_out_local_count [1]), .B(
        \send_ppm1/sig_out_local_count [12]), .C(
        \send_ppm1/sig_out_local_count [3]), .Q(\send_ppm1/n87 ) );
  XOR21 U517 ( .A(\send_ppm1/sig_cyclesTrame3 [3]), .B(
        \send_ppm1/sig_out_local_count [3]), .Q(n308) );
  XOR21 U518 ( .A(\send_ppm1/sig_cyclesTrame4 [3]), .B(
        \send_ppm1/sig_out_local_count [3]), .Q(n286) );
  XOR21 U519 ( .A(\send_ppm1/N180 ), .B(\send_ppm1/sig_out_local_count [2]), 
        .Q(n272) );
  XOR21 U520 ( .A(\send_ppm1/sig_cyclesTrame2 [4]), .B(
        \send_ppm1/sig_out_local_count [4]), .Q(n329) );
  XOR21 U521 ( .A(\send_ppm1/sig_cyclesTrame3 [4]), .B(
        \send_ppm1/sig_out_local_count [4]), .Q(n307) );
  XOR21 U522 ( .A(\send_ppm1/sig_cyclesTrame4 [4]), .B(
        \send_ppm1/sig_out_local_count [4]), .Q(n285) );
  XOR21 U523 ( .A(\send_ppm1/N181 ), .B(\send_ppm1/sig_out_local_count [3]), 
        .Q(n271) );
  INV3 U524 ( .A(\send_ppm1/n66 ), .Q(n132) );
  INV3 U525 ( .A(\send_ppm1/n69 ), .Q(n136) );
  NAND22 U526 ( .A(\send_ppm1/sig_state [0]), .B(\send_ppm1/n58 ), .Q(
        \send_ppm1/n65 ) );
  NOR21 U527 ( .A(n12), .B(n20), .Q(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [3]) );
  NOR21 U528 ( .A(n13), .B(n23), .Q(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [3]) );
  NOR21 U529 ( .A(n12), .B(n20), .Q(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[1][5] ) );
  NOR21 U530 ( .A(n13), .B(n23), .Q(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[1][5] ) );
  NOR21 U531 ( .A(n8), .B(n12), .Q(
        \send_ppm1/dp_cluster_4/mult_123/CARRYB[4][1] ) );
  XOR21 U532 ( .A(\send_ppm1/sig_reg_storage [24]), .B(
        \send_ppm1/sig_reg_storage [25]), .Q(
        \send_ppm1/dp_cluster_4/mult_123/SUMB[1][5] ) );
  NOR21 U533 ( .A(n9), .B(n13), .Q(
        \send_ppm1/dp_cluster_1/mult_114/CARRYB[4][1] ) );
  XOR21 U534 ( .A(\send_ppm1/sig_reg_storage [0]), .B(
        \send_ppm1/sig_reg_storage [1]), .Q(
        \send_ppm1/dp_cluster_1/mult_114/SUMB[1][5] ) );
  NOR21 U535 ( .A(n14), .B(n21), .Q(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[1][5] ) );
  NOR21 U536 ( .A(n15), .B(n22), .Q(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[1][5] ) );
  NOR21 U537 ( .A(n10), .B(n14), .Q(
        \send_ppm1/dp_cluster_2/mult_117/CARRYB[4][1] ) );
  XOR21 U538 ( .A(\send_ppm1/sig_reg_storage [8]), .B(
        \send_ppm1/sig_reg_storage [9]), .Q(
        \send_ppm1/dp_cluster_2/mult_117/SUMB[1][5] ) );
  NOR21 U539 ( .A(n11), .B(n15), .Q(
        \send_ppm1/dp_cluster_3/mult_120/CARRYB[4][1] ) );
  XOR21 U540 ( .A(\send_ppm1/sig_reg_storage [16]), .B(
        \send_ppm1/sig_reg_storage [17]), .Q(
        \send_ppm1/dp_cluster_3/mult_120/SUMB[1][5] ) );
  NOR21 U541 ( .A(\send_ppm1/current_state [0]), .B(
        \send_ppm1/current_state [1]), .Q(\send_ppm1/n62 ) );
  NOR21 U542 ( .A(n14), .B(n21), .Q(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [3]) );
  NOR21 U543 ( .A(n15), .B(n22), .Q(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [3]) );
  NOR21 U544 ( .A(\send_ppm1/dp_cluster_1/mult_114/SUMB[1][5] ), .B(n13), .Q(
        \send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [3]) );
  XNR21 U545 ( .A(\send_ppm1/N185 ), .B(\send_ppm1/sig_out_local_count [7]), 
        .Q(n279) );
  XNR21 U546 ( .A(\send_ppm1/N195 ), .B(\send_ppm1/sig_out_local_count [17]), 
        .Q(n263) );
  XNR21 U547 ( .A(\send_ppm1/dp_cluster_0/N280 ), .B(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [17]), .Q(
        \send_ppm1/N195 ) );
  XNR21 U548 ( .A(\send_ppm1/N190 ), .B(\send_ppm1/sig_out_local_count [12]), 
        .Q(n258) );
  XNR21 U549 ( .A(\send_ppm1/N184 ), .B(\send_ppm1/sig_out_local_count [6]), 
        .Q(n276) );
  XNR21 U550 ( .A(\send_ppm1/N189 ), .B(\send_ppm1/sig_out_local_count [11]), 
        .Q(n255) );
  NAND22 U551 ( .A(\send_ppm1/sig_out_local_count [8]), .B(
        \send_ppm1/sig_out_local_count [6]), .Q(\send_ppm1/n88 ) );
  AOI211 U552 ( .A(n135), .B(\send_ppm1/n58 ), .C(\send_ppm1/n66 ), .Q(
        \send_ppm1/n67 ) );
  NAND41 U553 ( .A(\send_ppm1/n69 ), .B(\send_ppm1/sig_state [1]), .C(
        \send_ppm1/sig_state [0]), .D(\send_ppm1/n57 ), .Q(\send_ppm1/n68 ) );
  INV3 U554 ( .A(n49), .Q(
        \send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [2]) );
  INV3 U555 ( .A(\send_ppm1/sig_cyclesTrame4 [2]), .Q(n209) );
  XOR21 U556 ( .A(\send_ppm1/sig_reg_storage [0]), .B(n167), .Q(
        \send_ppm1/dp_cluster_0/N18 ) );
  NAND22 U557 ( .A(i_sel_top[1]), .B(i_sel_top[0]), .Q(\decoder1/n12 ) );
  XNR21 U558 ( .A(\send_ppm1/sig_cyclesTrame2 [8]), .B(
        \send_ppm1/sig_out_local_count [8]), .Q(n337) );
  XNR21 U559 ( .A(\send_ppm1/sig_cyclesTrame3 [8]), .B(
        \send_ppm1/sig_out_local_count [8]), .Q(n315) );
  XNR21 U560 ( .A(\send_ppm1/sig_cyclesTrame1 [8]), .B(
        \send_ppm1/sig_out_local_count [8]), .Q(n359) );
  XNR21 U561 ( .A(\send_ppm1/sig_cyclesTrame4 [8]), .B(
        \send_ppm1/sig_out_local_count [8]), .Q(n293) );
  XNR21 U562 ( .A(\send_ppm1/sig_cyclesTrame2 [12]), .B(
        \send_ppm1/sig_out_local_count [12]), .Q(n341) );
  XNR21 U563 ( .A(\send_ppm1/sig_cyclesTrame3 [12]), .B(
        \send_ppm1/sig_out_local_count [12]), .Q(n319) );
  XNR21 U564 ( .A(\send_ppm1/sig_cyclesTrame1 [12]), .B(
        \send_ppm1/sig_out_local_count [12]), .Q(n363) );
  XNR21 U565 ( .A(\send_ppm1/sig_cyclesTrame4 [12]), .B(
        \send_ppm1/sig_out_local_count [12]), .Q(n297) );
  XNR21 U566 ( .A(\send_ppm1/N191 ), .B(\send_ppm1/sig_out_local_count [13]), 
        .Q(n259) );
  XNR21 U567 ( .A(\send_ppm1/N186 ), .B(\send_ppm1/sig_out_local_count [8]), 
        .Q(n280) );
  XNR21 U568 ( .A(\send_ppm1/N196 ), .B(\send_ppm1/sig_out_local_count [18]), 
        .Q(n264) );
  XNR21 U569 ( .A(\send_ppm1/dp_cluster_0/N279 ), .B(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [18]), .Q(
        \send_ppm1/N196 ) );
  NAND22 U570 ( .A(i_sel_top[3]), .B(n139), .Q(\decoder1/n10 ) );
  XNR21 U571 ( .A(\send_ppm1/N187 ), .B(\send_ppm1/sig_out_local_count [9]), 
        .Q(n256) );
  XNR21 U572 ( .A(\send_ppm1/N182 ), .B(\send_ppm1/sig_out_local_count [4]), 
        .Q(n277) );
  NAND22 U573 ( .A(i_sel_top[1]), .B(n143), .Q(\decoder1/n8 ) );
  XNR21 U574 ( .A(\send_ppm1/sig_cyclesTrame1 [6]), .B(
        \send_ppm1/sig_out_local_count [6]), .Q(n357) );
  XNR21 U575 ( .A(\send_ppm1/sig_cyclesTrame1 [7]), .B(
        \send_ppm1/sig_out_local_count [7]), .Q(n358) );
  XNR21 U576 ( .A(\send_ppm1/sig_cyclesTrame1 [2]), .B(
        \send_ppm1/sig_out_local_count [2]), .Q(n354) );
  XNR21 U577 ( .A(\send_ppm1/N183 ), .B(\send_ppm1/sig_out_local_count [5]), 
        .Q(n278) );
  XNR21 U578 ( .A(\send_ppm1/sig_cyclesTrame1 [11]), .B(
        \send_ppm1/sig_out_local_count [11]), .Q(n362) );
  XNR21 U579 ( .A(\send_ppm1/sig_cyclesTrame1 [10]), .B(
        \send_ppm1/sig_out_local_count [10]), .Q(n361) );
  XNR21 U580 ( .A(\send_ppm1/N188 ), .B(\send_ppm1/sig_out_local_count [10]), 
        .Q(n257) );
  XNR21 U581 ( .A(\send_ppm1/N197 ), .B(\send_ppm1/sig_out_local_count [19]), 
        .Q(n274) );
  XNR21 U582 ( .A(\send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [19]), 
        .B(\send_ppm1/dp_cluster_0/N278 ), .Q(\send_ppm1/N197 ) );
  INV3 U583 ( .A(n56), .Q(
        \send_ppm1/dp_cluster_0/sub_0_root_sub_235_cf/carry [19]) );
  XNR21 U584 ( .A(\send_ppm1/dp_cluster_0/add_1_root_sub_235_cf/carry [19]), 
        .B(\send_ppm1/dp_cluster_0/sub_4_root_sub_235_cf/carry [16]), .Q(
        \send_ppm1/dp_cluster_0/N278 ) );
  NAND22 U585 ( .A(i_reset_n_top), .B(n144), .Q(\send_ppm1/local_counter1/n22 ) );
  INV3 U586 ( .A(\send_ppm1/sig_in_init ), .Q(n144) );
  OAI2111 U587 ( .A(n148), .B(n149), .C(\send_ppm1/n60 ), .D(\send_ppm1/n61 ), 
        .Q(\send_ppm1/sig_in_init ) );
  AOI221 U588 ( .A(n211), .B(\send_ppm1/n62 ), .C(\send_ppm1/n63 ), .D(
        \send_ppm1/n64 ), .Q(\send_ppm1/n61 ) );
  INV3 U589 ( .A(n44), .Q(\send_ppm1/dp_cluster_4/sub_123_cf/carry [4]) );
  NOR21 U590 ( .A(\send_ppm1/sig_reg_storage [26]), .B(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [3]), .Q(n44) );
  INV3 U591 ( .A(n34), .Q(\send_ppm1/dp_cluster_2/sub_117_cf/carry [4]) );
  NOR21 U592 ( .A(\send_ppm1/sig_reg_storage [10]), .B(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [3]), .Q(n34) );
  INV3 U593 ( .A(n39), .Q(\send_ppm1/dp_cluster_3/sub_120_cf/carry [4]) );
  NOR21 U594 ( .A(\send_ppm1/sig_reg_storage [18]), .B(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [3]), .Q(n39) );
  INV3 U595 ( .A(n29), .Q(\send_ppm1/dp_cluster_1/sub_114_cf/carry [4]) );
  NOR21 U596 ( .A(\send_ppm1/sig_reg_storage [2]), .B(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [3]), .Q(n29) );
  XNR21 U597 ( .A(\send_ppm1/sig_cyclesTrame1 [9]), .B(
        \send_ppm1/sig_out_local_count [9]), .Q(n360) );
  XNR21 U598 ( .A(\send_ppm1/sig_cyclesTrame1 [5]), .B(
        \send_ppm1/sig_out_local_count [5]), .Q(n356) );
  INV3 U599 ( .A(n30), .Q(\send_ppm1/dp_cluster_1/sub_114_cf/carry [5]) );
  NOR21 U600 ( .A(\send_ppm1/sig_reg_storage [3]), .B(
        \send_ppm1/dp_cluster_1/sub_114_cf/carry [4]), .Q(n30) );
  INV3 U601 ( .A(n45), .Q(\send_ppm1/dp_cluster_4/sub_123_cf/carry [5]) );
  NOR21 U602 ( .A(\send_ppm1/sig_reg_storage [27]), .B(
        \send_ppm1/dp_cluster_4/sub_123_cf/carry [4]), .Q(n45) );
  INV3 U603 ( .A(n35), .Q(\send_ppm1/dp_cluster_2/sub_117_cf/carry [5]) );
  NOR21 U604 ( .A(\send_ppm1/sig_reg_storage [11]), .B(
        \send_ppm1/dp_cluster_2/sub_117_cf/carry [4]), .Q(n35) );
  INV3 U605 ( .A(n40), .Q(\send_ppm1/dp_cluster_3/sub_120_cf/carry [5]) );
  NOR21 U606 ( .A(\send_ppm1/sig_reg_storage [19]), .B(
        \send_ppm1/dp_cluster_3/sub_120_cf/carry [4]), .Q(n40) );
  INV3 U607 ( .A(sig_reg[23]), .Q(n139) );
  NOR21 U608 ( .A(\send_ppm1/n93 ), .B(\send_ppm1/n58 ), .Q(\send_ppm1/n92 )
         );
  AOI221 U609 ( .A(\send_ppm1/N156 ), .B(\send_ppm1/n59 ), .C(\send_ppm1/N163 ), .D(\send_ppm1/sig_state [0]), .Q(\send_ppm1/n93 ) );
  NOR40 U610 ( .A(n327), .B(n326), .C(n325), .D(n324), .Q(\send_ppm1/N163 ) );
  NOR40 U611 ( .A(n349), .B(n348), .C(n347), .D(n346), .Q(\send_ppm1/N156 ) );
  INV3 U612 ( .A(i_sel_top[3]), .Q(n137) );
  NOR21 U613 ( .A(n121), .B(\send_ppm1/local_counter1/v_val [0]), .Q(
        \send_ppm1/local_counter1/N46 ) );
  NOR21 U614 ( .A(n352), .B(n351), .Q(n353) );
  XOR21 U615 ( .A(\send_ppm1/sig_cyclesTrame1 [4]), .B(
        \send_ppm1/sig_out_local_count [4]), .Q(n351) );
  XOR21 U616 ( .A(\send_ppm1/sig_cyclesTrame1 [3]), .B(
        \send_ppm1/sig_out_local_count [3]), .Q(n352) );
  INV3 U617 ( .A(\send_ppm1/n73 ), .Q(n133) );
  OAI2111 U618 ( .A(n211), .B(\send_ppm1/n70 ), .C(\send_ppm1/n74 ), .D(
        \send_ppm1/n75 ), .Q(\send_ppm1/n73 ) );
  NAND31 U619 ( .A(\send_ppm1/n76 ), .B(n149), .C(i_reset_n_top), .Q(
        \send_ppm1/n74 ) );
  NAND31 U620 ( .A(\send_ppm1/n63 ), .B(\send_ppm1/n53 ), .C(i_reset_n_top), 
        .Q(\send_ppm1/n75 ) );
  XNR21 U621 ( .A(\send_ppm1/local_counter1/add_34/carry [19]), .B(
        \send_ppm1/local_counter1/v_val [19]), .Q(n25) );
  INV3 U622 ( .A(i_sel_top[0]), .Q(n143) );
  INV3 U623 ( .A(\send_ppm1/n77 ), .Q(n134) );
  NAND31 U624 ( .A(i_reset_n_top), .B(\send_ppm1/n76 ), .C(\send_ppm1/N198 ), 
        .Q(\send_ppm1/n77 ) );
  BUF2 U625 ( .A(sig_clk25), .Q(n130) );
  OAI222 U626 ( .A(n3), .B(n7), .C(n12), .D(n3), .Q(n289) );
  OAI222 U627 ( .A(n3), .B(n7), .C(n15), .D(n3), .Q(n311) );
  OAI222 U628 ( .A(n3), .B(n7), .C(n14), .D(n3), .Q(n333) );
  OAI222 U629 ( .A(n3), .B(n7), .C(n13), .D(n3), .Q(n355) );
endmodule

