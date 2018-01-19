
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_top_ppm is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_top_ppm;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW01_add_8 is

   port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (19 downto 0);  CO : out std_logic);

end send_ppm_DW01_add_8;

architecture SYN_rpl of send_ppm_DW01_add_8 is

   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, 
      carry_2_port, n1, n2, n3, n4 : std_logic;

begin
   
   U1_15 : ADD32 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : ADD32 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : ADD32 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : ADD32 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : ADD32 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : ADD32 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : ADD32 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADD32 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADD32 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADD32 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADD32 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADD32 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADD32 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADD32 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1 : NOR21 port map( A => n1, B => n2, Q => SUM(17));
   U2 : INV3 port map( A => B(16), Q => n1);
   U3 : XOR21 port map( A => carry_16_port, B => B(16), Q => SUM(16));
   U4 : INV3 port map( A => carry_16_port, Q => n2);
   U5 : NOR21 port map( A => n3, B => n4, Q => carry_2_port);
   U6 : INV3 port map( A => A(1), Q => n4);
   U7 : INV3 port map( A => B(1), Q => n3);
   U8 : XOR21 port map( A => A(1), B => B(1), Q => SUM(1));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW01_sub_0 is

   port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  DIFF : 
         out std_logic_vector (19 downto 0);  CO : out std_logic);

end send_ppm_DW01_sub_0;

architecture SYN_rpl of send_ppm_DW01_sub_0 is

   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19 : std_logic;

begin
   
   U2_17 : ADD32 port map( A => A(17), B => n3, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF(17));
   U2_16 : ADD32 port map( A => A(16), B => n4, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF(16));
   U2_15 : ADD32 port map( A => A(15), B => n5, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF(15));
   U2_14 : ADD32 port map( A => A(14), B => n6, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF(14));
   U2_13 : ADD32 port map( A => A(13), B => n7, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF(13));
   U2_12 : ADD32 port map( A => A(12), B => n8, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF(12));
   U2_11 : ADD32 port map( A => A(11), B => n9, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF(11));
   U2_10 : ADD32 port map( A => A(10), B => n10, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF(10));
   U2_9 : ADD32 port map( A => A(9), B => n11, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF(9));
   U2_8 : ADD32 port map( A => A(8), B => n12, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF(8));
   U2_7 : ADD32 port map( A => A(7), B => n13, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF(7));
   U2_6 : ADD32 port map( A => A(6), B => n14, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF(6));
   U2_5 : ADD32 port map( A => A(5), B => n15, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF(5));
   U2_4 : ADD32 port map( A => A(4), B => n16, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF(4));
   U2_3 : ADD32 port map( A => A(3), B => n17, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF(3));
   U2_2 : ADD32 port map( A => A(2), B => n18, CI => carry_2_port, CO => 
                           carry_3_port, S => DIFF(2));
   U1 : INV3 port map( A => B(12), Q => n8);
   U2 : INV3 port map( A => B(13), Q => n7);
   U3 : INV3 port map( A => B(10), Q => n10);
   U4 : INV3 port map( A => B(11), Q => n9);
   U5 : INV3 port map( A => B(9), Q => n11);
   U6 : INV3 port map( A => B(17), Q => n3);
   U7 : INV3 port map( A => B(15), Q => n5);
   U8 : INV3 port map( A => B(14), Q => n6);
   U9 : INV3 port map( A => B(16), Q => n4);
   U10 : INV3 port map( A => B(7), Q => n13);
   U11 : INV3 port map( A => B(8), Q => n12);
   U12 : INV3 port map( A => B(6), Q => n14);
   U13 : INV3 port map( A => B(5), Q => n15);
   U14 : INV3 port map( A => B(4), Q => n16);
   U15 : INV3 port map( A => B(3), Q => n17);
   U16 : INV3 port map( A => n2, Q => carry_2_port);
   U17 : INV3 port map( A => B(2), Q => n18);
   U18 : NOR21 port map( A => n19, B => A(1), Q => n2);
   U19 : INV3 port map( A => B(1), Q => n19);
   U20 : XNR21 port map( A => A(1), B => n19, Q => DIFF(1));
   U21 : XNR21 port map( A => A(18), B => carry_18_port, Q => DIFF(18));
   U22 : XNR21 port map( A => n1, B => A(18), Q => DIFF(19));
   U23 : NOR21 port map( A => carry_18_port, B => A(18), Q => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW02_mult_3 is

   port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
         downto 0));

end send_ppm_DW02_mult_3;

architecture SYN_csa of send_ppm_DW02_mult_3 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, CARRYB_7_5_port, CARRYB_7_1_port, CARRYB_6_5_port, 
      CARRYB_6_1_port, CARRYB_5_5_port, CARRYB_5_1_port, CARRYB_4_5_port, 
      CARRYB_4_1_port, CARRYB_3_5_port, CARRYB_2_5_port, CARRYB_1_5_port, 
      SUMB_7_5_port, SUMB_6_5_port, SUMB_5_5_port, SUMB_4_5_port, SUMB_3_5_port
      , SUMB_2_5_port, SUMB_1_5_port, A1_11_port, A2_12_port, A2_8_port, 
      PRODUCT_10_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n_1030 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, A(3), A(2), A(1), A(0), 
      n_1030 );
   
   S4_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => SUMB_3_5_port,
                           CO => CARRYB_7_1_port, S => PRODUCT_8_port);
   S5_5 : ADD32 port map( A => A(7), B => CARRYB_6_5_port, CI => A(6), CO => 
                           CARRYB_7_5_port, S => SUMB_7_5_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_6_1_port, S => 
                           PRODUCT_7_port);
   S3_6_5 : ADD32 port map( A => A(6), B => CARRYB_5_5_port, CI => A(5), CO => 
                           CARRYB_6_5_port, S => SUMB_6_5_port);
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => 
                           SUMB_1_5_port, CO => CARRYB_5_1_port, S => 
                           PRODUCT_6_port);
   S3_5_5 : ADD32 port map( A => A(5), B => CARRYB_4_5_port, CI => A(4), CO => 
                           CARRYB_5_5_port, S => SUMB_5_5_port);
   S3_4_5 : ADD32 port map( A => A(4), B => CARRYB_3_5_port, CI => A(3), CO => 
                           CARRYB_4_5_port, S => SUMB_4_5_port);
   S3_3_5 : ADD32 port map( A => A(3), B => CARRYB_2_5_port, CI => A(2), CO => 
                           CARRYB_3_5_port, S => SUMB_3_5_port);
   S3_2_5 : ADD32 port map( A => A(2), B => CARRYB_1_5_port, CI => A(1), CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   U2 : XOR21 port map( A => n17, B => SUMB_6_5_port, Q => PRODUCT_11_port);
   U3 : INV3 port map( A => n16, Q => n17);
   U4 : XOR21 port map( A => SUMB_4_5_port, B => CARRYB_7_1_port, Q => 
                           PRODUCT_9_port);
   U5 : IMUX21 port map( A => n18, B => SUMB_5_5_port, S => A2_8_port, Q => 
                           PRODUCT_10_port);
   U6 : INV3 port map( A => SUMB_5_5_port, Q => n18);
   U7 : INV3 port map( A => SUMB_7_5_port, Q => n19);
   U8 : NOR21 port map( A => n4, B => n5, Q => A2_8_port);
   U9 : INV3 port map( A => CARRYB_7_1_port, Q => n5);
   U10 : INV3 port map( A => SUMB_4_5_port, Q => n4);
   U11 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U12 : XOR21 port map( A => A1_11_port, B => n12, Q => PRODUCT_13_port);
   U13 : NOR21 port map( A => n19, B => n11, Q => n12);
   U14 : NOR21 port map( A => n19, B => n13, Q => n14);
   U15 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_7_5_port, Q => n6);
   U17 : XOR21 port map( A => A(4), B => A(0), Q => PRODUCT_5_port);
   U18 : INV3 port map( A => A(0), Q => n10);
   U19 : NOR21 port map( A => n9, B => n10, Q => CARRYB_4_1_port);
   U20 : XOR21 port map( A => A(0), B => A(1), Q => SUMB_1_5_port);
   U21 : INV3 port map( A => A(4), Q => n9);
   U22 : NOR21 port map( A => n10, B => n8, Q => CARRYB_1_5_port);
   U23 : INV3 port map( A => A(1), Q => n8);
   U24 : XOR21 port map( A => A(7), B => CARRYB_7_5_port, Q => A1_11_port);
   U25 : XNR21 port map( A => n15, B => A2_12_port, Q => PRODUCT_14_port);
   U26 : NOR21 port map( A => n6, B => n7, Q => A2_12_port);
   U27 : NAND22 port map( A => A1_11_port, B => n14, Q => n15);
   U28 : INV3 port map( A => A(7), Q => n7);
   U29 : NAND20 port map( A => A2_8_port, B => SUMB_5_5_port, Q => n16);
   U30 : XOR20 port map( A => n11, B => n19, Q => PRODUCT_12_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW02_mult_2 is

   port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
         downto 0));

end send_ppm_DW02_mult_2;

architecture SYN_csa of send_ppm_DW02_mult_2 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, CARRYB_7_5_port, CARRYB_7_1_port, CARRYB_6_5_port, 
      CARRYB_6_1_port, CARRYB_5_5_port, CARRYB_5_1_port, CARRYB_4_5_port, 
      CARRYB_4_1_port, CARRYB_3_5_port, CARRYB_2_5_port, CARRYB_1_5_port, 
      SUMB_7_5_port, SUMB_6_5_port, SUMB_5_5_port, SUMB_4_5_port, SUMB_3_5_port
      , SUMB_2_5_port, SUMB_1_5_port, A1_11_port, A2_12_port, A2_8_port, 
      PRODUCT_10_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n_1039 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, A(3), A(2), A(1), A(0), 
      n_1039 );
   
   S4_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => SUMB_3_5_port,
                           CO => CARRYB_7_1_port, S => PRODUCT_8_port);
   S5_5 : ADD32 port map( A => A(7), B => CARRYB_6_5_port, CI => A(6), CO => 
                           CARRYB_7_5_port, S => SUMB_7_5_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_6_1_port, S => 
                           PRODUCT_7_port);
   S3_6_5 : ADD32 port map( A => A(6), B => CARRYB_5_5_port, CI => A(5), CO => 
                           CARRYB_6_5_port, S => SUMB_6_5_port);
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => 
                           SUMB_1_5_port, CO => CARRYB_5_1_port, S => 
                           PRODUCT_6_port);
   S3_5_5 : ADD32 port map( A => A(5), B => CARRYB_4_5_port, CI => A(4), CO => 
                           CARRYB_5_5_port, S => SUMB_5_5_port);
   S3_4_5 : ADD32 port map( A => A(4), B => CARRYB_3_5_port, CI => A(3), CO => 
                           CARRYB_4_5_port, S => SUMB_4_5_port);
   S3_3_5 : ADD32 port map( A => A(3), B => CARRYB_2_5_port, CI => A(2), CO => 
                           CARRYB_3_5_port, S => SUMB_3_5_port);
   S3_2_5 : ADD32 port map( A => A(2), B => CARRYB_1_5_port, CI => A(1), CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   U2 : XOR21 port map( A => n17, B => SUMB_6_5_port, Q => PRODUCT_11_port);
   U3 : INV3 port map( A => n16, Q => n17);
   U4 : XOR21 port map( A => SUMB_4_5_port, B => CARRYB_7_1_port, Q => 
                           PRODUCT_9_port);
   U5 : NOR21 port map( A => n4, B => n5, Q => A2_8_port);
   U6 : INV3 port map( A => CARRYB_7_1_port, Q => n5);
   U7 : INV3 port map( A => SUMB_4_5_port, Q => n4);
   U8 : IMUX21 port map( A => n18, B => SUMB_5_5_port, S => A2_8_port, Q => 
                           PRODUCT_10_port);
   U9 : INV3 port map( A => SUMB_5_5_port, Q => n18);
   U10 : INV3 port map( A => SUMB_7_5_port, Q => n19);
   U11 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U12 : XOR21 port map( A => A1_11_port, B => n12, Q => PRODUCT_13_port);
   U13 : NOR21 port map( A => n19, B => n11, Q => n12);
   U14 : NOR21 port map( A => n19, B => n13, Q => n14);
   U15 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_7_5_port, Q => n6);
   U17 : XOR21 port map( A => A(4), B => A(0), Q => PRODUCT_5_port);
   U18 : NOR21 port map( A => n10, B => n8, Q => CARRYB_1_5_port);
   U19 : INV3 port map( A => A(1), Q => n8);
   U20 : INV3 port map( A => A(0), Q => n10);
   U21 : NOR21 port map( A => n9, B => n10, Q => CARRYB_4_1_port);
   U22 : XOR21 port map( A => A(0), B => A(1), Q => SUMB_1_5_port);
   U23 : INV3 port map( A => A(4), Q => n9);
   U24 : XOR21 port map( A => A(7), B => CARRYB_7_5_port, Q => A1_11_port);
   U25 : XNR21 port map( A => n15, B => A2_12_port, Q => PRODUCT_14_port);
   U26 : NOR21 port map( A => n6, B => n7, Q => A2_12_port);
   U27 : NAND22 port map( A => A1_11_port, B => n14, Q => n15);
   U28 : INV3 port map( A => A(7), Q => n7);
   U29 : NAND20 port map( A => A2_8_port, B => SUMB_5_5_port, Q => n16);
   U30 : XOR20 port map( A => n11, B => n19, Q => PRODUCT_12_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW02_mult_1 is

   port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
         downto 0));

end send_ppm_DW02_mult_1;

architecture SYN_csa of send_ppm_DW02_mult_1 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, CARRYB_7_5_port, CARRYB_7_1_port, CARRYB_6_5_port, 
      CARRYB_6_1_port, CARRYB_5_5_port, CARRYB_5_1_port, CARRYB_4_5_port, 
      CARRYB_4_1_port, CARRYB_3_5_port, CARRYB_2_5_port, CARRYB_1_5_port, 
      SUMB_7_5_port, SUMB_6_5_port, SUMB_5_5_port, SUMB_4_5_port, SUMB_3_5_port
      , SUMB_2_5_port, SUMB_1_5_port, A1_11_port, A2_12_port, A2_8_port, 
      PRODUCT_10_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n_1048 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, A(3), A(2), A(1), A(0), 
      n_1048 );
   
   S4_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => SUMB_3_5_port,
                           CO => CARRYB_7_1_port, S => PRODUCT_8_port);
   S5_5 : ADD32 port map( A => A(7), B => CARRYB_6_5_port, CI => A(6), CO => 
                           CARRYB_7_5_port, S => SUMB_7_5_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_6_1_port, S => 
                           PRODUCT_7_port);
   S3_6_5 : ADD32 port map( A => A(6), B => CARRYB_5_5_port, CI => A(5), CO => 
                           CARRYB_6_5_port, S => SUMB_6_5_port);
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => 
                           SUMB_1_5_port, CO => CARRYB_5_1_port, S => 
                           PRODUCT_6_port);
   S3_5_5 : ADD32 port map( A => A(5), B => CARRYB_4_5_port, CI => A(4), CO => 
                           CARRYB_5_5_port, S => SUMB_5_5_port);
   S3_4_5 : ADD32 port map( A => A(4), B => CARRYB_3_5_port, CI => A(3), CO => 
                           CARRYB_4_5_port, S => SUMB_4_5_port);
   S3_3_5 : ADD32 port map( A => A(3), B => CARRYB_2_5_port, CI => A(2), CO => 
                           CARRYB_3_5_port, S => SUMB_3_5_port);
   S3_2_5 : ADD32 port map( A => A(2), B => CARRYB_1_5_port, CI => A(1), CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   U2 : XOR21 port map( A => SUMB_4_5_port, B => CARRYB_7_1_port, Q => 
                           PRODUCT_9_port);
   U3 : IMUX21 port map( A => n18, B => SUMB_5_5_port, S => A2_8_port, Q => 
                           PRODUCT_10_port);
   U4 : INV3 port map( A => SUMB_5_5_port, Q => n18);
   U5 : XOR21 port map( A => n17, B => SUMB_6_5_port, Q => PRODUCT_11_port);
   U6 : INV3 port map( A => n16, Q => n17);
   U7 : NOR21 port map( A => n4, B => n5, Q => A2_8_port);
   U8 : INV3 port map( A => CARRYB_7_1_port, Q => n5);
   U9 : INV3 port map( A => SUMB_4_5_port, Q => n4);
   U10 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U11 : INV3 port map( A => SUMB_7_5_port, Q => n19);
   U12 : XOR21 port map( A => A1_11_port, B => n12, Q => PRODUCT_13_port);
   U13 : NOR21 port map( A => n19, B => n11, Q => n12);
   U14 : NOR21 port map( A => n19, B => n13, Q => n14);
   U15 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_7_5_port, Q => n6);
   U17 : XOR21 port map( A => A(4), B => A(0), Q => PRODUCT_5_port);
   U18 : INV3 port map( A => A(0), Q => n10);
   U19 : NOR21 port map( A => n9, B => n10, Q => CARRYB_4_1_port);
   U20 : XOR21 port map( A => A(0), B => A(1), Q => SUMB_1_5_port);
   U21 : INV3 port map( A => A(4), Q => n9);
   U22 : NOR21 port map( A => n10, B => n8, Q => CARRYB_1_5_port);
   U23 : INV3 port map( A => A(1), Q => n8);
   U24 : XOR21 port map( A => A(7), B => CARRYB_7_5_port, Q => A1_11_port);
   U25 : XNR21 port map( A => n15, B => A2_12_port, Q => PRODUCT_14_port);
   U26 : NOR21 port map( A => n6, B => n7, Q => A2_12_port);
   U27 : NAND22 port map( A => A1_11_port, B => n14, Q => n15);
   U28 : INV3 port map( A => A(7), Q => n7);
   U29 : NAND20 port map( A => A2_8_port, B => SUMB_5_5_port, Q => n16);
   U30 : XOR20 port map( A => n11, B => n19, Q => PRODUCT_12_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm_DW02_mult_0 is

   port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
         downto 0));

end send_ppm_DW02_mult_0;

architecture SYN_csa of send_ppm_DW02_mult_0 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, CARRYB_7_5_port, CARRYB_7_1_port, CARRYB_6_5_port, 
      CARRYB_6_1_port, CARRYB_5_5_port, CARRYB_5_1_port, CARRYB_4_5_port, 
      CARRYB_4_1_port, CARRYB_3_5_port, CARRYB_2_5_port, CARRYB_1_5_port, 
      SUMB_7_5_port, SUMB_6_5_port, SUMB_5_5_port, SUMB_4_5_port, SUMB_3_5_port
      , SUMB_2_5_port, SUMB_1_5_port, A1_11_port, A2_12_port, A2_8_port, 
      PRODUCT_10_port, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, 
      n16, n17, n18, n19, n_1057 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, A(3), A(2), A(1), A(0), 
      n_1057 );
   
   S4_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => SUMB_3_5_port,
                           CO => CARRYB_7_1_port, S => PRODUCT_8_port);
   S5_5 : ADD32 port map( A => A(7), B => CARRYB_6_5_port, CI => A(6), CO => 
                           CARRYB_7_5_port, S => SUMB_7_5_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => 
                           SUMB_2_5_port, CO => CARRYB_6_1_port, S => 
                           PRODUCT_7_port);
   S3_6_5 : ADD32 port map( A => A(6), B => CARRYB_5_5_port, CI => A(5), CO => 
                           CARRYB_6_5_port, S => SUMB_6_5_port);
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => 
                           SUMB_1_5_port, CO => CARRYB_5_1_port, S => 
                           PRODUCT_6_port);
   S3_5_5 : ADD32 port map( A => A(5), B => CARRYB_4_5_port, CI => A(4), CO => 
                           CARRYB_5_5_port, S => SUMB_5_5_port);
   S3_4_5 : ADD32 port map( A => A(4), B => CARRYB_3_5_port, CI => A(3), CO => 
                           CARRYB_4_5_port, S => SUMB_4_5_port);
   S3_3_5 : ADD32 port map( A => A(3), B => CARRYB_2_5_port, CI => A(2), CO => 
                           CARRYB_3_5_port, S => SUMB_3_5_port);
   S3_2_5 : ADD32 port map( A => A(2), B => CARRYB_1_5_port, CI => A(1), CO => 
                           CARRYB_2_5_port, S => SUMB_2_5_port);
   U2 : XOR21 port map( A => SUMB_4_5_port, B => CARRYB_7_1_port, Q => 
                           PRODUCT_9_port);
   U3 : IMUX21 port map( A => n18, B => SUMB_5_5_port, S => A2_8_port, Q => 
                           PRODUCT_10_port);
   U4 : INV3 port map( A => SUMB_5_5_port, Q => n18);
   U5 : XOR21 port map( A => n17, B => SUMB_6_5_port, Q => PRODUCT_11_port);
   U6 : INV3 port map( A => n16, Q => n17);
   U7 : NOR21 port map( A => n4, B => n5, Q => A2_8_port);
   U8 : INV3 port map( A => CARRYB_7_1_port, Q => n5);
   U9 : INV3 port map( A => SUMB_4_5_port, Q => n4);
   U10 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U11 : INV3 port map( A => SUMB_7_5_port, Q => n19);
   U12 : XOR21 port map( A => A1_11_port, B => n12, Q => PRODUCT_13_port);
   U13 : NOR21 port map( A => n19, B => n11, Q => n12);
   U14 : NOR21 port map( A => n19, B => n13, Q => n14);
   U15 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_7_5_port, Q => n6);
   U17 : XOR21 port map( A => A(4), B => A(0), Q => PRODUCT_5_port);
   U18 : INV3 port map( A => A(0), Q => n10);
   U19 : NOR21 port map( A => n9, B => n10, Q => CARRYB_4_1_port);
   U20 : XOR21 port map( A => A(0), B => A(1), Q => SUMB_1_5_port);
   U21 : INV3 port map( A => A(4), Q => n9);
   U22 : NOR21 port map( A => n10, B => n8, Q => CARRYB_1_5_port);
   U23 : INV3 port map( A => A(1), Q => n8);
   U24 : XOR21 port map( A => A(7), B => CARRYB_7_5_port, Q => A1_11_port);
   U25 : XNR21 port map( A => n15, B => A2_12_port, Q => PRODUCT_14_port);
   U26 : NOR21 port map( A => n6, B => n7, Q => A2_12_port);
   U27 : NAND22 port map( A => A1_11_port, B => n14, Q => n15);
   U28 : INV3 port map( A => A(7), Q => n7);
   U29 : NAND20 port map( A => A2_8_port, B => SUMB_5_5_port, Q => n16);
   U30 : XOR20 port map( A => n11, B => n19, Q => PRODUCT_12_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity local_counter_DW01_inc_0 is

   port( A : in std_logic_vector (19 downto 0);  SUM : out std_logic_vector (19
         downto 0));

end local_counter_DW01_inc_0;

architecture SYN_rpl of local_counter_DW01_inc_0 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD22
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_19_port, carry_18_port, carry_17_port, carry_16_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_18 : ADD22 port map( A => A(18), B => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_1_17 : ADD22 port map( A => A(17), B => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_1_16 : ADD22 port map( A => A(16), B => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_1_15 : ADD22 port map( A => A(15), B => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_1_14 : ADD22 port map( A => A(14), B => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_1_13 : ADD22 port map( A => A(13), B => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_1_12 : ADD22 port map( A => A(12), B => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_1_11 : ADD22 port map( A => A(11), B => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_1_10 : ADD22 port map( A => A(10), B => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_1_9 : ADD22 port map( A => A(9), B => carry_9_port, CO => carry_10_port, 
                           S => SUM(9));
   U1_1_8 : ADD22 port map( A => A(8), B => carry_8_port, CO => carry_9_port, S
                           => SUM(8));
   U1_1_7 : ADD22 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : ADD22 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : ADD22 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : ADD22 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : ADD22 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : ADD22 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : ADD22 port map( A => A(1), B => A(0), CO => carry_2_port, S => 
                           SUM(1));
   U1 : XOR20 port map( A => carry_19_port, B => A(19), Q => SUM(19));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity local_counter is

   port( i_clk, i_reset_n, i_init : in std_logic;  o_count : out 
         std_logic_vector (19 downto 0));

end local_counter;

architecture SYN_b of local_counter is

   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component local_counter_DW01_inc_0
      port( A : in std_logic_vector (19 downto 0);  SUM : out std_logic_vector 
            (19 downto 0));
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal v_val_19_port, v_val_18_port, v_val_17_port, v_val_16_port, 
      v_val_15_port, v_val_14_port, v_val_13_port, v_val_12_port, v_val_11_port
      , v_val_10_port, v_val_9_port, v_val_8_port, v_val_7_port, v_val_6_port, 
      v_val_5_port, v_val_4_port, v_val_3_port, v_val_2_port, v_val_1_port, 
      v_val_0_port, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, 
      N19, N20, N21, N22, N23, N24, N25, N46, N47, N48, N49, N50, N51, N52, N53
      , N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, n22_port, 
      n1, n2, n3, n4, n5, n6, n7_port, n8_port, n9_port, n10_port, n11_port, 
      n12_port, n13_port, n14_port, n15_port, n16_port, n17_port, n18_port, 
      n19_port, n20_port, n21_port, n23_port, n24_port, n_1059, n_1060, n_1061,
      n_1062, n_1063, n_1064, n_1065, n_1066, n_1067, n_1068, n_1069, n_1070, 
      n_1071, n_1072, n_1073, n_1074, n_1075, n_1076, n_1077, n_1078, n_1079, 
      n_1080, n_1081, n_1082, n_1083, n_1084, n_1085, n_1086, n_1087, n_1088, 
      n_1089, n_1090, n_1091, n_1092, n_1093, n_1094, n_1095, n_1096, n_1097, 
      n_1098, n_1099 : std_logic;

begin
   
   v_val_reg_0_inst : DF3 port map( D => N46, C => i_clk, Q => v_val_0_port, QN
                           => n_1059);
   v_val_reg_1_inst : DF3 port map( D => N47, C => i_clk, Q => v_val_1_port, QN
                           => n_1060);
   v_val_reg_2_inst : DF3 port map( D => N48, C => i_clk, Q => v_val_2_port, QN
                           => n_1061);
   v_val_reg_3_inst : DF3 port map( D => N49, C => i_clk, Q => v_val_3_port, QN
                           => n_1062);
   v_val_reg_4_inst : DF3 port map( D => N50, C => i_clk, Q => v_val_4_port, QN
                           => n_1063);
   v_val_reg_5_inst : DF3 port map( D => N51, C => i_clk, Q => v_val_5_port, QN
                           => n_1064);
   v_val_reg_6_inst : DF3 port map( D => N52, C => i_clk, Q => v_val_6_port, QN
                           => n_1065);
   v_val_reg_7_inst : DF3 port map( D => N53, C => i_clk, Q => v_val_7_port, QN
                           => n_1066);
   v_val_reg_8_inst : DF3 port map( D => N54, C => i_clk, Q => v_val_8_port, QN
                           => n_1067);
   v_val_reg_9_inst : DF3 port map( D => N55, C => i_clk, Q => v_val_9_port, QN
                           => n_1068);
   v_val_reg_10_inst : DF3 port map( D => N56, C => i_clk, Q => v_val_10_port, 
                           QN => n_1069);
   v_val_reg_11_inst : DF3 port map( D => N57, C => i_clk, Q => v_val_11_port, 
                           QN => n_1070);
   v_val_reg_12_inst : DF3 port map( D => N58, C => i_clk, Q => v_val_12_port, 
                           QN => n_1071);
   v_val_reg_13_inst : DF3 port map( D => N59, C => i_clk, Q => v_val_13_port, 
                           QN => n_1072);
   v_val_reg_14_inst : DF3 port map( D => N60, C => i_clk, Q => v_val_14_port, 
                           QN => n_1073);
   v_val_reg_15_inst : DF3 port map( D => N61, C => i_clk, Q => v_val_15_port, 
                           QN => n_1074);
   v_val_reg_16_inst : DF3 port map( D => N62, C => i_clk, Q => v_val_16_port, 
                           QN => n_1075);
   v_val_reg_17_inst : DF3 port map( D => N63, C => i_clk, Q => v_val_17_port, 
                           QN => n_1076);
   v_val_reg_18_inst : DF3 port map( D => N64, C => i_clk, Q => v_val_18_port, 
                           QN => n_1077);
   v_val_reg_19_inst : DF3 port map( D => N65, C => i_clk, Q => v_val_19_port, 
                           QN => n_1078);
   o_count_reg_19_inst : DF3 port map( D => N65, C => i_clk, Q => o_count(19), 
                           QN => n_1079);
   o_count_reg_18_inst : DF3 port map( D => N64, C => i_clk, Q => o_count(18), 
                           QN => n_1080);
   o_count_reg_17_inst : DF3 port map( D => N63, C => i_clk, Q => o_count(17), 
                           QN => n_1081);
   o_count_reg_16_inst : DF3 port map( D => N62, C => i_clk, Q => o_count(16), 
                           QN => n_1082);
   o_count_reg_15_inst : DF3 port map( D => N61, C => i_clk, Q => o_count(15), 
                           QN => n_1083);
   o_count_reg_14_inst : DF3 port map( D => N60, C => i_clk, Q => o_count(14), 
                           QN => n_1084);
   o_count_reg_13_inst : DF3 port map( D => N59, C => i_clk, Q => o_count(13), 
                           QN => n_1085);
   o_count_reg_12_inst : DF3 port map( D => N58, C => i_clk, Q => o_count(12), 
                           QN => n_1086);
   o_count_reg_11_inst : DF3 port map( D => N57, C => i_clk, Q => o_count(11), 
                           QN => n_1087);
   o_count_reg_10_inst : DF3 port map( D => N56, C => i_clk, Q => o_count(10), 
                           QN => n_1088);
   o_count_reg_9_inst : DF3 port map( D => N55, C => i_clk, Q => o_count(9), QN
                           => n_1089);
   o_count_reg_8_inst : DF3 port map( D => N54, C => i_clk, Q => o_count(8), QN
                           => n_1090);
   o_count_reg_7_inst : DF3 port map( D => N53, C => i_clk, Q => o_count(7), QN
                           => n_1091);
   o_count_reg_6_inst : DF3 port map( D => N52, C => i_clk, Q => o_count(6), QN
                           => n_1092);
   o_count_reg_5_inst : DF3 port map( D => N51, C => i_clk, Q => o_count(5), QN
                           => n_1093);
   o_count_reg_4_inst : DF3 port map( D => N50, C => i_clk, Q => o_count(4), QN
                           => n_1094);
   o_count_reg_3_inst : DF3 port map( D => N49, C => i_clk, Q => o_count(3), QN
                           => n_1095);
   o_count_reg_2_inst : DF3 port map( D => N48, C => i_clk, Q => o_count(2), QN
                           => n_1096);
   o_count_reg_1_inst : DF3 port map( D => N47, C => i_clk, Q => o_count(1), QN
                           => n_1097);
   o_count_reg_0_inst : DF3 port map( D => N46, C => i_clk, Q => o_count(0), QN
                           => n_1098);
   add_34 : local_counter_DW01_inc_0 port map( A(19) => v_val_19_port, A(18) =>
                           v_val_18_port, A(17) => v_val_17_port, A(16) => 
                           v_val_16_port, A(15) => v_val_15_port, A(14) => 
                           v_val_14_port, A(13) => v_val_13_port, A(12) => 
                           v_val_12_port, A(11) => v_val_11_port, A(10) => 
                           v_val_10_port, A(9) => v_val_9_port, A(8) => 
                           v_val_8_port, A(7) => v_val_7_port, A(6) => 
                           v_val_6_port, A(5) => v_val_5_port, A(4) => 
                           v_val_4_port, A(3) => v_val_3_port, A(2) => 
                           v_val_2_port, A(1) => v_val_1_port, A(0) => 
                           v_val_0_port, SUM(19) => N25, SUM(18) => N24, 
                           SUM(17) => N23, SUM(16) => N22, SUM(15) => N21, 
                           SUM(14) => N20, SUM(13) => N19, SUM(12) => N18, 
                           SUM(11) => N17, SUM(10) => N16, SUM(9) => N15, 
                           SUM(8) => N14, SUM(7) => N13, SUM(6) => N12, SUM(5) 
                           => N11, SUM(4) => N10, SUM(3) => N9, SUM(2) => N8, 
                           SUM(1) => N7, SUM(0) => n_1099);
   U3 : BUF2 port map( A => n22_port, Q => n2);
   U4 : BUF2 port map( A => n22_port, Q => n1);
   U5 : BUF2 port map( A => n22_port, Q => n3);
   U6 : NOR21 port map( A => n2, B => n7_port, Q => N63);
   U7 : INV3 port map( A => N23, Q => n7_port);
   U8 : NOR21 port map( A => n2, B => n9_port, Q => N61);
   U9 : INV3 port map( A => N21, Q => n9_port);
   U10 : NOR21 port map( A => n2, B => n11_port, Q => N59);
   U11 : INV3 port map( A => N19, Q => n11_port);
   U12 : NOR21 port map( A => n2, B => n13_port, Q => N57);
   U13 : INV3 port map( A => N17, Q => n13_port);
   U14 : NOR21 port map( A => n2, B => n15_port, Q => N55);
   U15 : INV3 port map( A => N15, Q => n15_port);
   U16 : NOR21 port map( A => n2, B => n17_port, Q => N53);
   U17 : INV3 port map( A => N13, Q => n17_port);
   U18 : NOR21 port map( A => n1, B => n18_port, Q => N52);
   U19 : INV3 port map( A => N12, Q => n18_port);
   U20 : NOR21 port map( A => n1, B => n19_port, Q => N51);
   U21 : INV3 port map( A => N11, Q => n19_port);
   U22 : NOR21 port map( A => n1, B => n20_port, Q => N50);
   U23 : INV3 port map( A => N10, Q => n20_port);
   U24 : NOR21 port map( A => n1, B => n21_port, Q => N49);
   U25 : INV3 port map( A => N9, Q => n21_port);
   U26 : NOR21 port map( A => n1, B => n23_port, Q => N48);
   U27 : INV3 port map( A => N8, Q => n23_port);
   U28 : NOR21 port map( A => n1, B => n24_port, Q => N47);
   U29 : INV3 port map( A => N7, Q => n24_port);
   U30 : NOR21 port map( A => n3, B => n6, Q => N64);
   U31 : INV3 port map( A => N24, Q => n6);
   U32 : NOR21 port map( A => n3, B => n8_port, Q => N62);
   U33 : INV3 port map( A => N22, Q => n8_port);
   U34 : NOR21 port map( A => n3, B => n10_port, Q => N60);
   U35 : INV3 port map( A => N20, Q => n10_port);
   U36 : NOR21 port map( A => n3, B => n12_port, Q => N58);
   U37 : INV3 port map( A => N18, Q => n12_port);
   U38 : NOR21 port map( A => n3, B => n14_port, Q => N56);
   U39 : INV3 port map( A => N16, Q => n14_port);
   U40 : NOR21 port map( A => n3, B => n16_port, Q => N54);
   U41 : INV3 port map( A => N14, Q => n16_port);
   U42 : NAND22 port map( A => i_reset_n, B => n4, Q => n22_port);
   U43 : INV3 port map( A => i_init, Q => n4);
   U44 : NOR21 port map( A => n2, B => n5, Q => N65);
   U45 : INV3 port map( A => N25, Q => n5);
   U46 : NOR21 port map( A => n1, B => v_val_0_port, Q => N46);

end SYN_b;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity send_ppm is

   port( i_clk, i_reset_n : in std_logic;  i_reg : in std_logic_vector (31 
         downto 0);  o_ppm : out std_logic);

end send_ppm;

architecture SYN_rtl of send_ppm is

   component NOR40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component LOGIC1
      port( Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2111
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI311
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component INV2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INV1
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component DFE1
      port( D, E, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component send_ppm_DW02_mult_3
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_2
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_1
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_0
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW01_sub_0
      port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (19 downto 0);  CO : out std_logic);
   end component;
   
   component send_ppm_DW01_add_8
      port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (19 downto 0);  CO : out std_logic);
   end component;
   
   component local_counter
      port( i_clk, i_reset_n, i_init : in std_logic;  o_count : out 
            std_logic_vector (19 downto 0));
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component JK3
      port( J, K, C : in std_logic;  Q, QN : out std_logic);
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
      sig_cyclesTrame1_2_port, sig_cyclesTrame2_27, sig_cyclesTrame2_15_port, 
      sig_cyclesTrame2_14_port, sig_cyclesTrame2_13_port, 
      sig_cyclesTrame2_12_port, sig_cyclesTrame2_11_port, 
      sig_cyclesTrame2_10_port, sig_cyclesTrame2_9_port, 
      sig_cyclesTrame2_8_port, sig_cyclesTrame2_7_port, sig_cyclesTrame2_6_port
      , sig_cyclesTrame2_5_port, sig_cyclesTrame2_4_port, 
      sig_cyclesTrame2_3_port, sig_cyclesTrame2_2_port, sig_cyclesTrame2_1_port
      , sig_cyclesTrame3_15_port, sig_cyclesTrame3_14_port, 
      sig_cyclesTrame3_13_port, sig_cyclesTrame3_12_port, 
      sig_cyclesTrame3_11_port, sig_cyclesTrame3_10_port, 
      sig_cyclesTrame3_9_port, sig_cyclesTrame3_8_port, sig_cyclesTrame3_7_port
      , sig_cyclesTrame3_6_port, sig_cyclesTrame3_5_port, 
      sig_cyclesTrame3_4_port, sig_cyclesTrame3_3_port, sig_cyclesTrame3_2_port
      , sig_cyclesTrame3_1_port, sig_cyclesTrame4_15_port, 
      sig_cyclesTrame4_14_port, sig_cyclesTrame4_13_port, 
      sig_cyclesTrame4_12_port, sig_cyclesTrame4_11_port, 
      sig_cyclesTrame4_10_port, sig_cyclesTrame4_9_port, 
      sig_cyclesTrame4_8_port, sig_cyclesTrame4_7_port, sig_cyclesTrame4_6_port
      , sig_cyclesTrame4_5_port, sig_cyclesTrame4_4_port, 
      sig_cyclesTrame4_3_port, sig_cyclesTrame4_2_port, sig_cyclesTrame4_1_port
      , current_state_2_port, current_state_1_port, current_state_0_port, 
      sig_state_2_port, sig_state_1_port, sig_state_0_port, N81, N82, N148, 
      N156, N163, N169, N179, N180, N181, N182, N183, N184, N185, N186, N187, 
      N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, n53, 
      n55, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70
      , n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81_port, n82_port, 
      n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, N75_port
      , N71_port, N70_port, N69_port, N68_port, N67_port, N66_port, N65_port, 
      N64_port, N63_port, N62_port, N61_port, N60_port, N59_port, N58_port, 
      N57_port, N32, N31, N30, N296, N295, N294, N293, N292, N291, N290, N29, 
      N289, N288, N287, N286, N285, N284, N283, N282, N281, N280, N28, N27, N26
      , N25, N24, N23, N22, N21, N20, N19, N18, N17, N276, N275, N274, N273, 
      N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N261, N260, 
      N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
      N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
      N234, N233, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, 
      N221, N220, N219, N218, sub_114_cf_carry_3_port, sub_114_cf_carry_4_port,
      sub_114_cf_carry_5_port, sub_114_cf_carry_6_port, sub_114_cf_carry_7_port
      , sub_114_cf_carry_8_port, sub_114_cf_carry_9_port, 
      sub_114_cf_carry_10_port, sub_114_cf_carry_11_port, 
      sub_114_cf_carry_12_port, sub_114_cf_carry_13_port, 
      sub_114_cf_carry_14_port, sub_117_cf_carry_3_port, 
      sub_117_cf_carry_4_port, sub_117_cf_carry_5_port, sub_117_cf_carry_6_port
      , sub_117_cf_carry_7_port, sub_117_cf_carry_8_port, 
      sub_117_cf_carry_9_port, sub_117_cf_carry_10_port, 
      sub_117_cf_carry_11_port, sub_117_cf_carry_12_port, 
      sub_117_cf_carry_13_port, sub_117_cf_carry_14_port, 
      sub_120_cf_carry_3_port, sub_120_cf_carry_4_port, sub_120_cf_carry_5_port
      , sub_120_cf_carry_6_port, sub_120_cf_carry_7_port, 
      sub_120_cf_carry_8_port, sub_120_cf_carry_9_port, 
      sub_120_cf_carry_10_port, sub_120_cf_carry_11_port, 
      sub_120_cf_carry_12_port, sub_120_cf_carry_13_port, 
      sub_120_cf_carry_14_port, sub_123_cf_carry_3_port, 
      sub_123_cf_carry_4_port, sub_123_cf_carry_5_port, sub_123_cf_carry_6_port
      , sub_123_cf_carry_7_port, sub_123_cf_carry_8_port, 
      sub_123_cf_carry_9_port, sub_123_cf_carry_10_port, 
      sub_123_cf_carry_11_port, sub_123_cf_carry_12_port, 
      sub_123_cf_carry_13_port, sub_123_cf_carry_14_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_2_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_3_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_4_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_5_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_6_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_7_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_8_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_9_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_10_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_11_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_12_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_13_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_14_port, 
      add_2_root_sub_0_root_sub_235_cf_carry_15_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_3_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_4_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_5_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_6_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_7_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_8_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_9_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_10_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_11_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_12_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_13_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_14_port, 
      sub_3_root_sub_0_root_sub_235_cf_carry_15_port, n1, n2, n3, n4, n5, n6, 
      n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17_port, n18_port, 
      n19_port, n20_port, n21_port, n22_port, n23_port, n24_port, n25_port, 
      n26_port, n27_port, n28_port, n29_port, n30_port, n31_port, n32_port, n33
      , n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, 
      n48, n49, n50, n51, n52, n54, n56, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148_port, n149, 
      n150, n151, n152, n153, n154, n155, n156_port, n157, n158, n159, n160, 
      n161, n162, n163_port, n164, n165, n166, n167, n168, n169_port, n170, 
      n171, n172, n173, n174, n175, n176, n177, n178, n179_port, n180_port, 
      n181_port, n182_port, n183_port, n184_port, n185_port, n186_port, 
      n187_port, n188_port, n189_port, n190_port, n191_port, n192_port, 
      n193_port, n194_port, n195_port, n196_port, n197_port, n198_port, n199, 
      n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, 
      n212, n213, n214, n215, n216, n217, n218_port, n219_port, n220_port, 
      n221_port, n222_port, n223_port, n224_port, n225_port, n226_port, 
      n227_port, n228_port, n229_port, n230_port, n231_port, n232, n233_port, 
      n234_port, n235_port, n236_port, n237_port, n238_port, n239_port, 
      n240_port, n241_port, n242_port, n243_port, n244_port, n245_port, 
      n246_port, n247, n248_port, n249_port, n250_port, n251_port, n252_port, 
      n253_port, n254_port, n255_port, n256_port, n257_port, n258_port, 
      n259_port, n260_port, n261_port, n262, n263_port, n264_port, n265_port, 
      n266_port, n267_port, n268_port, n269_port, n270_port, n271_port, 
      n272_port, n273_port, n274_port, n275_port, n276_port, n277, n278, n279, 
      n280_port, n281_port, n282_port, n283_port, n284_port, n285_port, 
      n286_port, n287_port, n288_port, n289_port, n290_port, n291_port, 
      n292_port, n293_port, n294_port, n295_port, n296_port, n297, n298, n299, 
      n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, 
      n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, 
      n324, n325, n326, n327, n328, n329, n330, n331, n_1100, n_1101, n_1102, 
      n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, 
      n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, 
      n_1121, n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, 
      n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, 
      n_1139, n_1140, n_1141, n_1142, n_1143 : std_logic;

begin
   
   U6 : OAI222 port map( A => n318, B => n58, C => n324, D => n65, Q => n94);
   U13 : OAI212 port map( A => n67, B => n57, C => n68, Q => n95);
   U16 : OAI212 port map( A => sig_state_0_port, B => n70, C => n319, Q => n66)
                           ;
   U39 : OAI222 port map( A => n326, B => n322, C => sig_state_2_port, D => n91
                           , Q => n64);
   sig_state_reg_0_inst : JK3 port map( J => n69, K => n319, C => i_clk, Q => 
                           sig_state_0_port, QN => n59);
   current_state_reg_1_inst : DF3 port map( D => N82, C => i_clk, Q => 
                           current_state_1_port, QN => n53);
   sig_state_reg_2_inst : DF3 port map( D => n95, C => i_clk, Q => 
                           sig_state_2_port, QN => n57);
   current_state_reg_0_inst : DF3 port map( D => N81, C => i_clk, Q => 
                           current_state_0_port, QN => n55);
   current_state_reg_2_inst : DF3 port map( D => n321, C => i_clk, Q => 
                           current_state_2_port, QN => n_1100);
   sig_out_ppm_reg : DF3 port map( D => n328, C => i_clk, Q => o_ppm, QN => 
                           n_1101);
   sig_state_reg_1_inst : DF3 port map( D => n94, C => i_clk, Q => 
                           sig_state_1_port, QN => n58);
   local_counter1 : local_counter port map( i_clk => i_clk, i_reset_n => 
                           i_reset_n, i_init => sig_in_init, o_count(19) => 
                           sig_out_local_count_19_port, o_count(18) => 
                           sig_out_local_count_18_port, o_count(17) => 
                           sig_out_local_count_17_port, o_count(16) => 
                           sig_out_local_count_16_port, o_count(15) => 
                           sig_out_local_count_15_port, o_count(14) => 
                           sig_out_local_count_14_port, o_count(13) => 
                           sig_out_local_count_13_port, o_count(12) => 
                           sig_out_local_count_12_port, o_count(11) => 
                           sig_out_local_count_11_port, o_count(10) => 
                           sig_out_local_count_10_port, o_count(9) => 
                           sig_out_local_count_9_port, o_count(8) => 
                           sig_out_local_count_8_port, o_count(7) => 
                           sig_out_local_count_7_port, o_count(6) => 
                           sig_out_local_count_6_port, o_count(5) => 
                           sig_out_local_count_5_port, o_count(4) => 
                           sig_out_local_count_4_port, o_count(3) => 
                           sig_out_local_count_3_port, o_count(2) => 
                           sig_out_local_count_2_port, o_count(1) => 
                           sig_out_local_count_1_port, o_count(0) => 
                           sig_out_local_count_0_port);
   add_1_root_sub_0_root_sub_235_cf : send_ppm_DW01_add_8 port map( A(19) => 
                           sig_cyclesTrame2_27, A(18) => sig_cyclesTrame2_27, 
                           A(17) => sig_cyclesTrame2_27, A(16) => 
                           sig_cyclesTrame2_27, A(15) => 
                           sig_cyclesTrame2_15_port, A(14) => 
                           sig_cyclesTrame2_14_port, A(13) => 
                           sig_cyclesTrame2_13_port, A(12) => 
                           sig_cyclesTrame2_12_port, A(11) => 
                           sig_cyclesTrame2_11_port, A(10) => 
                           sig_cyclesTrame2_10_port, A(9) => 
                           sig_cyclesTrame2_9_port, A(8) => 
                           sig_cyclesTrame2_8_port, A(7) => 
                           sig_cyclesTrame2_7_port, A(6) => 
                           sig_cyclesTrame2_6_port, A(5) => 
                           sig_cyclesTrame2_5_port, A(4) => 
                           sig_cyclesTrame2_4_port, A(3) => 
                           sig_cyclesTrame2_3_port, A(2) => 
                           sig_cyclesTrame2_2_port, A(1) => 
                           sig_cyclesTrame2_1_port, A(0) => n331, B(19) => 
                           sig_cyclesTrame2_27, B(18) => sig_cyclesTrame2_27, 
                           B(17) => sig_cyclesTrame2_27, B(16) => N32, B(15) =>
                           N31, B(14) => N30, B(13) => N29, B(12) => N28, B(11)
                           => N27, B(10) => N26, B(9) => N25, B(8) => N24, B(7)
                           => N23, B(6) => N22, B(5) => N21, B(4) => N20, B(3) 
                           => N19, B(2) => N18, B(1) => N17, B(0) => 
                           sig_cyclesTrame2_27, CI => sig_cyclesTrame2_27, 
                           SUM(19) => n_1102, SUM(18) => n_1103, SUM(17) => 
                           N280, SUM(16) => N281, SUM(15) => N282, SUM(14) => 
                           N283, SUM(13) => N284, SUM(12) => N285, SUM(11) => 
                           N286, SUM(10) => N287, SUM(9) => N288, SUM(8) => 
                           N289, SUM(7) => N290, SUM(6) => N291, SUM(5) => N292
                           , SUM(4) => N293, SUM(3) => N294, SUM(2) => N295, 
                           SUM(1) => N296, SUM(0) => n_1104, CO => n_1105);
   sub_0_root_sub_0_root_sub_235_cf : send_ppm_DW01_sub_0 port map( A(19) => 
                           N75_port, A(18) => n24_port, A(17) => n24_port, 
                           A(16) => n24_port, A(15) => N71_port, A(14) => 
                           N70_port, A(13) => N69_port, A(12) => N68_port, 
                           A(11) => N67_port, A(10) => N66_port, A(9) => 
                           N65_port, A(8) => N64_port, A(7) => N63_port, A(6) 
                           => N62_port, A(5) => N61_port, A(4) => N60_port, 
                           A(3) => N59_port, A(2) => N58_port, A(1) => N57_port
                           , A(0) => n331, B(19) => sig_cyclesTrame2_27, B(18) 
                           => sig_cyclesTrame2_27, B(17) => N280, B(16) => N281
                           , B(15) => N282, B(14) => N283, B(13) => N284, B(12)
                           => N285, B(11) => N286, B(10) => N287, B(9) => N288,
                           B(8) => N289, B(7) => N290, B(6) => N291, B(5) => 
                           N292, B(4) => N293, B(3) => N294, B(2) => N295, B(1)
                           => N296, B(0) => n331, CI => sig_cyclesTrame2_27, 
                           DIFF(19) => N197, DIFF(18) => N196, DIFF(17) => N195
                           , DIFF(16) => N194, DIFF(15) => N193, DIFF(14) => 
                           N192, DIFF(13) => N191, DIFF(12) => N190, DIFF(11) 
                           => N189, DIFF(10) => N188, DIFF(9) => N187, DIFF(8) 
                           => N186, DIFF(7) => N185, DIFF(6) => N184, DIFF(5) 
                           => N183, DIFF(4) => N182, DIFF(3) => N181, DIFF(2) 
                           => N180, DIFF(1) => N179, DIFF(0) => n_1106, CO => 
                           n_1107);
   mult_114 : send_ppm_DW02_mult_0 port map( A(7) => sig_reg_storage_7_port, 
                           A(6) => sig_reg_storage_6_port, A(5) => 
                           sig_reg_storage_5_port, A(4) => 
                           sig_reg_storage_4_port, A(3) => 
                           sig_reg_storage_3_port, A(2) => 
                           sig_reg_storage_2_port, A(1) => 
                           sig_reg_storage_1_port, A(0) => 
                           sig_reg_storage_0_port, B(6) => n331, B(5) => n331, 
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n331, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N263, 
                           PRODUCT(13) => N264, PRODUCT(12) => N265, 
                           PRODUCT(11) => N266, PRODUCT(10) => N267, PRODUCT(9)
                           => N268, PRODUCT(8) => N269, PRODUCT(7) => N270, 
                           PRODUCT(6) => N271, PRODUCT(5) => N272, PRODUCT(4) 
                           => N273, PRODUCT(3) => N274, PRODUCT(2) => N275, 
                           PRODUCT(1) => N276, PRODUCT(0) => n_1108);
   mult_117 : send_ppm_DW02_mult_1 port map( A(7) => sig_reg_storage_15_port, 
                           A(6) => sig_reg_storage_14_port, A(5) => 
                           sig_reg_storage_13_port, A(4) => 
                           sig_reg_storage_12_port, A(3) => 
                           sig_reg_storage_11_port, A(2) => 
                           sig_reg_storage_10_port, A(1) => 
                           sig_reg_storage_9_port, A(0) => 
                           sig_reg_storage_8_port, B(6) => n331, B(5) => n331, 
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n331, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N248, 
                           PRODUCT(13) => N249, PRODUCT(12) => N250, 
                           PRODUCT(11) => N251, PRODUCT(10) => N252, PRODUCT(9)
                           => N253, PRODUCT(8) => N254, PRODUCT(7) => N255, 
                           PRODUCT(6) => N256, PRODUCT(5) => N257, PRODUCT(4) 
                           => N258, PRODUCT(3) => N259, PRODUCT(2) => N260, 
                           PRODUCT(1) => N261, PRODUCT(0) => n_1109);
   mult_120 : send_ppm_DW02_mult_2 port map( A(7) => sig_reg_storage_23_port, 
                           A(6) => sig_reg_storage_22_port, A(5) => 
                           sig_reg_storage_21_port, A(4) => 
                           sig_reg_storage_20_port, A(3) => 
                           sig_reg_storage_19_port, A(2) => 
                           sig_reg_storage_18_port, A(1) => 
                           sig_reg_storage_17_port, A(0) => 
                           sig_reg_storage_16_port, B(6) => n331, B(5) => n331,
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n331, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N233, 
                           PRODUCT(13) => N234, PRODUCT(12) => N235, 
                           PRODUCT(11) => N236, PRODUCT(10) => N237, PRODUCT(9)
                           => N238, PRODUCT(8) => N239, PRODUCT(7) => N240, 
                           PRODUCT(6) => N241, PRODUCT(5) => N242, PRODUCT(4) 
                           => N243, PRODUCT(3) => N244, PRODUCT(2) => N245, 
                           PRODUCT(1) => N246, PRODUCT(0) => n_1110);
   mult_123 : send_ppm_DW02_mult_3 port map( A(7) => sig_reg_storage_31_port, 
                           A(6) => sig_reg_storage_30_port, A(5) => 
                           sig_reg_storage_29_port, A(4) => 
                           sig_reg_storage_28_port, A(3) => 
                           sig_reg_storage_27_port, A(2) => 
                           sig_reg_storage_26_port, A(1) => 
                           sig_reg_storage_25_port, A(0) => 
                           sig_reg_storage_24_port, B(6) => n331, B(5) => n331,
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n331, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N218, 
                           PRODUCT(13) => N219, PRODUCT(12) => N220, 
                           PRODUCT(11) => N221, PRODUCT(10) => N222, PRODUCT(9)
                           => N223, PRODUCT(8) => N224, PRODUCT(7) => N225, 
                           PRODUCT(6) => N226, PRODUCT(5) => N227, PRODUCT(4) 
                           => N228, PRODUCT(3) => N229, PRODUCT(2) => N230, 
                           PRODUCT(1) => N231, PRODUCT(0) => n_1111);
   add_2_root_sub_0_root_sub_235_cf_U1_2 : ADD32 port map( A => 
                           sig_cyclesTrame4_2_port, B => 
                           sig_cyclesTrame3_2_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_2_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_3_port, S => 
                           N18);
   add_2_root_sub_0_root_sub_235_cf_U1_3 : ADD32 port map( A => 
                           sig_cyclesTrame4_3_port, B => 
                           sig_cyclesTrame3_3_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_3_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_4_port, S => 
                           N19);
   add_2_root_sub_0_root_sub_235_cf_U1_4 : ADD32 port map( A => 
                           sig_cyclesTrame4_4_port, B => 
                           sig_cyclesTrame3_4_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_4_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_5_port, S => 
                           N20);
   add_2_root_sub_0_root_sub_235_cf_U1_5 : ADD32 port map( A => 
                           sig_cyclesTrame4_5_port, B => 
                           sig_cyclesTrame3_5_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_5_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_6_port, S => 
                           N21);
   add_2_root_sub_0_root_sub_235_cf_U1_6 : ADD32 port map( A => 
                           sig_cyclesTrame4_6_port, B => 
                           sig_cyclesTrame3_6_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_6_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_7_port, S => 
                           N22);
   add_2_root_sub_0_root_sub_235_cf_U1_7 : ADD32 port map( A => 
                           sig_cyclesTrame4_7_port, B => 
                           sig_cyclesTrame3_7_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_7_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_8_port, S => 
                           N23);
   add_2_root_sub_0_root_sub_235_cf_U1_8 : ADD32 port map( A => 
                           sig_cyclesTrame4_8_port, B => 
                           sig_cyclesTrame3_8_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_8_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_9_port, S => 
                           N24);
   add_2_root_sub_0_root_sub_235_cf_U1_9 : ADD32 port map( A => 
                           sig_cyclesTrame4_9_port, B => 
                           sig_cyclesTrame3_9_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_9_port, CO =>
                           add_2_root_sub_0_root_sub_235_cf_carry_10_port, S =>
                           N25);
   add_2_root_sub_0_root_sub_235_cf_U1_10 : ADD32 port map( A => 
                           sig_cyclesTrame4_10_port, B => 
                           sig_cyclesTrame3_10_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_10_port, CO 
                           => add_2_root_sub_0_root_sub_235_cf_carry_11_port, S
                           => N26);
   add_2_root_sub_0_root_sub_235_cf_U1_11 : ADD32 port map( A => 
                           sig_cyclesTrame4_11_port, B => 
                           sig_cyclesTrame3_11_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_11_port, CO 
                           => add_2_root_sub_0_root_sub_235_cf_carry_12_port, S
                           => N27);
   add_2_root_sub_0_root_sub_235_cf_U1_12 : ADD32 port map( A => 
                           sig_cyclesTrame4_12_port, B => 
                           sig_cyclesTrame3_12_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_12_port, CO 
                           => add_2_root_sub_0_root_sub_235_cf_carry_13_port, S
                           => N28);
   add_2_root_sub_0_root_sub_235_cf_U1_13 : ADD32 port map( A => 
                           sig_cyclesTrame4_13_port, B => 
                           sig_cyclesTrame3_13_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_13_port, CO 
                           => add_2_root_sub_0_root_sub_235_cf_carry_14_port, S
                           => N29);
   add_2_root_sub_0_root_sub_235_cf_U1_14 : ADD32 port map( A => 
                           sig_cyclesTrame4_14_port, B => 
                           sig_cyclesTrame3_14_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_14_port, CO 
                           => add_2_root_sub_0_root_sub_235_cf_carry_15_port, S
                           => N30);
   add_2_root_sub_0_root_sub_235_cf_U1_15 : ADD32 port map( A => 
                           sig_cyclesTrame4_15_port, B => 
                           sig_cyclesTrame3_15_port, CI => 
                           add_2_root_sub_0_root_sub_235_cf_carry_15_port, CO 
                           => N32, S => N31);
   sig_reg_storage_reg_14_inst : DFE1 port map( D => i_reg(14), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_14_port, QN => 
                           n_1112);
   sig_reg_storage_reg_30_inst : DFE1 port map( D => i_reg(30), E => n20_port, 
                           C => i_clk, Q => sig_reg_storage_30_port, QN => 
                           n_1113);
   sig_reg_storage_reg_22_inst : DFE1 port map( D => i_reg(22), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_22_port, QN => 
                           n_1114);
   sig_reg_storage_reg_13_inst : DFE1 port map( D => i_reg(13), E => n17_port, 
                           C => i_clk, Q => sig_reg_storage_13_port, QN => 
                           n_1115);
   sig_reg_storage_reg_6_inst : DFE1 port map( D => i_reg(6), E => n16, C => 
                           i_clk, Q => sig_reg_storage_6_port, QN => n_1116);
   sig_reg_storage_reg_29_inst : DFE1 port map( D => i_reg(29), E => n20_port, 
                           C => i_clk, Q => sig_reg_storage_29_port, QN => 
                           n_1117);
   sig_reg_storage_reg_21_inst : DFE1 port map( D => i_reg(21), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_21_port, QN => 
                           n_1118);
   sig_reg_storage_reg_5_inst : DFE1 port map( D => i_reg(5), E => n16, C => 
                           i_clk, Q => sig_reg_storage_5_port, QN => n_1119);
   sig_reg_storage_reg_12_inst : DFE1 port map( D => i_reg(12), E => n17_port, 
                           C => i_clk, Q => sig_reg_storage_12_port, QN => 
                           n_1120);
   sig_reg_storage_reg_11_inst : DFE1 port map( D => i_reg(11), E => n17_port, 
                           C => i_clk, Q => sig_reg_storage_11_port, QN => 
                           n_1121);
   sig_reg_storage_reg_28_inst : DFE1 port map( D => i_reg(28), E => n20_port, 
                           C => i_clk, Q => sig_reg_storage_28_port, QN => 
                           n_1122);
   sig_reg_storage_reg_20_inst : DFE1 port map( D => i_reg(20), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_20_port, QN => 
                           n_1123);
   sig_reg_storage_reg_4_inst : DFE1 port map( D => i_reg(4), E => n16, C => 
                           i_clk, Q => sig_reg_storage_4_port, QN => n_1124);
   sig_reg_storage_reg_27_inst : DFE1 port map( D => i_reg(27), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_27_port, QN => 
                           n_1125);
   sig_reg_storage_reg_19_inst : DFE1 port map( D => i_reg(19), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_19_port, QN => 
                           n_1126);
   sig_reg_storage_reg_10_inst : DFE1 port map( D => i_reg(10), E => n17_port, 
                           C => i_clk, Q => sig_reg_storage_10_port, QN => 
                           n_1127);
   sig_reg_storage_reg_3_inst : DFE1 port map( D => i_reg(3), E => n16, C => 
                           i_clk, Q => sig_reg_storage_3_port, QN => n_1128);
   sig_reg_storage_reg_26_inst : DFE1 port map( D => i_reg(26), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_26_port, QN => 
                           n_1129);
   sig_reg_storage_reg_18_inst : DFE1 port map( D => i_reg(18), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_18_port, QN => 
                           n_1130);
   sig_reg_storage_reg_2_inst : DFE1 port map( D => i_reg(2), E => n16, C => 
                           i_clk, Q => sig_reg_storage_2_port, QN => n_1131);
   sig_reg_storage_reg_9_inst : DFE1 port map( D => i_reg(9), E => n17_port, C 
                           => i_clk, Q => sig_reg_storage_9_port, QN => n_1132)
                           ;
   sig_reg_storage_reg_25_inst : DFE1 port map( D => i_reg(25), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_25_port, QN => 
                           n_1133);
   sig_reg_storage_reg_17_inst : DFE1 port map( D => i_reg(17), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_17_port, QN => 
                           n_1134);
   sig_reg_storage_reg_1_inst : DFE1 port map( D => i_reg(1), E => n16, C => 
                           i_clk, Q => sig_reg_storage_1_port, QN => n_1135);
   sig_reg_storage_reg_8_inst : DFE1 port map( D => i_reg(8), E => n17_port, C 
                           => i_clk, Q => sig_reg_storage_8_port, QN => n_1136)
                           ;
   sig_reg_storage_reg_0_inst : DFE1 port map( D => i_reg(0), E => n16, C => 
                           i_clk, Q => sig_reg_storage_0_port, QN => n_1137);
   sig_reg_storage_reg_24_inst : DFE1 port map( D => i_reg(24), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_24_port, QN => 
                           n_1138);
   sig_reg_storage_reg_16_inst : DFE1 port map( D => i_reg(16), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_16_port, QN => 
                           n_1139);
   sig_reg_storage_reg_31_inst : DFE1 port map( D => i_reg(31), E => n20_port, 
                           C => i_clk, Q => sig_reg_storage_31_port, QN => 
                           n_1140);
   sig_reg_storage_reg_23_inst : DFE1 port map( D => i_reg(23), E => n19_port, 
                           C => i_clk, Q => sig_reg_storage_23_port, QN => 
                           n_1141);
   sig_reg_storage_reg_15_inst : DFE1 port map( D => i_reg(15), E => n18_port, 
                           C => i_clk, Q => sig_reg_storage_15_port, QN => 
                           n_1142);
   sig_reg_storage_reg_7_inst : DFE1 port map( D => i_reg(7), E => n17_port, C 
                           => i_clk, Q => sig_reg_storage_7_port, QN => n_1143)
                           ;
   U3 : XNR21 port map( A => N268, B => sub_114_cf_carry_9_port, Q => n1);
   U4 : XNR21 port map( A => N265, B => sub_114_cf_carry_12_port, Q => n2);
   U5 : XOR21 port map( A => sub_114_cf_carry_14_port, B => N263, Q => n3);
   U7 : XOR21 port map( A => sub_114_cf_carry_6_port, B => N271, Q => n4);
   U8 : XNR21 port map( A => N269, B => sub_114_cf_carry_8_port, Q => n5);
   U9 : XOR21 port map( A => sub_114_cf_carry_4_port, B => N273, Q => n6);
   U10 : XNR21 port map( A => N266, B => sub_114_cf_carry_11_port, Q => n7);
   U11 : XNR21 port map( A => N270, B => sub_114_cf_carry_7_port, Q => n8);
   U12 : XOR21 port map( A => sub_114_cf_carry_3_port, B => N274, Q => n9);
   U14 : XNR21 port map( A => N264, B => sub_114_cf_carry_13_port, Q => n10);
   U15 : XOR21 port map( A => sub_114_cf_carry_10_port, B => N267, Q => n11);
   U17 : XNR21 port map( A => N272, B => sub_114_cf_carry_5_port, Q => n12);
   U18 : NAND22 port map( A => n26_port, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port, Q =>
                           n24_port);
   U19 : INV3 port map( A => sig_cyclesTrame2_12_port, Q => n197_port);
   U20 : INV3 port map( A => sig_cyclesTrame3_12_port, Q => n239_port);
   U21 : INV3 port map( A => sig_cyclesTrame4_12_port, Q => n280_port);
   U22 : INV3 port map( A => sig_cyclesTrame2_13_port, Q => n198_port);
   U23 : INV3 port map( A => sig_cyclesTrame3_13_port, Q => n240_port);
   U24 : INV3 port map( A => sig_cyclesTrame4_13_port, Q => n281_port);
   U25 : INV3 port map( A => sig_cyclesTrame2_11_port, Q => n196_port);
   U26 : INV3 port map( A => sig_cyclesTrame3_11_port, Q => n238_port);
   U27 : INV3 port map( A => sig_cyclesTrame4_11_port, Q => n279);
   U28 : INV3 port map( A => sig_cyclesTrame2_10_port, Q => n195_port);
   U29 : INV3 port map( A => sig_cyclesTrame4_10_port, Q => n278);
   U30 : INV3 port map( A => sig_cyclesTrame3_10_port, Q => n237_port);
   U31 : INV3 port map( A => sig_cyclesTrame2_9_port, Q => n194_port);
   U32 : INV3 port map( A => sig_cyclesTrame3_9_port, Q => n236_port);
   U33 : INV3 port map( A => sig_cyclesTrame4_9_port, Q => n277);
   U34 : INV3 port map( A => N198, Q => n320);
   U35 : INV3 port map( A => sig_cyclesTrame2_14_port, Q => n199);
   U36 : INV3 port map( A => sig_cyclesTrame4_14_port, Q => n282_port);
   U37 : INV3 port map( A => sig_cyclesTrame3_14_port, Q => n241_port);
   U38 : INV3 port map( A => sig_cyclesTrame2_8_port, Q => n193_port);
   U40 : INV3 port map( A => sig_cyclesTrame4_8_port, Q => n276_port);
   U41 : INV3 port map( A => sig_cyclesTrame3_8_port, Q => n235_port);
   U42 : INV3 port map( A => sig_cyclesTrame2_7_port, Q => n192_port);
   U43 : INV3 port map( A => sig_cyclesTrame3_7_port, Q => n234_port);
   U44 : INV3 port map( A => sig_cyclesTrame2_6_port, Q => n191_port);
   U45 : INV3 port map( A => sig_cyclesTrame3_6_port, Q => n233_port);
   U46 : INV3 port map( A => sig_cyclesTrame4_7_port, Q => n275_port);
   U47 : INV3 port map( A => sig_cyclesTrame4_6_port, Q => n274_port);
   U48 : INV3 port map( A => sig_cyclesTrame2_5_port, Q => n190_port);
   U49 : INV3 port map( A => sig_cyclesTrame4_5_port, Q => n273_port);
   U50 : INV3 port map( A => sig_cyclesTrame3_5_port, Q => n232);
   U51 : BUF2 port map( A => n330, Q => n16);
   U52 : BUF2 port map( A => n330, Q => n17_port);
   U53 : BUF2 port map( A => n330, Q => n18_port);
   U54 : BUF2 port map( A => n330, Q => n19_port);
   U55 : BUF2 port map( A => n330, Q => n20_port);
   U56 : INV3 port map( A => n299, Q => n317);
   U57 : INV3 port map( A => sig_cyclesTrame1_2_port, Q => n130);
   U58 : INV3 port map( A => N57_port, Q => n129);
   U59 : INV3 port map( A => n213, Q => n243_port);
   U60 : INV3 port map( A => n142, Q => n159);
   U61 : INV3 port map( A => n138, Q => n157);
   U62 : INV3 port map( A => n171, Q => n201);
   U63 : INV3 port map( A => n255_port, Q => n284_port);
   U64 : INV3 port map( A => n15, Q => n227_port);
   U65 : INV3 port map( A => sig_cyclesTrame2_4_port, Q => n188_port);
   U66 : INV3 port map( A => sig_cyclesTrame3_4_port, Q => n230_port);
   U67 : INV3 port map( A => sig_cyclesTrame2_3_port, Q => n187_port);
   U68 : INV3 port map( A => sig_cyclesTrame4_4_port, Q => n271_port);
   U69 : INV3 port map( A => sig_cyclesTrame3_3_port, Q => n229_port);
   U70 : INV3 port map( A => sig_cyclesTrame4_3_port, Q => n270_port);
   U71 : INV1 port map( A => sig_cyclesTrame2_2_port, Q => n186_port);
   U72 : INV1 port map( A => sig_cyclesTrame4_2_port, Q => n269_port);
   U73 : INV2 port map( A => sig_cyclesTrame3_2_port, Q => n228_port);
   U74 : NAND22 port map( A => n315, B => N179, Q => n305);
   U75 : INV3 port map( A => n14, Q => n156_port);
   U76 : NOR31 port map( A => n71, B => n72, C => n70, Q => n69);
   U77 : INV3 port map( A => n71, Q => n323);
   U78 : INV3 port map( A => n72, Q => n326);
   U79 : INV3 port map( A => n76, Q => n327);
   U80 : INV3 port map( A => n60, Q => n330);
   U81 : INV3 port map( A => n70, Q => n328);
   U82 : INV3 port map( A => n73, Q => n319);
   U83 : OAI2111 port map( A => n323, B => n70, C => n74, D => n75, Q => n73);
   U84 : NAND31 port map( A => n63, B => n53, C => i_reset_n, Q => n75);
   U85 : NAND31 port map( A => n76, B => n320, C => i_reset_n, Q => n74);
   U86 : NAND22 port map( A => sig_state_0_port, B => n58, Q => n65);
   U87 : INV3 port map( A => n69, Q => n324);
   U88 : INV3 port map( A => n66, Q => n318);
   U89 : NAND41 port map( A => n69, B => sig_state_1_port, C => 
                           sig_state_0_port, D => n57, Q => n68);
   U90 : AOI211 port map( A => n328, B => n58, C => n66, Q => n67);
   U91 : OAI2111 port map( A => n327, B => n320, C => n60, D => n61, Q => 
                           sig_in_init);
   U92 : AOI221 port map( A => n323, B => n62, C => n63, D => n64, Q => n61);
   U93 : INV3 port map( A => n77, Q => n321);
   U94 : NAND31 port map( A => i_reset_n, B => n76, C => N198, Q => n77);
   U95 : OAI2110 port map( A => N198, B => n327, C => n78, D => i_reset_n, Q =>
                           N82);
   U96 : NAND31 port map( A => n72, B => n323, C => n79, Q => n78);
   U97 : INV3 port map( A => N276, Q => N57_port);
   U98 : INV3 port map( A => n164, Q => n200);
   U99 : INV3 port map( A => n206, Q => n242_port);
   U100 : INV3 port map( A => n135, Q => n158);
   U101 : INV3 port map( A => n248_port, Q => n283_port);
   U102 : NOR21 port map( A => n93, B => n58, Q => n92);
   U103 : AOI221 port map( A => N156, B => n59, C => N163, D => 
                           sig_state_0_port, Q => n93);
   U104 : INV3 port map( A => N169, Q => n322);
   U105 : AOI311 port map( A => N148, B => n58, C => sig_state_0_port, D => n92
                           , Q => n91);
   U106 : OAI2111 port map( A => n64, B => n80, C => n81_port, D => i_reset_n, 
                           Q => N81);
   U107 : NAND22 port map( A => n63, B => n53, Q => n80);
   U108 : NAND31 port map( A => n323, B => n326, C => n79, Q => n81_port);
   U109 : INV3 port map( A => N246, Q => sig_cyclesTrame3_1_port);
   U110 : INV3 port map( A => N231, Q => sig_cyclesTrame4_1_port);
   U111 : INV3 port map( A => N261, Q => sig_cyclesTrame2_1_port);
   U112 : INV3 port map( A => n167, Q => n189_port);
   U113 : INV3 port map( A => n13, Q => n185_port);
   U114 : INV3 port map( A => n209, Q => n231_port);
   U115 : INV3 port map( A => n251_port, Q => n272_port);
   U116 : INV3 port map( A => n300, Q => n316);
   U117 : INV3 port map( A => sig_out_local_count_0_port, Q => n314);
   U118 : BUF2 port map( A => sig_out_local_count_2_port, Q => n13);
   U119 : BUF2 port map( A => sig_out_local_count_16_port, Q => n14);
   U120 : BUF2 port map( A => sig_out_local_count_17_port, Q => n15);
   U121 : INV3 port map( A => sig_out_local_count_1_port, Q => n315);
   U122 : NAND41 port map( A => n82_port, B => n83, C => n84, D => n85, Q => 
                           n71);
   U123 : NOR21 port map( A => n14, B => sig_out_local_count_15_port, Q => 
                           n82_port);
   U124 : NOR31 port map( A => n15, B => sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n83);
   U125 : NOR40 port map( A => sig_out_local_count_5_port, B => n325, C => 
                           sig_out_local_count_4_port, D => n13, Q => n84);
   U126 : NOR31 port map( A => sig_state_0_port, B => sig_state_1_port, C => 
                           n57, Q => n72);
   U127 : NOR31 port map( A => n86, B => n87, C => n88, Q => n85);
   U128 : NAND22 port map( A => sig_out_local_count_8_port, B => 
                           sig_out_local_count_6_port, Q => n88);
   U129 : NAND31 port map( A => sig_out_local_count_1_port, B => 
                           sig_out_local_count_12_port, C => 
                           sig_out_local_count_3_port, Q => n87);
   U130 : NAND41 port map( A => sig_out_local_count_11_port, B => 
                           sig_out_local_count_10_port, C => n89, D => 
                           sig_out_local_count_0_port, Q => n86);
   U131 : INV3 port map( A => n90, Q => n325);
   U132 : NOR21 port map( A => sig_out_local_count_9_port, B => 
                           sig_out_local_count_7_port, Q => n90);
   U133 : NOR21 port map( A => sig_out_local_count_14_port, B => 
                           sig_out_local_count_13_port, Q => n89);
   U134 : NOR31 port map( A => current_state_0_port, B => current_state_2_port,
                           C => n53, Q => n76);
   U135 : AOI221 port map( A => n63, B => current_state_1_port, C => n62, D => 
                           current_state_2_port, Q => n60);
   U136 : NAND22 port map( A => i_reset_n, B => n79, Q => n70);
   U137 : NOR21 port map( A => n55, B => current_state_2_port, Q => n63);
   U138 : NOR21 port map( A => current_state_0_port, B => current_state_1_port,
                           Q => n62);
   U139 : NOR21 port map( A => n329, B => current_state_2_port, Q => n79);
   U140 : INV3 port map( A => n62, Q => n329);
   U141 : LOGIC1 port map( Q => n331);
   U142 : LOGIC0 port map( Q => sig_cyclesTrame2_27);
   U143 : NOR20 port map( A => sub_120_cf_carry_14_port, B => N233, Q => 
                           n21_port);
   U144 : XNR20 port map( A => sub_120_cf_carry_14_port, B => N233, Q => 
                           sig_cyclesTrame3_14_port);
   U145 : CLKIN0 port map( A => n21_port, Q => sig_cyclesTrame3_15_port);
   U146 : NOR20 port map( A => sub_123_cf_carry_14_port, B => N218, Q => 
                           n22_port);
   U147 : XNR20 port map( A => sub_123_cf_carry_14_port, B => N218, Q => 
                           sig_cyclesTrame4_14_port);
   U148 : CLKIN0 port map( A => n22_port, Q => sig_cyclesTrame4_15_port);
   U149 : NOR20 port map( A => sub_117_cf_carry_14_port, B => N248, Q => 
                           n23_port);
   U150 : XNR20 port map( A => sub_117_cf_carry_14_port, B => N248, Q => 
                           sig_cyclesTrame2_14_port);
   U151 : CLKIN0 port map( A => n23_port, Q => sig_cyclesTrame2_15_port);
   U152 : XOR20 port map( A => n26_port, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port, Q =>
                           N71_port);
   U153 : CLKIN0 port map( A => n24_port, Q => N75_port);
   U154 : NAND20 port map( A => n3, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port, Q =>
                           n25_port);
   U155 : XOR20 port map( A => n3, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port, Q =>
                           N70_port);
   U156 : CLKIN0 port map( A => n25_port, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port);
   U157 : NOR20 port map( A => sub_114_cf_carry_14_port, B => N263, Q => 
                           n26_port);
   U158 : NAND20 port map( A => N234, B => sub_120_cf_carry_13_port, Q => 
                           n27_port);
   U159 : XOR20 port map( A => N234, B => sub_120_cf_carry_13_port, Q => 
                           sig_cyclesTrame3_13_port);
   U160 : CLKIN0 port map( A => n27_port, Q => sub_120_cf_carry_14_port);
   U161 : NAND20 port map( A => N235, B => sub_120_cf_carry_12_port, Q => 
                           n28_port);
   U162 : XOR20 port map( A => N235, B => sub_120_cf_carry_12_port, Q => 
                           sig_cyclesTrame3_12_port);
   U163 : CLKIN0 port map( A => n28_port, Q => sub_120_cf_carry_13_port);
   U164 : NAND20 port map( A => N219, B => sub_123_cf_carry_13_port, Q => 
                           n29_port);
   U165 : XOR20 port map( A => N219, B => sub_123_cf_carry_13_port, Q => 
                           sig_cyclesTrame4_13_port);
   U166 : CLKIN0 port map( A => n29_port, Q => sub_123_cf_carry_14_port);
   U167 : NAND20 port map( A => N220, B => sub_123_cf_carry_12_port, Q => 
                           n30_port);
   U168 : XOR20 port map( A => N220, B => sub_123_cf_carry_12_port, Q => 
                           sig_cyclesTrame4_12_port);
   U169 : CLKIN0 port map( A => n30_port, Q => sub_123_cf_carry_13_port);
   U170 : NAND20 port map( A => N249, B => sub_117_cf_carry_13_port, Q => 
                           n31_port);
   U171 : XOR20 port map( A => N249, B => sub_117_cf_carry_13_port, Q => 
                           sig_cyclesTrame2_13_port);
   U172 : CLKIN0 port map( A => n31_port, Q => sub_117_cf_carry_14_port);
   U173 : NAND20 port map( A => N250, B => sub_117_cf_carry_12_port, Q => 
                           n32_port);
   U174 : XOR20 port map( A => N250, B => sub_117_cf_carry_12_port, Q => 
                           sig_cyclesTrame2_12_port);
   U175 : CLKIN0 port map( A => n32_port, Q => sub_117_cf_carry_13_port);
   U176 : NAND20 port map( A => n10, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port, Q =>
                           n33);
   U177 : XOR20 port map( A => n10, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port, Q =>
                           N69_port);
   U178 : CLKIN0 port map( A => n33, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port);
   U179 : NAND20 port map( A => n2, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port, Q =>
                           n34);
   U180 : XOR20 port map( A => n2, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port, Q =>
                           N68_port);
   U181 : CLKIN0 port map( A => n34, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port);
   U182 : NAND20 port map( A => N264, B => sub_114_cf_carry_13_port, Q => n35);
   U183 : CLKIN0 port map( A => n35, Q => sub_114_cf_carry_14_port);
   U184 : NAND20 port map( A => N265, B => sub_114_cf_carry_12_port, Q => n36);
   U185 : CLKIN0 port map( A => n36, Q => sub_114_cf_carry_13_port);
   U186 : NAND20 port map( A => N236, B => sub_120_cf_carry_11_port, Q => n37);
   U187 : XOR20 port map( A => N236, B => sub_120_cf_carry_11_port, Q => 
                           sig_cyclesTrame3_11_port);
   U188 : CLKIN0 port map( A => n37, Q => sub_120_cf_carry_12_port);
   U189 : NAND20 port map( A => N221, B => sub_123_cf_carry_11_port, Q => n38);
   U190 : XOR20 port map( A => N221, B => sub_123_cf_carry_11_port, Q => 
                           sig_cyclesTrame4_11_port);
   U191 : CLKIN0 port map( A => n38, Q => sub_123_cf_carry_12_port);
   U192 : NAND20 port map( A => N251, B => sub_117_cf_carry_11_port, Q => n39);
   U193 : XOR20 port map( A => N251, B => sub_117_cf_carry_11_port, Q => 
                           sig_cyclesTrame2_11_port);
   U194 : CLKIN0 port map( A => n39, Q => sub_117_cf_carry_12_port);
   U195 : NAND20 port map( A => n7, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port, Q =>
                           n40);
   U196 : XOR20 port map( A => n7, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port, Q =>
                           N67_port);
   U197 : CLKIN0 port map( A => n40, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port);
   U198 : NAND20 port map( A => N266, B => sub_114_cf_carry_11_port, Q => n41);
   U199 : CLKIN0 port map( A => n41, Q => sub_114_cf_carry_12_port);
   U200 : NOR20 port map( A => sig_cyclesTrame4_1_port, B => 
                           sig_cyclesTrame3_1_port, Q => n42);
   U201 : XNR20 port map( A => sig_cyclesTrame4_1_port, B => 
                           sig_cyclesTrame3_1_port, Q => N17);
   U202 : CLKIN0 port map( A => n42, Q => 
                           add_2_root_sub_0_root_sub_235_cf_carry_2_port);
   U203 : NOR20 port map( A => sub_120_cf_carry_10_port, B => N237, Q => n43);
   U204 : XNR20 port map( A => sub_120_cf_carry_10_port, B => N237, Q => 
                           sig_cyclesTrame3_10_port);
   U205 : CLKIN0 port map( A => n43, Q => sub_120_cf_carry_11_port);
   U206 : NAND20 port map( A => N238, B => sub_120_cf_carry_9_port, Q => n44);
   U207 : XOR20 port map( A => N238, B => sub_120_cf_carry_9_port, Q => 
                           sig_cyclesTrame3_9_port);
   U208 : CLKIN0 port map( A => n44, Q => sub_120_cf_carry_10_port);
   U209 : NAND20 port map( A => N239, B => sub_120_cf_carry_8_port, Q => n45);
   U210 : XOR20 port map( A => N239, B => sub_120_cf_carry_8_port, Q => 
                           sig_cyclesTrame3_8_port);
   U211 : CLKIN0 port map( A => n45, Q => sub_120_cf_carry_9_port);
   U212 : NAND20 port map( A => N240, B => sub_120_cf_carry_7_port, Q => n46);
   U213 : XOR20 port map( A => N240, B => sub_120_cf_carry_7_port, Q => 
                           sig_cyclesTrame3_7_port);
   U214 : CLKIN0 port map( A => n46, Q => sub_120_cf_carry_8_port);
   U215 : NOR20 port map( A => sub_120_cf_carry_6_port, B => N241, Q => n47);
   U216 : XNR20 port map( A => sub_120_cf_carry_6_port, B => N241, Q => 
                           sig_cyclesTrame3_6_port);
   U217 : CLKIN0 port map( A => n47, Q => sub_120_cf_carry_7_port);
   U218 : NAND20 port map( A => N242, B => sub_120_cf_carry_5_port, Q => n48);
   U219 : XOR20 port map( A => N242, B => sub_120_cf_carry_5_port, Q => 
                           sig_cyclesTrame3_5_port);
   U220 : CLKIN0 port map( A => n48, Q => sub_120_cf_carry_6_port);
   U221 : NOR20 port map( A => sub_120_cf_carry_4_port, B => N243, Q => n49);
   U222 : XNR20 port map( A => sub_120_cf_carry_4_port, B => N243, Q => 
                           sig_cyclesTrame3_4_port);
   U223 : CLKIN0 port map( A => n49, Q => sub_120_cf_carry_5_port);
   U224 : NOR20 port map( A => sub_120_cf_carry_3_port, B => N244, Q => n50);
   U225 : XNR20 port map( A => sub_120_cf_carry_3_port, B => N244, Q => 
                           sig_cyclesTrame3_3_port);
   U226 : CLKIN0 port map( A => n50, Q => sub_120_cf_carry_4_port);
   U227 : NAND20 port map( A => N245, B => N246, Q => n51);
   U228 : XOR20 port map( A => N245, B => N246, Q => sig_cyclesTrame3_2_port);
   U229 : CLKIN0 port map( A => n51, Q => sub_120_cf_carry_3_port);
   U230 : NOR20 port map( A => sub_123_cf_carry_10_port, B => N222, Q => n52);
   U231 : XNR20 port map( A => sub_123_cf_carry_10_port, B => N222, Q => 
                           sig_cyclesTrame4_10_port);
   U232 : CLKIN0 port map( A => n52, Q => sub_123_cf_carry_11_port);
   U233 : NAND20 port map( A => N223, B => sub_123_cf_carry_9_port, Q => n54);
   U234 : XOR20 port map( A => N223, B => sub_123_cf_carry_9_port, Q => 
                           sig_cyclesTrame4_9_port);
   U235 : CLKIN0 port map( A => n54, Q => sub_123_cf_carry_10_port);
   U236 : NAND20 port map( A => N224, B => sub_123_cf_carry_8_port, Q => n56);
   U237 : XOR20 port map( A => N224, B => sub_123_cf_carry_8_port, Q => 
                           sig_cyclesTrame4_8_port);
   U238 : CLKIN0 port map( A => n56, Q => sub_123_cf_carry_9_port);
   U239 : NAND20 port map( A => N225, B => sub_123_cf_carry_7_port, Q => n96);
   U240 : XOR20 port map( A => N225, B => sub_123_cf_carry_7_port, Q => 
                           sig_cyclesTrame4_7_port);
   U241 : CLKIN0 port map( A => n96, Q => sub_123_cf_carry_8_port);
   U242 : NOR20 port map( A => sub_123_cf_carry_6_port, B => N226, Q => n97);
   U243 : XNR20 port map( A => sub_123_cf_carry_6_port, B => N226, Q => 
                           sig_cyclesTrame4_6_port);
   U244 : CLKIN0 port map( A => n97, Q => sub_123_cf_carry_7_port);
   U245 : NAND20 port map( A => N227, B => sub_123_cf_carry_5_port, Q => n98);
   U246 : XOR20 port map( A => N227, B => sub_123_cf_carry_5_port, Q => 
                           sig_cyclesTrame4_5_port);
   U247 : CLKIN0 port map( A => n98, Q => sub_123_cf_carry_6_port);
   U248 : NOR20 port map( A => sub_123_cf_carry_4_port, B => N228, Q => n99);
   U249 : XNR20 port map( A => sub_123_cf_carry_4_port, B => N228, Q => 
                           sig_cyclesTrame4_4_port);
   U250 : CLKIN0 port map( A => n99, Q => sub_123_cf_carry_5_port);
   U251 : NOR20 port map( A => sub_123_cf_carry_3_port, B => N229, Q => n100);
   U252 : XNR20 port map( A => sub_123_cf_carry_3_port, B => N229, Q => 
                           sig_cyclesTrame4_3_port);
   U253 : CLKIN0 port map( A => n100, Q => sub_123_cf_carry_4_port);
   U254 : NAND20 port map( A => N230, B => N231, Q => n101);
   U255 : XOR20 port map( A => N230, B => N231, Q => sig_cyclesTrame4_2_port);
   U256 : CLKIN0 port map( A => n101, Q => sub_123_cf_carry_3_port);
   U257 : NOR20 port map( A => sub_117_cf_carry_10_port, B => N252, Q => n102);
   U258 : XNR20 port map( A => sub_117_cf_carry_10_port, B => N252, Q => 
                           sig_cyclesTrame2_10_port);
   U259 : CLKIN0 port map( A => n102, Q => sub_117_cf_carry_11_port);
   U260 : NAND20 port map( A => N253, B => sub_117_cf_carry_9_port, Q => n103);
   U261 : XOR20 port map( A => N253, B => sub_117_cf_carry_9_port, Q => 
                           sig_cyclesTrame2_9_port);
   U262 : CLKIN0 port map( A => n103, Q => sub_117_cf_carry_10_port);
   U263 : NAND20 port map( A => N254, B => sub_117_cf_carry_8_port, Q => n104);
   U264 : XOR20 port map( A => N254, B => sub_117_cf_carry_8_port, Q => 
                           sig_cyclesTrame2_8_port);
   U265 : CLKIN0 port map( A => n104, Q => sub_117_cf_carry_9_port);
   U266 : NAND20 port map( A => N255, B => sub_117_cf_carry_7_port, Q => n105);
   U267 : XOR20 port map( A => N255, B => sub_117_cf_carry_7_port, Q => 
                           sig_cyclesTrame2_7_port);
   U268 : CLKIN0 port map( A => n105, Q => sub_117_cf_carry_8_port);
   U269 : NOR20 port map( A => sub_117_cf_carry_6_port, B => N256, Q => n106);
   U270 : XNR20 port map( A => sub_117_cf_carry_6_port, B => N256, Q => 
                           sig_cyclesTrame2_6_port);
   U271 : CLKIN0 port map( A => n106, Q => sub_117_cf_carry_7_port);
   U272 : NAND20 port map( A => N257, B => sub_117_cf_carry_5_port, Q => n107);
   U273 : XOR20 port map( A => N257, B => sub_117_cf_carry_5_port, Q => 
                           sig_cyclesTrame2_5_port);
   U274 : CLKIN0 port map( A => n107, Q => sub_117_cf_carry_6_port);
   U275 : NOR20 port map( A => sub_117_cf_carry_4_port, B => N258, Q => n108);
   U276 : XNR20 port map( A => sub_117_cf_carry_4_port, B => N258, Q => 
                           sig_cyclesTrame2_4_port);
   U277 : CLKIN0 port map( A => n108, Q => sub_117_cf_carry_5_port);
   U278 : NOR20 port map( A => sub_117_cf_carry_3_port, B => N259, Q => n109);
   U279 : XNR20 port map( A => sub_117_cf_carry_3_port, B => N259, Q => 
                           sig_cyclesTrame2_3_port);
   U280 : CLKIN0 port map( A => n109, Q => sub_117_cf_carry_4_port);
   U281 : NAND20 port map( A => N260, B => N261, Q => n110);
   U282 : XOR20 port map( A => N260, B => N261, Q => sig_cyclesTrame2_2_port);
   U283 : CLKIN0 port map( A => n110, Q => sub_117_cf_carry_3_port);
   U284 : NAND20 port map( A => n11, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port, Q =>
                           n111);
   U285 : XOR20 port map( A => n11, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port, Q =>
                           N66_port);
   U286 : CLKIN0 port map( A => n111, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port);
   U287 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_9_port, B
                           => n1, Q => n112);
   U288 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_9_port, B
                           => n1, Q => N65_port);
   U289 : CLKIN0 port map( A => n112, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port);
   U290 : NAND20 port map( A => n5, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port, Q => 
                           n113);
   U291 : XOR20 port map( A => n5, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port, Q => 
                           N64_port);
   U292 : CLKIN0 port map( A => n113, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_9_port);
   U293 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_7_port, B
                           => n8, Q => n114);
   U294 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_7_port, B
                           => n8, Q => N63_port);
   U295 : CLKIN0 port map( A => n114, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port);
   U296 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_6_port, B
                           => n4, Q => n115);
   U297 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_6_port, B
                           => n4, Q => N62_port);
   U298 : CLKIN0 port map( A => n115, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_7_port);
   U299 : NAND20 port map( A => n12, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port, Q => 
                           n116);
   U300 : XOR20 port map( A => n12, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port, Q => 
                           N61_port);
   U301 : CLKIN0 port map( A => n116, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_6_port);
   U302 : NAND20 port map( A => n6, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port, Q => 
                           n117);
   U303 : XOR20 port map( A => n6, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port, Q => 
                           N60_port);
   U304 : CLKIN0 port map( A => n117, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port);
   U305 : NAND20 port map( A => n9, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port, Q => 
                           n118);
   U306 : XOR20 port map( A => n9, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port, Q => 
                           N59_port);
   U307 : CLKIN0 port map( A => n118, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port);
   U308 : NAND20 port map( A => n130, B => n129, Q => n119);
   U309 : XOR20 port map( A => n130, B => n129, Q => N58_port);
   U310 : CLKIN0 port map( A => n119, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port);
   U311 : NOR20 port map( A => sub_114_cf_carry_10_port, B => N267, Q => n120);
   U312 : CLKIN0 port map( A => n120, Q => sub_114_cf_carry_11_port);
   U313 : NAND20 port map( A => N268, B => sub_114_cf_carry_9_port, Q => n121);
   U314 : CLKIN0 port map( A => n121, Q => sub_114_cf_carry_10_port);
   U315 : NAND20 port map( A => N269, B => sub_114_cf_carry_8_port, Q => n122);
   U316 : CLKIN0 port map( A => n122, Q => sub_114_cf_carry_9_port);
   U317 : NAND20 port map( A => N270, B => sub_114_cf_carry_7_port, Q => n123);
   U318 : CLKIN0 port map( A => n123, Q => sub_114_cf_carry_8_port);
   U319 : NOR20 port map( A => sub_114_cf_carry_6_port, B => N271, Q => n124);
   U320 : CLKIN0 port map( A => n124, Q => sub_114_cf_carry_7_port);
   U321 : NAND20 port map( A => N272, B => sub_114_cf_carry_5_port, Q => n125);
   U322 : CLKIN0 port map( A => n125, Q => sub_114_cf_carry_6_port);
   U323 : NOR20 port map( A => sub_114_cf_carry_4_port, B => N273, Q => n126);
   U324 : CLKIN0 port map( A => n126, Q => sub_114_cf_carry_5_port);
   U325 : NOR20 port map( A => sub_114_cf_carry_3_port, B => N274, Q => n127);
   U326 : CLKIN0 port map( A => n127, Q => sub_114_cf_carry_4_port);
   U327 : NAND20 port map( A => N275, B => N276, Q => n128);
   U328 : XOR20 port map( A => N275, B => N276, Q => sig_cyclesTrame1_2_port);
   U329 : CLKIN0 port map( A => n128, Q => sub_114_cf_carry_3_port);
   U330 : OAI220 port map( A => n3, B => sig_out_local_count_14_port, C => n10,
                           D => sig_out_local_count_13_port, Q => n134);
   U331 : NOR20 port map( A => n26_port, B => sig_out_local_count_15_port, Q =>
                           n133);
   U332 : OAI220 port map( A => n2, B => sig_out_local_count_12_port, C => n7, 
                           D => sig_out_local_count_11_port, Q => n132);
   U333 : OAI220 port map( A => n11, B => sig_out_local_count_10_port, C => n1,
                           D => sig_out_local_count_9_port, Q => n131);
   U334 : NOR40 port map( A => n134, B => n133, C => n132, D => n131, Q => n135
                           );
   U335 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => n129, D => 
                           sig_out_local_count_0_port, Q => n137);
   U336 : OAI220 port map( A => n6, B => sig_out_local_count_4_port, C => n9, D
                           => sig_out_local_count_3_port, Q => n136);
   U337 : AOI2110 port map( A => n185_port, B => sig_cyclesTrame1_2_port, C => 
                           n137, D => n136, Q => n138);
   U338 : OAI220 port map( A => sig_out_local_count_5_port, B => n12, C => 
                           sig_out_local_count_6_port, D => n4, Q => n140);
   U339 : OAI220 port map( A => sig_out_local_count_7_port, B => n8, C => 
                           sig_out_local_count_8_port, D => n5, Q => n139);
   U340 : NOR40 port map( A => n158, B => n157, C => n140, D => n139, Q => n141
                           );
   U341 : AOI220 port map( A => sig_out_local_count_8_port, B => n5, C => 
                           sig_out_local_count_9_port, D => n1, Q => n146);
   U342 : AOI220 port map( A => sig_out_local_count_6_port, B => n4, C => 
                           sig_out_local_count_7_port, D => n8, Q => n145);
   U343 : AOI220 port map( A => sig_out_local_count_4_port, B => n6, C => 
                           sig_out_local_count_5_port, D => n12, Q => n144);
   U344 : AOI220 port map( A => n13, B => n130, C => sig_out_local_count_3_port
                           , D => n9, Q => n143);
   U345 : NAND40 port map( A => n146, B => n145, C => n144, D => n143, Q => 
                           n152);
   U346 : AOI220 port map( A => sig_out_local_count_14_port, B => n3, C => 
                           sig_out_local_count_15_port, D => n26_port, Q => 
                           n150);
   U347 : AOI220 port map( A => sig_out_local_count_12_port, B => n2, C => 
                           sig_out_local_count_13_port, D => n10, Q => 
                           n148_port);
   U348 : AOI220 port map( A => sig_out_local_count_10_port, B => n11, C => 
                           sig_out_local_count_11_port, D => n7, Q => n147);
   U349 : NAND40 port map( A => n150, B => n149, C => n148_port, D => n147, Q 
                           => n151);
   U350 : OAI210 port map( A => n152, B => n151, C => n156_port, Q => n153);
   U351 : NOR40 port map( A => n155, B => n154, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N148);
   U352 : NOR20 port map( A => n141, B => n14, Q => n142);
   U353 : NOR20 port map( A => n15, B => n159, Q => n155);
   U354 : NAND20 port map( A => sig_out_local_count_1_port, B => n129, Q => 
                           n149);
   U355 : NAND30 port map( A => n227_port, B => n153, C => n156_port, Q => n154
                           );
   U356 : OAI220 port map( A => n199, B => sig_out_local_count_14_port, C => 
                           n198_port, D => sig_out_local_count_13_port, Q => 
                           n163_port);
   U357 : NOR20 port map( A => n23_port, B => sig_out_local_count_15_port, Q =>
                           n162);
   U358 : OAI220 port map( A => n197_port, B => sig_out_local_count_12_port, C 
                           => n196_port, D => sig_out_local_count_11_port, Q =>
                           n161);
   U359 : OAI220 port map( A => n195_port, B => sig_out_local_count_10_port, C 
                           => n194_port, D => sig_out_local_count_9_port, Q => 
                           n160);
   U360 : NOR40 port map( A => n163_port, B => n162, C => n161, D => n160, Q =>
                           n164);
   U361 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N261, D => 
                           sig_out_local_count_0_port, Q => n166);
   U362 : OAI220 port map( A => n188_port, B => sig_out_local_count_4_port, C 
                           => n187_port, D => sig_out_local_count_3_port, Q => 
                           n165);
   U363 : AOI2110 port map( A => n185_port, B => sig_cyclesTrame2_2_port, C => 
                           n166, D => n165, Q => n167);
   U364 : OAI220 port map( A => sig_out_local_count_5_port, B => n190_port, C 
                           => sig_out_local_count_6_port, D => n191_port, Q => 
                           n169_port);
   U365 : OAI220 port map( A => sig_out_local_count_7_port, B => n192_port, C 
                           => sig_out_local_count_8_port, D => n193_port, Q => 
                           n168);
   U366 : NOR40 port map( A => n200, B => n189_port, C => n169_port, D => n168,
                           Q => n170);
   U367 : AOI220 port map( A => sig_out_local_count_8_port, B => n193_port, C 
                           => sig_out_local_count_9_port, D => n194_port, Q => 
                           n175);
   U368 : AOI220 port map( A => sig_out_local_count_6_port, B => n191_port, C 
                           => sig_out_local_count_7_port, D => n192_port, Q => 
                           n174);
   U369 : AOI220 port map( A => sig_out_local_count_4_port, B => n188_port, C 
                           => sig_out_local_count_5_port, D => n190_port, Q => 
                           n173);
   U370 : AOI220 port map( A => n13, B => n186_port, C => 
                           sig_out_local_count_3_port, D => n187_port, Q => 
                           n172);
   U371 : NAND40 port map( A => n175, B => n174, C => n173, D => n172, Q => 
                           n181_port);
   U372 : AOI220 port map( A => sig_out_local_count_14_port, B => n199, C => 
                           sig_out_local_count_15_port, D => n23_port, Q => 
                           n179_port);
   U373 : AOI220 port map( A => sig_out_local_count_12_port, B => n197_port, C 
                           => sig_out_local_count_13_port, D => n198_port, Q =>
                           n177);
   U374 : AOI220 port map( A => sig_out_local_count_10_port, B => n195_port, C 
                           => sig_out_local_count_11_port, D => n196_port, Q =>
                           n176);
   U375 : NAND40 port map( A => n179_port, B => n178, C => n177, D => n176, Q 
                           => n180_port);
   U376 : OAI210 port map( A => n181_port, B => n180_port, C => n156_port, Q =>
                           n182_port);
   U377 : NOR40 port map( A => n184_port, B => n183_port, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N156);
   U378 : NOR20 port map( A => n170, B => n14, Q => n171);
   U379 : NOR20 port map( A => n15, B => n201, Q => n184_port);
   U380 : NAND20 port map( A => sig_out_local_count_1_port, B => N261, Q => 
                           n178);
   U381 : NAND30 port map( A => n227_port, B => n182_port, C => n156_port, Q =>
                           n183_port);
   U382 : OAI220 port map( A => n241_port, B => sig_out_local_count_14_port, C 
                           => n240_port, D => sig_out_local_count_13_port, Q =>
                           n205);
   U383 : NOR20 port map( A => n21_port, B => sig_out_local_count_15_port, Q =>
                           n204);
   U384 : OAI220 port map( A => n239_port, B => sig_out_local_count_12_port, C 
                           => n238_port, D => sig_out_local_count_11_port, Q =>
                           n203);
   U385 : OAI220 port map( A => n237_port, B => sig_out_local_count_10_port, C 
                           => n236_port, D => sig_out_local_count_9_port, Q => 
                           n202);
   U386 : NOR40 port map( A => n205, B => n204, C => n203, D => n202, Q => n206
                           );
   U387 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N246, D => 
                           sig_out_local_count_0_port, Q => n208);
   U388 : OAI220 port map( A => n230_port, B => sig_out_local_count_4_port, C 
                           => n229_port, D => sig_out_local_count_3_port, Q => 
                           n207);
   U389 : AOI2110 port map( A => n185_port, B => sig_cyclesTrame3_2_port, C => 
                           n208, D => n207, Q => n209);
   U390 : OAI220 port map( A => sig_out_local_count_5_port, B => n232, C => 
                           sig_out_local_count_6_port, D => n233_port, Q => 
                           n211);
   U391 : OAI220 port map( A => sig_out_local_count_7_port, B => n234_port, C 
                           => sig_out_local_count_8_port, D => n235_port, Q => 
                           n210);
   U392 : NOR40 port map( A => n242_port, B => n231_port, C => n211, D => n210,
                           Q => n212);
   U393 : AOI220 port map( A => sig_out_local_count_8_port, B => n235_port, C 
                           => sig_out_local_count_9_port, D => n236_port, Q => 
                           n217);
   U394 : AOI220 port map( A => sig_out_local_count_6_port, B => n233_port, C 
                           => sig_out_local_count_7_port, D => n234_port, Q => 
                           n216);
   U395 : AOI220 port map( A => sig_out_local_count_4_port, B => n230_port, C 
                           => sig_out_local_count_5_port, D => n232, Q => n215)
                           ;
   U396 : AOI220 port map( A => n13, B => n228_port, C => 
                           sig_out_local_count_3_port, D => n229_port, Q => 
                           n214);
   U397 : NAND40 port map( A => n217, B => n216, C => n215, D => n214, Q => 
                           n223_port);
   U398 : AOI220 port map( A => sig_out_local_count_14_port, B => n241_port, C 
                           => sig_out_local_count_15_port, D => n21_port, Q => 
                           n221_port);
   U399 : AOI220 port map( A => sig_out_local_count_12_port, B => n239_port, C 
                           => sig_out_local_count_13_port, D => n240_port, Q =>
                           n219_port);
   U400 : AOI220 port map( A => sig_out_local_count_10_port, B => n237_port, C 
                           => sig_out_local_count_11_port, D => n238_port, Q =>
                           n218_port);
   U401 : NAND40 port map( A => n221_port, B => n220_port, C => n219_port, D =>
                           n218_port, Q => n222_port);
   U402 : OAI210 port map( A => n223_port, B => n222_port, C => n156_port, Q =>
                           n224_port);
   U403 : NOR40 port map( A => n226_port, B => n225_port, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N163);
   U404 : NOR20 port map( A => n212, B => n14, Q => n213);
   U405 : NOR20 port map( A => n15, B => n243_port, Q => n226_port);
   U406 : NAND20 port map( A => sig_out_local_count_1_port, B => N246, Q => 
                           n220_port);
   U407 : NAND30 port map( A => n227_port, B => n224_port, C => n156_port, Q =>
                           n225_port);
   U408 : OAI220 port map( A => n282_port, B => sig_out_local_count_14_port, C 
                           => n281_port, D => sig_out_local_count_13_port, Q =>
                           n247);
   U409 : NOR20 port map( A => n22_port, B => sig_out_local_count_15_port, Q =>
                           n246_port);
   U410 : OAI220 port map( A => n280_port, B => sig_out_local_count_12_port, C 
                           => n279, D => sig_out_local_count_11_port, Q => 
                           n245_port);
   U411 : OAI220 port map( A => n278, B => sig_out_local_count_10_port, C => 
                           n277, D => sig_out_local_count_9_port, Q => 
                           n244_port);
   U412 : NOR40 port map( A => n247, B => n246_port, C => n245_port, D => 
                           n244_port, Q => n248_port);
   U413 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N231, D => 
                           sig_out_local_count_0_port, Q => n250_port);
   U414 : OAI220 port map( A => n271_port, B => sig_out_local_count_4_port, C 
                           => n270_port, D => sig_out_local_count_3_port, Q => 
                           n249_port);
   U415 : AOI2110 port map( A => n185_port, B => sig_cyclesTrame4_2_port, C => 
                           n250_port, D => n249_port, Q => n251_port);
   U416 : OAI220 port map( A => sig_out_local_count_5_port, B => n273_port, C 
                           => sig_out_local_count_6_port, D => n274_port, Q => 
                           n253_port);
   U417 : OAI220 port map( A => sig_out_local_count_7_port, B => n275_port, C 
                           => sig_out_local_count_8_port, D => n276_port, Q => 
                           n252_port);
   U418 : NOR40 port map( A => n283_port, B => n272_port, C => n253_port, D => 
                           n252_port, Q => n254_port);
   U419 : AOI220 port map( A => sig_out_local_count_8_port, B => n276_port, C 
                           => sig_out_local_count_9_port, D => n277, Q => 
                           n259_port);
   U420 : AOI220 port map( A => sig_out_local_count_6_port, B => n274_port, C 
                           => sig_out_local_count_7_port, D => n275_port, Q => 
                           n258_port);
   U421 : AOI220 port map( A => sig_out_local_count_4_port, B => n271_port, C 
                           => sig_out_local_count_5_port, D => n273_port, Q => 
                           n257_port);
   U422 : AOI220 port map( A => n13, B => n269_port, C => 
                           sig_out_local_count_3_port, D => n270_port, Q => 
                           n256_port);
   U423 : NAND40 port map( A => n259_port, B => n258_port, C => n257_port, D =>
                           n256_port, Q => n265_port);
   U424 : AOI220 port map( A => sig_out_local_count_14_port, B => n282_port, C 
                           => sig_out_local_count_15_port, D => n22_port, Q => 
                           n263_port);
   U425 : AOI220 port map( A => sig_out_local_count_12_port, B => n280_port, C 
                           => sig_out_local_count_13_port, D => n281_port, Q =>
                           n261_port);
   U426 : AOI220 port map( A => sig_out_local_count_10_port, B => n278, C => 
                           sig_out_local_count_11_port, D => n279, Q => 
                           n260_port);
   U427 : NAND40 port map( A => n263_port, B => n262, C => n261_port, D => 
                           n260_port, Q => n264_port);
   U428 : OAI210 port map( A => n265_port, B => n264_port, C => n156_port, Q =>
                           n266_port);
   U429 : NOR40 port map( A => n268_port, B => n267_port, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N169);
   U430 : NOR20 port map( A => n254_port, B => n14, Q => n255_port);
   U431 : NOR20 port map( A => n15, B => n284_port, Q => n268_port);
   U432 : NAND20 port map( A => sig_out_local_count_1_port, B => N231, Q => 
                           n262);
   U433 : NAND30 port map( A => n227_port, B => n266_port, C => n156_port, Q =>
                           n267_port);
   U434 : XNR20 port map( A => N188, B => sig_out_local_count_10_port, Q => 
                           n287_port);
   U435 : XNR20 port map( A => N187, B => sig_out_local_count_9_port, Q => 
                           n286_port);
   U436 : XNR20 port map( A => N189, B => sig_out_local_count_11_port, Q => 
                           n285_port);
   U437 : NAND30 port map( A => n287_port, B => n286_port, C => n285_port, Q =>
                           n298);
   U438 : XNR20 port map( A => N191, B => sig_out_local_count_13_port, Q => 
                           n289_port);
   U439 : XNR20 port map( A => N190, B => sig_out_local_count_12_port, Q => 
                           n288_port);
   U440 : NAND20 port map( A => n289_port, B => n288_port, Q => n297);
   U441 : XNR20 port map( A => N193, B => sig_out_local_count_15_port, Q => 
                           n292_port);
   U442 : XNR20 port map( A => N192, B => sig_out_local_count_14_port, Q => 
                           n291_port);
   U443 : XNR20 port map( A => N194, B => n14, Q => n290_port);
   U444 : NAND30 port map( A => n292_port, B => n291_port, C => n290_port, Q =>
                           n296_port);
   U445 : XNR20 port map( A => N196, B => sig_out_local_count_18_port, Q => 
                           n294_port);
   U446 : XNR20 port map( A => N195, B => n15, Q => n293_port);
   U447 : NAND20 port map( A => n294_port, B => n293_port, Q => n295_port);
   U448 : NOR40 port map( A => n298, B => n297, C => n296_port, D => n295_port,
                           Q => n299);
   U449 : AOI220 port map( A => n315, B => n314, C => n314, D => N179, Q => 
                           n300);
   U450 : XNR20 port map( A => N197, B => sig_out_local_count_19_port, Q => 
                           n304);
   U451 : XOR20 port map( A => N180, B => n13, Q => n302);
   U452 : XOR20 port map( A => N181, B => sig_out_local_count_3_port, Q => n301
                           );
   U453 : NOR20 port map( A => n302, B => n301, Q => n303);
   U454 : NAND40 port map( A => n316, B => n305, C => n304, D => n303, Q => 
                           n313);
   U455 : XNR20 port map( A => N183, B => sig_out_local_count_5_port, Q => n308
                           );
   U456 : XNR20 port map( A => N182, B => sig_out_local_count_4_port, Q => n307
                           );
   U457 : XNR20 port map( A => N184, B => sig_out_local_count_6_port, Q => n306
                           );
   U458 : NAND30 port map( A => n308, B => n307, C => n306, Q => n312);
   U459 : XNR20 port map( A => N186, B => sig_out_local_count_8_port, Q => n310
                           );
   U460 : XNR20 port map( A => N185, B => sig_out_local_count_7_port, Q => n309
                           );
   U461 : NAND20 port map( A => n310, B => n309, Q => n311);
   U462 : NOR40 port map( A => n317, B => n313, C => n312, D => n311, Q => N198
                           );

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity decoder is

   port( i_sel : in std_logic_vector (1 downto 0);  o_val : out 
         std_logic_vector (31 downto 0));

end decoder;

architecture SYN_rtl of decoder is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal o_val_7, N3, o_val_0_port, n2, n3_port : std_logic;

begin
   o_val <= ( i_sel(1), i_sel(0), i_sel(0), o_val_0_port, i_sel(0), 
      o_val_0_port, o_val_0_port, i_sel(0), i_sel(1), o_val_0_port, 
      o_val_0_port, i_sel(0), i_sel(0), i_sel(0), o_val_0_port, i_sel(0), 
      i_sel(1), i_sel(0), i_sel(0), i_sel(0), o_val_0_port, o_val_0_port, 
      o_val_0_port, i_sel(0), o_val_7, o_val_0_port, i_sel(0), i_sel(0), 
      o_val_0_port, o_val_0_port, i_sel(0), o_val_0_port );
   
   U3 : BUF2 port map( A => N3, Q => o_val_0_port);
   U4 : NOR21 port map( A => n3_port, B => n2, Q => N3);
   U5 : NAND22 port map( A => n3_port, B => n2, Q => o_val_7);
   U6 : INV3 port map( A => i_sel(1), Q => n2);
   U7 : INV3 port map( A => i_sel(0), Q => n3_port);

end SYN_rtl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_top_ppm.all;

entity top_ppm is

   port( i_clk_top, i_reset_n_top : in std_logic;  i_sel_top : in 
         std_logic_vector (1 downto 0);  o_ppm_top : out std_logic);

end top_ppm;

architecture SYN_rtl of top_ppm is

   component send_ppm
      port( i_clk, i_reset_n : in std_logic;  i_reg : in std_logic_vector (31 
            downto 0);  o_ppm : out std_logic);
   end component;
   
   component decoder
      port( i_sel : in std_logic_vector (1 downto 0);  o_val : out 
            std_logic_vector (31 downto 0));
   end component;
   
   signal sig_reg_31_port, sig_reg_30_port, sig_reg_29_port, sig_reg_28_port, 
      sig_reg_27_port, sig_reg_26_port, sig_reg_25_port, sig_reg_24_port, 
      sig_reg_23_port, sig_reg_22_port, sig_reg_21_port, sig_reg_20_port, 
      sig_reg_19_port, sig_reg_18_port, sig_reg_17_port, sig_reg_16_port, 
      sig_reg_15_port, sig_reg_14_port, sig_reg_13_port, sig_reg_12_port, 
      sig_reg_11_port, sig_reg_10_port, sig_reg_9_port, sig_reg_8_port, 
      sig_reg_7_port, sig_reg_6_port, sig_reg_5_port, sig_reg_4_port, 
      sig_reg_3_port, sig_reg_2_port, sig_reg_1_port, sig_reg_0_port : 
      std_logic;

begin
   
   decoder1 : decoder port map( i_sel(1) => i_sel_top(1), i_sel(0) => 
                           i_sel_top(0), o_val(31) => sig_reg_31_port, 
                           o_val(30) => sig_reg_30_port, o_val(29) => 
                           sig_reg_29_port, o_val(28) => sig_reg_28_port, 
                           o_val(27) => sig_reg_27_port, o_val(26) => 
                           sig_reg_26_port, o_val(25) => sig_reg_25_port, 
                           o_val(24) => sig_reg_24_port, o_val(23) => 
                           sig_reg_23_port, o_val(22) => sig_reg_22_port, 
                           o_val(21) => sig_reg_21_port, o_val(20) => 
                           sig_reg_20_port, o_val(19) => sig_reg_19_port, 
                           o_val(18) => sig_reg_18_port, o_val(17) => 
                           sig_reg_17_port, o_val(16) => sig_reg_16_port, 
                           o_val(15) => sig_reg_15_port, o_val(14) => 
                           sig_reg_14_port, o_val(13) => sig_reg_13_port, 
                           o_val(12) => sig_reg_12_port, o_val(11) => 
                           sig_reg_11_port, o_val(10) => sig_reg_10_port, 
                           o_val(9) => sig_reg_9_port, o_val(8) => 
                           sig_reg_8_port, o_val(7) => sig_reg_7_port, o_val(6)
                           => sig_reg_6_port, o_val(5) => sig_reg_5_port, 
                           o_val(4) => sig_reg_4_port, o_val(3) => 
                           sig_reg_3_port, o_val(2) => sig_reg_2_port, o_val(1)
                           => sig_reg_1_port, o_val(0) => sig_reg_0_port);
   send_ppm1 : send_ppm port map( i_clk => i_clk_top, i_reset_n => 
                           i_reset_n_top, i_reg(31) => sig_reg_31_port, 
                           i_reg(30) => sig_reg_30_port, i_reg(29) => 
                           sig_reg_29_port, i_reg(28) => sig_reg_28_port, 
                           i_reg(27) => sig_reg_27_port, i_reg(26) => 
                           sig_reg_26_port, i_reg(25) => sig_reg_25_port, 
                           i_reg(24) => sig_reg_24_port, i_reg(23) => 
                           sig_reg_23_port, i_reg(22) => sig_reg_22_port, 
                           i_reg(21) => sig_reg_21_port, i_reg(20) => 
                           sig_reg_20_port, i_reg(19) => sig_reg_19_port, 
                           i_reg(18) => sig_reg_18_port, i_reg(17) => 
                           sig_reg_17_port, i_reg(16) => sig_reg_16_port, 
                           i_reg(15) => sig_reg_15_port, i_reg(14) => 
                           sig_reg_14_port, i_reg(13) => sig_reg_13_port, 
                           i_reg(12) => sig_reg_12_port, i_reg(11) => 
                           sig_reg_11_port, i_reg(10) => sig_reg_10_port, 
                           i_reg(9) => sig_reg_9_port, i_reg(8) => 
                           sig_reg_8_port, i_reg(7) => sig_reg_7_port, i_reg(6)
                           => sig_reg_6_port, i_reg(5) => sig_reg_5_port, 
                           i_reg(4) => sig_reg_4_port, i_reg(3) => 
                           sig_reg_3_port, i_reg(2) => sig_reg_2_port, i_reg(1)
                           => sig_reg_1_port, i_reg(0) => sig_reg_0_port, o_ppm
                           => o_ppm_top);

end SYN_rtl;
