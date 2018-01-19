
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
         n18, n19, n20, n21, n23;
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
  NAND22 U3 ( .A(i_reset_n), .B(n3), .Q(n2) );
  NAND22 U4 ( .A(i_reset_n), .B(n3), .Q(n1) );
  NAND22 U5 ( .A(i_reset_n), .B(n3), .Q(n22) );
  INV3 U6 ( .A(i_init), .Q(n3) );
  NOR21 U7 ( .A(n1), .B(n5), .Q(N64) );
  INV3 U8 ( .A(N24), .Q(n5) );
  NOR21 U9 ( .A(n2), .B(n7), .Q(N62) );
  INV3 U10 ( .A(N22), .Q(n7) );
  NOR21 U11 ( .A(n1), .B(n8), .Q(N61) );
  INV3 U12 ( .A(N21), .Q(n8) );
  NOR21 U13 ( .A(n2), .B(n10), .Q(N59) );
  INV3 U14 ( .A(N19), .Q(n10) );
  NOR21 U15 ( .A(n1), .B(n11), .Q(N58) );
  INV3 U16 ( .A(N18), .Q(n11) );
  NOR21 U17 ( .A(n2), .B(n13), .Q(N56) );
  INV3 U18 ( .A(N16), .Q(n13) );
  NOR21 U19 ( .A(n1), .B(n14), .Q(N55) );
  INV3 U20 ( .A(N15), .Q(n14) );
  NOR21 U21 ( .A(n2), .B(n16), .Q(N53) );
  INV3 U22 ( .A(N13), .Q(n16) );
  NOR21 U23 ( .A(n1), .B(n17), .Q(N52) );
  INV3 U24 ( .A(N12), .Q(n17) );
  NOR21 U25 ( .A(n2), .B(n19), .Q(N50) );
  INV3 U26 ( .A(N10), .Q(n19) );
  NOR21 U27 ( .A(n1), .B(n20), .Q(N49) );
  INV3 U28 ( .A(N9), .Q(n20) );
  NOR21 U29 ( .A(n2), .B(n23), .Q(N47) );
  INV3 U30 ( .A(N7), .Q(n23) );
  NOR21 U31 ( .A(n22), .B(n6), .Q(N63) );
  INV3 U32 ( .A(N23), .Q(n6) );
  NOR21 U33 ( .A(n22), .B(n9), .Q(N60) );
  INV3 U34 ( .A(N20), .Q(n9) );
  NOR21 U35 ( .A(n22), .B(n12), .Q(N57) );
  INV3 U36 ( .A(N17), .Q(n12) );
  NOR21 U37 ( .A(n22), .B(n15), .Q(N54) );
  INV3 U38 ( .A(N14), .Q(n15) );
  NOR21 U39 ( .A(n22), .B(n18), .Q(N51) );
  INV3 U40 ( .A(N11), .Q(n18) );
  NOR21 U41 ( .A(n22), .B(n21), .Q(N48) );
  INV3 U42 ( .A(N8), .Q(n21) );
  NOR21 U43 ( .A(n2), .B(n4), .Q(N65) );
  INV3 U44 ( .A(N25), .Q(n4) );
  NOR21 U45 ( .A(n1), .B(v_val[0]), .Q(N46) );
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
  INV3 U10 ( .A(B[8]), .Q(n12) );
  INV3 U11 ( .A(B[6]), .Q(n14) );
  INV3 U12 ( .A(B[7]), .Q(n13) );
  INV3 U13 ( .A(B[5]), .Q(n15) );
  INV3 U14 ( .A(B[3]), .Q(n17) );
  INV3 U15 ( .A(B[4]), .Q(n16) );
  INV3 U16 ( .A(n2), .Q(carry[2]) );
  INV3 U17 ( .A(B[2]), .Q(n18) );
  NOR21 U18 ( .A(n19), .B(A[1]), .Q(n2) );
  INV3 U19 ( .A(B[1]), .Q(n19) );
  XNR21 U20 ( .A(A[1]), .B(n19), .Q(DIFF[1]) );
  XNR21 U21 ( .A(A[18]), .B(carry[18]), .Q(DIFF[18]) );
  XNR21 U22 ( .A(n1), .B(A[18]), .Q(DIFF[19]) );
  NOR21 U23 ( .A(carry[18]), .B(A[18]), .Q(n1) );
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
  XOR21 U3 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  NOR21 U4 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U5 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U6 ( .A(\SUMB[4][5] ), .Q(n4) );
  IMUX21 U7 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U8 ( .A(\SUMB[5][5] ), .Q(n18) );
  INV3 U9 ( .A(n16), .Q(n17) );
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
  XOR21 U2 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U3 ( .A(n16), .Q(n17) );
  XOR21 U4 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  NOR21 U5 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U6 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U7 ( .A(\SUMB[4][5] ), .Q(n4) );
  IMUX21 U8 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U9 ( .A(\SUMB[5][5] ), .Q(n18) );
  NAND22 U10 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  INV3 U11 ( .A(\SUMB[7][5] ), .Q(n19) );
  XOR21 U12 ( .A(\A1[11] ), .B(n12), .Q(PRODUCT[13]) );
  NOR21 U13 ( .A(n19), .B(n11), .Q(n12) );
  NOR21 U14 ( .A(n19), .B(n13), .Q(n14) );
  NAND22 U15 ( .A(n17), .B(\SUMB[6][5] ), .Q(n13) );
  INV3 U16 ( .A(\CARRYB[7][5] ), .Q(n6) );
  XOR21 U17 ( .A(\ab[4][6] ), .B(\ab[0][6] ), .Q(PRODUCT[5]) );
  NOR21 U18 ( .A(n9), .B(n10), .Q(\CARRYB[4][1] ) );
  XOR21 U19 ( .A(\ab[0][6] ), .B(\A[1] ), .Q(\SUMB[1][5] ) );
  INV3 U20 ( .A(\ab[4][6] ), .Q(n9) );
  NOR21 U21 ( .A(n10), .B(n8), .Q(\CARRYB[1][5] ) );
  INV3 U22 ( .A(\A[1] ), .Q(n8) );
  INV3 U23 ( .A(\ab[0][6] ), .Q(n10) );
  XOR21 U24 ( .A(\ab[7][6] ), .B(\CARRYB[7][5] ), .Q(\A1[11] ) );
  XNR21 U25 ( .A(n15), .B(\A2[12] ), .Q(PRODUCT[14]) );
  NOR21 U26 ( .A(n6), .B(n7), .Q(\A2[12] ) );
  NAND22 U27 ( .A(\A1[11] ), .B(n14), .Q(n15) );
  INV3 U28 ( .A(\ab[7][6] ), .Q(n7) );
  NAND20 U29 ( .A(\A2[8] ), .B(\SUMB[5][5] ), .Q(n16) );
  XOR20 U30 ( .A(n11), .B(n19), .Q(PRODUCT[12]) );
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
  XOR21 U2 ( .A(n17), .B(\SUMB[6][5] ), .Q(PRODUCT[11]) );
  INV3 U3 ( .A(n16), .Q(n17) );
  XOR21 U4 ( .A(\SUMB[4][5] ), .B(\CARRYB[7][1] ), .Q(PRODUCT[9]) );
  NOR21 U5 ( .A(n4), .B(n5), .Q(\A2[8] ) );
  INV3 U6 ( .A(\CARRYB[7][1] ), .Q(n5) );
  INV3 U7 ( .A(\SUMB[4][5] ), .Q(n4) );
  IMUX21 U8 ( .A(n18), .B(\SUMB[5][5] ), .S(\A2[8] ), .Q(PRODUCT[10]) );
  INV3 U9 ( .A(\SUMB[5][5] ), .Q(n18) );
  NAND22 U10 ( .A(n17), .B(\SUMB[6][5] ), .Q(n11) );
  INV3 U11 ( .A(\SUMB[7][5] ), .Q(n19) );
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


module send_ppm ( i_clk, i_reset_n, i_reg, o_ppm );
  input [31:0] i_reg;
  input i_clk, i_reset_n;
  output o_ppm;
  wire   sig_in_init, \sig_cyclesTrame1[2] , sig_cyclesTrame2_27, N76, N109,
         N110, N111, N112, N113, N114, N115, N182, N190, N197, N203, N213,
         N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224,
         N225, N226, N227, N228, N229, N230, N231, N232, N238, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, N75, N71, N70, N69, N68, N67, N66, N65, N64,
         N63, N62, N61, N60, N59, N58, N57, N325, N324, N323, N322, N321, N320,
         N32, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310, N31,
         N309, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18,
         N17, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295,
         N294, N293, N292, N290, N289, N288, N287, N286, N285, N284, N283,
         N282, N281, N280, N279, N278, N277, N275, N274, N273, N272, N271,
         N270, N269, N268, N267, N266, N265, N264, N263, N262, N260, N259,
         N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248,
         N247, \add_2_root_sub_0_root_sub_235_cf/carry[2] ,
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
         \sub_3_root_sub_0_root_sub_235_cf/carry[15] , n154, n155, n156, n157,
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
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478;
  wire   [19:0] sig_out_local_count;
  wire   [31:0] sig_reg_storage;
  wire   [15:0] sig_cyclesTrame2;
  wire   [15:0] sig_cyclesTrame3;
  wire   [15:0] sig_cyclesTrame4;
  wire   [2:0] current_state;
  wire   [2:0] sig_state;
  wire   [16:1] \sub_123_cf/carry ;
  wire   [16:1] \sub_120_cf/carry ;
  wire   [16:1] \sub_117_cf/carry ;
  wire   [16:1] \sub_114_cf/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7;

  OAI212 U48 ( .A(n129), .B(n171), .C(n130), .Q(N112) );
  OAI212 U51 ( .A(n438), .B(n166), .C(n133), .Q(N111) );
  OAI212 U53 ( .A(sig_state[0]), .B(n442), .C(n134), .Q(n132) );
  OAI222 U54 ( .A(n134), .B(n168), .C(sig_state[0]), .D(n440), .Q(N110) );
  DF3 \current_state_reg[0]  ( .D(N113), .C(i_clk), .Q(current_state[0]), .QN(
        n169) );
  DF3 sig_out_ppm_reg ( .D(N109), .C(i_clk), .Q(o_ppm) );
  DF3 \current_state_reg[1]  ( .D(N114), .C(i_clk), .Q(current_state[1]), .QN(
        n170) );
  DF3 \current_state_reg[2]  ( .D(N115), .C(i_clk), .Q(current_state[2]), .QN(
        n167) );
  local_counter local_counter1 ( .i_clk(i_clk), .i_reset_n(i_reset_n), 
        .i_init(sig_in_init), .o_count(sig_out_local_count) );
  send_ppm_DW01_add_8 add_1_root_sub_0_root_sub_235_cf ( .A({
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, 
        sig_cyclesTrame2_27, sig_cyclesTrame2[15:1], n478}), .B({
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, sig_cyclesTrame2_27}), .CI(sig_cyclesTrame2_27), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, N309, N310, N311, 
        N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323, 
        N324, N325, SYNOPSYS_UNCONNECTED__2}) );
  send_ppm_DW01_sub_0 sub_0_root_sub_0_root_sub_235_cf ( .A({N75, n184, n184, 
        n184, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, n478}), .B({sig_cyclesTrame2_27, sig_cyclesTrame2_27, N309, 
        N310, N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, 
        N322, N323, N324, N325, n478}), .CI(sig_cyclesTrame2_27), .DIFF({N231, 
        N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, 
        N218, N217, N216, N215, N214, N213, SYNOPSYS_UNCONNECTED__3}) );
  send_ppm_DW02_mult_3 mult_114 ( .A(sig_reg_storage[7:0]), .B({n478, n478, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n478, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N292, N293, 
        N294, N295, N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, 
        SYNOPSYS_UNCONNECTED__4}) );
  send_ppm_DW02_mult_2 mult_117 ( .A(sig_reg_storage[15:8]), .B({n478, n478, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n478, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N277, N278, 
        N279, N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, 
        SYNOPSYS_UNCONNECTED__5}) );
  send_ppm_DW02_mult_1 mult_120 ( .A(sig_reg_storage[23:16]), .B({n478, n478, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n478, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N262, N263, 
        N264, N265, N266, N267, N268, N269, N270, N271, N272, N273, N274, N275, 
        SYNOPSYS_UNCONNECTED__6}) );
  send_ppm_DW02_mult_0 mult_123 ( .A(sig_reg_storage[31:24]), .B({n478, n478, 
        sig_cyclesTrame2_27, sig_cyclesTrame2_27, sig_cyclesTrame2_27, n478, 
        sig_cyclesTrame2_27}), .TC(sig_cyclesTrame2_27), .PRODUCT({N247, N248, 
        N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259, N260, 
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
  DFE1 \sig_state_reg[2]  ( .D(N112), .E(N238), .C(i_clk), .Q(sig_state[2]), 
        .QN(n171) );
  DFE1 \sig_state_reg[1]  ( .D(N111), .E(N238), .C(i_clk), .Q(sig_state[1]), 
        .QN(n166) );
  DFE1 \sig_reg_storage_reg[14]  ( .D(n466), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[14]) );
  DFE1 \sig_reg_storage_reg[6]  ( .D(n458), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[6]) );
  DFE1 \sig_reg_storage_reg[13]  ( .D(n465), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[13]) );
  DFE1 \sig_reg_storage_reg[22]  ( .D(n474), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[22]) );
  DFE1 \sig_reg_storage_reg[30]  ( .D(n450), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[30]) );
  DFE1 \sig_reg_storage_reg[5]  ( .D(n457), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[5]) );
  DFE1 \sig_reg_storage_reg[11]  ( .D(n463), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[11]) );
  DFE1 \sig_reg_storage_reg[21]  ( .D(n473), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[21]) );
  DFE1 \sig_reg_storage_reg[29]  ( .D(n449), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[29]) );
  DFE1 \sig_reg_storage_reg[4]  ( .D(n456), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[4]) );
  DFE1 \sig_reg_storage_reg[12]  ( .D(n464), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[12]) );
  DFE1 \sig_reg_storage_reg[3]  ( .D(n455), .E(n179), .C(i_clk), .Q(
        sig_reg_storage[3]) );
  DFE1 \sig_reg_storage_reg[27]  ( .D(n447), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[27]) );
  DFE1 \sig_reg_storage_reg[20]  ( .D(n472), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[20]) );
  DFE1 \sig_reg_storage_reg[28]  ( .D(n448), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[28]) );
  DFE1 \sig_reg_storage_reg[2]  ( .D(n454), .E(n179), .C(i_clk), .Q(
        sig_reg_storage[2]) );
  DFE1 \sig_reg_storage_reg[10]  ( .D(n462), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[10]) );
  DFE1 \sig_reg_storage_reg[19]  ( .D(n471), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[19]) );
  DFE1 \sig_reg_storage_reg[18]  ( .D(n470), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[18]) );
  DFE1 \sig_reg_storage_reg[26]  ( .D(n446), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[26]) );
  DFE1 \sig_reg_storage_reg[9]  ( .D(n461), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[9]) );
  DFE1 \sig_reg_storage_reg[1]  ( .D(n453), .E(n179), .C(i_clk), .Q(
        sig_reg_storage[1]) );
  DFE1 \sig_reg_storage_reg[17]  ( .D(n469), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[17]) );
  DFE1 \sig_reg_storage_reg[25]  ( .D(n445), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[25]) );
  DFE1 \sig_state_reg[0]  ( .D(N110), .E(N238), .C(i_clk), .Q(sig_state[0]), 
        .QN(n168) );
  DFE1 \sig_reg_storage_reg[8]  ( .D(n460), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[8]) );
  DFE1 \sig_reg_storage_reg[0]  ( .D(n452), .E(n179), .C(i_clk), .Q(
        sig_reg_storage[0]) );
  DFE1 \sig_reg_storage_reg[24]  ( .D(n444), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[24]) );
  DFE1 \sig_reg_storage_reg[16]  ( .D(n468), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[16]) );
  DFE1 \sig_reg_storage_reg[7]  ( .D(n459), .E(n178), .C(i_clk), .Q(
        sig_reg_storage[7]) );
  DFE1 \sig_reg_storage_reg[15]  ( .D(n467), .E(n177), .C(i_clk), .Q(
        sig_reg_storage[15]) );
  DFE1 \sig_reg_storage_reg[23]  ( .D(n443), .E(n176), .C(i_clk), .Q(
        sig_reg_storage[23]) );
  DFE1 \sig_reg_storage_reg[31]  ( .D(n451), .E(n175), .C(i_clk), .Q(
        sig_reg_storage[31]) );
  XOR21 U130 ( .A(\sub_114_cf/carry [6]), .B(N300), .Q(n154) );
  XNR21 U131 ( .A(N294), .B(\sub_114_cf/carry [12]), .Q(n155) );
  XNR21 U132 ( .A(N299), .B(\sub_114_cf/carry [7]), .Q(n156) );
  XOR21 U133 ( .A(\sub_114_cf/carry [14]), .B(N292), .Q(n157) );
  XNR21 U134 ( .A(N297), .B(\sub_114_cf/carry [9]), .Q(n158) );
  XOR21 U135 ( .A(\sub_114_cf/carry [4]), .B(N302), .Q(n159) );
  XNR21 U136 ( .A(N295), .B(\sub_114_cf/carry [11]), .Q(n160) );
  XNR21 U137 ( .A(N298), .B(\sub_114_cf/carry [8]), .Q(n161) );
  XOR21 U138 ( .A(\sub_114_cf/carry [3]), .B(N303), .Q(n162) );
  XNR21 U139 ( .A(N293), .B(\sub_114_cf/carry [13]), .Q(n163) );
  XOR21 U140 ( .A(\sub_114_cf/carry [10]), .B(N296), .Q(n164) );
  XNR21 U141 ( .A(N301), .B(\sub_114_cf/carry [5]), .Q(n165) );
  NAND22 U142 ( .A(n186), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ), 
        .Q(n184) );
  INV3 U143 ( .A(sig_cyclesTrame2[12]), .Q(n316) );
  INV3 U144 ( .A(sig_cyclesTrame3[12]), .Q(n358) );
  INV3 U145 ( .A(sig_cyclesTrame4[12]), .Q(n399) );
  INV3 U146 ( .A(sig_cyclesTrame2[13]), .Q(n317) );
  INV3 U147 ( .A(sig_cyclesTrame4[13]), .Q(n400) );
  INV3 U148 ( .A(sig_cyclesTrame3[13]), .Q(n359) );
  INV3 U149 ( .A(sig_cyclesTrame2[11]), .Q(n315) );
  INV3 U150 ( .A(sig_cyclesTrame4[11]), .Q(n398) );
  INV3 U151 ( .A(sig_cyclesTrame3[11]), .Q(n357) );
  INV3 U152 ( .A(sig_cyclesTrame2[10]), .Q(n314) );
  INV3 U153 ( .A(sig_cyclesTrame3[10]), .Q(n356) );
  INV3 U154 ( .A(sig_cyclesTrame4[10]), .Q(n397) );
  INV3 U155 ( .A(sig_cyclesTrame2[9]), .Q(n313) );
  INV3 U156 ( .A(sig_cyclesTrame4[9]), .Q(n396) );
  INV3 U157 ( .A(sig_cyclesTrame3[9]), .Q(n355) );
  INV3 U158 ( .A(sig_cyclesTrame2[14]), .Q(n318) );
  INV3 U159 ( .A(sig_cyclesTrame3[14]), .Q(n360) );
  INV3 U160 ( .A(sig_cyclesTrame4[14]), .Q(n401) );
  INV3 U161 ( .A(sig_cyclesTrame2[8]), .Q(n312) );
  INV3 U162 ( .A(sig_cyclesTrame4[8]), .Q(n395) );
  INV3 U163 ( .A(sig_cyclesTrame3[8]), .Q(n354) );
  INV3 U164 ( .A(sig_cyclesTrame2[7]), .Q(n311) );
  INV3 U165 ( .A(sig_cyclesTrame3[7]), .Q(n353) );
  INV3 U166 ( .A(sig_cyclesTrame2[6]), .Q(n310) );
  INV3 U167 ( .A(sig_cyclesTrame4[7]), .Q(n394) );
  INV3 U168 ( .A(sig_cyclesTrame4[6]), .Q(n393) );
  INV3 U169 ( .A(sig_cyclesTrame3[6]), .Q(n352) );
  INV3 U170 ( .A(sig_cyclesTrame2[5]), .Q(n309) );
  INV3 U171 ( .A(sig_cyclesTrame4[5]), .Q(n392) );
  INV3 U172 ( .A(sig_cyclesTrame3[5]), .Q(n351) );
  INV3 U173 ( .A(N109), .Q(n442) );
  INV3 U174 ( .A(n123), .Q(n477) );
  BUF2 U175 ( .A(N76), .Q(n175) );
  BUF2 U176 ( .A(N76), .Q(n176) );
  BUF2 U177 ( .A(N76), .Q(n177) );
  BUF2 U178 ( .A(N76), .Q(n178) );
  BUF2 U179 ( .A(N76), .Q(n179) );
  INV3 U180 ( .A(n418), .Q(n436) );
  OAI2111 U181 ( .A(n169), .B(n90), .C(n91), .D(n92), .Q(sig_in_init) );
  NAND22 U182 ( .A(n95), .B(n167), .Q(n90) );
  AOI221 U183 ( .A(n439), .B(n93), .C(N232), .D(n476), .Q(n92) );
  AOI211 U184 ( .A(n124), .B(N109), .C(n135), .Q(n134) );
  NOR31 U185 ( .A(n94), .B(N232), .C(n180), .Q(n135) );
  INV3 U186 ( .A(\sig_cyclesTrame1[2] ), .Q(n249) );
  OAI2110 U187 ( .A(N232), .B(n94), .C(n119), .D(i_reset_n), .Q(N114) );
  NAND31 U188 ( .A(n439), .B(n475), .C(n477), .Q(n119) );
  NOR31 U189 ( .A(n180), .B(n94), .C(n437), .Q(N115) );
  INV0 U190 ( .A(N232), .Q(n437) );
  INV3 U191 ( .A(N57), .Q(n248) );
  INV3 U192 ( .A(n332), .Q(n362) );
  INV3 U193 ( .A(n290), .Q(n320) );
  INV3 U194 ( .A(n261), .Q(n278) );
  INV3 U195 ( .A(n257), .Q(n276) );
  INV3 U196 ( .A(n374), .Q(n403) );
  INV3 U197 ( .A(n173), .Q(n304) );
  INV3 U198 ( .A(sig_cyclesTrame2[4]), .Q(n307) );
  INV3 U199 ( .A(sig_cyclesTrame3[4]), .Q(n349) );
  INV3 U200 ( .A(sig_cyclesTrame2[3]), .Q(n306) );
  INV3 U201 ( .A(sig_cyclesTrame4[4]), .Q(n390) );
  INV3 U202 ( .A(sig_cyclesTrame3[3]), .Q(n348) );
  INV3 U203 ( .A(sig_cyclesTrame4[3]), .Q(n389) );
  NAND22 U204 ( .A(n434), .B(N213), .Q(n424) );
  INV1 U205 ( .A(sig_cyclesTrame2[2]), .Q(n305) );
  INV2 U206 ( .A(sig_cyclesTrame3[2]), .Q(n347) );
  INV1 U207 ( .A(sig_cyclesTrame4[2]), .Q(n388) );
  NOR31 U208 ( .A(n124), .B(n475), .C(n442), .Q(n131) );
  INV3 U209 ( .A(n124), .Q(n439) );
  INV3 U210 ( .A(n122), .Q(n475) );
  INV3 U211 ( .A(n94), .Q(n476) );
  NOR21 U212 ( .A(n123), .B(n180), .Q(N109) );
  NAND22 U213 ( .A(n93), .B(n167), .Q(n123) );
  NAND22 U214 ( .A(i_reset_n), .B(n91), .Q(N76) );
  INV3 U215 ( .A(n131), .Q(n440) );
  NAND31 U216 ( .A(sig_state[0]), .B(n166), .C(n131), .Q(n133) );
  INV3 U217 ( .A(n132), .Q(n438) );
  NAND41 U218 ( .A(n131), .B(sig_state[1]), .C(sig_state[0]), .D(n171), .Q(
        n130) );
  AOI211 U219 ( .A(N109), .B(n166), .C(n132), .Q(n129) );
  INV3 U220 ( .A(N305), .Q(N57) );
  INV3 U221 ( .A(n283), .Q(n319) );
  INV3 U222 ( .A(n325), .Q(n361) );
  NOR21 U223 ( .A(n128), .B(n166), .Q(n127) );
  AOI221 U224 ( .A(N190), .B(n168), .C(N197), .D(sig_state[0]), .Q(n128) );
  OAI2111 U225 ( .A(sig_state[2]), .B(n125), .C(n170), .D(n126), .Q(n95) );
  NAND22 U226 ( .A(N203), .B(n475), .Q(n126) );
  AOI311 U227 ( .A(N182), .B(n166), .C(sig_state[0]), .D(n127), .Q(n125) );
  INV3 U228 ( .A(n254), .Q(n277) );
  INV3 U229 ( .A(n367), .Q(n402) );
  INV3 U230 ( .A(n174), .Q(n275) );
  OAI2111 U231 ( .A(n95), .B(n120), .C(n121), .D(i_reset_n), .Q(N113) );
  NAND22 U232 ( .A(current_state[0]), .B(n167), .Q(n120) );
  NAND31 U233 ( .A(n439), .B(n122), .C(n477), .Q(n121) );
  INV3 U234 ( .A(N275), .Q(sig_cyclesTrame3[1]) );
  INV3 U235 ( .A(N260), .Q(sig_cyclesTrame4[1]) );
  INV3 U236 ( .A(N290), .Q(sig_cyclesTrame2[1]) );
  INV3 U237 ( .A(n286), .Q(n308) );
  INV3 U238 ( .A(n328), .Q(n350) );
  INV3 U239 ( .A(n172), .Q(n346) );
  INV3 U240 ( .A(n370), .Q(n391) );
  INV3 U241 ( .A(n419), .Q(n435) );
  INV3 U242 ( .A(sig_out_local_count[0]), .Q(n433) );
  INV3 U243 ( .A(sig_out_local_count[1]), .Q(n434) );
  BUF2 U244 ( .A(sig_out_local_count[16]), .Q(n173) );
  BUF2 U245 ( .A(sig_out_local_count[2]), .Q(n172) );
  BUF2 U246 ( .A(sig_out_local_count[17]), .Q(n174) );
  NAND41 U247 ( .A(n136), .B(n137), .C(n138), .D(n139), .Q(n124) );
  NOR21 U248 ( .A(n173), .B(sig_out_local_count[15]), .Q(n136) );
  NOR31 U249 ( .A(n174), .B(sig_out_local_count[19]), .C(
        sig_out_local_count[18]), .Q(n137) );
  NOR31 U250 ( .A(n140), .B(n141), .C(n142), .Q(n139) );
  NAND31 U251 ( .A(n169), .B(n167), .C(current_state[1]), .Q(n94) );
  NAND41 U252 ( .A(sig_out_local_count[11]), .B(sig_out_local_count[10]), .C(
        n143), .D(sig_out_local_count[0]), .Q(n140) );
  NOR21 U253 ( .A(sig_out_local_count[14]), .B(sig_out_local_count[13]), .Q(
        n143) );
  NOR40 U254 ( .A(sig_out_local_count[5]), .B(n441), .C(sig_out_local_count[4]), .D(n172), .Q(n138) );
  INV3 U255 ( .A(n144), .Q(n441) );
  NOR21 U256 ( .A(sig_out_local_count[9]), .B(sig_out_local_count[7]), .Q(n144) );
  NAND31 U257 ( .A(n168), .B(n166), .C(sig_state[2]), .Q(n122) );
  NAND31 U258 ( .A(sig_out_local_count[1]), .B(sig_out_local_count[12]), .C(
        sig_out_local_count[3]), .Q(n141) );
  NAND22 U259 ( .A(sig_out_local_count[8]), .B(sig_out_local_count[6]), .Q(
        n142) );
  NOR21 U260 ( .A(current_state[0]), .B(current_state[1]), .Q(n93) );
  NAND22 U261 ( .A(current_state[2]), .B(n93), .Q(n91) );
  NAND41 U262 ( .A(i_reset_n), .B(current_state[0]), .C(n170), .D(n167), .Q(
        N238) );
  INV3 U263 ( .A(i_reset_n), .Q(n180) );
  INV3 U264 ( .A(n147), .Q(n449) );
  NAND22 U265 ( .A(i_reg[29]), .B(i_reset_n), .Q(n147) );
  INV3 U266 ( .A(n148), .Q(n448) );
  NAND22 U267 ( .A(i_reg[28]), .B(i_reset_n), .Q(n148) );
  INV3 U268 ( .A(n149), .Q(n447) );
  NAND22 U269 ( .A(i_reg[27]), .B(i_reset_n), .Q(n149) );
  INV3 U270 ( .A(n150), .Q(n446) );
  NAND22 U271 ( .A(i_reg[26]), .B(i_reset_n), .Q(n150) );
  INV3 U272 ( .A(n151), .Q(n445) );
  NAND22 U273 ( .A(i_reg[25]), .B(i_reset_n), .Q(n151) );
  INV3 U274 ( .A(n152), .Q(n444) );
  NAND22 U275 ( .A(i_reg[24]), .B(i_reset_n), .Q(n152) );
  INV3 U276 ( .A(n153), .Q(n443) );
  NAND22 U277 ( .A(i_reg[23]), .B(i_reset_n), .Q(n153) );
  INV3 U278 ( .A(n96), .Q(n474) );
  NAND22 U279 ( .A(i_reset_n), .B(i_reg[22]), .Q(n96) );
  INV3 U280 ( .A(n145), .Q(n451) );
  NAND22 U281 ( .A(i_reg[31]), .B(i_reset_n), .Q(n145) );
  INV3 U282 ( .A(n146), .Q(n450) );
  NAND22 U283 ( .A(i_reg[30]), .B(i_reset_n), .Q(n146) );
  INV3 U284 ( .A(n97), .Q(n473) );
  NAND22 U285 ( .A(i_reg[21]), .B(i_reset_n), .Q(n97) );
  INV3 U286 ( .A(n98), .Q(n472) );
  NAND22 U287 ( .A(i_reg[20]), .B(i_reset_n), .Q(n98) );
  INV3 U288 ( .A(n99), .Q(n471) );
  NAND22 U289 ( .A(i_reg[19]), .B(i_reset_n), .Q(n99) );
  INV3 U290 ( .A(n100), .Q(n470) );
  NAND22 U291 ( .A(i_reg[18]), .B(i_reset_n), .Q(n100) );
  INV3 U292 ( .A(n101), .Q(n469) );
  NAND22 U293 ( .A(i_reg[17]), .B(i_reset_n), .Q(n101) );
  INV3 U294 ( .A(n102), .Q(n468) );
  NAND22 U295 ( .A(i_reg[16]), .B(i_reset_n), .Q(n102) );
  INV3 U296 ( .A(n103), .Q(n467) );
  NAND22 U297 ( .A(i_reg[15]), .B(i_reset_n), .Q(n103) );
  INV3 U298 ( .A(n104), .Q(n466) );
  NAND22 U299 ( .A(i_reg[14]), .B(i_reset_n), .Q(n104) );
  INV3 U300 ( .A(n105), .Q(n465) );
  NAND22 U301 ( .A(i_reg[13]), .B(i_reset_n), .Q(n105) );
  INV3 U302 ( .A(n106), .Q(n464) );
  NAND22 U303 ( .A(i_reg[12]), .B(i_reset_n), .Q(n106) );
  INV3 U304 ( .A(n107), .Q(n463) );
  NAND22 U305 ( .A(i_reg[11]), .B(i_reset_n), .Q(n107) );
  INV3 U306 ( .A(n108), .Q(n462) );
  NAND22 U307 ( .A(i_reg[10]), .B(i_reset_n), .Q(n108) );
  INV3 U308 ( .A(n109), .Q(n461) );
  NAND22 U309 ( .A(i_reg[9]), .B(i_reset_n), .Q(n109) );
  INV3 U310 ( .A(n110), .Q(n460) );
  NAND22 U311 ( .A(i_reg[8]), .B(i_reset_n), .Q(n110) );
  INV3 U312 ( .A(n111), .Q(n459) );
  NAND22 U313 ( .A(i_reg[7]), .B(i_reset_n), .Q(n111) );
  INV3 U314 ( .A(n112), .Q(n458) );
  NAND22 U315 ( .A(i_reg[6]), .B(i_reset_n), .Q(n112) );
  INV3 U316 ( .A(n113), .Q(n457) );
  NAND22 U317 ( .A(i_reg[5]), .B(i_reset_n), .Q(n113) );
  INV3 U318 ( .A(n114), .Q(n456) );
  NAND22 U319 ( .A(i_reg[4]), .B(i_reset_n), .Q(n114) );
  INV3 U320 ( .A(n115), .Q(n455) );
  NAND22 U321 ( .A(i_reg[3]), .B(i_reset_n), .Q(n115) );
  INV3 U322 ( .A(n116), .Q(n454) );
  NAND22 U323 ( .A(i_reg[2]), .B(i_reset_n), .Q(n116) );
  INV3 U324 ( .A(n117), .Q(n453) );
  NAND22 U325 ( .A(i_reg[1]), .B(i_reset_n), .Q(n117) );
  INV3 U326 ( .A(n118), .Q(n452) );
  NAND22 U327 ( .A(i_reg[0]), .B(i_reset_n), .Q(n118) );
  LOGIC1 U328 ( .Q(n478) );
  LOGIC0 U329 ( .Q(sig_cyclesTrame2_27) );
  NOR20 U330 ( .A(\sub_120_cf/carry [14]), .B(N262), .Q(n181) );
  XNR20 U331 ( .A(\sub_120_cf/carry [14]), .B(N262), .Q(sig_cyclesTrame3[14])
         );
  CLKIN0 U332 ( .A(n181), .Q(sig_cyclesTrame3[15]) );
  NOR20 U333 ( .A(\sub_123_cf/carry [14]), .B(N247), .Q(n182) );
  XNR20 U334 ( .A(\sub_123_cf/carry [14]), .B(N247), .Q(sig_cyclesTrame4[14])
         );
  CLKIN0 U335 ( .A(n182), .Q(sig_cyclesTrame4[15]) );
  NOR20 U336 ( .A(\sub_117_cf/carry [14]), .B(N277), .Q(n183) );
  XNR20 U337 ( .A(\sub_117_cf/carry [14]), .B(N277), .Q(sig_cyclesTrame2[14])
         );
  CLKIN0 U338 ( .A(n183), .Q(sig_cyclesTrame2[15]) );
  XOR20 U339 ( .A(n186), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ), .Q(
        N71) );
  CLKIN0 U340 ( .A(n184), .Q(N75) );
  NAND20 U341 ( .A(n157), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ), 
        .Q(n185) );
  XOR20 U342 ( .A(n157), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ), .Q(
        N70) );
  CLKIN0 U343 ( .A(n185), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[15] ) );
  NOR20 U344 ( .A(\sub_114_cf/carry [14]), .B(N292), .Q(n186) );
  NAND20 U345 ( .A(N263), .B(\sub_120_cf/carry [13]), .Q(n187) );
  XOR20 U346 ( .A(N263), .B(\sub_120_cf/carry [13]), .Q(sig_cyclesTrame3[13])
         );
  CLKIN0 U347 ( .A(n187), .Q(\sub_120_cf/carry [14]) );
  NAND20 U348 ( .A(N264), .B(\sub_120_cf/carry [12]), .Q(n188) );
  XOR20 U349 ( .A(N264), .B(\sub_120_cf/carry [12]), .Q(sig_cyclesTrame3[12])
         );
  CLKIN0 U350 ( .A(n188), .Q(\sub_120_cf/carry [13]) );
  NAND20 U351 ( .A(N248), .B(\sub_123_cf/carry [13]), .Q(n189) );
  XOR20 U352 ( .A(N248), .B(\sub_123_cf/carry [13]), .Q(sig_cyclesTrame4[13])
         );
  CLKIN0 U353 ( .A(n189), .Q(\sub_123_cf/carry [14]) );
  NAND20 U354 ( .A(N249), .B(\sub_123_cf/carry [12]), .Q(n190) );
  XOR20 U355 ( .A(N249), .B(\sub_123_cf/carry [12]), .Q(sig_cyclesTrame4[12])
         );
  CLKIN0 U356 ( .A(n190), .Q(\sub_123_cf/carry [13]) );
  NAND20 U357 ( .A(N278), .B(\sub_117_cf/carry [13]), .Q(n191) );
  XOR20 U358 ( .A(N278), .B(\sub_117_cf/carry [13]), .Q(sig_cyclesTrame2[13])
         );
  CLKIN0 U359 ( .A(n191), .Q(\sub_117_cf/carry [14]) );
  NAND20 U360 ( .A(N279), .B(\sub_117_cf/carry [12]), .Q(n192) );
  XOR20 U361 ( .A(N279), .B(\sub_117_cf/carry [12]), .Q(sig_cyclesTrame2[12])
         );
  CLKIN0 U362 ( .A(n192), .Q(\sub_117_cf/carry [13]) );
  NAND20 U363 ( .A(n163), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ), 
        .Q(n193) );
  XOR20 U364 ( .A(n163), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ), .Q(
        N69) );
  CLKIN0 U365 ( .A(n193), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[14] ) );
  NAND20 U366 ( .A(n155), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ), 
        .Q(n194) );
  XOR20 U367 ( .A(n155), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ), .Q(
        N68) );
  CLKIN0 U368 ( .A(n194), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[13] ) );
  NAND20 U369 ( .A(N293), .B(\sub_114_cf/carry [13]), .Q(n195) );
  CLKIN0 U370 ( .A(n195), .Q(\sub_114_cf/carry [14]) );
  NAND20 U371 ( .A(N294), .B(\sub_114_cf/carry [12]), .Q(n196) );
  CLKIN0 U372 ( .A(n196), .Q(\sub_114_cf/carry [13]) );
  NAND20 U373 ( .A(N265), .B(\sub_120_cf/carry [11]), .Q(n197) );
  XOR20 U374 ( .A(N265), .B(\sub_120_cf/carry [11]), .Q(sig_cyclesTrame3[11])
         );
  CLKIN0 U375 ( .A(n197), .Q(\sub_120_cf/carry [12]) );
  NAND20 U376 ( .A(N250), .B(\sub_123_cf/carry [11]), .Q(n198) );
  XOR20 U377 ( .A(N250), .B(\sub_123_cf/carry [11]), .Q(sig_cyclesTrame4[11])
         );
  CLKIN0 U378 ( .A(n198), .Q(\sub_123_cf/carry [12]) );
  NAND20 U379 ( .A(N280), .B(\sub_117_cf/carry [11]), .Q(n199) );
  XOR20 U380 ( .A(N280), .B(\sub_117_cf/carry [11]), .Q(sig_cyclesTrame2[11])
         );
  CLKIN0 U381 ( .A(n199), .Q(\sub_117_cf/carry [12]) );
  NAND20 U382 ( .A(n160), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ), 
        .Q(n200) );
  XOR20 U383 ( .A(n160), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ), .Q(
        N67) );
  CLKIN0 U384 ( .A(n200), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[12] ) );
  NAND20 U385 ( .A(N295), .B(\sub_114_cf/carry [11]), .Q(n201) );
  CLKIN0 U386 ( .A(n201), .Q(\sub_114_cf/carry [12]) );
  NOR20 U387 ( .A(sig_cyclesTrame4[1]), .B(sig_cyclesTrame3[1]), .Q(n202) );
  XNR20 U388 ( .A(sig_cyclesTrame4[1]), .B(sig_cyclesTrame3[1]), .Q(N17) );
  CLKIN0 U389 ( .A(n202), .Q(\add_2_root_sub_0_root_sub_235_cf/carry[2] ) );
  NOR20 U390 ( .A(\sub_120_cf/carry [10]), .B(N266), .Q(n203) );
  XNR20 U391 ( .A(\sub_120_cf/carry [10]), .B(N266), .Q(sig_cyclesTrame3[10])
         );
  CLKIN0 U392 ( .A(n203), .Q(\sub_120_cf/carry [11]) );
  NAND20 U393 ( .A(N267), .B(\sub_120_cf/carry [9]), .Q(n204) );
  XOR20 U394 ( .A(N267), .B(\sub_120_cf/carry [9]), .Q(sig_cyclesTrame3[9]) );
  CLKIN0 U395 ( .A(n204), .Q(\sub_120_cf/carry [10]) );
  NAND20 U396 ( .A(N268), .B(\sub_120_cf/carry [8]), .Q(n205) );
  XOR20 U397 ( .A(N268), .B(\sub_120_cf/carry [8]), .Q(sig_cyclesTrame3[8]) );
  CLKIN0 U398 ( .A(n205), .Q(\sub_120_cf/carry [9]) );
  NAND20 U399 ( .A(N269), .B(\sub_120_cf/carry [7]), .Q(n206) );
  XOR20 U400 ( .A(N269), .B(\sub_120_cf/carry [7]), .Q(sig_cyclesTrame3[7]) );
  CLKIN0 U401 ( .A(n206), .Q(\sub_120_cf/carry [8]) );
  NOR20 U402 ( .A(\sub_120_cf/carry [6]), .B(N270), .Q(n207) );
  XNR20 U403 ( .A(\sub_120_cf/carry [6]), .B(N270), .Q(sig_cyclesTrame3[6]) );
  CLKIN0 U404 ( .A(n207), .Q(\sub_120_cf/carry [7]) );
  NAND20 U405 ( .A(N271), .B(\sub_120_cf/carry [5]), .Q(n208) );
  XOR20 U406 ( .A(N271), .B(\sub_120_cf/carry [5]), .Q(sig_cyclesTrame3[5]) );
  CLKIN0 U407 ( .A(n208), .Q(\sub_120_cf/carry [6]) );
  NOR20 U408 ( .A(\sub_120_cf/carry [4]), .B(N272), .Q(n209) );
  XNR20 U409 ( .A(\sub_120_cf/carry [4]), .B(N272), .Q(sig_cyclesTrame3[4]) );
  CLKIN0 U410 ( .A(n209), .Q(\sub_120_cf/carry [5]) );
  NOR20 U411 ( .A(\sub_120_cf/carry [3]), .B(N273), .Q(n210) );
  XNR20 U412 ( .A(\sub_120_cf/carry [3]), .B(N273), .Q(sig_cyclesTrame3[3]) );
  CLKIN0 U413 ( .A(n210), .Q(\sub_120_cf/carry [4]) );
  NAND20 U414 ( .A(N274), .B(N275), .Q(n211) );
  XOR20 U415 ( .A(N274), .B(N275), .Q(sig_cyclesTrame3[2]) );
  CLKIN0 U416 ( .A(n211), .Q(\sub_120_cf/carry [3]) );
  NOR20 U417 ( .A(\sub_123_cf/carry [10]), .B(N251), .Q(n212) );
  XNR20 U418 ( .A(\sub_123_cf/carry [10]), .B(N251), .Q(sig_cyclesTrame4[10])
         );
  CLKIN0 U419 ( .A(n212), .Q(\sub_123_cf/carry [11]) );
  NAND20 U420 ( .A(N252), .B(\sub_123_cf/carry [9]), .Q(n213) );
  XOR20 U421 ( .A(N252), .B(\sub_123_cf/carry [9]), .Q(sig_cyclesTrame4[9]) );
  CLKIN0 U422 ( .A(n213), .Q(\sub_123_cf/carry [10]) );
  NAND20 U423 ( .A(N253), .B(\sub_123_cf/carry [8]), .Q(n214) );
  XOR20 U424 ( .A(N253), .B(\sub_123_cf/carry [8]), .Q(sig_cyclesTrame4[8]) );
  CLKIN0 U425 ( .A(n214), .Q(\sub_123_cf/carry [9]) );
  NAND20 U426 ( .A(N254), .B(\sub_123_cf/carry [7]), .Q(n215) );
  XOR20 U427 ( .A(N254), .B(\sub_123_cf/carry [7]), .Q(sig_cyclesTrame4[7]) );
  CLKIN0 U428 ( .A(n215), .Q(\sub_123_cf/carry [8]) );
  NOR20 U429 ( .A(\sub_123_cf/carry [6]), .B(N255), .Q(n216) );
  XNR20 U430 ( .A(\sub_123_cf/carry [6]), .B(N255), .Q(sig_cyclesTrame4[6]) );
  CLKIN0 U431 ( .A(n216), .Q(\sub_123_cf/carry [7]) );
  NAND20 U432 ( .A(N256), .B(\sub_123_cf/carry [5]), .Q(n217) );
  XOR20 U433 ( .A(N256), .B(\sub_123_cf/carry [5]), .Q(sig_cyclesTrame4[5]) );
  CLKIN0 U434 ( .A(n217), .Q(\sub_123_cf/carry [6]) );
  NOR20 U435 ( .A(\sub_123_cf/carry [4]), .B(N257), .Q(n218) );
  XNR20 U436 ( .A(\sub_123_cf/carry [4]), .B(N257), .Q(sig_cyclesTrame4[4]) );
  CLKIN0 U437 ( .A(n218), .Q(\sub_123_cf/carry [5]) );
  NOR20 U438 ( .A(\sub_123_cf/carry [3]), .B(N258), .Q(n219) );
  XNR20 U439 ( .A(\sub_123_cf/carry [3]), .B(N258), .Q(sig_cyclesTrame4[3]) );
  CLKIN0 U440 ( .A(n219), .Q(\sub_123_cf/carry [4]) );
  NAND20 U441 ( .A(N259), .B(N260), .Q(n220) );
  XOR20 U442 ( .A(N259), .B(N260), .Q(sig_cyclesTrame4[2]) );
  CLKIN0 U443 ( .A(n220), .Q(\sub_123_cf/carry [3]) );
  NOR20 U444 ( .A(\sub_117_cf/carry [10]), .B(N281), .Q(n221) );
  XNR20 U445 ( .A(\sub_117_cf/carry [10]), .B(N281), .Q(sig_cyclesTrame2[10])
         );
  CLKIN0 U446 ( .A(n221), .Q(\sub_117_cf/carry [11]) );
  NAND20 U447 ( .A(N282), .B(\sub_117_cf/carry [9]), .Q(n222) );
  XOR20 U448 ( .A(N282), .B(\sub_117_cf/carry [9]), .Q(sig_cyclesTrame2[9]) );
  CLKIN0 U449 ( .A(n222), .Q(\sub_117_cf/carry [10]) );
  NAND20 U450 ( .A(N283), .B(\sub_117_cf/carry [8]), .Q(n223) );
  XOR20 U451 ( .A(N283), .B(\sub_117_cf/carry [8]), .Q(sig_cyclesTrame2[8]) );
  CLKIN0 U452 ( .A(n223), .Q(\sub_117_cf/carry [9]) );
  NAND20 U453 ( .A(N284), .B(\sub_117_cf/carry [7]), .Q(n224) );
  XOR20 U454 ( .A(N284), .B(\sub_117_cf/carry [7]), .Q(sig_cyclesTrame2[7]) );
  CLKIN0 U455 ( .A(n224), .Q(\sub_117_cf/carry [8]) );
  NOR20 U456 ( .A(\sub_117_cf/carry [6]), .B(N285), .Q(n225) );
  XNR20 U457 ( .A(\sub_117_cf/carry [6]), .B(N285), .Q(sig_cyclesTrame2[6]) );
  CLKIN0 U458 ( .A(n225), .Q(\sub_117_cf/carry [7]) );
  NAND20 U459 ( .A(N286), .B(\sub_117_cf/carry [5]), .Q(n226) );
  XOR20 U460 ( .A(N286), .B(\sub_117_cf/carry [5]), .Q(sig_cyclesTrame2[5]) );
  CLKIN0 U461 ( .A(n226), .Q(\sub_117_cf/carry [6]) );
  NOR20 U462 ( .A(\sub_117_cf/carry [4]), .B(N287), .Q(n227) );
  XNR20 U463 ( .A(\sub_117_cf/carry [4]), .B(N287), .Q(sig_cyclesTrame2[4]) );
  CLKIN0 U464 ( .A(n227), .Q(\sub_117_cf/carry [5]) );
  NOR20 U465 ( .A(\sub_117_cf/carry [3]), .B(N288), .Q(n228) );
  XNR20 U466 ( .A(\sub_117_cf/carry [3]), .B(N288), .Q(sig_cyclesTrame2[3]) );
  CLKIN0 U467 ( .A(n228), .Q(\sub_117_cf/carry [4]) );
  NAND20 U468 ( .A(N289), .B(N290), .Q(n229) );
  XOR20 U469 ( .A(N289), .B(N290), .Q(sig_cyclesTrame2[2]) );
  CLKIN0 U470 ( .A(n229), .Q(\sub_117_cf/carry [3]) );
  NAND20 U471 ( .A(n164), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ), 
        .Q(n230) );
  XOR20 U472 ( .A(n164), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ), .Q(
        N66) );
  CLKIN0 U473 ( .A(n230), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[11] ) );
  NOR20 U474 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ), .B(n158), .Q(
        n231) );
  XNR20 U475 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ), .B(n158), .Q(
        N65) );
  CLKIN0 U476 ( .A(n231), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[10] ) );
  NAND20 U477 ( .A(n161), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ), .Q(
        n232) );
  XOR20 U478 ( .A(n161), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ), .Q(
        N64) );
  CLKIN0 U479 ( .A(n232), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[9] ) );
  NOR20 U480 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ), .B(n156), .Q(
        n233) );
  XNR20 U481 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ), .B(n156), .Q(
        N63) );
  CLKIN0 U482 ( .A(n233), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[8] ) );
  NOR20 U483 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ), .B(n154), .Q(
        n234) );
  XNR20 U484 ( .A(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ), .B(n154), .Q(
        N62) );
  CLKIN0 U485 ( .A(n234), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[7] ) );
  NAND20 U486 ( .A(n165), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ), .Q(
        n235) );
  XOR20 U487 ( .A(n165), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ), .Q(
        N61) );
  CLKIN0 U488 ( .A(n235), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[6] ) );
  NAND20 U489 ( .A(n159), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ), .Q(
        n236) );
  XOR20 U490 ( .A(n159), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ), .Q(
        N60) );
  CLKIN0 U491 ( .A(n236), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[5] ) );
  NAND20 U492 ( .A(n162), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ), .Q(
        n237) );
  XOR20 U493 ( .A(n162), .B(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ), .Q(
        N59) );
  CLKIN0 U494 ( .A(n237), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[4] ) );
  NAND20 U495 ( .A(n249), .B(n248), .Q(n238) );
  XOR20 U496 ( .A(n249), .B(n248), .Q(N58) );
  CLKIN0 U497 ( .A(n238), .Q(\sub_3_root_sub_0_root_sub_235_cf/carry[3] ) );
  NOR20 U498 ( .A(\sub_114_cf/carry [10]), .B(N296), .Q(n239) );
  CLKIN0 U499 ( .A(n239), .Q(\sub_114_cf/carry [11]) );
  NAND20 U500 ( .A(N297), .B(\sub_114_cf/carry [9]), .Q(n240) );
  CLKIN0 U501 ( .A(n240), .Q(\sub_114_cf/carry [10]) );
  NAND20 U502 ( .A(N298), .B(\sub_114_cf/carry [8]), .Q(n241) );
  CLKIN0 U503 ( .A(n241), .Q(\sub_114_cf/carry [9]) );
  NAND20 U504 ( .A(N299), .B(\sub_114_cf/carry [7]), .Q(n242) );
  CLKIN0 U505 ( .A(n242), .Q(\sub_114_cf/carry [8]) );
  NOR20 U506 ( .A(\sub_114_cf/carry [6]), .B(N300), .Q(n243) );
  CLKIN0 U507 ( .A(n243), .Q(\sub_114_cf/carry [7]) );
  NAND20 U508 ( .A(N301), .B(\sub_114_cf/carry [5]), .Q(n244) );
  CLKIN0 U509 ( .A(n244), .Q(\sub_114_cf/carry [6]) );
  NOR20 U510 ( .A(\sub_114_cf/carry [4]), .B(N302), .Q(n245) );
  CLKIN0 U511 ( .A(n245), .Q(\sub_114_cf/carry [5]) );
  NOR20 U512 ( .A(\sub_114_cf/carry [3]), .B(N303), .Q(n246) );
  CLKIN0 U513 ( .A(n246), .Q(\sub_114_cf/carry [4]) );
  NAND20 U514 ( .A(N304), .B(N305), .Q(n247) );
  XOR20 U515 ( .A(N304), .B(N305), .Q(\sig_cyclesTrame1[2] ) );
  CLKIN0 U516 ( .A(n247), .Q(\sub_114_cf/carry [3]) );
  OAI220 U517 ( .A(n157), .B(sig_out_local_count[14]), .C(n163), .D(
        sig_out_local_count[13]), .Q(n253) );
  NOR20 U518 ( .A(n186), .B(sig_out_local_count[15]), .Q(n252) );
  OAI220 U519 ( .A(n155), .B(sig_out_local_count[12]), .C(n160), .D(
        sig_out_local_count[11]), .Q(n251) );
  OAI220 U520 ( .A(n164), .B(sig_out_local_count[10]), .C(n158), .D(
        sig_out_local_count[9]), .Q(n250) );
  NOR40 U521 ( .A(n253), .B(n252), .C(n251), .D(n250), .Q(n254) );
  AOI220 U522 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        n248), .D(sig_out_local_count[0]), .Q(n256) );
  OAI220 U523 ( .A(n159), .B(sig_out_local_count[4]), .C(n162), .D(
        sig_out_local_count[3]), .Q(n255) );
  AOI2110 U524 ( .A(n346), .B(\sig_cyclesTrame1[2] ), .C(n256), .D(n255), .Q(
        n257) );
  OAI220 U525 ( .A(sig_out_local_count[5]), .B(n165), .C(
        sig_out_local_count[6]), .D(n154), .Q(n259) );
  OAI220 U526 ( .A(sig_out_local_count[7]), .B(n156), .C(
        sig_out_local_count[8]), .D(n161), .Q(n258) );
  NOR40 U527 ( .A(n277), .B(n276), .C(n259), .D(n258), .Q(n260) );
  AOI220 U528 ( .A(sig_out_local_count[8]), .B(n161), .C(
        sig_out_local_count[9]), .D(n158), .Q(n265) );
  AOI220 U529 ( .A(sig_out_local_count[6]), .B(n154), .C(
        sig_out_local_count[7]), .D(n156), .Q(n264) );
  AOI220 U530 ( .A(sig_out_local_count[4]), .B(n159), .C(
        sig_out_local_count[5]), .D(n165), .Q(n263) );
  AOI220 U531 ( .A(n172), .B(n249), .C(sig_out_local_count[3]), .D(n162), .Q(
        n262) );
  NAND40 U532 ( .A(n265), .B(n264), .C(n263), .D(n262), .Q(n271) );
  AOI220 U533 ( .A(sig_out_local_count[14]), .B(n157), .C(
        sig_out_local_count[15]), .D(n186), .Q(n269) );
  AOI220 U534 ( .A(sig_out_local_count[12]), .B(n155), .C(
        sig_out_local_count[13]), .D(n163), .Q(n267) );
  AOI220 U535 ( .A(sig_out_local_count[10]), .B(n164), .C(
        sig_out_local_count[11]), .D(n160), .Q(n266) );
  NAND40 U536 ( .A(n269), .B(n268), .C(n267), .D(n266), .Q(n270) );
  OAI210 U537 ( .A(n271), .B(n270), .C(n304), .Q(n272) );
  NOR40 U538 ( .A(n274), .B(n273), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N182) );
  NOR20 U539 ( .A(n260), .B(n173), .Q(n261) );
  NOR20 U540 ( .A(n174), .B(n278), .Q(n274) );
  NAND20 U541 ( .A(sig_out_local_count[1]), .B(n248), .Q(n268) );
  NAND30 U542 ( .A(n275), .B(n272), .C(n304), .Q(n273) );
  OAI220 U543 ( .A(n318), .B(sig_out_local_count[14]), .C(n317), .D(
        sig_out_local_count[13]), .Q(n282) );
  NOR20 U544 ( .A(n183), .B(sig_out_local_count[15]), .Q(n281) );
  OAI220 U545 ( .A(n316), .B(sig_out_local_count[12]), .C(n315), .D(
        sig_out_local_count[11]), .Q(n280) );
  OAI220 U546 ( .A(n314), .B(sig_out_local_count[10]), .C(n313), .D(
        sig_out_local_count[9]), .Q(n279) );
  NOR40 U547 ( .A(n282), .B(n281), .C(n280), .D(n279), .Q(n283) );
  AOI220 U548 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N290), .D(sig_out_local_count[0]), .Q(n285) );
  OAI220 U549 ( .A(n307), .B(sig_out_local_count[4]), .C(n306), .D(
        sig_out_local_count[3]), .Q(n284) );
  AOI2110 U550 ( .A(n346), .B(sig_cyclesTrame2[2]), .C(n285), .D(n284), .Q(
        n286) );
  OAI220 U551 ( .A(sig_out_local_count[5]), .B(n309), .C(
        sig_out_local_count[6]), .D(n310), .Q(n288) );
  OAI220 U552 ( .A(sig_out_local_count[7]), .B(n311), .C(
        sig_out_local_count[8]), .D(n312), .Q(n287) );
  NOR40 U553 ( .A(n319), .B(n308), .C(n288), .D(n287), .Q(n289) );
  AOI220 U554 ( .A(sig_out_local_count[8]), .B(n312), .C(
        sig_out_local_count[9]), .D(n313), .Q(n294) );
  AOI220 U555 ( .A(sig_out_local_count[6]), .B(n310), .C(
        sig_out_local_count[7]), .D(n311), .Q(n293) );
  AOI220 U556 ( .A(sig_out_local_count[4]), .B(n307), .C(
        sig_out_local_count[5]), .D(n309), .Q(n292) );
  AOI220 U557 ( .A(n172), .B(n305), .C(sig_out_local_count[3]), .D(n306), .Q(
        n291) );
  NAND40 U558 ( .A(n294), .B(n293), .C(n292), .D(n291), .Q(n300) );
  AOI220 U559 ( .A(sig_out_local_count[14]), .B(n318), .C(
        sig_out_local_count[15]), .D(n183), .Q(n298) );
  AOI220 U560 ( .A(sig_out_local_count[12]), .B(n316), .C(
        sig_out_local_count[13]), .D(n317), .Q(n296) );
  AOI220 U561 ( .A(sig_out_local_count[10]), .B(n314), .C(
        sig_out_local_count[11]), .D(n315), .Q(n295) );
  NAND40 U562 ( .A(n298), .B(n297), .C(n296), .D(n295), .Q(n299) );
  OAI210 U563 ( .A(n300), .B(n299), .C(n304), .Q(n301) );
  NOR40 U564 ( .A(n303), .B(n302), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N190) );
  NOR20 U565 ( .A(n289), .B(n173), .Q(n290) );
  NOR20 U566 ( .A(n174), .B(n320), .Q(n303) );
  NAND20 U567 ( .A(sig_out_local_count[1]), .B(N290), .Q(n297) );
  NAND30 U568 ( .A(n275), .B(n301), .C(n304), .Q(n302) );
  OAI220 U569 ( .A(n360), .B(sig_out_local_count[14]), .C(n359), .D(
        sig_out_local_count[13]), .Q(n324) );
  NOR20 U570 ( .A(n181), .B(sig_out_local_count[15]), .Q(n323) );
  OAI220 U571 ( .A(n358), .B(sig_out_local_count[12]), .C(n357), .D(
        sig_out_local_count[11]), .Q(n322) );
  OAI220 U572 ( .A(n356), .B(sig_out_local_count[10]), .C(n355), .D(
        sig_out_local_count[9]), .Q(n321) );
  NOR40 U573 ( .A(n324), .B(n323), .C(n322), .D(n321), .Q(n325) );
  AOI220 U574 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N275), .D(sig_out_local_count[0]), .Q(n327) );
  OAI220 U575 ( .A(n349), .B(sig_out_local_count[4]), .C(n348), .D(
        sig_out_local_count[3]), .Q(n326) );
  AOI2110 U576 ( .A(n346), .B(sig_cyclesTrame3[2]), .C(n327), .D(n326), .Q(
        n328) );
  OAI220 U577 ( .A(sig_out_local_count[5]), .B(n351), .C(
        sig_out_local_count[6]), .D(n352), .Q(n330) );
  OAI220 U578 ( .A(sig_out_local_count[7]), .B(n353), .C(
        sig_out_local_count[8]), .D(n354), .Q(n329) );
  NOR40 U579 ( .A(n361), .B(n350), .C(n330), .D(n329), .Q(n331) );
  AOI220 U580 ( .A(sig_out_local_count[8]), .B(n354), .C(
        sig_out_local_count[9]), .D(n355), .Q(n336) );
  AOI220 U581 ( .A(sig_out_local_count[6]), .B(n352), .C(
        sig_out_local_count[7]), .D(n353), .Q(n335) );
  AOI220 U582 ( .A(sig_out_local_count[4]), .B(n349), .C(
        sig_out_local_count[5]), .D(n351), .Q(n334) );
  AOI220 U583 ( .A(n172), .B(n347), .C(sig_out_local_count[3]), .D(n348), .Q(
        n333) );
  NAND40 U584 ( .A(n336), .B(n335), .C(n334), .D(n333), .Q(n342) );
  AOI220 U585 ( .A(sig_out_local_count[14]), .B(n360), .C(
        sig_out_local_count[15]), .D(n181), .Q(n340) );
  AOI220 U586 ( .A(sig_out_local_count[12]), .B(n358), .C(
        sig_out_local_count[13]), .D(n359), .Q(n338) );
  AOI220 U587 ( .A(sig_out_local_count[10]), .B(n356), .C(
        sig_out_local_count[11]), .D(n357), .Q(n337) );
  NAND40 U588 ( .A(n340), .B(n339), .C(n338), .D(n337), .Q(n341) );
  OAI210 U589 ( .A(n342), .B(n341), .C(n304), .Q(n343) );
  NOR40 U590 ( .A(n345), .B(n344), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N197) );
  NOR20 U591 ( .A(n331), .B(n173), .Q(n332) );
  NOR20 U592 ( .A(n174), .B(n362), .Q(n345) );
  NAND20 U593 ( .A(sig_out_local_count[1]), .B(N275), .Q(n339) );
  NAND30 U594 ( .A(n275), .B(n343), .C(n304), .Q(n344) );
  OAI220 U595 ( .A(n401), .B(sig_out_local_count[14]), .C(n400), .D(
        sig_out_local_count[13]), .Q(n366) );
  NOR20 U596 ( .A(n182), .B(sig_out_local_count[15]), .Q(n365) );
  OAI220 U597 ( .A(n399), .B(sig_out_local_count[12]), .C(n398), .D(
        sig_out_local_count[11]), .Q(n364) );
  OAI220 U598 ( .A(n397), .B(sig_out_local_count[10]), .C(n396), .D(
        sig_out_local_count[9]), .Q(n363) );
  NOR40 U599 ( .A(n366), .B(n365), .C(n364), .D(n363), .Q(n367) );
  AOI220 U600 ( .A(sig_out_local_count[0]), .B(sig_out_local_count[1]), .C(
        N260), .D(sig_out_local_count[0]), .Q(n369) );
  OAI220 U601 ( .A(n390), .B(sig_out_local_count[4]), .C(n389), .D(
        sig_out_local_count[3]), .Q(n368) );
  AOI2110 U602 ( .A(n346), .B(sig_cyclesTrame4[2]), .C(n369), .D(n368), .Q(
        n370) );
  OAI220 U603 ( .A(sig_out_local_count[5]), .B(n392), .C(
        sig_out_local_count[6]), .D(n393), .Q(n372) );
  OAI220 U604 ( .A(sig_out_local_count[7]), .B(n394), .C(
        sig_out_local_count[8]), .D(n395), .Q(n371) );
  NOR40 U605 ( .A(n402), .B(n391), .C(n372), .D(n371), .Q(n373) );
  AOI220 U606 ( .A(sig_out_local_count[8]), .B(n395), .C(
        sig_out_local_count[9]), .D(n396), .Q(n378) );
  AOI220 U607 ( .A(sig_out_local_count[6]), .B(n393), .C(
        sig_out_local_count[7]), .D(n394), .Q(n377) );
  AOI220 U608 ( .A(sig_out_local_count[4]), .B(n390), .C(
        sig_out_local_count[5]), .D(n392), .Q(n376) );
  AOI220 U609 ( .A(n172), .B(n388), .C(sig_out_local_count[3]), .D(n389), .Q(
        n375) );
  NAND40 U610 ( .A(n378), .B(n377), .C(n376), .D(n375), .Q(n384) );
  AOI220 U611 ( .A(sig_out_local_count[14]), .B(n401), .C(
        sig_out_local_count[15]), .D(n182), .Q(n382) );
  AOI220 U612 ( .A(sig_out_local_count[12]), .B(n399), .C(
        sig_out_local_count[13]), .D(n400), .Q(n380) );
  AOI220 U613 ( .A(sig_out_local_count[10]), .B(n397), .C(
        sig_out_local_count[11]), .D(n398), .Q(n379) );
  NAND40 U614 ( .A(n382), .B(n381), .C(n380), .D(n379), .Q(n383) );
  OAI210 U615 ( .A(n384), .B(n383), .C(n304), .Q(n385) );
  NOR40 U616 ( .A(n387), .B(n386), .C(sig_out_local_count[19]), .D(
        sig_out_local_count[18]), .Q(N203) );
  NOR20 U617 ( .A(n373), .B(n173), .Q(n374) );
  NOR20 U618 ( .A(n174), .B(n403), .Q(n387) );
  NAND20 U619 ( .A(sig_out_local_count[1]), .B(N260), .Q(n381) );
  NAND30 U620 ( .A(n275), .B(n385), .C(n304), .Q(n386) );
  XNR20 U621 ( .A(N222), .B(sig_out_local_count[10]), .Q(n406) );
  XNR20 U622 ( .A(N221), .B(sig_out_local_count[9]), .Q(n405) );
  XNR20 U623 ( .A(N223), .B(sig_out_local_count[11]), .Q(n404) );
  NAND30 U624 ( .A(n406), .B(n405), .C(n404), .Q(n417) );
  XNR20 U625 ( .A(N225), .B(sig_out_local_count[13]), .Q(n408) );
  XNR20 U626 ( .A(N224), .B(sig_out_local_count[12]), .Q(n407) );
  NAND20 U627 ( .A(n408), .B(n407), .Q(n416) );
  XNR20 U628 ( .A(N227), .B(sig_out_local_count[15]), .Q(n411) );
  XNR20 U629 ( .A(N226), .B(sig_out_local_count[14]), .Q(n410) );
  XNR20 U630 ( .A(N228), .B(n173), .Q(n409) );
  NAND30 U631 ( .A(n411), .B(n410), .C(n409), .Q(n415) );
  XNR20 U632 ( .A(N230), .B(sig_out_local_count[18]), .Q(n413) );
  XNR20 U633 ( .A(N229), .B(n174), .Q(n412) );
  NAND20 U634 ( .A(n413), .B(n412), .Q(n414) );
  NOR40 U635 ( .A(n417), .B(n416), .C(n415), .D(n414), .Q(n418) );
  AOI220 U636 ( .A(n434), .B(n433), .C(n433), .D(N213), .Q(n419) );
  XNR20 U637 ( .A(N231), .B(sig_out_local_count[19]), .Q(n423) );
  XOR20 U638 ( .A(N214), .B(n172), .Q(n421) );
  XOR20 U639 ( .A(N215), .B(sig_out_local_count[3]), .Q(n420) );
  NOR20 U640 ( .A(n421), .B(n420), .Q(n422) );
  NAND40 U641 ( .A(n435), .B(n424), .C(n423), .D(n422), .Q(n432) );
  XNR20 U642 ( .A(N217), .B(sig_out_local_count[5]), .Q(n427) );
  XNR20 U643 ( .A(N216), .B(sig_out_local_count[4]), .Q(n426) );
  XNR20 U644 ( .A(N218), .B(sig_out_local_count[6]), .Q(n425) );
  NAND30 U645 ( .A(n427), .B(n426), .C(n425), .Q(n431) );
  XNR20 U646 ( .A(N220), .B(sig_out_local_count[8]), .Q(n429) );
  XNR20 U647 ( .A(N219), .B(sig_out_local_count[7]), .Q(n428) );
  NAND20 U648 ( .A(n429), .B(n428), .Q(n430) );
  NOR40 U649 ( .A(n436), .B(n432), .C(n431), .D(n430), .Q(N232) );
endmodule

