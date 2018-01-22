
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_send_ppm is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_send_ppm;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_send_ppm.all;

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

use work.CONV_PACK_send_ppm.all;

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
   U10 : INV3 port map( A => B(8), Q => n12);
   U11 : INV3 port map( A => B(6), Q => n14);
   U12 : INV3 port map( A => B(7), Q => n13);
   U13 : INV3 port map( A => B(5), Q => n15);
   U14 : INV3 port map( A => B(3), Q => n17);
   U15 : INV3 port map( A => B(4), Q => n16);
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

use work.CONV_PACK_send_ppm.all;

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
   U3 : XOR21 port map( A => SUMB_4_5_port, B => CARRYB_7_1_port, Q => 
                           PRODUCT_9_port);
   U4 : NOR21 port map( A => n4, B => n5, Q => A2_8_port);
   U5 : INV3 port map( A => CARRYB_7_1_port, Q => n5);
   U6 : INV3 port map( A => SUMB_4_5_port, Q => n4);
   U7 : IMUX21 port map( A => n18, B => SUMB_5_5_port, S => A2_8_port, Q => 
                           PRODUCT_10_port);
   U8 : INV3 port map( A => SUMB_5_5_port, Q => n18);
   U9 : INV3 port map( A => n16, Q => n17);
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

use work.CONV_PACK_send_ppm.all;

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

use work.CONV_PACK_send_ppm.all;

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
   U10 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U11 : INV3 port map( A => SUMB_7_5_port, Q => n19);
   U12 : XOR21 port map( A => A1_11_port, B => n12, Q => PRODUCT_13_port);
   U13 : NOR21 port map( A => n19, B => n11, Q => n12);
   U14 : NOR21 port map( A => n19, B => n13, Q => n14);
   U15 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_7_5_port, Q => n6);
   U17 : XOR21 port map( A => A(4), B => A(0), Q => PRODUCT_5_port);
   U18 : NOR21 port map( A => n9, B => n10, Q => CARRYB_4_1_port);
   U19 : XOR21 port map( A => A(0), B => A(1), Q => SUMB_1_5_port);
   U20 : INV3 port map( A => A(4), Q => n9);
   U21 : NOR21 port map( A => n10, B => n8, Q => CARRYB_1_5_port);
   U22 : INV3 port map( A => A(1), Q => n8);
   U23 : INV3 port map( A => A(0), Q => n10);
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

use work.CONV_PACK_send_ppm.all;

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
   U10 : NAND22 port map( A => n17, B => SUMB_6_5_port, Q => n11);
   U11 : INV3 port map( A => SUMB_7_5_port, Q => n19);
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

use work.CONV_PACK_send_ppm.all;

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

use work.CONV_PACK_send_ppm.all;

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
      n19_port, n20_port, n21_port, n23_port, n_1059, n_1060, n_1061, n_1062, 
      n_1063, n_1064, n_1065, n_1066, n_1067, n_1068, n_1069, n_1070, n_1071, 
      n_1072, n_1073, n_1074, n_1075, n_1076, n_1077, n_1078, n_1079, n_1080, 
      n_1081, n_1082, n_1083, n_1084, n_1085, n_1086, n_1087, n_1088, n_1089, 
      n_1090, n_1091, n_1092, n_1093, n_1094, n_1095, n_1096, n_1097, n_1098, 
      n_1099 : std_logic;

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
   U3 : NAND22 port map( A => i_reset_n, B => n3, Q => n2);
   U4 : NAND22 port map( A => i_reset_n, B => n3, Q => n1);
   U5 : NAND22 port map( A => i_reset_n, B => n3, Q => n22_port);
   U6 : INV3 port map( A => i_init, Q => n3);
   U7 : NOR21 port map( A => n1, B => n5, Q => N64);
   U8 : INV3 port map( A => N24, Q => n5);
   U9 : NOR21 port map( A => n2, B => n7_port, Q => N62);
   U10 : INV3 port map( A => N22, Q => n7_port);
   U11 : NOR21 port map( A => n1, B => n8_port, Q => N61);
   U12 : INV3 port map( A => N21, Q => n8_port);
   U13 : NOR21 port map( A => n2, B => n10_port, Q => N59);
   U14 : INV3 port map( A => N19, Q => n10_port);
   U15 : NOR21 port map( A => n1, B => n11_port, Q => N58);
   U16 : INV3 port map( A => N18, Q => n11_port);
   U17 : NOR21 port map( A => n2, B => n13_port, Q => N56);
   U18 : INV3 port map( A => N16, Q => n13_port);
   U19 : NOR21 port map( A => n1, B => n14_port, Q => N55);
   U20 : INV3 port map( A => N15, Q => n14_port);
   U21 : NOR21 port map( A => n2, B => n16_port, Q => N53);
   U22 : INV3 port map( A => N13, Q => n16_port);
   U23 : NOR21 port map( A => n1, B => n17_port, Q => N52);
   U24 : INV3 port map( A => N12, Q => n17_port);
   U25 : NOR21 port map( A => n2, B => n19_port, Q => N50);
   U26 : INV3 port map( A => N10, Q => n19_port);
   U27 : NOR21 port map( A => n1, B => n20_port, Q => N49);
   U28 : INV3 port map( A => N9, Q => n20_port);
   U29 : NOR21 port map( A => n2, B => n23_port, Q => N47);
   U30 : INV3 port map( A => N7, Q => n23_port);
   U31 : NOR21 port map( A => n22_port, B => n6, Q => N63);
   U32 : INV3 port map( A => N23, Q => n6);
   U33 : NOR21 port map( A => n22_port, B => n9_port, Q => N60);
   U34 : INV3 port map( A => N20, Q => n9_port);
   U35 : NOR21 port map( A => n22_port, B => n12_port, Q => N57);
   U36 : INV3 port map( A => N17, Q => n12_port);
   U37 : NOR21 port map( A => n22_port, B => n15_port, Q => N54);
   U38 : INV3 port map( A => N14, Q => n15_port);
   U39 : NOR21 port map( A => n22_port, B => n18_port, Q => N51);
   U40 : INV3 port map( A => N11, Q => n18_port);
   U41 : NOR21 port map( A => n22_port, B => n21_port, Q => N48);
   U42 : INV3 port map( A => N8, Q => n21_port);
   U43 : NOR21 port map( A => n2, B => n4, Q => N65);
   U44 : INV3 port map( A => N25, Q => n4);
   U45 : NOR21 port map( A => n1, B => v_val_0_port, Q => N46);

end SYN_b;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_send_ppm.all;

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
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
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
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component INV1
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INV2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INV0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
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
   
   component send_ppm_DW02_mult_0
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_1
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_2
      port( A : in std_logic_vector (7 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component send_ppm_DW02_mult_3
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
      , current_state_2_port, current_state_1_port, current_state_0_port, N76, 
      N109, sig_state_2_port, sig_state_1_port, sig_state_0_port, N110, N111, 
      N112, N113, N114, N115, N182, N190, N197, N203, N213, N214, N215, N216, 
      N217, N218, N219, N220, N221, N222, N223, N224, N225, N226, N227, N228, 
      N229, N230, N231, N232, N238, n90, n91, n92, n93, n94, n95, n96, n97, n98
      , n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109_port, 
      n110_port, n111_port, n112_port, n113_port, n114_port, n115_port, n116, 
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, N75, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, 
      N59, N58, N57, N325, N324, N323, N322, N321, N320, N32, N319, N318, N317,
      N316, N315, N314, N313, N312, N311, N310, N31, N309, N30, N29, N28, N27, 
      N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N305, N304, N303, N302,
      N301, N300, N299, N298, N297, N296, N295, N294, N293, N292, N290, N289, 
      N288, N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, 
      N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, 
      N263, N262, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
      N250, N249, N248, N247, sub_123_cf_carry_3_port, sub_123_cf_carry_4_port,
      sub_123_cf_carry_5_port, sub_123_cf_carry_6_port, sub_123_cf_carry_7_port
      , sub_123_cf_carry_8_port, sub_123_cf_carry_9_port, 
      sub_123_cf_carry_10_port, sub_123_cf_carry_11_port, 
      sub_123_cf_carry_12_port, sub_123_cf_carry_13_port, 
      sub_123_cf_carry_14_port, sub_120_cf_carry_3_port, 
      sub_120_cf_carry_4_port, sub_120_cf_carry_5_port, sub_120_cf_carry_6_port
      , sub_120_cf_carry_7_port, sub_120_cf_carry_8_port, 
      sub_120_cf_carry_9_port, sub_120_cf_carry_10_port, 
      sub_120_cf_carry_11_port, sub_120_cf_carry_12_port, 
      sub_120_cf_carry_13_port, sub_120_cf_carry_14_port, 
      sub_117_cf_carry_3_port, sub_117_cf_carry_4_port, sub_117_cf_carry_5_port
      , sub_117_cf_carry_6_port, sub_117_cf_carry_7_port, 
      sub_117_cf_carry_8_port, sub_117_cf_carry_9_port, 
      sub_117_cf_carry_10_port, sub_117_cf_carry_11_port, 
      sub_117_cf_carry_12_port, sub_117_cf_carry_13_port, 
      sub_117_cf_carry_14_port, sub_114_cf_carry_3_port, 
      sub_114_cf_carry_4_port, sub_114_cf_carry_5_port, sub_114_cf_carry_6_port
      , sub_114_cf_carry_7_port, sub_114_cf_carry_8_port, 
      sub_114_cf_carry_9_port, sub_114_cf_carry_10_port, 
      sub_114_cf_carry_11_port, sub_114_cf_carry_12_port, 
      sub_114_cf_carry_13_port, sub_114_cf_carry_14_port, 
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
      sub_3_root_sub_0_root_sub_235_cf_carry_15_port, n154, n155, n156, n157, 
      n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, 
      n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, 
      n182_port, n183, n184, n185, n186, n187, n188, n189, n190_port, n191, 
      n192, n193, n194, n195, n196, n197_port, n198, n199, n200, n201, n202, 
      n203_port, n204, n205, n206, n207, n208, n209, n210, n211, n212, 
      n213_port, n214_port, n215_port, n216_port, n217_port, n218_port, 
      n219_port, n220_port, n221_port, n222_port, n223_port, n224_port, 
      n225_port, n226_port, n227_port, n228_port, n229_port, n230_port, 
      n231_port, n232_port, n233, n234, n235, n236, n237, n238_port, n239, n240
      , n241, n242, n243, n244, n245, n246, n247_port, n248_port, n249_port, 
      n250_port, n251_port, n252_port, n253_port, n254_port, n255_port, 
      n256_port, n257_port, n258_port, n259_port, n260_port, n261, n262_port, 
      n263_port, n264_port, n265_port, n266_port, n267_port, n268_port, 
      n269_port, n270_port, n271_port, n272_port, n273_port, n274_port, 
      n275_port, n276, n277_port, n278_port, n279_port, n280_port, n281_port, 
      n282_port, n283_port, n284_port, n285_port, n286_port, n287_port, 
      n288_port, n289_port, n290_port, n291, n292_port, n293_port, n294_port, 
      n295_port, n296_port, n297_port, n298_port, n299_port, n300_port, 
      n301_port, n302_port, n303_port, n304_port, n305_port, n306, n307, n308, 
      n309_port, n310_port, n311_port, n312_port, n313_port, n314_port, 
      n315_port, n316_port, n317_port, n318_port, n319_port, n320_port, 
      n321_port, n322_port, n323_port, n324_port, n325_port, n326, n327, n328, 
      n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, 
      n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, 
      n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, 
      n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, 
      n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, 
      n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, 
      n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, 
      n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, 
      n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, 
      n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, 
      n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, 
      n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, 
      n473, n474, n475, n476, n477, n478, n_1100, n_1101, n_1102, n_1103, 
      n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, 
      n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, 
      n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, 
      n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, 
      n_1140, n_1141, n_1142 : std_logic;

begin
   
   U48 : OAI212 port map( A => n129, B => n171, C => n130, Q => N112);
   U51 : OAI212 port map( A => n438, B => n166, C => n133, Q => N111);
   U53 : OAI212 port map( A => sig_state_0_port, B => n442, C => n134, Q => 
                           n132);
   U54 : OAI222 port map( A => n134, B => n168, C => sig_state_0_port, D => 
                           n440, Q => N110);
   current_state_reg_0_inst : DF3 port map( D => N113, C => i_clk, Q => 
                           current_state_0_port, QN => n169);
   sig_out_ppm_reg : DF3 port map( D => N109, C => i_clk, Q => o_ppm, QN => 
                           n_1100);
   current_state_reg_1_inst : DF3 port map( D => N114, C => i_clk, Q => 
                           current_state_1_port, QN => n170);
   current_state_reg_2_inst : DF3 port map( D => N115, C => i_clk, Q => 
                           current_state_2_port, QN => n167);
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
                           sig_cyclesTrame2_1_port, A(0) => n478, B(19) => 
                           sig_cyclesTrame2_27, B(18) => sig_cyclesTrame2_27, 
                           B(17) => sig_cyclesTrame2_27, B(16) => N32, B(15) =>
                           N31, B(14) => N30, B(13) => N29, B(12) => N28, B(11)
                           => N27, B(10) => N26, B(9) => N25, B(8) => N24, B(7)
                           => N23, B(6) => N22, B(5) => N21, B(4) => N20, B(3) 
                           => N19, B(2) => N18, B(1) => N17, B(0) => 
                           sig_cyclesTrame2_27, CI => sig_cyclesTrame2_27, 
                           SUM(19) => n_1101, SUM(18) => n_1102, SUM(17) => 
                           N309, SUM(16) => N310, SUM(15) => N311, SUM(14) => 
                           N312, SUM(13) => N313, SUM(12) => N314, SUM(11) => 
                           N315, SUM(10) => N316, SUM(9) => N317, SUM(8) => 
                           N318, SUM(7) => N319, SUM(6) => N320, SUM(5) => N321
                           , SUM(4) => N322, SUM(3) => N323, SUM(2) => N324, 
                           SUM(1) => N325, SUM(0) => n_1103, CO => n_1104);
   sub_0_root_sub_0_root_sub_235_cf : send_ppm_DW01_sub_0 port map( A(19) => 
                           N75, A(18) => n184, A(17) => n184, A(16) => n184, 
                           A(15) => N71, A(14) => N70, A(13) => N69, A(12) => 
                           N68, A(11) => N67, A(10) => N66, A(9) => N65, A(8) 
                           => N64, A(7) => N63, A(6) => N62, A(5) => N61, A(4) 
                           => N60, A(3) => N59, A(2) => N58, A(1) => N57, A(0) 
                           => n478, B(19) => sig_cyclesTrame2_27, B(18) => 
                           sig_cyclesTrame2_27, B(17) => N309, B(16) => N310, 
                           B(15) => N311, B(14) => N312, B(13) => N313, B(12) 
                           => N314, B(11) => N315, B(10) => N316, B(9) => N317,
                           B(8) => N318, B(7) => N319, B(6) => N320, B(5) => 
                           N321, B(4) => N322, B(3) => N323, B(2) => N324, B(1)
                           => N325, B(0) => n478, CI => sig_cyclesTrame2_27, 
                           DIFF(19) => N231, DIFF(18) => N230, DIFF(17) => N229
                           , DIFF(16) => N228, DIFF(15) => N227, DIFF(14) => 
                           N226, DIFF(13) => N225, DIFF(12) => N224, DIFF(11) 
                           => N223, DIFF(10) => N222, DIFF(9) => N221, DIFF(8) 
                           => N220, DIFF(7) => N219, DIFF(6) => N218, DIFF(5) 
                           => N217, DIFF(4) => N216, DIFF(3) => N215, DIFF(2) 
                           => N214, DIFF(1) => N213, DIFF(0) => n_1105, CO => 
                           n_1106);
   mult_114 : send_ppm_DW02_mult_3 port map( A(7) => sig_reg_storage_7_port, 
                           A(6) => sig_reg_storage_6_port, A(5) => 
                           sig_reg_storage_5_port, A(4) => 
                           sig_reg_storage_4_port, A(3) => 
                           sig_reg_storage_3_port, A(2) => 
                           sig_reg_storage_2_port, A(1) => 
                           sig_reg_storage_1_port, A(0) => 
                           sig_reg_storage_0_port, B(6) => n478, B(5) => n478, 
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n478, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N292, 
                           PRODUCT(13) => N293, PRODUCT(12) => N294, 
                           PRODUCT(11) => N295, PRODUCT(10) => N296, PRODUCT(9)
                           => N297, PRODUCT(8) => N298, PRODUCT(7) => N299, 
                           PRODUCT(6) => N300, PRODUCT(5) => N301, PRODUCT(4) 
                           => N302, PRODUCT(3) => N303, PRODUCT(2) => N304, 
                           PRODUCT(1) => N305, PRODUCT(0) => n_1107);
   mult_117 : send_ppm_DW02_mult_2 port map( A(7) => sig_reg_storage_15_port, 
                           A(6) => sig_reg_storage_14_port, A(5) => 
                           sig_reg_storage_13_port, A(4) => 
                           sig_reg_storage_12_port, A(3) => 
                           sig_reg_storage_11_port, A(2) => 
                           sig_reg_storage_10_port, A(1) => 
                           sig_reg_storage_9_port, A(0) => 
                           sig_reg_storage_8_port, B(6) => n478, B(5) => n478, 
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n478, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N277, 
                           PRODUCT(13) => N278, PRODUCT(12) => N279, 
                           PRODUCT(11) => N280, PRODUCT(10) => N281, PRODUCT(9)
                           => N282, PRODUCT(8) => N283, PRODUCT(7) => N284, 
                           PRODUCT(6) => N285, PRODUCT(5) => N286, PRODUCT(4) 
                           => N287, PRODUCT(3) => N288, PRODUCT(2) => N289, 
                           PRODUCT(1) => N290, PRODUCT(0) => n_1108);
   mult_120 : send_ppm_DW02_mult_1 port map( A(7) => sig_reg_storage_23_port, 
                           A(6) => sig_reg_storage_22_port, A(5) => 
                           sig_reg_storage_21_port, A(4) => 
                           sig_reg_storage_20_port, A(3) => 
                           sig_reg_storage_19_port, A(2) => 
                           sig_reg_storage_18_port, A(1) => 
                           sig_reg_storage_17_port, A(0) => 
                           sig_reg_storage_16_port, B(6) => n478, B(5) => n478,
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n478, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N262, 
                           PRODUCT(13) => N263, PRODUCT(12) => N264, 
                           PRODUCT(11) => N265, PRODUCT(10) => N266, PRODUCT(9)
                           => N267, PRODUCT(8) => N268, PRODUCT(7) => N269, 
                           PRODUCT(6) => N270, PRODUCT(5) => N271, PRODUCT(4) 
                           => N272, PRODUCT(3) => N273, PRODUCT(2) => N274, 
                           PRODUCT(1) => N275, PRODUCT(0) => n_1109);
   mult_123 : send_ppm_DW02_mult_0 port map( A(7) => sig_reg_storage_31_port, 
                           A(6) => sig_reg_storage_30_port, A(5) => 
                           sig_reg_storage_29_port, A(4) => 
                           sig_reg_storage_28_port, A(3) => 
                           sig_reg_storage_27_port, A(2) => 
                           sig_reg_storage_26_port, A(1) => 
                           sig_reg_storage_25_port, A(0) => 
                           sig_reg_storage_24_port, B(6) => n478, B(5) => n478,
                           B(4) => sig_cyclesTrame2_27, B(3) => 
                           sig_cyclesTrame2_27, B(2) => sig_cyclesTrame2_27, 
                           B(1) => n478, B(0) => sig_cyclesTrame2_27, TC => 
                           sig_cyclesTrame2_27, PRODUCT(14) => N247, 
                           PRODUCT(13) => N248, PRODUCT(12) => N249, 
                           PRODUCT(11) => N250, PRODUCT(10) => N251, PRODUCT(9)
                           => N252, PRODUCT(8) => N253, PRODUCT(7) => N254, 
                           PRODUCT(6) => N255, PRODUCT(5) => N256, PRODUCT(4) 
                           => N257, PRODUCT(3) => N258, PRODUCT(2) => N259, 
                           PRODUCT(1) => N260, PRODUCT(0) => n_1110);
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
   sig_state_reg_2_inst : DFE1 port map( D => N112, E => N238, C => i_clk, Q =>
                           sig_state_2_port, QN => n171);
   sig_state_reg_1_inst : DFE1 port map( D => N111, E => N238, C => i_clk, Q =>
                           sig_state_1_port, QN => n166);
   sig_reg_storage_reg_14_inst : DFE1 port map( D => n466, E => n177, C => 
                           i_clk, Q => sig_reg_storage_14_port, QN => n_1111);
   sig_reg_storage_reg_6_inst : DFE1 port map( D => n458, E => n178, C => i_clk
                           , Q => sig_reg_storage_6_port, QN => n_1112);
   sig_reg_storage_reg_13_inst : DFE1 port map( D => n465, E => n177, C => 
                           i_clk, Q => sig_reg_storage_13_port, QN => n_1113);
   sig_reg_storage_reg_22_inst : DFE1 port map( D => n474, E => n176, C => 
                           i_clk, Q => sig_reg_storage_22_port, QN => n_1114);
   sig_reg_storage_reg_30_inst : DFE1 port map( D => n450, E => n175, C => 
                           i_clk, Q => sig_reg_storage_30_port, QN => n_1115);
   sig_reg_storage_reg_5_inst : DFE1 port map( D => n457, E => n178, C => i_clk
                           , Q => sig_reg_storage_5_port, QN => n_1116);
   sig_reg_storage_reg_11_inst : DFE1 port map( D => n463, E => n177, C => 
                           i_clk, Q => sig_reg_storage_11_port, QN => n_1117);
   sig_reg_storage_reg_21_inst : DFE1 port map( D => n473, E => n176, C => 
                           i_clk, Q => sig_reg_storage_21_port, QN => n_1118);
   sig_reg_storage_reg_29_inst : DFE1 port map( D => n449, E => n175, C => 
                           i_clk, Q => sig_reg_storage_29_port, QN => n_1119);
   sig_reg_storage_reg_4_inst : DFE1 port map( D => n456, E => n178, C => i_clk
                           , Q => sig_reg_storage_4_port, QN => n_1120);
   sig_reg_storage_reg_12_inst : DFE1 port map( D => n464, E => n177, C => 
                           i_clk, Q => sig_reg_storage_12_port, QN => n_1121);
   sig_reg_storage_reg_3_inst : DFE1 port map( D => n455, E => n179, C => i_clk
                           , Q => sig_reg_storage_3_port, QN => n_1122);
   sig_reg_storage_reg_27_inst : DFE1 port map( D => n447, E => n175, C => 
                           i_clk, Q => sig_reg_storage_27_port, QN => n_1123);
   sig_reg_storage_reg_20_inst : DFE1 port map( D => n472, E => n176, C => 
                           i_clk, Q => sig_reg_storage_20_port, QN => n_1124);
   sig_reg_storage_reg_28_inst : DFE1 port map( D => n448, E => n175, C => 
                           i_clk, Q => sig_reg_storage_28_port, QN => n_1125);
   sig_reg_storage_reg_2_inst : DFE1 port map( D => n454, E => n179, C => i_clk
                           , Q => sig_reg_storage_2_port, QN => n_1126);
   sig_reg_storage_reg_10_inst : DFE1 port map( D => n462, E => n178, C => 
                           i_clk, Q => sig_reg_storage_10_port, QN => n_1127);
   sig_reg_storage_reg_19_inst : DFE1 port map( D => n471, E => n176, C => 
                           i_clk, Q => sig_reg_storage_19_port, QN => n_1128);
   sig_reg_storage_reg_18_inst : DFE1 port map( D => n470, E => n176, C => 
                           i_clk, Q => sig_reg_storage_18_port, QN => n_1129);
   sig_reg_storage_reg_26_inst : DFE1 port map( D => n446, E => n175, C => 
                           i_clk, Q => sig_reg_storage_26_port, QN => n_1130);
   sig_reg_storage_reg_9_inst : DFE1 port map( D => n461, E => n178, C => i_clk
                           , Q => sig_reg_storage_9_port, QN => n_1131);
   sig_reg_storage_reg_1_inst : DFE1 port map( D => n453, E => n179, C => i_clk
                           , Q => sig_reg_storage_1_port, QN => n_1132);
   sig_reg_storage_reg_17_inst : DFE1 port map( D => n469, E => n177, C => 
                           i_clk, Q => sig_reg_storage_17_port, QN => n_1133);
   sig_reg_storage_reg_25_inst : DFE1 port map( D => n445, E => n175, C => 
                           i_clk, Q => sig_reg_storage_25_port, QN => n_1134);
   sig_state_reg_0_inst : DFE1 port map( D => N110, E => N238, C => i_clk, Q =>
                           sig_state_0_port, QN => n168);
   sig_reg_storage_reg_8_inst : DFE1 port map( D => n460, E => n178, C => i_clk
                           , Q => sig_reg_storage_8_port, QN => n_1135);
   sig_reg_storage_reg_0_inst : DFE1 port map( D => n452, E => n179, C => i_clk
                           , Q => sig_reg_storage_0_port, QN => n_1136);
   sig_reg_storage_reg_24_inst : DFE1 port map( D => n444, E => n176, C => 
                           i_clk, Q => sig_reg_storage_24_port, QN => n_1137);
   sig_reg_storage_reg_16_inst : DFE1 port map( D => n468, E => n177, C => 
                           i_clk, Q => sig_reg_storage_16_port, QN => n_1138);
   sig_reg_storage_reg_7_inst : DFE1 port map( D => n459, E => n178, C => i_clk
                           , Q => sig_reg_storage_7_port, QN => n_1139);
   sig_reg_storage_reg_15_inst : DFE1 port map( D => n467, E => n177, C => 
                           i_clk, Q => sig_reg_storage_15_port, QN => n_1140);
   sig_reg_storage_reg_23_inst : DFE1 port map( D => n443, E => n176, C => 
                           i_clk, Q => sig_reg_storage_23_port, QN => n_1141);
   sig_reg_storage_reg_31_inst : DFE1 port map( D => n451, E => n175, C => 
                           i_clk, Q => sig_reg_storage_31_port, QN => n_1142);
   U130 : XOR21 port map( A => sub_114_cf_carry_6_port, B => N300, Q => n154);
   U131 : XNR21 port map( A => N294, B => sub_114_cf_carry_12_port, Q => n155);
   U132 : XNR21 port map( A => N299, B => sub_114_cf_carry_7_port, Q => n156);
   U133 : XOR21 port map( A => sub_114_cf_carry_14_port, B => N292, Q => n157);
   U134 : XNR21 port map( A => N297, B => sub_114_cf_carry_9_port, Q => n158);
   U135 : XOR21 port map( A => sub_114_cf_carry_4_port, B => N302, Q => n159);
   U136 : XNR21 port map( A => N295, B => sub_114_cf_carry_11_port, Q => n160);
   U137 : XNR21 port map( A => N298, B => sub_114_cf_carry_8_port, Q => n161);
   U138 : XOR21 port map( A => sub_114_cf_carry_3_port, B => N303, Q => n162);
   U139 : XNR21 port map( A => N293, B => sub_114_cf_carry_13_port, Q => n163);
   U140 : XOR21 port map( A => sub_114_cf_carry_10_port, B => N296, Q => n164);
   U141 : XNR21 port map( A => N301, B => sub_114_cf_carry_5_port, Q => n165);
   U142 : NAND22 port map( A => n186, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port, Q =>
                           n184);
   U143 : INV3 port map( A => sig_cyclesTrame2_12_port, Q => n316_port);
   U144 : INV3 port map( A => sig_cyclesTrame3_12_port, Q => n358);
   U145 : INV3 port map( A => sig_cyclesTrame4_12_port, Q => n399);
   U146 : INV3 port map( A => sig_cyclesTrame2_13_port, Q => n317_port);
   U147 : INV3 port map( A => sig_cyclesTrame4_13_port, Q => n400);
   U148 : INV3 port map( A => sig_cyclesTrame3_13_port, Q => n359);
   U149 : INV3 port map( A => sig_cyclesTrame2_11_port, Q => n315_port);
   U150 : INV3 port map( A => sig_cyclesTrame4_11_port, Q => n398);
   U151 : INV3 port map( A => sig_cyclesTrame3_11_port, Q => n357);
   U152 : INV3 port map( A => sig_cyclesTrame2_10_port, Q => n314_port);
   U153 : INV3 port map( A => sig_cyclesTrame3_10_port, Q => n356);
   U154 : INV3 port map( A => sig_cyclesTrame4_10_port, Q => n397);
   U155 : INV3 port map( A => sig_cyclesTrame2_9_port, Q => n313_port);
   U156 : INV3 port map( A => sig_cyclesTrame4_9_port, Q => n396);
   U157 : INV3 port map( A => sig_cyclesTrame3_9_port, Q => n355);
   U158 : INV3 port map( A => sig_cyclesTrame2_14_port, Q => n318_port);
   U159 : INV3 port map( A => sig_cyclesTrame3_14_port, Q => n360);
   U160 : INV3 port map( A => sig_cyclesTrame4_14_port, Q => n401);
   U161 : INV3 port map( A => sig_cyclesTrame2_8_port, Q => n312_port);
   U162 : INV3 port map( A => sig_cyclesTrame4_8_port, Q => n395);
   U163 : INV3 port map( A => sig_cyclesTrame3_8_port, Q => n354);
   U164 : INV3 port map( A => sig_cyclesTrame2_7_port, Q => n311_port);
   U165 : INV3 port map( A => sig_cyclesTrame3_7_port, Q => n353);
   U166 : INV3 port map( A => sig_cyclesTrame2_6_port, Q => n310_port);
   U167 : INV3 port map( A => sig_cyclesTrame4_7_port, Q => n394);
   U168 : INV3 port map( A => sig_cyclesTrame4_6_port, Q => n393);
   U169 : INV3 port map( A => sig_cyclesTrame3_6_port, Q => n352);
   U170 : INV3 port map( A => sig_cyclesTrame2_5_port, Q => n309_port);
   U171 : INV3 port map( A => sig_cyclesTrame4_5_port, Q => n392);
   U172 : INV3 port map( A => sig_cyclesTrame3_5_port, Q => n351);
   U173 : INV3 port map( A => N109, Q => n442);
   U174 : INV3 port map( A => n123, Q => n477);
   U175 : BUF2 port map( A => N76, Q => n175);
   U176 : BUF2 port map( A => N76, Q => n176);
   U177 : BUF2 port map( A => N76, Q => n177);
   U178 : BUF2 port map( A => N76, Q => n178);
   U179 : BUF2 port map( A => N76, Q => n179);
   U180 : INV3 port map( A => n418, Q => n436);
   U181 : OAI2111 port map( A => n169, B => n90, C => n91, D => n92, Q => 
                           sig_in_init);
   U182 : NAND22 port map( A => n95, B => n167, Q => n90);
   U183 : AOI221 port map( A => n439, B => n93, C => N232, D => n476, Q => n92)
                           ;
   U184 : AOI211 port map( A => n124, B => N109, C => n135, Q => n134);
   U185 : NOR31 port map( A => n94, B => N232, C => n180, Q => n135);
   U186 : INV3 port map( A => sig_cyclesTrame1_2_port, Q => n249_port);
   U187 : OAI2110 port map( A => N232, B => n94, C => n119, D => i_reset_n, Q 
                           => N114);
   U188 : NAND31 port map( A => n439, B => n475, C => n477, Q => n119);
   U189 : NOR31 port map( A => n180, B => n94, C => n437, Q => N115);
   U190 : INV0 port map( A => N232, Q => n437);
   U191 : INV3 port map( A => N57, Q => n248_port);
   U192 : INV3 port map( A => n332, Q => n362);
   U193 : INV3 port map( A => n290_port, Q => n320_port);
   U194 : INV3 port map( A => n261, Q => n278_port);
   U195 : INV3 port map( A => n257_port, Q => n276);
   U196 : INV3 port map( A => n374, Q => n403);
   U197 : INV3 port map( A => n173, Q => n304_port);
   U198 : INV3 port map( A => sig_cyclesTrame2_4_port, Q => n307);
   U199 : INV3 port map( A => sig_cyclesTrame3_4_port, Q => n349);
   U200 : INV3 port map( A => sig_cyclesTrame2_3_port, Q => n306);
   U201 : INV3 port map( A => sig_cyclesTrame4_4_port, Q => n390);
   U202 : INV3 port map( A => sig_cyclesTrame3_3_port, Q => n348);
   U203 : INV3 port map( A => sig_cyclesTrame4_3_port, Q => n389);
   U204 : NAND22 port map( A => n434, B => N213, Q => n424);
   U205 : INV1 port map( A => sig_cyclesTrame2_2_port, Q => n305_port);
   U206 : INV2 port map( A => sig_cyclesTrame3_2_port, Q => n347);
   U207 : INV1 port map( A => sig_cyclesTrame4_2_port, Q => n388);
   U208 : NOR31 port map( A => n124, B => n475, C => n442, Q => n131);
   U209 : INV3 port map( A => n124, Q => n439);
   U210 : INV3 port map( A => n122, Q => n475);
   U211 : INV3 port map( A => n94, Q => n476);
   U212 : NOR21 port map( A => n123, B => n180, Q => N109);
   U213 : NAND22 port map( A => n93, B => n167, Q => n123);
   U214 : NAND22 port map( A => i_reset_n, B => n91, Q => N76);
   U215 : INV3 port map( A => n131, Q => n440);
   U216 : NAND31 port map( A => sig_state_0_port, B => n166, C => n131, Q => 
                           n133);
   U217 : INV3 port map( A => n132, Q => n438);
   U218 : NAND41 port map( A => n131, B => sig_state_1_port, C => 
                           sig_state_0_port, D => n171, Q => n130);
   U219 : AOI211 port map( A => N109, B => n166, C => n132, Q => n129);
   U220 : INV3 port map( A => N305, Q => N57);
   U221 : INV3 port map( A => n283_port, Q => n319_port);
   U222 : INV3 port map( A => n325_port, Q => n361);
   U223 : NOR21 port map( A => n128, B => n166, Q => n127);
   U224 : AOI221 port map( A => N190, B => n168, C => N197, D => 
                           sig_state_0_port, Q => n128);
   U225 : OAI2111 port map( A => sig_state_2_port, B => n125, C => n170, D => 
                           n126, Q => n95);
   U226 : NAND22 port map( A => N203, B => n475, Q => n126);
   U227 : AOI311 port map( A => N182, B => n166, C => sig_state_0_port, D => 
                           n127, Q => n125);
   U228 : INV3 port map( A => n254_port, Q => n277_port);
   U229 : INV3 port map( A => n367, Q => n402);
   U230 : INV3 port map( A => n174, Q => n275_port);
   U231 : OAI2111 port map( A => n95, B => n120, C => n121, D => i_reset_n, Q 
                           => N113);
   U232 : NAND22 port map( A => current_state_0_port, B => n167, Q => n120);
   U233 : NAND31 port map( A => n439, B => n122, C => n477, Q => n121);
   U234 : INV3 port map( A => N275, Q => sig_cyclesTrame3_1_port);
   U235 : INV3 port map( A => N260, Q => sig_cyclesTrame4_1_port);
   U236 : INV3 port map( A => N290, Q => sig_cyclesTrame2_1_port);
   U237 : INV3 port map( A => n286_port, Q => n308);
   U238 : INV3 port map( A => n328, Q => n350);
   U239 : INV3 port map( A => n172, Q => n346);
   U240 : INV3 port map( A => n370, Q => n391);
   U241 : INV3 port map( A => n419, Q => n435);
   U242 : INV3 port map( A => sig_out_local_count_0_port, Q => n433);
   U243 : INV3 port map( A => sig_out_local_count_1_port, Q => n434);
   U244 : BUF2 port map( A => sig_out_local_count_16_port, Q => n173);
   U245 : BUF2 port map( A => sig_out_local_count_2_port, Q => n172);
   U246 : BUF2 port map( A => sig_out_local_count_17_port, Q => n174);
   U247 : NAND41 port map( A => n136, B => n137, C => n138, D => n139, Q => 
                           n124);
   U248 : NOR21 port map( A => n173, B => sig_out_local_count_15_port, Q => 
                           n136);
   U249 : NOR31 port map( A => n174, B => sig_out_local_count_19_port, C => 
                           sig_out_local_count_18_port, Q => n137);
   U250 : NOR31 port map( A => n140, B => n141, C => n142, Q => n139);
   U251 : NAND31 port map( A => n169, B => n167, C => current_state_1_port, Q 
                           => n94);
   U252 : NAND41 port map( A => sig_out_local_count_11_port, B => 
                           sig_out_local_count_10_port, C => n143, D => 
                           sig_out_local_count_0_port, Q => n140);
   U253 : NOR21 port map( A => sig_out_local_count_14_port, B => 
                           sig_out_local_count_13_port, Q => n143);
   U254 : NOR40 port map( A => sig_out_local_count_5_port, B => n441, C => 
                           sig_out_local_count_4_port, D => n172, Q => n138);
   U255 : INV3 port map( A => n144, Q => n441);
   U256 : NOR21 port map( A => sig_out_local_count_9_port, B => 
                           sig_out_local_count_7_port, Q => n144);
   U257 : NAND31 port map( A => n168, B => n166, C => sig_state_2_port, Q => 
                           n122);
   U258 : NAND31 port map( A => sig_out_local_count_1_port, B => 
                           sig_out_local_count_12_port, C => 
                           sig_out_local_count_3_port, Q => n141);
   U259 : NAND22 port map( A => sig_out_local_count_8_port, B => 
                           sig_out_local_count_6_port, Q => n142);
   U260 : NOR21 port map( A => current_state_0_port, B => current_state_1_port,
                           Q => n93);
   U261 : NAND22 port map( A => current_state_2_port, B => n93, Q => n91);
   U262 : NAND41 port map( A => i_reset_n, B => current_state_0_port, C => n170
                           , D => n167, Q => N238);
   U263 : INV3 port map( A => i_reset_n, Q => n180);
   U264 : INV3 port map( A => n147, Q => n449);
   U265 : NAND22 port map( A => i_reg(29), B => i_reset_n, Q => n147);
   U266 : INV3 port map( A => n148, Q => n448);
   U267 : NAND22 port map( A => i_reg(28), B => i_reset_n, Q => n148);
   U268 : INV3 port map( A => n149, Q => n447);
   U269 : NAND22 port map( A => i_reg(27), B => i_reset_n, Q => n149);
   U270 : INV3 port map( A => n150, Q => n446);
   U271 : NAND22 port map( A => i_reg(26), B => i_reset_n, Q => n150);
   U272 : INV3 port map( A => n151, Q => n445);
   U273 : NAND22 port map( A => i_reg(25), B => i_reset_n, Q => n151);
   U274 : INV3 port map( A => n152, Q => n444);
   U275 : NAND22 port map( A => i_reg(24), B => i_reset_n, Q => n152);
   U276 : INV3 port map( A => n153, Q => n443);
   U277 : NAND22 port map( A => i_reg(23), B => i_reset_n, Q => n153);
   U278 : INV3 port map( A => n96, Q => n474);
   U279 : NAND22 port map( A => i_reset_n, B => i_reg(22), Q => n96);
   U280 : INV3 port map( A => n145, Q => n451);
   U281 : NAND22 port map( A => i_reg(31), B => i_reset_n, Q => n145);
   U282 : INV3 port map( A => n146, Q => n450);
   U283 : NAND22 port map( A => i_reg(30), B => i_reset_n, Q => n146);
   U284 : INV3 port map( A => n97, Q => n473);
   U285 : NAND22 port map( A => i_reg(21), B => i_reset_n, Q => n97);
   U286 : INV3 port map( A => n98, Q => n472);
   U287 : NAND22 port map( A => i_reg(20), B => i_reset_n, Q => n98);
   U288 : INV3 port map( A => n99, Q => n471);
   U289 : NAND22 port map( A => i_reg(19), B => i_reset_n, Q => n99);
   U290 : INV3 port map( A => n100, Q => n470);
   U291 : NAND22 port map( A => i_reg(18), B => i_reset_n, Q => n100);
   U292 : INV3 port map( A => n101, Q => n469);
   U293 : NAND22 port map( A => i_reg(17), B => i_reset_n, Q => n101);
   U294 : INV3 port map( A => n102, Q => n468);
   U295 : NAND22 port map( A => i_reg(16), B => i_reset_n, Q => n102);
   U296 : INV3 port map( A => n103, Q => n467);
   U297 : NAND22 port map( A => i_reg(15), B => i_reset_n, Q => n103);
   U298 : INV3 port map( A => n104, Q => n466);
   U299 : NAND22 port map( A => i_reg(14), B => i_reset_n, Q => n104);
   U300 : INV3 port map( A => n105, Q => n465);
   U301 : NAND22 port map( A => i_reg(13), B => i_reset_n, Q => n105);
   U302 : INV3 port map( A => n106, Q => n464);
   U303 : NAND22 port map( A => i_reg(12), B => i_reset_n, Q => n106);
   U304 : INV3 port map( A => n107, Q => n463);
   U305 : NAND22 port map( A => i_reg(11), B => i_reset_n, Q => n107);
   U306 : INV3 port map( A => n108, Q => n462);
   U307 : NAND22 port map( A => i_reg(10), B => i_reset_n, Q => n108);
   U308 : INV3 port map( A => n109_port, Q => n461);
   U309 : NAND22 port map( A => i_reg(9), B => i_reset_n, Q => n109_port);
   U310 : INV3 port map( A => n110_port, Q => n460);
   U311 : NAND22 port map( A => i_reg(8), B => i_reset_n, Q => n110_port);
   U312 : INV3 port map( A => n111_port, Q => n459);
   U313 : NAND22 port map( A => i_reg(7), B => i_reset_n, Q => n111_port);
   U314 : INV3 port map( A => n112_port, Q => n458);
   U315 : NAND22 port map( A => i_reg(6), B => i_reset_n, Q => n112_port);
   U316 : INV3 port map( A => n113_port, Q => n457);
   U317 : NAND22 port map( A => i_reg(5), B => i_reset_n, Q => n113_port);
   U318 : INV3 port map( A => n114_port, Q => n456);
   U319 : NAND22 port map( A => i_reg(4), B => i_reset_n, Q => n114_port);
   U320 : INV3 port map( A => n115_port, Q => n455);
   U321 : NAND22 port map( A => i_reg(3), B => i_reset_n, Q => n115_port);
   U322 : INV3 port map( A => n116, Q => n454);
   U323 : NAND22 port map( A => i_reg(2), B => i_reset_n, Q => n116);
   U324 : INV3 port map( A => n117, Q => n453);
   U325 : NAND22 port map( A => i_reg(1), B => i_reset_n, Q => n117);
   U326 : INV3 port map( A => n118, Q => n452);
   U327 : NAND22 port map( A => i_reg(0), B => i_reset_n, Q => n118);
   U328 : LOGIC1 port map( Q => n478);
   U329 : LOGIC0 port map( Q => sig_cyclesTrame2_27);
   U330 : NOR20 port map( A => sub_120_cf_carry_14_port, B => N262, Q => n181);
   U331 : XNR20 port map( A => sub_120_cf_carry_14_port, B => N262, Q => 
                           sig_cyclesTrame3_14_port);
   U332 : CLKIN0 port map( A => n181, Q => sig_cyclesTrame3_15_port);
   U333 : NOR20 port map( A => sub_123_cf_carry_14_port, B => N247, Q => 
                           n182_port);
   U334 : XNR20 port map( A => sub_123_cf_carry_14_port, B => N247, Q => 
                           sig_cyclesTrame4_14_port);
   U335 : CLKIN0 port map( A => n182_port, Q => sig_cyclesTrame4_15_port);
   U336 : NOR20 port map( A => sub_117_cf_carry_14_port, B => N277, Q => n183);
   U337 : XNR20 port map( A => sub_117_cf_carry_14_port, B => N277, Q => 
                           sig_cyclesTrame2_14_port);
   U338 : CLKIN0 port map( A => n183, Q => sig_cyclesTrame2_15_port);
   U339 : XOR20 port map( A => n186, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port, Q =>
                           N71);
   U340 : CLKIN0 port map( A => n184, Q => N75);
   U341 : NAND20 port map( A => n157, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port, Q =>
                           n185);
   U342 : XOR20 port map( A => n157, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port, Q =>
                           N70);
   U343 : CLKIN0 port map( A => n185, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_15_port);
   U344 : NOR20 port map( A => sub_114_cf_carry_14_port, B => N292, Q => n186);
   U345 : NAND20 port map( A => N263, B => sub_120_cf_carry_13_port, Q => n187)
                           ;
   U346 : XOR20 port map( A => N263, B => sub_120_cf_carry_13_port, Q => 
                           sig_cyclesTrame3_13_port);
   U347 : CLKIN0 port map( A => n187, Q => sub_120_cf_carry_14_port);
   U348 : NAND20 port map( A => N264, B => sub_120_cf_carry_12_port, Q => n188)
                           ;
   U349 : XOR20 port map( A => N264, B => sub_120_cf_carry_12_port, Q => 
                           sig_cyclesTrame3_12_port);
   U350 : CLKIN0 port map( A => n188, Q => sub_120_cf_carry_13_port);
   U351 : NAND20 port map( A => N248, B => sub_123_cf_carry_13_port, Q => n189)
                           ;
   U352 : XOR20 port map( A => N248, B => sub_123_cf_carry_13_port, Q => 
                           sig_cyclesTrame4_13_port);
   U353 : CLKIN0 port map( A => n189, Q => sub_123_cf_carry_14_port);
   U354 : NAND20 port map( A => N249, B => sub_123_cf_carry_12_port, Q => 
                           n190_port);
   U355 : XOR20 port map( A => N249, B => sub_123_cf_carry_12_port, Q => 
                           sig_cyclesTrame4_12_port);
   U356 : CLKIN0 port map( A => n190_port, Q => sub_123_cf_carry_13_port);
   U357 : NAND20 port map( A => N278, B => sub_117_cf_carry_13_port, Q => n191)
                           ;
   U358 : XOR20 port map( A => N278, B => sub_117_cf_carry_13_port, Q => 
                           sig_cyclesTrame2_13_port);
   U359 : CLKIN0 port map( A => n191, Q => sub_117_cf_carry_14_port);
   U360 : NAND20 port map( A => N279, B => sub_117_cf_carry_12_port, Q => n192)
                           ;
   U361 : XOR20 port map( A => N279, B => sub_117_cf_carry_12_port, Q => 
                           sig_cyclesTrame2_12_port);
   U362 : CLKIN0 port map( A => n192, Q => sub_117_cf_carry_13_port);
   U363 : NAND20 port map( A => n163, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port, Q =>
                           n193);
   U364 : XOR20 port map( A => n163, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port, Q =>
                           N69);
   U365 : CLKIN0 port map( A => n193, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_14_port);
   U366 : NAND20 port map( A => n155, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port, Q =>
                           n194);
   U367 : XOR20 port map( A => n155, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port, Q =>
                           N68);
   U368 : CLKIN0 port map( A => n194, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_13_port);
   U369 : NAND20 port map( A => N293, B => sub_114_cf_carry_13_port, Q => n195)
                           ;
   U370 : CLKIN0 port map( A => n195, Q => sub_114_cf_carry_14_port);
   U371 : NAND20 port map( A => N294, B => sub_114_cf_carry_12_port, Q => n196)
                           ;
   U372 : CLKIN0 port map( A => n196, Q => sub_114_cf_carry_13_port);
   U373 : NAND20 port map( A => N265, B => sub_120_cf_carry_11_port, Q => 
                           n197_port);
   U374 : XOR20 port map( A => N265, B => sub_120_cf_carry_11_port, Q => 
                           sig_cyclesTrame3_11_port);
   U375 : CLKIN0 port map( A => n197_port, Q => sub_120_cf_carry_12_port);
   U376 : NAND20 port map( A => N250, B => sub_123_cf_carry_11_port, Q => n198)
                           ;
   U377 : XOR20 port map( A => N250, B => sub_123_cf_carry_11_port, Q => 
                           sig_cyclesTrame4_11_port);
   U378 : CLKIN0 port map( A => n198, Q => sub_123_cf_carry_12_port);
   U379 : NAND20 port map( A => N280, B => sub_117_cf_carry_11_port, Q => n199)
                           ;
   U380 : XOR20 port map( A => N280, B => sub_117_cf_carry_11_port, Q => 
                           sig_cyclesTrame2_11_port);
   U381 : CLKIN0 port map( A => n199, Q => sub_117_cf_carry_12_port);
   U382 : NAND20 port map( A => n160, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port, Q =>
                           n200);
   U383 : XOR20 port map( A => n160, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port, Q =>
                           N67);
   U384 : CLKIN0 port map( A => n200, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_12_port);
   U385 : NAND20 port map( A => N295, B => sub_114_cf_carry_11_port, Q => n201)
                           ;
   U386 : CLKIN0 port map( A => n201, Q => sub_114_cf_carry_12_port);
   U387 : NOR20 port map( A => sig_cyclesTrame4_1_port, B => 
                           sig_cyclesTrame3_1_port, Q => n202);
   U388 : XNR20 port map( A => sig_cyclesTrame4_1_port, B => 
                           sig_cyclesTrame3_1_port, Q => N17);
   U389 : CLKIN0 port map( A => n202, Q => 
                           add_2_root_sub_0_root_sub_235_cf_carry_2_port);
   U390 : NOR20 port map( A => sub_120_cf_carry_10_port, B => N266, Q => 
                           n203_port);
   U391 : XNR20 port map( A => sub_120_cf_carry_10_port, B => N266, Q => 
                           sig_cyclesTrame3_10_port);
   U392 : CLKIN0 port map( A => n203_port, Q => sub_120_cf_carry_11_port);
   U393 : NAND20 port map( A => N267, B => sub_120_cf_carry_9_port, Q => n204);
   U394 : XOR20 port map( A => N267, B => sub_120_cf_carry_9_port, Q => 
                           sig_cyclesTrame3_9_port);
   U395 : CLKIN0 port map( A => n204, Q => sub_120_cf_carry_10_port);
   U396 : NAND20 port map( A => N268, B => sub_120_cf_carry_8_port, Q => n205);
   U397 : XOR20 port map( A => N268, B => sub_120_cf_carry_8_port, Q => 
                           sig_cyclesTrame3_8_port);
   U398 : CLKIN0 port map( A => n205, Q => sub_120_cf_carry_9_port);
   U399 : NAND20 port map( A => N269, B => sub_120_cf_carry_7_port, Q => n206);
   U400 : XOR20 port map( A => N269, B => sub_120_cf_carry_7_port, Q => 
                           sig_cyclesTrame3_7_port);
   U401 : CLKIN0 port map( A => n206, Q => sub_120_cf_carry_8_port);
   U402 : NOR20 port map( A => sub_120_cf_carry_6_port, B => N270, Q => n207);
   U403 : XNR20 port map( A => sub_120_cf_carry_6_port, B => N270, Q => 
                           sig_cyclesTrame3_6_port);
   U404 : CLKIN0 port map( A => n207, Q => sub_120_cf_carry_7_port);
   U405 : NAND20 port map( A => N271, B => sub_120_cf_carry_5_port, Q => n208);
   U406 : XOR20 port map( A => N271, B => sub_120_cf_carry_5_port, Q => 
                           sig_cyclesTrame3_5_port);
   U407 : CLKIN0 port map( A => n208, Q => sub_120_cf_carry_6_port);
   U408 : NOR20 port map( A => sub_120_cf_carry_4_port, B => N272, Q => n209);
   U409 : XNR20 port map( A => sub_120_cf_carry_4_port, B => N272, Q => 
                           sig_cyclesTrame3_4_port);
   U410 : CLKIN0 port map( A => n209, Q => sub_120_cf_carry_5_port);
   U411 : NOR20 port map( A => sub_120_cf_carry_3_port, B => N273, Q => n210);
   U412 : XNR20 port map( A => sub_120_cf_carry_3_port, B => N273, Q => 
                           sig_cyclesTrame3_3_port);
   U413 : CLKIN0 port map( A => n210, Q => sub_120_cf_carry_4_port);
   U414 : NAND20 port map( A => N274, B => N275, Q => n211);
   U415 : XOR20 port map( A => N274, B => N275, Q => sig_cyclesTrame3_2_port);
   U416 : CLKIN0 port map( A => n211, Q => sub_120_cf_carry_3_port);
   U417 : NOR20 port map( A => sub_123_cf_carry_10_port, B => N251, Q => n212);
   U418 : XNR20 port map( A => sub_123_cf_carry_10_port, B => N251, Q => 
                           sig_cyclesTrame4_10_port);
   U419 : CLKIN0 port map( A => n212, Q => sub_123_cf_carry_11_port);
   U420 : NAND20 port map( A => N252, B => sub_123_cf_carry_9_port, Q => 
                           n213_port);
   U421 : XOR20 port map( A => N252, B => sub_123_cf_carry_9_port, Q => 
                           sig_cyclesTrame4_9_port);
   U422 : CLKIN0 port map( A => n213_port, Q => sub_123_cf_carry_10_port);
   U423 : NAND20 port map( A => N253, B => sub_123_cf_carry_8_port, Q => 
                           n214_port);
   U424 : XOR20 port map( A => N253, B => sub_123_cf_carry_8_port, Q => 
                           sig_cyclesTrame4_8_port);
   U425 : CLKIN0 port map( A => n214_port, Q => sub_123_cf_carry_9_port);
   U426 : NAND20 port map( A => N254, B => sub_123_cf_carry_7_port, Q => 
                           n215_port);
   U427 : XOR20 port map( A => N254, B => sub_123_cf_carry_7_port, Q => 
                           sig_cyclesTrame4_7_port);
   U428 : CLKIN0 port map( A => n215_port, Q => sub_123_cf_carry_8_port);
   U429 : NOR20 port map( A => sub_123_cf_carry_6_port, B => N255, Q => 
                           n216_port);
   U430 : XNR20 port map( A => sub_123_cf_carry_6_port, B => N255, Q => 
                           sig_cyclesTrame4_6_port);
   U431 : CLKIN0 port map( A => n216_port, Q => sub_123_cf_carry_7_port);
   U432 : NAND20 port map( A => N256, B => sub_123_cf_carry_5_port, Q => 
                           n217_port);
   U433 : XOR20 port map( A => N256, B => sub_123_cf_carry_5_port, Q => 
                           sig_cyclesTrame4_5_port);
   U434 : CLKIN0 port map( A => n217_port, Q => sub_123_cf_carry_6_port);
   U435 : NOR20 port map( A => sub_123_cf_carry_4_port, B => N257, Q => 
                           n218_port);
   U436 : XNR20 port map( A => sub_123_cf_carry_4_port, B => N257, Q => 
                           sig_cyclesTrame4_4_port);
   U437 : CLKIN0 port map( A => n218_port, Q => sub_123_cf_carry_5_port);
   U438 : NOR20 port map( A => sub_123_cf_carry_3_port, B => N258, Q => 
                           n219_port);
   U439 : XNR20 port map( A => sub_123_cf_carry_3_port, B => N258, Q => 
                           sig_cyclesTrame4_3_port);
   U440 : CLKIN0 port map( A => n219_port, Q => sub_123_cf_carry_4_port);
   U441 : NAND20 port map( A => N259, B => N260, Q => n220_port);
   U442 : XOR20 port map( A => N259, B => N260, Q => sig_cyclesTrame4_2_port);
   U443 : CLKIN0 port map( A => n220_port, Q => sub_123_cf_carry_3_port);
   U444 : NOR20 port map( A => sub_117_cf_carry_10_port, B => N281, Q => 
                           n221_port);
   U445 : XNR20 port map( A => sub_117_cf_carry_10_port, B => N281, Q => 
                           sig_cyclesTrame2_10_port);
   U446 : CLKIN0 port map( A => n221_port, Q => sub_117_cf_carry_11_port);
   U447 : NAND20 port map( A => N282, B => sub_117_cf_carry_9_port, Q => 
                           n222_port);
   U448 : XOR20 port map( A => N282, B => sub_117_cf_carry_9_port, Q => 
                           sig_cyclesTrame2_9_port);
   U449 : CLKIN0 port map( A => n222_port, Q => sub_117_cf_carry_10_port);
   U450 : NAND20 port map( A => N283, B => sub_117_cf_carry_8_port, Q => 
                           n223_port);
   U451 : XOR20 port map( A => N283, B => sub_117_cf_carry_8_port, Q => 
                           sig_cyclesTrame2_8_port);
   U452 : CLKIN0 port map( A => n223_port, Q => sub_117_cf_carry_9_port);
   U453 : NAND20 port map( A => N284, B => sub_117_cf_carry_7_port, Q => 
                           n224_port);
   U454 : XOR20 port map( A => N284, B => sub_117_cf_carry_7_port, Q => 
                           sig_cyclesTrame2_7_port);
   U455 : CLKIN0 port map( A => n224_port, Q => sub_117_cf_carry_8_port);
   U456 : NOR20 port map( A => sub_117_cf_carry_6_port, B => N285, Q => 
                           n225_port);
   U457 : XNR20 port map( A => sub_117_cf_carry_6_port, B => N285, Q => 
                           sig_cyclesTrame2_6_port);
   U458 : CLKIN0 port map( A => n225_port, Q => sub_117_cf_carry_7_port);
   U459 : NAND20 port map( A => N286, B => sub_117_cf_carry_5_port, Q => 
                           n226_port);
   U460 : XOR20 port map( A => N286, B => sub_117_cf_carry_5_port, Q => 
                           sig_cyclesTrame2_5_port);
   U461 : CLKIN0 port map( A => n226_port, Q => sub_117_cf_carry_6_port);
   U462 : NOR20 port map( A => sub_117_cf_carry_4_port, B => N287, Q => 
                           n227_port);
   U463 : XNR20 port map( A => sub_117_cf_carry_4_port, B => N287, Q => 
                           sig_cyclesTrame2_4_port);
   U464 : CLKIN0 port map( A => n227_port, Q => sub_117_cf_carry_5_port);
   U465 : NOR20 port map( A => sub_117_cf_carry_3_port, B => N288, Q => 
                           n228_port);
   U466 : XNR20 port map( A => sub_117_cf_carry_3_port, B => N288, Q => 
                           sig_cyclesTrame2_3_port);
   U467 : CLKIN0 port map( A => n228_port, Q => sub_117_cf_carry_4_port);
   U468 : NAND20 port map( A => N289, B => N290, Q => n229_port);
   U469 : XOR20 port map( A => N289, B => N290, Q => sig_cyclesTrame2_2_port);
   U470 : CLKIN0 port map( A => n229_port, Q => sub_117_cf_carry_3_port);
   U471 : NAND20 port map( A => n164, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port, Q =>
                           n230_port);
   U472 : XOR20 port map( A => n164, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port, Q =>
                           N66);
   U473 : CLKIN0 port map( A => n230_port, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_11_port);
   U474 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_9_port, B
                           => n158, Q => n231_port);
   U475 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_9_port, B
                           => n158, Q => N65);
   U476 : CLKIN0 port map( A => n231_port, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_10_port);
   U477 : NAND20 port map( A => n161, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port, Q => 
                           n232_port);
   U478 : XOR20 port map( A => n161, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port, Q => 
                           N64);
   U479 : CLKIN0 port map( A => n232_port, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_9_port);
   U480 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_7_port, B
                           => n156, Q => n233);
   U481 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_7_port, B
                           => n156, Q => N63);
   U482 : CLKIN0 port map( A => n233, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_8_port);
   U483 : NOR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_6_port, B
                           => n154, Q => n234);
   U484 : XNR20 port map( A => sub_3_root_sub_0_root_sub_235_cf_carry_6_port, B
                           => n154, Q => N62);
   U485 : CLKIN0 port map( A => n234, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_7_port);
   U486 : NAND20 port map( A => n165, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port, Q => 
                           n235);
   U487 : XOR20 port map( A => n165, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port, Q => 
                           N61);
   U488 : CLKIN0 port map( A => n235, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_6_port);
   U489 : NAND20 port map( A => n159, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port, Q => 
                           n236);
   U490 : XOR20 port map( A => n159, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port, Q => 
                           N60);
   U491 : CLKIN0 port map( A => n236, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_5_port);
   U492 : NAND20 port map( A => n162, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port, Q => 
                           n237);
   U493 : XOR20 port map( A => n162, B => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port, Q => 
                           N59);
   U494 : CLKIN0 port map( A => n237, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_4_port);
   U495 : NAND20 port map( A => n249_port, B => n248_port, Q => n238_port);
   U496 : XOR20 port map( A => n249_port, B => n248_port, Q => N58);
   U497 : CLKIN0 port map( A => n238_port, Q => 
                           sub_3_root_sub_0_root_sub_235_cf_carry_3_port);
   U498 : NOR20 port map( A => sub_114_cf_carry_10_port, B => N296, Q => n239);
   U499 : CLKIN0 port map( A => n239, Q => sub_114_cf_carry_11_port);
   U500 : NAND20 port map( A => N297, B => sub_114_cf_carry_9_port, Q => n240);
   U501 : CLKIN0 port map( A => n240, Q => sub_114_cf_carry_10_port);
   U502 : NAND20 port map( A => N298, B => sub_114_cf_carry_8_port, Q => n241);
   U503 : CLKIN0 port map( A => n241, Q => sub_114_cf_carry_9_port);
   U504 : NAND20 port map( A => N299, B => sub_114_cf_carry_7_port, Q => n242);
   U505 : CLKIN0 port map( A => n242, Q => sub_114_cf_carry_8_port);
   U506 : NOR20 port map( A => sub_114_cf_carry_6_port, B => N300, Q => n243);
   U507 : CLKIN0 port map( A => n243, Q => sub_114_cf_carry_7_port);
   U508 : NAND20 port map( A => N301, B => sub_114_cf_carry_5_port, Q => n244);
   U509 : CLKIN0 port map( A => n244, Q => sub_114_cf_carry_6_port);
   U510 : NOR20 port map( A => sub_114_cf_carry_4_port, B => N302, Q => n245);
   U511 : CLKIN0 port map( A => n245, Q => sub_114_cf_carry_5_port);
   U512 : NOR20 port map( A => sub_114_cf_carry_3_port, B => N303, Q => n246);
   U513 : CLKIN0 port map( A => n246, Q => sub_114_cf_carry_4_port);
   U514 : NAND20 port map( A => N304, B => N305, Q => n247_port);
   U515 : XOR20 port map( A => N304, B => N305, Q => sig_cyclesTrame1_2_port);
   U516 : CLKIN0 port map( A => n247_port, Q => sub_114_cf_carry_3_port);
   U517 : OAI220 port map( A => n157, B => sig_out_local_count_14_port, C => 
                           n163, D => sig_out_local_count_13_port, Q => 
                           n253_port);
   U518 : NOR20 port map( A => n186, B => sig_out_local_count_15_port, Q => 
                           n252_port);
   U519 : OAI220 port map( A => n155, B => sig_out_local_count_12_port, C => 
                           n160, D => sig_out_local_count_11_port, Q => 
                           n251_port);
   U520 : OAI220 port map( A => n164, B => sig_out_local_count_10_port, C => 
                           n158, D => sig_out_local_count_9_port, Q => 
                           n250_port);
   U521 : NOR40 port map( A => n253_port, B => n252_port, C => n251_port, D => 
                           n250_port, Q => n254_port);
   U522 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => n248_port, D => 
                           sig_out_local_count_0_port, Q => n256_port);
   U523 : OAI220 port map( A => n159, B => sig_out_local_count_4_port, C => 
                           n162, D => sig_out_local_count_3_port, Q => 
                           n255_port);
   U524 : AOI2110 port map( A => n346, B => sig_cyclesTrame1_2_port, C => 
                           n256_port, D => n255_port, Q => n257_port);
   U525 : OAI220 port map( A => sig_out_local_count_5_port, B => n165, C => 
                           sig_out_local_count_6_port, D => n154, Q => 
                           n259_port);
   U526 : OAI220 port map( A => sig_out_local_count_7_port, B => n156, C => 
                           sig_out_local_count_8_port, D => n161, Q => 
                           n258_port);
   U527 : NOR40 port map( A => n277_port, B => n276, C => n259_port, D => 
                           n258_port, Q => n260_port);
   U528 : AOI220 port map( A => sig_out_local_count_8_port, B => n161, C => 
                           sig_out_local_count_9_port, D => n158, Q => 
                           n265_port);
   U529 : AOI220 port map( A => sig_out_local_count_6_port, B => n154, C => 
                           sig_out_local_count_7_port, D => n156, Q => 
                           n264_port);
   U530 : AOI220 port map( A => sig_out_local_count_4_port, B => n159, C => 
                           sig_out_local_count_5_port, D => n165, Q => 
                           n263_port);
   U531 : AOI220 port map( A => n172, B => n249_port, C => 
                           sig_out_local_count_3_port, D => n162, Q => 
                           n262_port);
   U532 : NAND40 port map( A => n265_port, B => n264_port, C => n263_port, D =>
                           n262_port, Q => n271_port);
   U533 : AOI220 port map( A => sig_out_local_count_14_port, B => n157, C => 
                           sig_out_local_count_15_port, D => n186, Q => 
                           n269_port);
   U534 : AOI220 port map( A => sig_out_local_count_12_port, B => n155, C => 
                           sig_out_local_count_13_port, D => n163, Q => 
                           n267_port);
   U535 : AOI220 port map( A => sig_out_local_count_10_port, B => n164, C => 
                           sig_out_local_count_11_port, D => n160, Q => 
                           n266_port);
   U536 : NAND40 port map( A => n269_port, B => n268_port, C => n267_port, D =>
                           n266_port, Q => n270_port);
   U537 : OAI210 port map( A => n271_port, B => n270_port, C => n304_port, Q =>
                           n272_port);
   U538 : NOR40 port map( A => n274_port, B => n273_port, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N182);
   U539 : NOR20 port map( A => n260_port, B => n173, Q => n261);
   U540 : NOR20 port map( A => n174, B => n278_port, Q => n274_port);
   U541 : NAND20 port map( A => sig_out_local_count_1_port, B => n248_port, Q 
                           => n268_port);
   U542 : NAND30 port map( A => n275_port, B => n272_port, C => n304_port, Q =>
                           n273_port);
   U543 : OAI220 port map( A => n318_port, B => sig_out_local_count_14_port, C 
                           => n317_port, D => sig_out_local_count_13_port, Q =>
                           n282_port);
   U544 : NOR20 port map( A => n183, B => sig_out_local_count_15_port, Q => 
                           n281_port);
   U545 : OAI220 port map( A => n316_port, B => sig_out_local_count_12_port, C 
                           => n315_port, D => sig_out_local_count_11_port, Q =>
                           n280_port);
   U546 : OAI220 port map( A => n314_port, B => sig_out_local_count_10_port, C 
                           => n313_port, D => sig_out_local_count_9_port, Q => 
                           n279_port);
   U547 : NOR40 port map( A => n282_port, B => n281_port, C => n280_port, D => 
                           n279_port, Q => n283_port);
   U548 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N290, D => 
                           sig_out_local_count_0_port, Q => n285_port);
   U549 : OAI220 port map( A => n307, B => sig_out_local_count_4_port, C => 
                           n306, D => sig_out_local_count_3_port, Q => 
                           n284_port);
   U550 : AOI2110 port map( A => n346, B => sig_cyclesTrame2_2_port, C => 
                           n285_port, D => n284_port, Q => n286_port);
   U551 : OAI220 port map( A => sig_out_local_count_5_port, B => n309_port, C 
                           => sig_out_local_count_6_port, D => n310_port, Q => 
                           n288_port);
   U552 : OAI220 port map( A => sig_out_local_count_7_port, B => n311_port, C 
                           => sig_out_local_count_8_port, D => n312_port, Q => 
                           n287_port);
   U553 : NOR40 port map( A => n319_port, B => n308, C => n288_port, D => 
                           n287_port, Q => n289_port);
   U554 : AOI220 port map( A => sig_out_local_count_8_port, B => n312_port, C 
                           => sig_out_local_count_9_port, D => n313_port, Q => 
                           n294_port);
   U555 : AOI220 port map( A => sig_out_local_count_6_port, B => n310_port, C 
                           => sig_out_local_count_7_port, D => n311_port, Q => 
                           n293_port);
   U556 : AOI220 port map( A => sig_out_local_count_4_port, B => n307, C => 
                           sig_out_local_count_5_port, D => n309_port, Q => 
                           n292_port);
   U557 : AOI220 port map( A => n172, B => n305_port, C => 
                           sig_out_local_count_3_port, D => n306, Q => n291);
   U558 : NAND40 port map( A => n294_port, B => n293_port, C => n292_port, D =>
                           n291, Q => n300_port);
   U559 : AOI220 port map( A => sig_out_local_count_14_port, B => n318_port, C 
                           => sig_out_local_count_15_port, D => n183, Q => 
                           n298_port);
   U560 : AOI220 port map( A => sig_out_local_count_12_port, B => n316_port, C 
                           => sig_out_local_count_13_port, D => n317_port, Q =>
                           n296_port);
   U561 : AOI220 port map( A => sig_out_local_count_10_port, B => n314_port, C 
                           => sig_out_local_count_11_port, D => n315_port, Q =>
                           n295_port);
   U562 : NAND40 port map( A => n298_port, B => n297_port, C => n296_port, D =>
                           n295_port, Q => n299_port);
   U563 : OAI210 port map( A => n300_port, B => n299_port, C => n304_port, Q =>
                           n301_port);
   U564 : NOR40 port map( A => n303_port, B => n302_port, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N190);
   U565 : NOR20 port map( A => n289_port, B => n173, Q => n290_port);
   U566 : NOR20 port map( A => n174, B => n320_port, Q => n303_port);
   U567 : NAND20 port map( A => sig_out_local_count_1_port, B => N290, Q => 
                           n297_port);
   U568 : NAND30 port map( A => n275_port, B => n301_port, C => n304_port, Q =>
                           n302_port);
   U569 : OAI220 port map( A => n360, B => sig_out_local_count_14_port, C => 
                           n359, D => sig_out_local_count_13_port, Q => 
                           n324_port);
   U570 : NOR20 port map( A => n181, B => sig_out_local_count_15_port, Q => 
                           n323_port);
   U571 : OAI220 port map( A => n358, B => sig_out_local_count_12_port, C => 
                           n357, D => sig_out_local_count_11_port, Q => 
                           n322_port);
   U572 : OAI220 port map( A => n356, B => sig_out_local_count_10_port, C => 
                           n355, D => sig_out_local_count_9_port, Q => 
                           n321_port);
   U573 : NOR40 port map( A => n324_port, B => n323_port, C => n322_port, D => 
                           n321_port, Q => n325_port);
   U574 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N275, D => 
                           sig_out_local_count_0_port, Q => n327);
   U575 : OAI220 port map( A => n349, B => sig_out_local_count_4_port, C => 
                           n348, D => sig_out_local_count_3_port, Q => n326);
   U576 : AOI2110 port map( A => n346, B => sig_cyclesTrame3_2_port, C => n327,
                           D => n326, Q => n328);
   U577 : OAI220 port map( A => sig_out_local_count_5_port, B => n351, C => 
                           sig_out_local_count_6_port, D => n352, Q => n330);
   U578 : OAI220 port map( A => sig_out_local_count_7_port, B => n353, C => 
                           sig_out_local_count_8_port, D => n354, Q => n329);
   U579 : NOR40 port map( A => n361, B => n350, C => n330, D => n329, Q => n331
                           );
   U580 : AOI220 port map( A => sig_out_local_count_8_port, B => n354, C => 
                           sig_out_local_count_9_port, D => n355, Q => n336);
   U581 : AOI220 port map( A => sig_out_local_count_6_port, B => n352, C => 
                           sig_out_local_count_7_port, D => n353, Q => n335);
   U582 : AOI220 port map( A => sig_out_local_count_4_port, B => n349, C => 
                           sig_out_local_count_5_port, D => n351, Q => n334);
   U583 : AOI220 port map( A => n172, B => n347, C => 
                           sig_out_local_count_3_port, D => n348, Q => n333);
   U584 : NAND40 port map( A => n336, B => n335, C => n334, D => n333, Q => 
                           n342);
   U585 : AOI220 port map( A => sig_out_local_count_14_port, B => n360, C => 
                           sig_out_local_count_15_port, D => n181, Q => n340);
   U586 : AOI220 port map( A => sig_out_local_count_12_port, B => n358, C => 
                           sig_out_local_count_13_port, D => n359, Q => n338);
   U587 : AOI220 port map( A => sig_out_local_count_10_port, B => n356, C => 
                           sig_out_local_count_11_port, D => n357, Q => n337);
   U588 : NAND40 port map( A => n340, B => n339, C => n338, D => n337, Q => 
                           n341);
   U589 : OAI210 port map( A => n342, B => n341, C => n304_port, Q => n343);
   U590 : NOR40 port map( A => n345, B => n344, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N197);
   U591 : NOR20 port map( A => n331, B => n173, Q => n332);
   U592 : NOR20 port map( A => n174, B => n362, Q => n345);
   U593 : NAND20 port map( A => sig_out_local_count_1_port, B => N275, Q => 
                           n339);
   U594 : NAND30 port map( A => n275_port, B => n343, C => n304_port, Q => n344
                           );
   U595 : OAI220 port map( A => n401, B => sig_out_local_count_14_port, C => 
                           n400, D => sig_out_local_count_13_port, Q => n366);
   U596 : NOR20 port map( A => n182_port, B => sig_out_local_count_15_port, Q 
                           => n365);
   U597 : OAI220 port map( A => n399, B => sig_out_local_count_12_port, C => 
                           n398, D => sig_out_local_count_11_port, Q => n364);
   U598 : OAI220 port map( A => n397, B => sig_out_local_count_10_port, C => 
                           n396, D => sig_out_local_count_9_port, Q => n363);
   U599 : NOR40 port map( A => n366, B => n365, C => n364, D => n363, Q => n367
                           );
   U600 : AOI220 port map( A => sig_out_local_count_0_port, B => 
                           sig_out_local_count_1_port, C => N260, D => 
                           sig_out_local_count_0_port, Q => n369);
   U601 : OAI220 port map( A => n390, B => sig_out_local_count_4_port, C => 
                           n389, D => sig_out_local_count_3_port, Q => n368);
   U602 : AOI2110 port map( A => n346, B => sig_cyclesTrame4_2_port, C => n369,
                           D => n368, Q => n370);
   U603 : OAI220 port map( A => sig_out_local_count_5_port, B => n392, C => 
                           sig_out_local_count_6_port, D => n393, Q => n372);
   U604 : OAI220 port map( A => sig_out_local_count_7_port, B => n394, C => 
                           sig_out_local_count_8_port, D => n395, Q => n371);
   U605 : NOR40 port map( A => n402, B => n391, C => n372, D => n371, Q => n373
                           );
   U606 : AOI220 port map( A => sig_out_local_count_8_port, B => n395, C => 
                           sig_out_local_count_9_port, D => n396, Q => n378);
   U607 : AOI220 port map( A => sig_out_local_count_6_port, B => n393, C => 
                           sig_out_local_count_7_port, D => n394, Q => n377);
   U608 : AOI220 port map( A => sig_out_local_count_4_port, B => n390, C => 
                           sig_out_local_count_5_port, D => n392, Q => n376);
   U609 : AOI220 port map( A => n172, B => n388, C => 
                           sig_out_local_count_3_port, D => n389, Q => n375);
   U610 : NAND40 port map( A => n378, B => n377, C => n376, D => n375, Q => 
                           n384);
   U611 : AOI220 port map( A => sig_out_local_count_14_port, B => n401, C => 
                           sig_out_local_count_15_port, D => n182_port, Q => 
                           n382);
   U612 : AOI220 port map( A => sig_out_local_count_12_port, B => n399, C => 
                           sig_out_local_count_13_port, D => n400, Q => n380);
   U613 : AOI220 port map( A => sig_out_local_count_10_port, B => n397, C => 
                           sig_out_local_count_11_port, D => n398, Q => n379);
   U614 : NAND40 port map( A => n382, B => n381, C => n380, D => n379, Q => 
                           n383);
   U615 : OAI210 port map( A => n384, B => n383, C => n304_port, Q => n385);
   U616 : NOR40 port map( A => n387, B => n386, C => 
                           sig_out_local_count_19_port, D => 
                           sig_out_local_count_18_port, Q => N203);
   U617 : NOR20 port map( A => n373, B => n173, Q => n374);
   U618 : NOR20 port map( A => n174, B => n403, Q => n387);
   U619 : NAND20 port map( A => sig_out_local_count_1_port, B => N260, Q => 
                           n381);
   U620 : NAND30 port map( A => n275_port, B => n385, C => n304_port, Q => n386
                           );
   U621 : XNR20 port map( A => N222, B => sig_out_local_count_10_port, Q => 
                           n406);
   U622 : XNR20 port map( A => N221, B => sig_out_local_count_9_port, Q => n405
                           );
   U623 : XNR20 port map( A => N223, B => sig_out_local_count_11_port, Q => 
                           n404);
   U624 : NAND30 port map( A => n406, B => n405, C => n404, Q => n417);
   U625 : XNR20 port map( A => N225, B => sig_out_local_count_13_port, Q => 
                           n408);
   U626 : XNR20 port map( A => N224, B => sig_out_local_count_12_port, Q => 
                           n407);
   U627 : NAND20 port map( A => n408, B => n407, Q => n416);
   U628 : XNR20 port map( A => N227, B => sig_out_local_count_15_port, Q => 
                           n411);
   U629 : XNR20 port map( A => N226, B => sig_out_local_count_14_port, Q => 
                           n410);
   U630 : XNR20 port map( A => N228, B => n173, Q => n409);
   U631 : NAND30 port map( A => n411, B => n410, C => n409, Q => n415);
   U632 : XNR20 port map( A => N230, B => sig_out_local_count_18_port, Q => 
                           n413);
   U633 : XNR20 port map( A => N229, B => n174, Q => n412);
   U634 : NAND20 port map( A => n413, B => n412, Q => n414);
   U635 : NOR40 port map( A => n417, B => n416, C => n415, D => n414, Q => n418
                           );
   U636 : AOI220 port map( A => n434, B => n433, C => n433, D => N213, Q => 
                           n419);
   U637 : XNR20 port map( A => N231, B => sig_out_local_count_19_port, Q => 
                           n423);
   U638 : XOR20 port map( A => N214, B => n172, Q => n421);
   U639 : XOR20 port map( A => N215, B => sig_out_local_count_3_port, Q => n420
                           );
   U640 : NOR20 port map( A => n421, B => n420, Q => n422);
   U641 : NAND40 port map( A => n435, B => n424, C => n423, D => n422, Q => 
                           n432);
   U642 : XNR20 port map( A => N217, B => sig_out_local_count_5_port, Q => n427
                           );
   U643 : XNR20 port map( A => N216, B => sig_out_local_count_4_port, Q => n426
                           );
   U644 : XNR20 port map( A => N218, B => sig_out_local_count_6_port, Q => n425
                           );
   U645 : NAND30 port map( A => n427, B => n426, C => n425, Q => n431);
   U646 : XNR20 port map( A => N220, B => sig_out_local_count_8_port, Q => n429
                           );
   U647 : XNR20 port map( A => N219, B => sig_out_local_count_7_port, Q => n428
                           );
   U648 : NAND20 port map( A => n429, B => n428, Q => n430);
   U649 : NOR40 port map( A => n436, B => n432, C => n431, D => n430, Q => N232
                           );

end SYN_rtl;
