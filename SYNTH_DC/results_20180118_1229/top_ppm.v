
module decoder ( i_sel, o_val );
  input [1:0] i_sel;
  output [31:0] o_val;
  wire   o_val_23, o_val_8, o_val_7, N3, \o_val[0] , n2, n3;
  assign o_val_23 = i_sel[1];
  assign o_val[15] = o_val_23;
  assign o_val[23] = o_val_23;
  assign o_val[31] = o_val_23;
  assign o_val_8 = i_sel[0];
  assign o_val[1] = o_val_8;
  assign o_val[4] = o_val_8;
  assign o_val[5] = o_val_8;
  assign o_val[8] = o_val_8;
  assign o_val[12] = o_val_8;
  assign o_val[13] = o_val_8;
  assign o_val[14] = o_val_8;
  assign o_val[16] = o_val_8;
  assign o_val[18] = o_val_8;
  assign o_val[19] = o_val_8;
  assign o_val[20] = o_val_8;
  assign o_val[24] = o_val_8;
  assign o_val[27] = o_val_8;
  assign o_val[29] = o_val_8;
  assign o_val[30] = o_val_8;
  assign o_val[7] = o_val_7;
  assign o_val[28] = \o_val[0] ;
  assign o_val[26] = \o_val[0] ;
  assign o_val[25] = \o_val[0] ;
  assign o_val[22] = \o_val[0] ;
  assign o_val[21] = \o_val[0] ;
  assign o_val[17] = \o_val[0] ;
  assign o_val[11] = \o_val[0] ;
  assign o_val[10] = \o_val[0] ;
  assign o_val[9] = \o_val[0] ;
  assign o_val[6] = \o_val[0] ;
  assign o_val[3] = \o_val[0] ;
  assign o_val[2] = \o_val[0] ;
  assign o_val[0] = \o_val[0] ;

  BUF2 U3 ( .A(N3), .Q(\o_val[0] ) );
  NOR21 U4 ( .A(n3), .B(n2), .Q(N3) );
  NAND22 U5 ( .A(n3), .B(n2), .Q(o_val_7) );
  INV3 U6 ( .A(o_val_23), .Q(n2) );
  INV3 U7 ( .A(o_val_8), .Q(n3) );
endmodule


module local_counter_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADD22 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADD22 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADD22 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADD22 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADD22 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADD22 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADD22 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADD22 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADD22 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADD22 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADD22 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADD22 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADD22 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADD22 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADD22 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADD22 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADD22 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADD22 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR20 U1 ( .A(carry[19]), .B(A[19]), .Q(SUM[19]) );
endmodule


module local_counter ( i_clk, i_reset_n, i_init, o_count );
  output [19:0] o_count;
  input i_clk, i_reset_n, i_init;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, n22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n23, n24;
  wire   [19:0] v_val;
  wire   SYNOPSYS_UNCONNECTED__0;

  DF3 \v_val_reg[0]  ( .D(N46), .C(i_clk), .Q(v_val[0]) );
  DF3 \v_val_reg[1]  ( .D(N47), .C(i_clk), .Q(v_val[1]) );
  DF3 \v_val_reg[2]  ( .D(N48), .C(i_clk), .Q(v_val[2]) );
  DF3 \v_val_reg[3]  ( .D(N49), .C(i_clk), .Q(v_val[3]) );
  DF3 \v_val_reg[4]  ( .D(N50), .C(i_clk), .Q(v_val[4]) );
  DF3 \v_val_reg[5]  ( .D(N51), .C(i_clk), .Q(v_val[5]) );
  DF3 \v_val_reg[6]  ( .D(N52), .C(i_clk), .Q(v_val[6]) );
  DF3 \v_val_reg[7]  ( .D(N53), .C(i_clk), .Q(v_val[7]) );
  DF3 \v_val_reg[8]  ( .D(N54), .C(i_clk), .Q(v_val[8]) );
  DF3 \v_val_reg[9]  ( .D(N55), .C(i_clk), .Q(v_val[9]) );
  DF3 \v_val_reg[10]  ( .D(N56), .C(i_clk), .Q(v_val[10]) );
  DF3 \v_val_reg[11]  ( .D(N57), .C(i_clk), .Q(v_val[11]) );
  DF3 \v_val_reg[12]  ( .D(N58), .C(i_clk), .Q(v_val[12]) );
  DF3 \v_val_reg[13]  ( .D(N59), .C(i_clk), .Q(v_val[13]) );
  DF3 \v_val_reg[14]  ( .D(N60), .C(i_clk), .Q(v_val[14]) );
  DF3 \v_val_reg[15]  ( .D(N61), .C(i_clk), .Q(v_val[15]) );
  DF3 \v_val_reg[16]  ( .D(N62), .C(i_clk), .Q(v_val[16]) );
  DF3 \v_val_reg[17]  ( .D(N63), .C(i_clk), .Q(v_val[17]) );
  DF3 \v_val_reg[18]  ( .D(N64), .C(i_clk), .Q(v_val[18]) );
  DF3 \v_val_reg[19]  ( .D(N65), .C(i_clk), .Q(v_val[19]) );
  DF3 \o_count_reg[19]  ( .D(N65), .C(i_clk), .Q(o_count[19]) );
  DF3 \o_count_reg[18]  ( .D(N64), .C(i_clk), .Q(o_count[18]) );
  DF3 \o_count_reg[17]  ( .D(N63), .C(i_clk), .Q(o_count[17]) );
  DF3 \o_count_reg[16]  ( .D(N62), .C(i_clk), .Q(o_count[16]) );
  DF3 \o_count_reg[15]  ( .D(N61), .C(i_clk), .Q(o_count[15]) );
  DF3 \o_count_reg[14]  ( .D(N60), .C(i_clk), .Q(o_count[14]) );
  DF3 \o_count_reg[13]  ( .D(N59), .C(i_clk), .Q(o_count[13]) );
  DF3 \o_count_reg[12]  ( .D(N58), .C(i_clk), .Q(o_count[12]) );
  DF3 \o_count_reg[11]  ( .D(N57), .C(i_clk), .Q(o_count[11]) );
  DF3 \o_count_reg[10]  ( .D(N56), .C(i_clk), .Q(o_count[10]) );
  DF3 \o_count_reg[9]  ( .D(N55), .C(i_clk), .Q(o_count[9]) );
  DF3 \o_count_reg[8]  ( .D(N54), .C(i_clk), .Q(o_count[8]) );
  DF3 \o_count_reg[7]  ( .D(N53), .C(i_clk), .Q(o_count[7]) );
  DF3 \o_count_reg[6]  ( .D(N52), .C(i_clk), .Q(o_count[6]) );
  DF3 \o_count_reg[5]  ( .D(N51), .C(i_clk), .Q(o_count[5]) );
  DF3 \o_count_reg[4]  ( .D(N50), .C(i_clk), .Q(o_count[4]) );
  DF3 \o_count_reg[3]  ( .D(N49), .C(i_clk), .Q(o_count[3]) );
  DF3 \o_count_reg[2]  ( .D(N48), .C(i_clk), .Q(o_count[2]) );
  DF3 \o_count_reg[1]  ( .D(N47), .C(i_clk), .Q(o_count[1]) );
  DF3 \o_count_reg[0]  ( .D(N46), .C(i_clk), .Q(o_count[0]) );
  local_counter_DW01_inc_0 add_34 ( .A(v_val), .SUM({N25, N24, N23, N22, N21, 
        N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        SYNOPSYS_UNCONNECTED__0}) );
  BUF2 U3 ( .A(n22), .Q(n2) );
  BUF2 U4 ( .A(n22), .Q(n1) );
  BUF2 U5 ( .A(n22), .Q(n3) );
  NOR21 U6 ( .A(n2), .B(n7), .Q(N63) );
  INV3 U7 ( .A(N23), .Q(n7) );
  NOR21 U8 ( .A(n2), .B(n9), .Q(N61) );
  INV3 U9 ( .A(N21), .Q(n9) );
  NOR21 U10 ( .A(n2), .B(n11), .Q(N59) );
  INV3 U11 ( .A(N19), .Q(n11) );
  NOR21 U12 ( .A(n2), .B(n13), .Q(N57) );
  INV3 U13 ( .A(N17), .Q(n13) );
  NOR21 U14 ( .A(n2), .B(n15), .Q(N55) );
  INV3 U15 ( .A(N15), .Q(n15) );
  NOR21 U16 ( .A(n2), .B(n17), .Q(N53) );
  INV3 U17 ( .A(N13), .Q(n17) );
  NOR21 U18 ( .A(n1), .B(n18), .Q(N52) );
  INV3 U19 ( .A(N12), .Q(n18) );
  NOR21 U20 ( .A(n1), .B(n19), .Q(N51) );
  INV3 U21 ( .A(N11), .Q(n19) );
  NOR21 U22 ( .A(n1), .B(n20), .Q(N50) );
  INV3 U23 ( .A(N10), .Q(n20) );
  NOR21 U24 ( .A(n1), .B(n21), .Q(N49) );
  INV3 U25 ( .A(N9), .Q(n21) );
  NOR21 U26 ( .A(n1), .B(n23), .Q(N48) );
  INV3 U27 ( .A(N8), .Q(n23) );
  NOR21 U28 ( .A(n1), .B(n24), .Q(N47) );
  INV3 U29 ( .A(N7), .Q(n24) );
  NOR21 U30 ( .A(n3), .B(n6), .Q(N64) );
  INV3 U31 ( .A(N24), .Q(n6) );
  NOR21 U32 ( .A(n3), .B(n8), .Q(N62) );
  INV3 U33 ( .A(N22), .Q(n8) );
  NOR21 U34 ( .A(n3), .B(n10), .Q(N60) );
  INV3 U35 ( .A(N20), .Q(n10) );
  NOR21 U36 ( .A(n3), .B(n12), .Q(N58) );
  INV3 U37 ( .A(N18), .Q(n12) );
  NOR21 U38 ( .A(n3), .B(n14), .Q(N56) );
  INV3 U39 ( .A(N16), .Q(n14) );
  NOR21 U40 ( .A(n3), .B(n16), .Q(N54) );
  INV3 U41 ( .A(N14), .Q(n16) );
  NAND22 U42 ( .A(i_reset_n), .B(n4), .Q(n22) );
  INV3 U43 ( .A(i_init), .Q(n4) );
  NOR21 U44 ( .A(n2), .B(n5), .Q(N65) );
  INV3 U45 ( .A(N25), .Q(n5) );
  NOR21 U46 ( .A(n1), .B(v_val[0]), .Q(N46) );
endmodule


module send_ppm_DW01_add_8 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [19:1] carry;
  assign SUM[17] = carry[17];

  ADD32 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADD32 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADD32 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADD32 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADD32 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADD32 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADD32 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADD32 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADD32 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADD32 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADD32 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADD32 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADD32 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADD32 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  NOR21 U1 ( .A(n1), .B(n2), .Q(carry[17]) );
  INV3 U2 ( .A(B[16]), .Q(n1) );
  XOR21 U3 ( .A(carry[16]), .B(B[16]), .Q(SUM[16]) );
  INV3 U4 ( .A(carry[16]), .Q(n2) );
  NOR21 U5 ( .A(n3), .B(n4), .Q(carry[2]) );
  INV3 U6 ( .A(A[1]), .Q(n4) );
  INV3 U7 ( .A(B[1]), .Q(n3) );
  XOR21 U8 ( .A(A[1]), .B(B[1]), .Q(SUM[1]) );
endmodule


module send_ppm_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19;
  wire   [20:0] carry;

  ADD32 U2_17 ( .A(A[17]), .B(n3), .CI(carry[17]), .CO(carry[18]), .S(DIFF[17]) );
  ADD32 U2_16 ( .A(A[16]), .B(n4), .CI(carry[16]), .CO(carry[17]), .S(DIFF[16]) );
  ADD32 U2_15 ( .A(A[15]), .B(n5), .CI(carry[15]), .CO(carry[16]), .S(DIFF[15]) );
  ADD32 U2_14 ( .A(A[14]), .B(n6), .CI(carry[14]), .CO(carry[15]), .S(DIFF[14]) );
  ADD32 U2_13 ( .A(A[13]), .B(n7), .CI(carry[13]), .CO(carry[14]), .S(DIFF[13]) );
  ADD32 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(DIFF[12]) );
  ADD32 U2_11 ( .A(A[11]), .B(n9), .CI(carry[11]), .CO(carry[12]), .S(DIFF[11]) );
  ADD32 U2_10 ( .A(A[10]), .B(n10), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADD32 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADD32 U2_8 ( .A(A[8]), .B(n12), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADD32 U2_7 ( .A(A[7]), .B(n13), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADD32 U2_6 ( .A(A[6]), .B(n14), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADD32 U2_5 ( .A(A[5]), .B(n15), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADD32 U2_4 ( .A(A[4]), .B(n16), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADD32 U2_3 ( .A(A[3]), .B(n17), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADD32 U2_2 ( .A(A[2]), .B(n18), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  INV3 U1 ( .A(B[12]), .Q(n8) );
  INV3 U2 ( .A(B[13]), .Q(n7) );
  INV3 U3 ( .A(B[10]), .Q(n10) );
  INV3 U4 ( .A(B[11]), .Q(n9) );
  INV3 U5 ( .A(B[9]), .Q(n11) );
  INV3 U6 ( .A(B[17]), .Q(n3) );
  INV3 U7 ( .A(B[15]), .Q(n5) );
  INV3 U8 ( .A(B[14]), .Q(n6) );
  INV3 U9 ( .A(B[16]), .Q(n4) );
  INV3 U10 ( .A(B[7]), .Q(n13) );
  INV3 U11 ( .A(B[8]), .Q(n12) );
  INV3 U12 ( .A(B[6]), .Q(n14) );
  INV3 U13 ( .A(B[5]), .Q(n15) );
  INV3 U14 ( .A(B[4]), .Q(n16) );
  INV3 U15 ( .A(B[3]), .Q(n17) );
  INV3 U16 ( .A(n2), .Q(carry[2]) );
  INV3 U17 ( .A(B[2]), .Q(n18) );
  NOR21 U18 ( .A(n19), .B(A[1]), .Q(n2) );
  INV3 U19 ( .A(B[1]), .Q(n19) );
  XNR21 U20 ( .A(A[1]), .B(n19), .Q(DIFF[1]) );
  XNR21 U21 ( .A(A[18]), .B(carry[18]), .Q(DIFF[18]) );
  XNR21 U22 ( .A(n1), .B(A[18]), .Q(DIFF[19]) );
  NOR21 U23 ( .A(carry[18]), .B(A[18]), .Q(n1) );
endmodule


module send_ppm_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [6:0] B;
  output [14:0] PRODUCT;
  input TC;
  wire   \A[3] , \A[2] , \A[1] , \ab[7][6] , \ab[6][6] , \ab[5][6] ,
         \ab[4][6] , \ab[0][6] , \CARRYB[7][5] , \CARRYB[7][1] ,
         \CARRYB[6][5] , \CARRYB[6][1] , \CARRYB[5][5] , \CARRYB[5][1] ,
         \CARRYB[4][5] , \CARRYB[4][1] , \CARRYB[3][5] , \CARRYB[2][5] ,
         \CARRYB[1][5] , \SUMB[7][5] , \SUMB[6][5] , \SUMB[5][5] ,
         \SUMB[4][5] , \SUMB[3][5] , \SUMB[2][5] , \SUMB[1][5] , \A1[11] ,
         \A2[12] , \A2[8] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19;
  assign \A[3]  = A[3];
  assign PRODUCT[4] = \A[3] ;
  assign \A[2]  = A[2];
  assign PRODUCT[3] = \A[2] ;
  assign \A[1]  = A[1];
  assign PRODUCT[2] = \A[1] ;
  assign \ab[7][6]  = A[7];
  assign \ab[6][6]  = A[6];
  assign \ab[5][6]  = A[5];
  assign \ab[4][6]  = A[4];
  assign \ab[0][6]  = A[0];
  assign PRODUCT[1] = \ab[0][6] ;

  ADD32 S4_1 ( .A(\ab[7][6] ), .B(\CARRYB[6][1] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[7][1] ), .S(PRODUCT[8]) );
  ADD32 S5_5 ( .A(\ab[7][6] ), .B(\CARRYB[6][5] ), .CI(\ab[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADD32 S2_6_1 ( .A(\ab[6][6] ), .B(\CARRYB[5][1] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[6][1] ), .S(PRODUCT[7]) );
  ADD32 S3_6_5 ( .A(\ab[6][6] ), .B(\CARRYB[5][5] ), .CI(\ab[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADD32 S2_5_1 ( .A(\ab[5][6] ), .B(\CARRYB[4][1] ), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[5][1] ), .S(PRODUCT[6]) );
  ADD32 S3_5_5 ( .A(\ab[5][6] ), .B(\CARRYB[4][5] ), .CI(\ab[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADD32 S3_4_5 ( .A(\ab[4][6] ), .B(\CARRYB[3][5] ), .CI(\A[3] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADD32 S3_3_5 ( .A(\A[3] ), .B(\CARRYB[2][5] ), .CI(\A[2] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADD32 S3_2_5 ( .A(\A[2] ), .B(\CARRYB[1][5] ), .CI(\A[1] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  XOR21 U2 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  IMUX21 U3 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U4 ( .A(\SUMB[5][5] ), .Q(n18) );
  XOR21 U5 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U6 ( .A(n16), .Q(n17) );
  NOR21 U7 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U8 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U9 ( .A(\SUMB[4][5] ), .Q(n4) );
  NAND22 U10 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  INV3 U11 ( .A(\SUMB[7][5] ), .Q(n19) );
  XOR21 U12 ( .A(\A1[11] ), .B(n12), .Q(PRODUCT[13]) );
  NOR21 U13 ( .A(n19), .B(n11), .Q(n12) );
  NOR21 U14 ( .A(n19), .B(n13), .Q(n14) );
  NAND22 U15 ( .A(n17), .B(\SUMB[6][5] ), .Q(n13) );
  INV3 U16 ( .A(\CARRYB[7][5] ), .Q(n6) );
  XOR21 U17 ( .A(\ab[4][6] ), .B(\ab[0][6] ), .Q(PRODUCT[5]) );
  INV3 U18 ( .A(\ab[0][6] ), .Q(n10) );
  NOR21 U19 ( .A(n9), .B(n10), .Q(\CARRYB[4][1] ) );
  XOR21 U20 ( .A(\ab[0][6] ), .B(\A[1] ), .Q(\SUMB[1][5] ) );
  INV3 U21 ( .A(\ab[4][6] ), .Q(n9) );
  NOR21 U22 ( .A(n10), .B(n8), .Q(\CARRYB[1][5] ) );
  INV3 U23 ( .A(\A[1] ), .Q(n8) );
  XOR21 U24 ( .A(\ab[7][6] ), .B(\CARRYB[7][5] ), .Q(\A1[11] ) );
  XNR21 U25 ( .A(n15), .B(\A2[12] ), .Q(PRODUCT[14]) );
  NOR21 U26 ( .A(n6), .B(n7), .Q(\A2[12] ) );
  NAND22 U27 ( .A(\A1[11] ), .B(n14), .Q(n15) );
  INV3 U28 ( .A(\ab[7][6] ), .Q(n7) );
  NAND20 U29 ( .A(\A2[8] ), .B(\SUMB[5][5] ), .Q(n16) );
  XOR20 U30 ( .A(n11), .B(n19), .Q(PRODUCT[12]) );
endmodule


module send_ppm_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [6:0] B;
  output [14:0] PRODUCT;
  input TC;
  wire   \A[3] , \A[2] , \A[1] , \ab[7][6] , \ab[6][6] , \ab[5][6] ,
         \ab[4][6] , \ab[0][6] , \CARRYB[7][5] , \CARRYB[7][1] ,
         \CARRYB[6][5] , \CARRYB[6][1] , \CARRYB[5][5] , \CARRYB[5][1] ,
         \CARRYB[4][5] , \CARRYB[4][1] , \CARRYB[3][5] , \CARRYB[2][5] ,
         \CARRYB[1][5] , \SUMB[7][5] , \SUMB[6][5] , \SUMB[5][5] ,
         \SUMB[4][5] , \SUMB[3][5] , \SUMB[2][5] , \SUMB[1][5] , \A1[11] ,
         \A2[12] , \A2[8] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19;
  assign \A[3]  = A[3];
  assign PRODUCT[4] = \A[3] ;
  assign \A[2]  = A[2];
  assign PRODUCT[3] = \A[2] ;
  assign \A[1]  = A[1];
  assign PRODUCT[2] = \A[1] ;
  assign \ab[7][6]  = A[7];
  assign \ab[6][6]  = A[6];
  assign \ab[5][6]  = A[5];
  assign \ab[4][6]  = A[4];
  assign \ab[0][6]  = A[0];
  assign PRODUCT[1] = \ab[0][6] ;

  ADD32 S4_1 ( .A(\ab[7][6] ), .B(\CARRYB[6][1] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[7][1] ), .S(PRODUCT[8]) );
  ADD32 S5_5 ( .A(\ab[7][6] ), .B(\CARRYB[6][5] ), .CI(\ab[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADD32 S2_6_1 ( .A(\ab[6][6] ), .B(\CARRYB[5][1] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[6][1] ), .S(PRODUCT[7]) );
  ADD32 S3_6_5 ( .A(\ab[6][6] ), .B(\CARRYB[5][5] ), .CI(\ab[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADD32 S2_5_1 ( .A(\ab[5][6] ), .B(\CARRYB[4][1] ), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[5][1] ), .S(PRODUCT[6]) );
  ADD32 S3_5_5 ( .A(\ab[5][6] ), .B(\CARRYB[4][5] ), .CI(\ab[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADD32 S3_4_5 ( .A(\ab[4][6] ), .B(\CARRYB[3][5] ), .CI(\A[3] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADD32 S3_3_5 ( .A(\A[3] ), .B(\CARRYB[2][5] ), .CI(\A[2] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADD32 S3_2_5 ( .A(\A[2] ), .B(\CARRYB[1][5] ), .CI(\A[1] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  XOR21 U2 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  IMUX21 U3 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U4 ( .A(\SUMB[5][5] ), .Q(n18) );
  XOR21 U5 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U6 ( .A(n16), .Q(n17) );
  NOR21 U7 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U8 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U9 ( .A(\SUMB[4][5] ), .Q(n4) );
  NAND22 U10 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  INV3 U11 ( .A(\SUMB[7][5] ), .Q(n19) );
  XOR21 U12 ( .A(\A1[11] ), .B(n12), .Q(PRODUCT[13]) );
  NOR21 U13 ( .A(n19), .B(n11), .Q(n12) );
  NOR21 U14 ( .A(n19), .B(n13), .Q(n14) );
  NAND22 U15 ( .A(n17), .B(\SUMB[6][5] ), .Q(n13) );
  INV3 U16 ( .A(\CARRYB[7][5] ), .Q(n6) );
  XOR21 U17 ( .A(\ab[4][6] ), .B(\ab[0][6] ), .Q(PRODUCT[5]) );
  INV3 U18 ( .A(\ab[0][6] ), .Q(n10) );
  NOR21 U19 ( .A(n9), .B(n10), .Q(\CARRYB[4][1] ) );
  XOR21 U20 ( .A(\ab[0][6] ), .B(\A[1] ), .Q(\SUMB[1][5] ) );
  INV3 U21 ( .A(\ab[4][6] ), .Q(n9) );
  NOR21 U22 ( .A(n10), .B(n8), .Q(\CARRYB[1][5] ) );
  INV3 U23 ( .A(\A[1] ), .Q(n8) );
  XOR21 U24 ( .A(\ab[7][6] ), .B(\CARRYB[7][5] ), .Q(\A1[11] ) );
  XNR21 U25 ( .A(n15), .B(\A2[12] ), .Q(PRODUCT[14]) );
  NOR21 U26 ( .A(n6), .B(n7), .Q(\A2[12] ) );
  NAND22 U27 ( .A(\A1[11] ), .B(n14), .Q(n15) );
  INV3 U28 ( .A(\ab[7][6] ), .Q(n7) );
  NAND20 U29 ( .A(\A2[8] ), .B(\SUMB[5][5] ), .Q(n16) );
  XOR20 U30 ( .A(n11), .B(n19), .Q(PRODUCT[12]) );
endmodule


module send_ppm_DW02_mult_2 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [6:0] B;
  output [14:0] PRODUCT;
  input TC;
  wire   \A[3] , \A[2] , \A[1] , \ab[7][6] , \ab[6][6] , \ab[5][6] ,
         \ab[4][6] , \ab[0][6] , \CARRYB[7][5] , \CARRYB[7][1] ,
         \CARRYB[6][5] , \CARRYB[6][1] , \CARRYB[5][5] , \CARRYB[5][1] ,
         \CARRYB[4][5] , \CARRYB[4][1] , \CARRYB[3][5] , \CARRYB[2][5] ,
         \CARRYB[1][5] , \SUMB[7][5] , \SUMB[6][5] , \SUMB[5][5] ,
         \SUMB[4][5] , \SUMB[3][5] , \SUMB[2][5] , \SUMB[1][5] , \A1[11] ,
         \A2[12] , \A2[8] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19;
  assign \A[3]  = A[3];
  assign PRODUCT[4] = \A[3] ;
  assign \A[2]  = A[2];
  assign PRODUCT[3] = \A[2] ;
  assign \A[1]  = A[1];
  assign PRODUCT[2] = \A[1] ;
  assign \ab[7][6]  = A[7];
  assign \ab[6][6]  = A[6];
  assign \ab[5][6]  = A[5];
  assign \ab[4][6]  = A[4];
  assign \ab[0][6]  = A[0];
  assign PRODUCT[1] = \ab[0][6] ;

  ADD32 S4_1 ( .A(\ab[7][6] ), .B(\CARRYB[6][1] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[7][1] ), .S(PRODUCT[8]) );
  ADD32 S5_5 ( .A(\ab[7][6] ), .B(\CARRYB[6][5] ), .CI(\ab[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADD32 S2_6_1 ( .A(\ab[6][6] ), .B(\CARRYB[5][1] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[6][1] ), .S(PRODUCT[7]) );
  ADD32 S3_6_5 ( .A(\ab[6][6] ), .B(\CARRYB[5][5] ), .CI(\ab[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADD32 S2_5_1 ( .A(\ab[5][6] ), .B(\CARRYB[4][1] ), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[5][1] ), .S(PRODUCT[6]) );
  ADD32 S3_5_5 ( .A(\ab[5][6] ), .B(\CARRYB[4][5] ), .CI(\ab[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADD32 S3_4_5 ( .A(\ab[4][6] ), .B(\CARRYB[3][5] ), .CI(\A[3] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADD32 S3_3_5 ( .A(\A[3] ), .B(\CARRYB[2][5] ), .CI(\A[2] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADD32 S3_2_5 ( .A(\A[2] ), .B(\CARRYB[1][5] ), .CI(\A[1] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  XOR21 U2 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U3 ( .A(n16), .Q(n17) );
  XOR21 U4 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  NOR21 U5 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U6 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U7 ( .A(\SUMB[4][5] ), .Q(n4) );
  IMUX21 U8 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U9 ( .A(\SUMB[5][5] ), .Q(n18) );
  INV3 U10 ( .A(\SUMB[7][5] ), .Q(n19) );
  NAND22 U11 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  XOR21 U12 ( .A(\A1[11] ), .B(n12), .Q(PRODUCT[13]) );
  NOR21 U13 ( .A(n19), .B(n11), .Q(n12) );
  NOR21 U14 ( .A(n19), .B(n13), .Q(n14) );
  NAND22 U15 ( .A(n17), .B(\SUMB[6][5] ), .Q(n13) );
  INV3 U16 ( .A(\CARRYB[7][5] ), .Q(n6) );
  XOR21 U17 ( .A(\ab[4][6] ), .B(\ab[0][6] ), .Q(PRODUCT[5]) );
  NOR21 U18 ( .A(n10), .B(n8), .Q(\CARRYB[1][5] ) );
  INV3 U19 ( .A(\A[1] ), .Q(n8) );
  INV3 U20 ( .A(\ab[0][6] ), .Q(n10) );
  NOR21 U21 ( .A(n9), .B(n10), .Q(\CARRYB[4][1] ) );
  XOR21 U22 ( .A(\ab[0][6] ), .B(\A[1] ), .Q(\SUMB[1][5] ) );
  INV3 U23 ( .A(\ab[4][6] ), .Q(n9) );
  XOR21 U24 ( .A(\ab[7][6] ), .B(\CARRYB[7][5] ), .Q(\A1[11] ) );
  XNR21 U25 ( .A(n15), .B(\A2[12] ), .Q(PRODUCT[14]) );
  NOR21 U26 ( .A(n6), .B(n7), .Q(\A2[12] ) );
  NAND22 U27 ( .A(\A1[11] ), .B(n14), .Q(n15) );
  INV3 U28 ( .A(\ab[7][6] ), .Q(n7) );
  NAND20 U29 ( .A(\A2[8] ), .B(\SUMB[5][5] ), .Q(n16) );
  XOR20 U30 ( .A(n11), .B(n19), .Q(PRODUCT[12]) );
endmodule


module send_ppm_DW02_mult_3 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [6:0] B;
  output [14:0] PRODUCT;
  input TC;
  wire   \A[3] , \A[2] , \A[1] , \ab[7][6] , \ab[6][6] , \ab[5][6] ,
         \ab[4][6] , \ab[0][6] , \CARRYB[7][5] , \CARRYB[7][1] ,
         \CARRYB[6][5] , \CARRYB[6][1] , \CARRYB[5][5] , \CARRYB[5][1] ,
         \CARRYB[4][5] , \CARRYB[4][1] , \CARRYB[3][5] , \CARRYB[2][5] ,
         \CARRYB[1][5] , \SUMB[7][5] , \SUMB[6][5] , \SUMB[5][5] ,
         \SUMB[4][5] , \SUMB[3][5] , \SUMB[2][5] , \SUMB[1][5] , \A1[11] ,
         \A2[12] , \A2[8] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19;
  assign \A[3]  = A[3];
  assign PRODUCT[4] = \A[3] ;
  assign \A[2]  = A[2];
  assign PRODUCT[3] = \A[2] ;
  assign \A[1]  = A[1];
  assign PRODUCT[2] = \A[1] ;
  assign \ab[7][6]  = A[7];
  assign \ab[6][6]  = A[6];
  assign \ab[5][6]  = A[5];
  assign \ab[4][6]  = A[4];
  assign \ab[0][6]  = A[0];
  assign PRODUCT[1] = \ab[0][6] ;

  ADD32 S4_1 ( .A(\ab[7][6] ), .B(\CARRYB[6][1] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[7][1] ), .S(PRODUCT[8]) );
  ADD32 S5_5 ( .A(\ab[7][6] ), .B(\CARRYB[6][5] ), .CI(\ab[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADD32 S2_6_1 ( .A(\ab[6][6] ), .B(\CARRYB[5][1] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[6][1] ), .S(PRODUCT[7]) );
  ADD32 S3_6_5 ( .A(\ab[6][6] ), .B(\CARRYB[5][5] ), .CI(\ab[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADD32 S2_5_1 ( .A(\ab[5][6] ), .B(\CARRYB[4][1] ), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[5][1] ), .S(PRODUCT[6]) );
  ADD32 S3_5_5 ( .A(\ab[5][6] ), .B(\CARRYB[4][5] ), .CI(\ab[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADD32 S3_4_5 ( .A(\ab[4][6] ), .B(\CARRYB[3][5] ), .CI(\A[3] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADD32 S3_3_5 ( .A(\A[3] ), .B(\CARRYB[2][5] ), .CI(\A[2] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADD32 S3_2_5 ( .A(\A[2] ), .B(\CARRYB[1][5] ), .CI(\A[1] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  XOR21 U2 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U3 ( .A(n16), .Q(n17) );
  XOR21 U4 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  IMUX21 U5 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U6 ( .A(\SUMB[5][5] ), .Q(n18) );
  INV3 U7 ( .A(\SUMB[7][5] ), .Q(n19) );
  NOR21 U8 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U9 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U10 ( .A(\SUMB[4][5] ), .Q(n4) );
  NAND22 U11 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  XOR21 U12 ( .A(\A1[11] ), .B(n12), .Q(PRODUCT[13]) );
  NOR21 U13 ( .A(n19), .B(n11), .Q(n12) );
  NOR21 U14 ( .A(n19), .B(n13), .Q(n14) );
  NAND22 U15 ( .A(n17), .B(\SUMB[6][5] ), .Q(n13) );
  INV3 U16 ( .A(\CARRYB[7][5] ), .Q(n6) );
  XOR21 U17 ( .A(\ab[4][6] ), .B(\ab[0][6] ), .Q(PRODUCT[5]) );
  INV3 U18 ( .A(\ab[0][6] ), .Q(n10) );
  NOR21 U19 ( .A(n9), .B(n10), .Q(\CARRYB[4][1] ) );
  XOR21 U20 ( .A(\ab[0][6] ), .B(\A[1] ), .Q(\SUMB[1][5] ) );
  INV3 U21 ( .A(\ab[4][6] ), .Q(n9) );
  NOR21 U22 ( .A(n10), .B(n8), .Q(\CARRYB[1][5] ) );
  INV3 U23 ( .A(\A[1] ), .Q(n8) );
  XOR21 U24 ( .A(\ab[7][6] ), .B(\CARRYB[7][5] ), .Q(\A1[11] ) );
  XNR21 U25 ( .A(n15), .B(\A2[12] ), .Q(PRODUCT[14]) );
  NOR21 U26 ( .A(n6), .B(n7), .Q(\A2[12] ) );
  NAND22 U27 ( .A(\A1[11] ), .B(n14), .Q(n15) );
  INV3 U28 ( .A(\ab[7][6] ), .Q(n7) );
  NAND20 U29 ( .A(\A2[8] ), .B(\SUMB[5][5] ), .Q(n16) );
  XOR20 U30 ( .A(n11), .B(n19), .Q(PRODUCT[12]) );
endmodule


module send_ppm ( i_clk, i_reset_n, i_reg, o_ppm );
  input [31:0] i_reg;
  input i_clk, i_reset_n;
  output o_ppm;
  wire   sig_in_init, \sig_cyclesTrame1[2] , sig_cyclesTrame2_27, N81, N82,
         N148, N156, N163, N169, N179, N180, N181, N182, N183, N184, N185,
         N186, N187, N188, N189, N190, N191, N192, N193, N194, N195, N196,
         N197, N198, n53, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, N75, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61,
         N60, N59, N58, N57, N32, N31, N30, N296, N295, N294, N293, N292, N291,
         N290, N29, N289, N288, N287, N286, N285, N284, N283, N282, N281, N280,
         N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N276,
         N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265,
         N264, N263, N261, N260, N259, N258, N257, N256, N255, N254, N253,
         N252, N251, N250, N249, N248, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N234, N233, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218,
         \sub_114_cf/carry[14] , \sub_114_cf/carry[13] ,
         \sub_114_cf/carry[12] , \sub_114_cf/carry[11] ,
         \sub_114_cf/carry[10] , \sub_114_cf/carry[9] , \sub_114_cf/carry[8] ,
         \sub_114_cf/carry[7] , \sub_114_cf/carry[6] , \sub_114_cf/carry[5] ,
         \sub_114_cf/carry[4] , \sub_114_cf/carry[3] , \sub_117_cf/carry[14] ,
         \sub_117_cf/carry[13] , \sub_117_cf/carry[12] ,
         \sub_117_cf/carry[11] , \sub_117_cf/carry[10] , \sub_117_cf/carry[9] ,
         \sub_117_cf/carry[8] , \sub_117_cf/carry[7] , \sub_117_cf/carry[6] ,
         \sub_117_cf/carry[5] , \sub_117_cf/carry[4] , \sub_117_cf/carry[3] ,
         \sub_120_cf/carry[14] , \sub_120_cf/carry[13] ,
         \sub_120_cf/carry[12] , \sub_120_cf/carry[11] ,
         \sub_120_cf/carry[10] , \sub_120_cf/carry[9] , \sub_120_cf/carry[8] ,
         \sub_120_cf/carry[7] , \sub_120_cf/carry[6] , \sub_120_cf/carry[5] ,
         \sub_120_cf/carry[4] , \sub_120_cf/carry[3] , \sub_123_cf/carry[14] ,
         \sub_123_cf/carry[13] , \sub_123_cf/carry[12] ,
         \sub_123_cf/carry[11] , \sub_123_cf/carry[10] , \sub_123_cf/carry[9] ,
         \sub_123_cf/carry[8] , \sub_123_cf/carry[7] , \sub_123_cf/carry[6] ,
         \sub_123_cf/carry[5] , \sub_123_cf/carry[4] , \sub_123_cf/carry[3] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[2] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[3] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[4] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[5] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[6] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[7] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[8] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[9] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[10] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[11] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[12] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[13] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[14] ,
         \add_2_root_sub_0_root_sub_235_cf/carry[15] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[3] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[4] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[5] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[6] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[7] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[8] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[9] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[10] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[11] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[12] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[13] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[14] ,
         \sub_3_root_sub_0_root_sub_235_cf/carry[15] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n54, n56, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331;
  wire   [19:0] sig_out_local_count;
  wire   [31:0] sig_reg_storage;
  wire   [15:0] sig_cyclesTrame2;
  wire   [15:0] sig_cyclesTrame3;
  wire   [15:0] sig_cyclesTrame4;
  wire   [2:0] current_state;
  wire   [2:0] sig_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  OAI222 U6 ( .A(n318), .B(n58), .C(n324), .D(n65), .Q(n94) );
  OAI212 U13 ( .A(n67), .B(n57), .C(n68), .Q(n95) );
  OAI212 U16 ( .A(sig_state[0]), .B(n70), .C(n319), .Q(n66) );
  OAI222 U39 ( .A(n326), .B(n322), .C(sig_state[2]), .D(n91), .Q(n64) );
  JK3 \sig_state_reg[0]  ( .J(n69), .K(n319), .C(i_clk), .Q(sig_state[0]), 
        .QN(n59) );
  DF3 \current_state_reg[1]  ( .D(N82), .C(i_clk), .Q(current_state[1]), .QN(
        n53) );
  DF3 \sig_state_reg[2]  ( .D(n95), .C(i_clk), .Q(sig_state[2]), .QN(n57) );
  DF3 \current_state_reg[0]  ( .D(N81), .C(i_clk), .Q(current_state[0]), .QN(
        n55) );
  DF3 \current_state_reg[2]  ( .D(n321), .C(i_clk), .Q(current_state[2]) );
  DF3 sig_out_ppm_reg ( .D(n328), .C(i_clk), .Q(o_ppm) );
  DF3 \sig_state_reg[1]  ( .D(n94), .C(i_clk), .Q(sig_state[1]), .QN(n58) );
  local_counter local_counter1 ( .i_clk(i_clk), .i_reset_n(i_reset_n), 
        .i_init(sig_in_init), .o_count(sig_out_local_count) );
  send_ppm_DW01_add_8 add_1_root_sub_0_root_sub_235_cf ( .A({
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, 
        sig_cyclesTrame2_27, sig_cyclesTrame2[15:1], n331}), .B({
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, sig_cyclesTrame2_27}), .CI(sig_cyclesTrame2_27), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N280, N281, N282, 
        N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, 
        N295, N296, SYNOPSYS_UNCONNECTED__2}) );
  send_ppm_DW01_sub_0 sub_0_root_sub_0_root_sub_235_cf ( .A({N75, n24, n24, 
        n24, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, n331}), .B({sig_cyclesTrame2_27, sig_cyclesTrame2_27, N280, 
        N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, 
        N293, N294, N295, N296, n331}), .CI(sig_cyclesTrame2_27), .DIFF({N197, 
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, N179, SYNOPSYS_UNCONNECTED__3}) );
  send_ppm_DW02_mult_0 mult_114 ( .A(sig_reg_storage[7:0]), .B({n331, n331, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n331, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N263, N264, 
        N265, N266, N267, N268, N269, N270, N271, N272, N273, N274, N275, N276, 
        SYNOPSYS_UNCONNECTED__4}) );
  send_ppm_DW02_mult_1 mult_117 ( .A(sig_reg_storage[15:8]), .B({n331, n331, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n331, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N248, N249, 
        N250, N251, N252, N253, N254, N255, N256, N257, N258, N259, N260, N261, 
        SYNOPSYS_UNCONNECTED__5}) );
  send_ppm_DW02_mult_2 mult_120 ( .A(sig_reg_storage[23:16]), .B({n331, n331, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n331, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N233, N234, 
        N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246, 
        SYNOPSYS_UNCONNECTED__6}) );
  send_ppm_DW02_mult_3 mult_123 ( .A(sig_reg_storage[31:24]), .B({n331, n331, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n331, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N218, N219, 
        N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231, 
        SYNOPSYS_UNCONNECTED__7}) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_2  ( .A(sig_cyclesTrame4[2]), .B(
        sig_cyclesTrame3[2]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[2] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[3] ), .S(N18) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_3  ( .A(sig_cyclesTrame4[3]), .B(
        sig_cyclesTrame3[3]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[3] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[4] ), .S(N19) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_4  ( .A(sig_cyclesTrame4[4]), .B(
        sig_cyclesTrame3[4]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[4] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[5] ), .S(N20) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_5  ( .A(sig_cyclesTrame4[5]), .B(
        sig_cyclesTrame3[5]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[5] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[6] ), .S(N21) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_6  ( .A(sig_cyclesTrame4[6]), .B(
        sig_cyclesTrame3[6]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[6] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[7] ), .S(N22) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_7  ( .A(sig_cyclesTrame4[7]), .B(
        sig_cyclesTrame3[7]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[7] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[8] ), .S(N23) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_8  ( .A(sig_cyclesTrame4[8]), .B(
        sig_cyclesTrame3[8]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[8] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[9] ), .S(N24) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_9  ( .A(sig_cyclesTrame4[9]), .B(
        sig_cyclesTrame3[9]), .CI(\add_2_root_sub_0_root_sub_235_cf/carry[9] ), 
        .CO(\add_2_root_sub_0_root_sub_235_cf/carry[10] ), .S(N25) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_10  ( .A(sig_cyclesTrame4[10]), 
        .B(sig_cyclesTrame3[10]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[10] ), .CO(
        \add_2_root_sub_0_root_sub_235_cf/carry[11] ), .S(N26) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_11  ( .A(sig_cyclesTrame4[11]), 
        .B(sig_cyclesTrame3[11]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[11] ), .CO(
        \add_2_root_sub_0_root_sub_235_cf/carry[12] ), .S(N27) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_12  ( .A(sig_cyclesTrame4[12]), 
        .B(sig_cyclesTrame3[12]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[12] ), .CO(
        \add_2_root_sub_0_root_sub_235_cf/carry[13] ), .S(N28) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_13  ( .A(sig_cyclesTrame4[13]), 
        .B(sig_cyclesTrame3[13]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[13] ), .CO(
        \add_2_root_sub_0_root_sub_235_cf/carry[14] ), .S(N29) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_14  ( .A(sig_cyclesTrame4[14]), 
        .B(sig_cyclesTrame3[14]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[14] ), .CO(
        \add_2_root_sub_0_root_sub_235_cf/carry[15] ), .S(N30) );
  ADD32 \add_2_root_sub_0_root_sub_235_cf/U1_15  ( .A(sig_cyclesTrame4[15]), 
        .B(sig_cyclesTrame3[15]), .CI(
        \add_2_root_sub_0_root_sub_235_cf/carry[15] ), .CO(N32), .S(N31) );
  DFE1 \sig_reg_storage_reg[14]  ( .D(i_reg[14]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[14]) );
  DFE1 \sig_reg_storage_reg[30]  ( .D(i_reg[30]), .E(n20), .C(i_clk), .Q(
        sig_reg_storage[30]) );
  DFE1 \sig_reg_storage_reg[22]  ( .D(i_reg[22]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[22]) );
  DFE1 \sig_reg_storage_reg[13]  ( .D(i_reg[13]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[13]) );
  DFE1 \sig_reg_storage_reg[6]  ( .D(i_reg[6]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[6]) );
  DFE1 \sig_reg_storage_reg[29]  ( .D(i_reg[29]), .E(n20), .C(i_clk), .Q(
        sig_reg_storage[29]) );
  DFE1 \sig_reg_storage_reg[21]  ( .D(i_reg[21]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[21]) );
  DFE1 \sig_reg_storage_reg[5]  ( .D(i_reg[5]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[5]) );
  DFE1 \sig_reg_storage_reg[12]  ( .D(i_reg[12]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[12]) );
  DFE1 \sig_reg_storage_reg[11]  ( .D(i_reg[11]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[11]) );
  DFE1 \sig_reg_storage_reg[28]  ( .D(i_reg[28]), .E(n20), .C(i_clk), .Q(
        sig_reg_storage[28]) );
  DFE1 \sig_reg_storage_reg[20]  ( .D(i_reg[20]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[20]) );
  DFE1 \sig_reg_storage_reg[4]  ( .D(i_reg[4]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[4]) );
  DFE1 \sig_reg_storage_reg[27]  ( .D(i_reg[27]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[27]) );
  DFE1 \sig_reg_storage_reg[19]  ( .D(i_reg[19]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[19]) );
  DFE1 \sig_reg_storage_reg[10]  ( .D(i_reg[10]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[10]) );
  DFE1 \sig_reg_storage_reg[3]  ( .D(i_reg[3]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[3]) );
  DFE1 \sig_reg_storage_reg[26]  ( .D(i_reg[26]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[26]) );
  DFE1 \sig_reg_storage_reg[18]  ( .D(i_reg[18]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[18]) );
  DFE1 \sig_reg_storage_reg[2]  ( .D(i_reg[2]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[2]) );
  DFE1 \sig_reg_storage_reg[9]  ( .D(i_reg[9]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[9]) );
  DFE1 \sig_reg_storage_reg[25]  ( .D(i_reg[25]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[25]) );
  DFE1 \sig_reg_storage_reg[17]  ( .D(i_reg[17]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[17]) );
  DFE1 \sig_reg_storage_reg[1]  ( .D(i_reg[1]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[1]) );
  DFE1 \sig_reg_storage_reg[8]  ( .D(i_reg[8]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[8]) );
  DFE1 \sig_reg_storage_reg[0]  ( .D(i_reg[0]), .E(n16), .C(i_clk), .Q(
        sig_reg_storage[0]) );
  DFE1 \sig_reg_storage_reg[24]  ( .D(i_reg[24]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[24]) );
  DFE1 \sig_reg_storage_reg[16]  ( .D(i_reg[16]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[16]) );
  DFE1 \sig_reg_storage_reg[31]  ( .D(i_reg[31]), .E(n20), .C(i_clk), .Q(
        sig_reg_storage[31]) );
  DFE1 \sig_reg_storage_reg[23]  ( .D(i_reg[23]), .E(n19), .C(i_clk), .Q(
        sig_reg_storage[23]) );
  DFE1 \sig_reg_storage_reg[15]  ( .D(i_reg[15]), .E(n18), .C(i_clk), .Q(
        sig_reg_storage[15]) );
  DFE1 \sig_reg_storage_reg[7]  ( .D(i_reg[7]), .E(n17), .C(i_clk), .Q(
        sig_reg_storage[7]) );
  XNR21 U3 ( .A(N268), .B(\sub_114_cf/carry[9] ), .Q(n1) );
  XNR21 U4 ( .A(N265), .B(\sub_114_cf/carry[12] ), .Q(n2) );
  XOR21 U5 ( .A(\sub_114_cf/carry[14] ), .B(N263), .Q(n3) );
  XOR21 U7 ( .A(\sub_114_cf/carry[6] ), .B(N271), .Q(n4) );
  XNR21 U8 ( .A(N269), .B(\sub_114_cf/carry[8] ), .Q(n5) );
  XOR21 U9 ( .A(\sub_114_cf/carry[4] ), .B(N273), .Q(n6) );
  XNR21 U10 ( .A(N266), .B(\sub_114_cf/carry[11] ), .Q(n7) );
  XNR21 U11 ( .A(N270), .B(\sub_114_cf/carry[7] ), .Q(n8) );
  XOR21 U12 ( .A(\sub_114_cf/carry[3] ), .B(N274), .Q(n9) );
  XNR21 U14 ( .A(N264), .B(\sub_114_cf/carry[13] ), .Q(n10) );
  XOR21 U15 ( .A(\sub_114_cf/carry[10] ), .B(N267), .Q(n11) );
  XNR21 U17 ( .A(N272), .B(\sub_114_cf/carry[5] ), .Q(n12) );
  NAND22 U18 ( .A(n26), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ), .Q(
        n24) );
  INV3 U19 ( .A(sig_cyclesTrame2[12]), .Q(n197) );
  INV3 U20 ( .A(sig_cyclesTrame3[12]), .Q(n239) );
  INV3 U21 ( .A(sig_cyclesTrame4[12]), .Q(n280) );
  INV3 U22 ( .A(sig_cyclesTrame2[13]), .Q(n198) );
  INV3 U23 ( .A(sig_cyclesTrame3[13]), .Q(n240) );
  INV3 U24 ( .A(sig_cyclesTrame4[13]), .Q(n281) );
  INV3 U25 ( .A(sig_cyclesTrame2[11]), .Q(n196) );
  INV3 U26 ( .A(sig_cyclesTrame3[11]), .Q(n238) );
  INV3 U27 ( .A(sig_cyclesTrame4[11]), .Q(n279) );
  INV3 U28 ( .A(sig_cyclesTrame2[10]), .Q(n195) );
  INV3 U29 ( .A(sig_cyclesTrame4[10]), .Q(n278) );
  INV3 U30 ( .A(sig_cyclesTrame3[10]), .Q(n237) );
  INV3 U31 ( .A(sig_cyclesTrame2[9]), .Q(n194) );
  INV3 U32 ( .A(sig_cyclesTrame3[9]), .Q(n236) );
  INV3 U33 ( .A(sig_cyclesTrame4[9]), .Q(n277) );
  INV3 U34 ( .A(N198), .Q(n320) );
  INV3 U35 ( .A(sig_cyclesTrame2[14]), .Q(n199) );
  INV3 U36 ( .A(sig_cyclesTrame4[14]), .Q(n282) );
  INV3 U37 ( .A(sig_cyclesTrame3[14]), .Q(n241) );
  INV3 U38 ( .A(sig_cyclesTrame2[8]), .Q(n193) );
  INV3 U40 ( .A(sig_cyclesTrame4[8]), .Q(n276) );
  INV3 U41 ( .A(sig_cyclesTrame3[8]), .Q(n235) );
  INV3 U42 ( .A(sig_cyclesTrame2[7]), .Q(n192) );
  INV3 U43 ( .A(sig_cyclesTrame3[7]), .Q(n234) );
  INV3 U44 ( .A(sig_cyclesTrame2[6]), .Q(n191) );
  INV3 U45 ( .A(sig_cyclesTrame3[6]), .Q(n233) );
  INV3 U46 ( .A(sig_cyclesTrame4[7]), .Q(n275) );
  INV3 U47 ( .A(sig_cyclesTrame4[6]), .Q(n274) );
  INV3 U48 ( .A(sig_cyclesTrame2[5]), .Q(n190) );
  INV3 U49 ( .A(sig_cyclesTrame4[5]), .Q(n273) );
  INV3 U50 ( .A(sig_cyclesTrame3[5]), .Q(n232) );
  BUF2 U51 ( .A(n330), .Q(n16) );
  BUF2 U52 ( .A(n330), .Q(n17) );
  BUF2 U53 ( .A(n330), .Q(n18) );
  BUF2 U54 ( .A(n330), .Q(n19) );
  BUF2 U55 ( .A(n330), .Q(n20) );
  INV3 U56 ( .A(n299), .Q(n317) );
  INV3 U57 ( .A(\sig_cyclesTrame1[2] ), .Q(n130) );
  INV3 U58 ( .A(N57), .Q(n129) );
  INV3 U59 ( .A(n213), .Q(n243) );
  INV3 U60 ( .A(n142), .Q(n159) );
  INV3 U61 ( .A(n138), .Q(n157) );
  INV3 U62 ( .A(n171), .Q(n201) );
  INV3 U63 ( .A(n255), .Q(n284) );
  INV3 U64 ( .A(n15), .Q(n227) );
  INV3 U65 ( .A(sig_cyclesTrame2[4]), .Q(n188) );
  INV3 U66 ( .A(sig_cyclesTrame3[4]), .Q(n230) );
  INV3 U67 ( .A(sig_cyclesTrame2[3]), .Q(n187) );
  INV3 U68 ( .A(sig_cyclesTrame4[4]), .Q(n271) );
  INV3 U69 ( .A(sig_cyclesTrame3[3]), .Q(n229) );
  INV3 U70 ( .A(sig_cyclesTrame4[3]), .Q(n270) );
  INV1 U71 ( .A(sig_cyclesTrame2[2]), .Q(n186) );
  INV1 U72 ( .A(sig_cyclesTrame4[2]), .Q(n269) );
  INV2 U73 ( .A(sig_cyclesTrame3[2]), .Q(n228) );
  NAND22 U74 ( .A(n315), .B(N179), .Q(n305) );
  INV3 U75 ( .A(n14), .Q(n156) );
  NOR31 U76 ( .A(n71), .B(n72), .C(n70), .Q(n69) );
  INV3 U77 ( .A(n71), .Q(n323) );
  INV3 U78 ( .A(n72), .Q(n326) );
  INV3 U79 ( .A(n76), .Q(n327) );
  INV3 U80 ( .A(n60), .Q(n330) );
  INV3 U81 ( .A(n70), .Q(n328) );
  INV3 U82 ( .A(n73), .Q(n319) );
  OAI2111 U83 ( .A(n323), .B(n70), .C(n74), .D(n75), .Q(n73) );
  NAND31 U84 ( .A(n63), .B(n53), .C(i_reset_n), .Q(n75) );
  NAND31 U85 ( .A(n76), .B(n320), .C(i_reset_n), .Q(n74) );
  NAND22 U86 ( .A(sig_state[0]), .B(n58), .Q(n65) );
  INV3 U87 ( .A(n69), .Q(n324) );
  INV3 U88 ( .A(n66), .Q(n318) );
  NAND41 U89 ( .A(n69), .B(sig_state[1]), .C(sig_state[0]), .D(n57), .Q(n68)
         );
  AOI211 U90 ( .A(n328), .B(n58), .C(n66), .Q(n67) );
  OAI2111 U91 ( .A(n327), .B(n320), .C(n60), .D(n61), .Q(sig_in_init) );
  AOI221 U92 ( .A(n323), .B(n62), .C(n63), .D(n64), .Q(n61) );
  INV3 U93 ( .A(n77), .Q(n321) );
  NAND31 U94 ( .A(i_reset_n), .B(n76), .C(N198), .Q(n77) );
  OAI2110 U95 ( .A(N198), .B(n327), .C(n78), .D(i_reset_n), .Q(N82) );
  NAND31 U96 ( .A(n72), .B(n323), .C(n79), .Q(n78) );
  INV3 U97 ( .A(N276), .Q(N57) );
  INV3 U98 ( .A(n164), .Q(n200) );
  INV3 U99 ( .A(n206), .Q(n242) );
  INV3 U100 ( .A(n135), .Q(n158) );
  INV3 U101 ( .A(n248), .Q(n283) );
  NOR21 U102 ( .A(n93), .B(n58), .Q(n92) );
  AOI221 U103 ( .A(N156), .B(n59), .C(N163), .D(sig_state[0]), .Q(n93) );
  INV3 U104 ( .A(N169), .Q(n322) );
  AOI311 U105 ( .A(N148), .B(n58), .C(sig_state[0]), .D(n92), .Q(n91) );
  OAI2111 U106 ( .A(n64), .B(n80), .C(n81), .D(i_reset_n), .Q(N81) );
  NAND22 U107 ( .A(n63), .B(n53), .Q(n80) );
  NAND31 U108 ( .A(n323), .B(n326), .C(n79), .Q(n81) );
  INV3 U109 ( .A(N246), .Q(sig_cyclesTrame3[1]) );
  INV3 U110 ( .A(N231), .Q(sig_cyclesTrame4[1]) );
  INV3 U111 ( .A(N261), .Q(sig_cyclesTrame2[1]) );
  INV3 U112 ( .A(n167), .Q(n189) );
  INV3 U113 ( .A(n13), .Q(n185) );
  INV3 U114 ( .A(n209), .Q(n231) );
  INV3 U115 ( .A(n251), .Q(n272) );
  INV3 U116 ( .A(n300), .Q(n316) );
  INV3 U117 ( .A(sig_out_local_count[0]), .Q(n314) );
  BUF2 U118 ( .A(sig_out_local_count[2]), .Q(n13) );
  BUF2 U119 ( .A(sig_out_local_count[16]), .Q(n14) );
  BUF2 U120 ( .A(sig_out_local_count[17]), .Q(n15) );
  INV3 U121 ( .A(sig_out_local_count[1]), .Q(n315) );
  NAND41 U122 ( .A(n82), .B(n83), .C(n84), .D(n85), .Q(n71) );
  NOR21 U123 ( .A(n14), .B(sig_out_local_count[15]), .Q(n82) );
  NOR31 U124 ( .A(n15), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n83) );
  NOR40 U125 ( .A(sig_out_local_count[5]), .B(n325), .C(sig_out_local_count[4]), .D(n13), .Q(n84) );
  NOR31 U126 ( .A(sig_state[0]), .B(sig_state[1]), .C(n57), .Q(n72) );
  NOR31 U127 ( .A(n86), .B(n87), .C(n88), .Q(n85) );
  NAND22 U128 ( .A(sig_out_local_count[8]), .B(sig_out_local_count[6]), .Q(n88) );
  NAND31 U129 ( .A(sig_out_local_count[1]), .B(sig_out_local_count[12]), .C(
        sig_out_local_count[3]), .Q(n87) );
  NAND41 U130 ( .A(sig_out_local_count[11]), .B(sig_out_local_count[10]), .C(
        n89), .D(sig_out_local_count[0]), .Q(n86) );
  INV3 U131 ( .A(n90), .Q(n325) );
  NOR21 U132 ( .A(sig_out_local_count[9]), .B(sig_out_local_count[7]), .Q(n90)
         );
  NOR21 U133 ( .A(sig_out_local_count[14]), .B(sig_out_local_count[13]), .Q(
        n89) );
  NOR31 U134 ( .A(current_state[0]), .B(current_state[2]), .C(n53), .Q(n76) );
  AOI221 U135 ( .A(n63), .B(current_state[1]), .C(n62), .D(current_state[2]), 
        .Q(n60) );
  NAND22 U136 ( .A(i_reset_n), .B(n79), .Q(n70) );
  NOR21 U137 ( .A(n55), .B(current_state[2]), .Q(n63) );
  NOR21 U138 ( .A(current_state[0]), .B(current_state[1]), .Q(n62) );
  NOR21 U139 ( .A(n329), .B(current_state[2]), .Q(n79) );
  INV3 U140 ( .A(n62), .Q(n329) );
  LOGIC1 U141 ( .Q(n331) );
  LOGIC0 U142 ( .Q(sig_cyclesTrame2_27) );
  NOR20 U143 ( .A(\sub_120_cf/carry[14] ), .B(N233), .Q(n21) );
  XNR20 U144 ( .A(\sub_120_cf/carry[14] ), .B(N233), .Q(sig_cyclesTrame3[14])
         );
  CLKIN0 U145 ( .A(n21), .Q(sig_cyclesTrame3[15]) );
  NOR20 U146 ( .A(\sub_123_cf/carry[14] ), .B(N218), .Q(n22) );
  XNR20 U147 ( .A(\sub_123_cf/carry[14] ), .B(N218), .Q(sig_cyclesTrame4[14])
         );
  CLKIN0 U148 ( .A(n22), .Q(sig_cyclesTrame4[15]) );
  NOR20 U149 ( .A(\sub_117_cf/carry[14] ), .B(N248), .Q(n23) );
  XNR20 U150 ( .A(\sub_117_cf/carry[14] ), .B(N248), .Q(sig_cyclesTrame2[14])
         );
  CLKIN0 U151 ( .A(n23), .Q(sig_cyclesTrame2[15]) );
  XOR20 U152 ( .A(n26), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ), .Q(
        N71) );
  CLKIN0 U153 ( .A(n24), .Q(N75) );
  NAND20 U154 ( .A(n3), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ), .Q(
        n25) );
  XOR20 U155 ( .A(n3), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ), .Q(
        N70) );
  CLKIN0 U156 ( .A(n25), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ) );
  NOR20 U157 ( .A(\sub_114_cf/carry[14] ), .B(N263), .Q(n26) );
  NAND20 U158 ( .A(N234), .B(\sub_120_cf/carry[13] ), .Q(n27) );
  XOR20 U159 ( .A(N234), .B(\sub_120_cf/carry[13] ), .Q(sig_cyclesTrame3[13])
         );
  CLKIN0 U160 ( .A(n27), .Q(\sub_120_cf/carry[14] ) );
  NAND20 U161 ( .A(N235), .B(\sub_120_cf/carry[12] ), .Q(n28) );
  XOR20 U162 ( .A(N235), .B(\sub_120_cf/carry[12] ), .Q(sig_cyclesTrame3[12])
         );
  CLKIN0 U163 ( .A(n28), .Q(\sub_120_cf/carry[13] ) );
  NAND20 U164 ( .A(N219), .B(\sub_123_cf/carry[13] ), .Q(n29) );
  XOR20 U165 ( .A(N219), .B(\sub_123_cf/carry[13] ), .Q(sig_cyclesTrame4[13])
         );
  CLKIN0 U166 ( .A(n29), .Q(\sub_123_cf/carry[14] ) );
  NAND20 U167 ( .A(N220), .B(\sub_123_cf/carry[12] ), .Q(n30) );
  XOR20 U168 ( .A(N220), .B(\sub_123_cf/carry[12] ), .Q(sig_cyclesTrame4[12])
         );
  CLKIN0 U169 ( .A(n30), .Q(\sub_123_cf/carry[13] ) );
  NAND20 U170 ( .A(N249), .B(\sub_117_cf/carry[13] ), .Q(n31) );
  XOR20 U171 ( .A(N249), .B(\sub_117_cf/carry[13] ), .Q(sig_cyclesTrame2[13])
         );
  CLKIN0 U172 ( .A(n31), .Q(\sub_117_cf/carry[14] ) );
  NAND20 U173 ( .A(N250), .B(\sub_117_cf/carry[12] ), .Q(n32) );
  XOR20 U174 ( .A(N250), .B(\sub_117_cf/carry[12] ), .Q(sig_cyclesTrame2[12])
         );
  CLKIN0 U175 ( .A(n32), .Q(\sub_117_cf/carry[13] ) );
  NAND20 U176 ( .A(n10), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ), .Q(
        n33) );
  XOR20 U177 ( .A(n10), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ), .Q(
        N69) );
  CLKIN0 U178 ( .A(n33), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ) );
  NAND20 U179 ( .A(n2), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ), .Q(
        n34) );
  XOR20 U180 ( .A(n2), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ), .Q(
        N68) );
  CLKIN0 U181 ( .A(n34), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ) );
  NAND20 U182 ( .A(N264), .B(\sub_114_cf/carry[13] ), .Q(n35) );
  CLKIN0 U183 ( .A(n35), .Q(\sub_114_cf/carry[14] ) );
  NAND20 U184 ( .A(N265), .B(\sub_114_cf/carry[12] ), .Q(n36) );
  CLKIN0 U185 ( .A(n36), .Q(\sub_114_cf/carry[13] ) );
  NAND20 U186 ( .A(N236), .B(\sub_120_cf/carry[11] ), .Q(n37) );
  XOR20 U187 ( .A(N236), .B(\sub_120_cf/carry[11] ), .Q(sig_cyclesTrame3[11])
         );
  CLKIN0 U188 ( .A(n37), .Q(\sub_120_cf/carry[12] ) );
  NAND20 U189 ( .A(N221), .B(\sub_123_cf/carry[11] ), .Q(n38) );
  XOR20 U190 ( .A(N221), .B(\sub_123_cf/carry[11] ), .Q(sig_cyclesTrame4[11])
         );
  CLKIN0 U191 ( .A(n38), .Q(\sub_123_cf/carry[12] ) );
  NAND20 U192 ( .A(N251), .B(\sub_117_cf/carry[11] ), .Q(n39) );
  XOR20 U193 ( .A(N251), .B(\sub_117_cf/carry[11] ), .Q(sig_cyclesTrame2[11])
         );
  CLKIN0 U194 ( .A(n39), .Q(\sub_117_cf/carry[12] ) );
  NAND20 U195 ( .A(n7), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ), .Q(
        n40) );
  XOR20 U196 ( .A(n7), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ), .Q(
        N67) );
  CLKIN0 U197 ( .A(n40), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ) );
  NAND20 U198 ( .A(N266), .B(\sub_114_cf/carry[11] ), .Q(n41) );
  CLKIN0 U199 ( .A(n41), .Q(\sub_114_cf/carry[12] ) );
  NOR20 U200 ( .A(sig_cyclesTrame4[1]), .B(sig_cyclesTrame3[1]), .Q(n42) );
  XNR20 U201 ( .A(sig_cyclesTrame4[1]), .B(sig_cyclesTrame3[1]), .Q(N17) );
  CLKIN0 U202 ( .A(n42), .Q(\add_2_root_sub_0_root_sub_235_cf/carry[2] ) );
  NOR20 U203 ( .A(\sub_120_cf/carry[10] ), .B(N237), .Q(n43) );
  XNR20 U204 ( .A(\sub_120_cf/carry[10] ), .B(N237), .Q(sig_cyclesTrame3[10])
         );
  CLKIN0 U205 ( .A(n43), .Q(\sub_120_cf/carry[11] ) );
  NAND20 U206 ( .A(N238), .B(\sub_120_cf/carry[9] ), .Q(n44) );
  XOR20 U207 ( .A(N238), .B(\sub_120_cf/carry[9] ), .Q(sig_cyclesTrame3[9]) );
  CLKIN0 U208 ( .A(n44), .Q(\sub_120_cf/carry[10] ) );
  NAND20 U209 ( .A(N239), .B(\sub_120_cf/carry[8] ), .Q(n45) );
  XOR20 U210 ( .A(N239), .B(\sub_120_cf/carry[8] ), .Q(sig_cyclesTrame3[8]) );
  CLKIN0 U211 ( .A(n45), .Q(\sub_120_cf/carry[9] ) );
  NAND20 U212 ( .A(N240), .B(\sub_120_cf/carry[7] ), .Q(n46) );
  XOR20 U213 ( .A(N240), .B(\sub_120_cf/carry[7] ), .Q(sig_cyclesTrame3[7]) );
  CLKIN0 U214 ( .A(n46), .Q(\sub_120_cf/carry[8] ) );
  NOR20 U215 ( .A(\sub_120_cf/carry[6] ), .B(N241), .Q(n47) );
  XNR20 U216 ( .A(\sub_120_cf/carry[6] ), .B(N241), .Q(sig_cyclesTrame3[6]) );
  CLKIN0 U217 ( .A(n47), .Q(\sub_120_cf/carry[7] ) );
  NAND20 U218 ( .A(N242), .B(\sub_120_cf/carry[5] ), .Q(n48) );
  XOR20 U219 ( .A(N242), .B(\sub_120_cf/carry[5] ), .Q(sig_cyclesTrame3[5]) );
  CLKIN0 U220 ( .A(n48), .Q(\sub_120_cf/carry[6] ) );
  NOR20 U221 ( .A(\sub_120_cf/carry[4] ), .B(N243), .Q(n49) );
  XNR20 U222 ( .A(\sub_120_cf/carry[4] ), .B(N243), .Q(sig_cyclesTrame3[4]) );
  CLKIN0 U223 ( .A(n49), .Q(\sub_120_cf/carry[5] ) );
  NOR20 U224 ( .A(\sub_120_cf/carry[3] ), .B(N244), .Q(n50) );
  XNR20 U225 ( .A(\sub_120_cf/carry[3] ), .B(N244), .Q(sig_cyclesTrame3[3]) );
  CLKIN0 U226 ( .A(n50), .Q(\sub_120_cf/carry[4] ) );
  NAND20 U227 ( .A(N245), .B(N246), .Q(n51) );
  XOR20 U228 ( .A(N245), .B(N246), .Q(sig_cyclesTrame3[2]) );
  CLKIN0 U229 ( .A(n51), .Q(\sub_120_cf/carry[3] ) );
  NOR20 U230 ( .A(\sub_123_cf/carry[10] ), .B(N222), .Q(n52) );
  XNR20 U231 ( .A(\sub_123_cf/carry[10] ), .B(N222), .Q(sig_cyclesTrame4[10])
         );
  CLKIN0 U232 ( .A(n52), .Q(\sub_123_cf/carry[11] ) );
  NAND20 U233 ( .A(N223), .B(\sub_123_cf/carry[9] ), .Q(n54) );
  XOR20 U234 ( .A(N223), .B(\sub_123_cf/carry[9] ), .Q(sig_cyclesTrame4[9]) );
  CLKIN0 U235 ( .A(n54), .Q(\sub_123_cf/carry[10] ) );
  NAND20 U236 ( .A(N224), .B(\sub_123_cf/carry[8] ), .Q(n56) );
  XOR20 U237 ( .A(N224), .B(\sub_123_cf/carry[8] ), .Q(sig_cyclesTrame4[8]) );
  CLKIN0 U238 ( .A(n56), .Q(\sub_123_cf/carry[9] ) );
  NAND20 U239 ( .A(N225), .B(\sub_123_cf/carry[7] ), .Q(n96) );
  XOR20 U240 ( .A(N225), .B(\sub_123_cf/carry[7] ), .Q(sig_cyclesTrame4[7]) );
  CLKIN0 U241 ( .A(n96), .Q(\sub_123_cf/carry[8] ) );
  NOR20 U242 ( .A(\sub_123_cf/carry[6] ), .B(N226), .Q(n97) );
  XNR20 U243 ( .A(\sub_123_cf/carry[6] ), .B(N226), .Q(sig_cyclesTrame4[6]) );
  CLKIN0 U244 ( .A(n97), .Q(\sub_123_cf/carry[7] ) );
  NAND20 U245 ( .A(N227), .B(\sub_123_cf/carry[5] ), .Q(n98) );
  XOR20 U246 ( .A(N227), .B(\sub_123_cf/carry[5] ), .Q(sig_cyclesTrame4[5]) );
  CLKIN0 U247 ( .A(n98), .Q(\sub_123_cf/carry[6] ) );
  NOR20 U248 ( .A(\sub_123_cf/carry[4] ), .B(N228), .Q(n99) );
  XNR20 U249 ( .A(\sub_123_cf/carry[4] ), .B(N228), .Q(sig_cyclesTrame4[4]) );
  CLKIN0 U250 ( .A(n99), .Q(\sub_123_cf/carry[5] ) );
  NOR20 U251 ( .A(\sub_123_cf/carry[3] ), .B(N229), .Q(n100) );
  XNR20 U252 ( .A(\sub_123_cf/carry[3] ), .B(N229), .Q(sig_cyclesTrame4[3]) );
  CLKIN0 U253 ( .A(n100), .Q(\sub_123_cf/carry[4] ) );
  NAND20 U254 ( .A(N230), .B(N231), .Q(n101) );
  XOR20 U255 ( .A(N230), .B(N231), .Q(sig_cyclesTrame4[2]) );
  CLKIN0 U256 ( .A(n101), .Q(\sub_123_cf/carry[3] ) );
  NOR20 U257 ( .A(\sub_117_cf/carry[10] ), .B(N252), .Q(n102) );
  XNR20 U258 ( .A(\sub_117_cf/carry[10] ), .B(N252), .Q(sig_cyclesTrame2[10])
         );
  CLKIN0 U259 ( .A(n102), .Q(\sub_117_cf/carry[11] ) );
  NAND20 U260 ( .A(N253), .B(\sub_117_cf/carry[9] ), .Q(n103) );
  XOR20 U261 ( .A(N253), .B(\sub_117_cf/carry[9] ), .Q(sig_cyclesTrame2[9]) );
  CLKIN0 U262 ( .A(n103), .Q(\sub_117_cf/carry[10] ) );
  NAND20 U263 ( .A(N254), .B(\sub_117_cf/carry[8] ), .Q(n104) );
  XOR20 U264 ( .A(N254), .B(\sub_117_cf/carry[8] ), .Q(sig_cyclesTrame2[8]) );
  CLKIN0 U265 ( .A(n104), .Q(\sub_117_cf/carry[9] ) );
  NAND20 U266 ( .A(N255), .B(\sub_117_cf/carry[7] ), .Q(n105) );
  XOR20 U267 ( .A(N255), .B(\sub_117_cf/carry[7] ), .Q(sig_cyclesTrame2[7]) );
  CLKIN0 U268 ( .A(n105), .Q(\sub_117_cf/carry[8] ) );
  NOR20 U269 ( .A(\sub_117_cf/carry[6] ), .B(N256), .Q(n106) );
  XNR20 U270 ( .A(\sub_117_cf/carry[6] ), .B(N256), .Q(sig_cyclesTrame2[6]) );
  CLKIN0 U271 ( .A(n106), .Q(\sub_117_cf/carry[7] ) );
  NAND20 U272 ( .A(N257), .B(\sub_117_cf/carry[5] ), .Q(n107) );
  XOR20 U273 ( .A(N257), .B(\sub_117_cf/carry[5] ), .Q(sig_cyclesTrame2[5]) );
  CLKIN0 U274 ( .A(n107), .Q(\sub_117_cf/carry[6] ) );
  NOR20 U275 ( .A(\sub_117_cf/carry[4] ), .B(N258), .Q(n108) );
  XNR20 U276 ( .A(\sub_117_cf/carry[4] ), .B(N258), .Q(sig_cyclesTrame2[4]) );
  CLKIN0 U277 ( .A(n108), .Q(\sub_117_cf/carry[5] ) );
  NOR20 U278 ( .A(\sub_117_cf/carry[3] ), .B(N259), .Q(n109) );
  XNR20 U279 ( .A(\sub_117_cf/carry[3] ), .B(N259), .Q(sig_cyclesTrame2[3]) );
  CLKIN0 U280 ( .A(n109), .Q(\sub_117_cf/carry[4] ) );
  NAND20 U281 ( .A(N260), .B(N261), .Q(n110) );
  XOR20 U282 ( .A(N260), .B(N261), .Q(sig_cyclesTrame2[2]) );
  CLKIN0 U283 ( .A(n110), .Q(\sub_117_cf/carry[3] ) );
  NAND20 U284 ( .A(n11), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ), .Q(
        n111) );
  XOR20 U285 ( .A(n11), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ), .Q(
        N66) );
  CLKIN0 U286 ( .A(n111), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ) );
  NOR20 U287 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ), .B(n1), .Q(
        n112) );
  XNR20 U288 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ), .B(n1), .Q(N65) );
  CLKIN0 U289 ( .A(n112), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ) );
  NAND20 U290 ( .A(n5), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ), .Q(
        n113) );
  XOR20 U291 ( .A(n5), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ), .Q(N64) );
  CLKIN0 U292 ( .A(n113), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ) );
  NOR20 U293 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ), .B(n8), .Q(
        n114) );
  XNR20 U294 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ), .B(n8), .Q(N63) );
  CLKIN0 U295 ( .A(n114), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ) );
  NOR20 U296 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ), .B(n4), .Q(
        n115) );
  XNR20 U297 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ), .B(n4), .Q(N62) );
  CLKIN0 U298 ( .A(n115), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ) );
  NAND20 U299 ( .A(n12), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ), .Q(
        n116) );
  XOR20 U300 ( .A(n12), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ), .Q(
        N61) );
  CLKIN0 U301 ( .A(n116), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ) );
  NAND20 U302 ( .A(n6), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ), .Q(
        n117) );
  XOR20 U303 ( .A(n6), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ), .Q(N60) );
  CLKIN0 U304 ( .A(n117), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ) );
  NAND20 U305 ( .A(n9), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ), .Q(
        n118) );
  XOR20 U306 ( .A(n9), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ), .Q(N59) );
  CLKIN0 U307 ( .A(n118), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ) );
  NAND20 U308 ( .A(n130), .B(n129), .Q(n119) );
  XOR20 U309 ( .A(n130), .B(n129), .Q(N58) );
  CLKIN0 U310 ( .A(n119), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ) );
  NOR20 U311 ( .A(\sub_114_cf/carry[10] ), .B(N267), .Q(n120) );
  CLKIN0 U312 ( .A(n120), .Q(\sub_114_cf/carry[11] ) );
  NAND20 U313 ( .A(N268), .B(\sub_114_cf/carry[9] ), .Q(n121) );
  CLKIN0 U314 ( .A(n121), .Q(\sub_114_cf/carry[10] ) );
  NAND20 U315 ( .A(N269), .B(\sub_114_cf/carry[8] ), .Q(n122) );
  CLKIN0 U316 ( .A(n122), .Q(\sub_114_cf/carry[9] ) );
  NAND20 U317 ( .A(N270), .B(\sub_114_cf/carry[7] ), .Q(n123) );
  CLKIN0 U318 ( .A(n123), .Q(\sub_114_cf/carry[8] ) );
  NOR20 U319 ( .A(\sub_114_cf/carry[6] ), .B(N271), .Q(n124) );
  CLKIN0 U320 ( .A(n124), .Q(\sub_114_cf/carry[7] ) );
  NAND20 U321 ( .A(N272), .B(\sub_114_cf/carry[5] ), .Q(n125) );
  CLKIN0 U322 ( .A(n125), .Q(\sub_114_cf/carry[6] ) );
  NOR20 U323 ( .A(\sub_114_cf/carry[4] ), .B(N273), .Q(n126) );
  CLKIN0 U324 ( .A(n126), .Q(\sub_114_cf/carry[5] ) );
  NOR20 U325 ( .A(\sub_114_cf/carry[3] ), .B(N274), .Q(n127) );
  CLKIN0 U326 ( .A(n127), .Q(\sub_114_cf/carry[4] ) );
  NAND20 U327 ( .A(N275), .B(N276), .Q(n128) );
  XOR20 U328 ( .A(N275), .B(N276), .Q(\sig_cyclesTrame1[2] ) );
  CLKIN0 U329 ( .A(n128), .Q(\sub_114_cf/carry[3] ) );
  OAI220 U330 ( .A(n3), .B(sig_out_local_count[14]), .C(n10), .D(
        sig_out_local_count[13]), .Q(n134) );
  NOR20 U331 ( .A(n26), .B(sig_out_local_count[15]), .Q(n133) );
  OAI220 U332 ( .A(n2), .B(sig_out_local_count[12]), .C(n7), .D(
        sig_out_local_count[11]), .Q(n132) );
  OAI220 U333 ( .A(n11), .B(sig_out_local_count[10]), .C(n1), .D(
        sig_out_local_count[9]), .Q(n131) );
  NOR40 U334 ( .A(n134), .B(n133), .C(n132), .D(n131), .Q(n135) );
  AOI220 U335 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        n129), .D(sig_out_local_count[0]), .Q(n137) );
  OAI220 U336 ( .A(n6), .B(sig_out_local_count[4]), .C(n9), .D(
        sig_out_local_count[3]), .Q(n136) );
  AOI2110 U337 ( .A(n185), .B(\sig_cyclesTrame1[2] ), .C(n137), .D(n136), .Q(
        n138) );
  OAI220 U338 ( .A(sig_out_local_count[5]), .B(n12), .C(sig_out_local_count[6]), .D(n4), .Q(n140) );
  OAI220 U339 ( .A(sig_out_local_count[7]), .B(n8), .C(sig_out_local_count[8]), 
        .D(n5), .Q(n139) );
  NOR40 U340 ( .A(n158), .B(n157), .C(n140), .D(n139), .Q(n141) );
  AOI220 U341 ( .A(sig_out_local_count[8]), .B(n5), .C(sig_out_local_count[9]), 
        .D(n1), .Q(n146) );
  AOI220 U342 ( .A(sig_out_local_count[6]), .B(n4), .C(sig_out_local_count[7]), 
        .D(n8), .Q(n145) );
  AOI220 U343 ( .A(sig_out_local_count[4]), .B(n6), .C(sig_out_local_count[5]), 
        .D(n12), .Q(n144) );
  AOI220 U344 ( .A(n13), .B(n130), .C(sig_out_local_count[3]), .D(n9), .Q(n143) );
  NAND40 U345 ( .A(n146), .B(n145), .C(n144), .D(n143), .Q(n152) );
  AOI220 U346 ( .A(sig_out_local_count[14]), .B(n3), .C(
        sig_out_local_count[15]), .D(n26), .Q(n150) );
  AOI220 U347 ( .A(sig_out_local_count[12]), .B(n2), .C(
        sig_out_local_count[13]), .D(n10), .Q(n148) );
  AOI220 U348 ( .A(sig_out_local_count[10]), .B(n11), .C(
        sig_out_local_count[11]), .D(n7), .Q(n147) );
  NAND40 U349 ( .A(n150), .B(n149), .C(n148), .D(n147), .Q(n151) );
  OAI210 U350 ( .A(n152), .B(n151), .C(n156), .Q(n153) );
  NOR40 U351 ( .A(n155), .B(n154), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N148) );
  NOR20 U352 ( .A(n141), .B(n14), .Q(n142) );
  NOR20 U353 ( .A(n15), .B(n159), .Q(n155) );
  NAND20 U354 ( .A(sig_out_local_count[1]), .B(n129), .Q(n149) );
  NAND30 U355 ( .A(n227), .B(n153), .C(n156), .Q(n154) );
  OAI220 U356 ( .A(n199), .B(sig_out_local_count[14]), .C(n198), .D(
        sig_out_local_count[13]), .Q(n163) );
  NOR20 U357 ( .A(n23), .B(sig_out_local_count[15]), .Q(n162) );
  OAI220 U358 ( .A(n197), .B(sig_out_local_count[12]), .C(n196), .D(
        sig_out_local_count[11]), .Q(n161) );
  OAI220 U359 ( .A(n195), .B(sig_out_local_count[10]), .C(n194), .D(
        sig_out_local_count[9]), .Q(n160) );
  NOR40 U360 ( .A(n163), .B(n162), .C(n161), .D(n160), .Q(n164) );
  AOI220 U361 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N261), .D(sig_out_local_count[0]), .Q(n166) );
  OAI220 U362 ( .A(n188), .B(sig_out_local_count[4]), .C(n187), .D(
        sig_out_local_count[3]), .Q(n165) );
  AOI2110 U363 ( .A(n185), .B(sig_cyclesTrame2[2]), .C(n166), .D(n165), .Q(
        n167) );
  OAI220 U364 ( .A(sig_out_local_count[5]), .B(n190), .C(
        sig_out_local_count[6]), .D(n191), .Q(n169) );
  OAI220 U365 ( .A(sig_out_local_count[7]), .B(n192), .C(
        sig_out_local_count[8]), .D(n193), .Q(n168) );
  NOR40 U366 ( .A(n200), .B(n189), .C(n169), .D(n168), .Q(n170) );
  AOI220 U367 ( .A(sig_out_local_count[8]), .B(n193), .C(
        sig_out_local_count[9]), .D(n194), .Q(n175) );
  AOI220 U368 ( .A(sig_out_local_count[6]), .B(n191), .C(
        sig_out_local_count[7]), .D(n192), .Q(n174) );
  AOI220 U369 ( .A(sig_out_local_count[4]), .B(n188), .C(
        sig_out_local_count[5]), .D(n190), .Q(n173) );
  AOI220 U370 ( .A(n13), .B(n186), .C(sig_out_local_count[3]), .D(n187), .Q(
        n172) );
  NAND40 U371 ( .A(n175), .B(n174), .C(n173), .D(n172), .Q(n181) );
  AOI220 U372 ( .A(sig_out_local_count[14]), .B(n199), .C(
        sig_out_local_count[15]), .D(n23), .Q(n179) );
  AOI220 U373 ( .A(sig_out_local_count[12]), .B(n197), .C(
        sig_out_local_count[13]), .D(n198), .Q(n177) );
  AOI220 U374 ( .A(sig_out_local_count[10]), .B(n195), .C(
        sig_out_local_count[11]), .D(n196), .Q(n176) );
  NAND40 U375 ( .A(n179), .B(n178), .C(n177), .D(n176), .Q(n180) );
  OAI210 U376 ( .A(n181), .B(n180), .C(n156), .Q(n182) );
  NOR40 U377 ( .A(n184), .B(n183), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N156) );
  NOR20 U378 ( .A(n170), .B(n14), .Q(n171) );
  NOR20 U379 ( .A(n15), .B(n201), .Q(n184) );
  NAND20 U380 ( .A(sig_out_local_count[1]), .B(N261), .Q(n178) );
  NAND30 U381 ( .A(n227), .B(n182), .C(n156), .Q(n183) );
  OAI220 U382 ( .A(n241), .B(sig_out_local_count[14]), .C(n240), .D(
        sig_out_local_count[13]), .Q(n205) );
  NOR20 U383 ( .A(n21), .B(sig_out_local_count[15]), .Q(n204) );
  OAI220 U384 ( .A(n239), .B(sig_out_local_count[12]), .C(n238), .D(
        sig_out_local_count[11]), .Q(n203) );
  OAI220 U385 ( .A(n237), .B(sig_out_local_count[10]), .C(n236), .D(
        sig_out_local_count[9]), .Q(n202) );
  NOR40 U386 ( .A(n205), .B(n204), .C(n203), .D(n202), .Q(n206) );
  AOI220 U387 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N246), .D(sig_out_local_count[0]), .Q(n208) );
  OAI220 U388 ( .A(n230), .B(sig_out_local_count[4]), .C(n229), .D(
        sig_out_local_count[3]), .Q(n207) );
  AOI2110 U389 ( .A(n185), .B(sig_cyclesTrame3[2]), .C(n208), .D(n207), .Q(
        n209) );
  OAI220 U390 ( .A(sig_out_local_count[5]), .B(n232), .C(
        sig_out_local_count[6]), .D(n233), .Q(n211) );
  OAI220 U391 ( .A(sig_out_local_count[7]), .B(n234), .C(
        sig_out_local_count[8]), .D(n235), .Q(n210) );
  NOR40 U392 ( .A(n242), .B(n231), .C(n211), .D(n210), .Q(n212) );
  AOI220 U393 ( .A(sig_out_local_count[8]), .B(n235), .C(
        sig_out_local_count[9]), .D(n236), .Q(n217) );
  AOI220 U394 ( .A(sig_out_local_count[6]), .B(n233), .C(
        sig_out_local_count[7]), .D(n234), .Q(n216) );
  AOI220 U395 ( .A(sig_out_local_count[4]), .B(n230), .C(
        sig_out_local_count[5]), .D(n232), .Q(n215) );
  AOI220 U396 ( .A(n13), .B(n228), .C(sig_out_local_count[3]), .D(n229), .Q(
        n214) );
  NAND40 U397 ( .A(n217), .B(n216), .C(n215), .D(n214), .Q(n223) );
  AOI220 U398 ( .A(sig_out_local_count[14]), .B(n241), .C(
        sig_out_local_count[15]), .D(n21), .Q(n221) );
  AOI220 U399 ( .A(sig_out_local_count[12]), .B(n239), .C(
        sig_out_local_count[13]), .D(n240), .Q(n219) );
  AOI220 U400 ( .A(sig_out_local_count[10]), .B(n237), .C(
        sig_out_local_count[11]), .D(n238), .Q(n218) );
  NAND40 U401 ( .A(n221), .B(n220), .C(n219), .D(n218), .Q(n222) );
  OAI210 U402 ( .A(n223), .B(n222), .C(n156), .Q(n224) );
  NOR40 U403 ( .A(n226), .B(n225), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N163) );
  NOR20 U404 ( .A(n212), .B(n14), .Q(n213) );
  NOR20 U405 ( .A(n15), .B(n243), .Q(n226) );
  NAND20 U406 ( .A(sig_out_local_count[1]), .B(N246), .Q(n220) );
  NAND30 U407 ( .A(n227), .B(n224), .C(n156), .Q(n225) );
  OAI220 U408 ( .A(n282), .B(sig_out_local_count[14]), .C(n281), .D(
        sig_out_local_count[13]), .Q(n247) );
  NOR20 U409 ( .A(n22), .B(sig_out_local_count[15]), .Q(n246) );
  OAI220 U410 ( .A(n280), .B(sig_out_local_count[12]), .C(n279), .D(
        sig_out_local_count[11]), .Q(n245) );
  OAI220 U411 ( .A(n278), .B(sig_out_local_count[10]), .C(n277), .D(
        sig_out_local_count[9]), .Q(n244) );
  NOR40 U412 ( .A(n247), .B(n246), .C(n245), .D(n244), .Q(n248) );
  AOI220 U413 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N231), .D(sig_out_local_count[0]), .Q(n250) );
  OAI220 U414 ( .A(n271), .B(sig_out_local_count[4]), .C(n270), .D(
        sig_out_local_count[3]), .Q(n249) );
  AOI2110 U415 ( .A(n185), .B(sig_cyclesTrame4[2]), .C(n250), .D(n249), .Q(
        n251) );
  OAI220 U416 ( .A(sig_out_local_count[5]), .B(n273), .C(
        sig_out_local_count[6]), .D(n274), .Q(n253) );
  OAI220 U417 ( .A(sig_out_local_count[7]), .B(n275), .C(
        sig_out_local_count[8]), .D(n276), .Q(n252) );
  NOR40 U418 ( .A(n283), .B(n272), .C(n253), .D(n252), .Q(n254) );
  AOI220 U419 ( .A(sig_out_local_count[8]), .B(n276), .C(
        sig_out_local_count[9]), .D(n277), .Q(n259) );
  AOI220 U420 ( .A(sig_out_local_count[6]), .B(n274), .C(
        sig_out_local_count[7]), .D(n275), .Q(n258) );
  AOI220 U421 ( .A(sig_out_local_count[4]), .B(n271), .C(
        sig_out_local_count[5]), .D(n273), .Q(n257) );
  AOI220 U422 ( .A(n13), .B(n269), .C(sig_out_local_count[3]), .D(n270), .Q(
        n256) );
  NAND40 U423 ( .A(n259), .B(n258), .C(n257), .D(n256), .Q(n265) );
  AOI220 U424 ( .A(sig_out_local_count[14]), .B(n282), .C(
        sig_out_local_count[15]), .D(n22), .Q(n263) );
  AOI220 U425 ( .A(sig_out_local_count[12]), .B(n280), .C(
        sig_out_local_count[13]), .D(n281), .Q(n261) );
  AOI220 U426 ( .A(sig_out_local_count[10]), .B(n278), .C(
        sig_out_local_count[11]), .D(n279), .Q(n260) );
  NAND40 U427 ( .A(n263), .B(n262), .C(n261), .D(n260), .Q(n264) );
  OAI210 U428 ( .A(n265), .B(n264), .C(n156), .Q(n266) );
  NOR40 U429 ( .A(n268), .B(n267), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N169) );
  NOR20 U430 ( .A(n254), .B(n14), .Q(n255) );
  NOR20 U431 ( .A(n15), .B(n284), .Q(n268) );
  NAND20 U432 ( .A(sig_out_local_count[1]), .B(N231), .Q(n262) );
  NAND30 U433 ( .A(n227), .B(n266), .C(n156), .Q(n267) );
  XNR20 U434 ( .A(N188), .B(sig_out_local_count[10]), .Q(n287) );
  XNR20 U435 ( .A(N187), .B(sig_out_local_count[9]), .Q(n286) );
  XNR20 U436 ( .A(N189), .B(sig_out_local_count[11]), .Q(n285) );
  NAND30 U437 ( .A(n287), .B(n286), .C(n285), .Q(n298) );
  XNR20 U438 ( .A(N191), .B(sig_out_local_count[13]), .Q(n289) );
  XNR20 U439 ( .A(N190), .B(sig_out_local_count[12]), .Q(n288) );
  NAND20 U440 ( .A(n289), .B(n288), .Q(n297) );
  XNR20 U441 ( .A(N193), .B(sig_out_local_count[15]), .Q(n292) );
  XNR20 U442 ( .A(N192), .B(sig_out_local_count[14]), .Q(n291) );
  XNR20 U443 ( .A(N194), .B(n14), .Q(n290) );
  NAND30 U444 ( .A(n292), .B(n291), .C(n290), .Q(n296) );
  XNR20 U445 ( .A(N196), .B(sig_out_local_count[18]), .Q(n294) );
  XNR20 U446 ( .A(N195), .B(n15), .Q(n293) );
  NAND20 U447 ( .A(n294), .B(n293), .Q(n295) );
  NOR40 U448 ( .A(n298), .B(n297), .C(n296), .D(n295), .Q(n299) );
  AOI220 U449 ( .A(n315), .B(n314), .C(n314), .D(N179), .Q(n300) );
  XNR20 U450 ( .A(N197), .B(sig_out_local_count[19]), .Q(n304) );
  XOR20 U451 ( .A(N180), .B(n13), .Q(n302) );
  XOR20 U452 ( .A(N181), .B(sig_out_local_count[3]), .Q(n301) );
  NOR20 U453 ( .A(n302), .B(n301), .Q(n303) );
  NAND40 U454 ( .A(n316), .B(n305), .C(n304), .D(n303), .Q(n313) );
  XNR20 U455 ( .A(N183), .B(sig_out_local_count[5]), .Q(n308) );
  XNR20 U456 ( .A(N182), .B(sig_out_local_count[4]), .Q(n307) );
  XNR20 U457 ( .A(N184), .B(sig_out_local_count[6]), .Q(n306) );
  NAND30 U458 ( .A(n308), .B(n307), .C(n306), .Q(n312) );
  XNR20 U459 ( .A(N186), .B(sig_out_local_count[8]), .Q(n310) );
  XNR20 U460 ( .A(N185), .B(sig_out_local_count[7]), .Q(n309) );
  NAND20 U461 ( .A(n310), .B(n309), .Q(n311) );
  NOR40 U462 ( .A(n317), .B(n313), .C(n312), .D(n311), .Q(N198) );
endmodule


module top_ppm ( i_clk_top, i_reset_n_top, i_sel_top, o_ppm_top );
  input [1:0] i_sel_top;
  input i_clk_top, i_reset_n_top;
  output o_ppm_top;

  wire   [31:0] sig_reg;

  decoder decoder1 ( .i_sel(i_sel_top), .o_val(sig_reg) );
  send_ppm send_ppm1 ( .i_clk(i_clk_top), .i_reset_n(i_reset_n_top), .i_reg(
        sig_reg), .o_ppm(o_ppm_top) );
endmodule

