-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Full Version"

-- DATE "01/08/2018 12:14:47"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP_D5M_IP IS
    PORT (
	CLOCK_50 : IN std_logic;
	Ext_Clock : IN std_logic;
	CCD_FVAL : IN std_logic;
	CCD_LVAL : IN std_logic;
	CCD_PIXCLK : IN std_logic;
	I2C_SCLK : BUFFER std_logic;
	I2C_SDAT : BUFFER std_logic;
	CCD_DATA : IN std_logic_vector(11 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	CCD_MCCLK : BUFFER std_logic;
	TRIGGER : BUFFER std_logic;
	RESETn : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_CLK : BUFFER std_logic;
	VGA_BLANK_N : BUFFER std_logic;
	VGA_SYNC_N : BUFFER std_logic;
	tempo_flag : BUFFER std_logic;
	servo1 : BUFFER std_logic;
	servo2 : BUFFER std_logic
	);
END TOP_D5M_IP;

-- Design Ports Information
-- CCD_DATA[0]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[1]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[9]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_DATA[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_MCCLK	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRIGGER	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETn	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo_flag	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo1	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- servo2	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_PIXCLK	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ext_Clock	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_FVAL	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CCD_LVAL	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP_D5M_IP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Ext_Clock : std_logic;
SIGNAL ww_CCD_FVAL : std_logic;
SIGNAL ww_CCD_LVAL : std_logic;
SIGNAL ww_CCD_PIXCLK : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_CCD_DATA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CCD_MCCLK : std_logic;
SIGNAL ww_TRIGGER : std_logic;
SIGNAL ww_RESETn : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_tempo_flag : std_logic;
SIGNAL ww_servo1 : std_logic;
SIGNAL ww_servo2 : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CCD_DATA[0]~input_o\ : std_logic;
SIGNAL \CCD_DATA[1]~input_o\ : std_logic;
SIGNAL \CCD_DATA[2]~input_o\ : std_logic;
SIGNAL \CCD_DATA[3]~input_o\ : std_logic;
SIGNAL \CCD_DATA[4]~input_o\ : std_logic;
SIGNAL \CCD_DATA[5]~input_o\ : std_logic;
SIGNAL \CCD_DATA[6]~input_o\ : std_logic;
SIGNAL \CCD_DATA[7]~input_o\ : std_logic;
SIGNAL \CCD_DATA[8]~input_o\ : std_logic;
SIGNAL \CCD_DATA[9]~input_o\ : std_logic;
SIGNAL \CCD_DATA[10]~input_o\ : std_logic;
SIGNAL \CCD_DATA[11]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \I2C_SCLK~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~61_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~122\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~117_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|u2|Cont[20]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~118\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~114\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~94\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~90\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~86\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~110\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~106\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~102\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Cont[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~10\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~34\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~30\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~26\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~22\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~18\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~14\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~82\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~78\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~74\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~70\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~66\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~62\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~58\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~54\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~50\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~46\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~42\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~38\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~6\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~2\ : std_logic;
SIGNAL \b2v_inst|u2|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst|u2|oRST_2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|oRST_2~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~2\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~26\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~22\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~18\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~14\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~10\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~6\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~50\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~46\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~42\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~38\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~34\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~30\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~97_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~98\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~93_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~94\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~89_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~90\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~85_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~86\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~81_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|combo_cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~82\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~77_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Equal4~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~78\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~73_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~74\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~69_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|combo_cnt[21]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~70\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~65_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|combo_cnt[21]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~66\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~61_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~62\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~57_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|combo_cnt[24]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~58\ : std_logic;
SIGNAL \b2v_inst|u8|Add2~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|combo_cnt[24]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Equal4~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Equal4~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Equal4~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|i2c_reset~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|i2c_reset~combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~14\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~18\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~22\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~26\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~30\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~38\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~34\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~2\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~54\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~50\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~46\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan2~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan2~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~62\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~57_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~58\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~6\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~10\ : std_logic;
SIGNAL \b2v_inst|u8|Add3~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mI2C_CTRL_CLK~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mI2C_CTRL_CLK~q\ : std_logic;
SIGNAL \b2v_inst|u8|Add4~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[4]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[5]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|LessThan3~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mI2C_GO~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~22\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~26\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~5_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|END~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~18\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~14\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~10\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~6\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|END~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|END~q\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK3~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK3~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK3~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK3~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK4~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[23]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK4~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK4~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK4~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK2~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK2~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK2~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK1~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ACK~combout\ : std_logic;
SIGNAL \b2v_inst|u8|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mSetup_ST.0000~q\ : std_logic;
SIGNAL \b2v_inst|u8|mSetup_ST.0001~q\ : std_logic;
SIGNAL \b2v_inst|u8|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|mSetup_ST~12_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mSetup_ST.0010~q\ : std_logic;
SIGNAL \b2v_inst|u8|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mI2C_GO~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~7_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD_COUNTER~6_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SCLK~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SCLK~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|I2C_SCLK~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Equal4~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|mI2C_DATA[23]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[23]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[23]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[23]~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SDO~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~13_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~20_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~42\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~15_combout\ : std_logic;
SIGNAL \b2v_inst|u8|always1~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~38\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~14_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~34\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~11_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~22\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~9_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~6_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~54\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~19_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~50\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~18_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~46\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~17_combout\ : std_logic;
SIGNAL \b2v_inst|u8|always1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|always1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[15]~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~14\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~8_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~10\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~7_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~6\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~5_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~2\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~13_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~30\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~12_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~26\ : std_logic;
SIGNAL \b2v_inst|u8|Add1~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure~10_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux8~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \rtl~51_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux14~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux13~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux16~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux10~0_combout\ : std_logic;
SIGNAL \rtl~47_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[14]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux4~0_combout\ : std_logic;
SIGNAL \rtl~55_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux11~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~6_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux19~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SD[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux18~0_combout\ : std_logic;
SIGNAL \rtl~43_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~8_combout\ : std_logic;
SIGNAL \b2v_inst|u8|senosr_exposure[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux23~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|Mux22~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~7_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|Mux0~9_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SDO~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|SDO~q\ : std_logic;
SIGNAL \b2v_inst|rClk[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|oRST_1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u2|oRST_1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u2|oRST_1~q\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|fb_clkin\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk\ : std_logic;
SIGNAL \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst2|Add1~37_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~14\ : std_logic;
SIGNAL \b2v_inst2|Add1~9_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~22\ : std_logic;
SIGNAL \b2v_inst2|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~30\ : std_logic;
SIGNAL \b2v_inst2|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~34\ : std_logic;
SIGNAL \b2v_inst2|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~26\ : std_logic;
SIGNAL \b2v_inst2|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~2\ : std_logic;
SIGNAL \b2v_inst2|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst2|process_0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Add0~38\ : std_logic;
SIGNAL \b2v_inst2|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~18\ : std_logic;
SIGNAL \b2v_inst2|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~14\ : std_logic;
SIGNAL \b2v_inst2|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add0~10\ : std_logic;
SIGNAL \b2v_inst2|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst2|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst2|Add1~10\ : std_logic;
SIGNAL \b2v_inst2|Add1~5_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~6\ : std_logic;
SIGNAL \b2v_inst2|Add1~1_sumout\ : std_logic;
SIGNAL \b2v_inst2|process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst2|process_0~3_combout\ : std_logic;
SIGNAL \b2v_inst2|Add1~38\ : std_logic;
SIGNAL \b2v_inst2|Add1~33_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~34\ : std_logic;
SIGNAL \b2v_inst2|Add1~29_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~30\ : std_logic;
SIGNAL \b2v_inst2|Add1~25_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~26\ : std_logic;
SIGNAL \b2v_inst2|Add1~21_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~22\ : std_logic;
SIGNAL \b2v_inst2|Add1~17_sumout\ : std_logic;
SIGNAL \b2v_inst2|Add1~18\ : std_logic;
SIGNAL \b2v_inst2|Add1~13_sumout\ : std_logic;
SIGNAL \b2v_inst2|process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|VSYNC~q\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst2|HSYNC~q\ : std_logic;
SIGNAL \CCD_PIXCLK~input_o\ : std_logic;
SIGNAL \CCD_PIXCLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~1_sumout\ : std_logic;
SIGNAL \CCD_FVAL~input_o\ : std_logic;
SIGNAL \b2v_inst|rCCD_FVAL~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|rCCD_FVAL~q\ : std_logic;
SIGNAL \b2v_inst|u3|Pre_FVAL~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|u3|mSTART~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|mSTART~q\ : std_logic;
SIGNAL \b2v_inst|u3|mCCD_FVAL~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|mCCD_FVAL~q\ : std_logic;
SIGNAL \CCD_LVAL~input_o\ : std_logic;
SIGNAL \b2v_inst|rCCD_LVAL~q\ : std_logic;
SIGNAL \b2v_inst|u3|mCCD_LVAL~q\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u3|X_Cont[7]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u3|X_Cont[8]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|X_Cont[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~10\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~18\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~22\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~26\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~30\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~34\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~14\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~6\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~42\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~38\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~2\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~46\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~62\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~50\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~58\ : std_logic;
SIGNAL \b2v_inst|u3|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u3|X_Cont[10]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u3|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u3|Y_Cont[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~2\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~6\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~10\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~14\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~18\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~22\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~26\ : std_logic;
SIGNAL \b2v_inst|u3|Add1~29_sumout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|g_bout[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|IMGY_out~0_combout\ : std_logic;
SIGNAL \b2v_inst2|IMG~1_combout\ : std_logic;
SIGNAL \b2v_inst2|IMG~0_combout\ : std_logic;
SIGNAL \b2v_inst2|IMG~2_combout\ : std_logic;
SIGNAL \Ext_Clock~input_o\ : std_logic;
SIGNAL \Ext_Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst10|Add0~13_sumout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \b2v_inst10|Add0~10\ : std_logic;
SIGNAL \b2v_inst10|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst10|count_pwm[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~18\ : std_logic;
SIGNAL \b2v_inst10|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add0~26\ : std_logic;
SIGNAL \b2v_inst10|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst10|LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst10|pwm_number[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Pwm~0_combout\ : std_logic;
SIGNAL \b2v_inst10|count_pwm[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~6\ : std_logic;
SIGNAL \b2v_inst10|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add0~2\ : std_logic;
SIGNAL \b2v_inst10|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add0~30\ : std_logic;
SIGNAL \b2v_inst10|Add0~17_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst10|LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst10|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst10|etat.pwm_high_s~q\ : std_logic;
SIGNAL \b2v_inst10|Selector10~1_combout\ : std_logic;
SIGNAL \b2v_inst10|etat.pwm_low_s~q\ : std_logic;
SIGNAL \b2v_inst10|pwm_number[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|pwm_number[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst10|pwm_number[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst10|Pwm~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Add2~17_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~2\ : std_logic;
SIGNAL \b2v_inst10|Add2~81_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~82\ : std_logic;
SIGNAL \b2v_inst10|Add2~29_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~30\ : std_logic;
SIGNAL \b2v_inst10|Add2~25_sumout\ : std_logic;
SIGNAL \b2v_inst10|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Add2~26\ : std_logic;
SIGNAL \b2v_inst10|Add2~77_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~78\ : std_logic;
SIGNAL \b2v_inst10|Add2~45_sumout\ : std_logic;
SIGNAL \b2v_inst10|Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal2~3_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal2~1_combout\ : std_logic;
SIGNAL \b2v_inst10|cnt[4]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Add2~18\ : std_logic;
SIGNAL \b2v_inst10|Add2~33_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~34\ : std_logic;
SIGNAL \b2v_inst10|Add2~57_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~58\ : std_logic;
SIGNAL \b2v_inst10|Add2~53_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~54\ : std_logic;
SIGNAL \b2v_inst10|Add2~13_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~14\ : std_logic;
SIGNAL \b2v_inst10|Add2~21_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~22\ : std_logic;
SIGNAL \b2v_inst10|Add2~49_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~50\ : std_logic;
SIGNAL \b2v_inst10|Add2~69_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~70\ : std_logic;
SIGNAL \b2v_inst10|Add2~65_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~66\ : std_logic;
SIGNAL \b2v_inst10|Add2~61_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~62\ : std_logic;
SIGNAL \b2v_inst10|Add2~41_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~42\ : std_logic;
SIGNAL \b2v_inst10|Add2~37_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~38\ : std_logic;
SIGNAL \b2v_inst10|Add2~73_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~74\ : std_logic;
SIGNAL \b2v_inst10|Add2~5_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~6\ : std_logic;
SIGNAL \b2v_inst10|Add2~9_sumout\ : std_logic;
SIGNAL \b2v_inst10|Add2~10\ : std_logic;
SIGNAL \b2v_inst10|Add2~1_sumout\ : std_logic;
SIGNAL \b2v_inst10|Equal2~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal1~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Equal1~3_combout\ : std_logic;
SIGNAL \b2v_inst10|next_new_trame_int~0_combout\ : std_logic;
SIGNAL \b2v_inst10|new_trame_int~q\ : std_logic;
SIGNAL \b2v_inst10|etat~8_combout\ : std_logic;
SIGNAL \b2v_inst10|etat.pwm_init_high_s~q\ : std_logic;
SIGNAL \b2v_inst10|count_pwm[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Add0~14\ : std_logic;
SIGNAL \b2v_inst10|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst10|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Selector11~0_combout\ : std_logic;
SIGNAL \b2v_inst10|etat.new_t0~q\ : std_logic;
SIGNAL \b2v_inst10|etat~7_combout\ : std_logic;
SIGNAL \b2v_inst10|etat.new_t1~q\ : std_logic;
SIGNAL \b2v_inst10|pwm_signal~0_combout\ : std_logic;
SIGNAL \b2v_inst10|PWMout~q\ : std_logic;
SIGNAL \b2v_inst|u2|Cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|u3|Y_Cont\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|u3|X_Cont\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|u8|mI2C_CLK_DIV\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst10|count_pwm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|u8|combo_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \b2v_inst|u8|u0|SD_COUNTER\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b2v_inst|u8|senosr_exposure\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst2|comptY\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst10|pwm_number\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|u8|mI2C_DATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst2|comptX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst10|cnt\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \b2v_inst|rClk\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|u8|iexposure_adj_delay\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|g_bout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|u8|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst|u8|u0|SD\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|u8|ALT_INV_mSetup_ST.0001~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mI2C_GO~q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_i2c_reset~combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_i2c_reset~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_iexposure_adj_delay\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|u8|ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD[23]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Pwm~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SDO~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_I2C_SCLK~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mI2C_CTRL_CLK~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SCLK~q\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_count_pwm[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_etat.pwm_init_high_s~q\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Pwm~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_pwm_number\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_Pre_FVAL~q\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_mSTART~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_rCCD_FVAL~q\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_mCCD_LVAL~q\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_oRST_2~q\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_oRST_1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Cont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_etat.new_t1~q\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_IMG~1_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_IMGY_out~0_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_IMG~0_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_oRST_1~q\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_rClk\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|u8|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|u8|ALT_INV_mI2C_DATA\ : std_logic_vector(14 DOWNTO 4);
SIGNAL \b2v_inst|u8|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_combo_cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_etat.pwm_low_s~q\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_cnt\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_count_pwm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_etat.pwm_high_s~q\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_etat.new_t0~q\ : std_logic;
SIGNAL \b2v_inst10|ALT_INV_new_trame_int~q\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_comptX\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst|u3|ALT_INV_X_Cont\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst10|ALT_INV_PWMout~q\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_comptY\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \b2v_inst|u3|ALT_INV_Y_Cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_END~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mSetup_ST.0001~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SDO~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u2|ALT_INV_Cont[20]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_combo_cnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_combo_cnt[21]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_combo_cnt[24]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_X_Cont[8]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_X_Cont[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_CCD_FVAL~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_I2C_SDAT~input_o\ : std_logic;
SIGNAL \b2v_inst|u3|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK4~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK4~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK3~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK3~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK2~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK2~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure[15]~3_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_always1~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure[15]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure[15]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_always1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_senosr_exposure[15]~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LUT_INDEX[5]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK~combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK4~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK3~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK2~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_ACK1~q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mSetup_ST.0000~q\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD[23]~2_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_Equal4~4_combout\ : std_logic;
SIGNAL \b2v_inst|u8|u0|ALT_INV_SD[23]~1_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_LUT_INDEX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|u8|u0|ALT_INV_END~q\ : std_logic;
SIGNAL \b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Ext_Clock <= Ext_Clock;
ww_CCD_FVAL <= CCD_FVAL;
ww_CCD_LVAL <= CCD_LVAL;
ww_CCD_PIXCLK <= CCD_PIXCLK;
I2C_SCLK <= ww_I2C_SCLK;
I2C_SDAT <= ww_I2C_SDAT;
ww_CCD_DATA <= CCD_DATA;
ww_KEY <= KEY;
ww_SW <= SW;
CCD_MCCLK <= ww_CCD_MCCLK;
TRIGGER <= ww_TRIGGER;
RESETn <= ww_RESETn;
VGA_VS <= ww_VGA_VS;
VGA_HS <= ww_VGA_HS;
LEDG <= ww_LEDG;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
tempo_flag <= ww_tempo_flag;
servo1 <= ww_servo1;
servo2 <= ww_servo2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(0);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(1);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(2);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(3);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(4);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(5);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(6);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\(7);

\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(0);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(1);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(2);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(3);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(4);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(5);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(6);
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\(7);

\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\ <= (\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI7\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI6\ & 
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI5\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI4\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI3\ & 
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI2\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI1\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_MHI0\);

\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\ <= \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\(6);

\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH7\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH6\
& \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH5\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH4\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH3\ & 
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH2\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH1\ & \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_VCOPH0\);
\b2v_inst|u8|ALT_INV_mSetup_ST.0001~q\ <= NOT \b2v_inst|u8|mSetup_ST.0001~q\;
\b2v_inst|u8|u0|ALT_INV_Mux0~8_combout\ <= NOT \b2v_inst|u8|u0|Mux0~8_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(2) <= NOT \b2v_inst|u8|u0|SD\(2);
\b2v_inst|u8|u0|ALT_INV_SD\(3) <= NOT \b2v_inst|u8|u0|SD\(3);
\b2v_inst|u8|u0|ALT_INV_SD\(4) <= NOT \b2v_inst|u8|u0|SD\(4);
\b2v_inst|u8|u0|ALT_INV_SD\(5) <= NOT \b2v_inst|u8|u0|SD\(5);
\b2v_inst|u8|u0|ALT_INV_Mux0~7_combout\ <= NOT \b2v_inst|u8|u0|Mux0~7_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(1) <= NOT \b2v_inst|u8|u0|SD\(1);
\b2v_inst|u8|u0|ALT_INV_SD\(0) <= NOT \b2v_inst|u8|u0|SD\(0);
\b2v_inst|u8|u0|ALT_INV_Mux0~6_combout\ <= NOT \b2v_inst|u8|u0|Mux0~6_combout\;
\b2v_inst|u8|u0|ALT_INV_Mux0~5_combout\ <= NOT \b2v_inst|u8|u0|Mux0~5_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(6) <= NOT \b2v_inst|u8|u0|SD\(6);
\b2v_inst|u8|u0|ALT_INV_SD\(7) <= NOT \b2v_inst|u8|u0|SD\(7);
\b2v_inst|u8|u0|ALT_INV_SD\(13) <= NOT \b2v_inst|u8|u0|SD\(13);
\b2v_inst|u8|u0|ALT_INV_SD\(14) <= NOT \b2v_inst|u8|u0|SD\(14);
\b2v_inst|u8|u0|ALT_INV_Mux0~4_combout\ <= NOT \b2v_inst|u8|u0|Mux0~4_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(8) <= NOT \b2v_inst|u8|u0|SD\(8);
\b2v_inst|u8|u0|ALT_INV_SD\(15) <= NOT \b2v_inst|u8|u0|SD\(15);
\b2v_inst|u8|u0|ALT_INV_Mux0~3_combout\ <= NOT \b2v_inst|u8|u0|Mux0~3_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(9) <= NOT \b2v_inst|u8|u0|SD\(9);
\b2v_inst|u8|u0|ALT_INV_SD\(10) <= NOT \b2v_inst|u8|u0|SD\(10);
\b2v_inst|u8|u0|ALT_INV_SD\(16) <= NOT \b2v_inst|u8|u0|SD\(16);
\b2v_inst|u8|u0|ALT_INV_SD\(17) <= NOT \b2v_inst|u8|u0|SD\(17);
\b2v_inst|u8|u0|ALT_INV_Mux0~2_combout\ <= NOT \b2v_inst|u8|u0|Mux0~2_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(11) <= NOT \b2v_inst|u8|u0|SD\(11);
\b2v_inst|u8|u0|ALT_INV_SD\(12) <= NOT \b2v_inst|u8|u0|SD\(12);
\b2v_inst|u8|u0|ALT_INV_SD\(18) <= NOT \b2v_inst|u8|u0|SD\(18);
\b2v_inst|u8|u0|ALT_INV_SD\(19) <= NOT \b2v_inst|u8|u0|SD\(19);
\b2v_inst|u8|u0|ALT_INV_Mux0~1_combout\ <= NOT \b2v_inst|u8|u0|Mux0~1_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(20) <= NOT \b2v_inst|u8|u0|SD\(20);
\b2v_inst|u8|u0|ALT_INV_SD\(22) <= NOT \b2v_inst|u8|u0|SD\(22);
\b2v_inst|u8|u0|ALT_INV_Mux0~0_combout\ <= NOT \b2v_inst|u8|u0|Mux0~0_combout\;
\b2v_inst|u8|u0|ALT_INV_SD\(21) <= NOT \b2v_inst|u8|u0|SD\(21);
\b2v_inst|u8|u0|ALT_INV_SD\(23) <= NOT \b2v_inst|u8|u0|SD\(23);
\b2v_inst|u8|u0|ALT_INV_LessThan2~0_combout\ <= NOT \b2v_inst|u8|u0|LessThan2~0_combout\;
\b2v_inst|u8|ALT_INV_mI2C_GO~q\ <= NOT \b2v_inst|u8|mI2C_GO~q\;
\b2v_inst|u8|ALT_INV_LessThan2~3_combout\ <= NOT \b2v_inst|u8|LessThan2~3_combout\;
\b2v_inst|u8|ALT_INV_LessThan2~2_combout\ <= NOT \b2v_inst|u8|LessThan2~2_combout\;
\b2v_inst|u8|ALT_INV_LessThan2~1_combout\ <= NOT \b2v_inst|u8|LessThan2~1_combout\;
\b2v_inst|u8|ALT_INV_LessThan2~0_combout\ <= NOT \b2v_inst|u8|LessThan2~0_combout\;
\b2v_inst|u8|ALT_INV_i2c_reset~combout\ <= NOT \b2v_inst|u8|i2c_reset~combout\;
\b2v_inst|u8|ALT_INV_i2c_reset~0_combout\ <= NOT \b2v_inst|u8|i2c_reset~0_combout\;
\b2v_inst|u8|ALT_INV_iexposure_adj_delay\(2) <= NOT \b2v_inst|u8|iexposure_adj_delay\(2);
\b2v_inst|u8|ALT_INV_iexposure_adj_delay\(3) <= NOT \b2v_inst|u8|iexposure_adj_delay\(3);
\b2v_inst|u8|ALT_INV_Equal4~3_combout\ <= NOT \b2v_inst|u8|Equal4~3_combout\;
\b2v_inst|u8|ALT_INV_Equal4~2_combout\ <= NOT \b2v_inst|u8|Equal4~2_combout\;
\b2v_inst|u8|ALT_INV_Equal4~1_combout\ <= NOT \b2v_inst|u8|Equal4~1_combout\;
\b2v_inst|u8|ALT_INV_Equal4~0_combout\ <= NOT \b2v_inst|u8|Equal4~0_combout\;
\b2v_inst|u8|u0|ALT_INV_SD[23]~0_combout\ <= NOT \b2v_inst|u8|u0|SD[23]~0_combout\;
\b2v_inst|u8|u0|ALT_INV_Selector1~0_combout\ <= NOT \b2v_inst|u8|u0|Selector1~0_combout\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(1);
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(0);
\b2v_inst10|ALT_INV_LessThan2~2_combout\ <= NOT \b2v_inst10|LessThan2~2_combout\;
\b2v_inst10|ALT_INV_Add1~0_combout\ <= NOT \b2v_inst10|Add1~0_combout\;
\b2v_inst10|ALT_INV_Pwm~1_combout\ <= NOT \b2v_inst10|Pwm~1_combout\;
\b2v_inst10|ALT_INV_Selector10~0_combout\ <= NOT \b2v_inst10|Selector10~0_combout\;
\b2v_inst10|ALT_INV_Equal2~3_combout\ <= NOT \b2v_inst10|Equal2~3_combout\;
\b2v_inst|u8|u0|ALT_INV_SDO~q\ <= NOT \b2v_inst|u8|u0|SDO~q\;
\b2v_inst|u8|u0|ALT_INV_I2C_SCLK~0_combout\ <= NOT \b2v_inst|u8|u0|I2C_SCLK~0_combout\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(2);
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(3);
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(5);
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(4);
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6) <= NOT \b2v_inst|u8|u0|SD_COUNTER\(6);
\b2v_inst|u8|ALT_INV_mI2C_CTRL_CLK~q\ <= NOT \b2v_inst|u8|mI2C_CTRL_CLK~q\;
\b2v_inst|u8|u0|ALT_INV_SCLK~q\ <= NOT \b2v_inst|u8|u0|SCLK~q\;
\b2v_inst10|ALT_INV_count_pwm[0]~1_combout\ <= NOT \b2v_inst10|count_pwm[0]~1_combout\;
\b2v_inst10|ALT_INV_etat.pwm_init_high_s~q\ <= NOT \b2v_inst10|etat.pwm_init_high_s~q\;
\b2v_inst10|ALT_INV_Pwm~0_combout\ <= NOT \b2v_inst10|Pwm~0_combout\;
\b2v_inst10|ALT_INV_pwm_number\(0) <= NOT \b2v_inst10|pwm_number\(0);
\b2v_inst10|ALT_INV_pwm_number\(1) <= NOT \b2v_inst10|pwm_number\(1);
\b2v_inst10|ALT_INV_pwm_number\(2) <= NOT \b2v_inst10|pwm_number\(2);
\b2v_inst10|ALT_INV_LessThan2~1_combout\ <= NOT \b2v_inst10|LessThan2~1_combout\;
\b2v_inst10|ALT_INV_LessThan2~0_combout\ <= NOT \b2v_inst10|LessThan2~0_combout\;
\b2v_inst10|ALT_INV_Equal1~3_combout\ <= NOT \b2v_inst10|Equal1~3_combout\;
\b2v_inst10|ALT_INV_Equal1~2_combout\ <= NOT \b2v_inst10|Equal1~2_combout\;
\b2v_inst10|ALT_INV_Equal1~1_combout\ <= NOT \b2v_inst10|Equal1~1_combout\;
\b2v_inst10|ALT_INV_Equal2~2_combout\ <= NOT \b2v_inst10|Equal2~2_combout\;
\b2v_inst10|ALT_INV_Equal2~1_combout\ <= NOT \b2v_inst10|Equal2~1_combout\;
\b2v_inst10|ALT_INV_Equal2~0_combout\ <= NOT \b2v_inst10|Equal2~0_combout\;
\b2v_inst10|ALT_INV_Equal1~0_combout\ <= NOT \b2v_inst10|Equal1~0_combout\;
\b2v_inst|u3|ALT_INV_Pre_FVAL~q\ <= NOT \b2v_inst|u3|Pre_FVAL~q\;
\b2v_inst|u3|ALT_INV_mSTART~q\ <= NOT \b2v_inst|u3|mSTART~q\;
\b2v_inst|ALT_INV_rCCD_FVAL~q\ <= NOT \b2v_inst|rCCD_FVAL~q\;
\b2v_inst|u2|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst|u2|Equal0~7_combout\;
\b2v_inst|u2|ALT_INV_Equal0~6_combout\ <= NOT \b2v_inst|u2|Equal0~6_combout\;
\b2v_inst10|ALT_INV_LessThan0~5_combout\ <= NOT \b2v_inst10|LessThan0~5_combout\;
\b2v_inst10|ALT_INV_LessThan0~4_combout\ <= NOT \b2v_inst10|LessThan0~4_combout\;
\b2v_inst10|ALT_INV_LessThan0~3_combout\ <= NOT \b2v_inst10|LessThan0~3_combout\;
\b2v_inst10|ALT_INV_LessThan0~2_combout\ <= NOT \b2v_inst10|LessThan0~2_combout\;
\b2v_inst10|ALT_INV_LessThan0~1_combout\ <= NOT \b2v_inst10|LessThan0~1_combout\;
\b2v_inst10|ALT_INV_LessThan0~0_combout\ <= NOT \b2v_inst10|LessThan0~0_combout\;
\b2v_inst2|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst2|Equal0~1_combout\;
\b2v_inst2|ALT_INV_process_0~2_combout\ <= NOT \b2v_inst2|process_0~2_combout\;
\b2v_inst|u3|ALT_INV_LessThan0~4_combout\ <= NOT \b2v_inst|u3|LessThan0~4_combout\;
\b2v_inst|u3|ALT_INV_LessThan0~3_combout\ <= NOT \b2v_inst|u3|LessThan0~3_combout\;
\b2v_inst|u3|ALT_INV_LessThan0~2_combout\ <= NOT \b2v_inst|u3|LessThan0~2_combout\;
\b2v_inst|u3|ALT_INV_LessThan0~1_combout\ <= NOT \b2v_inst|u3|LessThan0~1_combout\;
\b2v_inst|u3|ALT_INV_LessThan0~0_combout\ <= NOT \b2v_inst|u3|LessThan0~0_combout\;
\b2v_inst|u3|ALT_INV_mCCD_LVAL~q\ <= NOT \b2v_inst|u3|mCCD_LVAL~q\;
\b2v_inst|u3|ALT_INV_mCCD_FVAL~q\ <= NOT \b2v_inst|u3|mCCD_FVAL~q\;
\b2v_inst|u2|ALT_INV_oRST_2~q\ <= NOT \b2v_inst|u2|oRST_2~q\;
\b2v_inst2|ALT_INV_LessThan2~0_combout\ <= NOT \b2v_inst2|LessThan2~0_combout\;
\b2v_inst2|ALT_INV_process_0~0_combout\ <= NOT \b2v_inst2|process_0~0_combout\;
\b2v_inst|u2|ALT_INV_oRST_1~0_combout\ <= NOT \b2v_inst|u2|oRST_1~0_combout\;
\b2v_inst|u2|ALT_INV_Cont\(22) <= NOT \b2v_inst|u2|Cont\(22);
\b2v_inst|u2|ALT_INV_Cont\(23) <= NOT \b2v_inst|u2|Cont\(23);
\b2v_inst|u2|ALT_INV_Cont\(24) <= NOT \b2v_inst|u2|Cont\(24);
\b2v_inst|u2|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst|u2|Equal0~5_combout\;
\b2v_inst|u2|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst|u2|Equal0~4_combout\;
\b2v_inst|u2|ALT_INV_Cont\(28) <= NOT \b2v_inst|u2|Cont\(28);
\b2v_inst|u2|ALT_INV_Cont\(29) <= NOT \b2v_inst|u2|Cont\(29);
\b2v_inst|u2|ALT_INV_Cont\(30) <= NOT \b2v_inst|u2|Cont\(30);
\b2v_inst|u2|ALT_INV_Cont\(31) <= NOT \b2v_inst|u2|Cont\(31);
\b2v_inst|u2|ALT_INV_Cont\(25) <= NOT \b2v_inst|u2|Cont\(25);
\b2v_inst|u2|ALT_INV_Cont\(26) <= NOT \b2v_inst|u2|Cont\(26);
\b2v_inst|u2|ALT_INV_Cont\(27) <= NOT \b2v_inst|u2|Cont\(27);
\b2v_inst|u2|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst|u2|Equal0~3_combout\;
\b2v_inst|u2|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst|u2|Equal0~2_combout\;
\b2v_inst|u2|ALT_INV_Cont\(8) <= NOT \b2v_inst|u2|Cont\(8);
\b2v_inst|u2|ALT_INV_Cont\(9) <= NOT \b2v_inst|u2|Cont\(9);
\b2v_inst|u2|ALT_INV_Cont\(10) <= NOT \b2v_inst|u2|Cont\(10);
\b2v_inst|u2|ALT_INV_Cont\(11) <= NOT \b2v_inst|u2|Cont\(11);
\b2v_inst|u2|ALT_INV_Cont\(12) <= NOT \b2v_inst|u2|Cont\(12);
\b2v_inst|u2|ALT_INV_Cont\(13) <= NOT \b2v_inst|u2|Cont\(13);
\b2v_inst|u2|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst|u2|Equal0~1_combout\;
\b2v_inst|u2|ALT_INV_Cont\(14) <= NOT \b2v_inst|u2|Cont\(14);
\b2v_inst|u2|ALT_INV_Cont\(15) <= NOT \b2v_inst|u2|Cont\(15);
\b2v_inst|u2|ALT_INV_Cont\(16) <= NOT \b2v_inst|u2|Cont\(16);
\b2v_inst|u2|ALT_INV_Cont\(17) <= NOT \b2v_inst|u2|Cont\(17);
\b2v_inst|u2|ALT_INV_Cont\(18) <= NOT \b2v_inst|u2|Cont\(18);
\b2v_inst|u2|ALT_INV_Cont\(19) <= NOT \b2v_inst|u2|Cont\(19);
\b2v_inst|u2|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst|u2|Equal0~0_combout\;
\b2v_inst|u2|ALT_INV_Cont\(2) <= NOT \b2v_inst|u2|Cont\(2);
\b2v_inst|u2|ALT_INV_Cont\(3) <= NOT \b2v_inst|u2|Cont\(3);
\b2v_inst|u2|ALT_INV_Cont\(4) <= NOT \b2v_inst|u2|Cont\(4);
\b2v_inst|u2|ALT_INV_Cont\(5) <= NOT \b2v_inst|u2|Cont\(5);
\b2v_inst|u2|ALT_INV_Cont\(6) <= NOT \b2v_inst|u2|Cont\(6);
\b2v_inst|u2|ALT_INV_Cont\(7) <= NOT \b2v_inst|u2|Cont\(7);
\b2v_inst|u2|ALT_INV_Cont\(0) <= NOT \b2v_inst|u2|Cont\(0);
\b2v_inst|u2|ALT_INV_Cont\(1) <= NOT \b2v_inst|u2|Cont\(1);
\b2v_inst|u2|ALT_INV_Cont\(20) <= NOT \b2v_inst|u2|Cont\(20);
\b2v_inst|u2|ALT_INV_Cont\(21) <= NOT \b2v_inst|u2|Cont\(21);
\b2v_inst10|ALT_INV_etat.new_t1~q\ <= NOT \b2v_inst10|etat.new_t1~q\;
\b2v_inst2|ALT_INV_IMG~1_combout\ <= NOT \b2v_inst2|IMG~1_combout\;
\b2v_inst2|ALT_INV_IMGY_out~0_combout\ <= NOT \b2v_inst2|IMGY_out~0_combout\;
\b2v_inst2|ALT_INV_IMG~0_combout\ <= NOT \b2v_inst2|IMG~0_combout\;
\b2v_inst2|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst2|Equal0~0_combout\;
\b2v_inst|u2|ALT_INV_oRST_1~q\ <= NOT \b2v_inst|u2|oRST_1~q\;
\b2v_inst|ALT_INV_rClk\(0) <= NOT \b2v_inst|rClk\(0);
\b2v_inst|u8|u0|ALT_INV_Mux0~13_combout\ <= NOT \b2v_inst|u8|u0|Mux0~13_combout\;
\b2v_inst|u8|u0|ALT_INV_Mux0~9_combout\ <= NOT \b2v_inst|u8|u0|Mux0~9_combout\;
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(0) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(0);
\b2v_inst|u8|ALT_INV_Add1~53_sumout\ <= NOT \b2v_inst|u8|Add1~53_sumout\;
\b2v_inst|u8|ALT_INV_Add1~49_sumout\ <= NOT \b2v_inst|u8|Add1~49_sumout\;
\b2v_inst|u8|ALT_INV_Add1~45_sumout\ <= NOT \b2v_inst|u8|Add1~45_sumout\;
\b2v_inst|u8|ALT_INV_Add1~41_sumout\ <= NOT \b2v_inst|u8|Add1~41_sumout\;
\b2v_inst|u8|ALT_INV_Add1~37_sumout\ <= NOT \b2v_inst|u8|Add1~37_sumout\;
\b2v_inst|u8|ALT_INV_Add1~33_sumout\ <= NOT \b2v_inst|u8|Add1~33_sumout\;
\b2v_inst|u8|ALT_INV_Add1~29_sumout\ <= NOT \b2v_inst|u8|Add1~29_sumout\;
\b2v_inst|u8|ALT_INV_Add1~25_sumout\ <= NOT \b2v_inst|u8|Add1~25_sumout\;
\b2v_inst|u8|ALT_INV_Add1~21_sumout\ <= NOT \b2v_inst|u8|Add1~21_sumout\;
\b2v_inst|u8|ALT_INV_Add1~17_sumout\ <= NOT \b2v_inst|u8|Add1~17_sumout\;
\b2v_inst|u8|ALT_INV_Add1~13_sumout\ <= NOT \b2v_inst|u8|Add1~13_sumout\;
\b2v_inst|u8|ALT_INV_Add1~9_sumout\ <= NOT \b2v_inst|u8|Add1~9_sumout\;
\b2v_inst|u8|ALT_INV_Add1~5_sumout\ <= NOT \b2v_inst|u8|Add1~5_sumout\;
\b2v_inst|u8|ALT_INV_Add1~1_sumout\ <= NOT \b2v_inst|u8|Add1~1_sumout\;
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(1) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(1);
\b2v_inst|u8|ALT_INV_senosr_exposure\(2) <= NOT \b2v_inst|u8|senosr_exposure\(2);
\b2v_inst|u8|ALT_INV_senosr_exposure\(3) <= NOT \b2v_inst|u8|senosr_exposure\(3);
\b2v_inst|u8|ALT_INV_senosr_exposure\(4) <= NOT \b2v_inst|u8|senosr_exposure\(4);
\b2v_inst|u8|ALT_INV_senosr_exposure\(5) <= NOT \b2v_inst|u8|senosr_exposure\(5);
\b2v_inst|u8|ALT_INV_senosr_exposure\(13) <= NOT \b2v_inst|u8|senosr_exposure\(13);
\b2v_inst|u8|ALT_INV_senosr_exposure\(14) <= NOT \b2v_inst|u8|senosr_exposure\(14);
\b2v_inst|u8|ALT_INV_senosr_exposure\(15) <= NOT \b2v_inst|u8|senosr_exposure\(15);
\b2v_inst|u8|ALT_INV_senosr_exposure\(11) <= NOT \b2v_inst|u8|senosr_exposure\(11);
\b2v_inst|u8|ALT_INV_senosr_exposure\(12) <= NOT \b2v_inst|u8|senosr_exposure\(12);
\b2v_inst|u8|ALT_INV_mI2C_DATA\(14) <= NOT \b2v_inst|u8|mI2C_DATA\(14);
\b2v_inst|u8|ALT_INV_Add2~65_sumout\ <= NOT \b2v_inst|u8|Add2~65_sumout\;
\b2v_inst|u8|ALT_INV_Add2~53_sumout\ <= NOT \b2v_inst|u8|Add2~53_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst|u8|u0|Add0~25_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst|u8|u0|Add0~21_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst|u8|u0|Add0~17_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst|u8|u0|Add0~13_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst|u8|u0|Add0~9_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst|u8|u0|Add0~5_sumout\;
\b2v_inst|u8|u0|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst|u8|u0|Add0~1_sumout\;
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(12) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(12);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(13) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(13);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(14) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(14);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(15) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(15);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(9) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(9);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(10) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(10);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(8) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(8);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(7) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(7);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(6) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(6);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(5) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(5);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(4) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(4);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(3) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(3);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(2) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(2);
\b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(11) <= NOT \b2v_inst|u8|mI2C_CLK_DIV\(11);
\b2v_inst|u8|ALT_INV_combo_cnt\(13) <= NOT \b2v_inst|u8|combo_cnt\(13);
\b2v_inst|u8|ALT_INV_combo_cnt\(14) <= NOT \b2v_inst|u8|combo_cnt\(14);
\b2v_inst|u8|ALT_INV_combo_cnt\(15) <= NOT \b2v_inst|u8|combo_cnt\(15);
\b2v_inst|u8|ALT_INV_combo_cnt\(16) <= NOT \b2v_inst|u8|combo_cnt\(16);
\b2v_inst|u8|ALT_INV_combo_cnt\(17) <= NOT \b2v_inst|u8|combo_cnt\(17);
\b2v_inst|u8|ALT_INV_combo_cnt\(18) <= NOT \b2v_inst|u8|combo_cnt\(18);
\b2v_inst|u8|ALT_INV_combo_cnt\(19) <= NOT \b2v_inst|u8|combo_cnt\(19);
\b2v_inst|u8|ALT_INV_combo_cnt\(20) <= NOT \b2v_inst|u8|combo_cnt\(20);
\b2v_inst|u8|ALT_INV_combo_cnt\(21) <= NOT \b2v_inst|u8|combo_cnt\(21);
\b2v_inst|u8|ALT_INV_combo_cnt\(22) <= NOT \b2v_inst|u8|combo_cnt\(22);
\b2v_inst|u8|ALT_INV_combo_cnt\(23) <= NOT \b2v_inst|u8|combo_cnt\(23);
\b2v_inst|u8|ALT_INV_combo_cnt\(24) <= NOT \b2v_inst|u8|combo_cnt\(24);
\b2v_inst|u8|ALT_INV_combo_cnt\(7) <= NOT \b2v_inst|u8|combo_cnt\(7);
\b2v_inst|u8|ALT_INV_combo_cnt\(8) <= NOT \b2v_inst|u8|combo_cnt\(8);
\b2v_inst|u8|ALT_INV_combo_cnt\(9) <= NOT \b2v_inst|u8|combo_cnt\(9);
\b2v_inst|u8|ALT_INV_combo_cnt\(10) <= NOT \b2v_inst|u8|combo_cnt\(10);
\b2v_inst|u8|ALT_INV_combo_cnt\(11) <= NOT \b2v_inst|u8|combo_cnt\(11);
\b2v_inst|u8|ALT_INV_combo_cnt\(12) <= NOT \b2v_inst|u8|combo_cnt\(12);
\b2v_inst|u8|ALT_INV_combo_cnt\(1) <= NOT \b2v_inst|u8|combo_cnt\(1);
\b2v_inst|u8|ALT_INV_combo_cnt\(2) <= NOT \b2v_inst|u8|combo_cnt\(2);
\b2v_inst|u8|ALT_INV_combo_cnt\(3) <= NOT \b2v_inst|u8|combo_cnt\(3);
\b2v_inst|u8|ALT_INV_combo_cnt\(4) <= NOT \b2v_inst|u8|combo_cnt\(4);
\b2v_inst|u8|ALT_INV_combo_cnt\(5) <= NOT \b2v_inst|u8|combo_cnt\(5);
\b2v_inst|u8|ALT_INV_combo_cnt\(6) <= NOT \b2v_inst|u8|combo_cnt\(6);
\b2v_inst|u8|ALT_INV_combo_cnt\(0) <= NOT \b2v_inst|u8|combo_cnt\(0);
\b2v_inst10|ALT_INV_pwm_number\(3) <= NOT \b2v_inst10|pwm_number\(3);
\b2v_inst10|ALT_INV_etat.pwm_low_s~q\ <= NOT \b2v_inst10|etat.pwm_low_s~q\;
\b2v_inst10|ALT_INV_cnt\(16) <= NOT \b2v_inst10|cnt\(16);
\b2v_inst10|ALT_INV_cnt\(19) <= NOT \b2v_inst10|cnt\(19);
\b2v_inst10|ALT_INV_cnt\(12) <= NOT \b2v_inst10|cnt\(12);
\b2v_inst10|ALT_INV_cnt\(7) <= NOT \b2v_inst10|cnt\(7);
\b2v_inst10|ALT_INV_cnt\(8) <= NOT \b2v_inst10|cnt\(8);
\b2v_inst10|ALT_INV_cnt\(9) <= NOT \b2v_inst10|cnt\(9);
\b2v_inst10|ALT_INV_cnt\(2) <= NOT \b2v_inst10|cnt\(2);
\b2v_inst10|ALT_INV_cnt\(3) <= NOT \b2v_inst10|cnt\(3);
\b2v_inst10|ALT_INV_cnt\(6) <= NOT \b2v_inst10|cnt\(6);
\b2v_inst10|ALT_INV_cnt\(20) <= NOT \b2v_inst10|cnt\(20);
\b2v_inst10|ALT_INV_cnt\(10) <= NOT \b2v_inst10|cnt\(10);
\b2v_inst10|ALT_INV_cnt\(11) <= NOT \b2v_inst10|cnt\(11);
\b2v_inst10|ALT_INV_cnt\(1) <= NOT \b2v_inst10|cnt\(1);
\b2v_inst10|ALT_INV_cnt\(17) <= NOT \b2v_inst10|cnt\(17);
\b2v_inst10|ALT_INV_cnt\(18) <= NOT \b2v_inst10|cnt\(18);
\b2v_inst10|ALT_INV_cnt\(5) <= NOT \b2v_inst10|cnt\(5);
\b2v_inst10|ALT_INV_cnt\(0) <= NOT \b2v_inst10|cnt\(0);
\b2v_inst10|ALT_INV_cnt\(4) <= NOT \b2v_inst10|cnt\(4);
\b2v_inst10|ALT_INV_cnt\(14) <= NOT \b2v_inst10|cnt\(14);
\b2v_inst10|ALT_INV_cnt\(13) <= NOT \b2v_inst10|cnt\(13);
\b2v_inst10|ALT_INV_cnt\(15) <= NOT \b2v_inst10|cnt\(15);
\b2v_inst10|ALT_INV_count_pwm\(4) <= NOT \b2v_inst10|count_pwm\(4);
\b2v_inst10|ALT_INV_count_pwm\(6) <= NOT \b2v_inst10|count_pwm\(6);
\b2v_inst10|ALT_INV_count_pwm\(7) <= NOT \b2v_inst10|count_pwm\(7);
\b2v_inst10|ALT_INV_count_pwm\(5) <= NOT \b2v_inst10|count_pwm\(5);
\b2v_inst10|ALT_INV_count_pwm\(0) <= NOT \b2v_inst10|count_pwm\(0);
\b2v_inst10|ALT_INV_count_pwm\(1) <= NOT \b2v_inst10|count_pwm\(1);
\b2v_inst10|ALT_INV_count_pwm\(2) <= NOT \b2v_inst10|count_pwm\(2);
\b2v_inst10|ALT_INV_count_pwm\(3) <= NOT \b2v_inst10|count_pwm\(3);
\b2v_inst10|ALT_INV_etat.pwm_high_s~q\ <= NOT \b2v_inst10|etat.pwm_high_s~q\;
\b2v_inst10|ALT_INV_etat.new_t0~q\ <= NOT \b2v_inst10|etat.new_t0~q\;
\b2v_inst10|ALT_INV_new_trame_int~q\ <= NOT \b2v_inst10|new_trame_int~q\;
\b2v_inst2|ALT_INV_comptX\(0) <= NOT \b2v_inst2|comptX\(0);
\b2v_inst|u3|ALT_INV_X_Cont\(12) <= NOT \b2v_inst|u3|X_Cont\(12);
\b2v_inst|u3|ALT_INV_X_Cont\(14) <= NOT \b2v_inst|u3|X_Cont\(14);
\b2v_inst|u3|ALT_INV_X_Cont\(15) <= NOT \b2v_inst|u3|X_Cont\(15);
\b2v_inst|u3|ALT_INV_X_Cont\(13) <= NOT \b2v_inst|u3|X_Cont\(13);
\b2v_inst|u3|ALT_INV_X_Cont\(11) <= NOT \b2v_inst|u3|X_Cont\(11);
\b2v_inst|u3|ALT_INV_X_Cont\(8) <= NOT \b2v_inst|u3|X_Cont\(8);
\b2v_inst|u3|ALT_INV_X_Cont\(9) <= NOT \b2v_inst|u3|X_Cont\(9);
\b2v_inst|u3|ALT_INV_X_Cont\(5) <= NOT \b2v_inst|u3|X_Cont\(5);
\b2v_inst|u3|ALT_INV_X_Cont\(4) <= NOT \b2v_inst|u3|X_Cont\(4);
\b2v_inst|u3|ALT_INV_X_Cont\(3) <= NOT \b2v_inst|u3|X_Cont\(3);
\b2v_inst|u3|ALT_INV_X_Cont\(2) <= NOT \b2v_inst|u3|X_Cont\(2);
\b2v_inst|u3|ALT_INV_X_Cont\(1) <= NOT \b2v_inst|u3|X_Cont\(1);
\b2v_inst|u3|ALT_INV_X_Cont\(6) <= NOT \b2v_inst|u3|X_Cont\(6);
\b2v_inst|u3|ALT_INV_X_Cont\(0) <= NOT \b2v_inst|u3|X_Cont\(0);
\b2v_inst|u3|ALT_INV_X_Cont\(7) <= NOT \b2v_inst|u3|X_Cont\(7);
\b2v_inst|u3|ALT_INV_X_Cont\(10) <= NOT \b2v_inst|u3|X_Cont\(10);
\b2v_inst10|ALT_INV_PWMout~q\ <= NOT \b2v_inst10|PWMout~q\;
\b2v_inst2|ALT_INV_comptY\(0) <= NOT \b2v_inst2|comptY\(0);
\b2v_inst2|ALT_INV_comptY\(1) <= NOT \b2v_inst2|comptY\(1);
\b2v_inst2|ALT_INV_comptY\(2) <= NOT \b2v_inst2|comptY\(2);
\b2v_inst2|ALT_INV_comptY\(3) <= NOT \b2v_inst2|comptY\(3);
\b2v_inst2|ALT_INV_comptY\(4) <= NOT \b2v_inst2|comptY\(4);
\b2v_inst2|ALT_INV_comptY\(5) <= NOT \b2v_inst2|comptY\(5);
\b2v_inst2|ALT_INV_comptY\(6) <= NOT \b2v_inst2|comptY\(6);
\b2v_inst2|ALT_INV_comptY\(7) <= NOT \b2v_inst2|comptY\(7);
\b2v_inst2|ALT_INV_comptY\(8) <= NOT \b2v_inst2|comptY\(8);
\b2v_inst2|ALT_INV_comptY\(9) <= NOT \b2v_inst2|comptY\(9);
\b2v_inst2|ALT_INV_comptX\(6) <= NOT \b2v_inst2|comptX\(6);
\b2v_inst2|ALT_INV_comptX\(5) <= NOT \b2v_inst2|comptX\(5);
\b2v_inst2|ALT_INV_comptX\(7) <= NOT \b2v_inst2|comptX\(7);
\b2v_inst2|ALT_INV_comptX\(4) <= NOT \b2v_inst2|comptX\(4);
\b2v_inst2|ALT_INV_comptX\(1) <= NOT \b2v_inst2|comptX\(1);
\b2v_inst2|ALT_INV_comptX\(2) <= NOT \b2v_inst2|comptX\(2);
\b2v_inst2|ALT_INV_comptX\(3) <= NOT \b2v_inst2|comptX\(3);
\b2v_inst2|ALT_INV_comptX\(9) <= NOT \b2v_inst2|comptX\(9);
\b2v_inst2|ALT_INV_comptX\(8) <= NOT \b2v_inst2|comptX\(8);
\b2v_inst|u3|ALT_INV_Y_Cont\(7) <= NOT \b2v_inst|u3|Y_Cont\(7);
\b2v_inst|u3|ALT_INV_Y_Cont\(6) <= NOT \b2v_inst|u3|Y_Cont\(6);
\b2v_inst|u3|ALT_INV_Y_Cont\(5) <= NOT \b2v_inst|u3|Y_Cont\(5);
\b2v_inst|u3|ALT_INV_Y_Cont\(4) <= NOT \b2v_inst|u3|Y_Cont\(4);
\b2v_inst|u3|ALT_INV_Y_Cont\(3) <= NOT \b2v_inst|u3|Y_Cont\(3);
\b2v_inst|u3|ALT_INV_Y_Cont\(2) <= NOT \b2v_inst|u3|Y_Cont\(2);
\b2v_inst|u3|ALT_INV_Y_Cont\(1) <= NOT \b2v_inst|u3|Y_Cont\(1);
\b2v_inst|u3|ALT_INV_Y_Cont\(0) <= NOT \b2v_inst|u3|Y_Cont\(0);
\b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\ <= NOT \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\ <= NOT \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_END~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|END~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_mSetup_ST.0001~DUPLICATE_q\ <= NOT \b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\ <= NOT \b2v_inst|u8|mI2C_GO~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SDO~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SDO~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\;
\b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\ <= NOT \b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\;
\b2v_inst|u2|ALT_INV_Cont[20]~DUPLICATE_q\ <= NOT \b2v_inst|u2|Cont[20]~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_combo_cnt[17]~DUPLICATE_q\ <= NOT \b2v_inst|u8|combo_cnt[17]~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_combo_cnt[21]~DUPLICATE_q\ <= NOT \b2v_inst|u8|combo_cnt[21]~DUPLICATE_q\;
\b2v_inst|u8|ALT_INV_combo_cnt[24]~DUPLICATE_q\ <= NOT \b2v_inst|u8|combo_cnt[24]~DUPLICATE_q\;
\b2v_inst|u3|ALT_INV_X_Cont[8]~DUPLICATE_q\ <= NOT \b2v_inst|u3|X_Cont[8]~DUPLICATE_q\;
\b2v_inst|u3|ALT_INV_X_Cont[10]~DUPLICATE_q\ <= NOT \b2v_inst|u3|X_Cont[10]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_CCD_FVAL~input_o\ <= NOT \CCD_FVAL~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_I2C_SDAT~input_o\ <= NOT \I2C_SDAT~input_o\;
\b2v_inst|u3|ALT_INV_LessThan0~5_combout\ <= NOT \b2v_inst|u3|LessThan0~5_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK4~2_combout\ <= NOT \b2v_inst|u8|u0|ACK4~2_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK4~1_combout\ <= NOT \b2v_inst|u8|u0|ACK4~1_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK3~2_combout\ <= NOT \b2v_inst|u8|u0|ACK3~2_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK3~1_combout\ <= NOT \b2v_inst|u8|u0|ACK3~1_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK2~2_combout\ <= NOT \b2v_inst|u8|u0|ACK2~2_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK2~1_combout\ <= NOT \b2v_inst|u8|u0|ACK2~1_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK1~1_combout\ <= NOT \b2v_inst|u8|u0|ACK1~1_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\ <= NOT \b2v_inst|u8|senosr_exposure[15]~4_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure[15]~3_combout\ <= NOT \b2v_inst|u8|senosr_exposure[15]~3_combout\;
\b2v_inst|u8|ALT_INV_always1~1_combout\ <= NOT \b2v_inst|u8|always1~1_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure[15]~2_combout\ <= NOT \b2v_inst|u8|senosr_exposure[15]~2_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure[15]~1_combout\ <= NOT \b2v_inst|u8|senosr_exposure[15]~1_combout\;
\b2v_inst|u8|ALT_INV_always1~0_combout\ <= NOT \b2v_inst|u8|always1~0_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure[15]~0_combout\ <= NOT \b2v_inst|u8|senosr_exposure[15]~0_combout\;
\b2v_inst|u8|ALT_INV_senosr_exposure\(0) <= NOT \b2v_inst|u8|senosr_exposure\(0);
\b2v_inst|u8|ALT_INV_senosr_exposure\(6) <= NOT \b2v_inst|u8|senosr_exposure\(6);
\b2v_inst|u8|ALT_INV_senosr_exposure\(7) <= NOT \b2v_inst|u8|senosr_exposure\(7);
\b2v_inst|u8|ALT_INV_senosr_exposure\(8) <= NOT \b2v_inst|u8|senosr_exposure\(8);
\b2v_inst|u8|ALT_INV_senosr_exposure\(9) <= NOT \b2v_inst|u8|senosr_exposure\(9);
\b2v_inst|u8|ALT_INV_senosr_exposure\(10) <= NOT \b2v_inst|u8|senosr_exposure\(10);
\b2v_inst|u8|ALT_INV_Mux1~0_combout\ <= NOT \b2v_inst|u8|Mux1~0_combout\;
\b2v_inst|u8|ALT_INV_LUT_INDEX[5]~1_combout\ <= NOT \b2v_inst|u8|LUT_INDEX[5]~1_combout\;
\b2v_inst|u8|u0|ALT_INV_Selector0~0_combout\ <= NOT \b2v_inst|u8|u0|Selector0~0_combout\;
\b2v_inst|u8|u0|ALT_INV_ACK~combout\ <= NOT \b2v_inst|u8|u0|ACK~combout\;
\b2v_inst|u8|u0|ALT_INV_ACK4~q\ <= NOT \b2v_inst|u8|u0|ACK4~q\;
\b2v_inst|u8|u0|ALT_INV_ACK3~q\ <= NOT \b2v_inst|u8|u0|ACK3~q\;
\b2v_inst|u8|u0|ALT_INV_ACK2~q\ <= NOT \b2v_inst|u8|u0|ACK2~q\;
\b2v_inst|u8|u0|ALT_INV_ACK1~q\ <= NOT \b2v_inst|u8|u0|ACK1~q\;
\b2v_inst|u8|ALT_INV_mSetup_ST.0000~q\ <= NOT \b2v_inst|u8|mSetup_ST.0000~q\;
\b2v_inst|u8|ALT_INV_iexposure_adj_delay\(0) <= NOT \b2v_inst|u8|iexposure_adj_delay\(0);
\b2v_inst|u8|ALT_INV_mI2C_DATA\(4) <= NOT \b2v_inst|u8|mI2C_DATA\(4);
\b2v_inst|u8|u0|ALT_INV_SD[23]~2_combout\ <= NOT \b2v_inst|u8|u0|SD[23]~2_combout\;
\b2v_inst|u8|ALT_INV_Equal4~4_combout\ <= NOT \b2v_inst|u8|Equal4~4_combout\;
\b2v_inst|u8|u0|ALT_INV_SD[23]~1_combout\ <= NOT \b2v_inst|u8|u0|SD[23]~1_combout\;
\b2v_inst|u8|ALT_INV_LessThan3~0_combout\ <= NOT \b2v_inst|u8|LessThan3~0_combout\;
\b2v_inst|u8|ALT_INV_LUT_INDEX\(0) <= NOT \b2v_inst|u8|LUT_INDEX\(0);
\b2v_inst|u8|ALT_INV_LUT_INDEX\(2) <= NOT \b2v_inst|u8|LUT_INDEX\(2);
\b2v_inst|u8|ALT_INV_LUT_INDEX\(1) <= NOT \b2v_inst|u8|LUT_INDEX\(1);
\b2v_inst|u8|ALT_INV_LUT_INDEX\(3) <= NOT \b2v_inst|u8|LUT_INDEX\(3);
\b2v_inst|u8|ALT_INV_LUT_INDEX\(4) <= NOT \b2v_inst|u8|LUT_INDEX\(4);
\b2v_inst|u8|u0|ALT_INV_END~q\ <= NOT \b2v_inst|u8|u0|END~q\;
\b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\ <= NOT \b2v_inst|u8|mSetup_ST.0010~q\;

-- Location: IOOBUF_X80_Y0_N53
\CCD_MCCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|rClk\(0),
	devoe => ww_devoe,
	o => ww_CCD_MCCLK);

-- Location: IOOBUF_X78_Y0_N53
\TRIGGER~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_TRIGGER);

-- Location: IOOBUF_X76_Y0_N36
\RESETn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u2|oRST_1~q\,
	devoe => ww_devoe,
	o => ww_RESETn);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X52_Y0_N2
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(1),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(2),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(3),
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(4),
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(5),
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(6),
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u3|Y_Cont\(7),
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(4),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(5),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(6),
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|g_bout\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|IMG~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X54_Y0_N2
\tempo_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|etat.new_t1~q\,
	devoe => ww_devoe,
	o => ww_tempo_flag);

-- Location: IOOBUF_X54_Y0_N53
\servo1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|PWMout~q\,
	devoe => ww_devoe,
	o => ww_servo1);

-- Location: IOOBUF_X58_Y0_N59
\servo2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|ALT_INV_PWMout~q\,
	devoe => ww_devoe,
	o => ww_servo2);

-- Location: IOOBUF_X72_Y0_N36
\I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u8|u0|I2C_SCLK~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X64_Y0_N36
\I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|u8|u0|ALT_INV_SDO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G5
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X39_Y9_N0
\b2v_inst|u8|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~61_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u8|Add3~62\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(0),
	cin => GND,
	sumout => \b2v_inst|u8|Add3~61_sumout\,
	cout => \b2v_inst|u8|Add3~62\);

-- Location: LABCELL_X46_Y12_N3
\b2v_inst|u2|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~121_sumout\ = SUM(( \b2v_inst|u2|Cont\(22) ) + ( GND ) + ( \b2v_inst|u2|Add0~2\ ))
-- \b2v_inst|u2|Add0~122\ = CARRY(( \b2v_inst|u2|Cont\(22) ) + ( GND ) + ( \b2v_inst|u2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(22),
	cin => \b2v_inst|u2|Add0~2\,
	sumout => \b2v_inst|u2|Add0~121_sumout\,
	cout => \b2v_inst|u2|Add0~122\);

-- Location: LABCELL_X46_Y12_N6
\b2v_inst|u2|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~117_sumout\ = SUM(( \b2v_inst|u2|Cont\(23) ) + ( GND ) + ( \b2v_inst|u2|Add0~122\ ))
-- \b2v_inst|u2|Add0~118\ = CARRY(( \b2v_inst|u2|Cont\(23) ) + ( GND ) + ( \b2v_inst|u2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(23),
	cin => \b2v_inst|u2|Add0~122\,
	sumout => \b2v_inst|u2|Add0~117_sumout\,
	cout => \b2v_inst|u2|Add0~118\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X46_Y13_N59
\b2v_inst|u2|Cont[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont[20]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y13_N30
\b2v_inst|u2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~1_combout\ = ( \b2v_inst|u2|Cont\(15) & ( \b2v_inst|u2|Cont\(14) & ( (\b2v_inst|u2|Cont\(16) & (\b2v_inst|u2|Cont\(17) & (\b2v_inst|u2|Cont\(18) & \b2v_inst|u2|Cont\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(16),
	datab => \b2v_inst|u2|ALT_INV_Cont\(17),
	datac => \b2v_inst|u2|ALT_INV_Cont\(18),
	datad => \b2v_inst|u2|ALT_INV_Cont\(19),
	datae => \b2v_inst|u2|ALT_INV_Cont\(15),
	dataf => \b2v_inst|u2|ALT_INV_Cont\(14),
	combout => \b2v_inst|u2|Equal0~1_combout\);

-- Location: LABCELL_X45_Y13_N36
\b2v_inst|u2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~2_combout\ = ( \b2v_inst|u2|Cont\(8) & ( \b2v_inst|u2|Cont\(9) & ( (\b2v_inst|u2|Cont\(11) & (\b2v_inst|u2|Cont\(13) & (\b2v_inst|u2|Cont\(10) & \b2v_inst|u2|Cont\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(11),
	datab => \b2v_inst|u2|ALT_INV_Cont\(13),
	datac => \b2v_inst|u2|ALT_INV_Cont\(10),
	datad => \b2v_inst|u2|ALT_INV_Cont\(12),
	datae => \b2v_inst|u2|ALT_INV_Cont\(8),
	dataf => \b2v_inst|u2|ALT_INV_Cont\(9),
	combout => \b2v_inst|u2|Equal0~2_combout\);

-- Location: LABCELL_X46_Y13_N0
\b2v_inst|u2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~9_sumout\ = SUM(( \b2v_inst|u2|Cont\(1) ) + ( \b2v_inst|u2|Cont\(0) ) + ( !VCC ))
-- \b2v_inst|u2|Add0~10\ = CARRY(( \b2v_inst|u2|Cont\(1) ) + ( \b2v_inst|u2|Cont\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u2|ALT_INV_Cont\(0),
	datad => \b2v_inst|u2|ALT_INV_Cont\(1),
	cin => GND,
	sumout => \b2v_inst|u2|Add0~9_sumout\,
	cout => \b2v_inst|u2|Add0~10\);

-- Location: FF_X46_Y13_N2
\b2v_inst|u2|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(1));

-- Location: LABCELL_X45_Y13_N24
\b2v_inst|u2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~0_combout\ = ( \b2v_inst|u2|Cont\(3) & ( \b2v_inst|u2|Cont\(7) & ( (\b2v_inst|u2|Cont\(4) & (\b2v_inst|u2|Cont\(5) & (\b2v_inst|u2|Cont\(2) & \b2v_inst|u2|Cont\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(4),
	datab => \b2v_inst|u2|ALT_INV_Cont\(5),
	datac => \b2v_inst|u2|ALT_INV_Cont\(2),
	datad => \b2v_inst|u2|ALT_INV_Cont\(6),
	datae => \b2v_inst|u2|ALT_INV_Cont\(3),
	dataf => \b2v_inst|u2|ALT_INV_Cont\(7),
	combout => \b2v_inst|u2|Equal0~0_combout\);

-- Location: LABCELL_X45_Y13_N15
\b2v_inst|u2|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~7_combout\ = ( \b2v_inst|u2|Cont\(1) & ( \b2v_inst|u2|Equal0~0_combout\ & ( (\b2v_inst|u2|Cont\(0) & (\b2v_inst|u2|Cont[20]~DUPLICATE_q\ & (\b2v_inst|u2|Equal0~1_combout\ & \b2v_inst|u2|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(0),
	datab => \b2v_inst|u2|ALT_INV_Cont[20]~DUPLICATE_q\,
	datac => \b2v_inst|u2|ALT_INV_Equal0~1_combout\,
	datad => \b2v_inst|u2|ALT_INV_Equal0~2_combout\,
	datae => \b2v_inst|u2|ALT_INV_Cont\(1),
	dataf => \b2v_inst|u2|ALT_INV_Equal0~0_combout\,
	combout => \b2v_inst|u2|Equal0~7_combout\);

-- Location: LABCELL_X46_Y12_N39
\b2v_inst|u2|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~8_combout\ = ( \b2v_inst|u2|Equal0~6_combout\ & ( (!\b2v_inst|u2|Equal0~5_combout\) # ((!\b2v_inst|u2|Equal0~7_combout\) # (!\b2v_inst|u2|Cont\(24))) ) ) # ( !\b2v_inst|u2|Equal0~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Equal0~5_combout\,
	datac => \b2v_inst|u2|ALT_INV_Equal0~7_combout\,
	datad => \b2v_inst|u2|ALT_INV_Cont\(24),
	dataf => \b2v_inst|u2|ALT_INV_Equal0~6_combout\,
	combout => \b2v_inst|u2|Equal0~8_combout\);

-- Location: FF_X46_Y12_N8
\b2v_inst|u2|Cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~117_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(23));

-- Location: LABCELL_X46_Y12_N9
\b2v_inst|u2|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~113_sumout\ = SUM(( \b2v_inst|u2|Cont\(24) ) + ( GND ) + ( \b2v_inst|u2|Add0~118\ ))
-- \b2v_inst|u2|Add0~114\ = CARRY(( \b2v_inst|u2|Cont\(24) ) + ( GND ) + ( \b2v_inst|u2|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(24),
	cin => \b2v_inst|u2|Add0~118\,
	sumout => \b2v_inst|u2|Add0~113_sumout\,
	cout => \b2v_inst|u2|Add0~114\);

-- Location: FF_X46_Y12_N10
\b2v_inst|u2|Cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~113_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(24));

-- Location: LABCELL_X46_Y12_N12
\b2v_inst|u2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~93_sumout\ = SUM(( \b2v_inst|u2|Cont\(25) ) + ( GND ) + ( \b2v_inst|u2|Add0~114\ ))
-- \b2v_inst|u2|Add0~94\ = CARRY(( \b2v_inst|u2|Cont\(25) ) + ( GND ) + ( \b2v_inst|u2|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(25),
	cin => \b2v_inst|u2|Add0~114\,
	sumout => \b2v_inst|u2|Add0~93_sumout\,
	cout => \b2v_inst|u2|Add0~94\);

-- Location: FF_X46_Y12_N14
\b2v_inst|u2|Cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~93_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(25));

-- Location: LABCELL_X46_Y12_N15
\b2v_inst|u2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~89_sumout\ = SUM(( \b2v_inst|u2|Cont\(26) ) + ( GND ) + ( \b2v_inst|u2|Add0~94\ ))
-- \b2v_inst|u2|Add0~90\ = CARRY(( \b2v_inst|u2|Cont\(26) ) + ( GND ) + ( \b2v_inst|u2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(26),
	cin => \b2v_inst|u2|Add0~94\,
	sumout => \b2v_inst|u2|Add0~89_sumout\,
	cout => \b2v_inst|u2|Add0~90\);

-- Location: FF_X46_Y12_N17
\b2v_inst|u2|Cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~89_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(26));

-- Location: LABCELL_X46_Y12_N18
\b2v_inst|u2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~85_sumout\ = SUM(( \b2v_inst|u2|Cont\(27) ) + ( GND ) + ( \b2v_inst|u2|Add0~90\ ))
-- \b2v_inst|u2|Add0~86\ = CARRY(( \b2v_inst|u2|Cont\(27) ) + ( GND ) + ( \b2v_inst|u2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(27),
	cin => \b2v_inst|u2|Add0~90\,
	sumout => \b2v_inst|u2|Add0~85_sumout\,
	cout => \b2v_inst|u2|Add0~86\);

-- Location: FF_X46_Y12_N20
\b2v_inst|u2|Cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(27));

-- Location: LABCELL_X46_Y12_N21
\b2v_inst|u2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~109_sumout\ = SUM(( \b2v_inst|u2|Cont\(28) ) + ( GND ) + ( \b2v_inst|u2|Add0~86\ ))
-- \b2v_inst|u2|Add0~110\ = CARRY(( \b2v_inst|u2|Cont\(28) ) + ( GND ) + ( \b2v_inst|u2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(28),
	cin => \b2v_inst|u2|Add0~86\,
	sumout => \b2v_inst|u2|Add0~109_sumout\,
	cout => \b2v_inst|u2|Add0~110\);

-- Location: FF_X46_Y12_N23
\b2v_inst|u2|Cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~109_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(28));

-- Location: LABCELL_X46_Y12_N24
\b2v_inst|u2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~105_sumout\ = SUM(( \b2v_inst|u2|Cont\(29) ) + ( GND ) + ( \b2v_inst|u2|Add0~110\ ))
-- \b2v_inst|u2|Add0~106\ = CARRY(( \b2v_inst|u2|Cont\(29) ) + ( GND ) + ( \b2v_inst|u2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(29),
	cin => \b2v_inst|u2|Add0~110\,
	sumout => \b2v_inst|u2|Add0~105_sumout\,
	cout => \b2v_inst|u2|Add0~106\);

-- Location: FF_X46_Y12_N25
\b2v_inst|u2|Cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~105_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(29));

-- Location: LABCELL_X46_Y12_N27
\b2v_inst|u2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~101_sumout\ = SUM(( \b2v_inst|u2|Cont\(30) ) + ( GND ) + ( \b2v_inst|u2|Add0~106\ ))
-- \b2v_inst|u2|Add0~102\ = CARRY(( \b2v_inst|u2|Cont\(30) ) + ( GND ) + ( \b2v_inst|u2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(30),
	cin => \b2v_inst|u2|Add0~106\,
	sumout => \b2v_inst|u2|Add0~101_sumout\,
	cout => \b2v_inst|u2|Add0~102\);

-- Location: FF_X46_Y12_N29
\b2v_inst|u2|Cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~101_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(30));

-- Location: LABCELL_X46_Y12_N30
\b2v_inst|u2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~97_sumout\ = SUM(( \b2v_inst|u2|Cont\(31) ) + ( GND ) + ( \b2v_inst|u2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(31),
	cin => \b2v_inst|u2|Add0~102\,
	sumout => \b2v_inst|u2|Add0~97_sumout\);

-- Location: FF_X46_Y12_N32
\b2v_inst|u2|Cont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~97_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(31));

-- Location: LABCELL_X46_Y12_N48
\b2v_inst|u2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~4_combout\ = ( !\b2v_inst|u2|Cont\(31) & ( (!\b2v_inst|u2|Cont\(29) & (!\b2v_inst|u2|Cont\(28) & !\b2v_inst|u2|Cont\(30))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u2|ALT_INV_Cont\(29),
	datac => \b2v_inst|u2|ALT_INV_Cont\(28),
	datad => \b2v_inst|u2|ALT_INV_Cont\(30),
	dataf => \b2v_inst|u2|ALT_INV_Cont\(31),
	combout => \b2v_inst|u2|Equal0~4_combout\);

-- Location: LABCELL_X46_Y12_N51
\b2v_inst|u2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~5_combout\ = ( !\b2v_inst|u2|Cont\(26) & ( (!\b2v_inst|u2|Cont\(27) & (!\b2v_inst|u2|Cont\(25) & \b2v_inst|u2|Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(27),
	datac => \b2v_inst|u2|ALT_INV_Cont\(25),
	datad => \b2v_inst|u2|ALT_INV_Equal0~4_combout\,
	dataf => \b2v_inst|u2|ALT_INV_Cont\(26),
	combout => \b2v_inst|u2|Equal0~5_combout\);

-- Location: LABCELL_X46_Y12_N42
\b2v_inst|u2|Cont[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Cont[0]~0_combout\ = ( \b2v_inst|u2|Cont\(0) & ( \b2v_inst|u2|Equal0~6_combout\ & ( (\b2v_inst|u2|Equal0~5_combout\ & (\b2v_inst|u2|Equal0~7_combout\ & \b2v_inst|u2|Cont\(24))) ) ) ) # ( !\b2v_inst|u2|Cont\(0) & ( 
-- \b2v_inst|u2|Equal0~6_combout\ ) ) # ( !\b2v_inst|u2|Cont\(0) & ( !\b2v_inst|u2|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Equal0~5_combout\,
	datab => \b2v_inst|u2|ALT_INV_Equal0~7_combout\,
	datac => \b2v_inst|u2|ALT_INV_Cont\(24),
	datae => \b2v_inst|u2|ALT_INV_Cont\(0),
	dataf => \b2v_inst|u2|ALT_INV_Equal0~6_combout\,
	combout => \b2v_inst|u2|Cont[0]~0_combout\);

-- Location: FF_X46_Y12_N44
\b2v_inst|u2|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Cont[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(0));

-- Location: LABCELL_X46_Y13_N3
\b2v_inst|u2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~33_sumout\ = SUM(( \b2v_inst|u2|Cont\(2) ) + ( GND ) + ( \b2v_inst|u2|Add0~10\ ))
-- \b2v_inst|u2|Add0~34\ = CARRY(( \b2v_inst|u2|Cont\(2) ) + ( GND ) + ( \b2v_inst|u2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(2),
	cin => \b2v_inst|u2|Add0~10\,
	sumout => \b2v_inst|u2|Add0~33_sumout\,
	cout => \b2v_inst|u2|Add0~34\);

-- Location: FF_X46_Y13_N5
\b2v_inst|u2|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(2));

-- Location: LABCELL_X46_Y13_N6
\b2v_inst|u2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~29_sumout\ = SUM(( \b2v_inst|u2|Cont\(3) ) + ( GND ) + ( \b2v_inst|u2|Add0~34\ ))
-- \b2v_inst|u2|Add0~30\ = CARRY(( \b2v_inst|u2|Cont\(3) ) + ( GND ) + ( \b2v_inst|u2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(3),
	cin => \b2v_inst|u2|Add0~34\,
	sumout => \b2v_inst|u2|Add0~29_sumout\,
	cout => \b2v_inst|u2|Add0~30\);

-- Location: FF_X46_Y13_N8
\b2v_inst|u2|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(3));

-- Location: LABCELL_X46_Y13_N9
\b2v_inst|u2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~25_sumout\ = SUM(( \b2v_inst|u2|Cont\(4) ) + ( GND ) + ( \b2v_inst|u2|Add0~30\ ))
-- \b2v_inst|u2|Add0~26\ = CARRY(( \b2v_inst|u2|Cont\(4) ) + ( GND ) + ( \b2v_inst|u2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(4),
	cin => \b2v_inst|u2|Add0~30\,
	sumout => \b2v_inst|u2|Add0~25_sumout\,
	cout => \b2v_inst|u2|Add0~26\);

-- Location: FF_X46_Y13_N11
\b2v_inst|u2|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(4));

-- Location: LABCELL_X46_Y13_N12
\b2v_inst|u2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~21_sumout\ = SUM(( \b2v_inst|u2|Cont\(5) ) + ( GND ) + ( \b2v_inst|u2|Add0~26\ ))
-- \b2v_inst|u2|Add0~22\ = CARRY(( \b2v_inst|u2|Cont\(5) ) + ( GND ) + ( \b2v_inst|u2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(5),
	cin => \b2v_inst|u2|Add0~26\,
	sumout => \b2v_inst|u2|Add0~21_sumout\,
	cout => \b2v_inst|u2|Add0~22\);

-- Location: FF_X46_Y13_N14
\b2v_inst|u2|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(5));

-- Location: LABCELL_X46_Y13_N15
\b2v_inst|u2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~17_sumout\ = SUM(( \b2v_inst|u2|Cont\(6) ) + ( GND ) + ( \b2v_inst|u2|Add0~22\ ))
-- \b2v_inst|u2|Add0~18\ = CARRY(( \b2v_inst|u2|Cont\(6) ) + ( GND ) + ( \b2v_inst|u2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(6),
	cin => \b2v_inst|u2|Add0~22\,
	sumout => \b2v_inst|u2|Add0~17_sumout\,
	cout => \b2v_inst|u2|Add0~18\);

-- Location: FF_X46_Y13_N16
\b2v_inst|u2|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(6));

-- Location: LABCELL_X46_Y13_N18
\b2v_inst|u2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~13_sumout\ = SUM(( \b2v_inst|u2|Cont\(7) ) + ( GND ) + ( \b2v_inst|u2|Add0~18\ ))
-- \b2v_inst|u2|Add0~14\ = CARRY(( \b2v_inst|u2|Cont\(7) ) + ( GND ) + ( \b2v_inst|u2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(7),
	cin => \b2v_inst|u2|Add0~18\,
	sumout => \b2v_inst|u2|Add0~13_sumout\,
	cout => \b2v_inst|u2|Add0~14\);

-- Location: FF_X46_Y13_N20
\b2v_inst|u2|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(7));

-- Location: LABCELL_X46_Y13_N21
\b2v_inst|u2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~81_sumout\ = SUM(( \b2v_inst|u2|Cont\(8) ) + ( GND ) + ( \b2v_inst|u2|Add0~14\ ))
-- \b2v_inst|u2|Add0~82\ = CARRY(( \b2v_inst|u2|Cont\(8) ) + ( GND ) + ( \b2v_inst|u2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(8),
	cin => \b2v_inst|u2|Add0~14\,
	sumout => \b2v_inst|u2|Add0~81_sumout\,
	cout => \b2v_inst|u2|Add0~82\);

-- Location: FF_X46_Y13_N23
\b2v_inst|u2|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(8));

-- Location: LABCELL_X46_Y13_N24
\b2v_inst|u2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~77_sumout\ = SUM(( \b2v_inst|u2|Cont\(9) ) + ( GND ) + ( \b2v_inst|u2|Add0~82\ ))
-- \b2v_inst|u2|Add0~78\ = CARRY(( \b2v_inst|u2|Cont\(9) ) + ( GND ) + ( \b2v_inst|u2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(9),
	cin => \b2v_inst|u2|Add0~82\,
	sumout => \b2v_inst|u2|Add0~77_sumout\,
	cout => \b2v_inst|u2|Add0~78\);

-- Location: FF_X46_Y13_N26
\b2v_inst|u2|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(9));

-- Location: LABCELL_X46_Y13_N27
\b2v_inst|u2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~73_sumout\ = SUM(( \b2v_inst|u2|Cont\(10) ) + ( GND ) + ( \b2v_inst|u2|Add0~78\ ))
-- \b2v_inst|u2|Add0~74\ = CARRY(( \b2v_inst|u2|Cont\(10) ) + ( GND ) + ( \b2v_inst|u2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(10),
	cin => \b2v_inst|u2|Add0~78\,
	sumout => \b2v_inst|u2|Add0~73_sumout\,
	cout => \b2v_inst|u2|Add0~74\);

-- Location: FF_X46_Y13_N29
\b2v_inst|u2|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(10));

-- Location: LABCELL_X46_Y13_N30
\b2v_inst|u2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~69_sumout\ = SUM(( \b2v_inst|u2|Cont\(11) ) + ( GND ) + ( \b2v_inst|u2|Add0~74\ ))
-- \b2v_inst|u2|Add0~70\ = CARRY(( \b2v_inst|u2|Cont\(11) ) + ( GND ) + ( \b2v_inst|u2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(11),
	cin => \b2v_inst|u2|Add0~74\,
	sumout => \b2v_inst|u2|Add0~69_sumout\,
	cout => \b2v_inst|u2|Add0~70\);

-- Location: FF_X46_Y13_N31
\b2v_inst|u2|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(11));

-- Location: LABCELL_X46_Y13_N33
\b2v_inst|u2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~65_sumout\ = SUM(( \b2v_inst|u2|Cont\(12) ) + ( GND ) + ( \b2v_inst|u2|Add0~70\ ))
-- \b2v_inst|u2|Add0~66\ = CARRY(( \b2v_inst|u2|Cont\(12) ) + ( GND ) + ( \b2v_inst|u2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(12),
	cin => \b2v_inst|u2|Add0~70\,
	sumout => \b2v_inst|u2|Add0~65_sumout\,
	cout => \b2v_inst|u2|Add0~66\);

-- Location: FF_X46_Y13_N34
\b2v_inst|u2|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(12));

-- Location: LABCELL_X46_Y13_N36
\b2v_inst|u2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~61_sumout\ = SUM(( \b2v_inst|u2|Cont\(13) ) + ( GND ) + ( \b2v_inst|u2|Add0~66\ ))
-- \b2v_inst|u2|Add0~62\ = CARRY(( \b2v_inst|u2|Cont\(13) ) + ( GND ) + ( \b2v_inst|u2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(13),
	cin => \b2v_inst|u2|Add0~66\,
	sumout => \b2v_inst|u2|Add0~61_sumout\,
	cout => \b2v_inst|u2|Add0~62\);

-- Location: FF_X46_Y13_N38
\b2v_inst|u2|Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(13));

-- Location: LABCELL_X46_Y13_N39
\b2v_inst|u2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~57_sumout\ = SUM(( \b2v_inst|u2|Cont\(14) ) + ( GND ) + ( \b2v_inst|u2|Add0~62\ ))
-- \b2v_inst|u2|Add0~58\ = CARRY(( \b2v_inst|u2|Cont\(14) ) + ( GND ) + ( \b2v_inst|u2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(14),
	cin => \b2v_inst|u2|Add0~62\,
	sumout => \b2v_inst|u2|Add0~57_sumout\,
	cout => \b2v_inst|u2|Add0~58\);

-- Location: FF_X46_Y13_N41
\b2v_inst|u2|Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(14));

-- Location: LABCELL_X46_Y13_N42
\b2v_inst|u2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~53_sumout\ = SUM(( \b2v_inst|u2|Cont\(15) ) + ( GND ) + ( \b2v_inst|u2|Add0~58\ ))
-- \b2v_inst|u2|Add0~54\ = CARRY(( \b2v_inst|u2|Cont\(15) ) + ( GND ) + ( \b2v_inst|u2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(15),
	cin => \b2v_inst|u2|Add0~58\,
	sumout => \b2v_inst|u2|Add0~53_sumout\,
	cout => \b2v_inst|u2|Add0~54\);

-- Location: FF_X46_Y13_N44
\b2v_inst|u2|Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(15));

-- Location: LABCELL_X46_Y13_N45
\b2v_inst|u2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~49_sumout\ = SUM(( \b2v_inst|u2|Cont\(16) ) + ( GND ) + ( \b2v_inst|u2|Add0~54\ ))
-- \b2v_inst|u2|Add0~50\ = CARRY(( \b2v_inst|u2|Cont\(16) ) + ( GND ) + ( \b2v_inst|u2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(16),
	cin => \b2v_inst|u2|Add0~54\,
	sumout => \b2v_inst|u2|Add0~49_sumout\,
	cout => \b2v_inst|u2|Add0~50\);

-- Location: FF_X46_Y13_N47
\b2v_inst|u2|Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(16));

-- Location: LABCELL_X46_Y13_N48
\b2v_inst|u2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~45_sumout\ = SUM(( \b2v_inst|u2|Cont\(17) ) + ( GND ) + ( \b2v_inst|u2|Add0~50\ ))
-- \b2v_inst|u2|Add0~46\ = CARRY(( \b2v_inst|u2|Cont\(17) ) + ( GND ) + ( \b2v_inst|u2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(17),
	cin => \b2v_inst|u2|Add0~50\,
	sumout => \b2v_inst|u2|Add0~45_sumout\,
	cout => \b2v_inst|u2|Add0~46\);

-- Location: FF_X46_Y13_N50
\b2v_inst|u2|Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(17));

-- Location: LABCELL_X46_Y13_N51
\b2v_inst|u2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~41_sumout\ = SUM(( \b2v_inst|u2|Cont\(18) ) + ( GND ) + ( \b2v_inst|u2|Add0~46\ ))
-- \b2v_inst|u2|Add0~42\ = CARRY(( \b2v_inst|u2|Cont\(18) ) + ( GND ) + ( \b2v_inst|u2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(18),
	cin => \b2v_inst|u2|Add0~46\,
	sumout => \b2v_inst|u2|Add0~41_sumout\,
	cout => \b2v_inst|u2|Add0~42\);

-- Location: FF_X46_Y13_N53
\b2v_inst|u2|Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(18));

-- Location: LABCELL_X46_Y13_N54
\b2v_inst|u2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~37_sumout\ = SUM(( \b2v_inst|u2|Cont\(19) ) + ( GND ) + ( \b2v_inst|u2|Add0~42\ ))
-- \b2v_inst|u2|Add0~38\ = CARRY(( \b2v_inst|u2|Cont\(19) ) + ( GND ) + ( \b2v_inst|u2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(19),
	cin => \b2v_inst|u2|Add0~42\,
	sumout => \b2v_inst|u2|Add0~37_sumout\,
	cout => \b2v_inst|u2|Add0~38\);

-- Location: FF_X46_Y13_N56
\b2v_inst|u2|Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(19));

-- Location: LABCELL_X46_Y13_N57
\b2v_inst|u2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~5_sumout\ = SUM(( \b2v_inst|u2|Cont\(20) ) + ( GND ) + ( \b2v_inst|u2|Add0~38\ ))
-- \b2v_inst|u2|Add0~6\ = CARRY(( \b2v_inst|u2|Cont\(20) ) + ( GND ) + ( \b2v_inst|u2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(20),
	cin => \b2v_inst|u2|Add0~38\,
	sumout => \b2v_inst|u2|Add0~5_sumout\,
	cout => \b2v_inst|u2|Add0~6\);

-- Location: FF_X46_Y13_N58
\b2v_inst|u2|Cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(20));

-- Location: LABCELL_X46_Y12_N0
\b2v_inst|u2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Add0~1_sumout\ = SUM(( \b2v_inst|u2|Cont\(21) ) + ( GND ) + ( \b2v_inst|u2|Add0~6\ ))
-- \b2v_inst|u2|Add0~2\ = CARRY(( \b2v_inst|u2|Cont\(21) ) + ( GND ) + ( \b2v_inst|u2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u2|ALT_INV_Cont\(21),
	cin => \b2v_inst|u2|Add0~6\,
	sumout => \b2v_inst|u2|Add0~1_sumout\,
	cout => \b2v_inst|u2|Add0~2\);

-- Location: FF_X46_Y12_N2
\b2v_inst|u2|Cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(21));

-- Location: FF_X46_Y12_N5
\b2v_inst|u2|Cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|Add0~121_sumout\,
	clrn => \KEY[0]~input_o\,
	ena => \b2v_inst|u2|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|Cont\(22));

-- Location: LABCELL_X46_Y12_N54
\b2v_inst|u2|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~6_combout\ = (!\b2v_inst|u2|Cont\(22) & (!\b2v_inst|u2|Cont\(23) & !\b2v_inst|u2|Cont\(21)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(22),
	datab => \b2v_inst|u2|ALT_INV_Cont\(23),
	datac => \b2v_inst|u2|ALT_INV_Cont\(21),
	combout => \b2v_inst|u2|Equal0~6_combout\);

-- Location: LABCELL_X48_Y8_N27
\b2v_inst|u2|oRST_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|oRST_2~0_combout\ = ( \b2v_inst|u2|Equal0~7_combout\ & ( \b2v_inst|u2|Equal0~5_combout\ & ( (\b2v_inst|u2|Cont\(24)) # (\b2v_inst|u2|oRST_2~q\) ) ) ) # ( !\b2v_inst|u2|Equal0~7_combout\ & ( \b2v_inst|u2|Equal0~5_combout\ & ( 
-- ((!\b2v_inst|u2|Equal0~6_combout\ & \b2v_inst|u2|Cont\(24))) # (\b2v_inst|u2|oRST_2~q\) ) ) ) # ( \b2v_inst|u2|Equal0~7_combout\ & ( !\b2v_inst|u2|Equal0~5_combout\ ) ) # ( !\b2v_inst|u2|Equal0~7_combout\ & ( !\b2v_inst|u2|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011101010111010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_oRST_2~q\,
	datab => \b2v_inst|u2|ALT_INV_Equal0~6_combout\,
	datac => \b2v_inst|u2|ALT_INV_Cont\(24),
	datae => \b2v_inst|u2|ALT_INV_Equal0~7_combout\,
	dataf => \b2v_inst|u2|ALT_INV_Equal0~5_combout\,
	combout => \b2v_inst|u2|oRST_2~0_combout\);

-- Location: FF_X56_Y8_N5
\b2v_inst|u2|oRST_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u2|oRST_2~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|oRST_2~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X35_Y8_N5
\b2v_inst|u8|iexposure_adj_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \KEY[1]~input_o\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|iexposure_adj_delay\(0));

-- Location: FF_X35_Y8_N52
\b2v_inst|u8|iexposure_adj_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|iexposure_adj_delay\(0),
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|iexposure_adj_delay\(1));

-- Location: FF_X36_Y8_N32
\b2v_inst|u8|iexposure_adj_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|iexposure_adj_delay\(1),
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|iexposure_adj_delay\(2));

-- Location: FF_X36_Y8_N17
\b2v_inst|u8|iexposure_adj_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|iexposure_adj_delay\(2),
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|iexposure_adj_delay\(3));

-- Location: FF_X36_Y7_N55
\b2v_inst|u8|combo_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~81_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(17));

-- Location: LABCELL_X36_Y8_N30
\b2v_inst|u8|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~1_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u8|Add2~2\ = CARRY(( \b2v_inst|u8|combo_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(0),
	cin => GND,
	sumout => \b2v_inst|u8|Add2~1_sumout\,
	cout => \b2v_inst|u8|Add2~2\);

-- Location: FF_X36_Y8_N14
\b2v_inst|u8|combo_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~1_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(0));

-- Location: LABCELL_X36_Y8_N33
\b2v_inst|u8|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~25_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(1) ) + ( GND ) + ( \b2v_inst|u8|Add2~2\ ))
-- \b2v_inst|u8|Add2~26\ = CARRY(( \b2v_inst|u8|combo_cnt\(1) ) + ( GND ) + ( \b2v_inst|u8|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(1),
	cin => \b2v_inst|u8|Add2~2\,
	sumout => \b2v_inst|u8|Add2~25_sumout\,
	cout => \b2v_inst|u8|Add2~26\);

-- Location: FF_X36_Y8_N26
\b2v_inst|u8|combo_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~25_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(1));

-- Location: LABCELL_X36_Y8_N36
\b2v_inst|u8|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~21_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(2) ) + ( GND ) + ( \b2v_inst|u8|Add2~26\ ))
-- \b2v_inst|u8|Add2~22\ = CARRY(( \b2v_inst|u8|combo_cnt\(2) ) + ( GND ) + ( \b2v_inst|u8|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(2),
	cin => \b2v_inst|u8|Add2~26\,
	sumout => \b2v_inst|u8|Add2~21_sumout\,
	cout => \b2v_inst|u8|Add2~22\);

-- Location: FF_X36_Y8_N11
\b2v_inst|u8|combo_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~21_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(2));

-- Location: LABCELL_X36_Y8_N39
\b2v_inst|u8|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~17_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(3) ) + ( GND ) + ( \b2v_inst|u8|Add2~22\ ))
-- \b2v_inst|u8|Add2~18\ = CARRY(( \b2v_inst|u8|combo_cnt\(3) ) + ( GND ) + ( \b2v_inst|u8|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(3),
	cin => \b2v_inst|u8|Add2~22\,
	sumout => \b2v_inst|u8|Add2~17_sumout\,
	cout => \b2v_inst|u8|Add2~18\);

-- Location: FF_X36_Y8_N41
\b2v_inst|u8|combo_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~17_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(3));

-- Location: LABCELL_X36_Y8_N42
\b2v_inst|u8|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~13_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(4) ) + ( GND ) + ( \b2v_inst|u8|Add2~18\ ))
-- \b2v_inst|u8|Add2~14\ = CARRY(( \b2v_inst|u8|combo_cnt\(4) ) + ( GND ) + ( \b2v_inst|u8|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(4),
	cin => \b2v_inst|u8|Add2~18\,
	sumout => \b2v_inst|u8|Add2~13_sumout\,
	cout => \b2v_inst|u8|Add2~14\);

-- Location: FF_X36_Y8_N53
\b2v_inst|u8|combo_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~13_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(4));

-- Location: LABCELL_X36_Y8_N45
\b2v_inst|u8|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~9_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(5) ) + ( GND ) + ( \b2v_inst|u8|Add2~14\ ))
-- \b2v_inst|u8|Add2~10\ = CARRY(( \b2v_inst|u8|combo_cnt\(5) ) + ( GND ) + ( \b2v_inst|u8|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(5),
	cin => \b2v_inst|u8|Add2~14\,
	sumout => \b2v_inst|u8|Add2~9_sumout\,
	cout => \b2v_inst|u8|Add2~10\);

-- Location: FF_X36_Y8_N47
\b2v_inst|u8|combo_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~9_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(5));

-- Location: LABCELL_X36_Y8_N48
\b2v_inst|u8|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~5_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(6) ) + ( GND ) + ( \b2v_inst|u8|Add2~10\ ))
-- \b2v_inst|u8|Add2~6\ = CARRY(( \b2v_inst|u8|combo_cnt\(6) ) + ( GND ) + ( \b2v_inst|u8|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(6),
	cin => \b2v_inst|u8|Add2~10\,
	sumout => \b2v_inst|u8|Add2~5_sumout\,
	cout => \b2v_inst|u8|Add2~6\);

-- Location: FF_X36_Y8_N56
\b2v_inst|u8|combo_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~5_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(6));

-- Location: LABCELL_X36_Y8_N51
\b2v_inst|u8|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~49_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(7) ) + ( GND ) + ( \b2v_inst|u8|Add2~6\ ))
-- \b2v_inst|u8|Add2~50\ = CARRY(( \b2v_inst|u8|combo_cnt\(7) ) + ( GND ) + ( \b2v_inst|u8|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt\(7),
	cin => \b2v_inst|u8|Add2~6\,
	sumout => \b2v_inst|u8|Add2~49_sumout\,
	cout => \b2v_inst|u8|Add2~50\);

-- Location: FF_X36_Y8_N23
\b2v_inst|u8|combo_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~49_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(7));

-- Location: LABCELL_X36_Y8_N54
\b2v_inst|u8|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~45_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(8) ) + ( GND ) + ( \b2v_inst|u8|Add2~50\ ))
-- \b2v_inst|u8|Add2~46\ = CARRY(( \b2v_inst|u8|combo_cnt\(8) ) + ( GND ) + ( \b2v_inst|u8|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(8),
	cin => \b2v_inst|u8|Add2~50\,
	sumout => \b2v_inst|u8|Add2~45_sumout\,
	cout => \b2v_inst|u8|Add2~46\);

-- Location: FF_X36_Y8_N59
\b2v_inst|u8|combo_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~45_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(8));

-- Location: LABCELL_X36_Y8_N57
\b2v_inst|u8|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~41_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(9) ) + ( GND ) + ( \b2v_inst|u8|Add2~46\ ))
-- \b2v_inst|u8|Add2~42\ = CARRY(( \b2v_inst|u8|combo_cnt\(9) ) + ( GND ) + ( \b2v_inst|u8|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(9),
	cin => \b2v_inst|u8|Add2~46\,
	sumout => \b2v_inst|u8|Add2~41_sumout\,
	cout => \b2v_inst|u8|Add2~42\);

-- Location: FF_X36_Y8_N8
\b2v_inst|u8|combo_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~41_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(9));

-- Location: LABCELL_X36_Y7_N0
\b2v_inst|u8|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~37_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(10) ) + ( GND ) + ( \b2v_inst|u8|Add2~42\ ))
-- \b2v_inst|u8|Add2~38\ = CARRY(( \b2v_inst|u8|combo_cnt\(10) ) + ( GND ) + ( \b2v_inst|u8|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(10),
	cin => \b2v_inst|u8|Add2~42\,
	sumout => \b2v_inst|u8|Add2~37_sumout\,
	cout => \b2v_inst|u8|Add2~38\);

-- Location: FF_X36_Y8_N38
\b2v_inst|u8|combo_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~37_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(10));

-- Location: LABCELL_X36_Y7_N3
\b2v_inst|u8|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~33_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(11) ) + ( GND ) + ( \b2v_inst|u8|Add2~38\ ))
-- \b2v_inst|u8|Add2~34\ = CARRY(( \b2v_inst|u8|combo_cnt\(11) ) + ( GND ) + ( \b2v_inst|u8|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(11),
	cin => \b2v_inst|u8|Add2~38\,
	sumout => \b2v_inst|u8|Add2~33_sumout\,
	cout => \b2v_inst|u8|Add2~34\);

-- Location: FF_X36_Y7_N59
\b2v_inst|u8|combo_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~33_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(11));

-- Location: LABCELL_X36_Y7_N6
\b2v_inst|u8|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~29_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(12) ) + ( GND ) + ( \b2v_inst|u8|Add2~34\ ))
-- \b2v_inst|u8|Add2~30\ = CARRY(( \b2v_inst|u8|combo_cnt\(12) ) + ( GND ) + ( \b2v_inst|u8|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(12),
	cin => \b2v_inst|u8|Add2~34\,
	sumout => \b2v_inst|u8|Add2~29_sumout\,
	cout => \b2v_inst|u8|Add2~30\);

-- Location: FF_X36_Y7_N35
\b2v_inst|u8|combo_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~29_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(12));

-- Location: LABCELL_X36_Y7_N9
\b2v_inst|u8|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~97_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(13) ) + ( GND ) + ( \b2v_inst|u8|Add2~30\ ))
-- \b2v_inst|u8|Add2~98\ = CARRY(( \b2v_inst|u8|combo_cnt\(13) ) + ( GND ) + ( \b2v_inst|u8|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(13),
	cin => \b2v_inst|u8|Add2~30\,
	sumout => \b2v_inst|u8|Add2~97_sumout\,
	cout => \b2v_inst|u8|Add2~98\);

-- Location: FF_X36_Y7_N11
\b2v_inst|u8|combo_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~97_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(13));

-- Location: LABCELL_X36_Y7_N12
\b2v_inst|u8|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~93_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(14) ) + ( GND ) + ( \b2v_inst|u8|Add2~98\ ))
-- \b2v_inst|u8|Add2~94\ = CARRY(( \b2v_inst|u8|combo_cnt\(14) ) + ( GND ) + ( \b2v_inst|u8|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(14),
	cin => \b2v_inst|u8|Add2~98\,
	sumout => \b2v_inst|u8|Add2~93_sumout\,
	cout => \b2v_inst|u8|Add2~94\);

-- Location: FF_X36_Y7_N23
\b2v_inst|u8|combo_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~93_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(14));

-- Location: LABCELL_X36_Y7_N15
\b2v_inst|u8|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~89_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(15) ) + ( GND ) + ( \b2v_inst|u8|Add2~94\ ))
-- \b2v_inst|u8|Add2~90\ = CARRY(( \b2v_inst|u8|combo_cnt\(15) ) + ( GND ) + ( \b2v_inst|u8|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(15),
	cin => \b2v_inst|u8|Add2~94\,
	sumout => \b2v_inst|u8|Add2~89_sumout\,
	cout => \b2v_inst|u8|Add2~90\);

-- Location: FF_X36_Y7_N17
\b2v_inst|u8|combo_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~89_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(15));

-- Location: LABCELL_X36_Y7_N18
\b2v_inst|u8|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~85_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(16) ) + ( GND ) + ( \b2v_inst|u8|Add2~90\ ))
-- \b2v_inst|u8|Add2~86\ = CARRY(( \b2v_inst|u8|combo_cnt\(16) ) + ( GND ) + ( \b2v_inst|u8|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(16),
	cin => \b2v_inst|u8|Add2~90\,
	sumout => \b2v_inst|u8|Add2~85_sumout\,
	cout => \b2v_inst|u8|Add2~86\);

-- Location: FF_X36_Y7_N5
\b2v_inst|u8|combo_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~85_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(16));

-- Location: LABCELL_X36_Y7_N21
\b2v_inst|u8|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~81_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(17) ) + ( GND ) + ( \b2v_inst|u8|Add2~86\ ))
-- \b2v_inst|u8|Add2~82\ = CARRY(( \b2v_inst|u8|combo_cnt\(17) ) + ( GND ) + ( \b2v_inst|u8|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(17),
	cin => \b2v_inst|u8|Add2~86\,
	sumout => \b2v_inst|u8|Add2~81_sumout\,
	cout => \b2v_inst|u8|Add2~82\);

-- Location: FF_X36_Y7_N56
\b2v_inst|u8|combo_cnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~81_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N24
\b2v_inst|u8|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~77_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(18) ) + ( GND ) + ( \b2v_inst|u8|Add2~82\ ))
-- \b2v_inst|u8|Add2~78\ = CARRY(( \b2v_inst|u8|combo_cnt\(18) ) + ( GND ) + ( \b2v_inst|u8|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(18),
	cin => \b2v_inst|u8|Add2~82\,
	sumout => \b2v_inst|u8|Add2~77_sumout\,
	cout => \b2v_inst|u8|Add2~78\);

-- Location: FF_X36_Y7_N26
\b2v_inst|u8|combo_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~77_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(18));

-- Location: LABCELL_X36_Y7_N57
\b2v_inst|u8|Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Equal4~3_combout\ = ( \b2v_inst|u8|combo_cnt\(16) & ( \b2v_inst|u8|combo_cnt\(18) & ( (\b2v_inst|u8|combo_cnt[17]~DUPLICATE_q\ & (\b2v_inst|u8|combo_cnt\(13) & (\b2v_inst|u8|combo_cnt\(15) & \b2v_inst|u8|combo_cnt\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt[17]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(13),
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(15),
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(14),
	datae => \b2v_inst|u8|ALT_INV_combo_cnt\(16),
	dataf => \b2v_inst|u8|ALT_INV_combo_cnt\(18),
	combout => \b2v_inst|u8|Equal4~3_combout\);

-- Location: LABCELL_X36_Y7_N27
\b2v_inst|u8|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~73_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(19) ) + ( GND ) + ( \b2v_inst|u8|Add2~78\ ))
-- \b2v_inst|u8|Add2~74\ = CARRY(( \b2v_inst|u8|combo_cnt\(19) ) + ( GND ) + ( \b2v_inst|u8|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(19),
	cin => \b2v_inst|u8|Add2~78\,
	sumout => \b2v_inst|u8|Add2~73_sumout\,
	cout => \b2v_inst|u8|Add2~74\);

-- Location: FF_X36_Y7_N28
\b2v_inst|u8|combo_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add2~73_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(19));

-- Location: LABCELL_X36_Y7_N30
\b2v_inst|u8|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~69_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(20) ) + ( GND ) + ( \b2v_inst|u8|Add2~74\ ))
-- \b2v_inst|u8|Add2~70\ = CARRY(( \b2v_inst|u8|combo_cnt\(20) ) + ( GND ) + ( \b2v_inst|u8|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(20),
	cin => \b2v_inst|u8|Add2~74\,
	sumout => \b2v_inst|u8|Add2~69_sumout\,
	cout => \b2v_inst|u8|Add2~70\);

-- Location: FF_X36_Y8_N20
\b2v_inst|u8|combo_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~69_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(20));

-- Location: FF_X36_Y7_N50
\b2v_inst|u8|combo_cnt[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|combo_cnt[21]~feeder_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt[21]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N33
\b2v_inst|u8|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~65_sumout\ = SUM(( \b2v_inst|u8|combo_cnt[21]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|Add2~70\ ))
-- \b2v_inst|u8|Add2~66\ = CARRY(( \b2v_inst|u8|combo_cnt[21]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt[21]~DUPLICATE_q\,
	cin => \b2v_inst|u8|Add2~70\,
	sumout => \b2v_inst|u8|Add2~65_sumout\,
	cout => \b2v_inst|u8|Add2~66\);

-- Location: LABCELL_X36_Y7_N48
\b2v_inst|u8|combo_cnt[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|combo_cnt[21]~feeder_combout\ = ( \b2v_inst|u8|Add2~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|u8|ALT_INV_Add2~65_sumout\,
	combout => \b2v_inst|u8|combo_cnt[21]~feeder_combout\);

-- Location: FF_X36_Y7_N49
\b2v_inst|u8|combo_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|combo_cnt[21]~feeder_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(21));

-- Location: LABCELL_X36_Y7_N36
\b2v_inst|u8|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~61_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(22) ) + ( GND ) + ( \b2v_inst|u8|Add2~66\ ))
-- \b2v_inst|u8|Add2~62\ = CARRY(( \b2v_inst|u8|combo_cnt\(22) ) + ( GND ) + ( \b2v_inst|u8|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(22),
	cin => \b2v_inst|u8|Add2~66\,
	sumout => \b2v_inst|u8|Add2~61_sumout\,
	cout => \b2v_inst|u8|Add2~62\);

-- Location: FF_X36_Y8_N28
\b2v_inst|u8|combo_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~61_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(22));

-- Location: LABCELL_X36_Y7_N39
\b2v_inst|u8|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~57_sumout\ = SUM(( \b2v_inst|u8|combo_cnt\(23) ) + ( GND ) + ( \b2v_inst|u8|Add2~62\ ))
-- \b2v_inst|u8|Add2~58\ = CARRY(( \b2v_inst|u8|combo_cnt\(23) ) + ( GND ) + ( \b2v_inst|u8|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(23),
	cin => \b2v_inst|u8|Add2~62\,
	sumout => \b2v_inst|u8|Add2~57_sumout\,
	cout => \b2v_inst|u8|Add2~58\);

-- Location: FF_X36_Y8_N35
\b2v_inst|u8|combo_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst|u8|Add2~57_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(23));

-- Location: FF_X36_Y7_N53
\b2v_inst|u8|combo_cnt[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|combo_cnt[24]~feeder_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt[24]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N42
\b2v_inst|u8|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add2~53_sumout\ = SUM(( \b2v_inst|u8|combo_cnt[24]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_combo_cnt[24]~DUPLICATE_q\,
	cin => \b2v_inst|u8|Add2~58\,
	sumout => \b2v_inst|u8|Add2~53_sumout\);

-- Location: LABCELL_X36_Y7_N51
\b2v_inst|u8|combo_cnt[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|combo_cnt[24]~feeder_combout\ = ( \b2v_inst|u8|Add2~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|u8|ALT_INV_Add2~53_sumout\,
	combout => \b2v_inst|u8|combo_cnt[24]~feeder_combout\);

-- Location: FF_X36_Y7_N52
\b2v_inst|u8|combo_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|combo_cnt[24]~feeder_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|iexposure_adj_delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|combo_cnt\(24));

-- Location: LABCELL_X36_Y8_N27
\b2v_inst|u8|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Equal4~2_combout\ = ( !\b2v_inst|u8|combo_cnt\(22) & ( !\b2v_inst|u8|combo_cnt\(24) & ( (\b2v_inst|u8|combo_cnt\(20) & (!\b2v_inst|u8|combo_cnt\(21) & (\b2v_inst|u8|combo_cnt\(19) & !\b2v_inst|u8|combo_cnt\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt\(20),
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(21),
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(19),
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(23),
	datae => \b2v_inst|u8|ALT_INV_combo_cnt\(22),
	dataf => \b2v_inst|u8|ALT_INV_combo_cnt\(24),
	combout => \b2v_inst|u8|Equal4~2_combout\);

-- Location: LABCELL_X36_Y8_N21
\b2v_inst|u8|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Equal4~0_combout\ = ( \b2v_inst|u8|combo_cnt\(6) & ( \b2v_inst|u8|combo_cnt\(2) & ( (\b2v_inst|u8|combo_cnt\(1) & (\b2v_inst|u8|combo_cnt\(3) & (\b2v_inst|u8|combo_cnt\(5) & \b2v_inst|u8|combo_cnt\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt\(1),
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(3),
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(5),
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(4),
	datae => \b2v_inst|u8|ALT_INV_combo_cnt\(6),
	dataf => \b2v_inst|u8|ALT_INV_combo_cnt\(2),
	combout => \b2v_inst|u8|Equal4~0_combout\);

-- Location: LABCELL_X36_Y8_N9
\b2v_inst|u8|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Equal4~1_combout\ = ( \b2v_inst|u8|combo_cnt\(7) & ( \b2v_inst|u8|combo_cnt\(11) & ( (\b2v_inst|u8|combo_cnt\(12) & (\b2v_inst|u8|combo_cnt\(9) & (\b2v_inst|u8|combo_cnt\(8) & \b2v_inst|u8|combo_cnt\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_combo_cnt\(12),
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(9),
	datac => \b2v_inst|u8|ALT_INV_combo_cnt\(8),
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(10),
	datae => \b2v_inst|u8|ALT_INV_combo_cnt\(7),
	dataf => \b2v_inst|u8|ALT_INV_combo_cnt\(11),
	combout => \b2v_inst|u8|Equal4~1_combout\);

-- Location: LABCELL_X36_Y8_N15
\b2v_inst|u8|i2c_reset~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|i2c_reset~0_combout\ = ( \b2v_inst|u2|oRST_2~q\ & ( (!\b2v_inst|u8|iexposure_adj_delay\(3)) # (\b2v_inst|u8|iexposure_adj_delay\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(3),
	datad => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(2),
	dataf => \b2v_inst|u2|ALT_INV_oRST_2~q\,
	combout => \b2v_inst|u8|i2c_reset~0_combout\);

-- Location: LABCELL_X36_Y8_N0
\b2v_inst|u8|i2c_reset\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|i2c_reset~combout\ = ( \b2v_inst|u8|Equal4~1_combout\ & ( \b2v_inst|u8|i2c_reset~0_combout\ & ( (\b2v_inst|u8|Equal4~3_combout\ & (\b2v_inst|u8|combo_cnt\(0) & (\b2v_inst|u8|Equal4~2_combout\ & \b2v_inst|u8|Equal4~0_combout\))) ) ) ) # ( 
-- \b2v_inst|u8|Equal4~1_combout\ & ( !\b2v_inst|u8|i2c_reset~0_combout\ ) ) # ( !\b2v_inst|u8|Equal4~1_combout\ & ( !\b2v_inst|u8|i2c_reset~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_Equal4~3_combout\,
	datab => \b2v_inst|u8|ALT_INV_combo_cnt\(0),
	datac => \b2v_inst|u8|ALT_INV_Equal4~2_combout\,
	datad => \b2v_inst|u8|ALT_INV_Equal4~0_combout\,
	datae => \b2v_inst|u8|ALT_INV_Equal4~1_combout\,
	dataf => \b2v_inst|u8|ALT_INV_i2c_reset~0_combout\,
	combout => \b2v_inst|u8|i2c_reset~combout\);

-- Location: MLABCELL_X39_Y9_N12
\b2v_inst|u8|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~13_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(4) ) + ( GND ) + ( \b2v_inst|u8|Add3~10\ ))
-- \b2v_inst|u8|Add3~14\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(4) ) + ( GND ) + ( \b2v_inst|u8|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(4),
	cin => \b2v_inst|u8|Add3~10\,
	sumout => \b2v_inst|u8|Add3~13_sumout\,
	cout => \b2v_inst|u8|Add3~14\);

-- Location: MLABCELL_X39_Y9_N15
\b2v_inst|u8|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~17_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(5) ) + ( GND ) + ( \b2v_inst|u8|Add3~14\ ))
-- \b2v_inst|u8|Add3~18\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(5) ) + ( GND ) + ( \b2v_inst|u8|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(5),
	cin => \b2v_inst|u8|Add3~14\,
	sumout => \b2v_inst|u8|Add3~17_sumout\,
	cout => \b2v_inst|u8|Add3~18\);

-- Location: FF_X39_Y9_N16
\b2v_inst|u8|mI2C_CLK_DIV[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~17_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(5));

-- Location: MLABCELL_X39_Y9_N18
\b2v_inst|u8|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~21_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(6) ) + ( GND ) + ( \b2v_inst|u8|Add3~18\ ))
-- \b2v_inst|u8|Add3~22\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(6) ) + ( GND ) + ( \b2v_inst|u8|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(6),
	cin => \b2v_inst|u8|Add3~18\,
	sumout => \b2v_inst|u8|Add3~21_sumout\,
	cout => \b2v_inst|u8|Add3~22\);

-- Location: FF_X39_Y9_N20
\b2v_inst|u8|mI2C_CLK_DIV[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~21_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(6));

-- Location: MLABCELL_X39_Y9_N21
\b2v_inst|u8|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~25_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(7) ) + ( GND ) + ( \b2v_inst|u8|Add3~22\ ))
-- \b2v_inst|u8|Add3~26\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(7) ) + ( GND ) + ( \b2v_inst|u8|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(7),
	cin => \b2v_inst|u8|Add3~22\,
	sumout => \b2v_inst|u8|Add3~25_sumout\,
	cout => \b2v_inst|u8|Add3~26\);

-- Location: FF_X39_Y9_N22
\b2v_inst|u8|mI2C_CLK_DIV[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~25_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(7));

-- Location: MLABCELL_X39_Y9_N24
\b2v_inst|u8|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~29_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(8) ) + ( GND ) + ( \b2v_inst|u8|Add3~26\ ))
-- \b2v_inst|u8|Add3~30\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(8) ) + ( GND ) + ( \b2v_inst|u8|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(8),
	cin => \b2v_inst|u8|Add3~26\,
	sumout => \b2v_inst|u8|Add3~29_sumout\,
	cout => \b2v_inst|u8|Add3~30\);

-- Location: FF_X39_Y9_N26
\b2v_inst|u8|mI2C_CLK_DIV[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~29_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(8));

-- Location: MLABCELL_X39_Y9_N27
\b2v_inst|u8|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~37_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(9) ) + ( GND ) + ( \b2v_inst|u8|Add3~30\ ))
-- \b2v_inst|u8|Add3~38\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(9) ) + ( GND ) + ( \b2v_inst|u8|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(9),
	cin => \b2v_inst|u8|Add3~30\,
	sumout => \b2v_inst|u8|Add3~37_sumout\,
	cout => \b2v_inst|u8|Add3~38\);

-- Location: FF_X39_Y9_N29
\b2v_inst|u8|mI2C_CLK_DIV[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~37_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(9));

-- Location: MLABCELL_X39_Y9_N30
\b2v_inst|u8|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~33_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(10) ) + ( GND ) + ( \b2v_inst|u8|Add3~38\ ))
-- \b2v_inst|u8|Add3~34\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(10) ) + ( GND ) + ( \b2v_inst|u8|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(10),
	cin => \b2v_inst|u8|Add3~38\,
	sumout => \b2v_inst|u8|Add3~33_sumout\,
	cout => \b2v_inst|u8|Add3~34\);

-- Location: FF_X39_Y9_N32
\b2v_inst|u8|mI2C_CLK_DIV[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~33_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(10));

-- Location: MLABCELL_X39_Y9_N57
\b2v_inst|u8|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan2~2_combout\ = ( !\b2v_inst|u8|mI2C_CLK_DIV\(10) & ( !\b2v_inst|u8|mI2C_CLK_DIV\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(9),
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(10),
	combout => \b2v_inst|u8|LessThan2~2_combout\);

-- Location: MLABCELL_X39_Y9_N33
\b2v_inst|u8|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~1_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(11) ) + ( GND ) + ( \b2v_inst|u8|Add3~34\ ))
-- \b2v_inst|u8|Add3~2\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(11) ) + ( GND ) + ( \b2v_inst|u8|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(11),
	cin => \b2v_inst|u8|Add3~34\,
	sumout => \b2v_inst|u8|Add3~1_sumout\,
	cout => \b2v_inst|u8|Add3~2\);

-- Location: FF_X39_Y9_N34
\b2v_inst|u8|mI2C_CLK_DIV[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~1_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(11));

-- Location: MLABCELL_X39_Y9_N54
\b2v_inst|u8|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan2~1_combout\ = ( \b2v_inst|u8|mI2C_CLK_DIV\(6) & ( (\b2v_inst|u8|mI2C_CLK_DIV\(7) & \b2v_inst|u8|mI2C_CLK_DIV\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(7),
	datac => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(8),
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(6),
	combout => \b2v_inst|u8|LessThan2~1_combout\);

-- Location: MLABCELL_X39_Y9_N36
\b2v_inst|u8|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~53_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(12) ) + ( GND ) + ( \b2v_inst|u8|Add3~2\ ))
-- \b2v_inst|u8|Add3~54\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(12) ) + ( GND ) + ( \b2v_inst|u8|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(12),
	cin => \b2v_inst|u8|Add3~2\,
	sumout => \b2v_inst|u8|Add3~53_sumout\,
	cout => \b2v_inst|u8|Add3~54\);

-- Location: FF_X39_Y9_N38
\b2v_inst|u8|mI2C_CLK_DIV[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~53_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(12));

-- Location: MLABCELL_X39_Y9_N39
\b2v_inst|u8|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~49_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(13) ) + ( GND ) + ( \b2v_inst|u8|Add3~54\ ))
-- \b2v_inst|u8|Add3~50\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(13) ) + ( GND ) + ( \b2v_inst|u8|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(13),
	cin => \b2v_inst|u8|Add3~54\,
	sumout => \b2v_inst|u8|Add3~49_sumout\,
	cout => \b2v_inst|u8|Add3~50\);

-- Location: FF_X39_Y9_N41
\b2v_inst|u8|mI2C_CLK_DIV[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~49_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(13));

-- Location: MLABCELL_X39_Y9_N42
\b2v_inst|u8|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~45_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(14) ) + ( GND ) + ( \b2v_inst|u8|Add3~50\ ))
-- \b2v_inst|u8|Add3~46\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(14) ) + ( GND ) + ( \b2v_inst|u8|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(14),
	cin => \b2v_inst|u8|Add3~50\,
	sumout => \b2v_inst|u8|Add3~45_sumout\,
	cout => \b2v_inst|u8|Add3~46\);

-- Location: FF_X39_Y9_N44
\b2v_inst|u8|mI2C_CLK_DIV[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~45_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(14));

-- Location: MLABCELL_X39_Y9_N45
\b2v_inst|u8|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~41_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(15) ) + ( GND ) + ( \b2v_inst|u8|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(15),
	cin => \b2v_inst|u8|Add3~46\,
	sumout => \b2v_inst|u8|Add3~41_sumout\);

-- Location: FF_X39_Y9_N47
\b2v_inst|u8|mI2C_CLK_DIV[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~41_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(15));

-- Location: MLABCELL_X39_Y9_N51
\b2v_inst|u8|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan2~3_combout\ = ( !\b2v_inst|u8|mI2C_CLK_DIV\(14) & ( (!\b2v_inst|u8|mI2C_CLK_DIV\(12) & (!\b2v_inst|u8|mI2C_CLK_DIV\(13) & !\b2v_inst|u8|mI2C_CLK_DIV\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(12),
	datac => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(13),
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(15),
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(14),
	combout => \b2v_inst|u8|LessThan2~3_combout\);

-- Location: MLABCELL_X39_Y7_N9
\b2v_inst|u8|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan2~4_combout\ = ( \b2v_inst|u8|LessThan2~3_combout\ & ( \b2v_inst|u8|LessThan2~0_combout\ & ( (!\b2v_inst|u8|LessThan2~2_combout\ & \b2v_inst|u8|mI2C_CLK_DIV\(11)) ) ) ) # ( !\b2v_inst|u8|LessThan2~3_combout\ & ( 
-- \b2v_inst|u8|LessThan2~0_combout\ ) ) # ( \b2v_inst|u8|LessThan2~3_combout\ & ( !\b2v_inst|u8|LessThan2~0_combout\ & ( (\b2v_inst|u8|mI2C_CLK_DIV\(11) & ((!\b2v_inst|u8|LessThan2~2_combout\) # (\b2v_inst|u8|LessThan2~1_combout\))) ) ) ) # ( 
-- !\b2v_inst|u8|LessThan2~3_combout\ & ( !\b2v_inst|u8|LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001000110010001111111111111111110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LessThan2~2_combout\,
	datab => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(11),
	datac => \b2v_inst|u8|ALT_INV_LessThan2~1_combout\,
	datae => \b2v_inst|u8|ALT_INV_LessThan2~3_combout\,
	dataf => \b2v_inst|u8|ALT_INV_LessThan2~0_combout\,
	combout => \b2v_inst|u8|LessThan2~4_combout\);

-- Location: FF_X39_Y9_N2
\b2v_inst|u8|mI2C_CLK_DIV[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~61_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(0));

-- Location: MLABCELL_X39_Y9_N3
\b2v_inst|u8|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~57_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(1) ) + ( GND ) + ( \b2v_inst|u8|Add3~62\ ))
-- \b2v_inst|u8|Add3~58\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(1) ) + ( GND ) + ( \b2v_inst|u8|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(1),
	cin => \b2v_inst|u8|Add3~62\,
	sumout => \b2v_inst|u8|Add3~57_sumout\,
	cout => \b2v_inst|u8|Add3~58\);

-- Location: FF_X39_Y9_N5
\b2v_inst|u8|mI2C_CLK_DIV[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~57_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(1));

-- Location: MLABCELL_X39_Y9_N6
\b2v_inst|u8|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~5_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(2) ) + ( GND ) + ( \b2v_inst|u8|Add3~58\ ))
-- \b2v_inst|u8|Add3~6\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(2) ) + ( GND ) + ( \b2v_inst|u8|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(2),
	cin => \b2v_inst|u8|Add3~58\,
	sumout => \b2v_inst|u8|Add3~5_sumout\,
	cout => \b2v_inst|u8|Add3~6\);

-- Location: FF_X39_Y9_N7
\b2v_inst|u8|mI2C_CLK_DIV[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~5_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(2));

-- Location: MLABCELL_X39_Y9_N9
\b2v_inst|u8|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add3~9_sumout\ = SUM(( \b2v_inst|u8|mI2C_CLK_DIV\(3) ) + ( GND ) + ( \b2v_inst|u8|Add3~6\ ))
-- \b2v_inst|u8|Add3~10\ = CARRY(( \b2v_inst|u8|mI2C_CLK_DIV\(3) ) + ( GND ) + ( \b2v_inst|u8|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(3),
	cin => \b2v_inst|u8|Add3~6\,
	sumout => \b2v_inst|u8|Add3~9_sumout\,
	cout => \b2v_inst|u8|Add3~10\);

-- Location: FF_X39_Y9_N11
\b2v_inst|u8|mI2C_CLK_DIV[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~9_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(3));

-- Location: FF_X39_Y9_N14
\b2v_inst|u8|mI2C_CLK_DIV[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|Add3~13_sumout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sclr => \b2v_inst|u8|LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CLK_DIV\(4));

-- Location: MLABCELL_X39_Y9_N48
\b2v_inst|u8|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan2~0_combout\ = ( !\b2v_inst|u8|mI2C_CLK_DIV\(3) & ( (!\b2v_inst|u8|mI2C_CLK_DIV\(4) & (!\b2v_inst|u8|mI2C_CLK_DIV\(2) & !\b2v_inst|u8|mI2C_CLK_DIV\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(4),
	datac => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(2),
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(5),
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(3),
	combout => \b2v_inst|u8|LessThan2~0_combout\);

-- Location: MLABCELL_X39_Y7_N48
\b2v_inst|u8|mI2C_CTRL_CLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|mI2C_CTRL_CLK~0_combout\ = ( \b2v_inst|u8|LessThan2~3_combout\ & ( \b2v_inst|u8|mI2C_CTRL_CLK~q\ & ( (!\b2v_inst|u8|mI2C_CLK_DIV\(11)) # ((\b2v_inst|u8|LessThan2~2_combout\ & ((!\b2v_inst|u8|LessThan2~1_combout\) # 
-- (\b2v_inst|u8|LessThan2~0_combout\)))) ) ) ) # ( \b2v_inst|u8|LessThan2~3_combout\ & ( !\b2v_inst|u8|mI2C_CTRL_CLK~q\ & ( (\b2v_inst|u8|mI2C_CLK_DIV\(11) & ((!\b2v_inst|u8|LessThan2~2_combout\) # ((!\b2v_inst|u8|LessThan2~0_combout\ & 
-- \b2v_inst|u8|LessThan2~1_combout\)))) ) ) ) # ( !\b2v_inst|u8|LessThan2~3_combout\ & ( !\b2v_inst|u8|mI2C_CTRL_CLK~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111001000000000000000001111111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LessThan2~0_combout\,
	datab => \b2v_inst|u8|ALT_INV_LessThan2~1_combout\,
	datac => \b2v_inst|u8|ALT_INV_LessThan2~2_combout\,
	datad => \b2v_inst|u8|ALT_INV_mI2C_CLK_DIV\(11),
	datae => \b2v_inst|u8|ALT_INV_LessThan2~3_combout\,
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CTRL_CLK~q\,
	combout => \b2v_inst|u8|mI2C_CTRL_CLK~0_combout\);

-- Location: FF_X36_Y7_N44
\b2v_inst|u8|mI2C_CTRL_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \b2v_inst|u8|mI2C_CTRL_CLK~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_CTRL_CLK~q\);

-- Location: MLABCELL_X34_Y8_N36
\b2v_inst|u8|Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add4~0_combout\ = ( \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( !\b2v_inst|u8|LUT_INDEX\(1) ) ) # ( !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( \b2v_inst|u8|LUT_INDEX\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	combout => \b2v_inst|u8|Add4~0_combout\);

-- Location: FF_X34_Y8_N53
\b2v_inst|u8|LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Add4~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LUT_INDEX[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX\(1));

-- Location: LABCELL_X35_Y8_N21
\b2v_inst|u8|LUT_INDEX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LUT_INDEX[2]~3_combout\ = ( \b2v_inst|u8|LUT_INDEX[5]~1_combout\ & ( !\b2v_inst|u8|LUT_INDEX\(2) $ (((!\b2v_inst|u8|LUT_INDEX\(1)) # (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) ) ) # ( !\b2v_inst|u8|LUT_INDEX[5]~1_combout\ & ( 
-- \b2v_inst|u8|LUT_INDEX\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[5]~1_combout\,
	combout => \b2v_inst|u8|LUT_INDEX[2]~3_combout\);

-- Location: FF_X35_Y8_N59
\b2v_inst|u8|LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|LUT_INDEX[2]~3_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX\(2));

-- Location: MLABCELL_X34_Y8_N42
\b2v_inst|u8|LUT_INDEX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LUT_INDEX[4]~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(1) & ( \b2v_inst|u8|mSetup_ST.0010~q\ & ( ((\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(2) & \b2v_inst|u8|LUT_INDEX\(3)))) # (\b2v_inst|u8|LUT_INDEX\(4)) ) ) ) # ( 
-- !\b2v_inst|u8|LUT_INDEX\(1) & ( \b2v_inst|u8|mSetup_ST.0010~q\ & ( \b2v_inst|u8|LUT_INDEX\(4) ) ) ) # ( \b2v_inst|u8|LUT_INDEX\(1) & ( !\b2v_inst|u8|mSetup_ST.0010~q\ & ( \b2v_inst|u8|LUT_INDEX\(4) ) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(1) & ( 
-- !\b2v_inst|u8|mSetup_ST.0010~q\ & ( \b2v_inst|u8|LUT_INDEX\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	dataf => \b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\,
	combout => \b2v_inst|u8|LUT_INDEX[4]~0_combout\);

-- Location: FF_X35_Y8_N47
\b2v_inst|u8|LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|LUT_INDEX[4]~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX\(4));

-- Location: MLABCELL_X34_Y8_N0
\b2v_inst|u8|LUT_INDEX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LUT_INDEX[5]~1_combout\ = ( \b2v_inst|u8|LUT_INDEX\(4) & ( \b2v_inst|u8|mSetup_ST.0010~q\ & ( (!\b2v_inst|u8|LUT_INDEX\(3)) # ((!\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX\(1) & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\b2v_inst|u8|LUT_INDEX\(4) & ( \b2v_inst|u8|mSetup_ST.0010~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\,
	combout => \b2v_inst|u8|LUT_INDEX[5]~1_combout\);

-- Location: FF_X34_Y8_N5
\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|LUT_INDEX[0]~4_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LUT_INDEX[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y8_N48
\b2v_inst|u8|LUT_INDEX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LUT_INDEX[0]~4_combout\ = ( !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	combout => \b2v_inst|u8|LUT_INDEX[0]~4_combout\);

-- Location: FF_X34_Y8_N4
\b2v_inst|u8|LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|LUT_INDEX[0]~4_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LUT_INDEX[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX\(0));

-- Location: LABCELL_X35_Y8_N57
\b2v_inst|u8|LUT_INDEX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LUT_INDEX[3]~2_combout\ = ( \b2v_inst|u8|LUT_INDEX[5]~1_combout\ & ( !\b2v_inst|u8|LUT_INDEX\(3) $ (((!\b2v_inst|u8|LUT_INDEX\(0)) # ((!\b2v_inst|u8|LUT_INDEX\(1)) # (!\b2v_inst|u8|LUT_INDEX\(2))))) ) ) # ( 
-- !\b2v_inst|u8|LUT_INDEX[5]~1_combout\ & ( \b2v_inst|u8|LUT_INDEX\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(0),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[5]~1_combout\,
	combout => \b2v_inst|u8|LUT_INDEX[3]~2_combout\);

-- Location: FF_X35_Y8_N26
\b2v_inst|u8|LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|LUT_INDEX[3]~2_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX\(3));

-- Location: FF_X34_Y8_N52
\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Add4~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LUT_INDEX[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y8_N54
\b2v_inst|u8|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|LessThan3~0_combout\ = ( \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(3)) # (!\b2v_inst|u8|LUT_INDEX\(4)) ) ) # ( !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(3)) # 
-- ((!\b2v_inst|u8|LUT_INDEX\(4)) # ((!\b2v_inst|u8|LUT_INDEX\(0) & !\b2v_inst|u8|LUT_INDEX\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111111101111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(0),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	combout => \b2v_inst|u8|LessThan3~0_combout\);

-- Location: FF_X40_Y8_N44
\b2v_inst|u8|mI2C_GO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Selector0~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_GO~q\);

-- Location: FF_X39_Y8_N37
\b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~5_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y9_N0
\b2v_inst|u8|u0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~21_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u8|u0|Add0~22\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \b2v_inst|u8|u0|Add0~21_sumout\,
	cout => \b2v_inst|u8|u0|Add0~22\);

-- Location: LABCELL_X40_Y9_N3
\b2v_inst|u8|u0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~25_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~22\ ))
-- \b2v_inst|u8|u0|Add0~26\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	cin => \b2v_inst|u8|u0|Add0~22\,
	sumout => \b2v_inst|u8|u0|Add0~25_sumout\,
	cout => \b2v_inst|u8|u0|Add0~26\);

-- Location: LABCELL_X40_Y9_N6
\b2v_inst|u8|u0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~17_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~26\ ))
-- \b2v_inst|u8|u0|Add0~18\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	cin => \b2v_inst|u8|u0|Add0~26\,
	sumout => \b2v_inst|u8|u0|Add0~17_sumout\,
	cout => \b2v_inst|u8|u0|Add0~18\);

-- Location: MLABCELL_X39_Y8_N36
\b2v_inst|u8|u0|SD_COUNTER~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~5_combout\ = (!\b2v_inst|u8|mI2C_GO~q\) # (!\b2v_inst|u8|u0|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_mI2C_GO~q\,
	datad => \b2v_inst|u8|u0|ALT_INV_Add0~17_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~5_combout\);

-- Location: FF_X39_Y8_N38
\b2v_inst|u8|u0|SD_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~5_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(2));

-- Location: FF_X35_Y8_N34
\b2v_inst|u8|u0|END~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|END~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|END~DUPLICATE_q\);

-- Location: LABCELL_X40_Y9_N9
\b2v_inst|u8|u0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~13_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~18\ ))
-- \b2v_inst|u8|u0|Add0~14\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	cin => \b2v_inst|u8|u0|Add0~18\,
	sumout => \b2v_inst|u8|u0|Add0~13_sumout\,
	cout => \b2v_inst|u8|u0|Add0~14\);

-- Location: LABCELL_X40_Y8_N12
\b2v_inst|u8|u0|SD_COUNTER~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~4_combout\ = ( \b2v_inst|u8|u0|Add0~13_sumout\ & ( !\b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) ) # ( !\b2v_inst|u8|u0|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_Add0~13_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~4_combout\);

-- Location: FF_X40_Y8_N13
\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~4_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y9_N12
\b2v_inst|u8|u0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~9_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~14\ ))
-- \b2v_inst|u8|u0|Add0~10\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	cin => \b2v_inst|u8|u0|Add0~14\,
	sumout => \b2v_inst|u8|u0|Add0~9_sumout\,
	cout => \b2v_inst|u8|u0|Add0~10\);

-- Location: LABCELL_X40_Y8_N9
\b2v_inst|u8|u0|SD_COUNTER~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~3_combout\ = ( \b2v_inst|u8|u0|Add0~9_sumout\ & ( !\b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) ) # ( !\b2v_inst|u8|u0|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_Add0~9_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~3_combout\);

-- Location: FF_X40_Y8_N10
\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~3_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y9_N15
\b2v_inst|u8|u0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~5_sumout\ = SUM(( !\b2v_inst|u8|u0|SD_COUNTER\(5) ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~10\ ))
-- \b2v_inst|u8|u0|Add0~6\ = CARRY(( !\b2v_inst|u8|u0|SD_COUNTER\(5) ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	cin => \b2v_inst|u8|u0|Add0~10\,
	sumout => \b2v_inst|u8|u0|Add0~5_sumout\,
	cout => \b2v_inst|u8|u0|Add0~6\);

-- Location: LABCELL_X40_Y8_N3
\b2v_inst|u8|u0|SD_COUNTER~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~1_combout\ = (!\b2v_inst|u8|mI2C_GO~DUPLICATE_q\) # (!\b2v_inst|u8|u0|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_Add0~5_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~1_combout\);

-- Location: FF_X40_Y8_N5
\b2v_inst|u8|u0|SD_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~1_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(5));

-- Location: FF_X40_Y8_N11
\b2v_inst|u8|u0|SD_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~3_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(4));

-- Location: FF_X39_Y8_N7
\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y9_N18
\b2v_inst|u8|u0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Add0~1_sumout\ = SUM(( \b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ ) + ( GND ) + ( \b2v_inst|u8|u0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	cin => \b2v_inst|u8|u0|Add0~6\,
	sumout => \b2v_inst|u8|u0|Add0~1_sumout\);

-- Location: MLABCELL_X39_Y8_N6
\b2v_inst|u8|u0|SD_COUNTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~0_combout\ = ( \b2v_inst|u8|u0|Add0~1_sumout\ & ( (\b2v_inst|u8|mI2C_GO~DUPLICATE_q\ & ((!\b2v_inst|u8|u0|LessThan2~0_combout\) # (\b2v_inst|u8|u0|SD_COUNTER\(6)))) ) ) # ( !\b2v_inst|u8|u0|Add0~1_sumout\ & ( 
-- (\b2v_inst|u8|u0|SD_COUNTER\(6) & \b2v_inst|u8|mI2C_GO~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	datac => \b2v_inst|u8|u0|ALT_INV_LessThan2~0_combout\,
	datad => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_Add0~1_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~0_combout\);

-- Location: FF_X39_Y8_N8
\b2v_inst|u8|u0|SD_COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(6));

-- Location: LABCELL_X35_Y8_N15
\b2v_inst|u8|u0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Selector0~0_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER\(6) & ( \b2v_inst|u8|u0|SD_COUNTER\(5) & ( (\b2v_inst|u8|u0|SD_COUNTER\(0) & (\b2v_inst|u8|u0|SD_COUNTER\(4) & \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) ) ) ) # ( 
-- !\b2v_inst|u8|u0|SD_COUNTER\(6) & ( !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0) & (\b2v_inst|u8|u0|SD_COUNTER\(4) & !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	combout => \b2v_inst|u8|u0|Selector0~0_combout\);

-- Location: LABCELL_X35_Y8_N36
\b2v_inst|u8|u0|END~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|END~0_combout\ = ( \b2v_inst|u8|u0|Selector0~0_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(2) & (\b2v_inst|u8|u0|END~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD_COUNTER\(2) & ((!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- (\b2v_inst|u8|u0|END~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & ((\b2v_inst|u8|u0|SD_COUNTER\(5)))))) ) ) # ( !\b2v_inst|u8|u0|Selector0~0_combout\ & ( \b2v_inst|u8|u0|END~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001101110011001000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datab => \b2v_inst|u8|u0|ALT_INV_END~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	dataf => \b2v_inst|u8|u0|ALT_INV_Selector0~0_combout\,
	combout => \b2v_inst|u8|u0|END~0_combout\);

-- Location: FF_X35_Y8_N35
\b2v_inst|u8|u0|END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|END~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|END~q\);

-- Location: FF_X39_Y8_N53
\b2v_inst|u8|u0|SD_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~7_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(1));

-- Location: IOIBUF_X64_Y0_N35
\I2C_SDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: MLABCELL_X39_Y8_N39
\b2v_inst|u8|u0|ACK3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK3~2_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(2) & (\b2v_inst|u8|u0|SD_COUNTER\(5) & (!\b2v_inst|u8|u0|SD_COUNTER\(6) & !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|ACK3~2_combout\);

-- Location: MLABCELL_X39_Y8_N9
\b2v_inst|u8|u0|ACK3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK3~1_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & ( (\b2v_inst|u8|u0|SD_COUNTER\(2) & (!\b2v_inst|u8|u0|SD_COUNTER\(6) & (\b2v_inst|u8|u0|SD_COUNTER\(5) & \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|ACK3~1_combout\);

-- Location: MLABCELL_X39_Y8_N24
\b2v_inst|u8|u0|ACK3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK3~0_combout\ = ( \b2v_inst|u8|u0|ACK3~q\ & ( \b2v_inst|u8|u0|ACK3~1_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0)) # ((!\b2v_inst|u8|u0|SD_COUNTER\(1) & ((!\b2v_inst|u8|u0|ACK3~2_combout\) # (\I2C_SDAT~input_o\)))) ) ) ) # ( 
-- !\b2v_inst|u8|u0|ACK3~q\ & ( \b2v_inst|u8|u0|ACK3~1_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(1) & (\I2C_SDAT~input_o\ & (\b2v_inst|u8|u0|SD_COUNTER\(0) & \b2v_inst|u8|u0|ACK3~2_combout\))) ) ) ) # ( \b2v_inst|u8|u0|ACK3~q\ & ( 
-- !\b2v_inst|u8|u0|ACK3~1_combout\ & ( (((!\b2v_inst|u8|u0|SD_COUNTER\(0)) # (!\b2v_inst|u8|u0|ACK3~2_combout\)) # (\I2C_SDAT~input_o\)) # (\b2v_inst|u8|u0|SD_COUNTER\(1)) ) ) ) # ( !\b2v_inst|u8|u0|ACK3~q\ & ( !\b2v_inst|u8|u0|ACK3~1_combout\ & ( 
-- (!\b2v_inst|u8|u0|SD_COUNTER\(1) & (\I2C_SDAT~input_o\ & (\b2v_inst|u8|u0|SD_COUNTER\(0) & \b2v_inst|u8|u0|ACK3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111111011100000000000000101111101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datab => \ALT_INV_I2C_SDAT~input_o\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datad => \b2v_inst|u8|u0|ALT_INV_ACK3~2_combout\,
	datae => \b2v_inst|u8|u0|ALT_INV_ACK3~q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_ACK3~1_combout\,
	combout => \b2v_inst|u8|u0|ACK3~0_combout\);

-- Location: FF_X35_Y8_N14
\b2v_inst|u8|u0|ACK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|ACK3~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|ACK3~q\);

-- Location: MLABCELL_X39_Y8_N48
\b2v_inst|u8|u0|ACK4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK4~1_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(6) & ((!\b2v_inst|u8|u0|SD_COUNTER\(1) & (!\b2v_inst|u8|u0|SD_COUNTER\(2) & !\b2v_inst|u8|u0|SD_COUNTER\(5))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER\(1) & (\b2v_inst|u8|u0|SD_COUNTER\(2) & \b2v_inst|u8|u0|SD_COUNTER\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000001001000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|ACK4~1_combout\);

-- Location: MLABCELL_X39_Y8_N18
\b2v_inst|u8|u0|SD[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[23]~0_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & ( !\b2v_inst|u8|u0|SD_COUNTER\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|SD[23]~0_combout\);

-- Location: LABCELL_X35_Y8_N42
\b2v_inst|u8|u0|ACK4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK4~2_combout\ = ( \b2v_inst|u8|u0|ACK4~q\ & ( \b2v_inst|u8|u0|SD[23]~0_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0)) # ((!\b2v_inst|u8|u0|SD_COUNTER\(1)) # ((!\b2v_inst|u8|u0|ACK4~1_combout\) # 
-- (!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) ) ) # ( !\b2v_inst|u8|u0|ACK4~q\ & ( \b2v_inst|u8|u0|SD[23]~0_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0) & (!\b2v_inst|u8|u0|SD_COUNTER\(1) & (\b2v_inst|u8|u0|ACK4~1_combout\ & 
-- \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) ) ) # ( \b2v_inst|u8|u0|ACK4~q\ & ( !\b2v_inst|u8|u0|SD[23]~0_combout\ & ( (!\b2v_inst|u8|u0|ACK4~1_combout\) # (!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000010001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datac => \b2v_inst|u8|u0|ALT_INV_ACK4~1_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_ACK4~q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD[23]~0_combout\,
	combout => \b2v_inst|u8|u0|ACK4~2_combout\);

-- Location: LABCELL_X35_Y8_N27
\b2v_inst|u8|u0|ACK4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK4~0_combout\ = ( \b2v_inst|u8|u0|ACK4~1_combout\ & ( \b2v_inst|u8|u0|ACK4~2_combout\ & ( (((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\)) # (\I2C_SDAT~input_o\)) # 
-- (\b2v_inst|u8|u0|SD_COUNTER\(0)) ) ) ) # ( !\b2v_inst|u8|u0|ACK4~1_combout\ & ( \b2v_inst|u8|u0|ACK4~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datab => \ALT_INV_I2C_SDAT~input_o\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_ACK4~1_combout\,
	dataf => \b2v_inst|u8|u0|ALT_INV_ACK4~2_combout\,
	combout => \b2v_inst|u8|u0|ACK4~0_combout\);

-- Location: FF_X35_Y8_N29
\b2v_inst|u8|u0|ACK4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|ACK4~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|ACK4~q\);

-- Location: MLABCELL_X39_Y8_N42
\b2v_inst|u8|u0|ACK2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK2~1_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( !\b2v_inst|u8|u0|SD_COUNTER\(6) & ( (\b2v_inst|u8|u0|SD_COUNTER\(2) & (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD_COUNTER\(1) & 
-- \b2v_inst|u8|u0|SD_COUNTER\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	combout => \b2v_inst|u8|u0|ACK2~1_combout\);

-- Location: MLABCELL_X39_Y8_N33
\b2v_inst|u8|u0|ACK2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK2~2_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER\(6) & ( (\b2v_inst|u8|u0|SD_COUNTER\(1) & (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD_COUNTER\(5) & \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(6),
	combout => \b2v_inst|u8|u0|ACK2~2_combout\);

-- Location: MLABCELL_X39_Y8_N15
\b2v_inst|u8|u0|ACK2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK2~0_combout\ = ( \b2v_inst|u8|u0|ACK2~q\ & ( \b2v_inst|u8|u0|ACK2~2_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(4) & (((\I2C_SDAT~input_o\)) # (\b2v_inst|u8|u0|SD_COUNTER\(2)))) # (\b2v_inst|u8|u0|SD_COUNTER\(4) & 
-- (((!\b2v_inst|u8|u0|ACK2~1_combout\)))) ) ) ) # ( !\b2v_inst|u8|u0|ACK2~q\ & ( \b2v_inst|u8|u0|ACK2~2_combout\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(2) & (\I2C_SDAT~input_o\ & !\b2v_inst|u8|u0|SD_COUNTER\(4))) ) ) ) # ( \b2v_inst|u8|u0|ACK2~q\ & ( 
-- !\b2v_inst|u8|u0|ACK2~2_combout\ & ( (!\b2v_inst|u8|u0|ACK2~1_combout\) # (!\b2v_inst|u8|u0|SD_COUNTER\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000100010000000000111011111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datab => \ALT_INV_I2C_SDAT~input_o\,
	datac => \b2v_inst|u8|u0|ALT_INV_ACK2~1_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4),
	datae => \b2v_inst|u8|u0|ALT_INV_ACK2~q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_ACK2~2_combout\,
	combout => \b2v_inst|u8|u0|ACK2~0_combout\);

-- Location: FF_X35_Y8_N19
\b2v_inst|u8|u0|ACK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|ACK2~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|ACK2~q\);

-- Location: FF_X40_Y8_N14
\b2v_inst|u8|u0|SD_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~4_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(3));

-- Location: LABCELL_X40_Y8_N57
\b2v_inst|u8|u0|ACK1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK1~1_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ( \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD_COUNTER\(3) & (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- \b2v_inst|u8|u0|SD_COUNTER\(5)))) ) ) ) # ( !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( (\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & (!\b2v_inst|u8|u0|SD_COUNTER\(3) & (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- \b2v_inst|u8|u0|SD_COUNTER\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	combout => \b2v_inst|u8|u0|ACK1~1_combout\);

-- Location: LABCELL_X35_Y8_N30
\b2v_inst|u8|u0|ACK1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK1~0_combout\ = ( \b2v_inst|u8|u0|ACK1~1_combout\ & ( \b2v_inst|u8|u0|ACK1~q\ & ( (\b2v_inst|u8|u0|SD[23]~0_combout\ & ((!\b2v_inst|u8|u0|SD_COUNTER\(0)) # ((\I2C_SDAT~input_o\ & !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\b2v_inst|u8|u0|ACK1~1_combout\ & ( \b2v_inst|u8|u0|ACK1~q\ ) ) # ( \b2v_inst|u8|u0|ACK1~1_combout\ & ( !\b2v_inst|u8|u0|ACK1~q\ & ( (\b2v_inst|u8|u0|SD_COUNTER\(0) & (\I2C_SDAT~input_o\ & (\b2v_inst|u8|u0|SD[23]~0_combout\ & 
-- !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000011111111111111110000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datab => \ALT_INV_I2C_SDAT~input_o\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD[23]~0_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_ACK1~1_combout\,
	dataf => \b2v_inst|u8|u0|ALT_INV_ACK1~q\,
	combout => \b2v_inst|u8|u0|ACK1~0_combout\);

-- Location: FF_X35_Y8_N44
\b2v_inst|u8|u0|ACK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|ACK1~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|ACK1~q\);

-- Location: LABCELL_X35_Y8_N18
\b2v_inst|u8|u0|ACK\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|ACK~combout\ = ( !\b2v_inst|u8|u0|ACK1~q\ & ( (!\b2v_inst|u8|u0|ACK3~q\ & (!\b2v_inst|u8|u0|ACK4~q\ & !\b2v_inst|u8|u0|ACK2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|u0|ALT_INV_ACK3~q\,
	datac => \b2v_inst|u8|u0|ALT_INV_ACK4~q\,
	datad => \b2v_inst|u8|u0|ALT_INV_ACK2~q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_ACK1~q\,
	combout => \b2v_inst|u8|u0|ACK~combout\);

-- Location: LABCELL_X35_Y8_N9
\b2v_inst|u8|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Selector1~0_combout\ = ( !\b2v_inst|u8|mSetup_ST.0010~q\ & ( ((!\b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\) # (\b2v_inst|u8|u0|END~q\)) # (\b2v_inst|u8|u0|ACK~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_ACK~combout\,
	datab => \b2v_inst|u8|u0|ALT_INV_END~q\,
	datad => \b2v_inst|u8|ALT_INV_mSetup_ST.0001~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\,
	combout => \b2v_inst|u8|Selector1~0_combout\);

-- Location: FF_X35_Y8_N11
\b2v_inst|u8|mSetup_ST.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Selector1~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mSetup_ST.0000~q\);

-- Location: FF_X40_Y8_N23
\b2v_inst|u8|mSetup_ST.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Selector2~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mSetup_ST.0001~q\);

-- Location: LABCELL_X40_Y8_N0
\b2v_inst|u8|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Selector2~0_combout\ = ( \b2v_inst|u8|u0|END~DUPLICATE_q\ & ( (!\b2v_inst|u8|mSetup_ST.0000~q\) # (\b2v_inst|u8|mSetup_ST.0001~q\) ) ) # ( !\b2v_inst|u8|u0|END~DUPLICATE_q\ & ( !\b2v_inst|u8|mSetup_ST.0000~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_mSetup_ST.0000~q\,
	datad => \b2v_inst|u8|ALT_INV_mSetup_ST.0001~q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_END~DUPLICATE_q\,
	combout => \b2v_inst|u8|Selector2~0_combout\);

-- Location: FF_X40_Y8_N22
\b2v_inst|u8|mSetup_ST.0001~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Selector2~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\);

-- Location: LABCELL_X35_Y8_N6
\b2v_inst|u8|mSetup_ST~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|mSetup_ST~12_combout\ = (!\b2v_inst|u8|u0|END~q\ & (\b2v_inst|u8|u0|ACK~combout\ & \b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|u0|ALT_INV_END~q\,
	datac => \b2v_inst|u8|u0|ALT_INV_ACK~combout\,
	datad => \b2v_inst|u8|ALT_INV_mSetup_ST.0001~DUPLICATE_q\,
	combout => \b2v_inst|u8|mSetup_ST~12_combout\);

-- Location: FF_X35_Y8_N8
\b2v_inst|u8|mSetup_ST.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|mSetup_ST~12_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mSetup_ST.0010~q\);

-- Location: LABCELL_X40_Y8_N27
\b2v_inst|u8|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Selector0~0_combout\ = ( \b2v_inst|u8|u0|END~DUPLICATE_q\ & ( \b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\ & ( \b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) ) ) # ( \b2v_inst|u8|u0|END~DUPLICATE_q\ & ( !\b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\ & ( 
-- (!\b2v_inst|u8|mSetup_ST.0010~q\) # (\b2v_inst|u8|mI2C_GO~DUPLICATE_q\) ) ) ) # ( !\b2v_inst|u8|u0|END~DUPLICATE_q\ & ( !\b2v_inst|u8|mSetup_ST.0001~DUPLICATE_q\ & ( (!\b2v_inst|u8|mSetup_ST.0010~q\) # (\b2v_inst|u8|mI2C_GO~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_mSetup_ST.0010~q\,
	datac => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_END~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_mSetup_ST.0001~DUPLICATE_q\,
	combout => \b2v_inst|u8|Selector0~0_combout\);

-- Location: FF_X40_Y8_N43
\b2v_inst|u8|mI2C_GO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Selector0~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_GO~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y8_N51
\b2v_inst|u8|u0|SD_COUNTER~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~7_combout\ = (!\b2v_inst|u8|mI2C_GO~DUPLICATE_q\) # (!\b2v_inst|u8|u0|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_Add0~25_sumout\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~7_combout\);

-- Location: FF_X39_Y8_N52
\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD_COUNTER~7_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y8_N36
\b2v_inst|u8|u0|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|LessThan2~0_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(4)) # ((!\b2v_inst|u8|u0|SD_COUNTER\(3) & ((!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) # 
-- (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\)))) ) ) ) # ( !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(4)) # (!\b2v_inst|u8|u0|SD_COUNTER\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100000000000000000011111110110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3),
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	combout => \b2v_inst|u8|u0|LessThan2~0_combout\);

-- Location: LABCELL_X40_Y8_N18
\b2v_inst|u8|u0|SD_COUNTER[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ( \b2v_inst|u8|mI2C_GO~q\ & ( !\b2v_inst|u8|u0|LessThan2~0_combout\ ) ) ) # ( \b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ( !\b2v_inst|u8|mI2C_GO~q\ ) ) # ( 
-- !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ( !\b2v_inst|u8|mI2C_GO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|u0|ALT_INV_LessThan2~0_combout\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_mI2C_GO~q\,
	combout => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\);

-- Location: FF_X39_Y8_N55
\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|SD_COUNTER~6_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y8_N45
\b2v_inst|u8|u0|SD_COUNTER~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD_COUNTER~6_combout\ = ( !\b2v_inst|u8|u0|Add0~21_sumout\ & ( \b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) ) # ( \b2v_inst|u8|u0|Add0~21_sumout\ & ( !\b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) ) # ( !\b2v_inst|u8|u0|Add0~21_sumout\ & ( 
-- !\b2v_inst|u8|mI2C_GO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|u8|u0|ALT_INV_Add0~21_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_mI2C_GO~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|SD_COUNTER~6_combout\);

-- Location: FF_X39_Y8_N56
\b2v_inst|u8|u0|SD_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|SD_COUNTER~6_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD_COUNTER[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD_COUNTER\(0));

-- Location: LABCELL_X40_Y8_N48
\b2v_inst|u8|u0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Selector1~0_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER\(5) & ( \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0) & (!\b2v_inst|u8|u0|SCLK~q\)) # (\b2v_inst|u8|u0|SD_COUNTER\(0) & ((!\b2v_inst|u8|u0|SD_COUNTER\(3) & 
-- (!\b2v_inst|u8|u0|SCLK~q\)) # (\b2v_inst|u8|u0|SD_COUNTER\(3) & ((\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\))))) ) ) ) # ( !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SCLK~q\) # 
-- ((\b2v_inst|u8|u0|SD_COUNTER\(0) & (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & !\b2v_inst|u8|u0|SD_COUNTER\(3)))) ) ) ) # ( \b2v_inst|u8|u0|SD_COUNTER\(5) & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( !\b2v_inst|u8|u0|SCLK~q\ ) ) ) # ( 
-- !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SCLK~q\ & (((!\b2v_inst|u8|u0|SD_COUNTER\(3)) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD_COUNTER\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011001100110011001101110011001100110010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datab => \b2v_inst|u8|u0|ALT_INV_SCLK~q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3),
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	combout => \b2v_inst|u8|u0|Selector1~0_combout\);

-- Location: MLABCELL_X39_Y8_N57
\b2v_inst|u8|u0|SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SCLK~0_combout\ = ( !\b2v_inst|u8|u0|Selector1~0_combout\ & ( \b2v_inst|u8|u0|SD[23]~0_combout\ ) ) # ( \b2v_inst|u8|u0|Selector1~0_combout\ & ( !\b2v_inst|u8|u0|SD[23]~0_combout\ & ( \b2v_inst|u8|u0|SCLK~q\ ) ) ) # ( 
-- !\b2v_inst|u8|u0|Selector1~0_combout\ & ( !\b2v_inst|u8|u0|SD[23]~0_combout\ & ( \b2v_inst|u8|u0|SCLK~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SCLK~q\,
	datae => \b2v_inst|u8|u0|ALT_INV_Selector1~0_combout\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD[23]~0_combout\,
	combout => \b2v_inst|u8|u0|SCLK~0_combout\);

-- Location: FF_X39_Y8_N20
\b2v_inst|u8|u0|SCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|u0|SCLK~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SCLK~q\);

-- Location: LABCELL_X40_Y8_N30
\b2v_inst|u8|u0|I2C_SCLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|I2C_SCLK~0_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER\(3) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(5) & (!\b2v_inst|u8|u0|SD_COUNTER\(4))) # (\b2v_inst|u8|u0|SD_COUNTER\(5) & (\b2v_inst|u8|u0|SD_COUNTER\(4) & \b2v_inst|u8|u0|SD_COUNTER\(2))) ) ) # ( 
-- !\b2v_inst|u8|u0|SD_COUNTER\(3) & ( !\b2v_inst|u8|u0|SD_COUNTER\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3),
	combout => \b2v_inst|u8|u0|I2C_SCLK~0_combout\);

-- Location: LABCELL_X40_Y8_N15
\b2v_inst|u8|u0|I2C_SCLK~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|I2C_SCLK~1_combout\ = ( \b2v_inst|u8|mI2C_CTRL_CLK~q\ & ( !\b2v_inst|u8|u0|SCLK~q\ ) ) # ( !\b2v_inst|u8|mI2C_CTRL_CLK~q\ & ( (!\b2v_inst|u8|u0|SCLK~q\) # ((!\b2v_inst|u8|u0|I2C_SCLK~0_combout\ & 
-- !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SCLK~q\,
	datac => \b2v_inst|u8|u0|ALT_INV_I2C_SCLK~0_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_mI2C_CTRL_CLK~q\,
	combout => \b2v_inst|u8|u0|I2C_SCLK~1_combout\);

-- Location: MLABCELL_X34_Y8_N30
\b2v_inst|u8|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux0~0_combout\ = (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & (!\b2v_inst|u8|LUT_INDEX\(2) & \b2v_inst|u8|LUT_INDEX\(4)))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(3) & 
-- (\b2v_inst|u8|LUT_INDEX\(2) & !\b2v_inst|u8|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110000000000000011000000000000001100000000000000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	combout => \b2v_inst|u8|Mux0~0_combout\);

-- Location: LABCELL_X36_Y8_N12
\b2v_inst|u8|Equal4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Equal4~4_combout\ = ( \b2v_inst|u8|Equal4~1_combout\ & ( (\b2v_inst|u8|Equal4~3_combout\ & (\b2v_inst|u8|Equal4~0_combout\ & (\b2v_inst|u8|Equal4~2_combout\ & \b2v_inst|u8|combo_cnt\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_Equal4~3_combout\,
	datab => \b2v_inst|u8|ALT_INV_Equal4~0_combout\,
	datac => \b2v_inst|u8|ALT_INV_Equal4~2_combout\,
	datad => \b2v_inst|u8|ALT_INV_combo_cnt\(0),
	dataf => \b2v_inst|u8|ALT_INV_Equal4~1_combout\,
	combout => \b2v_inst|u8|Equal4~4_combout\);

-- Location: LABCELL_X35_Y8_N0
\b2v_inst|u8|mI2C_DATA[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|mI2C_DATA[23]~0_combout\ = ( \b2v_inst|u8|LessThan3~0_combout\ & ( !\b2v_inst|u8|Equal4~4_combout\ & ( (!\b2v_inst|u8|mSetup_ST.0000~q\ & (\b2v_inst|u2|oRST_2~q\ & ((!\b2v_inst|u8|iexposure_adj_delay\(3)) # 
-- (\b2v_inst|u8|iexposure_adj_delay\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(3),
	datab => \b2v_inst|u8|ALT_INV_mSetup_ST.0000~q\,
	datac => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(2),
	datad => \b2v_inst|u2|ALT_INV_oRST_2~q\,
	datae => \b2v_inst|u8|ALT_INV_LessThan3~0_combout\,
	dataf => \b2v_inst|u8|ALT_INV_Equal4~4_combout\,
	combout => \b2v_inst|u8|mI2C_DATA[23]~0_combout\);

-- Location: FF_X34_Y8_N31
\b2v_inst|u8|mI2C_DATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux0~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(23));

-- Location: MLABCELL_X39_Y8_N30
\b2v_inst|u8|u0|SD[23]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[23]~1_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER\(1) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(0) & \b2v_inst|u8|u0|SD_COUNTER\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(0),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	combout => \b2v_inst|u8|u0|SD[23]~1_combout\);

-- Location: LABCELL_X40_Y8_N33
\b2v_inst|u8|u0|SD[23]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[23]~2_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER\(4) & ( (\b2v_inst|u8|u0|SD_COUNTER\(5) & (\b2v_inst|u8|u0|SD_COUNTER\(3) & !\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(3),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(4),
	combout => \b2v_inst|u8|u0|SD[23]~2_combout\);

-- Location: LABCELL_X37_Y8_N48
\b2v_inst|u8|u0|SD[23]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[23]~3_combout\ = ( !\b2v_inst|u8|Equal4~4_combout\ & ( \b2v_inst|u8|u0|SD[23]~2_combout\ & ( (\b2v_inst|u8|u0|SD[23]~1_combout\ & (\b2v_inst|u2|oRST_2~q\ & ((!\b2v_inst|u8|iexposure_adj_delay\(3)) # 
-- (\b2v_inst|u8|iexposure_adj_delay\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(2),
	datab => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(3),
	datac => \b2v_inst|u8|u0|ALT_INV_SD[23]~1_combout\,
	datad => \b2v_inst|u2|ALT_INV_oRST_2~q\,
	datae => \b2v_inst|u8|ALT_INV_Equal4~4_combout\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD[23]~2_combout\,
	combout => \b2v_inst|u8|u0|SD[23]~3_combout\);

-- Location: FF_X37_Y8_N8
\b2v_inst|u8|u0|SD[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(23),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(23));

-- Location: LABCELL_X35_Y7_N15
\b2v_inst|u8|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux2~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(2) & ( (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(3)) # ((!\b2v_inst|u8|LUT_INDEX\(4) & \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)))) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(2) & ( 
-- (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(4) & ((\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\) # (\b2v_inst|u8|LUT_INDEX\(3)))) # (\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011001000010010001100100000110000001100100011000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux2~0_combout\);

-- Location: FF_X35_Y7_N16
\b2v_inst|u8|mI2C_DATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux2~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(21));

-- Location: FF_X37_Y8_N23
\b2v_inst|u8|u0|SD[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(21),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(21));

-- Location: LABCELL_X37_Y8_N21
\b2v_inst|u8|u0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~0_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( !\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ ) ) # ( !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- ((\b2v_inst|u8|u0|SD\(21)))) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(23))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD\(23),
	datad => \b2v_inst|u8|u0|ALT_INV_SD\(21),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|Mux0~0_combout\);

-- Location: FF_X37_Y8_N44
\b2v_inst|u8|u0|SDO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SDO~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SDO~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N54
\b2v_inst|u8|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux1~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(0) & ( !\b2v_inst|u8|LUT_INDEX\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(0),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux1~0_combout\);

-- Location: LABCELL_X35_Y7_N6
\b2v_inst|u8|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux1~1_combout\ = ( !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX\(3) & \b2v_inst|u8|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_Mux1~0_combout\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	combout => \b2v_inst|u8|Mux1~1_combout\);

-- Location: FF_X35_Y7_N7
\b2v_inst|u8|mI2C_DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux1~1_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(22));

-- Location: FF_X37_Y8_N53
\b2v_inst|u8|u0|SD[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(22),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(22));

-- Location: MLABCELL_X34_Y7_N24
\b2v_inst|u8|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux3~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(3) & ( \b2v_inst|u8|LUT_INDEX\(1) & ( (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\) # (!\b2v_inst|u8|LUT_INDEX\(2)) ) ) ) # ( \b2v_inst|u8|LUT_INDEX\(3) & ( !\b2v_inst|u8|LUT_INDEX\(1) & ( 
-- \b2v_inst|u8|LUT_INDEX\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	combout => \b2v_inst|u8|Mux3~0_combout\);

-- Location: FF_X34_Y7_N25
\b2v_inst|u8|mI2C_DATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux3~0_combout\,
	sclr => \b2v_inst|u8|LUT_INDEX\(4),
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(20));

-- Location: FF_X37_Y8_N2
\b2v_inst|u8|u0|SD[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(20),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(20));

-- Location: LABCELL_X37_Y8_N0
\b2v_inst|u8|u0|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~1_combout\ = ( \b2v_inst|u8|u0|SD\(20) & ( \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ ) ) # ( !\b2v_inst|u8|u0|SD\(20) & ( \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ ) ) # ( \b2v_inst|u8|u0|SD\(20) & ( 
-- !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD\(22)) ) ) ) # ( !\b2v_inst|u8|u0|SD\(20) & ( !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( (\b2v_inst|u8|u0|SD\(22) & 
-- \b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD\(22),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD\(20),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|Mux0~1_combout\);

-- Location: LABCELL_X37_Y8_N54
\b2v_inst|u8|u0|Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~13_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & ( ((!\b2v_inst|u8|u0|SD_COUNTER\(2) & (((\b2v_inst|u8|u0|Mux0~1_combout\)))) # (\b2v_inst|u8|u0|SD_COUNTER\(2) & ((!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) # 
-- ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))))) ) ) # ( \b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER\(2) & (\b2v_inst|u8|u0|Mux0~0_combout\)) # (\b2v_inst|u8|u0|SD_COUNTER\(2) & 
-- (((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ((!\b2v_inst|u8|u0|SDO~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010101010101010111111111110011000000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_Mux0~0_combout\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SDO~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	datag => \b2v_inst|u8|u0|ALT_INV_Mux0~1_combout\,
	combout => \b2v_inst|u8|u0|Mux0~13_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X37_Y7_N0
\b2v_inst|u8|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~53_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(2) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u8|Add1~54\ = CARRY(( \b2v_inst|u8|senosr_exposure\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(2),
	cin => GND,
	sumout => \b2v_inst|u8|Add1~53_sumout\,
	cout => \b2v_inst|u8|Add1~54\);

-- Location: LABCELL_X37_Y7_N51
\b2v_inst|u8|senosr_exposure~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~20_combout\ = (\b2v_inst|u8|Add1~53_sumout\) # (\b2v_inst|u8|senosr_exposure[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	datad => \b2v_inst|u8|ALT_INV_Add1~53_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~20_combout\);

-- Location: MLABCELL_X34_Y7_N15
\b2v_inst|u8|senosr_exposure[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~0_combout\ = ( !\b2v_inst|u8|senosr_exposure\(11) & ( !\b2v_inst|u8|senosr_exposure\(13) & ( (!\b2v_inst|u8|senosr_exposure\(14) & !\b2v_inst|u8|senosr_exposure\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(14),
	datad => \b2v_inst|u8|ALT_INV_senosr_exposure\(12),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(11),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(13),
	combout => \b2v_inst|u8|senosr_exposure[15]~0_combout\);

-- Location: LABCELL_X37_Y7_N9
\b2v_inst|u8|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~41_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(5) ) + ( !\SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~46\ ))
-- \b2v_inst|u8|Add1~42\ = CARRY(( \b2v_inst|u8|senosr_exposure\(5) ) + ( !\SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(5),
	cin => \b2v_inst|u8|Add1~46\,
	sumout => \b2v_inst|u8|Add1~41_sumout\,
	cout => \b2v_inst|u8|Add1~42\);

-- Location: LABCELL_X37_Y7_N12
\b2v_inst|u8|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~37_sumout\ = SUM(( !\b2v_inst|u8|senosr_exposure\(6) ) + ( !\SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~42\ ))
-- \b2v_inst|u8|Add1~38\ = CARRY(( !\b2v_inst|u8|senosr_exposure\(6) ) + ( !\SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(6),
	cin => \b2v_inst|u8|Add1~42\,
	sumout => \b2v_inst|u8|Add1~37_sumout\,
	cout => \b2v_inst|u8|Add1~38\);

-- Location: LABCELL_X37_Y7_N54
\b2v_inst|u8|senosr_exposure~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~15_combout\ = ( \b2v_inst|u8|Add1~37_sumout\ & ( (\SW[0]~input_o\ & \b2v_inst|u8|senosr_exposure[15]~4_combout\) ) ) # ( !\b2v_inst|u8|Add1~37_sumout\ & ( (!\b2v_inst|u8|senosr_exposure[15]~4_combout\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	dataf => \b2v_inst|u8|ALT_INV_Add1~37_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~15_combout\);

-- Location: LABCELL_X35_Y8_N39
\b2v_inst|u8|always1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|always1~2_combout\ = ( \b2v_inst|u8|iexposure_adj_delay\(0) & ( (!\KEY[1]~input_o\) # (\b2v_inst|u8|Equal4~4_combout\) ) ) # ( !\b2v_inst|u8|iexposure_adj_delay\(0) & ( \b2v_inst|u8|Equal4~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Equal4~4_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(0),
	combout => \b2v_inst|u8|always1~2_combout\);

-- Location: FF_X37_Y7_N56
\b2v_inst|u8|senosr_exposure[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~15_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(6));

-- Location: LABCELL_X37_Y7_N15
\b2v_inst|u8|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~33_sumout\ = SUM(( !\b2v_inst|u8|senosr_exposure\(7) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~38\ ))
-- \b2v_inst|u8|Add1~34\ = CARRY(( !\b2v_inst|u8|senosr_exposure\(7) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(7),
	cin => \b2v_inst|u8|Add1~38\,
	sumout => \b2v_inst|u8|Add1~33_sumout\,
	cout => \b2v_inst|u8|Add1~34\);

-- Location: MLABCELL_X39_Y7_N42
\b2v_inst|u8|senosr_exposure~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~14_combout\ = ( \SW[0]~input_o\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( \SW[0]~input_o\ & ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( !\b2v_inst|u8|Add1~33_sumout\ ) ) ) # ( !\SW[0]~input_o\ & ( 
-- !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( !\b2v_inst|u8|Add1~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_Add1~33_sumout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~14_combout\);

-- Location: FF_X39_Y7_N44
\b2v_inst|u8|senosr_exposure[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~14_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(7));

-- Location: LABCELL_X37_Y7_N18
\b2v_inst|u8|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~21_sumout\ = SUM(( \SW[0]~input_o\ ) + ( !\b2v_inst|u8|senosr_exposure\(8) ) + ( \b2v_inst|u8|Add1~34\ ))
-- \b2v_inst|u8|Add1~22\ = CARRY(( \SW[0]~input_o\ ) + ( !\b2v_inst|u8|senosr_exposure\(8) ) + ( \b2v_inst|u8|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(8),
	cin => \b2v_inst|u8|Add1~34\,
	sumout => \b2v_inst|u8|Add1~21_sumout\,
	cout => \b2v_inst|u8|Add1~22\);

-- Location: LABCELL_X37_Y7_N48
\b2v_inst|u8|senosr_exposure~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~11_combout\ = ( \b2v_inst|u8|Add1~21_sumout\ & ( (\b2v_inst|u8|senosr_exposure[15]~4_combout\ & \SW[0]~input_o\) ) ) # ( !\b2v_inst|u8|Add1~21_sumout\ & ( (!\b2v_inst|u8|senosr_exposure[15]~4_combout\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_Add1~21_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~11_combout\);

-- Location: FF_X37_Y7_N50
\b2v_inst|u8|senosr_exposure[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~11_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(8));

-- Location: LABCELL_X37_Y7_N21
\b2v_inst|u8|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~13_sumout\ = SUM(( !\b2v_inst|u8|senosr_exposure\(9) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~22\ ))
-- \b2v_inst|u8|Add1~14\ = CARRY(( !\b2v_inst|u8|senosr_exposure\(9) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(9),
	cin => \b2v_inst|u8|Add1~22\,
	sumout => \b2v_inst|u8|Add1~13_sumout\,
	cout => \b2v_inst|u8|Add1~14\);

-- Location: MLABCELL_X39_Y7_N3
\b2v_inst|u8|senosr_exposure~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~9_combout\ = ( \SW[0]~input_o\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( \SW[0]~input_o\ & ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( !\b2v_inst|u8|Add1~13_sumout\ ) ) ) # ( !\SW[0]~input_o\ & ( 
-- !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( !\b2v_inst|u8|Add1~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Add1~13_sumout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~9_combout\);

-- Location: FF_X39_Y7_N5
\b2v_inst|u8|senosr_exposure[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~9_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(9));

-- Location: LABCELL_X37_Y9_N30
\b2v_inst|u8|senosr_exposure[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~1_combout\ = ( \b2v_inst|u8|senosr_exposure\(9) & ( !\b2v_inst|u8|senosr_exposure\(15) & ( (\b2v_inst|u8|senosr_exposure\(7) & (\SW[0]~input_o\ & (\b2v_inst|u8|senosr_exposure\(10) & \b2v_inst|u8|senosr_exposure\(8)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(10),
	datad => \b2v_inst|u8|ALT_INV_senosr_exposure\(8),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(9),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(15),
	combout => \b2v_inst|u8|senosr_exposure[15]~1_combout\);

-- Location: LABCELL_X37_Y9_N39
\b2v_inst|u8|senosr_exposure[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~6_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~1_combout\ & ( (\b2v_inst|u8|senosr_exposure[15]~0_combout\ & !\b2v_inst|u8|always1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~0_combout\,
	datad => \b2v_inst|u8|ALT_INV_always1~0_combout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~1_combout\,
	combout => \b2v_inst|u8|senosr_exposure[15]~6_combout\);

-- Location: FF_X37_Y7_N53
\b2v_inst|u8|senosr_exposure[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~20_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(2));

-- Location: LABCELL_X37_Y7_N3
\b2v_inst|u8|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~49_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(3) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~54\ ))
-- \b2v_inst|u8|Add1~50\ = CARRY(( \b2v_inst|u8|senosr_exposure\(3) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(3),
	cin => \b2v_inst|u8|Add1~54\,
	sumout => \b2v_inst|u8|Add1~49_sumout\,
	cout => \b2v_inst|u8|Add1~50\);

-- Location: LABCELL_X37_Y7_N42
\b2v_inst|u8|senosr_exposure~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~19_combout\ = (\b2v_inst|u8|Add1~49_sumout\) # (\b2v_inst|u8|senosr_exposure[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	datac => \b2v_inst|u8|ALT_INV_Add1~49_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~19_combout\);

-- Location: FF_X37_Y7_N44
\b2v_inst|u8|senosr_exposure[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~19_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(3));

-- Location: LABCELL_X37_Y7_N6
\b2v_inst|u8|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~45_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(4) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~50\ ))
-- \b2v_inst|u8|Add1~46\ = CARRY(( \b2v_inst|u8|senosr_exposure\(4) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure\(4),
	cin => \b2v_inst|u8|Add1~50\,
	sumout => \b2v_inst|u8|Add1~45_sumout\,
	cout => \b2v_inst|u8|Add1~46\);

-- Location: LABCELL_X37_Y7_N45
\b2v_inst|u8|senosr_exposure~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~18_combout\ = ( \b2v_inst|u8|Add1~45_sumout\ ) # ( !\b2v_inst|u8|Add1~45_sumout\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	dataf => \b2v_inst|u8|ALT_INV_Add1~45_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~18_combout\);

-- Location: FF_X37_Y7_N47
\b2v_inst|u8|senosr_exposure[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~18_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(4));

-- Location: MLABCELL_X39_Y7_N33
\b2v_inst|u8|senosr_exposure~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~17_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) # ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( \b2v_inst|u8|Add1~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Add1~41_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~17_combout\);

-- Location: FF_X39_Y7_N35
\b2v_inst|u8|senosr_exposure[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~17_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(5));

-- Location: LABCELL_X37_Y9_N36
\b2v_inst|u8|always1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|always1~0_combout\ = ( \b2v_inst|u8|senosr_exposure\(2) & ( (\b2v_inst|u8|senosr_exposure\(5) & !\b2v_inst|u8|senosr_exposure\(6)) ) ) # ( !\b2v_inst|u8|senosr_exposure\(2) & ( (\b2v_inst|u8|senosr_exposure\(5) & 
-- (!\b2v_inst|u8|senosr_exposure\(6) & ((\b2v_inst|u8|senosr_exposure\(4)) # (\b2v_inst|u8|senosr_exposure\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000000000101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(5),
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure\(3),
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(4),
	datad => \b2v_inst|u8|ALT_INV_senosr_exposure\(6),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(2),
	combout => \b2v_inst|u8|always1~0_combout\);

-- Location: LABCELL_X35_Y7_N36
\b2v_inst|u8|senosr_exposure[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~2_combout\ = ( \b2v_inst|u8|senosr_exposure\(13) & ( \b2v_inst|u8|senosr_exposure\(12) & ( (\b2v_inst|u8|senosr_exposure\(11) & \b2v_inst|u8|senosr_exposure\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(11),
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(14),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(13),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(12),
	combout => \b2v_inst|u8|senosr_exposure[15]~2_combout\);

-- Location: LABCELL_X37_Y9_N12
\b2v_inst|u8|always1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|always1~1_combout\ = ( \b2v_inst|u8|senosr_exposure\(6) & ( \b2v_inst|u8|senosr_exposure\(2) & ( (!\b2v_inst|u8|senosr_exposure\(5) & ((!\b2v_inst|u8|senosr_exposure\(3)) # (!\b2v_inst|u8|senosr_exposure\(4)))) ) ) ) # ( 
-- \b2v_inst|u8|senosr_exposure\(6) & ( !\b2v_inst|u8|senosr_exposure\(2) & ( !\b2v_inst|u8|senosr_exposure\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(5),
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure\(3),
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(4),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(6),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(2),
	combout => \b2v_inst|u8|always1~1_combout\);

-- Location: LABCELL_X37_Y9_N42
\b2v_inst|u8|senosr_exposure[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~3_combout\ = ( !\b2v_inst|u8|senosr_exposure\(9) & ( \b2v_inst|u8|senosr_exposure\(15) & ( (!\b2v_inst|u8|senosr_exposure\(7) & (!\SW[0]~input_o\ & (!\b2v_inst|u8|senosr_exposure\(10) & !\b2v_inst|u8|senosr_exposure\(8)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(10),
	datad => \b2v_inst|u8|ALT_INV_senosr_exposure\(8),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(9),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(15),
	combout => \b2v_inst|u8|senosr_exposure[15]~3_combout\);

-- Location: LABCELL_X37_Y9_N48
\b2v_inst|u8|senosr_exposure[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[15]~4_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~0_combout\ & ( \b2v_inst|u8|senosr_exposure[15]~3_combout\ & ( (!\b2v_inst|u8|always1~0_combout\ & (((\b2v_inst|u8|senosr_exposure[15]~2_combout\ & 
-- !\b2v_inst|u8|always1~1_combout\)) # (\b2v_inst|u8|senosr_exposure[15]~1_combout\))) # (\b2v_inst|u8|always1~0_combout\ & (((\b2v_inst|u8|senosr_exposure[15]~2_combout\ & !\b2v_inst|u8|always1~1_combout\)))) ) ) ) # ( 
-- !\b2v_inst|u8|senosr_exposure[15]~0_combout\ & ( \b2v_inst|u8|senosr_exposure[15]~3_combout\ & ( (\b2v_inst|u8|senosr_exposure[15]~2_combout\ & !\b2v_inst|u8|always1~1_combout\) ) ) ) # ( \b2v_inst|u8|senosr_exposure[15]~0_combout\ & ( 
-- !\b2v_inst|u8|senosr_exposure[15]~3_combout\ & ( (!\b2v_inst|u8|always1~0_combout\ & \b2v_inst|u8|senosr_exposure[15]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000001111000000000010111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_always1~0_combout\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~1_combout\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~2_combout\,
	datad => \b2v_inst|u8|ALT_INV_always1~1_combout\,
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~0_combout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~3_combout\,
	combout => \b2v_inst|u8|senosr_exposure[15]~4_combout\);

-- Location: LABCELL_X37_Y7_N24
\b2v_inst|u8|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~9_sumout\ = SUM(( !\b2v_inst|u8|senosr_exposure\(10) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~14\ ))
-- \b2v_inst|u8|Add1~10\ = CARRY(( !\b2v_inst|u8|senosr_exposure\(10) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure\(10),
	cin => \b2v_inst|u8|Add1~14\,
	sumout => \b2v_inst|u8|Add1~9_sumout\,
	cout => \b2v_inst|u8|Add1~10\);

-- Location: LABCELL_X37_Y7_N57
\b2v_inst|u8|senosr_exposure~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~8_combout\ = ( \b2v_inst|u8|Add1~9_sumout\ & ( (\SW[0]~input_o\ & \b2v_inst|u8|senosr_exposure[15]~4_combout\) ) ) # ( !\b2v_inst|u8|Add1~9_sumout\ & ( (!\b2v_inst|u8|senosr_exposure[15]~4_combout\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	dataf => \b2v_inst|u8|ALT_INV_Add1~9_sumout\,
	combout => \b2v_inst|u8|senosr_exposure~8_combout\);

-- Location: FF_X37_Y7_N59
\b2v_inst|u8|senosr_exposure[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~8_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(10));

-- Location: LABCELL_X37_Y7_N27
\b2v_inst|u8|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~5_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(11) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~10\ ))
-- \b2v_inst|u8|Add1~6\ = CARRY(( \b2v_inst|u8|senosr_exposure\(11) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(11),
	cin => \b2v_inst|u8|Add1~10\,
	sumout => \b2v_inst|u8|Add1~5_sumout\,
	cout => \b2v_inst|u8|Add1~6\);

-- Location: MLABCELL_X39_Y7_N18
\b2v_inst|u8|senosr_exposure~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~7_combout\ = ( \b2v_inst|u8|Add1~5_sumout\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( !\b2v_inst|u8|Add1~5_sumout\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( \b2v_inst|u8|Add1~5_sumout\ & ( 
-- !\b2v_inst|u8|senosr_exposure[15]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|u8|ALT_INV_Add1~5_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~7_combout\);

-- Location: FF_X39_Y7_N20
\b2v_inst|u8|senosr_exposure[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~7_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(11));

-- Location: LABCELL_X37_Y7_N30
\b2v_inst|u8|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~1_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(12) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~6\ ))
-- \b2v_inst|u8|Add1~2\ = CARRY(( \b2v_inst|u8|senosr_exposure\(12) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(12),
	cin => \b2v_inst|u8|Add1~6\,
	sumout => \b2v_inst|u8|Add1~1_sumout\,
	cout => \b2v_inst|u8|Add1~2\);

-- Location: MLABCELL_X39_Y7_N24
\b2v_inst|u8|senosr_exposure~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~5_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) # ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( \b2v_inst|u8|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Add1~1_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~5_combout\);

-- Location: FF_X39_Y7_N26
\b2v_inst|u8|senosr_exposure[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~5_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(12));

-- Location: LABCELL_X37_Y7_N33
\b2v_inst|u8|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~29_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(13) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~2\ ))
-- \b2v_inst|u8|Add1~30\ = CARRY(( \b2v_inst|u8|senosr_exposure\(13) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(13),
	cin => \b2v_inst|u8|Add1~2\,
	sumout => \b2v_inst|u8|Add1~29_sumout\,
	cout => \b2v_inst|u8|Add1~30\);

-- Location: MLABCELL_X39_Y7_N12
\b2v_inst|u8|senosr_exposure~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~13_combout\ = ( \b2v_inst|u8|Add1~29_sumout\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( !\b2v_inst|u8|Add1~29_sumout\ & ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) ) # ( \b2v_inst|u8|Add1~29_sumout\ & ( 
-- !\b2v_inst|u8|senosr_exposure[15]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|u8|ALT_INV_Add1~29_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~13_combout\);

-- Location: FF_X39_Y7_N14
\b2v_inst|u8|senosr_exposure[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~13_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(13));

-- Location: LABCELL_X37_Y7_N36
\b2v_inst|u8|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~25_sumout\ = SUM(( \b2v_inst|u8|senosr_exposure\(14) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~30\ ))
-- \b2v_inst|u8|Add1~26\ = CARRY(( \b2v_inst|u8|senosr_exposure\(14) ) + ( \SW[0]~input_o\ ) + ( \b2v_inst|u8|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \b2v_inst|u8|ALT_INV_senosr_exposure\(14),
	cin => \b2v_inst|u8|Add1~30\,
	sumout => \b2v_inst|u8|Add1~25_sumout\,
	cout => \b2v_inst|u8|Add1~26\);

-- Location: MLABCELL_X39_Y7_N54
\b2v_inst|u8|senosr_exposure~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~12_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) # ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( \b2v_inst|u8|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Add1~25_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~12_combout\);

-- Location: FF_X39_Y7_N56
\b2v_inst|u8|senosr_exposure[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~12_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(14));

-- Location: LABCELL_X37_Y7_N39
\b2v_inst|u8|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Add1~17_sumout\ = SUM(( \SW[0]~input_o\ ) + ( \b2v_inst|u8|senosr_exposure\(15) ) + ( \b2v_inst|u8|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(15),
	cin => \b2v_inst|u8|Add1~26\,
	sumout => \b2v_inst|u8|Add1~17_sumout\);

-- Location: MLABCELL_X39_Y7_N36
\b2v_inst|u8|senosr_exposure~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure~10_combout\ = ( \b2v_inst|u8|senosr_exposure[15]~4_combout\ ) # ( !\b2v_inst|u8|senosr_exposure[15]~4_combout\ & ( \b2v_inst|u8|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_Add1~17_sumout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	combout => \b2v_inst|u8|senosr_exposure~10_combout\);

-- Location: FF_X39_Y7_N38
\b2v_inst|u8|senosr_exposure[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure~10_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u8|senosr_exposure[15]~6_combout\,
	ena => \b2v_inst|u8|always1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(15));

-- Location: LABCELL_X35_Y7_N18
\b2v_inst|u8|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux8~0_combout\ = ( \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (\b2v_inst|u8|senosr_exposure\(15) & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(4) & !\b2v_inst|u8|LUT_INDEX\(2)))) ) ) # ( 
-- !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(15),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	combout => \b2v_inst|u8|Mux8~0_combout\);

-- Location: FF_X35_Y7_N19
\b2v_inst|u8|mI2C_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux8~0_combout\,
	sclr => \b2v_inst|u8|LUT_INDEX\(3),
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(15));

-- Location: FF_X37_Y8_N5
\b2v_inst|u8|u0|SD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(15),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(15));

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X36_Y9_N6
\rtl~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~51_combout\ = ( !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(1) & (((\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX\(2) $ (!\b2v_inst|u8|LUT_INDEX\(3))))))) # (\b2v_inst|u8|LUT_INDEX\(1) & (!\b2v_inst|u8|LUT_INDEX\(2) 
-- & (!\b2v_inst|u8|senosr_exposure\(8) & (!\b2v_inst|u8|LUT_INDEX\(4) & !\b2v_inst|u8|LUT_INDEX\(3))))) ) ) # ( \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(1) & (\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX\(3) & 
-- ((!\b2v_inst|u8|LUT_INDEX\(2)) # (!\SW[9]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000001000100000000001100100000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(8),
	combout => \rtl~51_combout\);

-- Location: FF_X36_Y9_N7
\b2v_inst|u8|mI2C_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \rtl~51_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(8));

-- Location: FF_X37_Y8_N26
\b2v_inst|u8|u0|SD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(8),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(8));

-- Location: LABCELL_X37_Y8_N24
\b2v_inst|u8|u0|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~4_combout\ = ( \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & !\b2v_inst|u8|u0|SD\(15)) ) ) # ( !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ( (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ 
-- & !\b2v_inst|u8|u0|SD\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD\(15),
	datad => \b2v_inst|u8|u0|ALT_INV_SD\(8),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	combout => \b2v_inst|u8|u0|Mux0~4_combout\);

-- Location: MLABCELL_X34_Y8_N33
\b2v_inst|u8|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux6~0_combout\ = ( \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(3) & (!\b2v_inst|u8|LUT_INDEX\(4) $ (((!\b2v_inst|u8|LUT_INDEX\(2)) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\))))) # (\b2v_inst|u8|LUT_INDEX\(3) & 
-- (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(4) & !\b2v_inst|u8|LUT_INDEX\(2)))) ) ) # ( !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( (\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(3)) # 
-- ((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000101100100001000010110010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	combout => \b2v_inst|u8|Mux6~0_combout\);

-- Location: FF_X34_Y8_N35
\b2v_inst|u8|mI2C_DATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux6~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(17));

-- Location: FF_X37_Y8_N50
\b2v_inst|u8|u0|SD[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(17),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(17));

-- Location: LABCELL_X35_Y7_N48
\b2v_inst|u8|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux14~0_combout\ = ( \b2v_inst|u8|senosr_exposure\(9) & ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ $ (!\b2v_inst|u8|LUT_INDEX\(2)))) ) ) ) # ( 
-- !\b2v_inst|u8|senosr_exposure\(9) & ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ $ (!\b2v_inst|u8|LUT_INDEX\(2)))) ) ) ) # ( !\b2v_inst|u8|senosr_exposure\(9) & ( 
-- !\b2v_inst|u8|LUT_INDEX\(4) & ( (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(9),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	combout => \b2v_inst|u8|Mux14~0_combout\);

-- Location: FF_X35_Y7_N49
\b2v_inst|u8|mI2C_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux14~0_combout\,
	sclr => \b2v_inst|u8|LUT_INDEX\(3),
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(9));

-- Location: FF_X37_Y8_N17
\b2v_inst|u8|u0|SD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(9),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(9));

-- Location: LABCELL_X35_Y7_N42
\b2v_inst|u8|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux7~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(3) & ( \b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)) # (\b2v_inst|u8|LUT_INDEX\(4) & 
-- (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ $ (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) ) ) ) # ( \b2v_inst|u8|LUT_INDEX\(3) & ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) # 
-- (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(4) & \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)) ) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(3) & ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(4) & 
-- (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)) # (\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010111100000000101001011010000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux7~0_combout\);

-- Location: FF_X35_Y7_N43
\b2v_inst|u8|mI2C_DATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux7~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(16));

-- Location: FF_X37_Y8_N14
\b2v_inst|u8|u0|SD[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(16),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(16));

-- Location: MLABCELL_X34_Y8_N54
\b2v_inst|u8|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux13~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(4) & ( (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & (!\b2v_inst|u8|senosr_exposure\(10) & (!\b2v_inst|u8|LUT_INDEX\(2) & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)))) ) ) 
-- # ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ $ (((!\b2v_inst|u8|LUT_INDEX\(2)) # (\SW[9]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100000000000000000000001000000000000000000000001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(10),
	combout => \b2v_inst|u8|Mux13~0_combout\);

-- Location: FF_X34_Y8_N55
\b2v_inst|u8|mI2C_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux13~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(10));

-- Location: FF_X37_Y8_N20
\b2v_inst|u8|u0|SD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(10),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(10));

-- Location: LABCELL_X37_Y8_N12
\b2v_inst|u8|u0|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~3_combout\ = ( \b2v_inst|u8|u0|SD\(16) & ( \b2v_inst|u8|u0|SD\(10) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD\(9))) # (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # ((\b2v_inst|u8|u0|SD\(17))))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(16) & ( \b2v_inst|u8|u0|SD\(10) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- (!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ((\b2v_inst|u8|u0|SD\(9))))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # ((\b2v_inst|u8|u0|SD\(17))))) ) ) ) # ( \b2v_inst|u8|u0|SD\(16) & ( 
-- !\b2v_inst|u8|u0|SD\(10) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD\(9))) # (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & 
-- (\b2v_inst|u8|u0|SD\(17)))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(16) & ( !\b2v_inst|u8|u0|SD\(10) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & ((\b2v_inst|u8|u0|SD\(9))))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD\(17),
	datad => \b2v_inst|u8|u0|ALT_INV_SD\(9),
	datae => \b2v_inst|u8|u0|ALT_INV_SD\(16),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD\(10),
	combout => \b2v_inst|u8|u0|Mux0~3_combout\);

-- Location: LABCELL_X36_Y9_N48
\b2v_inst|u8|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux16~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(1) & ( (\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(2) & ((\b2v_inst|u8|LUT_INDEX\(3)))) # (\b2v_inst|u8|LUT_INDEX\(2) & (\SW[9]~input_o\ & 
-- !\b2v_inst|u8|LUT_INDEX\(3))))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|LUT_INDEX\(3))))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(1) & ( (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(2) & 
-- (!\b2v_inst|u8|senosr_exposure\(7) & (!\b2v_inst|u8|LUT_INDEX\(4) & !\b2v_inst|u8|LUT_INDEX\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001010111100000000000000000000000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(7),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \ALT_INV_SW[9]~input_o\,
	combout => \b2v_inst|u8|Mux16~0_combout\);

-- Location: FF_X36_Y9_N49
\b2v_inst|u8|mI2C_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux16~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(7));

-- Location: FF_X37_Y8_N35
\b2v_inst|u8|u0|SD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(7),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(7));

-- Location: LABCELL_X35_Y7_N27
\b2v_inst|u8|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux10~0_combout\ = ( \b2v_inst|u8|senosr_exposure\(13) & ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(13),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux10~0_combout\);

-- Location: FF_X35_Y7_N28
\b2v_inst|u8|mI2C_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux10~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(13));

-- Location: FF_X36_Y8_N1
\b2v_inst|u8|u0|SD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(13),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(13));

-- Location: MLABCELL_X34_Y8_N24
\rtl~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~47_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|senosr_exposure\(6)) # (\b2v_inst|u8|LUT_INDEX\(3)))))) # 
-- (\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(3)))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & 
-- ((!\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ((\b2v_inst|u8|LUT_INDEX\(3))))) # (\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\SW[9]~input_o\) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000110000000010100010000000000000000100010000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(6),
	combout => \rtl~47_combout\);

-- Location: FF_X34_Y8_N25
\b2v_inst|u8|mI2C_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \rtl~47_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(6));

-- Location: FF_X37_Y8_N38
\b2v_inst|u8|u0|SD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(6),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(6));

-- Location: LABCELL_X35_Y7_N12
\b2v_inst|u8|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux9~0_combout\ = ( \b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(2))) ) ) # ( !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ( 
-- (!\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\b2v_inst|u8|senosr_exposure\(14) & !\b2v_inst|u8|LUT_INDEX\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(14),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	combout => \b2v_inst|u8|Mux9~0_combout\);

-- Location: FF_X35_Y7_N13
\b2v_inst|u8|mI2C_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux9~0_combout\,
	sclr => \b2v_inst|u8|LUT_INDEX\(3),
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(14));

-- Location: LABCELL_X37_Y8_N27
\b2v_inst|u8|u0|SD[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[14]~feeder_combout\ = \b2v_inst|u8|mI2C_DATA\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|u8|ALT_INV_mI2C_DATA\(14),
	combout => \b2v_inst|u8|u0|SD[14]~feeder_combout\);

-- Location: FF_X37_Y8_N28
\b2v_inst|u8|u0|SD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD[14]~feeder_combout\,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(14));

-- Location: LABCELL_X37_Y8_N36
\b2v_inst|u8|u0|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~5_combout\ = ( \b2v_inst|u8|u0|SD\(6) & ( \b2v_inst|u8|u0|SD\(14) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD\(13))))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD\(7)))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(6) & ( \b2v_inst|u8|u0|SD\(14) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- (((\b2v_inst|u8|u0|SD\(13) & \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD\(7)))) ) ) ) # ( \b2v_inst|u8|u0|SD\(6) & ( 
-- !\b2v_inst|u8|u0|SD\(14) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD\(13))))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(7) & 
-- ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(6) & ( !\b2v_inst|u8|u0|SD\(14) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD\(13) & \b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(7) & ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD\(7),
	datab => \b2v_inst|u8|u0|ALT_INV_SD\(13),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD\(6),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD\(14),
	combout => \b2v_inst|u8|u0|Mux0~5_combout\);

-- Location: MLABCELL_X34_Y8_N39
\b2v_inst|u8|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux4~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(3) & !\b2v_inst|u8|LUT_INDEX\(2)))) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(4) & ( 
-- (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ $ (((!\b2v_inst|u8|LUT_INDEX\(3)) # (\b2v_inst|u8|LUT_INDEX\(2)))))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(3) & 
-- ((\b2v_inst|u8|LUT_INDEX\(2)))) # (\b2v_inst|u8|LUT_INDEX\(3) & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001110100010010100111010000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	combout => \b2v_inst|u8|Mux4~0_combout\);

-- Location: FF_X34_Y8_N41
\b2v_inst|u8|mI2C_DATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux4~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(19));

-- Location: FF_X36_Y8_N4
\b2v_inst|u8|u0|SD[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(19),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(19));

-- Location: MLABCELL_X34_Y8_N18
\rtl~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~55_combout\ = ( !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(3) & (\b2v_inst|u8|LUT_INDEX\(4) & (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(2)) # (!\SW[9]~input_o\))))) ) ) # ( 
-- \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ( (!\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX\(3) & (\b2v_inst|u8|senosr_exposure\(11) & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)) # (\b2v_inst|u8|LUT_INDEX\(3) & 
-- ((\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000010000000000000000000110010000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_senosr_exposure\(11),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datag => \ALT_INV_SW[9]~input_o\,
	combout => \rtl~55_combout\);

-- Location: FF_X34_Y8_N19
\b2v_inst|u8|mI2C_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \rtl~55_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(11));

-- Location: FF_X36_Y9_N59
\b2v_inst|u8|u0|SD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(11),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(11));

-- Location: LABCELL_X35_Y7_N9
\b2v_inst|u8|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux5~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX\(4) & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ $ (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\))) # (\b2v_inst|u8|LUT_INDEX\(4) & 
-- (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)))) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (!\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX\(3) & (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & 
-- \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)) # (\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001000001000100000100010000100000010001000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux5~0_combout\);

-- Location: FF_X35_Y7_N11
\b2v_inst|u8|mI2C_DATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux5~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(18));

-- Location: FF_X36_Y9_N17
\b2v_inst|u8|u0|SD[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(18),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(18));

-- Location: MLABCELL_X34_Y7_N45
\b2v_inst|u8|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux11~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(3) & ( !\b2v_inst|u8|LUT_INDEX\(2) & ( (\b2v_inst|u8|LUT_INDEX\(0) & (!\b2v_inst|u8|LUT_INDEX\(4) & \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)) ) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(3) & ( 
-- !\b2v_inst|u8|LUT_INDEX\(2) & ( (\b2v_inst|u8|senosr_exposure\(12) & (!\b2v_inst|u8|LUT_INDEX\(0) & (!\b2v_inst|u8|LUT_INDEX\(4) & \b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure\(12),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(0),
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	combout => \b2v_inst|u8|Mux11~0_combout\);

-- Location: FF_X35_Y7_N37
\b2v_inst|u8|mI2C_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|Mux11~0_combout\,
	sload => VCC,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(12));

-- Location: FF_X36_Y9_N13
\b2v_inst|u8|u0|SD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(12),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(12));

-- Location: LABCELL_X36_Y9_N15
\b2v_inst|u8|u0|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~2_combout\ = ( \b2v_inst|u8|u0|SD\(18) & ( \b2v_inst|u8|u0|SD\(12) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD\(11))))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD\(19)))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(18) & ( \b2v_inst|u8|u0|SD\(12) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- (((\b2v_inst|u8|u0|SD\(11) & !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD\(19)))) ) ) ) # ( \b2v_inst|u8|u0|SD\(18) & ( 
-- !\b2v_inst|u8|u0|SD\(12) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\) # (\b2v_inst|u8|u0|SD\(11))))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(19) & 
-- ((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(18) & ( !\b2v_inst|u8|u0|SD\(12) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD\(11) & !\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(19) & ((\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD\(19),
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_SD\(11),
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD\(18),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD\(12),
	combout => \b2v_inst|u8|u0|Mux0~2_combout\);

-- Location: LABCELL_X37_Y8_N30
\b2v_inst|u8|u0|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~6_combout\ = ( \b2v_inst|u8|u0|Mux0~2_combout\ & ( \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) # (\b2v_inst|u8|u0|Mux0~3_combout\) ) ) ) # ( !\b2v_inst|u8|u0|Mux0~2_combout\ & ( 
-- \b2v_inst|u8|u0|SD_COUNTER\(2) & ( (\b2v_inst|u8|u0|Mux0~3_combout\ & !\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\) ) ) ) # ( \b2v_inst|u8|u0|Mux0~2_combout\ & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- ((\b2v_inst|u8|u0|Mux0~5_combout\))) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & (!\b2v_inst|u8|u0|Mux0~4_combout\)) ) ) ) # ( !\b2v_inst|u8|u0|Mux0~2_combout\ & ( !\b2v_inst|u8|u0|SD_COUNTER\(2) & ( (!\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & 
-- ((\b2v_inst|u8|u0|Mux0~5_combout\))) # (\b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\ & (!\b2v_inst|u8|u0|Mux0~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_Mux0~4_combout\,
	datab => \b2v_inst|u8|u0|ALT_INV_Mux0~3_combout\,
	datac => \b2v_inst|u8|u0|ALT_INV_Mux0~5_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_Mux0~2_combout\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(2),
	combout => \b2v_inst|u8|u0|Mux0~6_combout\);

-- Location: LABCELL_X36_Y9_N18
\b2v_inst|u8|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux19~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX\(1) & (((\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ $ (\b2v_inst|u8|LUT_INDEX\(3))))))) # (\b2v_inst|u8|LUT_INDEX\(1) & 
-- (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(2) & ((\b2v_inst|u8|LUT_INDEX\(3)) # (\b2v_inst|u8|senosr_exposure\(4)))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX\(1) & 
-- (((\b2v_inst|u8|LUT_INDEX\(2))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) # (\b2v_inst|u8|LUT_INDEX\(1) & ((!\SW[9]~input_o\ $ (!\b2v_inst|u8|LUT_INDEX\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001000010001111111110000100010010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(4),
	combout => \b2v_inst|u8|Mux19~0_combout\);

-- Location: FF_X36_Y9_N19
\b2v_inst|u8|mI2C_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux19~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(4));

-- Location: LABCELL_X37_Y8_N18
\b2v_inst|u8|u0|SD[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SD[4]~feeder_combout\ = ( \b2v_inst|u8|mI2C_DATA\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst|u8|ALT_INV_mI2C_DATA\(4),
	combout => \b2v_inst|u8|u0|SD[4]~feeder_combout\);

-- Location: FF_X37_Y8_N19
\b2v_inst|u8|u0|SD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SD[4]~feeder_combout\,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(4));

-- Location: LABCELL_X35_Y7_N33
\b2v_inst|u8|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux18~0_combout\ = ( \b2v_inst|u8|Mux1~0_combout\ & ( \b2v_inst|u8|senosr_exposure\(5) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(3) & ((\b2v_inst|u8|LUT_INDEX\(4))))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & 
-- (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX\(4)) # (\SW[9]~input_o\)))) ) ) ) # ( !\b2v_inst|u8|Mux1~0_combout\ & ( \b2v_inst|u8|senosr_exposure\(5) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & 
-- \b2v_inst|u8|LUT_INDEX\(4))) ) ) ) # ( \b2v_inst|u8|Mux1~0_combout\ & ( !\b2v_inst|u8|senosr_exposure\(5) & ( (\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(3))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ 
-- & (!\b2v_inst|u8|LUT_INDEX\(3) & \SW[9]~input_o\)))) ) ) ) # ( !\b2v_inst|u8|Mux1~0_combout\ & ( !\b2v_inst|u8|senosr_exposure\(5) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(3) & \b2v_inst|u8|LUT_INDEX\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000010011000000000100010000100010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datae => \b2v_inst|u8|ALT_INV_Mux1~0_combout\,
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(5),
	combout => \b2v_inst|u8|Mux18~0_combout\);

-- Location: FF_X35_Y7_N34
\b2v_inst|u8|mI2C_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux18~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(5));

-- Location: FF_X37_Y8_N29
\b2v_inst|u8|u0|SD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(5),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(5));

-- Location: LABCELL_X36_Y9_N39
\rtl~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~43_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(1) & ((\b2v_inst|u8|LUT_INDEX\(3)))) # (\b2v_inst|u8|LUT_INDEX\(1) & 
-- (\b2v_inst|u8|senosr_exposure\(2) & !\b2v_inst|u8|LUT_INDEX\(3)))))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(1) & (!\b2v_inst|u8|LUT_INDEX\(2) $ (((!\b2v_inst|u8|LUT_INDEX\(3))))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(4) & ( 
-- (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(1) & ((\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) # (\b2v_inst|u8|LUT_INDEX\(1) & (\SW[9]~input_o\ & !\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\)))) # 
-- (\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010001010001101100110010001000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX\(1),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(2),
	combout => \rtl~43_combout\);

-- Location: FF_X36_Y9_N40
\b2v_inst|u8|mI2C_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \rtl~43_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(2));

-- Location: FF_X39_Y8_N2
\b2v_inst|u8|u0|SD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(2),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(2));

-- Location: LABCELL_X35_Y7_N3
\b2v_inst|u8|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux20~0_combout\ = ( \b2v_inst|u8|LUT_INDEX\(3) & ( \b2v_inst|u8|senosr_exposure\(3) & ( (!\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\) # (!\b2v_inst|u8|LUT_INDEX\(4))))) ) 
-- ) ) # ( !\b2v_inst|u8|LUT_INDEX\(3) & ( \b2v_inst|u8|senosr_exposure\(3) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(2))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & 
-- ((\b2v_inst|u8|LUT_INDEX\(4)))))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (!\b2v_inst|u8|LUT_INDEX\(4) & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\) # (\b2v_inst|u8|LUT_INDEX\(2))))) ) ) ) # ( \b2v_inst|u8|LUT_INDEX\(3) & ( 
-- !\b2v_inst|u8|senosr_exposure\(3) & ( (!\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\) # (!\b2v_inst|u8|LUT_INDEX\(4))))) ) ) ) # ( !\b2v_inst|u8|LUT_INDEX\(3) & ( 
-- !\b2v_inst|u8|senosr_exposure\(3) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(2))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & ((\b2v_inst|u8|LUT_INDEX\(4)))))) # 
-- (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101110000101000001000000001001101011100001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datac => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	dataf => \b2v_inst|u8|ALT_INV_senosr_exposure\(3),
	combout => \b2v_inst|u8|Mux20~0_combout\);

-- Location: FF_X35_Y7_N5
\b2v_inst|u8|mI2C_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux20~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(3));

-- Location: FF_X37_Y8_N40
\b2v_inst|u8|u0|SD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(3),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(3));

-- Location: MLABCELL_X39_Y8_N3
\b2v_inst|u8|u0|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~8_combout\ = ( \b2v_inst|u8|u0|SD\(2) & ( \b2v_inst|u8|u0|SD\(3) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(1)) # ((!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(4))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- ((\b2v_inst|u8|u0|SD\(5))))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(2) & ( \b2v_inst|u8|u0|SD\(3) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (\b2v_inst|u8|u0|SD\(4) & ((\b2v_inst|u8|u0|SD_COUNTER\(1))))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- (((!\b2v_inst|u8|u0|SD_COUNTER\(1)) # (\b2v_inst|u8|u0|SD\(5))))) ) ) ) # ( \b2v_inst|u8|u0|SD\(2) & ( !\b2v_inst|u8|u0|SD\(3) & ( (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SD_COUNTER\(1))) # (\b2v_inst|u8|u0|SD\(4)))) # 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SD\(5) & \b2v_inst|u8|u0|SD_COUNTER\(1))))) ) ) ) # ( !\b2v_inst|u8|u0|SD\(2) & ( !\b2v_inst|u8|u0|SD\(3) & ( (\b2v_inst|u8|u0|SD_COUNTER\(1) & ((!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ 
-- & (\b2v_inst|u8|u0|SD\(4))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & ((\b2v_inst|u8|u0|SD\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD\(4),
	datab => \b2v_inst|u8|u0|ALT_INV_SD\(5),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datae => \b2v_inst|u8|u0|ALT_INV_SD\(2),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD\(3),
	combout => \b2v_inst|u8|u0|Mux0~8_combout\);

-- Location: LABCELL_X35_Y8_N48
\b2v_inst|u8|senosr_exposure[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|senosr_exposure[0]~16_combout\ = ( \b2v_inst|u8|senosr_exposure\(0) & ( \b2v_inst|u8|iexposure_adj_delay\(0) & ( (!\b2v_inst|u8|senosr_exposure[15]~4_combout\) # ((!\SW[0]~input_o\) # ((\KEY[1]~input_o\ & !\b2v_inst|u8|Equal4~4_combout\))) ) 
-- ) ) # ( !\b2v_inst|u8|senosr_exposure\(0) & ( \b2v_inst|u8|iexposure_adj_delay\(0) & ( (\b2v_inst|u8|senosr_exposure[15]~4_combout\ & (!\SW[0]~input_o\ & ((!\KEY[1]~input_o\) # (\b2v_inst|u8|Equal4~4_combout\)))) ) ) ) # ( \b2v_inst|u8|senosr_exposure\(0) 
-- & ( !\b2v_inst|u8|iexposure_adj_delay\(0) & ( (!\b2v_inst|u8|senosr_exposure[15]~4_combout\) # ((!\SW[0]~input_o\) # (!\b2v_inst|u8|Equal4~4_combout\)) ) ) ) # ( !\b2v_inst|u8|senosr_exposure\(0) & ( !\b2v_inst|u8|iexposure_adj_delay\(0) & ( 
-- (\b2v_inst|u8|senosr_exposure[15]~4_combout\ & (!\SW[0]~input_o\ & \b2v_inst|u8|Equal4~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111111111110111001000000010001001110111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_senosr_exposure[15]~4_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_Equal4~4_combout\,
	datae => \b2v_inst|u8|ALT_INV_senosr_exposure\(0),
	dataf => \b2v_inst|u8|ALT_INV_iexposure_adj_delay\(0),
	combout => \b2v_inst|u8|senosr_exposure[0]~16_combout\);

-- Location: FF_X35_Y8_N50
\b2v_inst|u8|senosr_exposure[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u8|senosr_exposure[0]~16_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|senosr_exposure\(0));

-- Location: MLABCELL_X34_Y8_N6
\b2v_inst|u8|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux23~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX\(2) & (((!\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & \b2v_inst|u8|senosr_exposure\(0)))) # (\b2v_inst|u8|LUT_INDEX\(3)))) # 
-- (\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(3) $ (((\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\ & !\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX\(3) & 
-- ((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (((\b2v_inst|u8|LUT_INDEX\(2))) # (\b2v_inst|u8|LUT_INDEX[0]~DUPLICATE_q\))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (((!\SW[9]~input_o\ & \b2v_inst|u8|LUT_INDEX\(2))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001011111111010001000000000010111011010001001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX[0]~DUPLICATE_q\,
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(0),
	combout => \b2v_inst|u8|Mux23~0_combout\);

-- Location: FF_X34_Y8_N8
\b2v_inst|u8|mI2C_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux23~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(0));

-- Location: FF_X39_Y8_N29
\b2v_inst|u8|u0|SD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(0),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(0));

-- Location: MLABCELL_X34_Y8_N12
\b2v_inst|u8|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|Mux22~0_combout\ = ( !\b2v_inst|u8|LUT_INDEX\(4) & ( (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((((\b2v_inst|u8|LUT_INDEX\(3)))))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((!\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX\(0) & 
-- (\b2v_inst|u8|senosr_exposure\(0) & !\b2v_inst|u8|LUT_INDEX\(3))) # (\b2v_inst|u8|LUT_INDEX\(0) & ((\b2v_inst|u8|LUT_INDEX\(3)))))) # (\b2v_inst|u8|LUT_INDEX\(2) & (((!\b2v_inst|u8|LUT_INDEX\(3))))))) ) ) # ( \b2v_inst|u8|LUT_INDEX\(4) & ( 
-- (!\b2v_inst|u8|LUT_INDEX\(3) & ((!\b2v_inst|u8|LUT_INDEX\(2) & ((!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & ((\b2v_inst|u8|LUT_INDEX\(0)))) # (\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\ & (\SW[9]~input_o\ & !\b2v_inst|u8|LUT_INDEX\(0))))) # 
-- (\b2v_inst|u8|LUT_INDEX\(2) & (!\b2v_inst|u8|LUT_INDEX[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001100010001010001101100110011001100111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|ALT_INV_LUT_INDEX\(2),
	datab => \b2v_inst|u8|ALT_INV_LUT_INDEX[1]~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \b2v_inst|u8|ALT_INV_LUT_INDEX\(0),
	datae => \b2v_inst|u8|ALT_INV_LUT_INDEX\(4),
	dataf => \b2v_inst|u8|ALT_INV_LUT_INDEX\(3),
	datag => \b2v_inst|u8|ALT_INV_senosr_exposure\(0),
	combout => \b2v_inst|u8|Mux22~0_combout\);

-- Location: FF_X34_Y8_N14
\b2v_inst|u8|mI2C_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|Mux22~0_combout\,
	ena => \b2v_inst|u8|mI2C_DATA[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|mI2C_DATA\(1));

-- Location: FF_X39_Y8_N14
\b2v_inst|u8|u0|SD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	asdata => \b2v_inst|u8|mI2C_DATA\(1),
	sload => VCC,
	ena => \b2v_inst|u8|u0|SD[23]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SD\(1));

-- Location: MLABCELL_X39_Y8_N21
\b2v_inst|u8|u0|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~7_combout\ = ( \b2v_inst|u8|u0|SD\(1) & ( ((\b2v_inst|u8|u0|SD_COUNTER\(1) & \b2v_inst|u8|u0|SD\(0))) # (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\) ) ) # ( !\b2v_inst|u8|u0|SD\(1) & ( (!\b2v_inst|u8|u0|SD_COUNTER\(1) & 
-- (\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\)) # (\b2v_inst|u8|u0|SD_COUNTER\(1) & (!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & \b2v_inst|u8|u0|SD\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011010000010100101101000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(1),
	datac => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD\(0),
	dataf => \b2v_inst|u8|u0|ALT_INV_SD\(1),
	combout => \b2v_inst|u8|u0|Mux0~7_combout\);

-- Location: LABCELL_X37_Y8_N6
\b2v_inst|u8|u0|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|Mux0~9_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\ & ( ((!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SDO~DUPLICATE_q\)))) # (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & 
-- (\b2v_inst|u8|u0|Mux0~7_combout\))) ) ) # ( \b2v_inst|u8|u0|SD_COUNTER[2]~DUPLICATE_q\ & ( (!\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|SDO~DUPLICATE_q\) # ((!\b2v_inst|u8|u0|SD_COUNTER[0]~DUPLICATE_q\ & 
-- \b2v_inst|u8|u0|SD_COUNTER[1]~DUPLICATE_q\))))) # (\b2v_inst|u8|u0|SD_COUNTER[3]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|Mux0~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100111111001111110011111100111100000011000000110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[0]~DUPLICATE_q\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[3]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_Mux0~8_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[1]~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[2]~DUPLICATE_q\,
	dataf => \b2v_inst|u8|u0|ALT_INV_SDO~DUPLICATE_q\,
	datag => \b2v_inst|u8|u0|ALT_INV_Mux0~7_combout\,
	combout => \b2v_inst|u8|u0|Mux0~9_combout\);

-- Location: LABCELL_X37_Y8_N42
\b2v_inst|u8|u0|SDO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u8|u0|SDO~0_combout\ = ( !\b2v_inst|u8|u0|SD_COUNTER\(5) & ( (!\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ((!\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & (((\b2v_inst|u8|u0|SDO~DUPLICATE_q\)))) # (\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & 
-- (!\b2v_inst|u8|u0|Mux0~9_combout\)))) # (\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & ((((\b2v_inst|u8|u0|SDO~DUPLICATE_q\))))) ) ) # ( \b2v_inst|u8|u0|SD_COUNTER\(5) & ( (!\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & 
-- ((!\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & (((!\b2v_inst|u8|u0|Mux0~6_combout\)))) # (\b2v_inst|u8|u0|SD_COUNTER[4]~DUPLICATE_q\ & (!\b2v_inst|u8|u0|Mux0~13_combout\)))) # (\b2v_inst|u8|u0|SD_COUNTER[6]~DUPLICATE_q\ & 
-- ((((\b2v_inst|u8|u0|SDO~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010000011111101101010001111110100100000111111010010000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[6]~DUPLICATE_q\,
	datab => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER[4]~DUPLICATE_q\,
	datac => \b2v_inst|u8|u0|ALT_INV_Mux0~13_combout\,
	datad => \b2v_inst|u8|u0|ALT_INV_SDO~DUPLICATE_q\,
	datae => \b2v_inst|u8|u0|ALT_INV_SD_COUNTER\(5),
	dataf => \b2v_inst|u8|u0|ALT_INV_Mux0~6_combout\,
	datag => \b2v_inst|u8|u0|ALT_INV_Mux0~9_combout\,
	combout => \b2v_inst|u8|u0|SDO~0_combout\);

-- Location: FF_X37_Y8_N43
\b2v_inst|u8|u0|SDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|u8|mI2C_CTRL_CLK~q\,
	d => \b2v_inst|u8|u0|SDO~0_combout\,
	clrn => \b2v_inst|u8|ALT_INV_i2c_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u8|u0|SDO~q\);

-- Location: LABCELL_X80_Y1_N36
\b2v_inst|rClk[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|rClk[0]~0_combout\ = ( !\b2v_inst|rClk\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|ALT_INV_rClk\(0),
	combout => \b2v_inst|rClk[0]~0_combout\);

-- Location: FF_X80_Y1_N38
\b2v_inst|rClk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|rClk[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rClk\(0));

-- Location: LABCELL_X46_Y12_N57
\b2v_inst|u2|oRST_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|oRST_1~0_combout\ = (!\b2v_inst|u2|Cont\(22) & (!\b2v_inst|u2|Cont\(23) & (!\b2v_inst|u2|oRST_1~q\ & !\b2v_inst|u2|Cont\(24))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(22),
	datab => \b2v_inst|u2|ALT_INV_Cont\(23),
	datac => \b2v_inst|u2|ALT_INV_oRST_1~q\,
	datad => \b2v_inst|u2|ALT_INV_Cont\(24),
	combout => \b2v_inst|u2|oRST_1~0_combout\);

-- Location: LABCELL_X45_Y13_N6
\b2v_inst|u2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|Equal0~3_combout\ = ( \b2v_inst|u2|Cont\(1) & ( \b2v_inst|u2|Equal0~0_combout\ & ( (\b2v_inst|u2|Cont\(0) & (\b2v_inst|u2|Equal0~1_combout\ & \b2v_inst|u2|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Cont\(0),
	datab => \b2v_inst|u2|ALT_INV_Equal0~1_combout\,
	datac => \b2v_inst|u2|ALT_INV_Equal0~2_combout\,
	datae => \b2v_inst|u2|ALT_INV_Cont\(1),
	dataf => \b2v_inst|u2|ALT_INV_Equal0~0_combout\,
	combout => \b2v_inst|u2|Equal0~3_combout\);

-- Location: LABCELL_X46_Y12_N36
\b2v_inst|u2|oRST_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u2|oRST_1~1_combout\ = ( \b2v_inst|u2|Cont\(20) & ( (!\b2v_inst|u2|Equal0~5_combout\) # ((!\b2v_inst|u2|oRST_1~0_combout\) # (\b2v_inst|u2|Cont\(21))) ) ) # ( !\b2v_inst|u2|Cont\(20) & ( (!\b2v_inst|u2|Equal0~5_combout\) # 
-- ((!\b2v_inst|u2|oRST_1~0_combout\) # ((\b2v_inst|u2|Equal0~3_combout\ & \b2v_inst|u2|Cont\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101111111011101110111111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u2|ALT_INV_Equal0~5_combout\,
	datab => \b2v_inst|u2|ALT_INV_oRST_1~0_combout\,
	datac => \b2v_inst|u2|ALT_INV_Equal0~3_combout\,
	datad => \b2v_inst|u2|ALT_INV_Cont\(21),
	dataf => \b2v_inst|u2|ALT_INV_Cont\(20),
	combout => \b2v_inst|u2|oRST_1~1_combout\);

-- Location: FF_X46_Y12_N37
\b2v_inst|u2|oRST_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst|u2|oRST_1~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u2|oRST_1~q\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "gclk_far",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 2000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "fb_1",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \b2v_inst9|altpll_component|auto_generated|fb_clkin\,
	ecnc1test => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	cntnen => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \b2v_inst9|altpll_component|auto_generated|fb_clkin\,
	tclk => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_MHI_bus\,
	shift => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFTENM\,
	up => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	shiften => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
	fractional_pll_index => 0,
	output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_SHIFT\,
	shiften => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \b2v_inst9|altpll_component|auto_generated|generic_pll1~FRACTIONAL_PLL_O_TCLK\,
	up0 => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_RECONFIG_O_UP\,
	vco0ph => \b2v_inst9|altpll_component|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk\);

-- Location: CLKCTRL_G6
\b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk\,
	outclk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\);

-- Location: LABCELL_X27_Y79_N30
\b2v_inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~37_sumout\ = SUM(( \b2v_inst2|comptY\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst2|Add1~38\ = CARRY(( \b2v_inst2|comptY\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(0),
	cin => GND,
	sumout => \b2v_inst2|Add1~37_sumout\,
	cout => \b2v_inst2|Add1~38\);

-- Location: LABCELL_X27_Y79_N48
\b2v_inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~13_sumout\ = SUM(( \b2v_inst2|comptY\(6) ) + ( GND ) + ( \b2v_inst2|Add1~18\ ))
-- \b2v_inst2|Add1~14\ = CARRY(( \b2v_inst2|comptY\(6) ) + ( GND ) + ( \b2v_inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(6),
	cin => \b2v_inst2|Add1~18\,
	sumout => \b2v_inst2|Add1~13_sumout\,
	cout => \b2v_inst2|Add1~14\);

-- Location: LABCELL_X27_Y79_N51
\b2v_inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~9_sumout\ = SUM(( \b2v_inst2|comptY\(7) ) + ( GND ) + ( \b2v_inst2|Add1~14\ ))
-- \b2v_inst2|Add1~10\ = CARRY(( \b2v_inst2|comptY\(7) ) + ( GND ) + ( \b2v_inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(7),
	cin => \b2v_inst2|Add1~14\,
	sumout => \b2v_inst2|Add1~9_sumout\,
	cout => \b2v_inst2|Add1~10\);

-- Location: MLABCELL_X25_Y79_N0
\b2v_inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~37_sumout\ = SUM(( \b2v_inst2|comptX\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst2|Add0~38\ = CARRY(( \b2v_inst2|comptX\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(0),
	cin => GND,
	sumout => \b2v_inst2|Add0~37_sumout\,
	cout => \b2v_inst2|Add0~38\);

-- Location: MLABCELL_X25_Y79_N12
\b2v_inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~21_sumout\ = SUM(( \b2v_inst2|comptX\(4) ) + ( GND ) + ( \b2v_inst2|Add0~10\ ))
-- \b2v_inst2|Add0~22\ = CARRY(( \b2v_inst2|comptX\(4) ) + ( GND ) + ( \b2v_inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(4),
	cin => \b2v_inst2|Add0~10\,
	sumout => \b2v_inst2|Add0~21_sumout\,
	cout => \b2v_inst2|Add0~22\);

-- Location: MLABCELL_X25_Y79_N15
\b2v_inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~29_sumout\ = SUM(( \b2v_inst2|comptX\(5) ) + ( GND ) + ( \b2v_inst2|Add0~22\ ))
-- \b2v_inst2|Add0~30\ = CARRY(( \b2v_inst2|comptX\(5) ) + ( GND ) + ( \b2v_inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(5),
	cin => \b2v_inst2|Add0~22\,
	sumout => \b2v_inst2|Add0~29_sumout\,
	cout => \b2v_inst2|Add0~30\);

-- Location: FF_X25_Y79_N17
\b2v_inst2|comptX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~29_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(5));

-- Location: MLABCELL_X25_Y79_N18
\b2v_inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~33_sumout\ = SUM(( \b2v_inst2|comptX\(6) ) + ( GND ) + ( \b2v_inst2|Add0~30\ ))
-- \b2v_inst2|Add0~34\ = CARRY(( \b2v_inst2|comptX\(6) ) + ( GND ) + ( \b2v_inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(6),
	cin => \b2v_inst2|Add0~30\,
	sumout => \b2v_inst2|Add0~33_sumout\,
	cout => \b2v_inst2|Add0~34\);

-- Location: FF_X25_Y79_N20
\b2v_inst2|comptX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~33_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(6));

-- Location: MLABCELL_X25_Y79_N21
\b2v_inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~25_sumout\ = SUM(( \b2v_inst2|comptX\(7) ) + ( GND ) + ( \b2v_inst2|Add0~34\ ))
-- \b2v_inst2|Add0~26\ = CARRY(( \b2v_inst2|comptX\(7) ) + ( GND ) + ( \b2v_inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(7),
	cin => \b2v_inst2|Add0~34\,
	sumout => \b2v_inst2|Add0~25_sumout\,
	cout => \b2v_inst2|Add0~26\);

-- Location: FF_X25_Y79_N23
\b2v_inst2|comptX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~25_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(7));

-- Location: MLABCELL_X25_Y79_N24
\b2v_inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~1_sumout\ = SUM(( \b2v_inst2|comptX\(8) ) + ( GND ) + ( \b2v_inst2|Add0~26\ ))
-- \b2v_inst2|Add0~2\ = CARRY(( \b2v_inst2|comptX\(8) ) + ( GND ) + ( \b2v_inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(8),
	cin => \b2v_inst2|Add0~26\,
	sumout => \b2v_inst2|Add0~1_sumout\,
	cout => \b2v_inst2|Add0~2\);

-- Location: FF_X25_Y79_N26
\b2v_inst2|comptX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~1_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(8));

-- Location: MLABCELL_X25_Y79_N27
\b2v_inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~5_sumout\ = SUM(( \b2v_inst2|comptX\(9) ) + ( GND ) + ( \b2v_inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(9),
	cin => \b2v_inst2|Add0~2\,
	sumout => \b2v_inst2|Add0~5_sumout\);

-- Location: FF_X25_Y79_N29
\b2v_inst2|comptX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~5_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(9));

-- Location: MLABCELL_X25_Y79_N30
\b2v_inst2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|process_0~1_combout\ = ( \b2v_inst2|comptX\(9) & ( \KEY[0]~input_o\ & ( (\b2v_inst2|comptX\(8) & (((\b2v_inst2|comptX\(6)) # (\b2v_inst2|comptX\(5))) # (\b2v_inst2|comptX\(7)))) ) ) ) # ( \b2v_inst2|comptX\(9) & ( !\KEY[0]~input_o\ ) ) # ( 
-- !\b2v_inst2|comptX\(9) & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptX\(7),
	datab => \b2v_inst2|ALT_INV_comptX\(5),
	datac => \b2v_inst2|ALT_INV_comptX\(6),
	datad => \b2v_inst2|ALT_INV_comptX\(8),
	datae => \b2v_inst2|ALT_INV_comptX\(9),
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst2|process_0~1_combout\);

-- Location: FF_X25_Y79_N2
\b2v_inst2|comptX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~37_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(0));

-- Location: MLABCELL_X25_Y79_N3
\b2v_inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~17_sumout\ = SUM(( \b2v_inst2|comptX\(1) ) + ( GND ) + ( \b2v_inst2|Add0~38\ ))
-- \b2v_inst2|Add0~18\ = CARRY(( \b2v_inst2|comptX\(1) ) + ( GND ) + ( \b2v_inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(1),
	cin => \b2v_inst2|Add0~38\,
	sumout => \b2v_inst2|Add0~17_sumout\,
	cout => \b2v_inst2|Add0~18\);

-- Location: FF_X25_Y79_N5
\b2v_inst2|comptX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~17_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(1));

-- Location: MLABCELL_X25_Y79_N6
\b2v_inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~13_sumout\ = SUM(( \b2v_inst2|comptX\(2) ) + ( GND ) + ( \b2v_inst2|Add0~18\ ))
-- \b2v_inst2|Add0~14\ = CARRY(( \b2v_inst2|comptX\(2) ) + ( GND ) + ( \b2v_inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(2),
	cin => \b2v_inst2|Add0~18\,
	sumout => \b2v_inst2|Add0~13_sumout\,
	cout => \b2v_inst2|Add0~14\);

-- Location: FF_X25_Y79_N8
\b2v_inst2|comptX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~13_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(2));

-- Location: MLABCELL_X25_Y79_N9
\b2v_inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add0~9_sumout\ = SUM(( \b2v_inst2|comptX\(3) ) + ( GND ) + ( \b2v_inst2|Add0~14\ ))
-- \b2v_inst2|Add0~10\ = CARRY(( \b2v_inst2|comptX\(3) ) + ( GND ) + ( \b2v_inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptX\(3),
	cin => \b2v_inst2|Add0~14\,
	sumout => \b2v_inst2|Add0~9_sumout\,
	cout => \b2v_inst2|Add0~10\);

-- Location: FF_X25_Y79_N11
\b2v_inst2|comptX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~9_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(3));

-- Location: FF_X25_Y79_N14
\b2v_inst2|comptX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add0~21_sumout\,
	sclr => \b2v_inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptX\(4));

-- Location: MLABCELL_X25_Y79_N51
\b2v_inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Equal0~0_combout\ = ( !\b2v_inst2|comptX\(6) & ( (!\b2v_inst2|comptX\(4) & (!\b2v_inst2|comptX\(5) & !\b2v_inst2|comptX\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptX\(4),
	datab => \b2v_inst2|ALT_INV_comptX\(5),
	datad => \b2v_inst2|ALT_INV_comptX\(7),
	dataf => \b2v_inst2|ALT_INV_comptX\(6),
	combout => \b2v_inst2|Equal0~0_combout\);

-- Location: MLABCELL_X25_Y79_N39
\b2v_inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Equal0~1_combout\ = ( !\b2v_inst2|comptX\(3) & ( (!\b2v_inst2|comptX\(9) & (!\b2v_inst2|comptX\(8) & !\b2v_inst2|comptX\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|ALT_INV_comptX\(9),
	datac => \b2v_inst2|ALT_INV_comptX\(8),
	datad => \b2v_inst2|ALT_INV_comptX\(0),
	dataf => \b2v_inst2|ALT_INV_comptX\(3),
	combout => \b2v_inst2|Equal0~1_combout\);

-- Location: MLABCELL_X25_Y79_N45
\b2v_inst2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Equal0~2_combout\ = ( \b2v_inst2|Equal0~1_combout\ & ( (\b2v_inst2|Equal0~0_combout\ & (!\b2v_inst2|comptX\(2) & !\b2v_inst2|comptX\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Equal0~0_combout\,
	datac => \b2v_inst2|ALT_INV_comptX\(2),
	datad => \b2v_inst2|ALT_INV_comptX\(1),
	dataf => \b2v_inst2|ALT_INV_Equal0~1_combout\,
	combout => \b2v_inst2|Equal0~2_combout\);

-- Location: FF_X27_Y79_N53
\b2v_inst2|comptY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~9_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(7));

-- Location: LABCELL_X27_Y79_N54
\b2v_inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~5_sumout\ = SUM(( \b2v_inst2|comptY\(8) ) + ( GND ) + ( \b2v_inst2|Add1~10\ ))
-- \b2v_inst2|Add1~6\ = CARRY(( \b2v_inst2|comptY\(8) ) + ( GND ) + ( \b2v_inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(8),
	cin => \b2v_inst2|Add1~10\,
	sumout => \b2v_inst2|Add1~5_sumout\,
	cout => \b2v_inst2|Add1~6\);

-- Location: FF_X27_Y79_N56
\b2v_inst2|comptY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~5_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(8));

-- Location: LABCELL_X27_Y79_N57
\b2v_inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~1_sumout\ = SUM(( \b2v_inst2|comptY\(9) ) + ( GND ) + ( \b2v_inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(9),
	cin => \b2v_inst2|Add1~6\,
	sumout => \b2v_inst2|Add1~1_sumout\);

-- Location: FF_X27_Y79_N59
\b2v_inst2|comptY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~1_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(9));

-- Location: LABCELL_X27_Y79_N3
\b2v_inst2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|process_0~2_combout\ = ( \b2v_inst2|comptY\(3) & ( ((\b2v_inst2|comptY\(2)) # (\b2v_inst2|comptY\(0))) # (\b2v_inst2|comptY\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptY\(1),
	datac => \b2v_inst2|ALT_INV_comptY\(0),
	datad => \b2v_inst2|ALT_INV_comptY\(2),
	dataf => \b2v_inst2|ALT_INV_comptY\(3),
	combout => \b2v_inst2|process_0~2_combout\);

-- Location: LABCELL_X27_Y79_N15
\b2v_inst2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|process_0~3_combout\ = (!\KEY[0]~input_o\) # ((\b2v_inst2|comptY\(9) & ((!\b2v_inst2|process_0~0_combout\) # (\b2v_inst2|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110011111100101111001111110010111100111111001011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_process_0~0_combout\,
	datab => \b2v_inst2|ALT_INV_comptY\(9),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \b2v_inst2|ALT_INV_process_0~2_combout\,
	combout => \b2v_inst2|process_0~3_combout\);

-- Location: FF_X27_Y79_N32
\b2v_inst2|comptY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~37_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(0));

-- Location: LABCELL_X27_Y79_N33
\b2v_inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~33_sumout\ = SUM(( \b2v_inst2|comptY\(1) ) + ( GND ) + ( \b2v_inst2|Add1~38\ ))
-- \b2v_inst2|Add1~34\ = CARRY(( \b2v_inst2|comptY\(1) ) + ( GND ) + ( \b2v_inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(1),
	cin => \b2v_inst2|Add1~38\,
	sumout => \b2v_inst2|Add1~33_sumout\,
	cout => \b2v_inst2|Add1~34\);

-- Location: FF_X27_Y79_N35
\b2v_inst2|comptY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~33_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(1));

-- Location: LABCELL_X27_Y79_N36
\b2v_inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~29_sumout\ = SUM(( \b2v_inst2|comptY\(2) ) + ( GND ) + ( \b2v_inst2|Add1~34\ ))
-- \b2v_inst2|Add1~30\ = CARRY(( \b2v_inst2|comptY\(2) ) + ( GND ) + ( \b2v_inst2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(2),
	cin => \b2v_inst2|Add1~34\,
	sumout => \b2v_inst2|Add1~29_sumout\,
	cout => \b2v_inst2|Add1~30\);

-- Location: FF_X27_Y79_N38
\b2v_inst2|comptY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~29_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(2));

-- Location: LABCELL_X27_Y79_N39
\b2v_inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~25_sumout\ = SUM(( \b2v_inst2|comptY\(3) ) + ( GND ) + ( \b2v_inst2|Add1~30\ ))
-- \b2v_inst2|Add1~26\ = CARRY(( \b2v_inst2|comptY\(3) ) + ( GND ) + ( \b2v_inst2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(3),
	cin => \b2v_inst2|Add1~30\,
	sumout => \b2v_inst2|Add1~25_sumout\,
	cout => \b2v_inst2|Add1~26\);

-- Location: FF_X27_Y79_N41
\b2v_inst2|comptY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~25_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(3));

-- Location: LABCELL_X27_Y79_N42
\b2v_inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~21_sumout\ = SUM(( \b2v_inst2|comptY\(4) ) + ( GND ) + ( \b2v_inst2|Add1~26\ ))
-- \b2v_inst2|Add1~22\ = CARRY(( \b2v_inst2|comptY\(4) ) + ( GND ) + ( \b2v_inst2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(4),
	cin => \b2v_inst2|Add1~26\,
	sumout => \b2v_inst2|Add1~21_sumout\,
	cout => \b2v_inst2|Add1~22\);

-- Location: FF_X27_Y79_N44
\b2v_inst2|comptY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~21_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(4));

-- Location: LABCELL_X27_Y79_N45
\b2v_inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|Add1~17_sumout\ = SUM(( \b2v_inst2|comptY\(5) ) + ( GND ) + ( \b2v_inst2|Add1~22\ ))
-- \b2v_inst2|Add1~18\ = CARRY(( \b2v_inst2|comptY\(5) ) + ( GND ) + ( \b2v_inst2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|ALT_INV_comptY\(5),
	cin => \b2v_inst2|Add1~22\,
	sumout => \b2v_inst2|Add1~17_sumout\,
	cout => \b2v_inst2|Add1~18\);

-- Location: FF_X27_Y79_N47
\b2v_inst2|comptY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~17_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(5));

-- Location: FF_X27_Y79_N50
\b2v_inst2|comptY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|Add1~13_sumout\,
	sclr => \b2v_inst2|process_0~3_combout\,
	ena => \b2v_inst2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|comptY\(6));

-- Location: LABCELL_X27_Y79_N24
\b2v_inst2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|process_0~0_combout\ = ( !\b2v_inst2|comptY\(8) & ( (!\b2v_inst2|comptY\(6) & (!\b2v_inst2|comptY\(4) & (!\b2v_inst2|comptY\(7) & !\b2v_inst2|comptY\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptY\(6),
	datab => \b2v_inst2|ALT_INV_comptY\(4),
	datac => \b2v_inst2|ALT_INV_comptY\(7),
	datad => \b2v_inst2|ALT_INV_comptY\(5),
	datae => \b2v_inst2|ALT_INV_comptY\(8),
	combout => \b2v_inst2|process_0~0_combout\);

-- Location: LABCELL_X27_Y79_N12
\b2v_inst2|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan6~0_combout\ = ( \b2v_inst2|comptY\(1) ) # ( !\b2v_inst2|comptY\(1) & ( (!\b2v_inst2|process_0~0_combout\) # (((\b2v_inst2|comptY\(3)) # (\b2v_inst2|comptY\(2))) # (\b2v_inst2|comptY\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_process_0~0_combout\,
	datab => \b2v_inst2|ALT_INV_comptY\(9),
	datac => \b2v_inst2|ALT_INV_comptY\(2),
	datad => \b2v_inst2|ALT_INV_comptY\(3),
	dataf => \b2v_inst2|ALT_INV_comptY\(1),
	combout => \b2v_inst2|LessThan6~0_combout\);

-- Location: FF_X27_Y79_N13
\b2v_inst2|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|VSYNC~q\);

-- Location: MLABCELL_X25_Y79_N48
\b2v_inst2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan2~0_combout\ = ( \b2v_inst2|comptX\(3) & ( (!\b2v_inst2|comptX\(5) & ((!\b2v_inst2|comptX\(4)) # (!\b2v_inst2|comptX\(2)))) ) ) # ( !\b2v_inst2|comptX\(3) & ( !\b2v_inst2|comptX\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptX\(4),
	datab => \b2v_inst2|ALT_INV_comptX\(5),
	datac => \b2v_inst2|ALT_INV_comptX\(2),
	dataf => \b2v_inst2|ALT_INV_comptX\(3),
	combout => \b2v_inst2|LessThan2~0_combout\);

-- Location: MLABCELL_X25_Y79_N57
\b2v_inst2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan2~1_combout\ = ( \b2v_inst2|comptX\(8) & ( \b2v_inst2|comptX\(6) ) ) # ( !\b2v_inst2|comptX\(8) & ( \b2v_inst2|comptX\(6) & ( ((!\b2v_inst2|LessThan2~0_combout\) # (\b2v_inst2|comptX\(9))) # (\b2v_inst2|comptX\(7)) ) ) ) # ( 
-- \b2v_inst2|comptX\(8) & ( !\b2v_inst2|comptX\(6) ) ) # ( !\b2v_inst2|comptX\(8) & ( !\b2v_inst2|comptX\(6) & ( (\b2v_inst2|comptX\(9)) # (\b2v_inst2|comptX\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111111111111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptX\(7),
	datab => \b2v_inst2|ALT_INV_comptX\(9),
	datad => \b2v_inst2|ALT_INV_LessThan2~0_combout\,
	datae => \b2v_inst2|ALT_INV_comptX\(8),
	dataf => \b2v_inst2|ALT_INV_comptX\(6),
	combout => \b2v_inst2|LessThan2~1_combout\);

-- Location: FF_X25_Y79_N58
\b2v_inst2|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst2|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|HSYNC~q\);

-- Location: IOIBUF_X56_Y0_N18
\CCD_PIXCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_PIXCLK,
	o => \CCD_PIXCLK~input_o\);

-- Location: CLKCTRL_G7
\CCD_PIXCLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CCD_PIXCLK~input_o\,
	outclk => \CCD_PIXCLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X56_Y8_N30
\b2v_inst|u3|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~1_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u3|Add1~2\ = CARRY(( \b2v_inst|u3|Y_Cont\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(0),
	cin => GND,
	sumout => \b2v_inst|u3|Add1~1_sumout\,
	cout => \b2v_inst|u3|Add1~2\);

-- Location: IOIBUF_X72_Y0_N52
\CCD_FVAL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_FVAL,
	o => \CCD_FVAL~input_o\);

-- Location: MLABCELL_X59_Y4_N39
\b2v_inst|rCCD_FVAL~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|rCCD_FVAL~feeder_combout\ = ( \CCD_FVAL~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CCD_FVAL~input_o\,
	combout => \b2v_inst|rCCD_FVAL~feeder_combout\);

-- Location: FF_X59_Y4_N41
\b2v_inst|rCCD_FVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|rCCD_FVAL~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rCCD_FVAL~q\);

-- Location: FF_X56_Y8_N28
\b2v_inst|u3|Pre_FVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	asdata => \b2v_inst|rCCD_FVAL~q\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Pre_FVAL~q\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X56_Y8_N57
\b2v_inst|u3|mSTART~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|mSTART~0_combout\ = (\KEY[2]~input_o\ & ((!\KEY[3]~input_o\) # (\b2v_inst|u3|mSTART~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \b2v_inst|u3|ALT_INV_mSTART~q\,
	combout => \b2v_inst|u3|mSTART~0_combout\);

-- Location: FF_X56_Y8_N58
\b2v_inst|u3|mSTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|mSTART~0_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|mSTART~q\);

-- Location: LABCELL_X56_Y8_N18
\b2v_inst|u3|mCCD_FVAL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|mCCD_FVAL~0_combout\ = ( \b2v_inst|u3|mSTART~q\ & ( (!\b2v_inst|rCCD_FVAL~q\ & (!\b2v_inst|u3|Pre_FVAL~q\ & \b2v_inst|u3|mCCD_FVAL~q\)) # (\b2v_inst|rCCD_FVAL~q\ & ((!\b2v_inst|u3|Pre_FVAL~q\) # (\b2v_inst|u3|mCCD_FVAL~q\))) ) ) # ( 
-- !\b2v_inst|u3|mSTART~q\ & ( (\b2v_inst|u3|mCCD_FVAL~q\ & ((!\b2v_inst|u3|Pre_FVAL~q\) # (\b2v_inst|rCCD_FVAL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|ALT_INV_rCCD_FVAL~q\,
	datac => \b2v_inst|u3|ALT_INV_Pre_FVAL~q\,
	datad => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	dataf => \b2v_inst|u3|ALT_INV_mSTART~q\,
	combout => \b2v_inst|u3|mCCD_FVAL~0_combout\);

-- Location: FF_X56_Y8_N20
\b2v_inst|u3|mCCD_FVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|mCCD_FVAL~0_combout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|mCCD_FVAL~q\);

-- Location: IOIBUF_X74_Y0_N75
\CCD_LVAL~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_LVAL,
	o => \CCD_LVAL~input_o\);

-- Location: FF_X55_Y8_N4
\b2v_inst|rCCD_LVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	asdata => \CCD_LVAL~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rCCD_LVAL~q\);

-- Location: FF_X56_Y8_N56
\b2v_inst|u3|mCCD_LVAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	asdata => \b2v_inst|rCCD_LVAL~q\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|mCCD_LVAL~q\);

-- Location: LABCELL_X57_Y8_N0
\b2v_inst|u3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~9_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst|u3|Add0~10\ = CARRY(( \b2v_inst|u3|X_Cont\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(0),
	cin => GND,
	sumout => \b2v_inst|u3|Add0~9_sumout\,
	cout => \b2v_inst|u3|Add0~10\);

-- Location: LABCELL_X56_Y8_N0
\b2v_inst|u3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~1_combout\ = ( \b2v_inst|u3|X_Cont\(5) & ( \b2v_inst|u3|X_Cont\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst|u3|ALT_INV_X_Cont\(5),
	dataf => \b2v_inst|u3|ALT_INV_X_Cont\(4),
	combout => \b2v_inst|u3|LessThan0~1_combout\);

-- Location: LABCELL_X56_Y8_N54
\b2v_inst|u3|X_Cont[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|X_Cont[7]~1_combout\ = ( \b2v_inst|u3|mCCD_FVAL~q\ & ( \b2v_inst|u3|mCCD_LVAL~q\ ) ) # ( !\b2v_inst|u3|mCCD_FVAL~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_mCCD_LVAL~q\,
	dataf => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	combout => \b2v_inst|u3|X_Cont[7]~1_combout\);

-- Location: FF_X57_Y8_N25
\b2v_inst|u3|X_Cont[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~41_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont[8]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y8_N51
\b2v_inst|u3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~2_combout\ = ( !\b2v_inst|u3|X_Cont[8]~DUPLICATE_q\ & ( !\b2v_inst|u3|X_Cont\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(9),
	dataf => \b2v_inst|u3|ALT_INV_X_Cont[8]~DUPLICATE_q\,
	combout => \b2v_inst|u3|LessThan0~2_combout\);

-- Location: LABCELL_X56_Y8_N6
\b2v_inst|u3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~0_combout\ = ( \b2v_inst|u3|X_Cont\(3) & ( \b2v_inst|u3|X_Cont\(7) & ( (\b2v_inst|u3|X_Cont\(1) & (\b2v_inst|u3|X_Cont\(2) & (\b2v_inst|u3|X_Cont\(0) & \b2v_inst|u3|X_Cont\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_X_Cont\(1),
	datab => \b2v_inst|u3|ALT_INV_X_Cont\(2),
	datac => \b2v_inst|u3|ALT_INV_X_Cont\(0),
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(6),
	datae => \b2v_inst|u3|ALT_INV_X_Cont\(3),
	dataf => \b2v_inst|u3|ALT_INV_X_Cont\(7),
	combout => \b2v_inst|u3|LessThan0~0_combout\);

-- Location: LABCELL_X57_Y8_N54
\b2v_inst|u3|X_Cont[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|X_Cont[7]~0_combout\ = ( \b2v_inst|u3|LessThan0~0_combout\ & ( \b2v_inst|u3|LessThan0~4_combout\ & ( (!\b2v_inst|u3|mCCD_FVAL~q\) # ((\b2v_inst|u3|X_Cont\(10) & ((!\b2v_inst|u3|LessThan0~2_combout\) # (\b2v_inst|u3|LessThan0~1_combout\)))) ) 
-- ) ) # ( !\b2v_inst|u3|LessThan0~0_combout\ & ( \b2v_inst|u3|LessThan0~4_combout\ & ( (!\b2v_inst|u3|mCCD_FVAL~q\) # ((\b2v_inst|u3|X_Cont\(10) & !\b2v_inst|u3|LessThan0~2_combout\)) ) ) ) # ( \b2v_inst|u3|LessThan0~0_combout\ & ( 
-- !\b2v_inst|u3|LessThan0~4_combout\ ) ) # ( !\b2v_inst|u3|LessThan0~0_combout\ & ( !\b2v_inst|u3|LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010100001111111101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_X_Cont\(10),
	datab => \b2v_inst|u3|ALT_INV_LessThan0~1_combout\,
	datac => \b2v_inst|u3|ALT_INV_LessThan0~2_combout\,
	datad => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	datae => \b2v_inst|u3|ALT_INV_LessThan0~0_combout\,
	dataf => \b2v_inst|u3|ALT_INV_LessThan0~4_combout\,
	combout => \b2v_inst|u3|X_Cont[7]~0_combout\);

-- Location: FF_X57_Y8_N2
\b2v_inst|u3|X_Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~9_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(0));

-- Location: LABCELL_X57_Y8_N3
\b2v_inst|u3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~17_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(1) ) + ( GND ) + ( \b2v_inst|u3|Add0~10\ ))
-- \b2v_inst|u3|Add0~18\ = CARRY(( \b2v_inst|u3|X_Cont\(1) ) + ( GND ) + ( \b2v_inst|u3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(1),
	cin => \b2v_inst|u3|Add0~10\,
	sumout => \b2v_inst|u3|Add0~17_sumout\,
	cout => \b2v_inst|u3|Add0~18\);

-- Location: FF_X57_Y8_N5
\b2v_inst|u3|X_Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~17_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(1));

-- Location: LABCELL_X57_Y8_N6
\b2v_inst|u3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~21_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(2) ) + ( GND ) + ( \b2v_inst|u3|Add0~18\ ))
-- \b2v_inst|u3|Add0~22\ = CARRY(( \b2v_inst|u3|X_Cont\(2) ) + ( GND ) + ( \b2v_inst|u3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(2),
	cin => \b2v_inst|u3|Add0~18\,
	sumout => \b2v_inst|u3|Add0~21_sumout\,
	cout => \b2v_inst|u3|Add0~22\);

-- Location: FF_X57_Y8_N7
\b2v_inst|u3|X_Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~21_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(2));

-- Location: LABCELL_X57_Y8_N9
\b2v_inst|u3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~25_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(3) ) + ( GND ) + ( \b2v_inst|u3|Add0~22\ ))
-- \b2v_inst|u3|Add0~26\ = CARRY(( \b2v_inst|u3|X_Cont\(3) ) + ( GND ) + ( \b2v_inst|u3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(3),
	cin => \b2v_inst|u3|Add0~22\,
	sumout => \b2v_inst|u3|Add0~25_sumout\,
	cout => \b2v_inst|u3|Add0~26\);

-- Location: FF_X57_Y8_N11
\b2v_inst|u3|X_Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~25_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(3));

-- Location: LABCELL_X57_Y8_N12
\b2v_inst|u3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~29_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(4) ) + ( GND ) + ( \b2v_inst|u3|Add0~26\ ))
-- \b2v_inst|u3|Add0~30\ = CARRY(( \b2v_inst|u3|X_Cont\(4) ) + ( GND ) + ( \b2v_inst|u3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(4),
	cin => \b2v_inst|u3|Add0~26\,
	sumout => \b2v_inst|u3|Add0~29_sumout\,
	cout => \b2v_inst|u3|Add0~30\);

-- Location: FF_X57_Y8_N14
\b2v_inst|u3|X_Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~29_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(4));

-- Location: LABCELL_X57_Y8_N15
\b2v_inst|u3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~33_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(5) ) + ( GND ) + ( \b2v_inst|u3|Add0~30\ ))
-- \b2v_inst|u3|Add0~34\ = CARRY(( \b2v_inst|u3|X_Cont\(5) ) + ( GND ) + ( \b2v_inst|u3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(5),
	cin => \b2v_inst|u3|Add0~30\,
	sumout => \b2v_inst|u3|Add0~33_sumout\,
	cout => \b2v_inst|u3|Add0~34\);

-- Location: FF_X57_Y8_N17
\b2v_inst|u3|X_Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~33_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(5));

-- Location: LABCELL_X57_Y8_N18
\b2v_inst|u3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~13_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(6) ) + ( GND ) + ( \b2v_inst|u3|Add0~34\ ))
-- \b2v_inst|u3|Add0~14\ = CARRY(( \b2v_inst|u3|X_Cont\(6) ) + ( GND ) + ( \b2v_inst|u3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(6),
	cin => \b2v_inst|u3|Add0~34\,
	sumout => \b2v_inst|u3|Add0~13_sumout\,
	cout => \b2v_inst|u3|Add0~14\);

-- Location: FF_X57_Y8_N20
\b2v_inst|u3|X_Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~13_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(6));

-- Location: LABCELL_X57_Y8_N21
\b2v_inst|u3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~5_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(7) ) + ( GND ) + ( \b2v_inst|u3|Add0~14\ ))
-- \b2v_inst|u3|Add0~6\ = CARRY(( \b2v_inst|u3|X_Cont\(7) ) + ( GND ) + ( \b2v_inst|u3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(7),
	cin => \b2v_inst|u3|Add0~14\,
	sumout => \b2v_inst|u3|Add0~5_sumout\,
	cout => \b2v_inst|u3|Add0~6\);

-- Location: FF_X57_Y8_N23
\b2v_inst|u3|X_Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~5_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(7));

-- Location: LABCELL_X57_Y8_N24
\b2v_inst|u3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~41_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(8) ) + ( GND ) + ( \b2v_inst|u3|Add0~6\ ))
-- \b2v_inst|u3|Add0~42\ = CARRY(( \b2v_inst|u3|X_Cont\(8) ) + ( GND ) + ( \b2v_inst|u3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(8),
	cin => \b2v_inst|u3|Add0~6\,
	sumout => \b2v_inst|u3|Add0~41_sumout\,
	cout => \b2v_inst|u3|Add0~42\);

-- Location: FF_X57_Y8_N26
\b2v_inst|u3|X_Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~41_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(8));

-- Location: LABCELL_X57_Y8_N27
\b2v_inst|u3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~37_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(9) ) + ( GND ) + ( \b2v_inst|u3|Add0~42\ ))
-- \b2v_inst|u3|Add0~38\ = CARRY(( \b2v_inst|u3|X_Cont\(9) ) + ( GND ) + ( \b2v_inst|u3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(9),
	cin => \b2v_inst|u3|Add0~42\,
	sumout => \b2v_inst|u3|Add0~37_sumout\,
	cout => \b2v_inst|u3|Add0~38\);

-- Location: FF_X57_Y8_N29
\b2v_inst|u3|X_Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~37_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(9));

-- Location: LABCELL_X57_Y8_N30
\b2v_inst|u3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~1_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(10) ) + ( GND ) + ( \b2v_inst|u3|Add0~38\ ))
-- \b2v_inst|u3|Add0~2\ = CARRY(( \b2v_inst|u3|X_Cont\(10) ) + ( GND ) + ( \b2v_inst|u3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(10),
	cin => \b2v_inst|u3|Add0~38\,
	sumout => \b2v_inst|u3|Add0~1_sumout\,
	cout => \b2v_inst|u3|Add0~2\);

-- Location: FF_X57_Y8_N31
\b2v_inst|u3|X_Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~1_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(10));

-- Location: LABCELL_X57_Y8_N33
\b2v_inst|u3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~45_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(11) ) + ( GND ) + ( \b2v_inst|u3|Add0~2\ ))
-- \b2v_inst|u3|Add0~46\ = CARRY(( \b2v_inst|u3|X_Cont\(11) ) + ( GND ) + ( \b2v_inst|u3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(11),
	cin => \b2v_inst|u3|Add0~2\,
	sumout => \b2v_inst|u3|Add0~45_sumout\,
	cout => \b2v_inst|u3|Add0~46\);

-- Location: FF_X57_Y8_N35
\b2v_inst|u3|X_Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~45_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(11));

-- Location: LABCELL_X57_Y8_N36
\b2v_inst|u3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~61_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(12) ) + ( GND ) + ( \b2v_inst|u3|Add0~46\ ))
-- \b2v_inst|u3|Add0~62\ = CARRY(( \b2v_inst|u3|X_Cont\(12) ) + ( GND ) + ( \b2v_inst|u3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(12),
	cin => \b2v_inst|u3|Add0~46\,
	sumout => \b2v_inst|u3|Add0~61_sumout\,
	cout => \b2v_inst|u3|Add0~62\);

-- Location: FF_X57_Y8_N38
\b2v_inst|u3|X_Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~61_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(12));

-- Location: LABCELL_X57_Y8_N39
\b2v_inst|u3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~49_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(13) ) + ( GND ) + ( \b2v_inst|u3|Add0~62\ ))
-- \b2v_inst|u3|Add0~50\ = CARRY(( \b2v_inst|u3|X_Cont\(13) ) + ( GND ) + ( \b2v_inst|u3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(13),
	cin => \b2v_inst|u3|Add0~62\,
	sumout => \b2v_inst|u3|Add0~49_sumout\,
	cout => \b2v_inst|u3|Add0~50\);

-- Location: FF_X57_Y8_N41
\b2v_inst|u3|X_Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~49_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(13));

-- Location: LABCELL_X57_Y8_N42
\b2v_inst|u3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~57_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(14) ) + ( GND ) + ( \b2v_inst|u3|Add0~50\ ))
-- \b2v_inst|u3|Add0~58\ = CARRY(( \b2v_inst|u3|X_Cont\(14) ) + ( GND ) + ( \b2v_inst|u3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(14),
	cin => \b2v_inst|u3|Add0~50\,
	sumout => \b2v_inst|u3|Add0~57_sumout\,
	cout => \b2v_inst|u3|Add0~58\);

-- Location: FF_X57_Y8_N43
\b2v_inst|u3|X_Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~57_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(14));

-- Location: LABCELL_X57_Y8_N45
\b2v_inst|u3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add0~53_sumout\ = SUM(( \b2v_inst|u3|X_Cont\(15) ) + ( GND ) + ( \b2v_inst|u3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(15),
	cin => \b2v_inst|u3|Add0~58\,
	sumout => \b2v_inst|u3|Add0~53_sumout\);

-- Location: FF_X57_Y8_N47
\b2v_inst|u3|X_Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~53_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont\(15));

-- Location: LABCELL_X57_Y8_N48
\b2v_inst|u3|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~4_combout\ = ( !\b2v_inst|u3|X_Cont\(11) & ( (!\b2v_inst|u3|X_Cont\(14) & (!\b2v_inst|u3|X_Cont\(13) & (!\b2v_inst|u3|X_Cont\(12) & !\b2v_inst|u3|X_Cont\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_X_Cont\(14),
	datab => \b2v_inst|u3|ALT_INV_X_Cont\(13),
	datac => \b2v_inst|u3|ALT_INV_X_Cont\(12),
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(15),
	dataf => \b2v_inst|u3|ALT_INV_X_Cont\(11),
	combout => \b2v_inst|u3|LessThan0~4_combout\);

-- Location: FF_X57_Y8_N32
\b2v_inst|u3|X_Cont[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add0~1_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|X_Cont[7]~0_combout\,
	ena => \b2v_inst|u3|X_Cont[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|X_Cont[10]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y8_N15
\b2v_inst|u3|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~5_combout\ = ( \b2v_inst|u3|X_Cont\(3) & ( \b2v_inst|u3|X_Cont\(2) & ( (\b2v_inst|u3|X_Cont\(1) & (\b2v_inst|u3|X_Cont\(4) & (\b2v_inst|u3|X_Cont\(6) & \b2v_inst|u3|X_Cont\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_X_Cont\(1),
	datab => \b2v_inst|u3|ALT_INV_X_Cont\(4),
	datac => \b2v_inst|u3|ALT_INV_X_Cont\(6),
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(5),
	datae => \b2v_inst|u3|ALT_INV_X_Cont\(3),
	dataf => \b2v_inst|u3|ALT_INV_X_Cont\(2),
	combout => \b2v_inst|u3|LessThan0~5_combout\);

-- Location: LABCELL_X56_Y8_N24
\b2v_inst|u3|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|LessThan0~3_combout\ = ( \b2v_inst|u3|X_Cont\(9) & ( \b2v_inst|u3|LessThan0~5_combout\ & ( \b2v_inst|u3|X_Cont[10]~DUPLICATE_q\ ) ) ) # ( !\b2v_inst|u3|X_Cont\(9) & ( \b2v_inst|u3|LessThan0~5_combout\ & ( (\b2v_inst|u3|X_Cont[10]~DUPLICATE_q\ 
-- & (((\b2v_inst|u3|X_Cont\(0) & \b2v_inst|u3|X_Cont\(7))) # (\b2v_inst|u3|X_Cont\(8)))) ) ) ) # ( \b2v_inst|u3|X_Cont\(9) & ( !\b2v_inst|u3|LessThan0~5_combout\ & ( \b2v_inst|u3|X_Cont[10]~DUPLICATE_q\ ) ) ) # ( !\b2v_inst|u3|X_Cont\(9) & ( 
-- !\b2v_inst|u3|LessThan0~5_combout\ & ( (\b2v_inst|u3|X_Cont[10]~DUPLICATE_q\ & \b2v_inst|u3|X_Cont\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010101010101010100010001000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_X_Cont[10]~DUPLICATE_q\,
	datab => \b2v_inst|u3|ALT_INV_X_Cont\(8),
	datac => \b2v_inst|u3|ALT_INV_X_Cont\(0),
	datad => \b2v_inst|u3|ALT_INV_X_Cont\(7),
	datae => \b2v_inst|u3|ALT_INV_X_Cont\(9),
	dataf => \b2v_inst|u3|ALT_INV_LessThan0~5_combout\,
	combout => \b2v_inst|u3|LessThan0~3_combout\);

-- Location: LABCELL_X56_Y8_N21
\b2v_inst|u3|Y_Cont[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Y_Cont[1]~0_combout\ = ( \b2v_inst|u3|LessThan0~3_combout\ & ( (!\b2v_inst|u3|mCCD_FVAL~q\) # (\b2v_inst|u3|mCCD_LVAL~q\) ) ) # ( !\b2v_inst|u3|LessThan0~3_combout\ & ( (!\b2v_inst|u3|mCCD_FVAL~q\) # ((\b2v_inst|u3|mCCD_LVAL~q\ & 
-- !\b2v_inst|u3|LessThan0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	datac => \b2v_inst|u3|ALT_INV_mCCD_LVAL~q\,
	datad => \b2v_inst|u3|ALT_INV_LessThan0~4_combout\,
	dataf => \b2v_inst|u3|ALT_INV_LessThan0~3_combout\,
	combout => \b2v_inst|u3|Y_Cont[1]~0_combout\);

-- Location: FF_X56_Y8_N31
\b2v_inst|u3|Y_Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~1_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(0));

-- Location: LABCELL_X56_Y8_N33
\b2v_inst|u3|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~5_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(1) ) + ( GND ) + ( \b2v_inst|u3|Add1~2\ ))
-- \b2v_inst|u3|Add1~6\ = CARRY(( \b2v_inst|u3|Y_Cont\(1) ) + ( GND ) + ( \b2v_inst|u3|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(1),
	cin => \b2v_inst|u3|Add1~2\,
	sumout => \b2v_inst|u3|Add1~5_sumout\,
	cout => \b2v_inst|u3|Add1~6\);

-- Location: FF_X56_Y8_N34
\b2v_inst|u3|Y_Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~5_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(1));

-- Location: LABCELL_X56_Y8_N36
\b2v_inst|u3|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~9_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(2) ) + ( GND ) + ( \b2v_inst|u3|Add1~6\ ))
-- \b2v_inst|u3|Add1~10\ = CARRY(( \b2v_inst|u3|Y_Cont\(2) ) + ( GND ) + ( \b2v_inst|u3|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(2),
	cin => \b2v_inst|u3|Add1~6\,
	sumout => \b2v_inst|u3|Add1~9_sumout\,
	cout => \b2v_inst|u3|Add1~10\);

-- Location: FF_X56_Y8_N37
\b2v_inst|u3|Y_Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~9_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(2));

-- Location: LABCELL_X56_Y8_N39
\b2v_inst|u3|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~13_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(3) ) + ( GND ) + ( \b2v_inst|u3|Add1~10\ ))
-- \b2v_inst|u3|Add1~14\ = CARRY(( \b2v_inst|u3|Y_Cont\(3) ) + ( GND ) + ( \b2v_inst|u3|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(3),
	cin => \b2v_inst|u3|Add1~10\,
	sumout => \b2v_inst|u3|Add1~13_sumout\,
	cout => \b2v_inst|u3|Add1~14\);

-- Location: FF_X56_Y8_N40
\b2v_inst|u3|Y_Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~13_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(3));

-- Location: LABCELL_X56_Y8_N42
\b2v_inst|u3|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~17_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(4) ) + ( GND ) + ( \b2v_inst|u3|Add1~14\ ))
-- \b2v_inst|u3|Add1~18\ = CARRY(( \b2v_inst|u3|Y_Cont\(4) ) + ( GND ) + ( \b2v_inst|u3|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(4),
	cin => \b2v_inst|u3|Add1~14\,
	sumout => \b2v_inst|u3|Add1~17_sumout\,
	cout => \b2v_inst|u3|Add1~18\);

-- Location: FF_X56_Y8_N43
\b2v_inst|u3|Y_Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~17_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(4));

-- Location: LABCELL_X56_Y8_N45
\b2v_inst|u3|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~21_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(5) ) + ( GND ) + ( \b2v_inst|u3|Add1~18\ ))
-- \b2v_inst|u3|Add1~22\ = CARRY(( \b2v_inst|u3|Y_Cont\(5) ) + ( GND ) + ( \b2v_inst|u3|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(5),
	cin => \b2v_inst|u3|Add1~18\,
	sumout => \b2v_inst|u3|Add1~21_sumout\,
	cout => \b2v_inst|u3|Add1~22\);

-- Location: FF_X56_Y8_N46
\b2v_inst|u3|Y_Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~21_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(5));

-- Location: LABCELL_X56_Y8_N48
\b2v_inst|u3|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~25_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(6) ) + ( GND ) + ( \b2v_inst|u3|Add1~22\ ))
-- \b2v_inst|u3|Add1~26\ = CARRY(( \b2v_inst|u3|Y_Cont\(6) ) + ( GND ) + ( \b2v_inst|u3|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(6),
	cin => \b2v_inst|u3|Add1~22\,
	sumout => \b2v_inst|u3|Add1~25_sumout\,
	cout => \b2v_inst|u3|Add1~26\);

-- Location: FF_X56_Y8_N49
\b2v_inst|u3|Y_Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~25_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(6));

-- Location: LABCELL_X56_Y8_N51
\b2v_inst|u3|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst|u3|Add1~29_sumout\ = SUM(( \b2v_inst|u3|Y_Cont\(7) ) + ( GND ) + ( \b2v_inst|u3|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|u3|ALT_INV_Y_Cont\(7),
	cin => \b2v_inst|u3|Add1~26\,
	sumout => \b2v_inst|u3|Add1~29_sumout\);

-- Location: FF_X56_Y8_N52
\b2v_inst|u3|Y_Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CCD_PIXCLK~inputCLKENA0_outclk\,
	d => \b2v_inst|u3|Add1~29_sumout\,
	clrn => \b2v_inst|u2|oRST_2~q\,
	sclr => \b2v_inst|u3|ALT_INV_mCCD_FVAL~q\,
	ena => \b2v_inst|u3|Y_Cont[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|u3|Y_Cont\(7));

-- Location: LABCELL_X10_Y80_N3
\b2v_inst4|g_bout[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[0]~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[0]~feeder_combout\);

-- Location: FF_X10_Y80_N4
\b2v_inst4|g_bout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(0));

-- Location: FF_X6_Y78_N17
\b2v_inst4|g_bout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(1));

-- Location: LABCELL_X27_Y79_N21
\b2v_inst4|g_bout[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[2]~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[2]~feeder_combout\);

-- Location: FF_X27_Y79_N22
\b2v_inst4|g_bout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(2));

-- Location: LABCELL_X27_Y79_N18
\b2v_inst4|g_bout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[3]~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[3]~feeder_combout\);

-- Location: FF_X27_Y79_N19
\b2v_inst4|g_bout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(3));

-- Location: LABCELL_X10_Y79_N3
\b2v_inst4|g_bout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[4]~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[4]~feeder_combout\);

-- Location: FF_X10_Y79_N4
\b2v_inst4|g_bout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(4));

-- Location: FF_X10_Y80_N55
\b2v_inst4|g_bout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(5));

-- Location: LABCELL_X18_Y74_N12
\b2v_inst4|g_bout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[6]~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[6]~feeder_combout\);

-- Location: FF_X18_Y74_N13
\b2v_inst4|g_bout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(6));

-- Location: MLABCELL_X15_Y79_N27
\b2v_inst4|g_bout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst4|g_bout[7]~feeder_combout\ = ( \KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \b2v_inst4|g_bout[7]~feeder_combout\);

-- Location: FF_X15_Y79_N28
\b2v_inst4|g_bout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst9|altpll_component|auto_generated|wire_generic_pll1_outclk~CLKENA0_outclk\,
	d => \b2v_inst4|g_bout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|g_bout\(7));

-- Location: LABCELL_X27_Y79_N0
\b2v_inst2|IMGY_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|IMGY_out~0_combout\ = ( \b2v_inst2|comptY\(4) & ( (\b2v_inst2|comptY\(1) & (\b2v_inst2|comptY\(0) & (\b2v_inst2|comptY\(2) & \b2v_inst2|comptY\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptY\(1),
	datab => \b2v_inst2|ALT_INV_comptY\(0),
	datac => \b2v_inst2|ALT_INV_comptY\(2),
	datad => \b2v_inst2|ALT_INV_comptY\(3),
	dataf => \b2v_inst2|ALT_INV_comptY\(4),
	combout => \b2v_inst2|IMGY_out~0_combout\);

-- Location: LABCELL_X27_Y79_N6
\b2v_inst2|IMG~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|IMG~1_combout\ = ( \b2v_inst2|IMGY_out~0_combout\ & ( \b2v_inst2|comptY\(7) & ( (!\b2v_inst2|comptY\(9) & ((!\b2v_inst2|comptY\(8)) # ((!\b2v_inst2|comptY\(6)) # (!\b2v_inst2|comptY\(5))))) ) ) ) # ( !\b2v_inst2|IMGY_out~0_combout\ & ( 
-- \b2v_inst2|comptY\(7) & ( !\b2v_inst2|comptY\(9) ) ) ) # ( \b2v_inst2|IMGY_out~0_combout\ & ( !\b2v_inst2|comptY\(7) & ( !\b2v_inst2|comptY\(9) ) ) ) # ( !\b2v_inst2|IMGY_out~0_combout\ & ( !\b2v_inst2|comptY\(7) & ( (!\b2v_inst2|comptY\(9) & 
-- (((\b2v_inst2|comptY\(5)) # (\b2v_inst2|comptY\(6))) # (\b2v_inst2|comptY\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_comptY\(8),
	datab => \b2v_inst2|ALT_INV_comptY\(9),
	datac => \b2v_inst2|ALT_INV_comptY\(6),
	datad => \b2v_inst2|ALT_INV_comptY\(5),
	datae => \b2v_inst2|ALT_INV_IMGY_out~0_combout\,
	dataf => \b2v_inst2|ALT_INV_comptY\(7),
	combout => \b2v_inst2|IMG~1_combout\);

-- Location: MLABCELL_X25_Y79_N42
\b2v_inst2|IMG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|IMG~0_combout\ = ( \b2v_inst2|comptX\(3) & ( (\b2v_inst2|Equal0~0_combout\ & (!\b2v_inst2|comptX\(2) & !\b2v_inst2|comptX\(1))) ) ) # ( !\b2v_inst2|comptX\(3) & ( \b2v_inst2|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|ALT_INV_Equal0~0_combout\,
	datab => \b2v_inst2|ALT_INV_comptX\(2),
	datac => \b2v_inst2|ALT_INV_comptX\(1),
	dataf => \b2v_inst2|ALT_INV_comptX\(3),
	combout => \b2v_inst2|IMG~0_combout\);

-- Location: MLABCELL_X25_Y79_N36
\b2v_inst2|IMG~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst2|IMG~2_combout\ = ( \b2v_inst2|IMG~0_combout\ & ( (\b2v_inst2|comptX\(9) & (\b2v_inst2|IMG~1_combout\ & !\b2v_inst2|comptX\(8))) ) ) # ( !\b2v_inst2|IMG~0_combout\ & ( (\b2v_inst2|IMG~1_combout\ & (!\b2v_inst2|comptX\(9) $ 
-- (!\b2v_inst2|comptX\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|ALT_INV_comptX\(9),
	datac => \b2v_inst2|ALT_INV_IMG~1_combout\,
	datad => \b2v_inst2|ALT_INV_comptX\(8),
	dataf => \b2v_inst2|ALT_INV_IMG~0_combout\,
	combout => \b2v_inst2|IMG~2_combout\);

-- Location: IOIBUF_X58_Y0_N75
\Ext_Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ext_Clock,
	o => \Ext_Clock~input_o\);

-- Location: CLKCTRL_G4
\Ext_Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Ext_Clock~input_o\,
	outclk => \Ext_Clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X42_Y15_N0
\b2v_inst10|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~13_sumout\ = SUM(( \b2v_inst10|count_pwm\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst10|Add0~14\ = CARRY(( \b2v_inst10|count_pwm\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(0),
	cin => GND,
	sumout => \b2v_inst10|Add0~13_sumout\,
	cout => \b2v_inst10|Add0~14\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X42_Y15_N3
\b2v_inst10|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~9_sumout\ = SUM(( \b2v_inst10|count_pwm\(1) ) + ( GND ) + ( \b2v_inst10|Add0~14\ ))
-- \b2v_inst10|Add0~10\ = CARRY(( \b2v_inst10|count_pwm\(1) ) + ( GND ) + ( \b2v_inst10|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(1),
	cin => \b2v_inst10|Add0~14\,
	sumout => \b2v_inst10|Add0~9_sumout\,
	cout => \b2v_inst10|Add0~10\);

-- Location: LABCELL_X42_Y15_N6
\b2v_inst10|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~5_sumout\ = SUM(( \b2v_inst10|count_pwm\(2) ) + ( GND ) + ( \b2v_inst10|Add0~10\ ))
-- \b2v_inst10|Add0~6\ = CARRY(( \b2v_inst10|count_pwm\(2) ) + ( GND ) + ( \b2v_inst10|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(2),
	cin => \b2v_inst10|Add0~10\,
	sumout => \b2v_inst10|Add0~5_sumout\,
	cout => \b2v_inst10|Add0~6\);

-- Location: LABCELL_X43_Y15_N33
\b2v_inst10|count_pwm[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|count_pwm[0]~1_combout\ = ( !\b2v_inst10|etat.new_t0~q\ & ( !\b2v_inst10|etat.new_t1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst10|ALT_INV_etat.new_t0~q\,
	dataf => \b2v_inst10|ALT_INV_etat.new_t1~q\,
	combout => \b2v_inst10|count_pwm[0]~1_combout\);

-- Location: LABCELL_X43_Y15_N27
\b2v_inst10|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add1~0_combout\ = ( \b2v_inst10|pwm_number\(0) & ( \b2v_inst10|pwm_number\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst10|ALT_INV_pwm_number\(0),
	dataf => \b2v_inst10|ALT_INV_pwm_number\(1),
	combout => \b2v_inst10|Add1~0_combout\);

-- Location: LABCELL_X42_Y15_N15
\b2v_inst10|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~17_sumout\ = SUM(( \b2v_inst10|count_pwm\(5) ) + ( GND ) + ( \b2v_inst10|Add0~30\ ))
-- \b2v_inst10|Add0~18\ = CARRY(( \b2v_inst10|count_pwm\(5) ) + ( GND ) + ( \b2v_inst10|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(5),
	cin => \b2v_inst10|Add0~30\,
	sumout => \b2v_inst10|Add0~17_sumout\,
	cout => \b2v_inst10|Add0~18\);

-- Location: LABCELL_X42_Y15_N18
\b2v_inst10|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~25_sumout\ = SUM(( \b2v_inst10|count_pwm\(6) ) + ( GND ) + ( \b2v_inst10|Add0~18\ ))
-- \b2v_inst10|Add0~26\ = CARRY(( \b2v_inst10|count_pwm\(6) ) + ( GND ) + ( \b2v_inst10|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(6),
	cin => \b2v_inst10|Add0~18\,
	sumout => \b2v_inst10|Add0~25_sumout\,
	cout => \b2v_inst10|Add0~26\);

-- Location: FF_X42_Y15_N20
\b2v_inst10|count_pwm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~25_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(6));

-- Location: LABCELL_X42_Y15_N21
\b2v_inst10|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~21_sumout\ = SUM(( \b2v_inst10|count_pwm\(7) ) + ( GND ) + ( \b2v_inst10|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(7),
	cin => \b2v_inst10|Add0~26\,
	sumout => \b2v_inst10|Add0~21_sumout\);

-- Location: FF_X42_Y15_N23
\b2v_inst10|count_pwm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~21_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(7));

-- Location: LABCELL_X42_Y15_N57
\b2v_inst10|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan2~1_combout\ = ( !\b2v_inst10|count_pwm\(3) & ( (!\b2v_inst10|count_pwm\(6) & (!\b2v_inst10|count_pwm\(4) & (!\b2v_inst10|count_pwm\(5) & !\b2v_inst10|count_pwm\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_count_pwm\(6),
	datab => \b2v_inst10|ALT_INV_count_pwm\(4),
	datac => \b2v_inst10|ALT_INV_count_pwm\(5),
	datad => \b2v_inst10|ALT_INV_count_pwm\(7),
	dataf => \b2v_inst10|ALT_INV_count_pwm\(3),
	combout => \b2v_inst10|LessThan2~1_combout\);

-- Location: LABCELL_X42_Y15_N45
\b2v_inst10|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Selector10~0_combout\ = ( \b2v_inst10|pwm_number\(1) & ( \b2v_inst10|LessThan2~1_combout\ & ( (!\b2v_inst10|pwm_number\(3) & \b2v_inst10|LessThan2~0_combout\) ) ) ) # ( !\b2v_inst10|pwm_number\(1) & ( \b2v_inst10|LessThan2~1_combout\ & ( 
-- (\b2v_inst10|LessThan2~0_combout\ & ((!\b2v_inst10|pwm_number\(3)) # ((!\b2v_inst10|pwm_number\(2) & !\b2v_inst10|pwm_number\(0))))) ) ) ) # ( \b2v_inst10|pwm_number\(1) & ( !\b2v_inst10|LessThan2~1_combout\ & ( !\b2v_inst10|pwm_number\(3) ) ) ) # ( 
-- !\b2v_inst10|pwm_number\(1) & ( !\b2v_inst10|LessThan2~1_combout\ & ( (!\b2v_inst10|pwm_number\(3)) # ((!\b2v_inst10|pwm_number\(2) & !\b2v_inst10|pwm_number\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010101010101010101000110010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_pwm_number\(3),
	datab => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	datac => \b2v_inst10|ALT_INV_pwm_number\(2),
	datad => \b2v_inst10|ALT_INV_pwm_number\(0),
	datae => \b2v_inst10|ALT_INV_pwm_number\(1),
	dataf => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	combout => \b2v_inst10|Selector10~0_combout\);

-- Location: LABCELL_X43_Y15_N36
\b2v_inst10|pwm_number[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|pwm_number[2]~0_combout\ = ( \b2v_inst10|pwm_number\(2) & ( \b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & ((!\b2v_inst10|etat.pwm_low_s~q\) # ((!\b2v_inst10|Add1~0_combout\ & \b2v_inst10|Pwm~1_combout\)))) ) ) ) # ( 
-- !\b2v_inst10|pwm_number\(2) & ( \b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & (\b2v_inst10|etat.pwm_low_s~q\ & (\b2v_inst10|Add1~0_combout\ & \b2v_inst10|Pwm~1_combout\))) ) ) ) # ( \b2v_inst10|pwm_number\(2) & ( 
-- !\b2v_inst10|Selector10~0_combout\ & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000010100010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datac => \b2v_inst10|ALT_INV_Add1~0_combout\,
	datad => \b2v_inst10|ALT_INV_Pwm~1_combout\,
	datae => \b2v_inst10|ALT_INV_pwm_number\(2),
	dataf => \b2v_inst10|ALT_INV_Selector10~0_combout\,
	combout => \b2v_inst10|pwm_number[2]~0_combout\);

-- Location: FF_X43_Y15_N38
\b2v_inst10|pwm_number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|pwm_number[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|pwm_number\(2));

-- Location: LABCELL_X43_Y15_N9
\b2v_inst10|Pwm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Pwm~0_combout\ = ( !\b2v_inst10|pwm_number\(2) & ( !\b2v_inst10|pwm_number\(0) & ( (\b2v_inst10|pwm_number\(3) & !\b2v_inst10|pwm_number\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_pwm_number\(3),
	datad => \b2v_inst10|ALT_INV_pwm_number\(1),
	datae => \b2v_inst10|ALT_INV_pwm_number\(2),
	dataf => \b2v_inst10|ALT_INV_pwm_number\(0),
	combout => \b2v_inst10|Pwm~0_combout\);

-- Location: LABCELL_X42_Y15_N36
\b2v_inst10|count_pwm[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|count_pwm[0]~2_combout\ = ( \b2v_inst10|Pwm~0_combout\ & ( \b2v_inst10|LessThan2~1_combout\ & ( (\b2v_inst10|count_pwm[0]~1_combout\ & (\KEY[0]~input_o\ & ((!\b2v_inst10|LessThan2~0_combout\) # (!\b2v_inst10|etat.pwm_low_s~q\)))) ) ) ) # ( 
-- !\b2v_inst10|Pwm~0_combout\ & ( \b2v_inst10|LessThan2~1_combout\ & ( (\b2v_inst10|count_pwm[0]~1_combout\ & \KEY[0]~input_o\) ) ) ) # ( \b2v_inst10|Pwm~0_combout\ & ( !\b2v_inst10|LessThan2~1_combout\ & ( (\b2v_inst10|count_pwm[0]~1_combout\ & 
-- (\KEY[0]~input_o\ & !\b2v_inst10|etat.pwm_low_s~q\)) ) ) ) # ( !\b2v_inst10|Pwm~0_combout\ & ( !\b2v_inst10|LessThan2~1_combout\ & ( (\b2v_inst10|count_pwm[0]~1_combout\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010000000000010001000100010001000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_count_pwm[0]~1_combout\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	datad => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datae => \b2v_inst10|ALT_INV_Pwm~0_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	combout => \b2v_inst10|count_pwm[0]~2_combout\);

-- Location: FF_X42_Y15_N8
\b2v_inst10|count_pwm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~5_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(2));

-- Location: LABCELL_X42_Y15_N9
\b2v_inst10|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~1_sumout\ = SUM(( \b2v_inst10|count_pwm\(3) ) + ( GND ) + ( \b2v_inst10|Add0~6\ ))
-- \b2v_inst10|Add0~2\ = CARRY(( \b2v_inst10|count_pwm\(3) ) + ( GND ) + ( \b2v_inst10|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(3),
	cin => \b2v_inst10|Add0~6\,
	sumout => \b2v_inst10|Add0~1_sumout\,
	cout => \b2v_inst10|Add0~2\);

-- Location: FF_X42_Y15_N11
\b2v_inst10|count_pwm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~1_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(3));

-- Location: LABCELL_X42_Y15_N12
\b2v_inst10|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add0~29_sumout\ = SUM(( \b2v_inst10|count_pwm\(4) ) + ( GND ) + ( \b2v_inst10|Add0~2\ ))
-- \b2v_inst10|Add0~30\ = CARRY(( \b2v_inst10|count_pwm\(4) ) + ( GND ) + ( \b2v_inst10|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_count_pwm\(4),
	cin => \b2v_inst10|Add0~2\,
	sumout => \b2v_inst10|Add0~29_sumout\,
	cout => \b2v_inst10|Add0~30\);

-- Location: FF_X42_Y15_N14
\b2v_inst10|count_pwm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~29_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(4));

-- Location: FF_X42_Y15_N17
\b2v_inst10|count_pwm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~17_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(5));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X42_Y15_N27
\b2v_inst10|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~2_combout\ = ( \b2v_inst10|count_pwm\(6) & ( (\SW[6]~input_o\ & (!\SW[7]~input_o\ $ (\b2v_inst10|count_pwm\(7)))) ) ) # ( !\b2v_inst10|count_pwm\(6) & ( (!\SW[6]~input_o\ & (!\SW[7]~input_o\ $ (\b2v_inst10|count_pwm\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \b2v_inst10|ALT_INV_count_pwm\(7),
	dataf => \b2v_inst10|ALT_INV_count_pwm\(6),
	combout => \b2v_inst10|LessThan0~2_combout\);

-- Location: LABCELL_X40_Y15_N36
\b2v_inst10|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~3_combout\ = ( \b2v_inst10|count_pwm\(4) & ( \b2v_inst10|LessThan0~2_combout\ & ( (\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\b2v_inst10|count_pwm\(5)))) ) ) ) # ( !\b2v_inst10|count_pwm\(4) & ( \b2v_inst10|LessThan0~2_combout\ & ( 
-- (!\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (\b2v_inst10|count_pwm\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000001000100100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datad => \b2v_inst10|ALT_INV_count_pwm\(5),
	datae => \b2v_inst10|ALT_INV_count_pwm\(4),
	dataf => \b2v_inst10|ALT_INV_LessThan0~2_combout\,
	combout => \b2v_inst10|LessThan0~3_combout\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X42_Y15_N24
\b2v_inst10|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~0_combout\ = ( \b2v_inst10|count_pwm\(0) & ( (!\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\b2v_inst10|count_pwm\(1)))) # (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \b2v_inst10|count_pwm\(1))) ) ) # ( !\b2v_inst10|count_pwm\(0) & ( 
-- (!\SW[1]~input_o\ & \b2v_inst10|count_pwm\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000000111111001100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \b2v_inst10|ALT_INV_count_pwm\(1),
	dataf => \b2v_inst10|ALT_INV_count_pwm\(0),
	combout => \b2v_inst10|LessThan0~0_combout\);

-- Location: LABCELL_X40_Y15_N42
\b2v_inst10|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~1_combout\ = ( \b2v_inst10|count_pwm\(2) & ( \b2v_inst10|LessThan0~0_combout\ & ( (!\SW[3]~input_o\) # (\b2v_inst10|count_pwm\(3)) ) ) ) # ( !\b2v_inst10|count_pwm\(2) & ( \b2v_inst10|LessThan0~0_combout\ & ( (!\SW[3]~input_o\ & 
-- ((!\SW[2]~input_o\) # (\b2v_inst10|count_pwm\(3)))) # (\SW[3]~input_o\ & (\b2v_inst10|count_pwm\(3) & !\SW[2]~input_o\)) ) ) ) # ( \b2v_inst10|count_pwm\(2) & ( !\b2v_inst10|LessThan0~0_combout\ & ( (!\SW[3]~input_o\ & ((!\SW[2]~input_o\) # 
-- (\b2v_inst10|count_pwm\(3)))) # (\SW[3]~input_o\ & (\b2v_inst10|count_pwm\(3) & !\SW[2]~input_o\)) ) ) ) # ( !\b2v_inst10|count_pwm\(2) & ( !\b2v_inst10|LessThan0~0_combout\ & ( (!\SW[3]~input_o\ & \b2v_inst10|count_pwm\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010101100101011001010110010101100101011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \b2v_inst10|ALT_INV_count_pwm\(3),
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \b2v_inst10|ALT_INV_count_pwm\(2),
	dataf => \b2v_inst10|ALT_INV_LessThan0~0_combout\,
	combout => \b2v_inst10|LessThan0~1_combout\);

-- Location: LABCELL_X42_Y15_N51
\b2v_inst10|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~4_combout\ = ( \b2v_inst10|count_pwm\(6) & ( (!\SW[6]~input_o\ & ((!\SW[7]~input_o\) # (\b2v_inst10|count_pwm\(7)))) # (\SW[6]~input_o\ & (!\SW[7]~input_o\ & \b2v_inst10|count_pwm\(7))) ) ) # ( !\b2v_inst10|count_pwm\(6) & ( 
-- (!\SW[7]~input_o\ & \b2v_inst10|count_pwm\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \b2v_inst10|ALT_INV_count_pwm\(7),
	dataf => \b2v_inst10|ALT_INV_count_pwm\(6),
	combout => \b2v_inst10|LessThan0~4_combout\);

-- Location: LABCELL_X40_Y15_N6
\b2v_inst10|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan0~5_combout\ = ( \b2v_inst10|LessThan0~2_combout\ & ( !\b2v_inst10|LessThan0~4_combout\ & ( (!\SW[5]~input_o\ & (!\b2v_inst10|count_pwm\(5) & ((!\b2v_inst10|count_pwm\(4)) # (\SW[4]~input_o\)))) # (\SW[5]~input_o\ & 
-- (((!\b2v_inst10|count_pwm\(4)) # (!\b2v_inst10|count_pwm\(5))) # (\SW[4]~input_o\))) ) ) ) # ( !\b2v_inst10|LessThan0~2_combout\ & ( !\b2v_inst10|LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101110011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \b2v_inst10|ALT_INV_count_pwm\(4),
	datad => \b2v_inst10|ALT_INV_count_pwm\(5),
	datae => \b2v_inst10|ALT_INV_LessThan0~2_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan0~4_combout\,
	combout => \b2v_inst10|LessThan0~5_combout\);

-- Location: LABCELL_X40_Y15_N30
\b2v_inst10|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Selector9~0_combout\ = ( \b2v_inst10|etat.pwm_high_s~q\ & ( \b2v_inst10|LessThan0~5_combout\ & ( (!\b2v_inst10|etat.pwm_init_high_s~q\) # ((!\b2v_inst10|LessThan0~3_combout\) # (!\b2v_inst10|LessThan0~1_combout\)) ) ) ) # ( 
-- !\b2v_inst10|etat.pwm_high_s~q\ & ( \b2v_inst10|LessThan0~5_combout\ & ( !\b2v_inst10|etat.pwm_init_high_s~q\ ) ) ) # ( \b2v_inst10|etat.pwm_high_s~q\ & ( !\b2v_inst10|LessThan0~5_combout\ & ( !\b2v_inst10|etat.pwm_init_high_s~q\ ) ) ) # ( 
-- !\b2v_inst10|etat.pwm_high_s~q\ & ( !\b2v_inst10|LessThan0~5_combout\ & ( !\b2v_inst10|etat.pwm_init_high_s~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_etat.pwm_init_high_s~q\,
	datac => \b2v_inst10|ALT_INV_LessThan0~3_combout\,
	datad => \b2v_inst10|ALT_INV_LessThan0~1_combout\,
	datae => \b2v_inst10|ALT_INV_etat.pwm_high_s~q\,
	dataf => \b2v_inst10|ALT_INV_LessThan0~5_combout\,
	combout => \b2v_inst10|Selector9~0_combout\);

-- Location: FF_X40_Y15_N32
\b2v_inst10|etat.pwm_high_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Selector9~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|etat.pwm_high_s~q\);

-- Location: LABCELL_X40_Y15_N48
\b2v_inst10|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Selector10~1_combout\ = ( \b2v_inst10|etat.pwm_low_s~q\ & ( \b2v_inst10|Selector10~0_combout\ & ( (\b2v_inst10|etat.pwm_high_s~q\ & ((!\b2v_inst10|LessThan0~5_combout\) # ((\b2v_inst10|LessThan0~3_combout\ & 
-- \b2v_inst10|LessThan0~1_combout\)))) ) ) ) # ( !\b2v_inst10|etat.pwm_low_s~q\ & ( \b2v_inst10|Selector10~0_combout\ & ( (\b2v_inst10|etat.pwm_high_s~q\ & ((!\b2v_inst10|LessThan0~5_combout\) # ((\b2v_inst10|LessThan0~3_combout\ & 
-- \b2v_inst10|LessThan0~1_combout\)))) ) ) ) # ( \b2v_inst10|etat.pwm_low_s~q\ & ( !\b2v_inst10|Selector10~0_combout\ ) ) # ( !\b2v_inst10|etat.pwm_low_s~q\ & ( !\b2v_inst10|Selector10~0_combout\ & ( (\b2v_inst10|etat.pwm_high_s~q\ & 
-- ((!\b2v_inst10|LessThan0~5_combout\) # ((\b2v_inst10|LessThan0~3_combout\ & \b2v_inst10|LessThan0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000101111111111111111101000100010001010100010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_etat.pwm_high_s~q\,
	datab => \b2v_inst10|ALT_INV_LessThan0~5_combout\,
	datac => \b2v_inst10|ALT_INV_LessThan0~3_combout\,
	datad => \b2v_inst10|ALT_INV_LessThan0~1_combout\,
	datae => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	dataf => \b2v_inst10|ALT_INV_Selector10~0_combout\,
	combout => \b2v_inst10|Selector10~1_combout\);

-- Location: FF_X40_Y15_N50
\b2v_inst10|etat.pwm_low_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Selector10~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|etat.pwm_low_s~q\);

-- Location: LABCELL_X43_Y15_N51
\b2v_inst10|pwm_number[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|pwm_number[0]~2_combout\ = ( \b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & ((!\b2v_inst10|etat.pwm_low_s~q\ & ((\b2v_inst10|pwm_number\(0)))) # (\b2v_inst10|etat.pwm_low_s~q\ & (\b2v_inst10|Pwm~1_combout\ & 
-- !\b2v_inst10|pwm_number\(0))))) ) ) # ( !\b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & \b2v_inst10|pwm_number\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001010001000000000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datac => \b2v_inst10|ALT_INV_Pwm~1_combout\,
	datad => \b2v_inst10|ALT_INV_pwm_number\(0),
	dataf => \b2v_inst10|ALT_INV_Selector10~0_combout\,
	combout => \b2v_inst10|pwm_number[0]~2_combout\);

-- Location: FF_X43_Y15_N53
\b2v_inst10|pwm_number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|pwm_number[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|pwm_number\(0));

-- Location: LABCELL_X43_Y15_N21
\b2v_inst10|pwm_number[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|pwm_number[1]~1_combout\ = ( \b2v_inst10|pwm_number\(1) & ( \b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & ((!\b2v_inst10|etat.pwm_low_s~q\) # ((!\b2v_inst10|pwm_number\(0) & \b2v_inst10|Pwm~1_combout\)))) ) ) ) # ( 
-- !\b2v_inst10|pwm_number\(1) & ( \b2v_inst10|Selector10~0_combout\ & ( (\KEY[0]~input_o\ & (\b2v_inst10|pwm_number\(0) & (\b2v_inst10|Pwm~1_combout\ & \b2v_inst10|etat.pwm_low_s~q\))) ) ) ) # ( \b2v_inst10|pwm_number\(1) & ( 
-- !\b2v_inst10|Selector10~0_combout\ & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000010101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst10|ALT_INV_pwm_number\(0),
	datac => \b2v_inst10|ALT_INV_Pwm~1_combout\,
	datad => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datae => \b2v_inst10|ALT_INV_pwm_number\(1),
	dataf => \b2v_inst10|ALT_INV_Selector10~0_combout\,
	combout => \b2v_inst10|pwm_number[1]~1_combout\);

-- Location: FF_X43_Y15_N23
\b2v_inst10|pwm_number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|pwm_number[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|pwm_number\(1));

-- Location: LABCELL_X43_Y15_N48
\b2v_inst10|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan2~2_combout\ = ( !\b2v_inst10|LessThan2~0_combout\ & ( \b2v_inst10|LessThan2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	combout => \b2v_inst10|LessThan2~2_combout\);

-- Location: LABCELL_X43_Y15_N0
\b2v_inst10|pwm_number[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|pwm_number[3]~3_combout\ = ( \b2v_inst10|pwm_number\(3) & ( \b2v_inst10|LessThan2~2_combout\ ) ) # ( \b2v_inst10|pwm_number\(3) & ( !\b2v_inst10|LessThan2~2_combout\ & ( (((!\b2v_inst10|etat.pwm_low_s~q\) # (\b2v_inst10|pwm_number\(2))) # 
-- (\b2v_inst10|pwm_number\(0))) # (\b2v_inst10|pwm_number\(1)) ) ) ) # ( !\b2v_inst10|pwm_number\(3) & ( !\b2v_inst10|LessThan2~2_combout\ & ( (\b2v_inst10|pwm_number\(1) & (\b2v_inst10|pwm_number\(0) & (\b2v_inst10|etat.pwm_low_s~q\ & 
-- \b2v_inst10|pwm_number\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111101111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_pwm_number\(1),
	datab => \b2v_inst10|ALT_INV_pwm_number\(0),
	datac => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datad => \b2v_inst10|ALT_INV_pwm_number\(2),
	datae => \b2v_inst10|ALT_INV_pwm_number\(3),
	dataf => \b2v_inst10|ALT_INV_LessThan2~2_combout\,
	combout => \b2v_inst10|pwm_number[3]~3_combout\);

-- Location: FF_X43_Y15_N2
\b2v_inst10|pwm_number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|pwm_number[3]~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|pwm_number\(3));

-- Location: LABCELL_X43_Y15_N12
\b2v_inst10|Pwm~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Pwm~1_combout\ = ( \b2v_inst10|LessThan2~0_combout\ & ( !\b2v_inst10|pwm_number\(3) ) ) # ( !\b2v_inst10|LessThan2~0_combout\ & ( (!\b2v_inst10|pwm_number\(3) & !\b2v_inst10|LessThan2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|ALT_INV_pwm_number\(3),
	datad => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	combout => \b2v_inst10|Pwm~1_combout\);

-- Location: LABCELL_X45_Y15_N30
\b2v_inst10|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~17_sumout\ = SUM(( \b2v_inst10|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst10|Add2~18\ = CARRY(( \b2v_inst10|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \b2v_inst10|Add2~17_sumout\,
	cout => \b2v_inst10|Add2~18\);

-- Location: LABCELL_X45_Y14_N15
\b2v_inst10|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~1_sumout\ = SUM(( \b2v_inst10|cnt\(15) ) + ( GND ) + ( \b2v_inst10|Add2~10\ ))
-- \b2v_inst10|Add2~2\ = CARRY(( \b2v_inst10|cnt\(15) ) + ( GND ) + ( \b2v_inst10|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(15),
	cin => \b2v_inst10|Add2~10\,
	sumout => \b2v_inst10|Add2~1_sumout\,
	cout => \b2v_inst10|Add2~2\);

-- Location: LABCELL_X45_Y14_N18
\b2v_inst10|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~81_sumout\ = SUM(( \b2v_inst10|cnt\(16) ) + ( GND ) + ( \b2v_inst10|Add2~2\ ))
-- \b2v_inst10|Add2~82\ = CARRY(( \b2v_inst10|cnt\(16) ) + ( GND ) + ( \b2v_inst10|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(16),
	cin => \b2v_inst10|Add2~2\,
	sumout => \b2v_inst10|Add2~81_sumout\,
	cout => \b2v_inst10|Add2~82\);

-- Location: FF_X45_Y14_N20
\b2v_inst10|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~81_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(16));

-- Location: LABCELL_X45_Y14_N21
\b2v_inst10|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~29_sumout\ = SUM(( \b2v_inst10|cnt\(17) ) + ( GND ) + ( \b2v_inst10|Add2~82\ ))
-- \b2v_inst10|Add2~30\ = CARRY(( \b2v_inst10|cnt\(17) ) + ( GND ) + ( \b2v_inst10|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(17),
	cin => \b2v_inst10|Add2~82\,
	sumout => \b2v_inst10|Add2~29_sumout\,
	cout => \b2v_inst10|Add2~30\);

-- Location: FF_X45_Y14_N22
\b2v_inst10|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~29_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(17));

-- Location: LABCELL_X45_Y14_N24
\b2v_inst10|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~25_sumout\ = SUM(( \b2v_inst10|cnt\(18) ) + ( GND ) + ( \b2v_inst10|Add2~30\ ))
-- \b2v_inst10|Add2~26\ = CARRY(( \b2v_inst10|cnt\(18) ) + ( GND ) + ( \b2v_inst10|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(18),
	cin => \b2v_inst10|Add2~30\,
	sumout => \b2v_inst10|Add2~25_sumout\,
	cout => \b2v_inst10|Add2~26\);

-- Location: FF_X45_Y14_N25
\b2v_inst10|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~25_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(18));

-- Location: LABCELL_X45_Y15_N6
\b2v_inst10|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal1~0_combout\ = ( !\b2v_inst10|cnt\(5) & ( !\b2v_inst10|cnt\(4) & ( (!\b2v_inst10|cnt\(1) & (!\b2v_inst10|cnt\(0) & (!\b2v_inst10|cnt\(17) & !\b2v_inst10|cnt\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(1),
	datab => \b2v_inst10|ALT_INV_cnt\(0),
	datac => \b2v_inst10|ALT_INV_cnt\(17),
	datad => \b2v_inst10|ALT_INV_cnt\(18),
	datae => \b2v_inst10|ALT_INV_cnt\(5),
	dataf => \b2v_inst10|ALT_INV_cnt\(4),
	combout => \b2v_inst10|Equal1~0_combout\);

-- Location: LABCELL_X45_Y14_N27
\b2v_inst10|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~77_sumout\ = SUM(( \b2v_inst10|cnt\(19) ) + ( GND ) + ( \b2v_inst10|Add2~26\ ))
-- \b2v_inst10|Add2~78\ = CARRY(( \b2v_inst10|cnt\(19) ) + ( GND ) + ( \b2v_inst10|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(19),
	cin => \b2v_inst10|Add2~26\,
	sumout => \b2v_inst10|Add2~77_sumout\,
	cout => \b2v_inst10|Add2~78\);

-- Location: FF_X45_Y14_N29
\b2v_inst10|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~77_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(19));

-- Location: LABCELL_X45_Y14_N30
\b2v_inst10|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~45_sumout\ = SUM(( \b2v_inst10|cnt\(20) ) + ( GND ) + ( \b2v_inst10|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(20),
	cin => \b2v_inst10|Add2~78\,
	sumout => \b2v_inst10|Add2~45_sumout\);

-- Location: FF_X45_Y14_N32
\b2v_inst10|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~45_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(20));

-- Location: LABCELL_X45_Y14_N36
\b2v_inst10|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal2~0_combout\ = ( !\b2v_inst10|cnt\(10) & ( !\b2v_inst10|cnt\(6) & ( (!\b2v_inst10|cnt\(2) & (\b2v_inst10|cnt\(20) & (\b2v_inst10|cnt\(11) & \b2v_inst10|cnt\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(2),
	datab => \b2v_inst10|ALT_INV_cnt\(20),
	datac => \b2v_inst10|ALT_INV_cnt\(11),
	datad => \b2v_inst10|ALT_INV_cnt\(3),
	datae => \b2v_inst10|ALT_INV_cnt\(10),
	dataf => \b2v_inst10|ALT_INV_cnt\(6),
	combout => \b2v_inst10|Equal2~0_combout\);

-- Location: LABCELL_X45_Y14_N57
\b2v_inst10|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal2~3_combout\ = ( !\b2v_inst10|cnt\(15) & ( \b2v_inst10|cnt\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|ALT_INV_cnt\(13),
	dataf => \b2v_inst10|ALT_INV_cnt\(15),
	combout => \b2v_inst10|Equal2~3_combout\);

-- Location: LABCELL_X45_Y15_N0
\b2v_inst10|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal2~1_combout\ = ( \b2v_inst10|cnt\(9) & ( \b2v_inst10|cnt\(7) & ( (!\b2v_inst10|cnt\(8) & (\b2v_inst10|cnt\(16) & (!\b2v_inst10|cnt\(12) & !\b2v_inst10|cnt\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(8),
	datab => \b2v_inst10|ALT_INV_cnt\(16),
	datac => \b2v_inst10|ALT_INV_cnt\(12),
	datad => \b2v_inst10|ALT_INV_cnt\(19),
	datae => \b2v_inst10|ALT_INV_cnt\(9),
	dataf => \b2v_inst10|ALT_INV_cnt\(7),
	combout => \b2v_inst10|Equal2~1_combout\);

-- Location: LABCELL_X45_Y14_N42
\b2v_inst10|cnt[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|cnt[4]~0_combout\ = ( \b2v_inst10|Equal2~3_combout\ & ( \b2v_inst10|Equal2~1_combout\ & ( (!\KEY[0]~input_o\) # ((\b2v_inst10|Equal1~0_combout\ & (!\b2v_inst10|cnt\(14) & \b2v_inst10|Equal2~0_combout\))) ) ) ) # ( 
-- !\b2v_inst10|Equal2~3_combout\ & ( \b2v_inst10|Equal2~1_combout\ & ( !\KEY[0]~input_o\ ) ) ) # ( \b2v_inst10|Equal2~3_combout\ & ( !\b2v_inst10|Equal2~1_combout\ & ( !\KEY[0]~input_o\ ) ) ) # ( !\b2v_inst10|Equal2~3_combout\ & ( 
-- !\b2v_inst10|Equal2~1_combout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_Equal1~0_combout\,
	datab => \b2v_inst10|ALT_INV_cnt\(14),
	datac => \b2v_inst10|ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \b2v_inst10|ALT_INV_Equal2~3_combout\,
	dataf => \b2v_inst10|ALT_INV_Equal2~1_combout\,
	combout => \b2v_inst10|cnt[4]~0_combout\);

-- Location: FF_X45_Y15_N32
\b2v_inst10|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~17_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(0));

-- Location: LABCELL_X45_Y15_N33
\b2v_inst10|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~33_sumout\ = SUM(( \b2v_inst10|cnt\(1) ) + ( GND ) + ( \b2v_inst10|Add2~18\ ))
-- \b2v_inst10|Add2~34\ = CARRY(( \b2v_inst10|cnt\(1) ) + ( GND ) + ( \b2v_inst10|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(1),
	cin => \b2v_inst10|Add2~18\,
	sumout => \b2v_inst10|Add2~33_sumout\,
	cout => \b2v_inst10|Add2~34\);

-- Location: FF_X45_Y15_N35
\b2v_inst10|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~33_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(1));

-- Location: LABCELL_X45_Y15_N36
\b2v_inst10|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~57_sumout\ = SUM(( \b2v_inst10|cnt\(2) ) + ( GND ) + ( \b2v_inst10|Add2~34\ ))
-- \b2v_inst10|Add2~58\ = CARRY(( \b2v_inst10|cnt\(2) ) + ( GND ) + ( \b2v_inst10|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(2),
	cin => \b2v_inst10|Add2~34\,
	sumout => \b2v_inst10|Add2~57_sumout\,
	cout => \b2v_inst10|Add2~58\);

-- Location: FF_X45_Y15_N38
\b2v_inst10|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~57_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(2));

-- Location: LABCELL_X45_Y15_N39
\b2v_inst10|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~53_sumout\ = SUM(( \b2v_inst10|cnt\(3) ) + ( GND ) + ( \b2v_inst10|Add2~58\ ))
-- \b2v_inst10|Add2~54\ = CARRY(( \b2v_inst10|cnt\(3) ) + ( GND ) + ( \b2v_inst10|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(3),
	cin => \b2v_inst10|Add2~58\,
	sumout => \b2v_inst10|Add2~53_sumout\,
	cout => \b2v_inst10|Add2~54\);

-- Location: FF_X45_Y15_N41
\b2v_inst10|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~53_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(3));

-- Location: LABCELL_X45_Y15_N42
\b2v_inst10|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~13_sumout\ = SUM(( \b2v_inst10|cnt\(4) ) + ( GND ) + ( \b2v_inst10|Add2~54\ ))
-- \b2v_inst10|Add2~14\ = CARRY(( \b2v_inst10|cnt\(4) ) + ( GND ) + ( \b2v_inst10|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(4),
	cin => \b2v_inst10|Add2~54\,
	sumout => \b2v_inst10|Add2~13_sumout\,
	cout => \b2v_inst10|Add2~14\);

-- Location: FF_X45_Y15_N44
\b2v_inst10|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~13_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(4));

-- Location: LABCELL_X45_Y15_N45
\b2v_inst10|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~21_sumout\ = SUM(( \b2v_inst10|cnt\(5) ) + ( GND ) + ( \b2v_inst10|Add2~14\ ))
-- \b2v_inst10|Add2~22\ = CARRY(( \b2v_inst10|cnt\(5) ) + ( GND ) + ( \b2v_inst10|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(5),
	cin => \b2v_inst10|Add2~14\,
	sumout => \b2v_inst10|Add2~21_sumout\,
	cout => \b2v_inst10|Add2~22\);

-- Location: FF_X45_Y15_N47
\b2v_inst10|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~21_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(5));

-- Location: LABCELL_X45_Y15_N48
\b2v_inst10|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~49_sumout\ = SUM(( \b2v_inst10|cnt\(6) ) + ( GND ) + ( \b2v_inst10|Add2~22\ ))
-- \b2v_inst10|Add2~50\ = CARRY(( \b2v_inst10|cnt\(6) ) + ( GND ) + ( \b2v_inst10|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(6),
	cin => \b2v_inst10|Add2~22\,
	sumout => \b2v_inst10|Add2~49_sumout\,
	cout => \b2v_inst10|Add2~50\);

-- Location: FF_X45_Y15_N50
\b2v_inst10|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~49_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(6));

-- Location: LABCELL_X45_Y15_N51
\b2v_inst10|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~69_sumout\ = SUM(( \b2v_inst10|cnt\(7) ) + ( GND ) + ( \b2v_inst10|Add2~50\ ))
-- \b2v_inst10|Add2~70\ = CARRY(( \b2v_inst10|cnt\(7) ) + ( GND ) + ( \b2v_inst10|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(7),
	cin => \b2v_inst10|Add2~50\,
	sumout => \b2v_inst10|Add2~69_sumout\,
	cout => \b2v_inst10|Add2~70\);

-- Location: FF_X45_Y15_N53
\b2v_inst10|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~69_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(7));

-- Location: LABCELL_X45_Y15_N54
\b2v_inst10|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~65_sumout\ = SUM(( \b2v_inst10|cnt\(8) ) + ( GND ) + ( \b2v_inst10|Add2~70\ ))
-- \b2v_inst10|Add2~66\ = CARRY(( \b2v_inst10|cnt\(8) ) + ( GND ) + ( \b2v_inst10|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(8),
	cin => \b2v_inst10|Add2~70\,
	sumout => \b2v_inst10|Add2~65_sumout\,
	cout => \b2v_inst10|Add2~66\);

-- Location: FF_X45_Y15_N56
\b2v_inst10|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~65_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(8));

-- Location: LABCELL_X45_Y15_N57
\b2v_inst10|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~61_sumout\ = SUM(( \b2v_inst10|cnt\(9) ) + ( GND ) + ( \b2v_inst10|Add2~66\ ))
-- \b2v_inst10|Add2~62\ = CARRY(( \b2v_inst10|cnt\(9) ) + ( GND ) + ( \b2v_inst10|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(9),
	cin => \b2v_inst10|Add2~66\,
	sumout => \b2v_inst10|Add2~61_sumout\,
	cout => \b2v_inst10|Add2~62\);

-- Location: FF_X45_Y15_N59
\b2v_inst10|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~61_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(9));

-- Location: LABCELL_X45_Y14_N0
\b2v_inst10|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~41_sumout\ = SUM(( \b2v_inst10|cnt\(10) ) + ( GND ) + ( \b2v_inst10|Add2~62\ ))
-- \b2v_inst10|Add2~42\ = CARRY(( \b2v_inst10|cnt\(10) ) + ( GND ) + ( \b2v_inst10|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(10),
	cin => \b2v_inst10|Add2~62\,
	sumout => \b2v_inst10|Add2~41_sumout\,
	cout => \b2v_inst10|Add2~42\);

-- Location: FF_X45_Y14_N2
\b2v_inst10|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~41_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(10));

-- Location: LABCELL_X45_Y14_N3
\b2v_inst10|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~37_sumout\ = SUM(( \b2v_inst10|cnt\(11) ) + ( GND ) + ( \b2v_inst10|Add2~42\ ))
-- \b2v_inst10|Add2~38\ = CARRY(( \b2v_inst10|cnt\(11) ) + ( GND ) + ( \b2v_inst10|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(11),
	cin => \b2v_inst10|Add2~42\,
	sumout => \b2v_inst10|Add2~37_sumout\,
	cout => \b2v_inst10|Add2~38\);

-- Location: FF_X45_Y14_N5
\b2v_inst10|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~37_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(11));

-- Location: LABCELL_X45_Y14_N6
\b2v_inst10|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~73_sumout\ = SUM(( \b2v_inst10|cnt\(12) ) + ( GND ) + ( \b2v_inst10|Add2~38\ ))
-- \b2v_inst10|Add2~74\ = CARRY(( \b2v_inst10|cnt\(12) ) + ( GND ) + ( \b2v_inst10|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(12),
	cin => \b2v_inst10|Add2~38\,
	sumout => \b2v_inst10|Add2~73_sumout\,
	cout => \b2v_inst10|Add2~74\);

-- Location: FF_X45_Y14_N8
\b2v_inst10|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~73_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(12));

-- Location: LABCELL_X45_Y14_N9
\b2v_inst10|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~5_sumout\ = SUM(( \b2v_inst10|cnt\(13) ) + ( GND ) + ( \b2v_inst10|Add2~74\ ))
-- \b2v_inst10|Add2~6\ = CARRY(( \b2v_inst10|cnt\(13) ) + ( GND ) + ( \b2v_inst10|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(13),
	cin => \b2v_inst10|Add2~74\,
	sumout => \b2v_inst10|Add2~5_sumout\,
	cout => \b2v_inst10|Add2~6\);

-- Location: FF_X45_Y14_N11
\b2v_inst10|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~5_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(13));

-- Location: LABCELL_X45_Y14_N12
\b2v_inst10|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Add2~9_sumout\ = SUM(( \b2v_inst10|cnt\(14) ) + ( GND ) + ( \b2v_inst10|Add2~6\ ))
-- \b2v_inst10|Add2~10\ = CARRY(( \b2v_inst10|cnt\(14) ) + ( GND ) + ( \b2v_inst10|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|ALT_INV_cnt\(14),
	cin => \b2v_inst10|Add2~6\,
	sumout => \b2v_inst10|Add2~9_sumout\,
	cout => \b2v_inst10|Add2~10\);

-- Location: FF_X45_Y14_N14
\b2v_inst10|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~9_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(14));

-- Location: FF_X45_Y14_N17
\b2v_inst10|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add2~1_sumout\,
	sclr => \b2v_inst10|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|cnt\(15));

-- Location: LABCELL_X45_Y14_N54
\b2v_inst10|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal2~2_combout\ = ( \b2v_inst10|Equal2~1_combout\ & ( \b2v_inst10|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|ALT_INV_Equal2~0_combout\,
	dataf => \b2v_inst10|ALT_INV_Equal2~1_combout\,
	combout => \b2v_inst10|Equal2~2_combout\);

-- Location: LABCELL_X45_Y14_N51
\b2v_inst10|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal1~1_combout\ = ( !\b2v_inst10|cnt\(11) & ( \b2v_inst10|cnt\(6) & ( (\b2v_inst10|cnt\(10) & (!\b2v_inst10|cnt\(3) & !\b2v_inst10|cnt\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(10),
	datab => \b2v_inst10|ALT_INV_cnt\(3),
	datac => \b2v_inst10|ALT_INV_cnt\(20),
	datae => \b2v_inst10|ALT_INV_cnt\(11),
	dataf => \b2v_inst10|ALT_INV_cnt\(6),
	combout => \b2v_inst10|Equal1~1_combout\);

-- Location: LABCELL_X45_Y15_N18
\b2v_inst10|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal1~2_combout\ = ( !\b2v_inst10|cnt\(9) & ( !\b2v_inst10|cnt\(7) & ( (\b2v_inst10|cnt\(8) & \b2v_inst10|cnt\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(8),
	datac => \b2v_inst10|ALT_INV_cnt\(12),
	datae => \b2v_inst10|ALT_INV_cnt\(9),
	dataf => \b2v_inst10|ALT_INV_cnt\(7),
	combout => \b2v_inst10|Equal1~2_combout\);

-- Location: LABCELL_X45_Y15_N12
\b2v_inst10|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Equal1~3_combout\ = ( !\b2v_inst10|cnt\(16) & ( \b2v_inst10|Equal1~2_combout\ & ( (\b2v_inst10|cnt\(2) & (\b2v_inst10|cnt\(19) & \b2v_inst10|Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_cnt\(2),
	datab => \b2v_inst10|ALT_INV_cnt\(19),
	datac => \b2v_inst10|ALT_INV_Equal1~1_combout\,
	datae => \b2v_inst10|ALT_INV_cnt\(16),
	dataf => \b2v_inst10|ALT_INV_Equal1~2_combout\,
	combout => \b2v_inst10|Equal1~3_combout\);

-- Location: LABCELL_X45_Y15_N27
\b2v_inst10|next_new_trame_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|next_new_trame_int~0_combout\ = ( !\b2v_inst10|cnt\(13) & ( ((\b2v_inst10|cnt\(15) & (\b2v_inst10|Equal1~3_combout\ & (!\b2v_inst10|cnt\(14) & \b2v_inst10|Equal1~0_combout\)))) # (\b2v_inst10|new_trame_int~q\) ) ) # ( \b2v_inst10|cnt\(13) & ( 
-- (\b2v_inst10|new_trame_int~q\ & (((!\b2v_inst10|Equal2~2_combout\) # ((!\b2v_inst10|Equal1~0_combout\) # (\b2v_inst10|cnt\(14)))) # (\b2v_inst10|cnt\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010101010111010101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_new_trame_int~q\,
	datab => \b2v_inst10|ALT_INV_cnt\(15),
	datac => \b2v_inst10|ALT_INV_Equal2~2_combout\,
	datad => \b2v_inst10|ALT_INV_cnt\(14),
	datae => \b2v_inst10|ALT_INV_cnt\(13),
	dataf => \b2v_inst10|ALT_INV_Equal1~0_combout\,
	datag => \b2v_inst10|ALT_INV_Equal1~3_combout\,
	combout => \b2v_inst10|next_new_trame_int~0_combout\);

-- Location: FF_X43_Y15_N26
\b2v_inst10|new_trame_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \b2v_inst10|next_new_trame_int~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|new_trame_int~q\);

-- Location: LABCELL_X43_Y15_N15
\b2v_inst10|etat~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|etat~8_combout\ = ( \b2v_inst10|new_trame_int~q\ & ( (\KEY[0]~input_o\ & (!\b2v_inst10|etat.new_t1~q\ & ((!\b2v_inst10|Pwm~1_combout\) # (!\b2v_inst10|etat.pwm_low_s~q\)))) ) ) # ( !\b2v_inst10|new_trame_int~q\ & ( (\KEY[0]~input_o\ & 
-- ((!\b2v_inst10|Pwm~1_combout\) # (!\b2v_inst10|etat.pwm_low_s~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001000100010000000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \b2v_inst10|ALT_INV_etat.new_t1~q\,
	datac => \b2v_inst10|ALT_INV_Pwm~1_combout\,
	datad => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	dataf => \b2v_inst10|ALT_INV_new_trame_int~q\,
	combout => \b2v_inst10|etat~8_combout\);

-- Location: FF_X43_Y15_N17
\b2v_inst10|etat.pwm_init_high_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|etat~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|etat.pwm_init_high_s~q\);

-- Location: LABCELL_X42_Y15_N30
\b2v_inst10|count_pwm[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|count_pwm[0]~0_combout\ = ( \b2v_inst10|LessThan2~1_combout\ & ( \b2v_inst10|LessThan2~0_combout\ & ( (!\b2v_inst10|etat.pwm_init_high_s~q\) # ((!\b2v_inst10|pwm_number\(3) & \b2v_inst10|etat.pwm_low_s~q\)) ) ) ) # ( 
-- !\b2v_inst10|LessThan2~1_combout\ & ( \b2v_inst10|LessThan2~0_combout\ & ( (!\b2v_inst10|etat.pwm_init_high_s~q\) # ((!\b2v_inst10|pwm_number\(3) & \b2v_inst10|etat.pwm_low_s~q\)) ) ) ) # ( \b2v_inst10|LessThan2~1_combout\ & ( 
-- !\b2v_inst10|LessThan2~0_combout\ & ( !\b2v_inst10|etat.pwm_init_high_s~q\ ) ) ) # ( !\b2v_inst10|LessThan2~1_combout\ & ( !\b2v_inst10|LessThan2~0_combout\ & ( (!\b2v_inst10|etat.pwm_init_high_s~q\) # ((!\b2v_inst10|pwm_number\(3) & 
-- \b2v_inst10|etat.pwm_low_s~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111010101010101010101010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_etat.pwm_init_high_s~q\,
	datac => \b2v_inst10|ALT_INV_pwm_number\(3),
	datad => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datae => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	combout => \b2v_inst10|count_pwm[0]~0_combout\);

-- Location: FF_X42_Y15_N2
\b2v_inst10|count_pwm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~13_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(0));

-- Location: FF_X42_Y15_N5
\b2v_inst10|count_pwm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Add0~9_sumout\,
	sclr => \b2v_inst10|count_pwm[0]~0_combout\,
	ena => \b2v_inst10|count_pwm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|count_pwm\(1));

-- Location: LABCELL_X42_Y15_N48
\b2v_inst10|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|LessThan2~0_combout\ = ( \b2v_inst10|count_pwm\(2) & ( (\b2v_inst10|count_pwm\(0)) # (\b2v_inst10|count_pwm\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|ALT_INV_count_pwm\(1),
	datad => \b2v_inst10|ALT_INV_count_pwm\(0),
	dataf => \b2v_inst10|ALT_INV_count_pwm\(2),
	combout => \b2v_inst10|LessThan2~0_combout\);

-- Location: LABCELL_X43_Y15_N54
\b2v_inst10|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|Selector11~0_combout\ = ( \b2v_inst10|etat.new_t0~q\ & ( \b2v_inst10|new_trame_int~q\ ) ) # ( !\b2v_inst10|etat.new_t0~q\ & ( \b2v_inst10|new_trame_int~q\ & ( (\b2v_inst10|Pwm~0_combout\ & (\b2v_inst10|etat.pwm_low_s~q\ & 
-- ((!\b2v_inst10|LessThan2~1_combout\) # (\b2v_inst10|LessThan2~0_combout\)))) ) ) ) # ( \b2v_inst10|etat.new_t0~q\ & ( !\b2v_inst10|new_trame_int~q\ & ( (\b2v_inst10|Pwm~0_combout\ & (\b2v_inst10|etat.pwm_low_s~q\ & ((!\b2v_inst10|LessThan2~1_combout\) # 
-- (\b2v_inst10|LessThan2~0_combout\)))) ) ) ) # ( !\b2v_inst10|etat.new_t0~q\ & ( !\b2v_inst10|new_trame_int~q\ & ( (\b2v_inst10|Pwm~0_combout\ & (\b2v_inst10|etat.pwm_low_s~q\ & ((!\b2v_inst10|LessThan2~1_combout\) # (\b2v_inst10|LessThan2~0_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000000000011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_LessThan2~0_combout\,
	datab => \b2v_inst10|ALT_INV_LessThan2~1_combout\,
	datac => \b2v_inst10|ALT_INV_Pwm~0_combout\,
	datad => \b2v_inst10|ALT_INV_etat.pwm_low_s~q\,
	datae => \b2v_inst10|ALT_INV_etat.new_t0~q\,
	dataf => \b2v_inst10|ALT_INV_new_trame_int~q\,
	combout => \b2v_inst10|Selector11~0_combout\);

-- Location: FF_X43_Y15_N56
\b2v_inst10|etat.new_t0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|Selector11~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|etat.new_t0~q\);

-- Location: LABCELL_X43_Y15_N42
\b2v_inst10|etat~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|etat~7_combout\ = ( \b2v_inst10|etat.new_t1~q\ & ( !\b2v_inst10|new_trame_int~q\ & ( \KEY[0]~input_o\ ) ) ) # ( !\b2v_inst10|etat.new_t1~q\ & ( !\b2v_inst10|new_trame_int~q\ & ( (\b2v_inst10|etat.new_t0~q\ & \KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst10|ALT_INV_etat.new_t0~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \b2v_inst10|ALT_INV_etat.new_t1~q\,
	dataf => \b2v_inst10|ALT_INV_new_trame_int~q\,
	combout => \b2v_inst10|etat~7_combout\);

-- Location: FF_X43_Y15_N44
\b2v_inst10|etat.new_t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|etat~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|etat.new_t1~q\);

-- Location: LABCELL_X40_Y15_N15
\b2v_inst10|pwm_signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst10|pwm_signal~0_combout\ = ( \b2v_inst10|LessThan0~3_combout\ & ( \b2v_inst10|LessThan0~5_combout\ & ( (\b2v_inst10|etat.pwm_high_s~q\ & !\b2v_inst10|LessThan0~1_combout\) ) ) ) # ( !\b2v_inst10|LessThan0~3_combout\ & ( 
-- \b2v_inst10|LessThan0~5_combout\ & ( \b2v_inst10|etat.pwm_high_s~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|ALT_INV_etat.pwm_high_s~q\,
	datac => \b2v_inst10|ALT_INV_LessThan0~1_combout\,
	datae => \b2v_inst10|ALT_INV_LessThan0~3_combout\,
	dataf => \b2v_inst10|ALT_INV_LessThan0~5_combout\,
	combout => \b2v_inst10|pwm_signal~0_combout\);

-- Location: FF_X40_Y15_N17
\b2v_inst10|PWMout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Ext_Clock~inputCLKENA0_outclk\,
	d => \b2v_inst10|pwm_signal~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|PWMout~q\);

-- Location: IOIBUF_X80_Y0_N35
\CCD_DATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(0),
	o => \CCD_DATA[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\CCD_DATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(1),
	o => \CCD_DATA[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\CCD_DATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(2),
	o => \CCD_DATA[2]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\CCD_DATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(3),
	o => \CCD_DATA[3]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\CCD_DATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(4),
	o => \CCD_DATA[4]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\CCD_DATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(5),
	o => \CCD_DATA[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\CCD_DATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(6),
	o => \CCD_DATA[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\CCD_DATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(7),
	o => \CCD_DATA[7]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\CCD_DATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(8),
	o => \CCD_DATA[8]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\CCD_DATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(9),
	o => \CCD_DATA[9]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\CCD_DATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(10),
	o => \CCD_DATA[10]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\CCD_DATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CCD_DATA(11),
	o => \CCD_DATA[11]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\I2C_SCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SCLK,
	o => \I2C_SCLK~input_o\);

-- Location: MLABCELL_X15_Y9_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
		number_of_fplls => 1);
-- pragma translate_on
END structure;


