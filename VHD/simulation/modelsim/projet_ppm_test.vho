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

-- DATE "01/18/2018 19:42:51"

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

ENTITY 	top_ppm IS
    PORT (
	i_clk_top : IN std_logic;
	i_reset_n_top : IN std_logic;
	i_sel_top : IN std_logic_vector(1 DOWNTO 0);
	o_ppm_top : BUFFER std_logic
	);
END top_ppm;

-- Design Ports Information
-- o_ppm_top	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_reset_n_top	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk_top	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sel_top[0]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sel_top[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_ppm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk_top : std_logic;
SIGNAL ww_i_reset_n_top : std_logic;
SIGNAL ww_i_sel_top : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_ppm_top : std_logic;
SIGNAL \send_ppm1|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \send_ppm1|Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \send_ppm1|Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \send_ppm1|Mult3~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \send_ppm1|Mult0~23\ : std_logic;
SIGNAL \send_ppm1|Mult0~24\ : std_logic;
SIGNAL \send_ppm1|Mult0~25\ : std_logic;
SIGNAL \send_ppm1|Mult0~26\ : std_logic;
SIGNAL \send_ppm1|Mult0~27\ : std_logic;
SIGNAL \send_ppm1|Mult0~28\ : std_logic;
SIGNAL \send_ppm1|Mult0~29\ : std_logic;
SIGNAL \send_ppm1|Mult0~30\ : std_logic;
SIGNAL \send_ppm1|Mult0~31\ : std_logic;
SIGNAL \send_ppm1|Mult0~32\ : std_logic;
SIGNAL \send_ppm1|Mult0~33\ : std_logic;
SIGNAL \send_ppm1|Mult0~34\ : std_logic;
SIGNAL \send_ppm1|Mult0~35\ : std_logic;
SIGNAL \send_ppm1|Mult0~36\ : std_logic;
SIGNAL \send_ppm1|Mult0~37\ : std_logic;
SIGNAL \send_ppm1|Mult0~38\ : std_logic;
SIGNAL \send_ppm1|Mult0~39\ : std_logic;
SIGNAL \send_ppm1|Mult0~40\ : std_logic;
SIGNAL \send_ppm1|Mult0~41\ : std_logic;
SIGNAL \send_ppm1|Mult0~42\ : std_logic;
SIGNAL \send_ppm1|Mult0~43\ : std_logic;
SIGNAL \send_ppm1|Mult0~44\ : std_logic;
SIGNAL \send_ppm1|Mult0~45\ : std_logic;
SIGNAL \send_ppm1|Mult0~46\ : std_logic;
SIGNAL \send_ppm1|Mult0~47\ : std_logic;
SIGNAL \send_ppm1|Mult0~48\ : std_logic;
SIGNAL \send_ppm1|Mult0~49\ : std_logic;
SIGNAL \send_ppm1|Mult0~50\ : std_logic;
SIGNAL \send_ppm1|Mult0~51\ : std_logic;
SIGNAL \send_ppm1|Mult0~52\ : std_logic;
SIGNAL \send_ppm1|Mult0~53\ : std_logic;
SIGNAL \send_ppm1|Mult0~54\ : std_logic;
SIGNAL \send_ppm1|Mult0~55\ : std_logic;
SIGNAL \send_ppm1|Mult0~56\ : std_logic;
SIGNAL \send_ppm1|Mult0~57\ : std_logic;
SIGNAL \send_ppm1|Mult0~58\ : std_logic;
SIGNAL \send_ppm1|Mult0~59\ : std_logic;
SIGNAL \send_ppm1|Mult0~60\ : std_logic;
SIGNAL \send_ppm1|Mult0~61\ : std_logic;
SIGNAL \send_ppm1|Mult0~62\ : std_logic;
SIGNAL \send_ppm1|Mult0~63\ : std_logic;
SIGNAL \send_ppm1|Mult0~64\ : std_logic;
SIGNAL \send_ppm1|Mult0~65\ : std_logic;
SIGNAL \send_ppm1|Mult0~66\ : std_logic;
SIGNAL \send_ppm1|Mult0~67\ : std_logic;
SIGNAL \send_ppm1|Mult0~68\ : std_logic;
SIGNAL \send_ppm1|Mult0~69\ : std_logic;
SIGNAL \send_ppm1|Mult0~70\ : std_logic;
SIGNAL \send_ppm1|Mult0~71\ : std_logic;
SIGNAL \send_ppm1|Mult2~23\ : std_logic;
SIGNAL \send_ppm1|Mult2~24\ : std_logic;
SIGNAL \send_ppm1|Mult2~25\ : std_logic;
SIGNAL \send_ppm1|Mult2~26\ : std_logic;
SIGNAL \send_ppm1|Mult2~27\ : std_logic;
SIGNAL \send_ppm1|Mult2~28\ : std_logic;
SIGNAL \send_ppm1|Mult2~29\ : std_logic;
SIGNAL \send_ppm1|Mult2~30\ : std_logic;
SIGNAL \send_ppm1|Mult2~31\ : std_logic;
SIGNAL \send_ppm1|Mult2~32\ : std_logic;
SIGNAL \send_ppm1|Mult2~33\ : std_logic;
SIGNAL \send_ppm1|Mult2~34\ : std_logic;
SIGNAL \send_ppm1|Mult2~35\ : std_logic;
SIGNAL \send_ppm1|Mult2~36\ : std_logic;
SIGNAL \send_ppm1|Mult2~37\ : std_logic;
SIGNAL \send_ppm1|Mult2~38\ : std_logic;
SIGNAL \send_ppm1|Mult2~39\ : std_logic;
SIGNAL \send_ppm1|Mult2~40\ : std_logic;
SIGNAL \send_ppm1|Mult2~41\ : std_logic;
SIGNAL \send_ppm1|Mult2~42\ : std_logic;
SIGNAL \send_ppm1|Mult2~43\ : std_logic;
SIGNAL \send_ppm1|Mult2~44\ : std_logic;
SIGNAL \send_ppm1|Mult2~45\ : std_logic;
SIGNAL \send_ppm1|Mult2~46\ : std_logic;
SIGNAL \send_ppm1|Mult2~47\ : std_logic;
SIGNAL \send_ppm1|Mult2~48\ : std_logic;
SIGNAL \send_ppm1|Mult2~49\ : std_logic;
SIGNAL \send_ppm1|Mult2~50\ : std_logic;
SIGNAL \send_ppm1|Mult2~51\ : std_logic;
SIGNAL \send_ppm1|Mult2~52\ : std_logic;
SIGNAL \send_ppm1|Mult2~53\ : std_logic;
SIGNAL \send_ppm1|Mult2~54\ : std_logic;
SIGNAL \send_ppm1|Mult2~55\ : std_logic;
SIGNAL \send_ppm1|Mult2~56\ : std_logic;
SIGNAL \send_ppm1|Mult2~57\ : std_logic;
SIGNAL \send_ppm1|Mult2~58\ : std_logic;
SIGNAL \send_ppm1|Mult2~59\ : std_logic;
SIGNAL \send_ppm1|Mult2~60\ : std_logic;
SIGNAL \send_ppm1|Mult2~61\ : std_logic;
SIGNAL \send_ppm1|Mult2~62\ : std_logic;
SIGNAL \send_ppm1|Mult2~63\ : std_logic;
SIGNAL \send_ppm1|Mult2~64\ : std_logic;
SIGNAL \send_ppm1|Mult2~65\ : std_logic;
SIGNAL \send_ppm1|Mult2~66\ : std_logic;
SIGNAL \send_ppm1|Mult2~67\ : std_logic;
SIGNAL \send_ppm1|Mult2~68\ : std_logic;
SIGNAL \send_ppm1|Mult2~69\ : std_logic;
SIGNAL \send_ppm1|Mult2~70\ : std_logic;
SIGNAL \send_ppm1|Mult2~71\ : std_logic;
SIGNAL \send_ppm1|Mult1~23\ : std_logic;
SIGNAL \send_ppm1|Mult1~24\ : std_logic;
SIGNAL \send_ppm1|Mult1~25\ : std_logic;
SIGNAL \send_ppm1|Mult1~26\ : std_logic;
SIGNAL \send_ppm1|Mult1~27\ : std_logic;
SIGNAL \send_ppm1|Mult1~28\ : std_logic;
SIGNAL \send_ppm1|Mult1~29\ : std_logic;
SIGNAL \send_ppm1|Mult1~30\ : std_logic;
SIGNAL \send_ppm1|Mult1~31\ : std_logic;
SIGNAL \send_ppm1|Mult1~32\ : std_logic;
SIGNAL \send_ppm1|Mult1~33\ : std_logic;
SIGNAL \send_ppm1|Mult1~34\ : std_logic;
SIGNAL \send_ppm1|Mult1~35\ : std_logic;
SIGNAL \send_ppm1|Mult1~36\ : std_logic;
SIGNAL \send_ppm1|Mult1~37\ : std_logic;
SIGNAL \send_ppm1|Mult1~38\ : std_logic;
SIGNAL \send_ppm1|Mult1~39\ : std_logic;
SIGNAL \send_ppm1|Mult1~40\ : std_logic;
SIGNAL \send_ppm1|Mult1~41\ : std_logic;
SIGNAL \send_ppm1|Mult1~42\ : std_logic;
SIGNAL \send_ppm1|Mult1~43\ : std_logic;
SIGNAL \send_ppm1|Mult1~44\ : std_logic;
SIGNAL \send_ppm1|Mult1~45\ : std_logic;
SIGNAL \send_ppm1|Mult1~46\ : std_logic;
SIGNAL \send_ppm1|Mult1~47\ : std_logic;
SIGNAL \send_ppm1|Mult1~48\ : std_logic;
SIGNAL \send_ppm1|Mult1~49\ : std_logic;
SIGNAL \send_ppm1|Mult1~50\ : std_logic;
SIGNAL \send_ppm1|Mult1~51\ : std_logic;
SIGNAL \send_ppm1|Mult1~52\ : std_logic;
SIGNAL \send_ppm1|Mult1~53\ : std_logic;
SIGNAL \send_ppm1|Mult1~54\ : std_logic;
SIGNAL \send_ppm1|Mult1~55\ : std_logic;
SIGNAL \send_ppm1|Mult1~56\ : std_logic;
SIGNAL \send_ppm1|Mult1~57\ : std_logic;
SIGNAL \send_ppm1|Mult1~58\ : std_logic;
SIGNAL \send_ppm1|Mult1~59\ : std_logic;
SIGNAL \send_ppm1|Mult1~60\ : std_logic;
SIGNAL \send_ppm1|Mult1~61\ : std_logic;
SIGNAL \send_ppm1|Mult1~62\ : std_logic;
SIGNAL \send_ppm1|Mult1~63\ : std_logic;
SIGNAL \send_ppm1|Mult1~64\ : std_logic;
SIGNAL \send_ppm1|Mult1~65\ : std_logic;
SIGNAL \send_ppm1|Mult1~66\ : std_logic;
SIGNAL \send_ppm1|Mult1~67\ : std_logic;
SIGNAL \send_ppm1|Mult1~68\ : std_logic;
SIGNAL \send_ppm1|Mult1~69\ : std_logic;
SIGNAL \send_ppm1|Mult1~70\ : std_logic;
SIGNAL \send_ppm1|Mult1~71\ : std_logic;
SIGNAL \send_ppm1|Mult3~23\ : std_logic;
SIGNAL \send_ppm1|Mult3~24\ : std_logic;
SIGNAL \send_ppm1|Mult3~25\ : std_logic;
SIGNAL \send_ppm1|Mult3~26\ : std_logic;
SIGNAL \send_ppm1|Mult3~27\ : std_logic;
SIGNAL \send_ppm1|Mult3~28\ : std_logic;
SIGNAL \send_ppm1|Mult3~29\ : std_logic;
SIGNAL \send_ppm1|Mult3~30\ : std_logic;
SIGNAL \send_ppm1|Mult3~31\ : std_logic;
SIGNAL \send_ppm1|Mult3~32\ : std_logic;
SIGNAL \send_ppm1|Mult3~33\ : std_logic;
SIGNAL \send_ppm1|Mult3~34\ : std_logic;
SIGNAL \send_ppm1|Mult3~35\ : std_logic;
SIGNAL \send_ppm1|Mult3~36\ : std_logic;
SIGNAL \send_ppm1|Mult3~37\ : std_logic;
SIGNAL \send_ppm1|Mult3~38\ : std_logic;
SIGNAL \send_ppm1|Mult3~39\ : std_logic;
SIGNAL \send_ppm1|Mult3~40\ : std_logic;
SIGNAL \send_ppm1|Mult3~41\ : std_logic;
SIGNAL \send_ppm1|Mult3~42\ : std_logic;
SIGNAL \send_ppm1|Mult3~43\ : std_logic;
SIGNAL \send_ppm1|Mult3~44\ : std_logic;
SIGNAL \send_ppm1|Mult3~45\ : std_logic;
SIGNAL \send_ppm1|Mult3~46\ : std_logic;
SIGNAL \send_ppm1|Mult3~47\ : std_logic;
SIGNAL \send_ppm1|Mult3~48\ : std_logic;
SIGNAL \send_ppm1|Mult3~49\ : std_logic;
SIGNAL \send_ppm1|Mult3~50\ : std_logic;
SIGNAL \send_ppm1|Mult3~51\ : std_logic;
SIGNAL \send_ppm1|Mult3~52\ : std_logic;
SIGNAL \send_ppm1|Mult3~53\ : std_logic;
SIGNAL \send_ppm1|Mult3~54\ : std_logic;
SIGNAL \send_ppm1|Mult3~55\ : std_logic;
SIGNAL \send_ppm1|Mult3~56\ : std_logic;
SIGNAL \send_ppm1|Mult3~57\ : std_logic;
SIGNAL \send_ppm1|Mult3~58\ : std_logic;
SIGNAL \send_ppm1|Mult3~59\ : std_logic;
SIGNAL \send_ppm1|Mult3~60\ : std_logic;
SIGNAL \send_ppm1|Mult3~61\ : std_logic;
SIGNAL \send_ppm1|Mult3~62\ : std_logic;
SIGNAL \send_ppm1|Mult3~63\ : std_logic;
SIGNAL \send_ppm1|Mult3~64\ : std_logic;
SIGNAL \send_ppm1|Mult3~65\ : std_logic;
SIGNAL \send_ppm1|Mult3~66\ : std_logic;
SIGNAL \send_ppm1|Mult3~67\ : std_logic;
SIGNAL \send_ppm1|Mult3~68\ : std_logic;
SIGNAL \send_ppm1|Mult3~69\ : std_logic;
SIGNAL \send_ppm1|Mult3~70\ : std_logic;
SIGNAL \send_ppm1|Mult3~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_clk_top~input_o\ : std_logic;
SIGNAL \i_clk_top~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i_reset_n_top~input_o\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~41_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~22\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~33_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~34\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~69_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~70\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~1_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~2\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~5_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~6\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~9_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~10\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal0~2_combout\ : std_logic;
SIGNAL \send_ppm1|sig_state~3_combout\ : std_logic;
SIGNAL \i_sel_top[0]~input_o\ : std_logic;
SIGNAL \i_sel_top[1]~input_o\ : std_logic;
SIGNAL \decoder1|Equal1~0_combout\ : std_logic;
SIGNAL \send_ppm1|Mult3~21\ : std_logic;
SIGNAL \send_ppm1|Mult3~20\ : std_logic;
SIGNAL \send_ppm1|Mult3~19\ : std_logic;
SIGNAL \send_ppm1|Mult3~18\ : std_logic;
SIGNAL \send_ppm1|Mult3~17\ : std_logic;
SIGNAL \send_ppm1|Mult3~16\ : std_logic;
SIGNAL \send_ppm1|Mult3~15\ : std_logic;
SIGNAL \send_ppm1|Mult3~14\ : std_logic;
SIGNAL \send_ppm1|Mult3~13\ : std_logic;
SIGNAL \send_ppm1|Mult3~12\ : std_logic;
SIGNAL \send_ppm1|Mult3~11\ : std_logic;
SIGNAL \send_ppm1|Mult3~10\ : std_logic;
SIGNAL \send_ppm1|Add6~18\ : std_logic;
SIGNAL \send_ppm1|Add6~22\ : std_logic;
SIGNAL \send_ppm1|Add6~42\ : std_logic;
SIGNAL \send_ppm1|Add6~46\ : std_logic;
SIGNAL \send_ppm1|Add6~50\ : std_logic;
SIGNAL \send_ppm1|Add6~30\ : std_logic;
SIGNAL \send_ppm1|Add6~34\ : std_logic;
SIGNAL \send_ppm1|Add6~38\ : std_logic;
SIGNAL \send_ppm1|Add6~6\ : std_logic;
SIGNAL \send_ppm1|Add6~10\ : std_logic;
SIGNAL \send_ppm1|Add6~26\ : std_logic;
SIGNAL \send_ppm1|Add6~2\ : std_logic;
SIGNAL \send_ppm1|Add6~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add6~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult3~9\ : std_logic;
SIGNAL \send_ppm1|Mult3~8_resulta\ : std_logic;
SIGNAL \send_ppm1|Add7~38\ : std_logic;
SIGNAL \send_ppm1|Add7~22\ : std_logic;
SIGNAL \send_ppm1|Add7~26\ : std_logic;
SIGNAL \send_ppm1|Add7~30\ : std_logic;
SIGNAL \send_ppm1|Add7~54\ : std_logic;
SIGNAL \send_ppm1|Add7~58\ : std_logic;
SIGNAL \send_ppm1|Add7~62\ : std_logic;
SIGNAL \send_ppm1|Add7~42\ : std_logic;
SIGNAL \send_ppm1|Add7~46\ : std_logic;
SIGNAL \send_ppm1|Add7~50\ : std_logic;
SIGNAL \send_ppm1|Add7~10\ : std_logic;
SIGNAL \send_ppm1|Add7~14\ : std_logic;
SIGNAL \send_ppm1|Add7~34\ : std_logic;
SIGNAL \send_ppm1|Add7~2\ : std_logic;
SIGNAL \send_ppm1|Add7~18\ : std_logic;
SIGNAL \send_ppm1|Add7~66\ : std_logic;
SIGNAL \send_ppm1|Add7~5_sumout\ : std_logic;
SIGNAL \decoder1|o_val[7]~0_combout\ : std_logic;
SIGNAL \send_ppm1|Mult0~22\ : std_logic;
SIGNAL \send_ppm1|Mult0~21\ : std_logic;
SIGNAL \send_ppm1|Mult0~20\ : std_logic;
SIGNAL \send_ppm1|Mult0~19\ : std_logic;
SIGNAL \send_ppm1|Mult0~18\ : std_logic;
SIGNAL \send_ppm1|Mult0~17\ : std_logic;
SIGNAL \send_ppm1|Mult0~16\ : std_logic;
SIGNAL \send_ppm1|Mult0~15\ : std_logic;
SIGNAL \send_ppm1|Mult0~14\ : std_logic;
SIGNAL \send_ppm1|Mult0~13\ : std_logic;
SIGNAL \send_ppm1|Mult0~12\ : std_logic;
SIGNAL \send_ppm1|Mult0~11\ : std_logic;
SIGNAL \send_ppm1|Mult0~10\ : std_logic;
SIGNAL \send_ppm1|Add0~22\ : std_logic;
SIGNAL \send_ppm1|Add0~26\ : std_logic;
SIGNAL \send_ppm1|Add0~50\ : std_logic;
SIGNAL \send_ppm1|Add0~54\ : std_logic;
SIGNAL \send_ppm1|Add0~42\ : std_logic;
SIGNAL \send_ppm1|Add0~30\ : std_logic;
SIGNAL \send_ppm1|Add0~34\ : std_logic;
SIGNAL \send_ppm1|Add0~38\ : std_logic;
SIGNAL \send_ppm1|Add0~10\ : std_logic;
SIGNAL \send_ppm1|Add0~14\ : std_logic;
SIGNAL \send_ppm1|Add0~2\ : std_logic;
SIGNAL \send_ppm1|Add0~6\ : std_logic;
SIGNAL \send_ppm1|Add0~18\ : std_logic;
SIGNAL \send_ppm1|Add0~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add0~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult0~9\ : std_logic;
SIGNAL \send_ppm1|Mult0~8_resulta\ : std_logic;
SIGNAL \send_ppm1|Add1~26\ : std_logic;
SIGNAL \send_ppm1|Add1~30\ : std_logic;
SIGNAL \send_ppm1|Add1~34\ : std_logic;
SIGNAL \send_ppm1|Add1~38\ : std_logic;
SIGNAL \send_ppm1|Add1~62\ : std_logic;
SIGNAL \send_ppm1|Add1~66\ : std_logic;
SIGNAL \send_ppm1|Add1~54\ : std_logic;
SIGNAL \send_ppm1|Add1~42\ : std_logic;
SIGNAL \send_ppm1|Add1~46\ : std_logic;
SIGNAL \send_ppm1|Add1~50\ : std_logic;
SIGNAL \send_ppm1|Add1~14\ : std_logic;
SIGNAL \send_ppm1|Add1~18\ : std_logic;
SIGNAL \send_ppm1|Add1~6\ : std_logic;
SIGNAL \send_ppm1|Add1~10\ : std_logic;
SIGNAL \send_ppm1|Add1~22\ : std_logic;
SIGNAL \send_ppm1|Add1~58\ : std_logic;
SIGNAL \send_ppm1|Add1~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult1~22\ : std_logic;
SIGNAL \send_ppm1|Mult1~21\ : std_logic;
SIGNAL \send_ppm1|Mult1~20\ : std_logic;
SIGNAL \send_ppm1|Mult1~19\ : std_logic;
SIGNAL \send_ppm1|Mult1~18\ : std_logic;
SIGNAL \send_ppm1|Mult1~17\ : std_logic;
SIGNAL \send_ppm1|Mult1~16\ : std_logic;
SIGNAL \send_ppm1|Mult1~15\ : std_logic;
SIGNAL \send_ppm1|Mult1~14\ : std_logic;
SIGNAL \send_ppm1|Mult1~13\ : std_logic;
SIGNAL \send_ppm1|Mult1~12\ : std_logic;
SIGNAL \send_ppm1|Mult1~11\ : std_logic;
SIGNAL \send_ppm1|Mult1~10\ : std_logic;
SIGNAL \send_ppm1|Add2~22\ : std_logic;
SIGNAL \send_ppm1|Add2~26\ : std_logic;
SIGNAL \send_ppm1|Add2~46\ : std_logic;
SIGNAL \send_ppm1|Add2~50\ : std_logic;
SIGNAL \send_ppm1|Add2~54\ : std_logic;
SIGNAL \send_ppm1|Add2~38\ : std_logic;
SIGNAL \send_ppm1|Add2~42\ : std_logic;
SIGNAL \send_ppm1|Add2~30\ : std_logic;
SIGNAL \send_ppm1|Add2~10\ : std_logic;
SIGNAL \send_ppm1|Add2~14\ : std_logic;
SIGNAL \send_ppm1|Add2~2\ : std_logic;
SIGNAL \send_ppm1|Add2~6\ : std_logic;
SIGNAL \send_ppm1|Add2~18\ : std_logic;
SIGNAL \send_ppm1|Add2~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add2~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult1~9\ : std_logic;
SIGNAL \send_ppm1|Mult1~8_resulta\ : std_logic;
SIGNAL \send_ppm1|Add3~26\ : std_logic;
SIGNAL \send_ppm1|Add3~30\ : std_logic;
SIGNAL \send_ppm1|Add3~34\ : std_logic;
SIGNAL \send_ppm1|Add3~38\ : std_logic;
SIGNAL \send_ppm1|Add3~58\ : std_logic;
SIGNAL \send_ppm1|Add3~62\ : std_logic;
SIGNAL \send_ppm1|Add3~66\ : std_logic;
SIGNAL \send_ppm1|Add3~50\ : std_logic;
SIGNAL \send_ppm1|Add3~54\ : std_logic;
SIGNAL \send_ppm1|Add3~42\ : std_logic;
SIGNAL \send_ppm1|Add3~14\ : std_logic;
SIGNAL \send_ppm1|Add3~18\ : std_logic;
SIGNAL \send_ppm1|Add3~2\ : std_logic;
SIGNAL \send_ppm1|Add3~6\ : std_logic;
SIGNAL \send_ppm1|Add3~22\ : std_logic;
SIGNAL \send_ppm1|Add3~46\ : std_logic;
SIGNAL \send_ppm1|Add3~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult2~22\ : std_logic;
SIGNAL \send_ppm1|Mult2~21\ : std_logic;
SIGNAL \send_ppm1|Mult2~20\ : std_logic;
SIGNAL \send_ppm1|Mult2~19\ : std_logic;
SIGNAL \send_ppm1|Mult2~18\ : std_logic;
SIGNAL \send_ppm1|Mult2~17\ : std_logic;
SIGNAL \send_ppm1|Mult2~16\ : std_logic;
SIGNAL \send_ppm1|Mult2~15\ : std_logic;
SIGNAL \send_ppm1|Mult2~14\ : std_logic;
SIGNAL \send_ppm1|Mult2~13\ : std_logic;
SIGNAL \send_ppm1|Mult2~12\ : std_logic;
SIGNAL \send_ppm1|Mult2~11\ : std_logic;
SIGNAL \send_ppm1|Mult2~10\ : std_logic;
SIGNAL \send_ppm1|Add4~22\ : std_logic;
SIGNAL \send_ppm1|Add4~26\ : std_logic;
SIGNAL \send_ppm1|Add4~46\ : std_logic;
SIGNAL \send_ppm1|Add4~50\ : std_logic;
SIGNAL \send_ppm1|Add4~54\ : std_logic;
SIGNAL \send_ppm1|Add4~38\ : std_logic;
SIGNAL \send_ppm1|Add4~42\ : std_logic;
SIGNAL \send_ppm1|Add4~30\ : std_logic;
SIGNAL \send_ppm1|Add4~10\ : std_logic;
SIGNAL \send_ppm1|Add4~14\ : std_logic;
SIGNAL \send_ppm1|Add4~2\ : std_logic;
SIGNAL \send_ppm1|Add4~6\ : std_logic;
SIGNAL \send_ppm1|Add4~18\ : std_logic;
SIGNAL \send_ppm1|Add4~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add4~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Mult2~9\ : std_logic;
SIGNAL \send_ppm1|Mult2~8_resulta\ : std_logic;
SIGNAL \send_ppm1|Add5~26\ : std_logic;
SIGNAL \send_ppm1|Add5~30\ : std_logic;
SIGNAL \send_ppm1|Add5~34\ : std_logic;
SIGNAL \send_ppm1|Add5~38\ : std_logic;
SIGNAL \send_ppm1|Add5~58\ : std_logic;
SIGNAL \send_ppm1|Add5~62\ : std_logic;
SIGNAL \send_ppm1|Add5~66\ : std_logic;
SIGNAL \send_ppm1|Add5~50\ : std_logic;
SIGNAL \send_ppm1|Add5~54\ : std_logic;
SIGNAL \send_ppm1|Add5~42\ : std_logic;
SIGNAL \send_ppm1|Add5~14\ : std_logic;
SIGNAL \send_ppm1|Add5~18\ : std_logic;
SIGNAL \send_ppm1|Add5~2\ : std_logic;
SIGNAL \send_ppm1|Add5~6\ : std_logic;
SIGNAL \send_ppm1|Add5~22\ : std_logic;
SIGNAL \send_ppm1|Add5~46\ : std_logic;
SIGNAL \send_ppm1|Add5~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add1~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add3~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add5~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~2\ : std_logic;
SIGNAL \send_ppm1|Add8~3\ : std_logic;
SIGNAL \send_ppm1|Add8~6\ : std_logic;
SIGNAL \send_ppm1|Add8~7\ : std_logic;
SIGNAL \send_ppm1|Add8~38\ : std_logic;
SIGNAL \send_ppm1|Add8~39\ : std_logic;
SIGNAL \send_ppm1|Add8~30\ : std_logic;
SIGNAL \send_ppm1|Add8~31\ : std_logic;
SIGNAL \send_ppm1|Add8~62\ : std_logic;
SIGNAL \send_ppm1|Add8~63\ : std_logic;
SIGNAL \send_ppm1|Add8~66\ : std_logic;
SIGNAL \send_ppm1|Add8~67\ : std_logic;
SIGNAL \send_ppm1|Add8~70\ : std_logic;
SIGNAL \send_ppm1|Add8~71\ : std_logic;
SIGNAL \send_ppm1|Add8~42\ : std_logic;
SIGNAL \send_ppm1|Add8~43\ : std_logic;
SIGNAL \send_ppm1|Add8~46\ : std_logic;
SIGNAL \send_ppm1|Add8~47\ : std_logic;
SIGNAL \send_ppm1|Add8~50\ : std_logic;
SIGNAL \send_ppm1|Add8~51\ : std_logic;
SIGNAL \send_ppm1|Add8~18\ : std_logic;
SIGNAL \send_ppm1|Add8~19\ : std_logic;
SIGNAL \send_ppm1|Add8~22\ : std_logic;
SIGNAL \send_ppm1|Add8~23\ : std_logic;
SIGNAL \send_ppm1|Add8~34\ : std_logic;
SIGNAL \send_ppm1|Add8~35\ : std_logic;
SIGNAL \send_ppm1|Add8~10\ : std_logic;
SIGNAL \send_ppm1|Add8~11\ : std_logic;
SIGNAL \send_ppm1|Add8~26\ : std_logic;
SIGNAL \send_ppm1|Add8~27\ : std_logic;
SIGNAL \send_ppm1|Add8~54\ : std_logic;
SIGNAL \send_ppm1|Add8~55\ : std_logic;
SIGNAL \send_ppm1|Add8~58\ : std_logic;
SIGNAL \send_ppm1|Add8~59\ : std_logic;
SIGNAL \send_ppm1|Add8~73_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~69_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~2\ : std_logic;
SIGNAL \send_ppm1|Add10~6\ : std_logic;
SIGNAL \send_ppm1|Add10~38\ : std_logic;
SIGNAL \send_ppm1|Add10~30\ : std_logic;
SIGNAL \send_ppm1|Add10~62\ : std_logic;
SIGNAL \send_ppm1|Add10~66\ : std_logic;
SIGNAL \send_ppm1|Add10~70\ : std_logic;
SIGNAL \send_ppm1|Add10~42\ : std_logic;
SIGNAL \send_ppm1|Add10~46\ : std_logic;
SIGNAL \send_ppm1|Add10~50\ : std_logic;
SIGNAL \send_ppm1|Add10~18\ : std_logic;
SIGNAL \send_ppm1|Add10~22\ : std_logic;
SIGNAL \send_ppm1|Add10~34\ : std_logic;
SIGNAL \send_ppm1|Add10~10\ : std_logic;
SIGNAL \send_ppm1|Add10~26\ : std_logic;
SIGNAL \send_ppm1|Add10~54\ : std_logic;
SIGNAL \send_ppm1|Add10~58\ : std_logic;
SIGNAL \send_ppm1|Add10~73_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~69_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~30\ : std_logic;
SIGNAL \send_ppm1|Add11~22\ : std_logic;
SIGNAL \send_ppm1|Add11~54\ : std_logic;
SIGNAL \send_ppm1|Add11~58\ : std_logic;
SIGNAL \send_ppm1|Add11~62\ : std_logic;
SIGNAL \send_ppm1|Add11~34\ : std_logic;
SIGNAL \send_ppm1|Add11~38\ : std_logic;
SIGNAL \send_ppm1|Add11~42\ : std_logic;
SIGNAL \send_ppm1|Add11~10\ : std_logic;
SIGNAL \send_ppm1|Add11~14\ : std_logic;
SIGNAL \send_ppm1|Add11~26\ : std_logic;
SIGNAL \send_ppm1|Add11~2\ : std_logic;
SIGNAL \send_ppm1|Add11~18\ : std_logic;
SIGNAL \send_ppm1|Add11~46\ : std_logic;
SIGNAL \send_ppm1|Add11~50\ : std_logic;
SIGNAL \send_ppm1|Add11~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~30\ : std_logic;
SIGNAL \send_ppm1|Add12~34\ : std_logic;
SIGNAL \send_ppm1|Add12~38\ : std_logic;
SIGNAL \send_ppm1|Add12~22\ : std_logic;
SIGNAL \send_ppm1|Add12~62\ : std_logic;
SIGNAL \send_ppm1|Add12~66\ : std_logic;
SIGNAL \send_ppm1|Add12~70\ : std_logic;
SIGNAL \send_ppm1|Add12~42\ : std_logic;
SIGNAL \send_ppm1|Add12~46\ : std_logic;
SIGNAL \send_ppm1|Add12~50\ : std_logic;
SIGNAL \send_ppm1|Add12~10\ : std_logic;
SIGNAL \send_ppm1|Add12~14\ : std_logic;
SIGNAL \send_ppm1|Add12~26\ : std_logic;
SIGNAL \send_ppm1|Add12~2\ : std_logic;
SIGNAL \send_ppm1|Add12~18\ : std_logic;
SIGNAL \send_ppm1|Add12~54\ : std_logic;
SIGNAL \send_ppm1|Add12~58\ : std_logic;
SIGNAL \send_ppm1|Add12~73_sumout\ : std_logic;
SIGNAL \send_ppm1|Add8~74\ : std_logic;
SIGNAL \send_ppm1|Add8~75\ : std_logic;
SIGNAL \send_ppm1|Add8~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~74\ : std_logic;
SIGNAL \send_ppm1|Add10~77_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~66\ : std_logic;
SIGNAL \send_ppm1|Add11~69_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~74\ : std_logic;
SIGNAL \send_ppm1|Add12~77_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~8_combout\ : std_logic;
SIGNAL \send_ppm1|Add12~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~33_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~29_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~37_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~2_combout\ : std_logic;
SIGNAL \send_ppm1|Add12~25_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~3_combout\ : std_logic;
SIGNAL \send_ppm1|Add12~1_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~0_combout\ : std_logic;
SIGNAL \send_ppm1|Add12~41_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~49_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~4_combout\ : std_logic;
SIGNAL \send_ppm1|Add10~78\ : std_logic;
SIGNAL \send_ppm1|Add10~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~70\ : std_logic;
SIGNAL \send_ppm1|Add11~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~78\ : std_logic;
SIGNAL \send_ppm1|Add12~5_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~13_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~17_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~9_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~1_combout\ : std_logic;
SIGNAL \send_ppm1|Equal9~5_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~9_combout\ : std_logic;
SIGNAL \send_ppm1|current_state.fin_trame~q\ : std_logic;
SIGNAL \send_ppm1|current_state.reset~q\ : std_logic;
SIGNAL \send_ppm1|reg~2_combout\ : std_logic;
SIGNAL \send_ppm1|Mult3~22\ : std_logic;
SIGNAL \send_ppm1|Add6~14\ : std_logic;
SIGNAL \send_ppm1|Add6~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add7~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add10~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add11~45_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~53_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~57_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~65_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~69_sumout\ : std_logic;
SIGNAL \send_ppm1|Add12~61_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal9~6_combout\ : std_logic;
SIGNAL \send_ppm1|Equal9~7_combout\ : std_logic;
SIGNAL \send_ppm1|Equal0~0_combout\ : std_logic;
SIGNAL \send_ppm1|Equal0~1_combout\ : std_logic;
SIGNAL \send_ppm1|Equal0~4_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~10_combout\ : std_logic;
SIGNAL \send_ppm1|Equal3~1_combout\ : std_logic;
SIGNAL \send_ppm1|Equal3~0_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~4_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~5_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~1_combout\ : std_logic;
SIGNAL \send_ppm1|Equal3~2_combout\ : std_logic;
SIGNAL \send_ppm1|Equal3~4_combout\ : std_logic;
SIGNAL \send_ppm1|Equal3~3_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~2_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~3_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~6_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~14_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~1_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~15_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~0_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~5_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~2_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~3_combout\ : std_logic;
SIGNAL \send_ppm1|Equal5~4_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~16_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~18_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~17_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~19_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~20_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~0_combout\ : std_logic;
SIGNAL \send_ppm1|Equal7~2_combout\ : std_logic;
SIGNAL \send_ppm1|Equal7~4_combout\ : std_logic;
SIGNAL \send_ppm1|Equal7~3_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~9_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~8_combout\ : std_logic;
SIGNAL \send_ppm1|Equal7~0_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~11_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~10_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~12_combout\ : std_logic;
SIGNAL \send_ppm1|Equal7~1_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~7_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~13_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~21_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~0_combout\ : std_logic;
SIGNAL \send_ppm1|combi~1_combout\ : std_logic;
SIGNAL \send_ppm1|combi~4_combout\ : std_logic;
SIGNAL \send_ppm1|combi~0_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~4_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~5_combout\ : std_logic;
SIGNAL \send_ppm1|combi~5_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~2_combout\ : std_logic;
SIGNAL \send_ppm1|combi~2_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~1_combout\ : std_logic;
SIGNAL \send_ppm1|Equal8~3_combout\ : std_logic;
SIGNAL \send_ppm1|combi~3_combout\ : std_logic;
SIGNAL \send_ppm1|combi~6_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~11_combout\ : std_logic;
SIGNAL \send_ppm1|current_state.pulse~q\ : std_logic;
SIGNAL \send_ppm1|sig_state[2]~1_combout\ : std_logic;
SIGNAL \send_ppm1|sig_state[2]~2_combout\ : std_logic;
SIGNAL \send_ppm1|sig_state~4_combout\ : std_logic;
SIGNAL \send_ppm1|sig_state~0_combout\ : std_logic;
SIGNAL \send_ppm1|Equal1~0_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~12_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~13_combout\ : std_logic;
SIGNAL \send_ppm1|current_state.synchro~q\ : std_logic;
SIGNAL \send_ppm1|Equal7~5_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~22_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~23_combout\ : std_logic;
SIGNAL \send_ppm1|next_state~24_combout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|o_count[9]~0_combout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|o_count[9]~1_combout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~42\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~45_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~46\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~49_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~50\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~37_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~38\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~73_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~74\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~77_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~78\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~65_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~66\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~53_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~54\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~57_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~58\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~61_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~62\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~25_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~26\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~29_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~30\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~17_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~18\ : std_logic;
SIGNAL \send_ppm1|local_counter1|Add0~21_sumout\ : std_logic;
SIGNAL \send_ppm1|Equal0~3_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~7_combout\ : std_logic;
SIGNAL \send_ppm1|current_state~8_combout\ : std_logic;
SIGNAL \send_ppm1|current_state.tempo~q\ : std_logic;
SIGNAL \send_ppm1|sig_out_ppm~0_combout\ : std_logic;
SIGNAL \send_ppm1|sig_out_ppm~q\ : std_logic;
SIGNAL \send_ppm1|sig_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|local_counter1|o_count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \send_ppm1|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~22\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~21\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~20\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~19\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~18\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~17\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~16\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~15\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~14\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~13\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~12\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~11\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~10\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~9\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult3~8_resulta\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~22\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~21\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~20\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~19\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~18\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~17\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~16\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~15\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~14\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~13\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~12\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~11\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~10\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~9\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult1~8_resulta\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~22\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~21\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~20\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~19\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~18\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~17\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~16\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~15\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~14\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~13\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~12\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~11\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~10\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~9\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult2~8_resulta\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~77_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~73_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~69_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|ALT_INV_o_count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \send_ppm1|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_i_sel_top[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_sel_top[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_i_reset_n_top~input_o\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state~12_combout\ : std_logic;
SIGNAL \send_ppm1|local_counter1|ALT_INV_o_count[9]~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~24_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~23_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~22_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_sig_state[2]~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state~10_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~8_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~7_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~6_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state.synchro~q\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state~7_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~6_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_combi~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~21_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~20_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~19_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~18_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~17_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~16_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~15_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~14_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~13_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~12_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~11_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~10_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~9_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~8_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~7_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~6_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~5_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_sig_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \send_ppm1|ALT_INV_next_state~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_next_state~0_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state.pulse~q\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_reg~2_combout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state.fin_trame~q\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state.reset~q\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_current_state.tempo~q\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~73_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~69_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~77_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~73_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~69_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~25_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~21_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~69_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~65_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~61_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~57_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~53_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~49_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~45_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~41_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~37_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \send_ppm1|ALT_INV_Add11~25_sumout\ : std_logic;

BEGIN

ww_i_clk_top <= i_clk_top;
ww_i_reset_n_top <= i_reset_n_top;
ww_i_sel_top <= i_sel_top;
o_ppm_top <= ww_o_ppm_top;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\send_ppm1|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\send_ppm1|Mult0~8_CLK_bus\ <= (gnd & gnd & \i_clk_top~inputCLKENA0_outclk\);

\send_ppm1|Mult0~8_ENA_bus\ <= (vcc & vcc & \send_ppm1|reg~2_combout\);

\send_ppm1|Mult0~8_AX_bus\ <= (\decoder1|o_val[7]~0_combout\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\
);

\send_ppm1|Mult0~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & vcc & gnd);

\send_ppm1|Mult0~8_resulta\ <= \send_ppm1|Mult0~8_RESULTA_bus\(0);
\send_ppm1|Mult0~9\ <= \send_ppm1|Mult0~8_RESULTA_bus\(1);
\send_ppm1|Mult0~10\ <= \send_ppm1|Mult0~8_RESULTA_bus\(2);
\send_ppm1|Mult0~11\ <= \send_ppm1|Mult0~8_RESULTA_bus\(3);
\send_ppm1|Mult0~12\ <= \send_ppm1|Mult0~8_RESULTA_bus\(4);
\send_ppm1|Mult0~13\ <= \send_ppm1|Mult0~8_RESULTA_bus\(5);
\send_ppm1|Mult0~14\ <= \send_ppm1|Mult0~8_RESULTA_bus\(6);
\send_ppm1|Mult0~15\ <= \send_ppm1|Mult0~8_RESULTA_bus\(7);
\send_ppm1|Mult0~16\ <= \send_ppm1|Mult0~8_RESULTA_bus\(8);
\send_ppm1|Mult0~17\ <= \send_ppm1|Mult0~8_RESULTA_bus\(9);
\send_ppm1|Mult0~18\ <= \send_ppm1|Mult0~8_RESULTA_bus\(10);
\send_ppm1|Mult0~19\ <= \send_ppm1|Mult0~8_RESULTA_bus\(11);
\send_ppm1|Mult0~20\ <= \send_ppm1|Mult0~8_RESULTA_bus\(12);
\send_ppm1|Mult0~21\ <= \send_ppm1|Mult0~8_RESULTA_bus\(13);
\send_ppm1|Mult0~22\ <= \send_ppm1|Mult0~8_RESULTA_bus\(14);
\send_ppm1|Mult0~23\ <= \send_ppm1|Mult0~8_RESULTA_bus\(15);
\send_ppm1|Mult0~24\ <= \send_ppm1|Mult0~8_RESULTA_bus\(16);
\send_ppm1|Mult0~25\ <= \send_ppm1|Mult0~8_RESULTA_bus\(17);
\send_ppm1|Mult0~26\ <= \send_ppm1|Mult0~8_RESULTA_bus\(18);
\send_ppm1|Mult0~27\ <= \send_ppm1|Mult0~8_RESULTA_bus\(19);
\send_ppm1|Mult0~28\ <= \send_ppm1|Mult0~8_RESULTA_bus\(20);
\send_ppm1|Mult0~29\ <= \send_ppm1|Mult0~8_RESULTA_bus\(21);
\send_ppm1|Mult0~30\ <= \send_ppm1|Mult0~8_RESULTA_bus\(22);
\send_ppm1|Mult0~31\ <= \send_ppm1|Mult0~8_RESULTA_bus\(23);
\send_ppm1|Mult0~32\ <= \send_ppm1|Mult0~8_RESULTA_bus\(24);
\send_ppm1|Mult0~33\ <= \send_ppm1|Mult0~8_RESULTA_bus\(25);
\send_ppm1|Mult0~34\ <= \send_ppm1|Mult0~8_RESULTA_bus\(26);
\send_ppm1|Mult0~35\ <= \send_ppm1|Mult0~8_RESULTA_bus\(27);
\send_ppm1|Mult0~36\ <= \send_ppm1|Mult0~8_RESULTA_bus\(28);
\send_ppm1|Mult0~37\ <= \send_ppm1|Mult0~8_RESULTA_bus\(29);
\send_ppm1|Mult0~38\ <= \send_ppm1|Mult0~8_RESULTA_bus\(30);
\send_ppm1|Mult0~39\ <= \send_ppm1|Mult0~8_RESULTA_bus\(31);
\send_ppm1|Mult0~40\ <= \send_ppm1|Mult0~8_RESULTA_bus\(32);
\send_ppm1|Mult0~41\ <= \send_ppm1|Mult0~8_RESULTA_bus\(33);
\send_ppm1|Mult0~42\ <= \send_ppm1|Mult0~8_RESULTA_bus\(34);
\send_ppm1|Mult0~43\ <= \send_ppm1|Mult0~8_RESULTA_bus\(35);
\send_ppm1|Mult0~44\ <= \send_ppm1|Mult0~8_RESULTA_bus\(36);
\send_ppm1|Mult0~45\ <= \send_ppm1|Mult0~8_RESULTA_bus\(37);
\send_ppm1|Mult0~46\ <= \send_ppm1|Mult0~8_RESULTA_bus\(38);
\send_ppm1|Mult0~47\ <= \send_ppm1|Mult0~8_RESULTA_bus\(39);
\send_ppm1|Mult0~48\ <= \send_ppm1|Mult0~8_RESULTA_bus\(40);
\send_ppm1|Mult0~49\ <= \send_ppm1|Mult0~8_RESULTA_bus\(41);
\send_ppm1|Mult0~50\ <= \send_ppm1|Mult0~8_RESULTA_bus\(42);
\send_ppm1|Mult0~51\ <= \send_ppm1|Mult0~8_RESULTA_bus\(43);
\send_ppm1|Mult0~52\ <= \send_ppm1|Mult0~8_RESULTA_bus\(44);
\send_ppm1|Mult0~53\ <= \send_ppm1|Mult0~8_RESULTA_bus\(45);
\send_ppm1|Mult0~54\ <= \send_ppm1|Mult0~8_RESULTA_bus\(46);
\send_ppm1|Mult0~55\ <= \send_ppm1|Mult0~8_RESULTA_bus\(47);
\send_ppm1|Mult0~56\ <= \send_ppm1|Mult0~8_RESULTA_bus\(48);
\send_ppm1|Mult0~57\ <= \send_ppm1|Mult0~8_RESULTA_bus\(49);
\send_ppm1|Mult0~58\ <= \send_ppm1|Mult0~8_RESULTA_bus\(50);
\send_ppm1|Mult0~59\ <= \send_ppm1|Mult0~8_RESULTA_bus\(51);
\send_ppm1|Mult0~60\ <= \send_ppm1|Mult0~8_RESULTA_bus\(52);
\send_ppm1|Mult0~61\ <= \send_ppm1|Mult0~8_RESULTA_bus\(53);
\send_ppm1|Mult0~62\ <= \send_ppm1|Mult0~8_RESULTA_bus\(54);
\send_ppm1|Mult0~63\ <= \send_ppm1|Mult0~8_RESULTA_bus\(55);
\send_ppm1|Mult0~64\ <= \send_ppm1|Mult0~8_RESULTA_bus\(56);
\send_ppm1|Mult0~65\ <= \send_ppm1|Mult0~8_RESULTA_bus\(57);
\send_ppm1|Mult0~66\ <= \send_ppm1|Mult0~8_RESULTA_bus\(58);
\send_ppm1|Mult0~67\ <= \send_ppm1|Mult0~8_RESULTA_bus\(59);
\send_ppm1|Mult0~68\ <= \send_ppm1|Mult0~8_RESULTA_bus\(60);
\send_ppm1|Mult0~69\ <= \send_ppm1|Mult0~8_RESULTA_bus\(61);
\send_ppm1|Mult0~70\ <= \send_ppm1|Mult0~8_RESULTA_bus\(62);
\send_ppm1|Mult0~71\ <= \send_ppm1|Mult0~8_RESULTA_bus\(63);

\send_ppm1|Mult2~8_ACLR_bus\ <= (gnd & gnd);

\send_ppm1|Mult2~8_CLK_bus\ <= (gnd & gnd & \i_clk_top~inputCLKENA0_outclk\);

\send_ppm1|Mult2~8_ENA_bus\ <= (vcc & vcc & \send_ppm1|reg~2_combout\);

\send_ppm1|Mult2~8_AX_bus\ <= (\i_sel_top[1]~input_o\ & \decoder1|Equal1~0_combout\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\);

\send_ppm1|Mult2~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & vcc & gnd);

\send_ppm1|Mult2~8_resulta\ <= \send_ppm1|Mult2~8_RESULTA_bus\(0);
\send_ppm1|Mult2~9\ <= \send_ppm1|Mult2~8_RESULTA_bus\(1);
\send_ppm1|Mult2~10\ <= \send_ppm1|Mult2~8_RESULTA_bus\(2);
\send_ppm1|Mult2~11\ <= \send_ppm1|Mult2~8_RESULTA_bus\(3);
\send_ppm1|Mult2~12\ <= \send_ppm1|Mult2~8_RESULTA_bus\(4);
\send_ppm1|Mult2~13\ <= \send_ppm1|Mult2~8_RESULTA_bus\(5);
\send_ppm1|Mult2~14\ <= \send_ppm1|Mult2~8_RESULTA_bus\(6);
\send_ppm1|Mult2~15\ <= \send_ppm1|Mult2~8_RESULTA_bus\(7);
\send_ppm1|Mult2~16\ <= \send_ppm1|Mult2~8_RESULTA_bus\(8);
\send_ppm1|Mult2~17\ <= \send_ppm1|Mult2~8_RESULTA_bus\(9);
\send_ppm1|Mult2~18\ <= \send_ppm1|Mult2~8_RESULTA_bus\(10);
\send_ppm1|Mult2~19\ <= \send_ppm1|Mult2~8_RESULTA_bus\(11);
\send_ppm1|Mult2~20\ <= \send_ppm1|Mult2~8_RESULTA_bus\(12);
\send_ppm1|Mult2~21\ <= \send_ppm1|Mult2~8_RESULTA_bus\(13);
\send_ppm1|Mult2~22\ <= \send_ppm1|Mult2~8_RESULTA_bus\(14);
\send_ppm1|Mult2~23\ <= \send_ppm1|Mult2~8_RESULTA_bus\(15);
\send_ppm1|Mult2~24\ <= \send_ppm1|Mult2~8_RESULTA_bus\(16);
\send_ppm1|Mult2~25\ <= \send_ppm1|Mult2~8_RESULTA_bus\(17);
\send_ppm1|Mult2~26\ <= \send_ppm1|Mult2~8_RESULTA_bus\(18);
\send_ppm1|Mult2~27\ <= \send_ppm1|Mult2~8_RESULTA_bus\(19);
\send_ppm1|Mult2~28\ <= \send_ppm1|Mult2~8_RESULTA_bus\(20);
\send_ppm1|Mult2~29\ <= \send_ppm1|Mult2~8_RESULTA_bus\(21);
\send_ppm1|Mult2~30\ <= \send_ppm1|Mult2~8_RESULTA_bus\(22);
\send_ppm1|Mult2~31\ <= \send_ppm1|Mult2~8_RESULTA_bus\(23);
\send_ppm1|Mult2~32\ <= \send_ppm1|Mult2~8_RESULTA_bus\(24);
\send_ppm1|Mult2~33\ <= \send_ppm1|Mult2~8_RESULTA_bus\(25);
\send_ppm1|Mult2~34\ <= \send_ppm1|Mult2~8_RESULTA_bus\(26);
\send_ppm1|Mult2~35\ <= \send_ppm1|Mult2~8_RESULTA_bus\(27);
\send_ppm1|Mult2~36\ <= \send_ppm1|Mult2~8_RESULTA_bus\(28);
\send_ppm1|Mult2~37\ <= \send_ppm1|Mult2~8_RESULTA_bus\(29);
\send_ppm1|Mult2~38\ <= \send_ppm1|Mult2~8_RESULTA_bus\(30);
\send_ppm1|Mult2~39\ <= \send_ppm1|Mult2~8_RESULTA_bus\(31);
\send_ppm1|Mult2~40\ <= \send_ppm1|Mult2~8_RESULTA_bus\(32);
\send_ppm1|Mult2~41\ <= \send_ppm1|Mult2~8_RESULTA_bus\(33);
\send_ppm1|Mult2~42\ <= \send_ppm1|Mult2~8_RESULTA_bus\(34);
\send_ppm1|Mult2~43\ <= \send_ppm1|Mult2~8_RESULTA_bus\(35);
\send_ppm1|Mult2~44\ <= \send_ppm1|Mult2~8_RESULTA_bus\(36);
\send_ppm1|Mult2~45\ <= \send_ppm1|Mult2~8_RESULTA_bus\(37);
\send_ppm1|Mult2~46\ <= \send_ppm1|Mult2~8_RESULTA_bus\(38);
\send_ppm1|Mult2~47\ <= \send_ppm1|Mult2~8_RESULTA_bus\(39);
\send_ppm1|Mult2~48\ <= \send_ppm1|Mult2~8_RESULTA_bus\(40);
\send_ppm1|Mult2~49\ <= \send_ppm1|Mult2~8_RESULTA_bus\(41);
\send_ppm1|Mult2~50\ <= \send_ppm1|Mult2~8_RESULTA_bus\(42);
\send_ppm1|Mult2~51\ <= \send_ppm1|Mult2~8_RESULTA_bus\(43);
\send_ppm1|Mult2~52\ <= \send_ppm1|Mult2~8_RESULTA_bus\(44);
\send_ppm1|Mult2~53\ <= \send_ppm1|Mult2~8_RESULTA_bus\(45);
\send_ppm1|Mult2~54\ <= \send_ppm1|Mult2~8_RESULTA_bus\(46);
\send_ppm1|Mult2~55\ <= \send_ppm1|Mult2~8_RESULTA_bus\(47);
\send_ppm1|Mult2~56\ <= \send_ppm1|Mult2~8_RESULTA_bus\(48);
\send_ppm1|Mult2~57\ <= \send_ppm1|Mult2~8_RESULTA_bus\(49);
\send_ppm1|Mult2~58\ <= \send_ppm1|Mult2~8_RESULTA_bus\(50);
\send_ppm1|Mult2~59\ <= \send_ppm1|Mult2~8_RESULTA_bus\(51);
\send_ppm1|Mult2~60\ <= \send_ppm1|Mult2~8_RESULTA_bus\(52);
\send_ppm1|Mult2~61\ <= \send_ppm1|Mult2~8_RESULTA_bus\(53);
\send_ppm1|Mult2~62\ <= \send_ppm1|Mult2~8_RESULTA_bus\(54);
\send_ppm1|Mult2~63\ <= \send_ppm1|Mult2~8_RESULTA_bus\(55);
\send_ppm1|Mult2~64\ <= \send_ppm1|Mult2~8_RESULTA_bus\(56);
\send_ppm1|Mult2~65\ <= \send_ppm1|Mult2~8_RESULTA_bus\(57);
\send_ppm1|Mult2~66\ <= \send_ppm1|Mult2~8_RESULTA_bus\(58);
\send_ppm1|Mult2~67\ <= \send_ppm1|Mult2~8_RESULTA_bus\(59);
\send_ppm1|Mult2~68\ <= \send_ppm1|Mult2~8_RESULTA_bus\(60);
\send_ppm1|Mult2~69\ <= \send_ppm1|Mult2~8_RESULTA_bus\(61);
\send_ppm1|Mult2~70\ <= \send_ppm1|Mult2~8_RESULTA_bus\(62);
\send_ppm1|Mult2~71\ <= \send_ppm1|Mult2~8_RESULTA_bus\(63);

\send_ppm1|Mult1~8_ACLR_bus\ <= (gnd & gnd);

\send_ppm1|Mult1~8_CLK_bus\ <= (gnd & gnd & \i_clk_top~inputCLKENA0_outclk\);

\send_ppm1|Mult1~8_ENA_bus\ <= (vcc & vcc & \send_ppm1|reg~2_combout\);

\send_ppm1|Mult1~8_AX_bus\ <= (\i_sel_top[1]~input_o\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\ & \decoder1|Equal1~0_combout\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\);

\send_ppm1|Mult1~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & vcc & gnd);

\send_ppm1|Mult1~8_resulta\ <= \send_ppm1|Mult1~8_RESULTA_bus\(0);
\send_ppm1|Mult1~9\ <= \send_ppm1|Mult1~8_RESULTA_bus\(1);
\send_ppm1|Mult1~10\ <= \send_ppm1|Mult1~8_RESULTA_bus\(2);
\send_ppm1|Mult1~11\ <= \send_ppm1|Mult1~8_RESULTA_bus\(3);
\send_ppm1|Mult1~12\ <= \send_ppm1|Mult1~8_RESULTA_bus\(4);
\send_ppm1|Mult1~13\ <= \send_ppm1|Mult1~8_RESULTA_bus\(5);
\send_ppm1|Mult1~14\ <= \send_ppm1|Mult1~8_RESULTA_bus\(6);
\send_ppm1|Mult1~15\ <= \send_ppm1|Mult1~8_RESULTA_bus\(7);
\send_ppm1|Mult1~16\ <= \send_ppm1|Mult1~8_RESULTA_bus\(8);
\send_ppm1|Mult1~17\ <= \send_ppm1|Mult1~8_RESULTA_bus\(9);
\send_ppm1|Mult1~18\ <= \send_ppm1|Mult1~8_RESULTA_bus\(10);
\send_ppm1|Mult1~19\ <= \send_ppm1|Mult1~8_RESULTA_bus\(11);
\send_ppm1|Mult1~20\ <= \send_ppm1|Mult1~8_RESULTA_bus\(12);
\send_ppm1|Mult1~21\ <= \send_ppm1|Mult1~8_RESULTA_bus\(13);
\send_ppm1|Mult1~22\ <= \send_ppm1|Mult1~8_RESULTA_bus\(14);
\send_ppm1|Mult1~23\ <= \send_ppm1|Mult1~8_RESULTA_bus\(15);
\send_ppm1|Mult1~24\ <= \send_ppm1|Mult1~8_RESULTA_bus\(16);
\send_ppm1|Mult1~25\ <= \send_ppm1|Mult1~8_RESULTA_bus\(17);
\send_ppm1|Mult1~26\ <= \send_ppm1|Mult1~8_RESULTA_bus\(18);
\send_ppm1|Mult1~27\ <= \send_ppm1|Mult1~8_RESULTA_bus\(19);
\send_ppm1|Mult1~28\ <= \send_ppm1|Mult1~8_RESULTA_bus\(20);
\send_ppm1|Mult1~29\ <= \send_ppm1|Mult1~8_RESULTA_bus\(21);
\send_ppm1|Mult1~30\ <= \send_ppm1|Mult1~8_RESULTA_bus\(22);
\send_ppm1|Mult1~31\ <= \send_ppm1|Mult1~8_RESULTA_bus\(23);
\send_ppm1|Mult1~32\ <= \send_ppm1|Mult1~8_RESULTA_bus\(24);
\send_ppm1|Mult1~33\ <= \send_ppm1|Mult1~8_RESULTA_bus\(25);
\send_ppm1|Mult1~34\ <= \send_ppm1|Mult1~8_RESULTA_bus\(26);
\send_ppm1|Mult1~35\ <= \send_ppm1|Mult1~8_RESULTA_bus\(27);
\send_ppm1|Mult1~36\ <= \send_ppm1|Mult1~8_RESULTA_bus\(28);
\send_ppm1|Mult1~37\ <= \send_ppm1|Mult1~8_RESULTA_bus\(29);
\send_ppm1|Mult1~38\ <= \send_ppm1|Mult1~8_RESULTA_bus\(30);
\send_ppm1|Mult1~39\ <= \send_ppm1|Mult1~8_RESULTA_bus\(31);
\send_ppm1|Mult1~40\ <= \send_ppm1|Mult1~8_RESULTA_bus\(32);
\send_ppm1|Mult1~41\ <= \send_ppm1|Mult1~8_RESULTA_bus\(33);
\send_ppm1|Mult1~42\ <= \send_ppm1|Mult1~8_RESULTA_bus\(34);
\send_ppm1|Mult1~43\ <= \send_ppm1|Mult1~8_RESULTA_bus\(35);
\send_ppm1|Mult1~44\ <= \send_ppm1|Mult1~8_RESULTA_bus\(36);
\send_ppm1|Mult1~45\ <= \send_ppm1|Mult1~8_RESULTA_bus\(37);
\send_ppm1|Mult1~46\ <= \send_ppm1|Mult1~8_RESULTA_bus\(38);
\send_ppm1|Mult1~47\ <= \send_ppm1|Mult1~8_RESULTA_bus\(39);
\send_ppm1|Mult1~48\ <= \send_ppm1|Mult1~8_RESULTA_bus\(40);
\send_ppm1|Mult1~49\ <= \send_ppm1|Mult1~8_RESULTA_bus\(41);
\send_ppm1|Mult1~50\ <= \send_ppm1|Mult1~8_RESULTA_bus\(42);
\send_ppm1|Mult1~51\ <= \send_ppm1|Mult1~8_RESULTA_bus\(43);
\send_ppm1|Mult1~52\ <= \send_ppm1|Mult1~8_RESULTA_bus\(44);
\send_ppm1|Mult1~53\ <= \send_ppm1|Mult1~8_RESULTA_bus\(45);
\send_ppm1|Mult1~54\ <= \send_ppm1|Mult1~8_RESULTA_bus\(46);
\send_ppm1|Mult1~55\ <= \send_ppm1|Mult1~8_RESULTA_bus\(47);
\send_ppm1|Mult1~56\ <= \send_ppm1|Mult1~8_RESULTA_bus\(48);
\send_ppm1|Mult1~57\ <= \send_ppm1|Mult1~8_RESULTA_bus\(49);
\send_ppm1|Mult1~58\ <= \send_ppm1|Mult1~8_RESULTA_bus\(50);
\send_ppm1|Mult1~59\ <= \send_ppm1|Mult1~8_RESULTA_bus\(51);
\send_ppm1|Mult1~60\ <= \send_ppm1|Mult1~8_RESULTA_bus\(52);
\send_ppm1|Mult1~61\ <= \send_ppm1|Mult1~8_RESULTA_bus\(53);
\send_ppm1|Mult1~62\ <= \send_ppm1|Mult1~8_RESULTA_bus\(54);
\send_ppm1|Mult1~63\ <= \send_ppm1|Mult1~8_RESULTA_bus\(55);
\send_ppm1|Mult1~64\ <= \send_ppm1|Mult1~8_RESULTA_bus\(56);
\send_ppm1|Mult1~65\ <= \send_ppm1|Mult1~8_RESULTA_bus\(57);
\send_ppm1|Mult1~66\ <= \send_ppm1|Mult1~8_RESULTA_bus\(58);
\send_ppm1|Mult1~67\ <= \send_ppm1|Mult1~8_RESULTA_bus\(59);
\send_ppm1|Mult1~68\ <= \send_ppm1|Mult1~8_RESULTA_bus\(60);
\send_ppm1|Mult1~69\ <= \send_ppm1|Mult1~8_RESULTA_bus\(61);
\send_ppm1|Mult1~70\ <= \send_ppm1|Mult1~8_RESULTA_bus\(62);
\send_ppm1|Mult1~71\ <= \send_ppm1|Mult1~8_RESULTA_bus\(63);

\send_ppm1|Mult3~8_ACLR_bus\ <= (gnd & gnd);

\send_ppm1|Mult3~8_CLK_bus\ <= (gnd & gnd & \i_clk_top~inputCLKENA0_outclk\);

\send_ppm1|Mult3~8_ENA_bus\ <= (vcc & vcc & \send_ppm1|reg~2_combout\);

\send_ppm1|Mult3~8_AX_bus\ <= (\i_sel_top[1]~input_o\ & \i_sel_top[0]~input_o\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\ & \decoder1|Equal1~0_combout\ & \decoder1|Equal1~0_combout\ & \i_sel_top[0]~input_o\);

\send_ppm1|Mult3~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & vcc & gnd);

\send_ppm1|Mult3~8_resulta\ <= \send_ppm1|Mult3~8_RESULTA_bus\(0);
\send_ppm1|Mult3~9\ <= \send_ppm1|Mult3~8_RESULTA_bus\(1);
\send_ppm1|Mult3~10\ <= \send_ppm1|Mult3~8_RESULTA_bus\(2);
\send_ppm1|Mult3~11\ <= \send_ppm1|Mult3~8_RESULTA_bus\(3);
\send_ppm1|Mult3~12\ <= \send_ppm1|Mult3~8_RESULTA_bus\(4);
\send_ppm1|Mult3~13\ <= \send_ppm1|Mult3~8_RESULTA_bus\(5);
\send_ppm1|Mult3~14\ <= \send_ppm1|Mult3~8_RESULTA_bus\(6);
\send_ppm1|Mult3~15\ <= \send_ppm1|Mult3~8_RESULTA_bus\(7);
\send_ppm1|Mult3~16\ <= \send_ppm1|Mult3~8_RESULTA_bus\(8);
\send_ppm1|Mult3~17\ <= \send_ppm1|Mult3~8_RESULTA_bus\(9);
\send_ppm1|Mult3~18\ <= \send_ppm1|Mult3~8_RESULTA_bus\(10);
\send_ppm1|Mult3~19\ <= \send_ppm1|Mult3~8_RESULTA_bus\(11);
\send_ppm1|Mult3~20\ <= \send_ppm1|Mult3~8_RESULTA_bus\(12);
\send_ppm1|Mult3~21\ <= \send_ppm1|Mult3~8_RESULTA_bus\(13);
\send_ppm1|Mult3~22\ <= \send_ppm1|Mult3~8_RESULTA_bus\(14);
\send_ppm1|Mult3~23\ <= \send_ppm1|Mult3~8_RESULTA_bus\(15);
\send_ppm1|Mult3~24\ <= \send_ppm1|Mult3~8_RESULTA_bus\(16);
\send_ppm1|Mult3~25\ <= \send_ppm1|Mult3~8_RESULTA_bus\(17);
\send_ppm1|Mult3~26\ <= \send_ppm1|Mult3~8_RESULTA_bus\(18);
\send_ppm1|Mult3~27\ <= \send_ppm1|Mult3~8_RESULTA_bus\(19);
\send_ppm1|Mult3~28\ <= \send_ppm1|Mult3~8_RESULTA_bus\(20);
\send_ppm1|Mult3~29\ <= \send_ppm1|Mult3~8_RESULTA_bus\(21);
\send_ppm1|Mult3~30\ <= \send_ppm1|Mult3~8_RESULTA_bus\(22);
\send_ppm1|Mult3~31\ <= \send_ppm1|Mult3~8_RESULTA_bus\(23);
\send_ppm1|Mult3~32\ <= \send_ppm1|Mult3~8_RESULTA_bus\(24);
\send_ppm1|Mult3~33\ <= \send_ppm1|Mult3~8_RESULTA_bus\(25);
\send_ppm1|Mult3~34\ <= \send_ppm1|Mult3~8_RESULTA_bus\(26);
\send_ppm1|Mult3~35\ <= \send_ppm1|Mult3~8_RESULTA_bus\(27);
\send_ppm1|Mult3~36\ <= \send_ppm1|Mult3~8_RESULTA_bus\(28);
\send_ppm1|Mult3~37\ <= \send_ppm1|Mult3~8_RESULTA_bus\(29);
\send_ppm1|Mult3~38\ <= \send_ppm1|Mult3~8_RESULTA_bus\(30);
\send_ppm1|Mult3~39\ <= \send_ppm1|Mult3~8_RESULTA_bus\(31);
\send_ppm1|Mult3~40\ <= \send_ppm1|Mult3~8_RESULTA_bus\(32);
\send_ppm1|Mult3~41\ <= \send_ppm1|Mult3~8_RESULTA_bus\(33);
\send_ppm1|Mult3~42\ <= \send_ppm1|Mult3~8_RESULTA_bus\(34);
\send_ppm1|Mult3~43\ <= \send_ppm1|Mult3~8_RESULTA_bus\(35);
\send_ppm1|Mult3~44\ <= \send_ppm1|Mult3~8_RESULTA_bus\(36);
\send_ppm1|Mult3~45\ <= \send_ppm1|Mult3~8_RESULTA_bus\(37);
\send_ppm1|Mult3~46\ <= \send_ppm1|Mult3~8_RESULTA_bus\(38);
\send_ppm1|Mult3~47\ <= \send_ppm1|Mult3~8_RESULTA_bus\(39);
\send_ppm1|Mult3~48\ <= \send_ppm1|Mult3~8_RESULTA_bus\(40);
\send_ppm1|Mult3~49\ <= \send_ppm1|Mult3~8_RESULTA_bus\(41);
\send_ppm1|Mult3~50\ <= \send_ppm1|Mult3~8_RESULTA_bus\(42);
\send_ppm1|Mult3~51\ <= \send_ppm1|Mult3~8_RESULTA_bus\(43);
\send_ppm1|Mult3~52\ <= \send_ppm1|Mult3~8_RESULTA_bus\(44);
\send_ppm1|Mult3~53\ <= \send_ppm1|Mult3~8_RESULTA_bus\(45);
\send_ppm1|Mult3~54\ <= \send_ppm1|Mult3~8_RESULTA_bus\(46);
\send_ppm1|Mult3~55\ <= \send_ppm1|Mult3~8_RESULTA_bus\(47);
\send_ppm1|Mult3~56\ <= \send_ppm1|Mult3~8_RESULTA_bus\(48);
\send_ppm1|Mult3~57\ <= \send_ppm1|Mult3~8_RESULTA_bus\(49);
\send_ppm1|Mult3~58\ <= \send_ppm1|Mult3~8_RESULTA_bus\(50);
\send_ppm1|Mult3~59\ <= \send_ppm1|Mult3~8_RESULTA_bus\(51);
\send_ppm1|Mult3~60\ <= \send_ppm1|Mult3~8_RESULTA_bus\(52);
\send_ppm1|Mult3~61\ <= \send_ppm1|Mult3~8_RESULTA_bus\(53);
\send_ppm1|Mult3~62\ <= \send_ppm1|Mult3~8_RESULTA_bus\(54);
\send_ppm1|Mult3~63\ <= \send_ppm1|Mult3~8_RESULTA_bus\(55);
\send_ppm1|Mult3~64\ <= \send_ppm1|Mult3~8_RESULTA_bus\(56);
\send_ppm1|Mult3~65\ <= \send_ppm1|Mult3~8_RESULTA_bus\(57);
\send_ppm1|Mult3~66\ <= \send_ppm1|Mult3~8_RESULTA_bus\(58);
\send_ppm1|Mult3~67\ <= \send_ppm1|Mult3~8_RESULTA_bus\(59);
\send_ppm1|Mult3~68\ <= \send_ppm1|Mult3~8_RESULTA_bus\(60);
\send_ppm1|Mult3~69\ <= \send_ppm1|Mult3~8_RESULTA_bus\(61);
\send_ppm1|Mult3~70\ <= \send_ppm1|Mult3~8_RESULTA_bus\(62);
\send_ppm1|Mult3~71\ <= \send_ppm1|Mult3~8_RESULTA_bus\(63);
\send_ppm1|ALT_INV_Add11~21_sumout\ <= NOT \send_ppm1|Add11~21_sumout\;
\send_ppm1|ALT_INV_Add11~17_sumout\ <= NOT \send_ppm1|Add11~17_sumout\;
\send_ppm1|ALT_INV_Add11~13_sumout\ <= NOT \send_ppm1|Add11~13_sumout\;
\send_ppm1|ALT_INV_Add11~9_sumout\ <= NOT \send_ppm1|Add11~9_sumout\;
\send_ppm1|ALT_INV_Add11~5_sumout\ <= NOT \send_ppm1|Add11~5_sumout\;
\send_ppm1|ALT_INV_Add11~1_sumout\ <= NOT \send_ppm1|Add11~1_sumout\;
\send_ppm1|ALT_INV_Add6~53_sumout\ <= NOT \send_ppm1|Add6~53_sumout\;
\send_ppm1|ALT_INV_Add6~49_sumout\ <= NOT \send_ppm1|Add6~49_sumout\;
\send_ppm1|ALT_INV_Add6~45_sumout\ <= NOT \send_ppm1|Add6~45_sumout\;
\send_ppm1|ALT_INV_Add6~41_sumout\ <= NOT \send_ppm1|Add6~41_sumout\;
\send_ppm1|ALT_INV_Add6~37_sumout\ <= NOT \send_ppm1|Add6~37_sumout\;
\send_ppm1|ALT_INV_Add6~33_sumout\ <= NOT \send_ppm1|Add6~33_sumout\;
\send_ppm1|ALT_INV_Add6~29_sumout\ <= NOT \send_ppm1|Add6~29_sumout\;
\send_ppm1|ALT_INV_Add6~25_sumout\ <= NOT \send_ppm1|Add6~25_sumout\;
\send_ppm1|ALT_INV_Add6~21_sumout\ <= NOT \send_ppm1|Add6~21_sumout\;
\send_ppm1|ALT_INV_Add6~17_sumout\ <= NOT \send_ppm1|Add6~17_sumout\;
\send_ppm1|ALT_INV_Mult3~22\ <= NOT \send_ppm1|Mult3~22\;
\send_ppm1|ALT_INV_Mult3~21\ <= NOT \send_ppm1|Mult3~21\;
\send_ppm1|ALT_INV_Mult3~20\ <= NOT \send_ppm1|Mult3~20\;
\send_ppm1|ALT_INV_Mult3~19\ <= NOT \send_ppm1|Mult3~19\;
\send_ppm1|ALT_INV_Mult3~18\ <= NOT \send_ppm1|Mult3~18\;
\send_ppm1|ALT_INV_Mult3~17\ <= NOT \send_ppm1|Mult3~17\;
\send_ppm1|ALT_INV_Mult3~16\ <= NOT \send_ppm1|Mult3~16\;
\send_ppm1|ALT_INV_Mult3~15\ <= NOT \send_ppm1|Mult3~15\;
\send_ppm1|ALT_INV_Mult3~14\ <= NOT \send_ppm1|Mult3~14\;
\send_ppm1|ALT_INV_Mult3~13\ <= NOT \send_ppm1|Mult3~13\;
\send_ppm1|ALT_INV_Mult3~12\ <= NOT \send_ppm1|Mult3~12\;
\send_ppm1|ALT_INV_Mult3~11\ <= NOT \send_ppm1|Mult3~11\;
\send_ppm1|ALT_INV_Mult3~10\ <= NOT \send_ppm1|Mult3~10\;
\send_ppm1|ALT_INV_Mult3~9\ <= NOT \send_ppm1|Mult3~9\;
\send_ppm1|ALT_INV_Mult3~8_resulta\ <= NOT \send_ppm1|Mult3~8_resulta\;
\send_ppm1|ALT_INV_Add6~13_sumout\ <= NOT \send_ppm1|Add6~13_sumout\;
\send_ppm1|ALT_INV_Add6~9_sumout\ <= NOT \send_ppm1|Add6~9_sumout\;
\send_ppm1|ALT_INV_Add6~5_sumout\ <= NOT \send_ppm1|Add6~5_sumout\;
\send_ppm1|ALT_INV_Add6~1_sumout\ <= NOT \send_ppm1|Add6~1_sumout\;
\send_ppm1|ALT_INV_Add2~53_sumout\ <= NOT \send_ppm1|Add2~53_sumout\;
\send_ppm1|ALT_INV_Add2~49_sumout\ <= NOT \send_ppm1|Add2~49_sumout\;
\send_ppm1|ALT_INV_Add2~45_sumout\ <= NOT \send_ppm1|Add2~45_sumout\;
\send_ppm1|ALT_INV_Add2~41_sumout\ <= NOT \send_ppm1|Add2~41_sumout\;
\send_ppm1|ALT_INV_Add2~37_sumout\ <= NOT \send_ppm1|Add2~37_sumout\;
\send_ppm1|ALT_INV_Add2~33_sumout\ <= NOT \send_ppm1|Add2~33_sumout\;
\send_ppm1|ALT_INV_Add2~29_sumout\ <= NOT \send_ppm1|Add2~29_sumout\;
\send_ppm1|ALT_INV_Add2~25_sumout\ <= NOT \send_ppm1|Add2~25_sumout\;
\send_ppm1|ALT_INV_Add2~21_sumout\ <= NOT \send_ppm1|Add2~21_sumout\;
\send_ppm1|ALT_INV_Mult1~22\ <= NOT \send_ppm1|Mult1~22\;
\send_ppm1|ALT_INV_Mult1~21\ <= NOT \send_ppm1|Mult1~21\;
\send_ppm1|ALT_INV_Mult1~20\ <= NOT \send_ppm1|Mult1~20\;
\send_ppm1|ALT_INV_Mult1~19\ <= NOT \send_ppm1|Mult1~19\;
\send_ppm1|ALT_INV_Mult1~18\ <= NOT \send_ppm1|Mult1~18\;
\send_ppm1|ALT_INV_Mult1~17\ <= NOT \send_ppm1|Mult1~17\;
\send_ppm1|ALT_INV_Mult1~16\ <= NOT \send_ppm1|Mult1~16\;
\send_ppm1|ALT_INV_Mult1~15\ <= NOT \send_ppm1|Mult1~15\;
\send_ppm1|ALT_INV_Mult1~14\ <= NOT \send_ppm1|Mult1~14\;
\send_ppm1|ALT_INV_Mult1~13\ <= NOT \send_ppm1|Mult1~13\;
\send_ppm1|ALT_INV_Mult1~12\ <= NOT \send_ppm1|Mult1~12\;
\send_ppm1|ALT_INV_Mult1~11\ <= NOT \send_ppm1|Mult1~11\;
\send_ppm1|ALT_INV_Mult1~10\ <= NOT \send_ppm1|Mult1~10\;
\send_ppm1|ALT_INV_Mult1~9\ <= NOT \send_ppm1|Mult1~9\;
\send_ppm1|ALT_INV_Mult1~8_resulta\ <= NOT \send_ppm1|Mult1~8_resulta\;
\send_ppm1|ALT_INV_Add2~17_sumout\ <= NOT \send_ppm1|Add2~17_sumout\;
\send_ppm1|ALT_INV_Add2~13_sumout\ <= NOT \send_ppm1|Add2~13_sumout\;
\send_ppm1|ALT_INV_Add2~9_sumout\ <= NOT \send_ppm1|Add2~9_sumout\;
\send_ppm1|ALT_INV_Add2~5_sumout\ <= NOT \send_ppm1|Add2~5_sumout\;
\send_ppm1|ALT_INV_Add2~1_sumout\ <= NOT \send_ppm1|Add2~1_sumout\;
\send_ppm1|ALT_INV_Add4~53_sumout\ <= NOT \send_ppm1|Add4~53_sumout\;
\send_ppm1|ALT_INV_Add4~49_sumout\ <= NOT \send_ppm1|Add4~49_sumout\;
\send_ppm1|ALT_INV_Add4~45_sumout\ <= NOT \send_ppm1|Add4~45_sumout\;
\send_ppm1|ALT_INV_Add4~41_sumout\ <= NOT \send_ppm1|Add4~41_sumout\;
\send_ppm1|ALT_INV_Add4~37_sumout\ <= NOT \send_ppm1|Add4~37_sumout\;
\send_ppm1|ALT_INV_Add4~33_sumout\ <= NOT \send_ppm1|Add4~33_sumout\;
\send_ppm1|ALT_INV_Add4~29_sumout\ <= NOT \send_ppm1|Add4~29_sumout\;
\send_ppm1|ALT_INV_Add4~25_sumout\ <= NOT \send_ppm1|Add4~25_sumout\;
\send_ppm1|ALT_INV_Add4~21_sumout\ <= NOT \send_ppm1|Add4~21_sumout\;
\send_ppm1|ALT_INV_Mult2~22\ <= NOT \send_ppm1|Mult2~22\;
\send_ppm1|ALT_INV_Mult2~21\ <= NOT \send_ppm1|Mult2~21\;
\send_ppm1|ALT_INV_Mult2~20\ <= NOT \send_ppm1|Mult2~20\;
\send_ppm1|ALT_INV_Mult2~19\ <= NOT \send_ppm1|Mult2~19\;
\send_ppm1|ALT_INV_Mult2~18\ <= NOT \send_ppm1|Mult2~18\;
\send_ppm1|ALT_INV_Mult2~17\ <= NOT \send_ppm1|Mult2~17\;
\send_ppm1|ALT_INV_Mult2~16\ <= NOT \send_ppm1|Mult2~16\;
\send_ppm1|ALT_INV_Mult2~15\ <= NOT \send_ppm1|Mult2~15\;
\send_ppm1|ALT_INV_Mult2~14\ <= NOT \send_ppm1|Mult2~14\;
\send_ppm1|ALT_INV_Mult2~13\ <= NOT \send_ppm1|Mult2~13\;
\send_ppm1|ALT_INV_Mult2~12\ <= NOT \send_ppm1|Mult2~12\;
\send_ppm1|ALT_INV_Mult2~11\ <= NOT \send_ppm1|Mult2~11\;
\send_ppm1|ALT_INV_Mult2~10\ <= NOT \send_ppm1|Mult2~10\;
\send_ppm1|ALT_INV_Mult2~9\ <= NOT \send_ppm1|Mult2~9\;
\send_ppm1|ALT_INV_Mult2~8_resulta\ <= NOT \send_ppm1|Mult2~8_resulta\;
\send_ppm1|ALT_INV_Add4~17_sumout\ <= NOT \send_ppm1|Add4~17_sumout\;
\send_ppm1|ALT_INV_Add4~13_sumout\ <= NOT \send_ppm1|Add4~13_sumout\;
\send_ppm1|ALT_INV_Add4~9_sumout\ <= NOT \send_ppm1|Add4~9_sumout\;
\send_ppm1|ALT_INV_Add4~5_sumout\ <= NOT \send_ppm1|Add4~5_sumout\;
\send_ppm1|ALT_INV_Add4~1_sumout\ <= NOT \send_ppm1|Add4~1_sumout\;
\send_ppm1|ALT_INV_Add0~53_sumout\ <= NOT \send_ppm1|Add0~53_sumout\;
\send_ppm1|ALT_INV_Add0~49_sumout\ <= NOT \send_ppm1|Add0~49_sumout\;
\send_ppm1|ALT_INV_Add0~45_sumout\ <= NOT \send_ppm1|Add0~45_sumout\;
\send_ppm1|ALT_INV_Add0~41_sumout\ <= NOT \send_ppm1|Add0~41_sumout\;
\send_ppm1|ALT_INV_Add0~37_sumout\ <= NOT \send_ppm1|Add0~37_sumout\;
\send_ppm1|ALT_INV_Add0~33_sumout\ <= NOT \send_ppm1|Add0~33_sumout\;
\send_ppm1|ALT_INV_Add0~29_sumout\ <= NOT \send_ppm1|Add0~29_sumout\;
\send_ppm1|ALT_INV_Add0~25_sumout\ <= NOT \send_ppm1|Add0~25_sumout\;
\send_ppm1|ALT_INV_Add0~21_sumout\ <= NOT \send_ppm1|Add0~21_sumout\;
\send_ppm1|ALT_INV_Mult0~22\ <= NOT \send_ppm1|Mult0~22\;
\send_ppm1|ALT_INV_Mult0~21\ <= NOT \send_ppm1|Mult0~21\;
\send_ppm1|ALT_INV_Mult0~20\ <= NOT \send_ppm1|Mult0~20\;
\send_ppm1|ALT_INV_Mult0~19\ <= NOT \send_ppm1|Mult0~19\;
\send_ppm1|ALT_INV_Mult0~18\ <= NOT \send_ppm1|Mult0~18\;
\send_ppm1|ALT_INV_Mult0~17\ <= NOT \send_ppm1|Mult0~17\;
\send_ppm1|ALT_INV_Mult0~16\ <= NOT \send_ppm1|Mult0~16\;
\send_ppm1|ALT_INV_Mult0~15\ <= NOT \send_ppm1|Mult0~15\;
\send_ppm1|ALT_INV_Mult0~14\ <= NOT \send_ppm1|Mult0~14\;
\send_ppm1|ALT_INV_Mult0~13\ <= NOT \send_ppm1|Mult0~13\;
\send_ppm1|ALT_INV_Mult0~12\ <= NOT \send_ppm1|Mult0~12\;
\send_ppm1|ALT_INV_Mult0~11\ <= NOT \send_ppm1|Mult0~11\;
\send_ppm1|ALT_INV_Mult0~10\ <= NOT \send_ppm1|Mult0~10\;
\send_ppm1|ALT_INV_Mult0~9\ <= NOT \send_ppm1|Mult0~9\;
\send_ppm1|ALT_INV_Mult0~8_resulta\ <= NOT \send_ppm1|Mult0~8_resulta\;
\send_ppm1|ALT_INV_Add0~17_sumout\ <= NOT \send_ppm1|Add0~17_sumout\;
\send_ppm1|ALT_INV_Add0~13_sumout\ <= NOT \send_ppm1|Add0~13_sumout\;
\send_ppm1|ALT_INV_Add0~9_sumout\ <= NOT \send_ppm1|Add0~9_sumout\;
\send_ppm1|ALT_INV_Add0~5_sumout\ <= NOT \send_ppm1|Add0~5_sumout\;
\send_ppm1|ALT_INV_Add0~1_sumout\ <= NOT \send_ppm1|Add0~1_sumout\;
\send_ppm1|ALT_INV_Add12~77_sumout\ <= NOT \send_ppm1|Add12~77_sumout\;
\send_ppm1|ALT_INV_Add12~73_sumout\ <= NOT \send_ppm1|Add12~73_sumout\;
\send_ppm1|ALT_INV_Add12~69_sumout\ <= NOT \send_ppm1|Add12~69_sumout\;
\send_ppm1|ALT_INV_Add12~65_sumout\ <= NOT \send_ppm1|Add12~65_sumout\;
\send_ppm1|ALT_INV_Add12~61_sumout\ <= NOT \send_ppm1|Add12~61_sumout\;
\send_ppm1|ALT_INV_Add12~57_sumout\ <= NOT \send_ppm1|Add12~57_sumout\;
\send_ppm1|ALT_INV_Add12~53_sumout\ <= NOT \send_ppm1|Add12~53_sumout\;
\send_ppm1|ALT_INV_Add12~49_sumout\ <= NOT \send_ppm1|Add12~49_sumout\;
\send_ppm1|ALT_INV_Add12~45_sumout\ <= NOT \send_ppm1|Add12~45_sumout\;
\send_ppm1|ALT_INV_Add12~41_sumout\ <= NOT \send_ppm1|Add12~41_sumout\;
\send_ppm1|ALT_INV_Add12~37_sumout\ <= NOT \send_ppm1|Add12~37_sumout\;
\send_ppm1|ALT_INV_Add12~33_sumout\ <= NOT \send_ppm1|Add12~33_sumout\;
\send_ppm1|ALT_INV_Add12~29_sumout\ <= NOT \send_ppm1|Add12~29_sumout\;
\send_ppm1|ALT_INV_Add12~25_sumout\ <= NOT \send_ppm1|Add12~25_sumout\;
\send_ppm1|ALT_INV_Add12~21_sumout\ <= NOT \send_ppm1|Add12~21_sumout\;
\send_ppm1|ALT_INV_Add12~17_sumout\ <= NOT \send_ppm1|Add12~17_sumout\;
\send_ppm1|ALT_INV_Add12~13_sumout\ <= NOT \send_ppm1|Add12~13_sumout\;
\send_ppm1|ALT_INV_Add12~9_sumout\ <= NOT \send_ppm1|Add12~9_sumout\;
\send_ppm1|ALT_INV_Add12~5_sumout\ <= NOT \send_ppm1|Add12~5_sumout\;
\send_ppm1|ALT_INV_Add12~1_sumout\ <= NOT \send_ppm1|Add12~1_sumout\;
\send_ppm1|ALT_INV_Add7~65_sumout\ <= NOT \send_ppm1|Add7~65_sumout\;
\send_ppm1|ALT_INV_Add7~61_sumout\ <= NOT \send_ppm1|Add7~61_sumout\;
\send_ppm1|ALT_INV_Add7~57_sumout\ <= NOT \send_ppm1|Add7~57_sumout\;
\send_ppm1|ALT_INV_Add7~53_sumout\ <= NOT \send_ppm1|Add7~53_sumout\;
\send_ppm1|ALT_INV_Add7~49_sumout\ <= NOT \send_ppm1|Add7~49_sumout\;
\send_ppm1|ALT_INV_Add7~45_sumout\ <= NOT \send_ppm1|Add7~45_sumout\;
\send_ppm1|ALT_INV_Add7~41_sumout\ <= NOT \send_ppm1|Add7~41_sumout\;
\send_ppm1|ALT_INV_Add7~37_sumout\ <= NOT \send_ppm1|Add7~37_sumout\;
\send_ppm1|ALT_INV_Add7~33_sumout\ <= NOT \send_ppm1|Add7~33_sumout\;
\send_ppm1|ALT_INV_Add7~29_sumout\ <= NOT \send_ppm1|Add7~29_sumout\;
\send_ppm1|ALT_INV_Add7~25_sumout\ <= NOT \send_ppm1|Add7~25_sumout\;
\send_ppm1|ALT_INV_Add7~21_sumout\ <= NOT \send_ppm1|Add7~21_sumout\;
\send_ppm1|ALT_INV_Add7~17_sumout\ <= NOT \send_ppm1|Add7~17_sumout\;
\send_ppm1|ALT_INV_Add7~13_sumout\ <= NOT \send_ppm1|Add7~13_sumout\;
\send_ppm1|ALT_INV_Add7~9_sumout\ <= NOT \send_ppm1|Add7~9_sumout\;
\send_ppm1|ALT_INV_Add7~5_sumout\ <= NOT \send_ppm1|Add7~5_sumout\;
\send_ppm1|ALT_INV_Add7~1_sumout\ <= NOT \send_ppm1|Add7~1_sumout\;
\send_ppm1|ALT_INV_Add3~65_sumout\ <= NOT \send_ppm1|Add3~65_sumout\;
\send_ppm1|ALT_INV_Add3~61_sumout\ <= NOT \send_ppm1|Add3~61_sumout\;
\send_ppm1|ALT_INV_Add3~57_sumout\ <= NOT \send_ppm1|Add3~57_sumout\;
\send_ppm1|ALT_INV_Add3~53_sumout\ <= NOT \send_ppm1|Add3~53_sumout\;
\send_ppm1|ALT_INV_Add3~49_sumout\ <= NOT \send_ppm1|Add3~49_sumout\;
\send_ppm1|ALT_INV_Add3~45_sumout\ <= NOT \send_ppm1|Add3~45_sumout\;
\send_ppm1|ALT_INV_Add3~41_sumout\ <= NOT \send_ppm1|Add3~41_sumout\;
\send_ppm1|ALT_INV_Add3~37_sumout\ <= NOT \send_ppm1|Add3~37_sumout\;
\send_ppm1|ALT_INV_Add3~33_sumout\ <= NOT \send_ppm1|Add3~33_sumout\;
\send_ppm1|ALT_INV_Add3~29_sumout\ <= NOT \send_ppm1|Add3~29_sumout\;
\send_ppm1|ALT_INV_Add3~25_sumout\ <= NOT \send_ppm1|Add3~25_sumout\;
\send_ppm1|ALT_INV_Add3~21_sumout\ <= NOT \send_ppm1|Add3~21_sumout\;
\send_ppm1|ALT_INV_Add3~17_sumout\ <= NOT \send_ppm1|Add3~17_sumout\;
\send_ppm1|ALT_INV_Add3~13_sumout\ <= NOT \send_ppm1|Add3~13_sumout\;
\send_ppm1|ALT_INV_Add3~9_sumout\ <= NOT \send_ppm1|Add3~9_sumout\;
\send_ppm1|ALT_INV_Add3~5_sumout\ <= NOT \send_ppm1|Add3~5_sumout\;
\send_ppm1|ALT_INV_Add3~1_sumout\ <= NOT \send_ppm1|Add3~1_sumout\;
\send_ppm1|ALT_INV_Add5~65_sumout\ <= NOT \send_ppm1|Add5~65_sumout\;
\send_ppm1|ALT_INV_Add5~61_sumout\ <= NOT \send_ppm1|Add5~61_sumout\;
\send_ppm1|ALT_INV_Add5~57_sumout\ <= NOT \send_ppm1|Add5~57_sumout\;
\send_ppm1|ALT_INV_Add5~53_sumout\ <= NOT \send_ppm1|Add5~53_sumout\;
\send_ppm1|ALT_INV_Add5~49_sumout\ <= NOT \send_ppm1|Add5~49_sumout\;
\send_ppm1|ALT_INV_Add5~45_sumout\ <= NOT \send_ppm1|Add5~45_sumout\;
\send_ppm1|ALT_INV_Add5~41_sumout\ <= NOT \send_ppm1|Add5~41_sumout\;
\send_ppm1|ALT_INV_Add5~37_sumout\ <= NOT \send_ppm1|Add5~37_sumout\;
\send_ppm1|ALT_INV_Add5~33_sumout\ <= NOT \send_ppm1|Add5~33_sumout\;
\send_ppm1|ALT_INV_Add5~29_sumout\ <= NOT \send_ppm1|Add5~29_sumout\;
\send_ppm1|ALT_INV_Add5~25_sumout\ <= NOT \send_ppm1|Add5~25_sumout\;
\send_ppm1|ALT_INV_Add5~21_sumout\ <= NOT \send_ppm1|Add5~21_sumout\;
\send_ppm1|ALT_INV_Add5~17_sumout\ <= NOT \send_ppm1|Add5~17_sumout\;
\send_ppm1|ALT_INV_Add5~13_sumout\ <= NOT \send_ppm1|Add5~13_sumout\;
\send_ppm1|ALT_INV_Add5~9_sumout\ <= NOT \send_ppm1|Add5~9_sumout\;
\send_ppm1|ALT_INV_Add5~5_sumout\ <= NOT \send_ppm1|Add5~5_sumout\;
\send_ppm1|ALT_INV_Add5~1_sumout\ <= NOT \send_ppm1|Add5~1_sumout\;
\send_ppm1|ALT_INV_Add1~65_sumout\ <= NOT \send_ppm1|Add1~65_sumout\;
\send_ppm1|ALT_INV_Add1~61_sumout\ <= NOT \send_ppm1|Add1~61_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(5) <= NOT \send_ppm1|local_counter1|o_count\(5);
\send_ppm1|local_counter1|ALT_INV_o_count\(4) <= NOT \send_ppm1|local_counter1|o_count\(4);
\send_ppm1|ALT_INV_Add1~57_sumout\ <= NOT \send_ppm1|Add1~57_sumout\;
\send_ppm1|ALT_INV_Add1~53_sumout\ <= NOT \send_ppm1|Add1~53_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(15) <= NOT \send_ppm1|local_counter1|o_count\(15);
\send_ppm1|local_counter1|ALT_INV_o_count\(6) <= NOT \send_ppm1|local_counter1|o_count\(6);
\send_ppm1|ALT_INV_Add1~49_sumout\ <= NOT \send_ppm1|Add1~49_sumout\;
\send_ppm1|ALT_INV_Add1~45_sumout\ <= NOT \send_ppm1|Add1~45_sumout\;
\send_ppm1|ALT_INV_Add1~41_sumout\ <= NOT \send_ppm1|Add1~41_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(9) <= NOT \send_ppm1|local_counter1|o_count\(9);
\send_ppm1|local_counter1|ALT_INV_o_count\(8) <= NOT \send_ppm1|local_counter1|o_count\(8);
\send_ppm1|local_counter1|ALT_INV_o_count\(7) <= NOT \send_ppm1|local_counter1|o_count\(7);
\send_ppm1|ALT_INV_Add1~37_sumout\ <= NOT \send_ppm1|Add1~37_sumout\;
\send_ppm1|ALT_INV_Add1~33_sumout\ <= NOT \send_ppm1|Add1~33_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(2) <= NOT \send_ppm1|local_counter1|o_count\(2);
\send_ppm1|ALT_INV_Add1~29_sumout\ <= NOT \send_ppm1|Add1~29_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(1) <= NOT \send_ppm1|local_counter1|o_count\(1);
\send_ppm1|ALT_INV_Add1~25_sumout\ <= NOT \send_ppm1|Add1~25_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(0) <= NOT \send_ppm1|local_counter1|o_count\(0);
\send_ppm1|local_counter1|ALT_INV_o_count\(3) <= NOT \send_ppm1|local_counter1|o_count\(3);
\send_ppm1|ALT_INV_Add1~21_sumout\ <= NOT \send_ppm1|Add1~21_sumout\;
\send_ppm1|ALT_INV_Add1~17_sumout\ <= NOT \send_ppm1|Add1~17_sumout\;
\send_ppm1|ALT_INV_Add1~13_sumout\ <= NOT \send_ppm1|Add1~13_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(14) <= NOT \send_ppm1|local_counter1|o_count\(14);
\send_ppm1|local_counter1|ALT_INV_o_count\(11) <= NOT \send_ppm1|local_counter1|o_count\(11);
\send_ppm1|local_counter1|ALT_INV_o_count\(10) <= NOT \send_ppm1|local_counter1|o_count\(10);
\send_ppm1|ALT_INV_Add1~9_sumout\ <= NOT \send_ppm1|Add1~9_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(13) <= NOT \send_ppm1|local_counter1|o_count\(13);
\send_ppm1|ALT_INV_Add1~5_sumout\ <= NOT \send_ppm1|Add1~5_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(12) <= NOT \send_ppm1|local_counter1|o_count\(12);
\send_ppm1|ALT_INV_Add1~1_sumout\ <= NOT \send_ppm1|Add1~1_sumout\;
\send_ppm1|local_counter1|ALT_INV_o_count\(19) <= NOT \send_ppm1|local_counter1|o_count\(19);
\send_ppm1|local_counter1|ALT_INV_o_count\(18) <= NOT \send_ppm1|local_counter1|o_count\(18);
\send_ppm1|local_counter1|ALT_INV_o_count\(17) <= NOT \send_ppm1|local_counter1|o_count\(17);
\send_ppm1|local_counter1|ALT_INV_o_count\(16) <= NOT \send_ppm1|local_counter1|o_count\(16);
\ALT_INV_i_sel_top[0]~input_o\ <= NOT \i_sel_top[0]~input_o\;
\ALT_INV_i_sel_top[1]~input_o\ <= NOT \i_sel_top[1]~input_o\;
\ALT_INV_i_reset_n_top~input_o\ <= NOT \i_reset_n_top~input_o\;
\send_ppm1|ALT_INV_current_state~12_combout\ <= NOT \send_ppm1|current_state~12_combout\;
\send_ppm1|local_counter1|ALT_INV_o_count[9]~0_combout\ <= NOT \send_ppm1|local_counter1|o_count[9]~0_combout\;
\send_ppm1|ALT_INV_next_state~24_combout\ <= NOT \send_ppm1|next_state~24_combout\;
\send_ppm1|ALT_INV_next_state~23_combout\ <= NOT \send_ppm1|next_state~23_combout\;
\send_ppm1|ALT_INV_next_state~22_combout\ <= NOT \send_ppm1|next_state~22_combout\;
\send_ppm1|ALT_INV_Equal7~5_combout\ <= NOT \send_ppm1|Equal7~5_combout\;
\send_ppm1|ALT_INV_sig_state[2]~1_combout\ <= NOT \send_ppm1|sig_state[2]~1_combout\;
\send_ppm1|ALT_INV_Equal0~4_combout\ <= NOT \send_ppm1|Equal0~4_combout\;
\send_ppm1|ALT_INV_current_state~10_combout\ <= NOT \send_ppm1|current_state~10_combout\;
\send_ppm1|ALT_INV_Equal1~0_combout\ <= NOT \send_ppm1|Equal1~0_combout\;
\send_ppm1|ALT_INV_Equal9~8_combout\ <= NOT \send_ppm1|Equal9~8_combout\;
\send_ppm1|ALT_INV_Equal9~7_combout\ <= NOT \send_ppm1|Equal9~7_combout\;
\send_ppm1|ALT_INV_Equal9~6_combout\ <= NOT \send_ppm1|Equal9~6_combout\;
\send_ppm1|ALT_INV_Equal9~5_combout\ <= NOT \send_ppm1|Equal9~5_combout\;
\send_ppm1|ALT_INV_Equal9~4_combout\ <= NOT \send_ppm1|Equal9~4_combout\;
\send_ppm1|ALT_INV_Equal9~3_combout\ <= NOT \send_ppm1|Equal9~3_combout\;
\send_ppm1|ALT_INV_Equal9~2_combout\ <= NOT \send_ppm1|Equal9~2_combout\;
\send_ppm1|ALT_INV_Equal9~1_combout\ <= NOT \send_ppm1|Equal9~1_combout\;
\send_ppm1|ALT_INV_Equal9~0_combout\ <= NOT \send_ppm1|Equal9~0_combout\;
\send_ppm1|ALT_INV_current_state.synchro~q\ <= NOT \send_ppm1|current_state.synchro~q\;
\send_ppm1|ALT_INV_current_state~7_combout\ <= NOT \send_ppm1|current_state~7_combout\;
\send_ppm1|ALT_INV_Equal0~3_combout\ <= NOT \send_ppm1|Equal0~3_combout\;
\send_ppm1|ALT_INV_Equal0~2_combout\ <= NOT \send_ppm1|Equal0~2_combout\;
\send_ppm1|ALT_INV_Equal0~1_combout\ <= NOT \send_ppm1|Equal0~1_combout\;
\send_ppm1|ALT_INV_Equal0~0_combout\ <= NOT \send_ppm1|Equal0~0_combout\;
\send_ppm1|ALT_INV_combi~6_combout\ <= NOT \send_ppm1|combi~6_combout\;
\send_ppm1|ALT_INV_combi~5_combout\ <= NOT \send_ppm1|combi~5_combout\;
\send_ppm1|ALT_INV_Equal8~5_combout\ <= NOT \send_ppm1|Equal8~5_combout\;
\send_ppm1|ALT_INV_Equal8~4_combout\ <= NOT \send_ppm1|Equal8~4_combout\;
\send_ppm1|ALT_INV_combi~4_combout\ <= NOT \send_ppm1|combi~4_combout\;
\send_ppm1|ALT_INV_combi~3_combout\ <= NOT \send_ppm1|combi~3_combout\;
\send_ppm1|ALT_INV_combi~2_combout\ <= NOT \send_ppm1|combi~2_combout\;
\send_ppm1|ALT_INV_Equal8~3_combout\ <= NOT \send_ppm1|Equal8~3_combout\;
\send_ppm1|ALT_INV_Equal8~2_combout\ <= NOT \send_ppm1|Equal8~2_combout\;
\send_ppm1|ALT_INV_Equal8~1_combout\ <= NOT \send_ppm1|Equal8~1_combout\;
\send_ppm1|ALT_INV_combi~1_combout\ <= NOT \send_ppm1|combi~1_combout\;
\send_ppm1|ALT_INV_combi~0_combout\ <= NOT \send_ppm1|combi~0_combout\;
\send_ppm1|ALT_INV_Equal8~0_combout\ <= NOT \send_ppm1|Equal8~0_combout\;
\send_ppm1|ALT_INV_next_state~21_combout\ <= NOT \send_ppm1|next_state~21_combout\;
\send_ppm1|ALT_INV_next_state~20_combout\ <= NOT \send_ppm1|next_state~20_combout\;
\send_ppm1|ALT_INV_next_state~19_combout\ <= NOT \send_ppm1|next_state~19_combout\;
\send_ppm1|ALT_INV_next_state~18_combout\ <= NOT \send_ppm1|next_state~18_combout\;
\send_ppm1|ALT_INV_next_state~17_combout\ <= NOT \send_ppm1|next_state~17_combout\;
\send_ppm1|ALT_INV_next_state~16_combout\ <= NOT \send_ppm1|next_state~16_combout\;
\send_ppm1|ALT_INV_Equal5~5_combout\ <= NOT \send_ppm1|Equal5~5_combout\;
\send_ppm1|ALT_INV_Equal5~4_combout\ <= NOT \send_ppm1|Equal5~4_combout\;
\send_ppm1|ALT_INV_Equal5~3_combout\ <= NOT \send_ppm1|Equal5~3_combout\;
\send_ppm1|ALT_INV_Equal5~2_combout\ <= NOT \send_ppm1|Equal5~2_combout\;
\send_ppm1|ALT_INV_next_state~15_combout\ <= NOT \send_ppm1|next_state~15_combout\;
\send_ppm1|ALT_INV_next_state~14_combout\ <= NOT \send_ppm1|next_state~14_combout\;
\send_ppm1|ALT_INV_Equal5~1_combout\ <= NOT \send_ppm1|Equal5~1_combout\;
\send_ppm1|ALT_INV_Equal5~0_combout\ <= NOT \send_ppm1|Equal5~0_combout\;
\send_ppm1|ALT_INV_next_state~13_combout\ <= NOT \send_ppm1|next_state~13_combout\;
\send_ppm1|ALT_INV_next_state~12_combout\ <= NOT \send_ppm1|next_state~12_combout\;
\send_ppm1|ALT_INV_next_state~11_combout\ <= NOT \send_ppm1|next_state~11_combout\;
\send_ppm1|ALT_INV_next_state~10_combout\ <= NOT \send_ppm1|next_state~10_combout\;
\send_ppm1|ALT_INV_next_state~9_combout\ <= NOT \send_ppm1|next_state~9_combout\;
\send_ppm1|ALT_INV_Equal7~4_combout\ <= NOT \send_ppm1|Equal7~4_combout\;
\send_ppm1|ALT_INV_Equal7~3_combout\ <= NOT \send_ppm1|Equal7~3_combout\;
\send_ppm1|ALT_INV_Equal7~2_combout\ <= NOT \send_ppm1|Equal7~2_combout\;
\send_ppm1|ALT_INV_next_state~8_combout\ <= NOT \send_ppm1|next_state~8_combout\;
\send_ppm1|ALT_INV_next_state~7_combout\ <= NOT \send_ppm1|next_state~7_combout\;
\send_ppm1|ALT_INV_Equal7~1_combout\ <= NOT \send_ppm1|Equal7~1_combout\;
\send_ppm1|ALT_INV_Equal7~0_combout\ <= NOT \send_ppm1|Equal7~0_combout\;
\send_ppm1|ALT_INV_next_state~6_combout\ <= NOT \send_ppm1|next_state~6_combout\;
\send_ppm1|ALT_INV_next_state~5_combout\ <= NOT \send_ppm1|next_state~5_combout\;
\send_ppm1|ALT_INV_next_state~4_combout\ <= NOT \send_ppm1|next_state~4_combout\;
\send_ppm1|ALT_INV_next_state~3_combout\ <= NOT \send_ppm1|next_state~3_combout\;
\send_ppm1|ALT_INV_next_state~2_combout\ <= NOT \send_ppm1|next_state~2_combout\;
\send_ppm1|ALT_INV_Equal3~4_combout\ <= NOT \send_ppm1|Equal3~4_combout\;
\send_ppm1|ALT_INV_Equal3~3_combout\ <= NOT \send_ppm1|Equal3~3_combout\;
\send_ppm1|ALT_INV_Equal3~2_combout\ <= NOT \send_ppm1|Equal3~2_combout\;
\send_ppm1|ALT_INV_sig_state\(1) <= NOT \send_ppm1|sig_state\(1);
\send_ppm1|ALT_INV_next_state~1_combout\ <= NOT \send_ppm1|next_state~1_combout\;
\send_ppm1|ALT_INV_Equal3~1_combout\ <= NOT \send_ppm1|Equal3~1_combout\;
\send_ppm1|ALT_INV_Equal3~0_combout\ <= NOT \send_ppm1|Equal3~0_combout\;
\send_ppm1|ALT_INV_next_state~0_combout\ <= NOT \send_ppm1|next_state~0_combout\;
\send_ppm1|ALT_INV_sig_state\(0) <= NOT \send_ppm1|sig_state\(0);
\send_ppm1|ALT_INV_sig_state\(2) <= NOT \send_ppm1|sig_state\(2);
\send_ppm1|ALT_INV_current_state.pulse~q\ <= NOT \send_ppm1|current_state.pulse~q\;
\send_ppm1|ALT_INV_reg~2_combout\ <= NOT \send_ppm1|reg~2_combout\;
\send_ppm1|ALT_INV_current_state.fin_trame~q\ <= NOT \send_ppm1|current_state.fin_trame~q\;
\send_ppm1|ALT_INV_current_state.reset~q\ <= NOT \send_ppm1|current_state.reset~q\;
\send_ppm1|ALT_INV_current_state.tempo~q\ <= NOT \send_ppm1|current_state.tempo~q\;
\send_ppm1|ALT_INV_Add8~73_sumout\ <= NOT \send_ppm1|Add8~73_sumout\;
\send_ppm1|ALT_INV_Add8~69_sumout\ <= NOT \send_ppm1|Add8~69_sumout\;
\send_ppm1|ALT_INV_Add8~65_sumout\ <= NOT \send_ppm1|Add8~65_sumout\;
\send_ppm1|ALT_INV_Add8~61_sumout\ <= NOT \send_ppm1|Add8~61_sumout\;
\send_ppm1|ALT_INV_Add8~57_sumout\ <= NOT \send_ppm1|Add8~57_sumout\;
\send_ppm1|ALT_INV_Add8~53_sumout\ <= NOT \send_ppm1|Add8~53_sumout\;
\send_ppm1|ALT_INV_Add8~49_sumout\ <= NOT \send_ppm1|Add8~49_sumout\;
\send_ppm1|ALT_INV_Add8~45_sumout\ <= NOT \send_ppm1|Add8~45_sumout\;
\send_ppm1|ALT_INV_Add8~41_sumout\ <= NOT \send_ppm1|Add8~41_sumout\;
\send_ppm1|ALT_INV_Add8~37_sumout\ <= NOT \send_ppm1|Add8~37_sumout\;
\send_ppm1|ALT_INV_Add8~33_sumout\ <= NOT \send_ppm1|Add8~33_sumout\;
\send_ppm1|ALT_INV_Add8~29_sumout\ <= NOT \send_ppm1|Add8~29_sumout\;
\send_ppm1|ALT_INV_Add8~25_sumout\ <= NOT \send_ppm1|Add8~25_sumout\;
\send_ppm1|ALT_INV_Add8~21_sumout\ <= NOT \send_ppm1|Add8~21_sumout\;
\send_ppm1|ALT_INV_Add8~17_sumout\ <= NOT \send_ppm1|Add8~17_sumout\;
\send_ppm1|ALT_INV_Add8~13_sumout\ <= NOT \send_ppm1|Add8~13_sumout\;
\send_ppm1|ALT_INV_Add8~9_sumout\ <= NOT \send_ppm1|Add8~9_sumout\;
\send_ppm1|ALT_INV_Add10~77_sumout\ <= NOT \send_ppm1|Add10~77_sumout\;
\send_ppm1|ALT_INV_Add10~73_sumout\ <= NOT \send_ppm1|Add10~73_sumout\;
\send_ppm1|ALT_INV_Add10~69_sumout\ <= NOT \send_ppm1|Add10~69_sumout\;
\send_ppm1|ALT_INV_Add10~65_sumout\ <= NOT \send_ppm1|Add10~65_sumout\;
\send_ppm1|ALT_INV_Add10~61_sumout\ <= NOT \send_ppm1|Add10~61_sumout\;
\send_ppm1|ALT_INV_Add10~57_sumout\ <= NOT \send_ppm1|Add10~57_sumout\;
\send_ppm1|ALT_INV_Add10~53_sumout\ <= NOT \send_ppm1|Add10~53_sumout\;
\send_ppm1|ALT_INV_Add10~49_sumout\ <= NOT \send_ppm1|Add10~49_sumout\;
\send_ppm1|ALT_INV_Add10~45_sumout\ <= NOT \send_ppm1|Add10~45_sumout\;
\send_ppm1|ALT_INV_Add10~41_sumout\ <= NOT \send_ppm1|Add10~41_sumout\;
\send_ppm1|ALT_INV_Add10~37_sumout\ <= NOT \send_ppm1|Add10~37_sumout\;
\send_ppm1|ALT_INV_Add8~5_sumout\ <= NOT \send_ppm1|Add8~5_sumout\;
\send_ppm1|ALT_INV_Add8~1_sumout\ <= NOT \send_ppm1|Add8~1_sumout\;
\send_ppm1|ALT_INV_Add10~33_sumout\ <= NOT \send_ppm1|Add10~33_sumout\;
\send_ppm1|ALT_INV_Add10~29_sumout\ <= NOT \send_ppm1|Add10~29_sumout\;
\send_ppm1|ALT_INV_Add10~25_sumout\ <= NOT \send_ppm1|Add10~25_sumout\;
\send_ppm1|ALT_INV_Add10~21_sumout\ <= NOT \send_ppm1|Add10~21_sumout\;
\send_ppm1|ALT_INV_Add10~17_sumout\ <= NOT \send_ppm1|Add10~17_sumout\;
\send_ppm1|ALT_INV_Add10~13_sumout\ <= NOT \send_ppm1|Add10~13_sumout\;
\send_ppm1|ALT_INV_Add10~9_sumout\ <= NOT \send_ppm1|Add10~9_sumout\;
\send_ppm1|ALT_INV_Add11~69_sumout\ <= NOT \send_ppm1|Add11~69_sumout\;
\send_ppm1|ALT_INV_Add11~65_sumout\ <= NOT \send_ppm1|Add11~65_sumout\;
\send_ppm1|ALT_INV_Add11~61_sumout\ <= NOT \send_ppm1|Add11~61_sumout\;
\send_ppm1|ALT_INV_Add11~57_sumout\ <= NOT \send_ppm1|Add11~57_sumout\;
\send_ppm1|ALT_INV_Add11~53_sumout\ <= NOT \send_ppm1|Add11~53_sumout\;
\send_ppm1|ALT_INV_Add11~49_sumout\ <= NOT \send_ppm1|Add11~49_sumout\;
\send_ppm1|ALT_INV_Add11~45_sumout\ <= NOT \send_ppm1|Add11~45_sumout\;
\send_ppm1|ALT_INV_Add11~41_sumout\ <= NOT \send_ppm1|Add11~41_sumout\;
\send_ppm1|ALT_INV_Add11~37_sumout\ <= NOT \send_ppm1|Add11~37_sumout\;
\send_ppm1|ALT_INV_Add11~33_sumout\ <= NOT \send_ppm1|Add11~33_sumout\;
\send_ppm1|ALT_INV_Add11~29_sumout\ <= NOT \send_ppm1|Add11~29_sumout\;
\send_ppm1|ALT_INV_Add10~5_sumout\ <= NOT \send_ppm1|Add10~5_sumout\;
\send_ppm1|ALT_INV_Add10~1_sumout\ <= NOT \send_ppm1|Add10~1_sumout\;
\send_ppm1|ALT_INV_Add11~25_sumout\ <= NOT \send_ppm1|Add11~25_sumout\;

-- Location: IOOBUF_X64_Y0_N2
\o_ppm_top~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send_ppm1|sig_out_ppm~q\,
	devoe => ww_devoe,
	o => ww_o_ppm_top);

-- Location: IOIBUF_X32_Y0_N1
\i_clk_top~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk_top,
	o => \i_clk_top~input_o\);

-- Location: CLKCTRL_G6
\i_clk_top~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk_top~input_o\,
	outclk => \i_clk_top~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N18
\i_reset_n_top~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_reset_n_top,
	o => \i_reset_n_top~input_o\);

-- Location: LABCELL_X27_Y36_N0
\send_ppm1|local_counter1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~41_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(0) ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|local_counter1|Add0~42\ = CARRY(( \send_ppm1|local_counter1|o_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	cin => GND,
	sumout => \send_ppm1|local_counter1|Add0~41_sumout\,
	cout => \send_ppm1|local_counter1|Add0~42\);

-- Location: LABCELL_X27_Y36_N39
\send_ppm1|local_counter1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~21_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(13) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~18\ ))
-- \send_ppm1|local_counter1|Add0~22\ = CARRY(( \send_ppm1|local_counter1|o_count\(13) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	cin => \send_ppm1|local_counter1|Add0~18\,
	sumout => \send_ppm1|local_counter1|Add0~21_sumout\,
	cout => \send_ppm1|local_counter1|Add0~22\);

-- Location: LABCELL_X27_Y36_N42
\send_ppm1|local_counter1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~33_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(14) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~22\ ))
-- \send_ppm1|local_counter1|Add0~34\ = CARRY(( \send_ppm1|local_counter1|o_count\(14) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	cin => \send_ppm1|local_counter1|Add0~22\,
	sumout => \send_ppm1|local_counter1|Add0~33_sumout\,
	cout => \send_ppm1|local_counter1|Add0~34\);

-- Location: FF_X24_Y36_N11
\send_ppm1|local_counter1|o_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~33_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(14));

-- Location: LABCELL_X27_Y36_N45
\send_ppm1|local_counter1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~69_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(15) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~34\ ))
-- \send_ppm1|local_counter1|Add0~70\ = CARRY(( \send_ppm1|local_counter1|o_count\(15) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	cin => \send_ppm1|local_counter1|Add0~34\,
	sumout => \send_ppm1|local_counter1|Add0~69_sumout\,
	cout => \send_ppm1|local_counter1|Add0~70\);

-- Location: FF_X25_Y36_N53
\send_ppm1|local_counter1|o_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~69_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(15));

-- Location: LABCELL_X27_Y36_N48
\send_ppm1|local_counter1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~1_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(16) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~70\ ))
-- \send_ppm1|local_counter1|Add0~2\ = CARRY(( \send_ppm1|local_counter1|o_count\(16) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	cin => \send_ppm1|local_counter1|Add0~70\,
	sumout => \send_ppm1|local_counter1|Add0~1_sumout\,
	cout => \send_ppm1|local_counter1|Add0~2\);

-- Location: FF_X25_Y36_N20
\send_ppm1|local_counter1|o_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~1_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(16));

-- Location: LABCELL_X27_Y36_N51
\send_ppm1|local_counter1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~5_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(17) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~2\ ))
-- \send_ppm1|local_counter1|Add0~6\ = CARRY(( \send_ppm1|local_counter1|o_count\(17) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	cin => \send_ppm1|local_counter1|Add0~2\,
	sumout => \send_ppm1|local_counter1|Add0~5_sumout\,
	cout => \send_ppm1|local_counter1|Add0~6\);

-- Location: FF_X25_Y36_N44
\send_ppm1|local_counter1|o_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~5_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(17));

-- Location: LABCELL_X27_Y36_N54
\send_ppm1|local_counter1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~9_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(18) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~6\ ))
-- \send_ppm1|local_counter1|Add0~10\ = CARRY(( \send_ppm1|local_counter1|o_count\(18) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	cin => \send_ppm1|local_counter1|Add0~6\,
	sumout => \send_ppm1|local_counter1|Add0~9_sumout\,
	cout => \send_ppm1|local_counter1|Add0~10\);

-- Location: FF_X27_Y36_N56
\send_ppm1|local_counter1|o_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|local_counter1|Add0~9_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(18));

-- Location: LABCELL_X27_Y36_N57
\send_ppm1|local_counter1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~13_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(19) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	cin => \send_ppm1|local_counter1|Add0~10\,
	sumout => \send_ppm1|local_counter1|Add0~13_sumout\);

-- Location: FF_X25_Y36_N23
\send_ppm1|local_counter1|o_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~13_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(19));

-- Location: LABCELL_X24_Y34_N6
\send_ppm1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal0~2_combout\ = ( !\send_ppm1|local_counter1|o_count\(16) & ( !\send_ppm1|local_counter1|o_count\(19) & ( (!\send_ppm1|local_counter1|o_count\(17) & (!\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|local_counter1|o_count\(8) & 
-- !\send_ppm1|local_counter1|o_count\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	combout => \send_ppm1|Equal0~2_combout\);

-- Location: MLABCELL_X25_Y36_N15
\send_ppm1|sig_state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_state~3_combout\ = (\send_ppm1|current_state.tempo~q\ & (\i_reset_n_top~input_o\ & !\send_ppm1|sig_state\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.tempo~q\,
	datac => \ALT_INV_i_reset_n_top~input_o\,
	datad => \send_ppm1|ALT_INV_sig_state\(0),
	combout => \send_ppm1|sig_state~3_combout\);

-- Location: IOIBUF_X4_Y0_N18
\i_sel_top[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sel_top(0),
	o => \i_sel_top[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\i_sel_top[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sel_top(1),
	o => \i_sel_top[1]~input_o\);

-- Location: LABCELL_X19_Y26_N15
\decoder1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|Equal1~0_combout\ = ( \i_sel_top[0]~input_o\ & ( \i_sel_top[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_sel_top[1]~input_o\,
	dataf => \ALT_INV_i_sel_top[0]~input_o\,
	combout => \decoder1|Equal1~0_combout\);

-- Location: DSP_X20_Y33_N0
\send_ppm1|Mult3~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \send_ppm1|Mult3~8_ACLR_bus\,
	clk => \send_ppm1|Mult3~8_CLK_bus\,
	ena => \send_ppm1|Mult3~8_ENA_bus\,
	ax => \send_ppm1|Mult3~8_AX_bus\,
	ay => \send_ppm1|Mult3~8_AY_bus\,
	resulta => \send_ppm1|Mult3~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y33_N0
\send_ppm1|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~17_sumout\ = SUM(( \send_ppm1|Mult3~10\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add6~18\ = CARRY(( \send_ppm1|Mult3~10\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~10\,
	cin => GND,
	sumout => \send_ppm1|Add6~17_sumout\,
	cout => \send_ppm1|Add6~18\);

-- Location: MLABCELL_X21_Y33_N3
\send_ppm1|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~21_sumout\ = SUM(( \send_ppm1|Mult3~11\ ) + ( VCC ) + ( \send_ppm1|Add6~18\ ))
-- \send_ppm1|Add6~22\ = CARRY(( \send_ppm1|Mult3~11\ ) + ( VCC ) + ( \send_ppm1|Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~11\,
	cin => \send_ppm1|Add6~18\,
	sumout => \send_ppm1|Add6~21_sumout\,
	cout => \send_ppm1|Add6~22\);

-- Location: MLABCELL_X21_Y33_N6
\send_ppm1|Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~41_sumout\ = SUM(( \send_ppm1|Mult3~12\ ) + ( VCC ) + ( \send_ppm1|Add6~22\ ))
-- \send_ppm1|Add6~42\ = CARRY(( \send_ppm1|Mult3~12\ ) + ( VCC ) + ( \send_ppm1|Add6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult3~12\,
	cin => \send_ppm1|Add6~22\,
	sumout => \send_ppm1|Add6~41_sumout\,
	cout => \send_ppm1|Add6~42\);

-- Location: MLABCELL_X21_Y33_N9
\send_ppm1|Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~45_sumout\ = SUM(( \send_ppm1|Mult3~13\ ) + ( GND ) + ( \send_ppm1|Add6~42\ ))
-- \send_ppm1|Add6~46\ = CARRY(( \send_ppm1|Mult3~13\ ) + ( GND ) + ( \send_ppm1|Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~13\,
	cin => \send_ppm1|Add6~42\,
	sumout => \send_ppm1|Add6~45_sumout\,
	cout => \send_ppm1|Add6~46\);

-- Location: MLABCELL_X21_Y33_N12
\send_ppm1|Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~49_sumout\ = SUM(( \send_ppm1|Mult3~14\ ) + ( VCC ) + ( \send_ppm1|Add6~46\ ))
-- \send_ppm1|Add6~50\ = CARRY(( \send_ppm1|Mult3~14\ ) + ( VCC ) + ( \send_ppm1|Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult3~14\,
	cin => \send_ppm1|Add6~46\,
	sumout => \send_ppm1|Add6~49_sumout\,
	cout => \send_ppm1|Add6~50\);

-- Location: MLABCELL_X21_Y33_N15
\send_ppm1|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~29_sumout\ = SUM(( \send_ppm1|Mult3~15\ ) + ( GND ) + ( \send_ppm1|Add6~50\ ))
-- \send_ppm1|Add6~30\ = CARRY(( \send_ppm1|Mult3~15\ ) + ( GND ) + ( \send_ppm1|Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~15\,
	cin => \send_ppm1|Add6~50\,
	sumout => \send_ppm1|Add6~29_sumout\,
	cout => \send_ppm1|Add6~30\);

-- Location: MLABCELL_X21_Y33_N18
\send_ppm1|Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~33_sumout\ = SUM(( \send_ppm1|Mult3~16\ ) + ( GND ) + ( \send_ppm1|Add6~30\ ))
-- \send_ppm1|Add6~34\ = CARRY(( \send_ppm1|Mult3~16\ ) + ( GND ) + ( \send_ppm1|Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~16\,
	cin => \send_ppm1|Add6~30\,
	sumout => \send_ppm1|Add6~33_sumout\,
	cout => \send_ppm1|Add6~34\);

-- Location: MLABCELL_X21_Y33_N21
\send_ppm1|Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~37_sumout\ = SUM(( \send_ppm1|Mult3~17\ ) + ( GND ) + ( \send_ppm1|Add6~34\ ))
-- \send_ppm1|Add6~38\ = CARRY(( \send_ppm1|Mult3~17\ ) + ( GND ) + ( \send_ppm1|Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~17\,
	cin => \send_ppm1|Add6~34\,
	sumout => \send_ppm1|Add6~37_sumout\,
	cout => \send_ppm1|Add6~38\);

-- Location: MLABCELL_X21_Y33_N24
\send_ppm1|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~5_sumout\ = SUM(( \send_ppm1|Mult3~18\ ) + ( VCC ) + ( \send_ppm1|Add6~38\ ))
-- \send_ppm1|Add6~6\ = CARRY(( \send_ppm1|Mult3~18\ ) + ( VCC ) + ( \send_ppm1|Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~18\,
	cin => \send_ppm1|Add6~38\,
	sumout => \send_ppm1|Add6~5_sumout\,
	cout => \send_ppm1|Add6~6\);

-- Location: MLABCELL_X21_Y33_N27
\send_ppm1|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~9_sumout\ = SUM(( \send_ppm1|Mult3~19\ ) + ( GND ) + ( \send_ppm1|Add6~6\ ))
-- \send_ppm1|Add6~10\ = CARRY(( \send_ppm1|Mult3~19\ ) + ( GND ) + ( \send_ppm1|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~19\,
	cin => \send_ppm1|Add6~6\,
	sumout => \send_ppm1|Add6~9_sumout\,
	cout => \send_ppm1|Add6~10\);

-- Location: MLABCELL_X21_Y33_N30
\send_ppm1|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~25_sumout\ = SUM(( \send_ppm1|Mult3~20\ ) + ( GND ) + ( \send_ppm1|Add6~10\ ))
-- \send_ppm1|Add6~26\ = CARRY(( \send_ppm1|Mult3~20\ ) + ( GND ) + ( \send_ppm1|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~20\,
	cin => \send_ppm1|Add6~10\,
	sumout => \send_ppm1|Add6~25_sumout\,
	cout => \send_ppm1|Add6~26\);

-- Location: MLABCELL_X21_Y33_N33
\send_ppm1|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~1_sumout\ = SUM(( \send_ppm1|Mult3~21\ ) + ( GND ) + ( \send_ppm1|Add6~26\ ))
-- \send_ppm1|Add6~2\ = CARRY(( \send_ppm1|Mult3~21\ ) + ( GND ) + ( \send_ppm1|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult3~21\,
	cin => \send_ppm1|Add6~26\,
	sumout => \send_ppm1|Add6~1_sumout\,
	cout => \send_ppm1|Add6~2\);

-- Location: MLABCELL_X21_Y33_N36
\send_ppm1|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~13_sumout\ = SUM(( \send_ppm1|Mult3~22\ ) + ( VCC ) + ( \send_ppm1|Add6~2\ ))
-- \send_ppm1|Add6~14\ = CARRY(( \send_ppm1|Mult3~22\ ) + ( VCC ) + ( \send_ppm1|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~22\,
	cin => \send_ppm1|Add6~2\,
	sumout => \send_ppm1|Add6~13_sumout\,
	cout => \send_ppm1|Add6~14\);

-- Location: LABCELL_X22_Y33_N0
\send_ppm1|Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~37_sumout\ = SUM(( \send_ppm1|Mult3~8_resulta\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add7~38\ = CARRY(( \send_ppm1|Mult3~8_resulta\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult3~8_resulta\,
	cin => GND,
	sumout => \send_ppm1|Add7~37_sumout\,
	cout => \send_ppm1|Add7~38\);

-- Location: LABCELL_X22_Y33_N3
\send_ppm1|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~21_sumout\ = SUM(( \send_ppm1|Mult3~9\ ) + ( VCC ) + ( \send_ppm1|Add7~38\ ))
-- \send_ppm1|Add7~22\ = CARRY(( \send_ppm1|Mult3~9\ ) + ( VCC ) + ( \send_ppm1|Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult3~9\,
	cin => \send_ppm1|Add7~38\,
	sumout => \send_ppm1|Add7~21_sumout\,
	cout => \send_ppm1|Add7~22\);

-- Location: LABCELL_X22_Y33_N6
\send_ppm1|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~25_sumout\ = SUM(( \send_ppm1|Add6~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~22\ ))
-- \send_ppm1|Add7~26\ = CARRY(( \send_ppm1|Add6~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add6~17_sumout\,
	cin => \send_ppm1|Add7~22\,
	sumout => \send_ppm1|Add7~25_sumout\,
	cout => \send_ppm1|Add7~26\);

-- Location: LABCELL_X22_Y33_N9
\send_ppm1|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~29_sumout\ = SUM(( \send_ppm1|Add6~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~26\ ))
-- \send_ppm1|Add7~30\ = CARRY(( \send_ppm1|Add6~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add6~21_sumout\,
	cin => \send_ppm1|Add7~26\,
	sumout => \send_ppm1|Add7~29_sumout\,
	cout => \send_ppm1|Add7~30\);

-- Location: LABCELL_X22_Y33_N12
\send_ppm1|Add7~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~53_sumout\ = SUM(( \send_ppm1|Add6~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~30\ ))
-- \send_ppm1|Add7~54\ = CARRY(( \send_ppm1|Add6~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add6~41_sumout\,
	cin => \send_ppm1|Add7~30\,
	sumout => \send_ppm1|Add7~53_sumout\,
	cout => \send_ppm1|Add7~54\);

-- Location: LABCELL_X22_Y33_N15
\send_ppm1|Add7~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~57_sumout\ = SUM(( \send_ppm1|Add6~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~54\ ))
-- \send_ppm1|Add7~58\ = CARRY(( \send_ppm1|Add6~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add6~45_sumout\,
	cin => \send_ppm1|Add7~54\,
	sumout => \send_ppm1|Add7~57_sumout\,
	cout => \send_ppm1|Add7~58\);

-- Location: LABCELL_X22_Y33_N18
\send_ppm1|Add7~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~61_sumout\ = SUM(( \send_ppm1|Add6~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~58\ ))
-- \send_ppm1|Add7~62\ = CARRY(( \send_ppm1|Add6~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add6~49_sumout\,
	cin => \send_ppm1|Add7~58\,
	sumout => \send_ppm1|Add7~61_sumout\,
	cout => \send_ppm1|Add7~62\);

-- Location: LABCELL_X22_Y33_N21
\send_ppm1|Add7~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~41_sumout\ = SUM(( \send_ppm1|Add6~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~62\ ))
-- \send_ppm1|Add7~42\ = CARRY(( \send_ppm1|Add6~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add6~29_sumout\,
	cin => \send_ppm1|Add7~62\,
	sumout => \send_ppm1|Add7~41_sumout\,
	cout => \send_ppm1|Add7~42\);

-- Location: LABCELL_X22_Y33_N24
\send_ppm1|Add7~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~45_sumout\ = SUM(( \send_ppm1|Add6~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~42\ ))
-- \send_ppm1|Add7~46\ = CARRY(( \send_ppm1|Add6~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add6~33_sumout\,
	cin => \send_ppm1|Add7~42\,
	sumout => \send_ppm1|Add7~45_sumout\,
	cout => \send_ppm1|Add7~46\);

-- Location: LABCELL_X22_Y33_N27
\send_ppm1|Add7~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~49_sumout\ = SUM(( \send_ppm1|Add6~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~46\ ))
-- \send_ppm1|Add7~50\ = CARRY(( \send_ppm1|Add6~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add6~37_sumout\,
	cin => \send_ppm1|Add7~46\,
	sumout => \send_ppm1|Add7~49_sumout\,
	cout => \send_ppm1|Add7~50\);

-- Location: LABCELL_X22_Y33_N30
\send_ppm1|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~9_sumout\ = SUM(( \send_ppm1|Add6~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~50\ ))
-- \send_ppm1|Add7~10\ = CARRY(( \send_ppm1|Add6~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add6~5_sumout\,
	cin => \send_ppm1|Add7~50\,
	sumout => \send_ppm1|Add7~9_sumout\,
	cout => \send_ppm1|Add7~10\);

-- Location: LABCELL_X22_Y33_N33
\send_ppm1|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~13_sumout\ = SUM(( \send_ppm1|Add6~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~10\ ))
-- \send_ppm1|Add7~14\ = CARRY(( \send_ppm1|Add6~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add6~9_sumout\,
	cin => \send_ppm1|Add7~10\,
	sumout => \send_ppm1|Add7~13_sumout\,
	cout => \send_ppm1|Add7~14\);

-- Location: LABCELL_X22_Y33_N36
\send_ppm1|Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~33_sumout\ = SUM(( \send_ppm1|Add6~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~14\ ))
-- \send_ppm1|Add7~34\ = CARRY(( \send_ppm1|Add6~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add6~25_sumout\,
	cin => \send_ppm1|Add7~14\,
	sumout => \send_ppm1|Add7~33_sumout\,
	cout => \send_ppm1|Add7~34\);

-- Location: LABCELL_X22_Y33_N39
\send_ppm1|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~1_sumout\ = SUM(( \send_ppm1|Add6~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~34\ ))
-- \send_ppm1|Add7~2\ = CARRY(( \send_ppm1|Add6~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add6~1_sumout\,
	cin => \send_ppm1|Add7~34\,
	sumout => \send_ppm1|Add7~1_sumout\,
	cout => \send_ppm1|Add7~2\);

-- Location: LABCELL_X22_Y33_N42
\send_ppm1|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~17_sumout\ = SUM(( \send_ppm1|Add6~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~2\ ))
-- \send_ppm1|Add7~18\ = CARRY(( \send_ppm1|Add6~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add6~13_sumout\,
	cin => \send_ppm1|Add7~2\,
	sumout => \send_ppm1|Add7~17_sumout\,
	cout => \send_ppm1|Add7~18\);

-- Location: LABCELL_X22_Y33_N45
\send_ppm1|Add7~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~65_sumout\ = SUM(( \send_ppm1|Add6~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~18\ ))
-- \send_ppm1|Add7~66\ = CARRY(( \send_ppm1|Add6~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add6~53_sumout\,
	cin => \send_ppm1|Add7~18\,
	sumout => \send_ppm1|Add7~65_sumout\,
	cout => \send_ppm1|Add7~66\);

-- Location: LABCELL_X22_Y33_N48
\send_ppm1|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add7~5_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add7~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add7~66\,
	sumout => \send_ppm1|Add7~5_sumout\);

-- Location: LABCELL_X19_Y26_N18
\decoder1|o_val[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|o_val[7]~0_combout\ = ( \i_sel_top[0]~input_o\ ) # ( !\i_sel_top[0]~input_o\ & ( \i_sel_top[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i_sel_top[1]~input_o\,
	dataf => \ALT_INV_i_sel_top[0]~input_o\,
	combout => \decoder1|o_val[7]~0_combout\);

-- Location: DSP_X20_Y30_N0
\send_ppm1|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \send_ppm1|Mult0~8_ACLR_bus\,
	clk => \send_ppm1|Mult0~8_CLK_bus\,
	ena => \send_ppm1|Mult0~8_ENA_bus\,
	ax => \send_ppm1|Mult0~8_AX_bus\,
	ay => \send_ppm1|Mult0~8_AY_bus\,
	resulta => \send_ppm1|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y30_N0
\send_ppm1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~21_sumout\ = SUM(( \send_ppm1|Mult0~10\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add0~22\ = CARRY(( \send_ppm1|Mult0~10\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~10\,
	cin => GND,
	sumout => \send_ppm1|Add0~21_sumout\,
	cout => \send_ppm1|Add0~22\);

-- Location: MLABCELL_X21_Y30_N3
\send_ppm1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~25_sumout\ = SUM(( \send_ppm1|Mult0~11\ ) + ( VCC ) + ( \send_ppm1|Add0~22\ ))
-- \send_ppm1|Add0~26\ = CARRY(( \send_ppm1|Mult0~11\ ) + ( VCC ) + ( \send_ppm1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~11\,
	cin => \send_ppm1|Add0~22\,
	sumout => \send_ppm1|Add0~25_sumout\,
	cout => \send_ppm1|Add0~26\);

-- Location: MLABCELL_X21_Y30_N6
\send_ppm1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~49_sumout\ = SUM(( \send_ppm1|Mult0~12\ ) + ( VCC ) + ( \send_ppm1|Add0~26\ ))
-- \send_ppm1|Add0~50\ = CARRY(( \send_ppm1|Mult0~12\ ) + ( VCC ) + ( \send_ppm1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult0~12\,
	cin => \send_ppm1|Add0~26\,
	sumout => \send_ppm1|Add0~49_sumout\,
	cout => \send_ppm1|Add0~50\);

-- Location: MLABCELL_X21_Y30_N9
\send_ppm1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~53_sumout\ = SUM(( \send_ppm1|Mult0~13\ ) + ( GND ) + ( \send_ppm1|Add0~50\ ))
-- \send_ppm1|Add0~54\ = CARRY(( \send_ppm1|Mult0~13\ ) + ( GND ) + ( \send_ppm1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult0~13\,
	cin => \send_ppm1|Add0~50\,
	sumout => \send_ppm1|Add0~53_sumout\,
	cout => \send_ppm1|Add0~54\);

-- Location: MLABCELL_X21_Y30_N12
\send_ppm1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~41_sumout\ = SUM(( \send_ppm1|Mult0~14\ ) + ( VCC ) + ( \send_ppm1|Add0~54\ ))
-- \send_ppm1|Add0~42\ = CARRY(( \send_ppm1|Mult0~14\ ) + ( VCC ) + ( \send_ppm1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~14\,
	cin => \send_ppm1|Add0~54\,
	sumout => \send_ppm1|Add0~41_sumout\,
	cout => \send_ppm1|Add0~42\);

-- Location: MLABCELL_X21_Y30_N15
\send_ppm1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~29_sumout\ = SUM(( \send_ppm1|Mult0~15\ ) + ( GND ) + ( \send_ppm1|Add0~42\ ))
-- \send_ppm1|Add0~30\ = CARRY(( \send_ppm1|Mult0~15\ ) + ( GND ) + ( \send_ppm1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult0~15\,
	cin => \send_ppm1|Add0~42\,
	sumout => \send_ppm1|Add0~29_sumout\,
	cout => \send_ppm1|Add0~30\);

-- Location: MLABCELL_X21_Y30_N18
\send_ppm1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~33_sumout\ = SUM(( \send_ppm1|Mult0~16\ ) + ( GND ) + ( \send_ppm1|Add0~30\ ))
-- \send_ppm1|Add0~34\ = CARRY(( \send_ppm1|Mult0~16\ ) + ( GND ) + ( \send_ppm1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Mult0~16\,
	cin => \send_ppm1|Add0~30\,
	sumout => \send_ppm1|Add0~33_sumout\,
	cout => \send_ppm1|Add0~34\);

-- Location: MLABCELL_X21_Y30_N21
\send_ppm1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~37_sumout\ = SUM(( \send_ppm1|Mult0~17\ ) + ( GND ) + ( \send_ppm1|Add0~34\ ))
-- \send_ppm1|Add0~38\ = CARRY(( \send_ppm1|Mult0~17\ ) + ( GND ) + ( \send_ppm1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~17\,
	cin => \send_ppm1|Add0~34\,
	sumout => \send_ppm1|Add0~37_sumout\,
	cout => \send_ppm1|Add0~38\);

-- Location: MLABCELL_X21_Y30_N24
\send_ppm1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~9_sumout\ = SUM(( \send_ppm1|Mult0~18\ ) + ( VCC ) + ( \send_ppm1|Add0~38\ ))
-- \send_ppm1|Add0~10\ = CARRY(( \send_ppm1|Mult0~18\ ) + ( VCC ) + ( \send_ppm1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~18\,
	cin => \send_ppm1|Add0~38\,
	sumout => \send_ppm1|Add0~9_sumout\,
	cout => \send_ppm1|Add0~10\);

-- Location: MLABCELL_X21_Y30_N27
\send_ppm1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~13_sumout\ = SUM(( \send_ppm1|Mult0~19\ ) + ( GND ) + ( \send_ppm1|Add0~10\ ))
-- \send_ppm1|Add0~14\ = CARRY(( \send_ppm1|Mult0~19\ ) + ( GND ) + ( \send_ppm1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~19\,
	cin => \send_ppm1|Add0~10\,
	sumout => \send_ppm1|Add0~13_sumout\,
	cout => \send_ppm1|Add0~14\);

-- Location: MLABCELL_X21_Y30_N30
\send_ppm1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~1_sumout\ = SUM(( \send_ppm1|Mult0~20\ ) + ( GND ) + ( \send_ppm1|Add0~14\ ))
-- \send_ppm1|Add0~2\ = CARRY(( \send_ppm1|Mult0~20\ ) + ( GND ) + ( \send_ppm1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult0~20\,
	cin => \send_ppm1|Add0~14\,
	sumout => \send_ppm1|Add0~1_sumout\,
	cout => \send_ppm1|Add0~2\);

-- Location: MLABCELL_X21_Y30_N33
\send_ppm1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~5_sumout\ = SUM(( \send_ppm1|Mult0~21\ ) + ( GND ) + ( \send_ppm1|Add0~2\ ))
-- \send_ppm1|Add0~6\ = CARRY(( \send_ppm1|Mult0~21\ ) + ( GND ) + ( \send_ppm1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~21\,
	cin => \send_ppm1|Add0~2\,
	sumout => \send_ppm1|Add0~5_sumout\,
	cout => \send_ppm1|Add0~6\);

-- Location: MLABCELL_X21_Y30_N36
\send_ppm1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~17_sumout\ = SUM(( \send_ppm1|Mult0~22\ ) + ( VCC ) + ( \send_ppm1|Add0~6\ ))
-- \send_ppm1|Add0~18\ = CARRY(( \send_ppm1|Mult0~22\ ) + ( VCC ) + ( \send_ppm1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult0~22\,
	cin => \send_ppm1|Add0~6\,
	sumout => \send_ppm1|Add0~17_sumout\,
	cout => \send_ppm1|Add0~18\);

-- Location: MLABCELL_X21_Y30_N39
\send_ppm1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add0~45_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add0~18\,
	sumout => \send_ppm1|Add0~45_sumout\);

-- Location: LABCELL_X22_Y30_N0
\send_ppm1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~25_sumout\ = SUM(( \send_ppm1|Mult0~8_resulta\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add1~26\ = CARRY(( \send_ppm1|Mult0~8_resulta\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~8_resulta\,
	cin => GND,
	sumout => \send_ppm1|Add1~25_sumout\,
	cout => \send_ppm1|Add1~26\);

-- Location: LABCELL_X22_Y30_N3
\send_ppm1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~29_sumout\ = SUM(( \send_ppm1|Mult0~9\ ) + ( VCC ) + ( \send_ppm1|Add1~26\ ))
-- \send_ppm1|Add1~30\ = CARRY(( \send_ppm1|Mult0~9\ ) + ( VCC ) + ( \send_ppm1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult0~9\,
	cin => \send_ppm1|Add1~26\,
	sumout => \send_ppm1|Add1~29_sumout\,
	cout => \send_ppm1|Add1~30\);

-- Location: LABCELL_X22_Y30_N6
\send_ppm1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~33_sumout\ = SUM(( \send_ppm1|Add0~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~30\ ))
-- \send_ppm1|Add1~34\ = CARRY(( \send_ppm1|Add0~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add0~21_sumout\,
	cin => \send_ppm1|Add1~30\,
	sumout => \send_ppm1|Add1~33_sumout\,
	cout => \send_ppm1|Add1~34\);

-- Location: LABCELL_X22_Y30_N9
\send_ppm1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~37_sumout\ = SUM(( \send_ppm1|Add0~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~34\ ))
-- \send_ppm1|Add1~38\ = CARRY(( \send_ppm1|Add0~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add0~25_sumout\,
	cin => \send_ppm1|Add1~34\,
	sumout => \send_ppm1|Add1~37_sumout\,
	cout => \send_ppm1|Add1~38\);

-- Location: LABCELL_X22_Y30_N12
\send_ppm1|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~61_sumout\ = SUM(( \send_ppm1|Add0~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~38\ ))
-- \send_ppm1|Add1~62\ = CARRY(( \send_ppm1|Add0~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add0~49_sumout\,
	cin => \send_ppm1|Add1~38\,
	sumout => \send_ppm1|Add1~61_sumout\,
	cout => \send_ppm1|Add1~62\);

-- Location: LABCELL_X22_Y30_N15
\send_ppm1|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~65_sumout\ = SUM(( \send_ppm1|Add0~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~62\ ))
-- \send_ppm1|Add1~66\ = CARRY(( \send_ppm1|Add0~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add0~53_sumout\,
	cin => \send_ppm1|Add1~62\,
	sumout => \send_ppm1|Add1~65_sumout\,
	cout => \send_ppm1|Add1~66\);

-- Location: LABCELL_X22_Y30_N18
\send_ppm1|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~53_sumout\ = SUM(( \send_ppm1|Add0~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~66\ ))
-- \send_ppm1|Add1~54\ = CARRY(( \send_ppm1|Add0~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add0~41_sumout\,
	cin => \send_ppm1|Add1~66\,
	sumout => \send_ppm1|Add1~53_sumout\,
	cout => \send_ppm1|Add1~54\);

-- Location: LABCELL_X22_Y30_N21
\send_ppm1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~41_sumout\ = SUM(( \send_ppm1|Add0~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~54\ ))
-- \send_ppm1|Add1~42\ = CARRY(( \send_ppm1|Add0~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add0~29_sumout\,
	cin => \send_ppm1|Add1~54\,
	sumout => \send_ppm1|Add1~41_sumout\,
	cout => \send_ppm1|Add1~42\);

-- Location: LABCELL_X22_Y30_N24
\send_ppm1|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~45_sumout\ = SUM(( \send_ppm1|Add0~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~42\ ))
-- \send_ppm1|Add1~46\ = CARRY(( \send_ppm1|Add0~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add0~33_sumout\,
	cin => \send_ppm1|Add1~42\,
	sumout => \send_ppm1|Add1~45_sumout\,
	cout => \send_ppm1|Add1~46\);

-- Location: LABCELL_X22_Y30_N27
\send_ppm1|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~49_sumout\ = SUM(( \send_ppm1|Add0~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~46\ ))
-- \send_ppm1|Add1~50\ = CARRY(( \send_ppm1|Add0~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add0~37_sumout\,
	cin => \send_ppm1|Add1~46\,
	sumout => \send_ppm1|Add1~49_sumout\,
	cout => \send_ppm1|Add1~50\);

-- Location: LABCELL_X22_Y30_N30
\send_ppm1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~13_sumout\ = SUM(( \send_ppm1|Add0~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~50\ ))
-- \send_ppm1|Add1~14\ = CARRY(( \send_ppm1|Add0~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add0~9_sumout\,
	cin => \send_ppm1|Add1~50\,
	sumout => \send_ppm1|Add1~13_sumout\,
	cout => \send_ppm1|Add1~14\);

-- Location: LABCELL_X22_Y30_N33
\send_ppm1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~17_sumout\ = SUM(( \send_ppm1|Add0~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~14\ ))
-- \send_ppm1|Add1~18\ = CARRY(( \send_ppm1|Add0~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add0~13_sumout\,
	cin => \send_ppm1|Add1~14\,
	sumout => \send_ppm1|Add1~17_sumout\,
	cout => \send_ppm1|Add1~18\);

-- Location: LABCELL_X22_Y30_N36
\send_ppm1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~5_sumout\ = SUM(( \send_ppm1|Add0~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~18\ ))
-- \send_ppm1|Add1~6\ = CARRY(( \send_ppm1|Add0~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add0~1_sumout\,
	cin => \send_ppm1|Add1~18\,
	sumout => \send_ppm1|Add1~5_sumout\,
	cout => \send_ppm1|Add1~6\);

-- Location: LABCELL_X22_Y30_N39
\send_ppm1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~9_sumout\ = SUM(( \send_ppm1|Add0~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~6\ ))
-- \send_ppm1|Add1~10\ = CARRY(( \send_ppm1|Add0~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add0~5_sumout\,
	cin => \send_ppm1|Add1~6\,
	sumout => \send_ppm1|Add1~9_sumout\,
	cout => \send_ppm1|Add1~10\);

-- Location: LABCELL_X22_Y30_N42
\send_ppm1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~21_sumout\ = SUM(( \send_ppm1|Add0~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~10\ ))
-- \send_ppm1|Add1~22\ = CARRY(( \send_ppm1|Add0~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add0~17_sumout\,
	cin => \send_ppm1|Add1~10\,
	sumout => \send_ppm1|Add1~21_sumout\,
	cout => \send_ppm1|Add1~22\);

-- Location: LABCELL_X22_Y30_N45
\send_ppm1|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~57_sumout\ = SUM(( \send_ppm1|Add0~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~22\ ))
-- \send_ppm1|Add1~58\ = CARRY(( \send_ppm1|Add0~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add0~45_sumout\,
	cin => \send_ppm1|Add1~22\,
	sumout => \send_ppm1|Add1~57_sumout\,
	cout => \send_ppm1|Add1~58\);

-- Location: LABCELL_X22_Y30_N48
\send_ppm1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add1~1_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add1~58\,
	sumout => \send_ppm1|Add1~1_sumout\);

-- Location: DSP_X20_Y26_N0
\send_ppm1|Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \send_ppm1|Mult1~8_ACLR_bus\,
	clk => \send_ppm1|Mult1~8_CLK_bus\,
	ena => \send_ppm1|Mult1~8_ENA_bus\,
	ax => \send_ppm1|Mult1~8_AX_bus\,
	ay => \send_ppm1|Mult1~8_AY_bus\,
	resulta => \send_ppm1|Mult1~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y25_N0
\send_ppm1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~21_sumout\ = SUM(( \send_ppm1|Mult1~10\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add2~22\ = CARRY(( \send_ppm1|Mult1~10\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~10\,
	cin => GND,
	sumout => \send_ppm1|Add2~21_sumout\,
	cout => \send_ppm1|Add2~22\);

-- Location: MLABCELL_X21_Y25_N3
\send_ppm1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~25_sumout\ = SUM(( \send_ppm1|Mult1~11\ ) + ( VCC ) + ( \send_ppm1|Add2~22\ ))
-- \send_ppm1|Add2~26\ = CARRY(( \send_ppm1|Mult1~11\ ) + ( VCC ) + ( \send_ppm1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult1~11\,
	cin => \send_ppm1|Add2~22\,
	sumout => \send_ppm1|Add2~25_sumout\,
	cout => \send_ppm1|Add2~26\);

-- Location: MLABCELL_X21_Y25_N6
\send_ppm1|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~45_sumout\ = SUM(( \send_ppm1|Mult1~12\ ) + ( VCC ) + ( \send_ppm1|Add2~26\ ))
-- \send_ppm1|Add2~46\ = CARRY(( \send_ppm1|Mult1~12\ ) + ( VCC ) + ( \send_ppm1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~12\,
	cin => \send_ppm1|Add2~26\,
	sumout => \send_ppm1|Add2~45_sumout\,
	cout => \send_ppm1|Add2~46\);

-- Location: MLABCELL_X21_Y25_N9
\send_ppm1|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~49_sumout\ = SUM(( \send_ppm1|Mult1~13\ ) + ( GND ) + ( \send_ppm1|Add2~46\ ))
-- \send_ppm1|Add2~50\ = CARRY(( \send_ppm1|Mult1~13\ ) + ( GND ) + ( \send_ppm1|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~13\,
	cin => \send_ppm1|Add2~46\,
	sumout => \send_ppm1|Add2~49_sumout\,
	cout => \send_ppm1|Add2~50\);

-- Location: MLABCELL_X21_Y25_N12
\send_ppm1|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~53_sumout\ = SUM(( \send_ppm1|Mult1~14\ ) + ( VCC ) + ( \send_ppm1|Add2~50\ ))
-- \send_ppm1|Add2~54\ = CARRY(( \send_ppm1|Mult1~14\ ) + ( VCC ) + ( \send_ppm1|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~14\,
	cin => \send_ppm1|Add2~50\,
	sumout => \send_ppm1|Add2~53_sumout\,
	cout => \send_ppm1|Add2~54\);

-- Location: MLABCELL_X21_Y25_N15
\send_ppm1|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~37_sumout\ = SUM(( \send_ppm1|Mult1~15\ ) + ( GND ) + ( \send_ppm1|Add2~54\ ))
-- \send_ppm1|Add2~38\ = CARRY(( \send_ppm1|Mult1~15\ ) + ( GND ) + ( \send_ppm1|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~15\,
	cin => \send_ppm1|Add2~54\,
	sumout => \send_ppm1|Add2~37_sumout\,
	cout => \send_ppm1|Add2~38\);

-- Location: MLABCELL_X21_Y25_N18
\send_ppm1|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~41_sumout\ = SUM(( \send_ppm1|Mult1~16\ ) + ( GND ) + ( \send_ppm1|Add2~38\ ))
-- \send_ppm1|Add2~42\ = CARRY(( \send_ppm1|Mult1~16\ ) + ( GND ) + ( \send_ppm1|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Mult1~16\,
	cin => \send_ppm1|Add2~38\,
	sumout => \send_ppm1|Add2~41_sumout\,
	cout => \send_ppm1|Add2~42\);

-- Location: MLABCELL_X21_Y25_N21
\send_ppm1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~29_sumout\ = SUM(( \send_ppm1|Mult1~17\ ) + ( GND ) + ( \send_ppm1|Add2~42\ ))
-- \send_ppm1|Add2~30\ = CARRY(( \send_ppm1|Mult1~17\ ) + ( GND ) + ( \send_ppm1|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~17\,
	cin => \send_ppm1|Add2~42\,
	sumout => \send_ppm1|Add2~29_sumout\,
	cout => \send_ppm1|Add2~30\);

-- Location: MLABCELL_X21_Y25_N24
\send_ppm1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~9_sumout\ = SUM(( \send_ppm1|Mult1~18\ ) + ( VCC ) + ( \send_ppm1|Add2~30\ ))
-- \send_ppm1|Add2~10\ = CARRY(( \send_ppm1|Mult1~18\ ) + ( VCC ) + ( \send_ppm1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~18\,
	cin => \send_ppm1|Add2~30\,
	sumout => \send_ppm1|Add2~9_sumout\,
	cout => \send_ppm1|Add2~10\);

-- Location: MLABCELL_X21_Y25_N27
\send_ppm1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~13_sumout\ = SUM(( \send_ppm1|Mult1~19\ ) + ( GND ) + ( \send_ppm1|Add2~10\ ))
-- \send_ppm1|Add2~14\ = CARRY(( \send_ppm1|Mult1~19\ ) + ( GND ) + ( \send_ppm1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~19\,
	cin => \send_ppm1|Add2~10\,
	sumout => \send_ppm1|Add2~13_sumout\,
	cout => \send_ppm1|Add2~14\);

-- Location: MLABCELL_X21_Y25_N30
\send_ppm1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~1_sumout\ = SUM(( \send_ppm1|Mult1~20\ ) + ( GND ) + ( \send_ppm1|Add2~14\ ))
-- \send_ppm1|Add2~2\ = CARRY(( \send_ppm1|Mult1~20\ ) + ( GND ) + ( \send_ppm1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult1~20\,
	cin => \send_ppm1|Add2~14\,
	sumout => \send_ppm1|Add2~1_sumout\,
	cout => \send_ppm1|Add2~2\);

-- Location: MLABCELL_X21_Y25_N33
\send_ppm1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~5_sumout\ = SUM(( \send_ppm1|Mult1~21\ ) + ( GND ) + ( \send_ppm1|Add2~2\ ))
-- \send_ppm1|Add2~6\ = CARRY(( \send_ppm1|Mult1~21\ ) + ( GND ) + ( \send_ppm1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Mult1~21\,
	cin => \send_ppm1|Add2~2\,
	sumout => \send_ppm1|Add2~5_sumout\,
	cout => \send_ppm1|Add2~6\);

-- Location: MLABCELL_X21_Y25_N36
\send_ppm1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~17_sumout\ = SUM(( \send_ppm1|Mult1~22\ ) + ( VCC ) + ( \send_ppm1|Add2~6\ ))
-- \send_ppm1|Add2~18\ = CARRY(( \send_ppm1|Mult1~22\ ) + ( VCC ) + ( \send_ppm1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult1~22\,
	cin => \send_ppm1|Add2~6\,
	sumout => \send_ppm1|Add2~17_sumout\,
	cout => \send_ppm1|Add2~18\);

-- Location: MLABCELL_X21_Y25_N39
\send_ppm1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add2~33_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add2~18\,
	sumout => \send_ppm1|Add2~33_sumout\);

-- Location: LABCELL_X22_Y25_N0
\send_ppm1|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~25_sumout\ = SUM(( \send_ppm1|Mult1~8_resulta\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add3~26\ = CARRY(( \send_ppm1|Mult1~8_resulta\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult1~8_resulta\,
	cin => GND,
	sumout => \send_ppm1|Add3~25_sumout\,
	cout => \send_ppm1|Add3~26\);

-- Location: LABCELL_X22_Y25_N3
\send_ppm1|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~29_sumout\ = SUM(( \send_ppm1|Mult1~9\ ) + ( VCC ) + ( \send_ppm1|Add3~26\ ))
-- \send_ppm1|Add3~30\ = CARRY(( \send_ppm1|Mult1~9\ ) + ( VCC ) + ( \send_ppm1|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult1~9\,
	cin => \send_ppm1|Add3~26\,
	sumout => \send_ppm1|Add3~29_sumout\,
	cout => \send_ppm1|Add3~30\);

-- Location: LABCELL_X22_Y25_N6
\send_ppm1|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~33_sumout\ = SUM(( \send_ppm1|Add2~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~30\ ))
-- \send_ppm1|Add3~34\ = CARRY(( \send_ppm1|Add2~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add2~21_sumout\,
	cin => \send_ppm1|Add3~30\,
	sumout => \send_ppm1|Add3~33_sumout\,
	cout => \send_ppm1|Add3~34\);

-- Location: LABCELL_X22_Y25_N9
\send_ppm1|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~37_sumout\ = SUM(( \send_ppm1|Add2~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~34\ ))
-- \send_ppm1|Add3~38\ = CARRY(( \send_ppm1|Add2~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add2~25_sumout\,
	cin => \send_ppm1|Add3~34\,
	sumout => \send_ppm1|Add3~37_sumout\,
	cout => \send_ppm1|Add3~38\);

-- Location: LABCELL_X22_Y25_N12
\send_ppm1|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~57_sumout\ = SUM(( \send_ppm1|Add2~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~38\ ))
-- \send_ppm1|Add3~58\ = CARRY(( \send_ppm1|Add2~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~45_sumout\,
	cin => \send_ppm1|Add3~38\,
	sumout => \send_ppm1|Add3~57_sumout\,
	cout => \send_ppm1|Add3~58\);

-- Location: LABCELL_X22_Y25_N15
\send_ppm1|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~61_sumout\ = SUM(( \send_ppm1|Add2~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~58\ ))
-- \send_ppm1|Add3~62\ = CARRY(( \send_ppm1|Add2~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add2~49_sumout\,
	cin => \send_ppm1|Add3~58\,
	sumout => \send_ppm1|Add3~61_sumout\,
	cout => \send_ppm1|Add3~62\);

-- Location: LABCELL_X22_Y25_N18
\send_ppm1|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~65_sumout\ = SUM(( \send_ppm1|Add2~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~62\ ))
-- \send_ppm1|Add3~66\ = CARRY(( \send_ppm1|Add2~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~53_sumout\,
	cin => \send_ppm1|Add3~62\,
	sumout => \send_ppm1|Add3~65_sumout\,
	cout => \send_ppm1|Add3~66\);

-- Location: LABCELL_X22_Y25_N21
\send_ppm1|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~49_sumout\ = SUM(( \send_ppm1|Add2~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~66\ ))
-- \send_ppm1|Add3~50\ = CARRY(( \send_ppm1|Add2~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add2~37_sumout\,
	cin => \send_ppm1|Add3~66\,
	sumout => \send_ppm1|Add3~49_sumout\,
	cout => \send_ppm1|Add3~50\);

-- Location: LABCELL_X22_Y25_N24
\send_ppm1|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~53_sumout\ = SUM(( \send_ppm1|Add2~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~50\ ))
-- \send_ppm1|Add3~54\ = CARRY(( \send_ppm1|Add2~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~41_sumout\,
	cin => \send_ppm1|Add3~50\,
	sumout => \send_ppm1|Add3~53_sumout\,
	cout => \send_ppm1|Add3~54\);

-- Location: LABCELL_X22_Y25_N27
\send_ppm1|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~41_sumout\ = SUM(( \send_ppm1|Add2~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~54\ ))
-- \send_ppm1|Add3~42\ = CARRY(( \send_ppm1|Add2~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~29_sumout\,
	cin => \send_ppm1|Add3~54\,
	sumout => \send_ppm1|Add3~41_sumout\,
	cout => \send_ppm1|Add3~42\);

-- Location: LABCELL_X22_Y25_N30
\send_ppm1|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~13_sumout\ = SUM(( \send_ppm1|Add2~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~42\ ))
-- \send_ppm1|Add3~14\ = CARRY(( \send_ppm1|Add2~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add2~9_sumout\,
	cin => \send_ppm1|Add3~42\,
	sumout => \send_ppm1|Add3~13_sumout\,
	cout => \send_ppm1|Add3~14\);

-- Location: LABCELL_X22_Y25_N33
\send_ppm1|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~17_sumout\ = SUM(( \send_ppm1|Add2~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~14\ ))
-- \send_ppm1|Add3~18\ = CARRY(( \send_ppm1|Add2~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~13_sumout\,
	cin => \send_ppm1|Add3~14\,
	sumout => \send_ppm1|Add3~17_sumout\,
	cout => \send_ppm1|Add3~18\);

-- Location: LABCELL_X22_Y25_N36
\send_ppm1|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~1_sumout\ = SUM(( \send_ppm1|Add2~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~18\ ))
-- \send_ppm1|Add3~2\ = CARRY(( \send_ppm1|Add2~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add2~1_sumout\,
	cin => \send_ppm1|Add3~18\,
	sumout => \send_ppm1|Add3~1_sumout\,
	cout => \send_ppm1|Add3~2\);

-- Location: LABCELL_X22_Y25_N39
\send_ppm1|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~5_sumout\ = SUM(( \send_ppm1|Add2~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~2\ ))
-- \send_ppm1|Add3~6\ = CARRY(( \send_ppm1|Add2~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add2~5_sumout\,
	cin => \send_ppm1|Add3~2\,
	sumout => \send_ppm1|Add3~5_sumout\,
	cout => \send_ppm1|Add3~6\);

-- Location: LABCELL_X22_Y25_N42
\send_ppm1|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~21_sumout\ = SUM(( \send_ppm1|Add2~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~6\ ))
-- \send_ppm1|Add3~22\ = CARRY(( \send_ppm1|Add2~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add2~17_sumout\,
	cin => \send_ppm1|Add3~6\,
	sumout => \send_ppm1|Add3~21_sumout\,
	cout => \send_ppm1|Add3~22\);

-- Location: LABCELL_X22_Y25_N45
\send_ppm1|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~45_sumout\ = SUM(( \send_ppm1|Add2~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~22\ ))
-- \send_ppm1|Add3~46\ = CARRY(( \send_ppm1|Add2~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add2~33_sumout\,
	cin => \send_ppm1|Add3~22\,
	sumout => \send_ppm1|Add3~45_sumout\,
	cout => \send_ppm1|Add3~46\);

-- Location: LABCELL_X22_Y25_N48
\send_ppm1|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add3~9_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add3~46\,
	sumout => \send_ppm1|Add3~9_sumout\);

-- Location: DSP_X20_Y28_N0
\send_ppm1|Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \send_ppm1|Mult2~8_ACLR_bus\,
	clk => \send_ppm1|Mult2~8_CLK_bus\,
	ena => \send_ppm1|Mult2~8_ENA_bus\,
	ax => \send_ppm1|Mult2~8_AX_bus\,
	ay => \send_ppm1|Mult2~8_AY_bus\,
	resulta => \send_ppm1|Mult2~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y29_N0
\send_ppm1|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~21_sumout\ = SUM(( \send_ppm1|Mult2~10\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add4~22\ = CARRY(( \send_ppm1|Mult2~10\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~10\,
	cin => GND,
	sumout => \send_ppm1|Add4~21_sumout\,
	cout => \send_ppm1|Add4~22\);

-- Location: MLABCELL_X21_Y29_N3
\send_ppm1|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~25_sumout\ = SUM(( \send_ppm1|Mult2~11\ ) + ( VCC ) + ( \send_ppm1|Add4~22\ ))
-- \send_ppm1|Add4~26\ = CARRY(( \send_ppm1|Mult2~11\ ) + ( VCC ) + ( \send_ppm1|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~11\,
	cin => \send_ppm1|Add4~22\,
	sumout => \send_ppm1|Add4~25_sumout\,
	cout => \send_ppm1|Add4~26\);

-- Location: MLABCELL_X21_Y29_N6
\send_ppm1|Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~45_sumout\ = SUM(( \send_ppm1|Mult2~12\ ) + ( VCC ) + ( \send_ppm1|Add4~26\ ))
-- \send_ppm1|Add4~46\ = CARRY(( \send_ppm1|Mult2~12\ ) + ( VCC ) + ( \send_ppm1|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~12\,
	cin => \send_ppm1|Add4~26\,
	sumout => \send_ppm1|Add4~45_sumout\,
	cout => \send_ppm1|Add4~46\);

-- Location: MLABCELL_X21_Y29_N9
\send_ppm1|Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~49_sumout\ = SUM(( \send_ppm1|Mult2~13\ ) + ( GND ) + ( \send_ppm1|Add4~46\ ))
-- \send_ppm1|Add4~50\ = CARRY(( \send_ppm1|Mult2~13\ ) + ( GND ) + ( \send_ppm1|Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~13\,
	cin => \send_ppm1|Add4~46\,
	sumout => \send_ppm1|Add4~49_sumout\,
	cout => \send_ppm1|Add4~50\);

-- Location: MLABCELL_X21_Y29_N12
\send_ppm1|Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~53_sumout\ = SUM(( \send_ppm1|Mult2~14\ ) + ( VCC ) + ( \send_ppm1|Add4~50\ ))
-- \send_ppm1|Add4~54\ = CARRY(( \send_ppm1|Mult2~14\ ) + ( VCC ) + ( \send_ppm1|Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~14\,
	cin => \send_ppm1|Add4~50\,
	sumout => \send_ppm1|Add4~53_sumout\,
	cout => \send_ppm1|Add4~54\);

-- Location: MLABCELL_X21_Y29_N15
\send_ppm1|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~37_sumout\ = SUM(( \send_ppm1|Mult2~15\ ) + ( GND ) + ( \send_ppm1|Add4~54\ ))
-- \send_ppm1|Add4~38\ = CARRY(( \send_ppm1|Mult2~15\ ) + ( GND ) + ( \send_ppm1|Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~15\,
	cin => \send_ppm1|Add4~54\,
	sumout => \send_ppm1|Add4~37_sumout\,
	cout => \send_ppm1|Add4~38\);

-- Location: MLABCELL_X21_Y29_N18
\send_ppm1|Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~41_sumout\ = SUM(( \send_ppm1|Mult2~16\ ) + ( GND ) + ( \send_ppm1|Add4~38\ ))
-- \send_ppm1|Add4~42\ = CARRY(( \send_ppm1|Mult2~16\ ) + ( GND ) + ( \send_ppm1|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~16\,
	cin => \send_ppm1|Add4~38\,
	sumout => \send_ppm1|Add4~41_sumout\,
	cout => \send_ppm1|Add4~42\);

-- Location: MLABCELL_X21_Y29_N21
\send_ppm1|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~29_sumout\ = SUM(( \send_ppm1|Mult2~17\ ) + ( GND ) + ( \send_ppm1|Add4~42\ ))
-- \send_ppm1|Add4~30\ = CARRY(( \send_ppm1|Mult2~17\ ) + ( GND ) + ( \send_ppm1|Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~17\,
	cin => \send_ppm1|Add4~42\,
	sumout => \send_ppm1|Add4~29_sumout\,
	cout => \send_ppm1|Add4~30\);

-- Location: MLABCELL_X21_Y29_N24
\send_ppm1|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~9_sumout\ = SUM(( \send_ppm1|Mult2~18\ ) + ( VCC ) + ( \send_ppm1|Add4~30\ ))
-- \send_ppm1|Add4~10\ = CARRY(( \send_ppm1|Mult2~18\ ) + ( VCC ) + ( \send_ppm1|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~18\,
	cin => \send_ppm1|Add4~30\,
	sumout => \send_ppm1|Add4~9_sumout\,
	cout => \send_ppm1|Add4~10\);

-- Location: MLABCELL_X21_Y29_N27
\send_ppm1|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~13_sumout\ = SUM(( \send_ppm1|Mult2~19\ ) + ( GND ) + ( \send_ppm1|Add4~10\ ))
-- \send_ppm1|Add4~14\ = CARRY(( \send_ppm1|Mult2~19\ ) + ( GND ) + ( \send_ppm1|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~19\,
	cin => \send_ppm1|Add4~10\,
	sumout => \send_ppm1|Add4~13_sumout\,
	cout => \send_ppm1|Add4~14\);

-- Location: MLABCELL_X21_Y29_N30
\send_ppm1|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~1_sumout\ = SUM(( \send_ppm1|Mult2~20\ ) + ( GND ) + ( \send_ppm1|Add4~14\ ))
-- \send_ppm1|Add4~2\ = CARRY(( \send_ppm1|Mult2~20\ ) + ( GND ) + ( \send_ppm1|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~20\,
	cin => \send_ppm1|Add4~14\,
	sumout => \send_ppm1|Add4~1_sumout\,
	cout => \send_ppm1|Add4~2\);

-- Location: MLABCELL_X21_Y29_N33
\send_ppm1|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~5_sumout\ = SUM(( \send_ppm1|Mult2~21\ ) + ( GND ) + ( \send_ppm1|Add4~2\ ))
-- \send_ppm1|Add4~6\ = CARRY(( \send_ppm1|Mult2~21\ ) + ( GND ) + ( \send_ppm1|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Mult2~21\,
	cin => \send_ppm1|Add4~2\,
	sumout => \send_ppm1|Add4~5_sumout\,
	cout => \send_ppm1|Add4~6\);

-- Location: MLABCELL_X21_Y29_N36
\send_ppm1|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~17_sumout\ = SUM(( \send_ppm1|Mult2~22\ ) + ( VCC ) + ( \send_ppm1|Add4~6\ ))
-- \send_ppm1|Add4~18\ = CARRY(( \send_ppm1|Mult2~22\ ) + ( VCC ) + ( \send_ppm1|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~22\,
	cin => \send_ppm1|Add4~6\,
	sumout => \send_ppm1|Add4~17_sumout\,
	cout => \send_ppm1|Add4~18\);

-- Location: MLABCELL_X21_Y29_N39
\send_ppm1|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add4~33_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add4~18\,
	sumout => \send_ppm1|Add4~33_sumout\);

-- Location: LABCELL_X22_Y29_N0
\send_ppm1|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~25_sumout\ = SUM(( \send_ppm1|Mult2~8_resulta\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add5~26\ = CARRY(( \send_ppm1|Mult2~8_resulta\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Mult2~8_resulta\,
	cin => GND,
	sumout => \send_ppm1|Add5~25_sumout\,
	cout => \send_ppm1|Add5~26\);

-- Location: LABCELL_X22_Y29_N3
\send_ppm1|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~29_sumout\ = SUM(( \send_ppm1|Mult2~9\ ) + ( VCC ) + ( \send_ppm1|Add5~26\ ))
-- \send_ppm1|Add5~30\ = CARRY(( \send_ppm1|Mult2~9\ ) + ( VCC ) + ( \send_ppm1|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Mult2~9\,
	cin => \send_ppm1|Add5~26\,
	sumout => \send_ppm1|Add5~29_sumout\,
	cout => \send_ppm1|Add5~30\);

-- Location: LABCELL_X22_Y29_N6
\send_ppm1|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~33_sumout\ = SUM(( \send_ppm1|Add4~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~30\ ))
-- \send_ppm1|Add5~34\ = CARRY(( \send_ppm1|Add4~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add4~21_sumout\,
	cin => \send_ppm1|Add5~30\,
	sumout => \send_ppm1|Add5~33_sumout\,
	cout => \send_ppm1|Add5~34\);

-- Location: LABCELL_X22_Y29_N9
\send_ppm1|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~37_sumout\ = SUM(( \send_ppm1|Add4~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~34\ ))
-- \send_ppm1|Add5~38\ = CARRY(( \send_ppm1|Add4~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add4~25_sumout\,
	cin => \send_ppm1|Add5~34\,
	sumout => \send_ppm1|Add5~37_sumout\,
	cout => \send_ppm1|Add5~38\);

-- Location: LABCELL_X22_Y29_N12
\send_ppm1|Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~57_sumout\ = SUM(( \send_ppm1|Add4~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~38\ ))
-- \send_ppm1|Add5~58\ = CARRY(( \send_ppm1|Add4~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add4~45_sumout\,
	cin => \send_ppm1|Add5~38\,
	sumout => \send_ppm1|Add5~57_sumout\,
	cout => \send_ppm1|Add5~58\);

-- Location: LABCELL_X22_Y29_N15
\send_ppm1|Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~61_sumout\ = SUM(( \send_ppm1|Add4~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~58\ ))
-- \send_ppm1|Add5~62\ = CARRY(( \send_ppm1|Add4~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add4~49_sumout\,
	cin => \send_ppm1|Add5~58\,
	sumout => \send_ppm1|Add5~61_sumout\,
	cout => \send_ppm1|Add5~62\);

-- Location: LABCELL_X22_Y29_N18
\send_ppm1|Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~65_sumout\ = SUM(( \send_ppm1|Add4~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~62\ ))
-- \send_ppm1|Add5~66\ = CARRY(( \send_ppm1|Add4~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add4~53_sumout\,
	cin => \send_ppm1|Add5~62\,
	sumout => \send_ppm1|Add5~65_sumout\,
	cout => \send_ppm1|Add5~66\);

-- Location: LABCELL_X22_Y29_N21
\send_ppm1|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~49_sumout\ = SUM(( \send_ppm1|Add4~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~66\ ))
-- \send_ppm1|Add5~50\ = CARRY(( \send_ppm1|Add4~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add4~37_sumout\,
	cin => \send_ppm1|Add5~66\,
	sumout => \send_ppm1|Add5~49_sumout\,
	cout => \send_ppm1|Add5~50\);

-- Location: LABCELL_X22_Y29_N24
\send_ppm1|Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~53_sumout\ = SUM(( \send_ppm1|Add4~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~50\ ))
-- \send_ppm1|Add5~54\ = CARRY(( \send_ppm1|Add4~41_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add4~41_sumout\,
	cin => \send_ppm1|Add5~50\,
	sumout => \send_ppm1|Add5~53_sumout\,
	cout => \send_ppm1|Add5~54\);

-- Location: LABCELL_X22_Y29_N27
\send_ppm1|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~41_sumout\ = SUM(( \send_ppm1|Add4~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~54\ ))
-- \send_ppm1|Add5~42\ = CARRY(( \send_ppm1|Add4~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add4~29_sumout\,
	cin => \send_ppm1|Add5~54\,
	sumout => \send_ppm1|Add5~41_sumout\,
	cout => \send_ppm1|Add5~42\);

-- Location: LABCELL_X22_Y29_N30
\send_ppm1|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~13_sumout\ = SUM(( \send_ppm1|Add4~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~42\ ))
-- \send_ppm1|Add5~14\ = CARRY(( \send_ppm1|Add4~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add4~9_sumout\,
	cin => \send_ppm1|Add5~42\,
	sumout => \send_ppm1|Add5~13_sumout\,
	cout => \send_ppm1|Add5~14\);

-- Location: LABCELL_X22_Y29_N33
\send_ppm1|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~17_sumout\ = SUM(( \send_ppm1|Add4~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~14\ ))
-- \send_ppm1|Add5~18\ = CARRY(( \send_ppm1|Add4~13_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add4~13_sumout\,
	cin => \send_ppm1|Add5~14\,
	sumout => \send_ppm1|Add5~17_sumout\,
	cout => \send_ppm1|Add5~18\);

-- Location: LABCELL_X22_Y29_N36
\send_ppm1|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~1_sumout\ = SUM(( \send_ppm1|Add4~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~18\ ))
-- \send_ppm1|Add5~2\ = CARRY(( \send_ppm1|Add4~1_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add4~1_sumout\,
	cin => \send_ppm1|Add5~18\,
	sumout => \send_ppm1|Add5~1_sumout\,
	cout => \send_ppm1|Add5~2\);

-- Location: LABCELL_X22_Y29_N39
\send_ppm1|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~5_sumout\ = SUM(( \send_ppm1|Add4~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~2\ ))
-- \send_ppm1|Add5~6\ = CARRY(( \send_ppm1|Add4~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add4~5_sumout\,
	cin => \send_ppm1|Add5~2\,
	sumout => \send_ppm1|Add5~5_sumout\,
	cout => \send_ppm1|Add5~6\);

-- Location: LABCELL_X22_Y29_N42
\send_ppm1|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~21_sumout\ = SUM(( \send_ppm1|Add4~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~6\ ))
-- \send_ppm1|Add5~22\ = CARRY(( \send_ppm1|Add4~17_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add4~17_sumout\,
	cin => \send_ppm1|Add5~6\,
	sumout => \send_ppm1|Add5~21_sumout\,
	cout => \send_ppm1|Add5~22\);

-- Location: LABCELL_X22_Y29_N45
\send_ppm1|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~45_sumout\ = SUM(( \send_ppm1|Add4~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~22\ ))
-- \send_ppm1|Add5~46\ = CARRY(( \send_ppm1|Add4~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add4~33_sumout\,
	cin => \send_ppm1|Add5~22\,
	sumout => \send_ppm1|Add5~45_sumout\,
	cout => \send_ppm1|Add5~46\);

-- Location: LABCELL_X22_Y29_N48
\send_ppm1|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add5~9_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add5~46\,
	sumout => \send_ppm1|Add5~9_sumout\);

-- Location: LABCELL_X23_Y33_N30
\send_ppm1|Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~1_sumout\ = SUM(( !\send_ppm1|Add1~25_sumout\ $ (!\send_ppm1|Add3~25_sumout\ $ (\send_ppm1|Add5~25_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \send_ppm1|Add8~2\ = CARRY(( !\send_ppm1|Add1~25_sumout\ $ (!\send_ppm1|Add3~25_sumout\ $ (\send_ppm1|Add5~25_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \send_ppm1|Add8~3\ = SHARE((!\send_ppm1|Add1~25_sumout\ & (\send_ppm1|Add3~25_sumout\ & \send_ppm1|Add5~25_sumout\)) # (\send_ppm1|Add1~25_sumout\ & ((\send_ppm1|Add5~25_sumout\) # (\send_ppm1|Add3~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~25_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~25_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~25_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \send_ppm1|Add8~1_sumout\,
	cout => \send_ppm1|Add8~2\,
	shareout => \send_ppm1|Add8~3\);

-- Location: LABCELL_X23_Y33_N33
\send_ppm1|Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~5_sumout\ = SUM(( !\send_ppm1|Add1~29_sumout\ $ (!\send_ppm1|Add5~29_sumout\ $ (\send_ppm1|Add3~29_sumout\)) ) + ( \send_ppm1|Add8~3\ ) + ( \send_ppm1|Add8~2\ ))
-- \send_ppm1|Add8~6\ = CARRY(( !\send_ppm1|Add1~29_sumout\ $ (!\send_ppm1|Add5~29_sumout\ $ (\send_ppm1|Add3~29_sumout\)) ) + ( \send_ppm1|Add8~3\ ) + ( \send_ppm1|Add8~2\ ))
-- \send_ppm1|Add8~7\ = SHARE((!\send_ppm1|Add1~29_sumout\ & (\send_ppm1|Add5~29_sumout\ & \send_ppm1|Add3~29_sumout\)) # (\send_ppm1|Add1~29_sumout\ & ((\send_ppm1|Add3~29_sumout\) # (\send_ppm1|Add5~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~29_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~29_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~29_sumout\,
	cin => \send_ppm1|Add8~2\,
	sharein => \send_ppm1|Add8~3\,
	sumout => \send_ppm1|Add8~5_sumout\,
	cout => \send_ppm1|Add8~6\,
	shareout => \send_ppm1|Add8~7\);

-- Location: LABCELL_X23_Y33_N36
\send_ppm1|Add8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~37_sumout\ = SUM(( !\send_ppm1|Add5~33_sumout\ $ (!\send_ppm1|Add1~33_sumout\ $ (\send_ppm1|Add3~33_sumout\)) ) + ( \send_ppm1|Add8~7\ ) + ( \send_ppm1|Add8~6\ ))
-- \send_ppm1|Add8~38\ = CARRY(( !\send_ppm1|Add5~33_sumout\ $ (!\send_ppm1|Add1~33_sumout\ $ (\send_ppm1|Add3~33_sumout\)) ) + ( \send_ppm1|Add8~7\ ) + ( \send_ppm1|Add8~6\ ))
-- \send_ppm1|Add8~39\ = SHARE((!\send_ppm1|Add5~33_sumout\ & (\send_ppm1|Add1~33_sumout\ & \send_ppm1|Add3~33_sumout\)) # (\send_ppm1|Add5~33_sumout\ & ((\send_ppm1|Add3~33_sumout\) # (\send_ppm1|Add1~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~33_sumout\,
	datac => \send_ppm1|ALT_INV_Add1~33_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~33_sumout\,
	cin => \send_ppm1|Add8~6\,
	sharein => \send_ppm1|Add8~7\,
	sumout => \send_ppm1|Add8~37_sumout\,
	cout => \send_ppm1|Add8~38\,
	shareout => \send_ppm1|Add8~39\);

-- Location: LABCELL_X23_Y33_N39
\send_ppm1|Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~29_sumout\ = SUM(( !\send_ppm1|Add1~37_sumout\ $ (!\send_ppm1|Add3~37_sumout\ $ (\send_ppm1|Add5~37_sumout\)) ) + ( \send_ppm1|Add8~39\ ) + ( \send_ppm1|Add8~38\ ))
-- \send_ppm1|Add8~30\ = CARRY(( !\send_ppm1|Add1~37_sumout\ $ (!\send_ppm1|Add3~37_sumout\ $ (\send_ppm1|Add5~37_sumout\)) ) + ( \send_ppm1|Add8~39\ ) + ( \send_ppm1|Add8~38\ ))
-- \send_ppm1|Add8~31\ = SHARE((!\send_ppm1|Add1~37_sumout\ & (\send_ppm1|Add3~37_sumout\ & \send_ppm1|Add5~37_sumout\)) # (\send_ppm1|Add1~37_sumout\ & ((\send_ppm1|Add5~37_sumout\) # (\send_ppm1|Add3~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~37_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~37_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~37_sumout\,
	cin => \send_ppm1|Add8~38\,
	sharein => \send_ppm1|Add8~39\,
	sumout => \send_ppm1|Add8~29_sumout\,
	cout => \send_ppm1|Add8~30\,
	shareout => \send_ppm1|Add8~31\);

-- Location: LABCELL_X23_Y33_N42
\send_ppm1|Add8~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~61_sumout\ = SUM(( !\send_ppm1|Add1~61_sumout\ $ (!\send_ppm1|Add5~57_sumout\ $ (\send_ppm1|Add3~57_sumout\)) ) + ( \send_ppm1|Add8~31\ ) + ( \send_ppm1|Add8~30\ ))
-- \send_ppm1|Add8~62\ = CARRY(( !\send_ppm1|Add1~61_sumout\ $ (!\send_ppm1|Add5~57_sumout\ $ (\send_ppm1|Add3~57_sumout\)) ) + ( \send_ppm1|Add8~31\ ) + ( \send_ppm1|Add8~30\ ))
-- \send_ppm1|Add8~63\ = SHARE((!\send_ppm1|Add1~61_sumout\ & (\send_ppm1|Add5~57_sumout\ & \send_ppm1|Add3~57_sumout\)) # (\send_ppm1|Add1~61_sumout\ & ((\send_ppm1|Add3~57_sumout\) # (\send_ppm1|Add5~57_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~61_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~57_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~57_sumout\,
	cin => \send_ppm1|Add8~30\,
	sharein => \send_ppm1|Add8~31\,
	sumout => \send_ppm1|Add8~61_sumout\,
	cout => \send_ppm1|Add8~62\,
	shareout => \send_ppm1|Add8~63\);

-- Location: LABCELL_X23_Y33_N45
\send_ppm1|Add8~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~65_sumout\ = SUM(( !\send_ppm1|Add1~65_sumout\ $ (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|Add3~61_sumout\)) ) + ( \send_ppm1|Add8~63\ ) + ( \send_ppm1|Add8~62\ ))
-- \send_ppm1|Add8~66\ = CARRY(( !\send_ppm1|Add1~65_sumout\ $ (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|Add3~61_sumout\)) ) + ( \send_ppm1|Add8~63\ ) + ( \send_ppm1|Add8~62\ ))
-- \send_ppm1|Add8~67\ = SHARE((!\send_ppm1|Add1~65_sumout\ & (\send_ppm1|Add5~61_sumout\ & \send_ppm1|Add3~61_sumout\)) # (\send_ppm1|Add1~65_sumout\ & ((\send_ppm1|Add3~61_sumout\) # (\send_ppm1|Add5~61_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~65_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~61_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~61_sumout\,
	cin => \send_ppm1|Add8~62\,
	sharein => \send_ppm1|Add8~63\,
	sumout => \send_ppm1|Add8~65_sumout\,
	cout => \send_ppm1|Add8~66\,
	shareout => \send_ppm1|Add8~67\);

-- Location: LABCELL_X23_Y33_N48
\send_ppm1|Add8~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~69_sumout\ = SUM(( !\send_ppm1|Add5~65_sumout\ $ (!\send_ppm1|Add1~53_sumout\ $ (\send_ppm1|Add3~65_sumout\)) ) + ( \send_ppm1|Add8~67\ ) + ( \send_ppm1|Add8~66\ ))
-- \send_ppm1|Add8~70\ = CARRY(( !\send_ppm1|Add5~65_sumout\ $ (!\send_ppm1|Add1~53_sumout\ $ (\send_ppm1|Add3~65_sumout\)) ) + ( \send_ppm1|Add8~67\ ) + ( \send_ppm1|Add8~66\ ))
-- \send_ppm1|Add8~71\ = SHARE((!\send_ppm1|Add5~65_sumout\ & (\send_ppm1|Add1~53_sumout\ & \send_ppm1|Add3~65_sumout\)) # (\send_ppm1|Add5~65_sumout\ & ((\send_ppm1|Add3~65_sumout\) # (\send_ppm1|Add1~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~65_sumout\,
	datac => \send_ppm1|ALT_INV_Add1~53_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~65_sumout\,
	cin => \send_ppm1|Add8~66\,
	sharein => \send_ppm1|Add8~67\,
	sumout => \send_ppm1|Add8~69_sumout\,
	cout => \send_ppm1|Add8~70\,
	shareout => \send_ppm1|Add8~71\);

-- Location: LABCELL_X23_Y33_N51
\send_ppm1|Add8~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~41_sumout\ = SUM(( !\send_ppm1|Add1~41_sumout\ $ (!\send_ppm1|Add5~49_sumout\ $ (\send_ppm1|Add3~49_sumout\)) ) + ( \send_ppm1|Add8~71\ ) + ( \send_ppm1|Add8~70\ ))
-- \send_ppm1|Add8~42\ = CARRY(( !\send_ppm1|Add1~41_sumout\ $ (!\send_ppm1|Add5~49_sumout\ $ (\send_ppm1|Add3~49_sumout\)) ) + ( \send_ppm1|Add8~71\ ) + ( \send_ppm1|Add8~70\ ))
-- \send_ppm1|Add8~43\ = SHARE((!\send_ppm1|Add1~41_sumout\ & (\send_ppm1|Add5~49_sumout\ & \send_ppm1|Add3~49_sumout\)) # (\send_ppm1|Add1~41_sumout\ & ((\send_ppm1|Add3~49_sumout\) # (\send_ppm1|Add5~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~41_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~49_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~49_sumout\,
	cin => \send_ppm1|Add8~70\,
	sharein => \send_ppm1|Add8~71\,
	sumout => \send_ppm1|Add8~41_sumout\,
	cout => \send_ppm1|Add8~42\,
	shareout => \send_ppm1|Add8~43\);

-- Location: LABCELL_X23_Y33_N54
\send_ppm1|Add8~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~45_sumout\ = SUM(( !\send_ppm1|Add5~53_sumout\ $ (!\send_ppm1|Add1~45_sumout\ $ (\send_ppm1|Add3~53_sumout\)) ) + ( \send_ppm1|Add8~43\ ) + ( \send_ppm1|Add8~42\ ))
-- \send_ppm1|Add8~46\ = CARRY(( !\send_ppm1|Add5~53_sumout\ $ (!\send_ppm1|Add1~45_sumout\ $ (\send_ppm1|Add3~53_sumout\)) ) + ( \send_ppm1|Add8~43\ ) + ( \send_ppm1|Add8~42\ ))
-- \send_ppm1|Add8~47\ = SHARE((!\send_ppm1|Add5~53_sumout\ & (\send_ppm1|Add1~45_sumout\ & \send_ppm1|Add3~53_sumout\)) # (\send_ppm1|Add5~53_sumout\ & ((\send_ppm1|Add3~53_sumout\) # (\send_ppm1|Add1~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add5~53_sumout\,
	datac => \send_ppm1|ALT_INV_Add1~45_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~53_sumout\,
	cin => \send_ppm1|Add8~42\,
	sharein => \send_ppm1|Add8~43\,
	sumout => \send_ppm1|Add8~45_sumout\,
	cout => \send_ppm1|Add8~46\,
	shareout => \send_ppm1|Add8~47\);

-- Location: LABCELL_X23_Y33_N57
\send_ppm1|Add8~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~49_sumout\ = SUM(( !\send_ppm1|Add1~49_sumout\ $ (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|Add3~41_sumout\)) ) + ( \send_ppm1|Add8~47\ ) + ( \send_ppm1|Add8~46\ ))
-- \send_ppm1|Add8~50\ = CARRY(( !\send_ppm1|Add1~49_sumout\ $ (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|Add3~41_sumout\)) ) + ( \send_ppm1|Add8~47\ ) + ( \send_ppm1|Add8~46\ ))
-- \send_ppm1|Add8~51\ = SHARE((!\send_ppm1|Add1~49_sumout\ & (\send_ppm1|Add5~41_sumout\ & \send_ppm1|Add3~41_sumout\)) # (\send_ppm1|Add1~49_sumout\ & ((\send_ppm1|Add3~41_sumout\) # (\send_ppm1|Add5~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~49_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~41_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~41_sumout\,
	cin => \send_ppm1|Add8~46\,
	sharein => \send_ppm1|Add8~47\,
	sumout => \send_ppm1|Add8~49_sumout\,
	cout => \send_ppm1|Add8~50\,
	shareout => \send_ppm1|Add8~51\);

-- Location: LABCELL_X23_Y32_N0
\send_ppm1|Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~17_sumout\ = SUM(( !\send_ppm1|Add1~13_sumout\ $ (!\send_ppm1|Add5~13_sumout\ $ (\send_ppm1|Add3~13_sumout\)) ) + ( \send_ppm1|Add8~51\ ) + ( \send_ppm1|Add8~50\ ))
-- \send_ppm1|Add8~18\ = CARRY(( !\send_ppm1|Add1~13_sumout\ $ (!\send_ppm1|Add5~13_sumout\ $ (\send_ppm1|Add3~13_sumout\)) ) + ( \send_ppm1|Add8~51\ ) + ( \send_ppm1|Add8~50\ ))
-- \send_ppm1|Add8~19\ = SHARE((!\send_ppm1|Add1~13_sumout\ & (\send_ppm1|Add5~13_sumout\ & \send_ppm1|Add3~13_sumout\)) # (\send_ppm1|Add1~13_sumout\ & ((\send_ppm1|Add3~13_sumout\) # (\send_ppm1|Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~13_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~13_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~13_sumout\,
	cin => \send_ppm1|Add8~50\,
	sharein => \send_ppm1|Add8~51\,
	sumout => \send_ppm1|Add8~17_sumout\,
	cout => \send_ppm1|Add8~18\,
	shareout => \send_ppm1|Add8~19\);

-- Location: LABCELL_X23_Y32_N3
\send_ppm1|Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~21_sumout\ = SUM(( !\send_ppm1|Add1~17_sumout\ $ (!\send_ppm1|Add3~17_sumout\ $ (\send_ppm1|Add5~17_sumout\)) ) + ( \send_ppm1|Add8~19\ ) + ( \send_ppm1|Add8~18\ ))
-- \send_ppm1|Add8~22\ = CARRY(( !\send_ppm1|Add1~17_sumout\ $ (!\send_ppm1|Add3~17_sumout\ $ (\send_ppm1|Add5~17_sumout\)) ) + ( \send_ppm1|Add8~19\ ) + ( \send_ppm1|Add8~18\ ))
-- \send_ppm1|Add8~23\ = SHARE((!\send_ppm1|Add1~17_sumout\ & (\send_ppm1|Add3~17_sumout\ & \send_ppm1|Add5~17_sumout\)) # (\send_ppm1|Add1~17_sumout\ & ((\send_ppm1|Add5~17_sumout\) # (\send_ppm1|Add3~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~17_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~17_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~17_sumout\,
	cin => \send_ppm1|Add8~18\,
	sharein => \send_ppm1|Add8~19\,
	sumout => \send_ppm1|Add8~21_sumout\,
	cout => \send_ppm1|Add8~22\,
	shareout => \send_ppm1|Add8~23\);

-- Location: LABCELL_X23_Y32_N6
\send_ppm1|Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~33_sumout\ = SUM(( !\send_ppm1|Add1~5_sumout\ $ (!\send_ppm1|Add3~1_sumout\ $ (\send_ppm1|Add5~1_sumout\)) ) + ( \send_ppm1|Add8~23\ ) + ( \send_ppm1|Add8~22\ ))
-- \send_ppm1|Add8~34\ = CARRY(( !\send_ppm1|Add1~5_sumout\ $ (!\send_ppm1|Add3~1_sumout\ $ (\send_ppm1|Add5~1_sumout\)) ) + ( \send_ppm1|Add8~23\ ) + ( \send_ppm1|Add8~22\ ))
-- \send_ppm1|Add8~35\ = SHARE((!\send_ppm1|Add1~5_sumout\ & (\send_ppm1|Add3~1_sumout\ & \send_ppm1|Add5~1_sumout\)) # (\send_ppm1|Add1~5_sumout\ & ((\send_ppm1|Add5~1_sumout\) # (\send_ppm1|Add3~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~5_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~1_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~1_sumout\,
	cin => \send_ppm1|Add8~22\,
	sharein => \send_ppm1|Add8~23\,
	sumout => \send_ppm1|Add8~33_sumout\,
	cout => \send_ppm1|Add8~34\,
	shareout => \send_ppm1|Add8~35\);

-- Location: LABCELL_X23_Y32_N9
\send_ppm1|Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~9_sumout\ = SUM(( !\send_ppm1|Add1~9_sumout\ $ (!\send_ppm1|Add5~5_sumout\ $ (\send_ppm1|Add3~5_sumout\)) ) + ( \send_ppm1|Add8~35\ ) + ( \send_ppm1|Add8~34\ ))
-- \send_ppm1|Add8~10\ = CARRY(( !\send_ppm1|Add1~9_sumout\ $ (!\send_ppm1|Add5~5_sumout\ $ (\send_ppm1|Add3~5_sumout\)) ) + ( \send_ppm1|Add8~35\ ) + ( \send_ppm1|Add8~34\ ))
-- \send_ppm1|Add8~11\ = SHARE((!\send_ppm1|Add1~9_sumout\ & (\send_ppm1|Add5~5_sumout\ & \send_ppm1|Add3~5_sumout\)) # (\send_ppm1|Add1~9_sumout\ & ((\send_ppm1|Add3~5_sumout\) # (\send_ppm1|Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~9_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~5_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~5_sumout\,
	cin => \send_ppm1|Add8~34\,
	sharein => \send_ppm1|Add8~35\,
	sumout => \send_ppm1|Add8~9_sumout\,
	cout => \send_ppm1|Add8~10\,
	shareout => \send_ppm1|Add8~11\);

-- Location: LABCELL_X23_Y32_N12
\send_ppm1|Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~25_sumout\ = SUM(( !\send_ppm1|Add5~21_sumout\ $ (!\send_ppm1|Add3~21_sumout\ $ (\send_ppm1|Add1~21_sumout\)) ) + ( \send_ppm1|Add8~11\ ) + ( \send_ppm1|Add8~10\ ))
-- \send_ppm1|Add8~26\ = CARRY(( !\send_ppm1|Add5~21_sumout\ $ (!\send_ppm1|Add3~21_sumout\ $ (\send_ppm1|Add1~21_sumout\)) ) + ( \send_ppm1|Add8~11\ ) + ( \send_ppm1|Add8~10\ ))
-- \send_ppm1|Add8~27\ = SHARE((!\send_ppm1|Add5~21_sumout\ & (\send_ppm1|Add3~21_sumout\ & \send_ppm1|Add1~21_sumout\)) # (\send_ppm1|Add5~21_sumout\ & ((\send_ppm1|Add1~21_sumout\) # (\send_ppm1|Add3~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~21_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~21_sumout\,
	datad => \send_ppm1|ALT_INV_Add1~21_sumout\,
	cin => \send_ppm1|Add8~10\,
	sharein => \send_ppm1|Add8~11\,
	sumout => \send_ppm1|Add8~25_sumout\,
	cout => \send_ppm1|Add8~26\,
	shareout => \send_ppm1|Add8~27\);

-- Location: LABCELL_X23_Y32_N15
\send_ppm1|Add8~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~53_sumout\ = SUM(( !\send_ppm1|Add1~57_sumout\ $ (!\send_ppm1|Add5~45_sumout\ $ (\send_ppm1|Add3~45_sumout\)) ) + ( \send_ppm1|Add8~27\ ) + ( \send_ppm1|Add8~26\ ))
-- \send_ppm1|Add8~54\ = CARRY(( !\send_ppm1|Add1~57_sumout\ $ (!\send_ppm1|Add5~45_sumout\ $ (\send_ppm1|Add3~45_sumout\)) ) + ( \send_ppm1|Add8~27\ ) + ( \send_ppm1|Add8~26\ ))
-- \send_ppm1|Add8~55\ = SHARE((!\send_ppm1|Add1~57_sumout\ & (\send_ppm1|Add5~45_sumout\ & \send_ppm1|Add3~45_sumout\)) # (\send_ppm1|Add1~57_sumout\ & ((\send_ppm1|Add3~45_sumout\) # (\send_ppm1|Add5~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~57_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~45_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~45_sumout\,
	cin => \send_ppm1|Add8~26\,
	sharein => \send_ppm1|Add8~27\,
	sumout => \send_ppm1|Add8~53_sumout\,
	cout => \send_ppm1|Add8~54\,
	shareout => \send_ppm1|Add8~55\);

-- Location: LABCELL_X23_Y32_N18
\send_ppm1|Add8~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~57_sumout\ = SUM(( !\send_ppm1|Add1~1_sumout\ $ (!\send_ppm1|Add5~9_sumout\ $ (!\send_ppm1|Add3~9_sumout\)) ) + ( \send_ppm1|Add8~55\ ) + ( \send_ppm1|Add8~54\ ))
-- \send_ppm1|Add8~58\ = CARRY(( !\send_ppm1|Add1~1_sumout\ $ (!\send_ppm1|Add5~9_sumout\ $ (!\send_ppm1|Add3~9_sumout\)) ) + ( \send_ppm1|Add8~55\ ) + ( \send_ppm1|Add8~54\ ))
-- \send_ppm1|Add8~59\ = SHARE((!\send_ppm1|Add1~1_sumout\ & ((!\send_ppm1|Add5~9_sumout\) # (!\send_ppm1|Add3~9_sumout\))) # (\send_ppm1|Add1~1_sumout\ & (!\send_ppm1|Add5~9_sumout\ & !\send_ppm1|Add3~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101010000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~1_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~9_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~9_sumout\,
	cin => \send_ppm1|Add8~54\,
	sharein => \send_ppm1|Add8~55\,
	sumout => \send_ppm1|Add8~57_sumout\,
	cout => \send_ppm1|Add8~58\,
	shareout => \send_ppm1|Add8~59\);

-- Location: LABCELL_X23_Y32_N21
\send_ppm1|Add8~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~73_sumout\ = SUM(( !\send_ppm1|Add1~1_sumout\ $ (!\send_ppm1|Add3~9_sumout\ $ (!\send_ppm1|Add5~9_sumout\)) ) + ( \send_ppm1|Add8~59\ ) + ( \send_ppm1|Add8~58\ ))
-- \send_ppm1|Add8~74\ = CARRY(( !\send_ppm1|Add1~1_sumout\ $ (!\send_ppm1|Add3~9_sumout\ $ (!\send_ppm1|Add5~9_sumout\)) ) + ( \send_ppm1|Add8~59\ ) + ( \send_ppm1|Add8~58\ ))
-- \send_ppm1|Add8~75\ = SHARE((!\send_ppm1|Add1~1_sumout\ & ((!\send_ppm1|Add3~9_sumout\) # (!\send_ppm1|Add5~9_sumout\))) # (\send_ppm1|Add1~1_sumout\ & (!\send_ppm1|Add3~9_sumout\ & !\send_ppm1|Add5~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101010000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~1_sumout\,
	datac => \send_ppm1|ALT_INV_Add3~9_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~9_sumout\,
	cin => \send_ppm1|Add8~58\,
	sharein => \send_ppm1|Add8~59\,
	sumout => \send_ppm1|Add8~73_sumout\,
	cout => \send_ppm1|Add8~74\,
	shareout => \send_ppm1|Add8~75\);

-- Location: LABCELL_X22_Y36_N0
\send_ppm1|Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~1_sumout\ = SUM(( \send_ppm1|Add8~1_sumout\ ) + ( \send_ppm1|Add7~37_sumout\ ) + ( !VCC ))
-- \send_ppm1|Add10~2\ = CARRY(( \send_ppm1|Add8~1_sumout\ ) + ( \send_ppm1|Add7~37_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~37_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~1_sumout\,
	cin => GND,
	sumout => \send_ppm1|Add10~1_sumout\,
	cout => \send_ppm1|Add10~2\);

-- Location: LABCELL_X22_Y36_N3
\send_ppm1|Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~5_sumout\ = SUM(( \send_ppm1|Add8~5_sumout\ ) + ( \send_ppm1|Add7~21_sumout\ ) + ( \send_ppm1|Add10~2\ ))
-- \send_ppm1|Add10~6\ = CARRY(( \send_ppm1|Add8~5_sumout\ ) + ( \send_ppm1|Add7~21_sumout\ ) + ( \send_ppm1|Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add7~21_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~5_sumout\,
	cin => \send_ppm1|Add10~2\,
	sumout => \send_ppm1|Add10~5_sumout\,
	cout => \send_ppm1|Add10~6\);

-- Location: LABCELL_X22_Y36_N6
\send_ppm1|Add10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~37_sumout\ = SUM(( \send_ppm1|Add8~37_sumout\ ) + ( \send_ppm1|Add7~25_sumout\ ) + ( \send_ppm1|Add10~6\ ))
-- \send_ppm1|Add10~38\ = CARRY(( \send_ppm1|Add8~37_sumout\ ) + ( \send_ppm1|Add7~25_sumout\ ) + ( \send_ppm1|Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add7~25_sumout\,
	datac => \send_ppm1|ALT_INV_Add8~37_sumout\,
	cin => \send_ppm1|Add10~6\,
	sumout => \send_ppm1|Add10~37_sumout\,
	cout => \send_ppm1|Add10~38\);

-- Location: LABCELL_X22_Y36_N9
\send_ppm1|Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~29_sumout\ = SUM(( \send_ppm1|Add8~29_sumout\ ) + ( \send_ppm1|Add7~29_sumout\ ) + ( \send_ppm1|Add10~38\ ))
-- \send_ppm1|Add10~30\ = CARRY(( \send_ppm1|Add8~29_sumout\ ) + ( \send_ppm1|Add7~29_sumout\ ) + ( \send_ppm1|Add10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~29_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~29_sumout\,
	cin => \send_ppm1|Add10~38\,
	sumout => \send_ppm1|Add10~29_sumout\,
	cout => \send_ppm1|Add10~30\);

-- Location: LABCELL_X22_Y36_N12
\send_ppm1|Add10~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~61_sumout\ = SUM(( \send_ppm1|Add7~53_sumout\ ) + ( \send_ppm1|Add8~61_sumout\ ) + ( \send_ppm1|Add10~30\ ))
-- \send_ppm1|Add10~62\ = CARRY(( \send_ppm1|Add7~53_sumout\ ) + ( \send_ppm1|Add8~61_sumout\ ) + ( \send_ppm1|Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add8~61_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~53_sumout\,
	cin => \send_ppm1|Add10~30\,
	sumout => \send_ppm1|Add10~61_sumout\,
	cout => \send_ppm1|Add10~62\);

-- Location: LABCELL_X22_Y36_N15
\send_ppm1|Add10~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~65_sumout\ = SUM(( \send_ppm1|Add8~65_sumout\ ) + ( \send_ppm1|Add7~57_sumout\ ) + ( \send_ppm1|Add10~62\ ))
-- \send_ppm1|Add10~66\ = CARRY(( \send_ppm1|Add8~65_sumout\ ) + ( \send_ppm1|Add7~57_sumout\ ) + ( \send_ppm1|Add10~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~57_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~65_sumout\,
	cin => \send_ppm1|Add10~62\,
	sumout => \send_ppm1|Add10~65_sumout\,
	cout => \send_ppm1|Add10~66\);

-- Location: LABCELL_X22_Y36_N18
\send_ppm1|Add10~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~69_sumout\ = SUM(( \send_ppm1|Add7~61_sumout\ ) + ( \send_ppm1|Add8~69_sumout\ ) + ( \send_ppm1|Add10~66\ ))
-- \send_ppm1|Add10~70\ = CARRY(( \send_ppm1|Add7~61_sumout\ ) + ( \send_ppm1|Add8~69_sumout\ ) + ( \send_ppm1|Add10~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add8~69_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~61_sumout\,
	cin => \send_ppm1|Add10~66\,
	sumout => \send_ppm1|Add10~69_sumout\,
	cout => \send_ppm1|Add10~70\);

-- Location: LABCELL_X22_Y36_N21
\send_ppm1|Add10~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~41_sumout\ = SUM(( \send_ppm1|Add7~41_sumout\ ) + ( \send_ppm1|Add8~41_sumout\ ) + ( \send_ppm1|Add10~70\ ))
-- \send_ppm1|Add10~42\ = CARRY(( \send_ppm1|Add7~41_sumout\ ) + ( \send_ppm1|Add8~41_sumout\ ) + ( \send_ppm1|Add10~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add8~41_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~41_sumout\,
	cin => \send_ppm1|Add10~70\,
	sumout => \send_ppm1|Add10~41_sumout\,
	cout => \send_ppm1|Add10~42\);

-- Location: LABCELL_X22_Y36_N24
\send_ppm1|Add10~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~45_sumout\ = SUM(( \send_ppm1|Add8~45_sumout\ ) + ( \send_ppm1|Add7~45_sumout\ ) + ( \send_ppm1|Add10~42\ ))
-- \send_ppm1|Add10~46\ = CARRY(( \send_ppm1|Add8~45_sumout\ ) + ( \send_ppm1|Add7~45_sumout\ ) + ( \send_ppm1|Add10~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~45_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~45_sumout\,
	cin => \send_ppm1|Add10~42\,
	sumout => \send_ppm1|Add10~45_sumout\,
	cout => \send_ppm1|Add10~46\);

-- Location: LABCELL_X22_Y36_N27
\send_ppm1|Add10~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~49_sumout\ = SUM(( \send_ppm1|Add7~49_sumout\ ) + ( \send_ppm1|Add8~49_sumout\ ) + ( \send_ppm1|Add10~46\ ))
-- \send_ppm1|Add10~50\ = CARRY(( \send_ppm1|Add7~49_sumout\ ) + ( \send_ppm1|Add8~49_sumout\ ) + ( \send_ppm1|Add10~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add8~49_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~49_sumout\,
	cin => \send_ppm1|Add10~46\,
	sumout => \send_ppm1|Add10~49_sumout\,
	cout => \send_ppm1|Add10~50\);

-- Location: LABCELL_X22_Y36_N30
\send_ppm1|Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~17_sumout\ = SUM(( \send_ppm1|Add8~17_sumout\ ) + ( \send_ppm1|Add7~9_sumout\ ) + ( \send_ppm1|Add10~50\ ))
-- \send_ppm1|Add10~18\ = CARRY(( \send_ppm1|Add8~17_sumout\ ) + ( \send_ppm1|Add7~9_sumout\ ) + ( \send_ppm1|Add10~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add7~9_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~17_sumout\,
	cin => \send_ppm1|Add10~50\,
	sumout => \send_ppm1|Add10~17_sumout\,
	cout => \send_ppm1|Add10~18\);

-- Location: LABCELL_X22_Y36_N33
\send_ppm1|Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~21_sumout\ = SUM(( \send_ppm1|Add8~21_sumout\ ) + ( \send_ppm1|Add7~13_sumout\ ) + ( \send_ppm1|Add10~18\ ))
-- \send_ppm1|Add10~22\ = CARRY(( \send_ppm1|Add8~21_sumout\ ) + ( \send_ppm1|Add7~13_sumout\ ) + ( \send_ppm1|Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~13_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~21_sumout\,
	cin => \send_ppm1|Add10~18\,
	sumout => \send_ppm1|Add10~21_sumout\,
	cout => \send_ppm1|Add10~22\);

-- Location: LABCELL_X22_Y36_N36
\send_ppm1|Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~33_sumout\ = SUM(( \send_ppm1|Add8~33_sumout\ ) + ( \send_ppm1|Add7~33_sumout\ ) + ( \send_ppm1|Add10~22\ ))
-- \send_ppm1|Add10~34\ = CARRY(( \send_ppm1|Add8~33_sumout\ ) + ( \send_ppm1|Add7~33_sumout\ ) + ( \send_ppm1|Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~33_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~33_sumout\,
	cin => \send_ppm1|Add10~22\,
	sumout => \send_ppm1|Add10~33_sumout\,
	cout => \send_ppm1|Add10~34\);

-- Location: LABCELL_X22_Y36_N39
\send_ppm1|Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~9_sumout\ = SUM(( \send_ppm1|Add7~1_sumout\ ) + ( \send_ppm1|Add8~9_sumout\ ) + ( \send_ppm1|Add10~34\ ))
-- \send_ppm1|Add10~10\ = CARRY(( \send_ppm1|Add7~1_sumout\ ) + ( \send_ppm1|Add8~9_sumout\ ) + ( \send_ppm1|Add10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add8~9_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~1_sumout\,
	cin => \send_ppm1|Add10~34\,
	sumout => \send_ppm1|Add10~9_sumout\,
	cout => \send_ppm1|Add10~10\);

-- Location: LABCELL_X22_Y36_N42
\send_ppm1|Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~25_sumout\ = SUM(( \send_ppm1|Add8~25_sumout\ ) + ( \send_ppm1|Add7~17_sumout\ ) + ( \send_ppm1|Add10~10\ ))
-- \send_ppm1|Add10~26\ = CARRY(( \send_ppm1|Add8~25_sumout\ ) + ( \send_ppm1|Add7~17_sumout\ ) + ( \send_ppm1|Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~17_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~25_sumout\,
	cin => \send_ppm1|Add10~10\,
	sumout => \send_ppm1|Add10~25_sumout\,
	cout => \send_ppm1|Add10~26\);

-- Location: LABCELL_X22_Y36_N45
\send_ppm1|Add10~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~53_sumout\ = SUM(( \send_ppm1|Add8~53_sumout\ ) + ( \send_ppm1|Add7~65_sumout\ ) + ( \send_ppm1|Add10~26\ ))
-- \send_ppm1|Add10~54\ = CARRY(( \send_ppm1|Add8~53_sumout\ ) + ( \send_ppm1|Add7~65_sumout\ ) + ( \send_ppm1|Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add7~65_sumout\,
	datac => \send_ppm1|ALT_INV_Add8~53_sumout\,
	cin => \send_ppm1|Add10~26\,
	sumout => \send_ppm1|Add10~53_sumout\,
	cout => \send_ppm1|Add10~54\);

-- Location: LABCELL_X22_Y36_N48
\send_ppm1|Add10~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~57_sumout\ = SUM(( \send_ppm1|Add8~57_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~54\ ))
-- \send_ppm1|Add10~58\ = CARRY(( \send_ppm1|Add8~57_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add7~5_sumout\,
	datac => \send_ppm1|ALT_INV_Add8~57_sumout\,
	cin => \send_ppm1|Add10~54\,
	sumout => \send_ppm1|Add10~57_sumout\,
	cout => \send_ppm1|Add10~58\);

-- Location: LABCELL_X22_Y36_N51
\send_ppm1|Add10~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~73_sumout\ = SUM(( \send_ppm1|Add8~73_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~58\ ))
-- \send_ppm1|Add10~74\ = CARRY(( \send_ppm1|Add8~73_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add7~5_sumout\,
	datac => \send_ppm1|ALT_INV_Add8~73_sumout\,
	cin => \send_ppm1|Add10~58\,
	sumout => \send_ppm1|Add10~73_sumout\,
	cout => \send_ppm1|Add10~74\);

-- Location: LABCELL_X23_Y36_N0
\send_ppm1|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~29_sumout\ = SUM(( \send_ppm1|Add10~37_sumout\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add11~30\ = CARRY(( \send_ppm1|Add10~37_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~37_sumout\,
	cin => GND,
	sumout => \send_ppm1|Add11~29_sumout\,
	cout => \send_ppm1|Add11~30\);

-- Location: LABCELL_X23_Y36_N3
\send_ppm1|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~21_sumout\ = SUM(( \send_ppm1|Add10~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~30\ ))
-- \send_ppm1|Add11~22\ = CARRY(( \send_ppm1|Add10~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~29_sumout\,
	cin => \send_ppm1|Add11~30\,
	sumout => \send_ppm1|Add11~21_sumout\,
	cout => \send_ppm1|Add11~22\);

-- Location: LABCELL_X23_Y36_N6
\send_ppm1|Add11~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~53_sumout\ = SUM(( \send_ppm1|Add10~61_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~22\ ))
-- \send_ppm1|Add11~54\ = CARRY(( \send_ppm1|Add10~61_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~61_sumout\,
	cin => \send_ppm1|Add11~22\,
	sumout => \send_ppm1|Add11~53_sumout\,
	cout => \send_ppm1|Add11~54\);

-- Location: LABCELL_X23_Y36_N9
\send_ppm1|Add11~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~57_sumout\ = SUM(( \send_ppm1|Add10~65_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~54\ ))
-- \send_ppm1|Add11~58\ = CARRY(( \send_ppm1|Add10~65_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~65_sumout\,
	cin => \send_ppm1|Add11~54\,
	sumout => \send_ppm1|Add11~57_sumout\,
	cout => \send_ppm1|Add11~58\);

-- Location: LABCELL_X23_Y36_N12
\send_ppm1|Add11~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~61_sumout\ = SUM(( \send_ppm1|Add10~69_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~58\ ))
-- \send_ppm1|Add11~62\ = CARRY(( \send_ppm1|Add10~69_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add10~69_sumout\,
	cin => \send_ppm1|Add11~58\,
	sumout => \send_ppm1|Add11~61_sumout\,
	cout => \send_ppm1|Add11~62\);

-- Location: LABCELL_X23_Y36_N15
\send_ppm1|Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~33_sumout\ = SUM(( \send_ppm1|Add10~41_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~62\ ))
-- \send_ppm1|Add11~34\ = CARRY(( \send_ppm1|Add10~41_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~41_sumout\,
	cin => \send_ppm1|Add11~62\,
	sumout => \send_ppm1|Add11~33_sumout\,
	cout => \send_ppm1|Add11~34\);

-- Location: LABCELL_X23_Y36_N18
\send_ppm1|Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~37_sumout\ = SUM(( \send_ppm1|Add10~45_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~34\ ))
-- \send_ppm1|Add11~38\ = CARRY(( \send_ppm1|Add10~45_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add10~45_sumout\,
	cin => \send_ppm1|Add11~34\,
	sumout => \send_ppm1|Add11~37_sumout\,
	cout => \send_ppm1|Add11~38\);

-- Location: LABCELL_X23_Y36_N21
\send_ppm1|Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~41_sumout\ = SUM(( \send_ppm1|Add10~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~38\ ))
-- \send_ppm1|Add11~42\ = CARRY(( \send_ppm1|Add10~49_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~49_sumout\,
	cin => \send_ppm1|Add11~38\,
	sumout => \send_ppm1|Add11~41_sumout\,
	cout => \send_ppm1|Add11~42\);

-- Location: LABCELL_X23_Y36_N24
\send_ppm1|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~9_sumout\ = SUM(( \send_ppm1|Add10~17_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~42\ ))
-- \send_ppm1|Add11~10\ = CARRY(( \send_ppm1|Add10~17_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~17_sumout\,
	cin => \send_ppm1|Add11~42\,
	sumout => \send_ppm1|Add11~9_sumout\,
	cout => \send_ppm1|Add11~10\);

-- Location: LABCELL_X23_Y36_N27
\send_ppm1|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~13_sumout\ = SUM(( \send_ppm1|Add10~21_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~10\ ))
-- \send_ppm1|Add11~14\ = CARRY(( \send_ppm1|Add10~21_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~21_sumout\,
	cin => \send_ppm1|Add11~10\,
	sumout => \send_ppm1|Add11~13_sumout\,
	cout => \send_ppm1|Add11~14\);

-- Location: LABCELL_X23_Y36_N30
\send_ppm1|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~25_sumout\ = SUM(( \send_ppm1|Add10~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~14\ ))
-- \send_ppm1|Add11~26\ = CARRY(( \send_ppm1|Add10~33_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~33_sumout\,
	cin => \send_ppm1|Add11~14\,
	sumout => \send_ppm1|Add11~25_sumout\,
	cout => \send_ppm1|Add11~26\);

-- Location: LABCELL_X23_Y36_N33
\send_ppm1|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~1_sumout\ = SUM(( \send_ppm1|Add10~9_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~26\ ))
-- \send_ppm1|Add11~2\ = CARRY(( \send_ppm1|Add10~9_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~9_sumout\,
	cin => \send_ppm1|Add11~26\,
	sumout => \send_ppm1|Add11~1_sumout\,
	cout => \send_ppm1|Add11~2\);

-- Location: LABCELL_X23_Y36_N36
\send_ppm1|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~17_sumout\ = SUM(( \send_ppm1|Add10~25_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~2\ ))
-- \send_ppm1|Add11~18\ = CARRY(( \send_ppm1|Add10~25_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~25_sumout\,
	cin => \send_ppm1|Add11~2\,
	sumout => \send_ppm1|Add11~17_sumout\,
	cout => \send_ppm1|Add11~18\);

-- Location: LABCELL_X23_Y36_N39
\send_ppm1|Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~45_sumout\ = SUM(( \send_ppm1|Add10~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~18\ ))
-- \send_ppm1|Add11~46\ = CARRY(( \send_ppm1|Add10~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add10~53_sumout\,
	cin => \send_ppm1|Add11~18\,
	sumout => \send_ppm1|Add11~45_sumout\,
	cout => \send_ppm1|Add11~46\);

-- Location: LABCELL_X23_Y36_N42
\send_ppm1|Add11~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~49_sumout\ = SUM(( \send_ppm1|Add10~57_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~46\ ))
-- \send_ppm1|Add11~50\ = CARRY(( \send_ppm1|Add10~57_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~57_sumout\,
	cin => \send_ppm1|Add11~46\,
	sumout => \send_ppm1|Add11~49_sumout\,
	cout => \send_ppm1|Add11~50\);

-- Location: LABCELL_X23_Y36_N45
\send_ppm1|Add11~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~65_sumout\ = SUM(( \send_ppm1|Add10~73_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~50\ ))
-- \send_ppm1|Add11~66\ = CARRY(( \send_ppm1|Add10~73_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add10~73_sumout\,
	cin => \send_ppm1|Add11~50\,
	sumout => \send_ppm1|Add11~65_sumout\,
	cout => \send_ppm1|Add11~66\);

-- Location: LABCELL_X24_Y36_N0
\send_ppm1|Add12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~29_sumout\ = SUM(( !\send_ppm1|Add10~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \send_ppm1|Add12~30\ = CARRY(( !\send_ppm1|Add10~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~1_sumout\,
	cin => GND,
	sumout => \send_ppm1|Add12~29_sumout\,
	cout => \send_ppm1|Add12~30\);

-- Location: LABCELL_X24_Y36_N3
\send_ppm1|Add12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~33_sumout\ = SUM(( !\send_ppm1|Add10~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~30\ ))
-- \send_ppm1|Add12~34\ = CARRY(( !\send_ppm1|Add10~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~5_sumout\,
	cin => \send_ppm1|Add12~30\,
	sumout => \send_ppm1|Add12~33_sumout\,
	cout => \send_ppm1|Add12~34\);

-- Location: LABCELL_X24_Y36_N6
\send_ppm1|Add12~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~37_sumout\ = SUM(( !\send_ppm1|Add11~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~34\ ))
-- \send_ppm1|Add12~38\ = CARRY(( !\send_ppm1|Add11~29_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add11~29_sumout\,
	cin => \send_ppm1|Add12~34\,
	sumout => \send_ppm1|Add12~37_sumout\,
	cout => \send_ppm1|Add12~38\);

-- Location: LABCELL_X24_Y36_N9
\send_ppm1|Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~21_sumout\ = SUM(( !\send_ppm1|Add11~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~38\ ))
-- \send_ppm1|Add12~22\ = CARRY(( !\send_ppm1|Add11~21_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add11~21_sumout\,
	cin => \send_ppm1|Add12~38\,
	sumout => \send_ppm1|Add12~21_sumout\,
	cout => \send_ppm1|Add12~22\);

-- Location: LABCELL_X24_Y36_N12
\send_ppm1|Add12~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~61_sumout\ = SUM(( !\send_ppm1|Add11~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~22\ ))
-- \send_ppm1|Add12~62\ = CARRY(( !\send_ppm1|Add11~53_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~53_sumout\,
	cin => \send_ppm1|Add12~22\,
	sumout => \send_ppm1|Add12~61_sumout\,
	cout => \send_ppm1|Add12~62\);

-- Location: LABCELL_X24_Y36_N15
\send_ppm1|Add12~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~65_sumout\ = SUM(( !\send_ppm1|Add11~57_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~62\ ))
-- \send_ppm1|Add12~66\ = CARRY(( !\send_ppm1|Add11~57_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add11~57_sumout\,
	cin => \send_ppm1|Add12~62\,
	sumout => \send_ppm1|Add12~65_sumout\,
	cout => \send_ppm1|Add12~66\);

-- Location: LABCELL_X24_Y36_N18
\send_ppm1|Add12~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~69_sumout\ = SUM(( !\send_ppm1|Add11~61_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~66\ ))
-- \send_ppm1|Add12~70\ = CARRY(( !\send_ppm1|Add11~61_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~61_sumout\,
	cin => \send_ppm1|Add12~66\,
	sumout => \send_ppm1|Add12~69_sumout\,
	cout => \send_ppm1|Add12~70\);

-- Location: LABCELL_X24_Y36_N21
\send_ppm1|Add12~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~41_sumout\ = SUM(( !\send_ppm1|Add11~33_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~70\ ))
-- \send_ppm1|Add12~42\ = CARRY(( !\send_ppm1|Add11~33_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add11~33_sumout\,
	cin => \send_ppm1|Add12~70\,
	sumout => \send_ppm1|Add12~41_sumout\,
	cout => \send_ppm1|Add12~42\);

-- Location: LABCELL_X24_Y36_N24
\send_ppm1|Add12~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~45_sumout\ = SUM(( !\send_ppm1|Add11~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~42\ ))
-- \send_ppm1|Add12~46\ = CARRY(( !\send_ppm1|Add11~37_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add11~37_sumout\,
	cin => \send_ppm1|Add12~42\,
	sumout => \send_ppm1|Add12~45_sumout\,
	cout => \send_ppm1|Add12~46\);

-- Location: LABCELL_X24_Y36_N27
\send_ppm1|Add12~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~49_sumout\ = SUM(( !\send_ppm1|Add11~41_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~46\ ))
-- \send_ppm1|Add12~50\ = CARRY(( !\send_ppm1|Add11~41_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~41_sumout\,
	cin => \send_ppm1|Add12~46\,
	sumout => \send_ppm1|Add12~49_sumout\,
	cout => \send_ppm1|Add12~50\);

-- Location: LABCELL_X24_Y36_N30
\send_ppm1|Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~9_sumout\ = SUM(( !\send_ppm1|Add11~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~50\ ))
-- \send_ppm1|Add12~10\ = CARRY(( !\send_ppm1|Add11~9_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add11~9_sumout\,
	cin => \send_ppm1|Add12~50\,
	sumout => \send_ppm1|Add12~9_sumout\,
	cout => \send_ppm1|Add12~10\);

-- Location: LABCELL_X24_Y36_N33
\send_ppm1|Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~13_sumout\ = SUM(( !\send_ppm1|Add11~13_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~10\ ))
-- \send_ppm1|Add12~14\ = CARRY(( !\send_ppm1|Add11~13_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~13_sumout\,
	cin => \send_ppm1|Add12~10\,
	sumout => \send_ppm1|Add12~13_sumout\,
	cout => \send_ppm1|Add12~14\);

-- Location: LABCELL_X24_Y36_N36
\send_ppm1|Add12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~25_sumout\ = SUM(( !\send_ppm1|Add11~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~14\ ))
-- \send_ppm1|Add12~26\ = CARRY(( !\send_ppm1|Add11~25_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add11~25_sumout\,
	cin => \send_ppm1|Add12~14\,
	sumout => \send_ppm1|Add12~25_sumout\,
	cout => \send_ppm1|Add12~26\);

-- Location: LABCELL_X24_Y36_N39
\send_ppm1|Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~1_sumout\ = SUM(( !\send_ppm1|Add11~1_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~26\ ))
-- \send_ppm1|Add12~2\ = CARRY(( !\send_ppm1|Add11~1_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~1_sumout\,
	cin => \send_ppm1|Add12~26\,
	sumout => \send_ppm1|Add12~1_sumout\,
	cout => \send_ppm1|Add12~2\);

-- Location: LABCELL_X24_Y36_N42
\send_ppm1|Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~17_sumout\ = SUM(( !\send_ppm1|Add11~17_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~2\ ))
-- \send_ppm1|Add12~18\ = CARRY(( !\send_ppm1|Add11~17_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add11~17_sumout\,
	cin => \send_ppm1|Add12~2\,
	sumout => \send_ppm1|Add12~17_sumout\,
	cout => \send_ppm1|Add12~18\);

-- Location: LABCELL_X24_Y36_N45
\send_ppm1|Add12~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~53_sumout\ = SUM(( !\send_ppm1|Add11~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~18\ ))
-- \send_ppm1|Add12~54\ = CARRY(( !\send_ppm1|Add11~45_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add11~45_sumout\,
	cin => \send_ppm1|Add12~18\,
	sumout => \send_ppm1|Add12~53_sumout\,
	cout => \send_ppm1|Add12~54\);

-- Location: LABCELL_X24_Y36_N48
\send_ppm1|Add12~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~57_sumout\ = SUM(( !\send_ppm1|Add11~49_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~54\ ))
-- \send_ppm1|Add12~58\ = CARRY(( !\send_ppm1|Add11~49_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~49_sumout\,
	cin => \send_ppm1|Add12~54\,
	sumout => \send_ppm1|Add12~57_sumout\,
	cout => \send_ppm1|Add12~58\);

-- Location: LABCELL_X24_Y36_N51
\send_ppm1|Add12~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~73_sumout\ = SUM(( !\send_ppm1|Add11~65_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~58\ ))
-- \send_ppm1|Add12~74\ = CARRY(( !\send_ppm1|Add11~65_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add11~65_sumout\,
	cin => \send_ppm1|Add12~58\,
	sumout => \send_ppm1|Add12~73_sumout\,
	cout => \send_ppm1|Add12~74\);

-- Location: LABCELL_X23_Y32_N24
\send_ppm1|Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add8~13_sumout\ = SUM(( !\send_ppm1|Add1~1_sumout\ $ (!\send_ppm1|Add5~9_sumout\ $ (!\send_ppm1|Add3~9_sumout\)) ) + ( \send_ppm1|Add8~75\ ) + ( \send_ppm1|Add8~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~1_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~9_sumout\,
	datad => \send_ppm1|ALT_INV_Add3~9_sumout\,
	cin => \send_ppm1|Add8~74\,
	sharein => \send_ppm1|Add8~75\,
	sumout => \send_ppm1|Add8~13_sumout\);

-- Location: LABCELL_X22_Y36_N54
\send_ppm1|Add10~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~77_sumout\ = SUM(( \send_ppm1|Add8~13_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~74\ ))
-- \send_ppm1|Add10~78\ = CARRY(( \send_ppm1|Add8~13_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add7~5_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~13_sumout\,
	cin => \send_ppm1|Add10~74\,
	sumout => \send_ppm1|Add10~77_sumout\,
	cout => \send_ppm1|Add10~78\);

-- Location: LABCELL_X23_Y36_N48
\send_ppm1|Add11~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~69_sumout\ = SUM(( \send_ppm1|Add10~77_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~66\ ))
-- \send_ppm1|Add11~70\ = CARRY(( \send_ppm1|Add10~77_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add10~77_sumout\,
	cin => \send_ppm1|Add11~66\,
	sumout => \send_ppm1|Add11~69_sumout\,
	cout => \send_ppm1|Add11~70\);

-- Location: LABCELL_X24_Y36_N54
\send_ppm1|Add12~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~77_sumout\ = SUM(( !\send_ppm1|Add11~69_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~74\ ))
-- \send_ppm1|Add12~78\ = CARRY(( !\send_ppm1|Add11~69_sumout\ ) + ( GND ) + ( \send_ppm1|Add12~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add11~69_sumout\,
	cin => \send_ppm1|Add12~74\,
	sumout => \send_ppm1|Add12~77_sumout\,
	cout => \send_ppm1|Add12~78\);

-- Location: MLABCELL_X25_Y36_N21
\send_ppm1|Equal9~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~8_combout\ = ( \send_ppm1|local_counter1|o_count\(17) & ( \send_ppm1|Add12~77_sumout\ & ( (\send_ppm1|local_counter1|o_count\(18) & \send_ppm1|Add12~73_sumout\) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(17) & ( 
-- \send_ppm1|Add12~77_sumout\ & ( (\send_ppm1|local_counter1|o_count\(18) & !\send_ppm1|Add12~73_sumout\) ) ) ) # ( \send_ppm1|local_counter1|o_count\(17) & ( !\send_ppm1|Add12~77_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(18) & 
-- \send_ppm1|Add12~73_sumout\) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(17) & ( !\send_ppm1|Add12~77_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(18) & !\send_ppm1|Add12~73_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	datad => \send_ppm1|ALT_INV_Add12~73_sumout\,
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	dataf => \send_ppm1|ALT_INV_Add12~77_sumout\,
	combout => \send_ppm1|Equal9~8_combout\);

-- Location: LABCELL_X24_Y35_N12
\send_ppm1|Equal9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~2_combout\ = ( \send_ppm1|Add12~29_sumout\ & ( \send_ppm1|Add12~37_sumout\ & ( (\send_ppm1|local_counter1|o_count\(0) & (\send_ppm1|local_counter1|o_count\(2) & (!\send_ppm1|local_counter1|o_count\(1) $ (\send_ppm1|Add12~33_sumout\)))) ) 
-- ) ) # ( !\send_ppm1|Add12~29_sumout\ & ( \send_ppm1|Add12~37_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(0) & (\send_ppm1|local_counter1|o_count\(2) & (!\send_ppm1|local_counter1|o_count\(1) $ (\send_ppm1|Add12~33_sumout\)))) ) ) ) # ( 
-- \send_ppm1|Add12~29_sumout\ & ( !\send_ppm1|Add12~37_sumout\ & ( (\send_ppm1|local_counter1|o_count\(0) & (!\send_ppm1|local_counter1|o_count\(2) & (!\send_ppm1|local_counter1|o_count\(1) $ (\send_ppm1|Add12~33_sumout\)))) ) ) ) # ( 
-- !\send_ppm1|Add12~29_sumout\ & ( !\send_ppm1|Add12~37_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(0) & (!\send_ppm1|local_counter1|o_count\(2) & (!\send_ppm1|local_counter1|o_count\(1) $ (\send_ppm1|Add12~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	datac => \send_ppm1|ALT_INV_Add12~33_sumout\,
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	datae => \send_ppm1|ALT_INV_Add12~29_sumout\,
	dataf => \send_ppm1|ALT_INV_Add12~37_sumout\,
	combout => \send_ppm1|Equal9~2_combout\);

-- Location: MLABCELL_X25_Y36_N36
\send_ppm1|Equal9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~3_combout\ = ( \send_ppm1|Equal9~2_combout\ & ( \send_ppm1|Add12~25_sumout\ & ( (\send_ppm1|local_counter1|o_count\(12) & (!\send_ppm1|local_counter1|o_count\(3) $ (\send_ppm1|Add12~21_sumout\))) ) ) ) # ( \send_ppm1|Equal9~2_combout\ & 
-- ( !\send_ppm1|Add12~25_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(12) & (!\send_ppm1|local_counter1|o_count\(3) $ (\send_ppm1|Add12~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000101000000000000000000000000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	datad => \send_ppm1|ALT_INV_Add12~21_sumout\,
	datae => \send_ppm1|ALT_INV_Equal9~2_combout\,
	dataf => \send_ppm1|ALT_INV_Add12~25_sumout\,
	combout => \send_ppm1|Equal9~3_combout\);

-- Location: MLABCELL_X25_Y36_N0
\send_ppm1|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~0_combout\ = ( \send_ppm1|Add12~1_sumout\ & ( !\send_ppm1|local_counter1|o_count\(13) ) ) # ( !\send_ppm1|Add12~1_sumout\ & ( \send_ppm1|local_counter1|o_count\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	dataf => \send_ppm1|ALT_INV_Add12~1_sumout\,
	combout => \send_ppm1|Equal9~0_combout\);

-- Location: LABCELL_X23_Y36_N57
\send_ppm1|Equal9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~4_combout\ = ( \send_ppm1|Add12~49_sumout\ & ( \send_ppm1|Add12~45_sumout\ & ( (\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add12~41_sumout\)))) ) 
-- ) ) # ( !\send_ppm1|Add12~49_sumout\ & ( \send_ppm1|Add12~45_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add12~41_sumout\)))) ) ) ) # ( 
-- \send_ppm1|Add12~49_sumout\ & ( !\send_ppm1|Add12~45_sumout\ & ( (\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add12~41_sumout\)))) ) ) ) # ( 
-- !\send_ppm1|Add12~49_sumout\ & ( !\send_ppm1|Add12~45_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add12~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	datad => \send_ppm1|ALT_INV_Add12~41_sumout\,
	datae => \send_ppm1|ALT_INV_Add12~49_sumout\,
	dataf => \send_ppm1|ALT_INV_Add12~45_sumout\,
	combout => \send_ppm1|Equal9~4_combout\);

-- Location: LABCELL_X22_Y36_N57
\send_ppm1|Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add10~13_sumout\ = SUM(( \send_ppm1|Add8~13_sumout\ ) + ( !\send_ppm1|Add7~5_sumout\ ) + ( \send_ppm1|Add10~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add7~5_sumout\,
	datad => \send_ppm1|ALT_INV_Add8~13_sumout\,
	cin => \send_ppm1|Add10~78\,
	sumout => \send_ppm1|Add10~13_sumout\);

-- Location: LABCELL_X23_Y36_N51
\send_ppm1|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add11~5_sumout\ = SUM(( \send_ppm1|Add10~13_sumout\ ) + ( GND ) + ( \send_ppm1|Add11~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add10~13_sumout\,
	cin => \send_ppm1|Add11~70\,
	sumout => \send_ppm1|Add11~5_sumout\);

-- Location: LABCELL_X24_Y36_N57
\send_ppm1|Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add12~5_sumout\ = SUM(( !\send_ppm1|Add11~5_sumout\ ) + ( VCC ) + ( \send_ppm1|Add12~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add11~5_sumout\,
	cin => \send_ppm1|Add12~78\,
	sumout => \send_ppm1|Add12~5_sumout\);

-- Location: MLABCELL_X25_Y36_N42
\send_ppm1|Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~1_combout\ = ( \send_ppm1|Add12~17_sumout\ & ( \send_ppm1|Add12~9_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|local_counter1|o_count\(11) $ (\send_ppm1|Add12~13_sumout\)))) 
-- ) ) ) # ( !\send_ppm1|Add12~17_sumout\ & ( \send_ppm1|Add12~9_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|local_counter1|o_count\(11) $ (\send_ppm1|Add12~13_sumout\)))) ) ) ) # ( 
-- \send_ppm1|Add12~17_sumout\ & ( !\send_ppm1|Add12~9_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|local_counter1|o_count\(11) $ (\send_ppm1|Add12~13_sumout\)))) ) ) ) # ( 
-- !\send_ppm1|Add12~17_sumout\ & ( !\send_ppm1|Add12~9_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|local_counter1|o_count\(11) $ (\send_ppm1|Add12~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	datad => \send_ppm1|ALT_INV_Add12~13_sumout\,
	datae => \send_ppm1|ALT_INV_Add12~17_sumout\,
	dataf => \send_ppm1|ALT_INV_Add12~9_sumout\,
	combout => \send_ppm1|Equal9~1_combout\);

-- Location: MLABCELL_X25_Y36_N30
\send_ppm1|Equal9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~5_combout\ = ( \send_ppm1|Add12~5_sumout\ & ( \send_ppm1|Equal9~1_combout\ & ( (\send_ppm1|Equal9~3_combout\ & (\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|Equal9~0_combout\ & \send_ppm1|Equal9~4_combout\))) ) ) ) # ( 
-- !\send_ppm1|Add12~5_sumout\ & ( \send_ppm1|Equal9~1_combout\ & ( (\send_ppm1|Equal9~3_combout\ & (!\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|Equal9~0_combout\ & \send_ppm1|Equal9~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal9~3_combout\,
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	datac => \send_ppm1|ALT_INV_Equal9~0_combout\,
	datad => \send_ppm1|ALT_INV_Equal9~4_combout\,
	datae => \send_ppm1|ALT_INV_Add12~5_sumout\,
	dataf => \send_ppm1|ALT_INV_Equal9~1_combout\,
	combout => \send_ppm1|Equal9~5_combout\);

-- Location: MLABCELL_X25_Y36_N3
\send_ppm1|current_state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~9_combout\ = ( \send_ppm1|Equal9~5_combout\ & ( (\send_ppm1|current_state.synchro~q\ & (\i_reset_n_top~input_o\ & (\send_ppm1|Equal9~7_combout\ & \send_ppm1|Equal9~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.synchro~q\,
	datab => \ALT_INV_i_reset_n_top~input_o\,
	datac => \send_ppm1|ALT_INV_Equal9~7_combout\,
	datad => \send_ppm1|ALT_INV_Equal9~8_combout\,
	dataf => \send_ppm1|ALT_INV_Equal9~5_combout\,
	combout => \send_ppm1|current_state~9_combout\);

-- Location: FF_X25_Y36_N4
\send_ppm1|current_state.fin_trame\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|current_state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|current_state.fin_trame~q\);

-- Location: FF_X25_Y34_N26
\send_ppm1|current_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \i_reset_n_top~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|current_state.reset~q\);

-- Location: MLABCELL_X25_Y34_N24
\send_ppm1|reg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|reg~2_combout\ = (!\send_ppm1|current_state.reset~q\) # (\send_ppm1|current_state.fin_trame~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_current_state.fin_trame~q\,
	datad => \send_ppm1|ALT_INV_current_state.reset~q\,
	combout => \send_ppm1|reg~2_combout\);

-- Location: MLABCELL_X21_Y33_N39
\send_ppm1|Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Add6~53_sumout\ = SUM(( GND ) + ( GND ) + ( \send_ppm1|Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \send_ppm1|Add6~14\,
	sumout => \send_ppm1|Add6~53_sumout\);

-- Location: LABCELL_X24_Y35_N36
\send_ppm1|Equal9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~6_combout\ = ( \send_ppm1|Add12~69_sumout\ & ( \send_ppm1|Add12~61_sumout\ & ( (\send_ppm1|local_counter1|o_count\(4) & (\send_ppm1|local_counter1|o_count\(6) & (!\send_ppm1|local_counter1|o_count\(5) $ (\send_ppm1|Add12~65_sumout\)))) ) 
-- ) ) # ( !\send_ppm1|Add12~69_sumout\ & ( \send_ppm1|Add12~61_sumout\ & ( (\send_ppm1|local_counter1|o_count\(4) & (!\send_ppm1|local_counter1|o_count\(6) & (!\send_ppm1|local_counter1|o_count\(5) $ (\send_ppm1|Add12~65_sumout\)))) ) ) ) # ( 
-- \send_ppm1|Add12~69_sumout\ & ( !\send_ppm1|Add12~61_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(4) & (\send_ppm1|local_counter1|o_count\(6) & (!\send_ppm1|local_counter1|o_count\(5) $ (\send_ppm1|Add12~65_sumout\)))) ) ) ) # ( 
-- !\send_ppm1|Add12~69_sumout\ & ( !\send_ppm1|Add12~61_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(4) & (!\send_ppm1|local_counter1|o_count\(6) & (!\send_ppm1|local_counter1|o_count\(5) $ (\send_ppm1|Add12~65_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	datad => \send_ppm1|ALT_INV_Add12~65_sumout\,
	datae => \send_ppm1|ALT_INV_Add12~69_sumout\,
	dataf => \send_ppm1|ALT_INV_Add12~61_sumout\,
	combout => \send_ppm1|Equal9~6_combout\);

-- Location: MLABCELL_X25_Y36_N27
\send_ppm1|Equal9~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal9~7_combout\ = ( \send_ppm1|Add12~57_sumout\ & ( \send_ppm1|Equal9~6_combout\ & ( (\send_ppm1|local_counter1|o_count\(16) & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add12~53_sumout\))) ) ) ) # ( !\send_ppm1|Add12~57_sumout\ & 
-- ( \send_ppm1|Equal9~6_combout\ & ( (!\send_ppm1|local_counter1|o_count\(16) & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add12~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000010100000000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	datad => \send_ppm1|ALT_INV_Add12~53_sumout\,
	datae => \send_ppm1|ALT_INV_Add12~57_sumout\,
	dataf => \send_ppm1|ALT_INV_Equal9~6_combout\,
	combout => \send_ppm1|Equal9~7_combout\);

-- Location: LABCELL_X24_Y34_N3
\send_ppm1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal0~0_combout\ = ( \send_ppm1|local_counter1|o_count\(1) & ( \send_ppm1|local_counter1|o_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	combout => \send_ppm1|Equal0~0_combout\);

-- Location: LABCELL_X24_Y35_N9
\send_ppm1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal0~1_combout\ = ( !\send_ppm1|local_counter1|o_count\(5) & ( !\send_ppm1|local_counter1|o_count\(2) & ( (!\send_ppm1|local_counter1|o_count\(4) & (!\send_ppm1|local_counter1|o_count\(7) & (\send_ppm1|local_counter1|o_count\(3) & 
-- \send_ppm1|local_counter1|o_count\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	combout => \send_ppm1|Equal0~1_combout\);

-- Location: MLABCELL_X25_Y34_N42
\send_ppm1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal0~4_combout\ = (\send_ppm1|Equal0~3_combout\ & (\send_ppm1|Equal0~0_combout\ & (\send_ppm1|Equal0~2_combout\ & \send_ppm1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal0~3_combout\,
	datab => \send_ppm1|ALT_INV_Equal0~0_combout\,
	datac => \send_ppm1|ALT_INV_Equal0~2_combout\,
	datad => \send_ppm1|ALT_INV_Equal0~1_combout\,
	combout => \send_ppm1|Equal0~4_combout\);

-- Location: MLABCELL_X25_Y34_N33
\send_ppm1|current_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~10_combout\ = ( \send_ppm1|current_state.tempo~q\ & ( (\send_ppm1|Equal0~2_combout\ & (\send_ppm1|Equal0~0_combout\ & (\send_ppm1|Equal0~1_combout\ & \send_ppm1|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal0~2_combout\,
	datab => \send_ppm1|ALT_INV_Equal0~0_combout\,
	datac => \send_ppm1|ALT_INV_Equal0~1_combout\,
	datad => \send_ppm1|ALT_INV_Equal0~3_combout\,
	dataf => \send_ppm1|ALT_INV_current_state.tempo~q\,
	combout => \send_ppm1|current_state~10_combout\);

-- Location: LABCELL_X23_Y32_N36
\send_ppm1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal3~1_combout\ = ( \send_ppm1|local_counter1|o_count\(13) & ( !\send_ppm1|Add1~9_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(13) & ( \send_ppm1|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_Add1~9_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	combout => \send_ppm1|Equal3~1_combout\);

-- Location: LABCELL_X23_Y32_N42
\send_ppm1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal3~0_combout\ = ( \send_ppm1|local_counter1|o_count\(12) & ( !\send_ppm1|Add1~5_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(12) & ( \send_ppm1|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add1~5_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	combout => \send_ppm1|Equal3~0_combout\);

-- Location: LABCELL_X24_Y32_N45
\send_ppm1|next_state~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~4_combout\ = ( \send_ppm1|local_counter1|o_count\(4) & ( \send_ppm1|Add1~65_sumout\ & ( (\send_ppm1|Add1~61_sumout\ & \send_ppm1|local_counter1|o_count\(5)) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(4) & ( 
-- \send_ppm1|Add1~65_sumout\ & ( (!\send_ppm1|Add1~61_sumout\ & \send_ppm1|local_counter1|o_count\(5)) ) ) ) # ( \send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|Add1~65_sumout\ & ( (\send_ppm1|Add1~61_sumout\ & !\send_ppm1|local_counter1|o_count\(5)) 
-- ) ) ) # ( !\send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|Add1~65_sumout\ & ( (!\send_ppm1|Add1~61_sumout\ & !\send_ppm1|local_counter1|o_count\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010100000101000000001010000010100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~61_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	dataf => \send_ppm1|ALT_INV_Add1~65_sumout\,
	combout => \send_ppm1|next_state~4_combout\);

-- Location: LABCELL_X24_Y32_N15
\send_ppm1|next_state~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~5_combout\ = ( \send_ppm1|next_state~4_combout\ & ( \send_ppm1|local_counter1|o_count\(6) & ( (\send_ppm1|Add1~53_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add1~57_sumout\))) ) ) ) # ( 
-- \send_ppm1|next_state~4_combout\ & ( !\send_ppm1|local_counter1|o_count\(6) & ( (!\send_ppm1|Add1~53_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add1~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000110000000000000000000011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~53_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datad => \send_ppm1|ALT_INV_Add1~57_sumout\,
	datae => \send_ppm1|ALT_INV_next_state~4_combout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	combout => \send_ppm1|next_state~5_combout\);

-- Location: LABCELL_X23_Y32_N30
\send_ppm1|next_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~1_combout\ = ( \send_ppm1|local_counter1|o_count\(14) & ( \send_ppm1|local_counter1|o_count\(10) & ( (\send_ppm1|Add1~13_sumout\ & (\send_ppm1|Add1~21_sumout\ & (!\send_ppm1|Add1~17_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(11))))) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(14) & ( \send_ppm1|local_counter1|o_count\(10) & ( (\send_ppm1|Add1~13_sumout\ & (!\send_ppm1|Add1~21_sumout\ & (!\send_ppm1|Add1~17_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(11))))) ) ) ) # ( \send_ppm1|local_counter1|o_count\(14) & ( !\send_ppm1|local_counter1|o_count\(10) & ( (!\send_ppm1|Add1~13_sumout\ & (\send_ppm1|Add1~21_sumout\ & (!\send_ppm1|Add1~17_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(11))))) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(14) & ( !\send_ppm1|local_counter1|o_count\(10) & ( (!\send_ppm1|Add1~13_sumout\ & (!\send_ppm1|Add1~21_sumout\ & (!\send_ppm1|Add1~17_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~13_sumout\,
	datab => \send_ppm1|ALT_INV_Add1~21_sumout\,
	datac => \send_ppm1|ALT_INV_Add1~17_sumout\,
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	combout => \send_ppm1|next_state~1_combout\);

-- Location: LABCELL_X24_Y32_N27
\send_ppm1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal3~2_combout\ = ( !\send_ppm1|local_counter1|o_count\(0) & ( \send_ppm1|Add1~25_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(0) & ( !\send_ppm1|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	dataf => \send_ppm1|ALT_INV_Add1~25_sumout\,
	combout => \send_ppm1|Equal3~2_combout\);

-- Location: LABCELL_X24_Y32_N54
\send_ppm1|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal3~4_combout\ = ( !\send_ppm1|local_counter1|o_count\(2) & ( \send_ppm1|Add1~33_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(2) & ( !\send_ppm1|Add1~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	dataf => \send_ppm1|ALT_INV_Add1~33_sumout\,
	combout => \send_ppm1|Equal3~4_combout\);

-- Location: LABCELL_X23_Y33_N0
\send_ppm1|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal3~3_combout\ = ( \send_ppm1|local_counter1|o_count\(1) & ( !\send_ppm1|Add1~29_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(1) & ( \send_ppm1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add1~29_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	combout => \send_ppm1|Equal3~3_combout\);

-- Location: LABCELL_X24_Y32_N0
\send_ppm1|next_state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~2_combout\ = ( !\send_ppm1|Equal3~4_combout\ & ( !\send_ppm1|Equal3~3_combout\ & ( (!\send_ppm1|Equal3~2_combout\ & (!\send_ppm1|sig_state\(1) & (!\send_ppm1|Add1~37_sumout\ $ (\send_ppm1|local_counter1|o_count\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~37_sumout\,
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	datac => \send_ppm1|ALT_INV_Equal3~2_combout\,
	datad => \send_ppm1|ALT_INV_sig_state\(1),
	datae => \send_ppm1|ALT_INV_Equal3~4_combout\,
	dataf => \send_ppm1|ALT_INV_Equal3~3_combout\,
	combout => \send_ppm1|next_state~2_combout\);

-- Location: LABCELL_X23_Y33_N9
\send_ppm1|next_state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~3_combout\ = ( \send_ppm1|local_counter1|o_count\(7) & ( \send_ppm1|local_counter1|o_count\(8) & ( (\send_ppm1|Add1~41_sumout\ & (\send_ppm1|Add1~45_sumout\ & (!\send_ppm1|Add1~49_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) 
-- ) ) ) # ( !\send_ppm1|local_counter1|o_count\(7) & ( \send_ppm1|local_counter1|o_count\(8) & ( (!\send_ppm1|Add1~41_sumout\ & (\send_ppm1|Add1~45_sumout\ & (!\send_ppm1|Add1~49_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) ) # ( 
-- \send_ppm1|local_counter1|o_count\(7) & ( !\send_ppm1|local_counter1|o_count\(8) & ( (\send_ppm1|Add1~41_sumout\ & (!\send_ppm1|Add1~45_sumout\ & (!\send_ppm1|Add1~49_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) ) # ( 
-- !\send_ppm1|local_counter1|o_count\(7) & ( !\send_ppm1|local_counter1|o_count\(8) & ( (!\send_ppm1|Add1~41_sumout\ & (!\send_ppm1|Add1~45_sumout\ & (!\send_ppm1|Add1~49_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add1~49_sumout\,
	datab => \send_ppm1|ALT_INV_Add1~41_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datad => \send_ppm1|ALT_INV_Add1~45_sumout\,
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	combout => \send_ppm1|next_state~3_combout\);

-- Location: LABCELL_X24_Y32_N33
\send_ppm1|next_state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~6_combout\ = ( \send_ppm1|next_state~2_combout\ & ( \send_ppm1|next_state~3_combout\ & ( (!\send_ppm1|Equal3~1_combout\ & (!\send_ppm1|Equal3~0_combout\ & (\send_ppm1|next_state~5_combout\ & \send_ppm1|next_state~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal3~1_combout\,
	datab => \send_ppm1|ALT_INV_Equal3~0_combout\,
	datac => \send_ppm1|ALT_INV_next_state~5_combout\,
	datad => \send_ppm1|ALT_INV_next_state~1_combout\,
	datae => \send_ppm1|ALT_INV_next_state~2_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~3_combout\,
	combout => \send_ppm1|next_state~6_combout\);

-- Location: LABCELL_X24_Y34_N33
\send_ppm1|next_state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~14_combout\ = ( \send_ppm1|Add3~9_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|local_counter1|o_count\(17) & (!\send_ppm1|local_counter1|o_count\(18) & !\send_ppm1|local_counter1|o_count\(16)))) ) ) # ( 
-- !\send_ppm1|Add3~9_sumout\ & ( (\send_ppm1|local_counter1|o_count\(19) & (\send_ppm1|local_counter1|o_count\(17) & (\send_ppm1|local_counter1|o_count\(18) & \send_ppm1|local_counter1|o_count\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	dataf => \send_ppm1|ALT_INV_Add3~9_sumout\,
	combout => \send_ppm1|next_state~14_combout\);

-- Location: LABCELL_X23_Y34_N33
\send_ppm1|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~1_combout\ = ( \send_ppm1|Add3~5_sumout\ & ( !\send_ppm1|local_counter1|o_count\(13) ) ) # ( !\send_ppm1|Add3~5_sumout\ & ( \send_ppm1|local_counter1|o_count\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	dataf => \send_ppm1|ALT_INV_Add3~5_sumout\,
	combout => \send_ppm1|Equal5~1_combout\);

-- Location: LABCELL_X23_Y32_N54
\send_ppm1|next_state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~15_combout\ = ( \send_ppm1|Add3~13_sumout\ & ( \send_ppm1|Add3~17_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|local_counter1|o_count\(11) & (!\send_ppm1|Add3~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( !\send_ppm1|Add3~13_sumout\ & ( \send_ppm1|Add3~17_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|local_counter1|o_count\(11) & (!\send_ppm1|Add3~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( \send_ppm1|Add3~13_sumout\ & ( !\send_ppm1|Add3~17_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|local_counter1|o_count\(11) & (!\send_ppm1|Add3~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( !\send_ppm1|Add3~13_sumout\ & ( !\send_ppm1|Add3~17_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|local_counter1|o_count\(11) & (!\send_ppm1|Add3~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	datac => \send_ppm1|ALT_INV_Add3~21_sumout\,
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	datae => \send_ppm1|ALT_INV_Add3~13_sumout\,
	dataf => \send_ppm1|ALT_INV_Add3~17_sumout\,
	combout => \send_ppm1|next_state~15_combout\);

-- Location: LABCELL_X23_Y32_N45
\send_ppm1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~0_combout\ = ( \send_ppm1|Add3~1_sumout\ & ( !\send_ppm1|local_counter1|o_count\(12) ) ) # ( !\send_ppm1|Add3~1_sumout\ & ( \send_ppm1|local_counter1|o_count\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	dataf => \send_ppm1|ALT_INV_Add3~1_sumout\,
	combout => \send_ppm1|Equal5~0_combout\);

-- Location: LABCELL_X24_Y35_N27
\send_ppm1|Equal5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~5_combout\ = ( !\send_ppm1|local_counter1|o_count\(3) & ( \send_ppm1|Add3~37_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(3) & ( !\send_ppm1|Add3~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	dataf => \send_ppm1|ALT_INV_Add3~37_sumout\,
	combout => \send_ppm1|Equal5~5_combout\);

-- Location: LABCELL_X24_Y35_N51
\send_ppm1|Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~2_combout\ = ( !\send_ppm1|local_counter1|o_count\(0) & ( \send_ppm1|Add3~25_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(0) & ( !\send_ppm1|Add3~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	dataf => \send_ppm1|ALT_INV_Add3~25_sumout\,
	combout => \send_ppm1|Equal5~2_combout\);

-- Location: LABCELL_X24_Y35_N3
\send_ppm1|Equal5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~3_combout\ = ( !\send_ppm1|local_counter1|o_count\(1) & ( \send_ppm1|Add3~29_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(1) & ( !\send_ppm1|Add3~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	dataf => \send_ppm1|ALT_INV_Add3~29_sumout\,
	combout => \send_ppm1|Equal5~3_combout\);

-- Location: LABCELL_X23_Y33_N3
\send_ppm1|Equal5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal5~4_combout\ = ( \send_ppm1|local_counter1|o_count\(2) & ( !\send_ppm1|Add3~33_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(2) & ( \send_ppm1|Add3~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add3~33_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	combout => \send_ppm1|Equal5~4_combout\);

-- Location: LABCELL_X24_Y35_N18
\send_ppm1|next_state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~16_combout\ = ( !\send_ppm1|Equal5~3_combout\ & ( !\send_ppm1|Equal5~4_combout\ & ( (!\send_ppm1|Equal5~5_combout\ & (!\send_ppm1|sig_state\(0) & (\send_ppm1|sig_state\(1) & !\send_ppm1|Equal5~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal5~5_combout\,
	datab => \send_ppm1|ALT_INV_sig_state\(0),
	datac => \send_ppm1|ALT_INV_sig_state\(1),
	datad => \send_ppm1|ALT_INV_Equal5~2_combout\,
	datae => \send_ppm1|ALT_INV_Equal5~3_combout\,
	dataf => \send_ppm1|ALT_INV_Equal5~4_combout\,
	combout => \send_ppm1|next_state~16_combout\);

-- Location: LABCELL_X24_Y32_N9
\send_ppm1|next_state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~18_combout\ = ( \send_ppm1|local_counter1|o_count\(4) & ( \send_ppm1|local_counter1|o_count\(6) & ( (\send_ppm1|Add3~65_sumout\ & (\send_ppm1|Add3~57_sumout\ & (!\send_ppm1|Add3~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) 
-- ) ) ) # ( !\send_ppm1|local_counter1|o_count\(4) & ( \send_ppm1|local_counter1|o_count\(6) & ( (\send_ppm1|Add3~65_sumout\ & (!\send_ppm1|Add3~57_sumout\ & (!\send_ppm1|Add3~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) ) # ( 
-- \send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|local_counter1|o_count\(6) & ( (!\send_ppm1|Add3~65_sumout\ & (\send_ppm1|Add3~57_sumout\ & (!\send_ppm1|Add3~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) ) # ( 
-- !\send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|local_counter1|o_count\(6) & ( (!\send_ppm1|Add3~65_sumout\ & (!\send_ppm1|Add3~57_sumout\ & (!\send_ppm1|Add3~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add3~61_sumout\,
	datab => \send_ppm1|ALT_INV_Add3~65_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	datad => \send_ppm1|ALT_INV_Add3~57_sumout\,
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	combout => \send_ppm1|next_state~18_combout\);

-- Location: LABCELL_X23_Y33_N12
\send_ppm1|next_state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~17_combout\ = ( \send_ppm1|Add3~53_sumout\ & ( \send_ppm1|local_counter1|o_count\(8) & ( !\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add3~49_sumout\) ) ) ) # ( !\send_ppm1|Add3~53_sumout\ & ( 
-- !\send_ppm1|local_counter1|o_count\(8) & ( !\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add3~49_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datad => \send_ppm1|ALT_INV_Add3~49_sumout\,
	datae => \send_ppm1|ALT_INV_Add3~53_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	combout => \send_ppm1|next_state~17_combout\);

-- Location: LABCELL_X24_Y34_N12
\send_ppm1|next_state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~19_combout\ = ( \send_ppm1|next_state~18_combout\ & ( \send_ppm1|next_state~17_combout\ & ( (!\send_ppm1|Add3~41_sumout\ & (!\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|Add3~45_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(15))))) # (\send_ppm1|Add3~41_sumout\ & (\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|Add3~45_sumout\ $ (\send_ppm1|local_counter1|o_count\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add3~41_sumout\,
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datac => \send_ppm1|ALT_INV_Add3~45_sumout\,
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datae => \send_ppm1|ALT_INV_next_state~18_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~17_combout\,
	combout => \send_ppm1|next_state~19_combout\);

-- Location: LABCELL_X24_Y34_N54
\send_ppm1|next_state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~20_combout\ = ( \send_ppm1|next_state~16_combout\ & ( \send_ppm1|next_state~19_combout\ & ( (\send_ppm1|next_state~14_combout\ & (!\send_ppm1|Equal5~1_combout\ & (\send_ppm1|next_state~15_combout\ & !\send_ppm1|Equal5~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_next_state~14_combout\,
	datab => \send_ppm1|ALT_INV_Equal5~1_combout\,
	datac => \send_ppm1|ALT_INV_next_state~15_combout\,
	datad => \send_ppm1|ALT_INV_Equal5~0_combout\,
	datae => \send_ppm1|ALT_INV_next_state~16_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~19_combout\,
	combout => \send_ppm1|next_state~20_combout\);

-- Location: LABCELL_X24_Y34_N39
\send_ppm1|next_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~0_combout\ = ( \send_ppm1|Add1~1_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|local_counter1|o_count\(16) & (!\send_ppm1|local_counter1|o_count\(17) & !\send_ppm1|local_counter1|o_count\(18)))) ) ) # ( 
-- !\send_ppm1|Add1~1_sumout\ & ( (\send_ppm1|local_counter1|o_count\(19) & (\send_ppm1|local_counter1|o_count\(16) & (\send_ppm1|local_counter1|o_count\(17) & \send_ppm1|local_counter1|o_count\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	dataf => \send_ppm1|ALT_INV_Add1~1_sumout\,
	combout => \send_ppm1|next_state~0_combout\);

-- Location: MLABCELL_X25_Y33_N39
\send_ppm1|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~2_combout\ = ( !\send_ppm1|Add5~25_sumout\ & ( \send_ppm1|local_counter1|o_count\(0) ) ) # ( \send_ppm1|Add5~25_sumout\ & ( !\send_ppm1|local_counter1|o_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|ALT_INV_Add5~25_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	combout => \send_ppm1|Equal7~2_combout\);

-- Location: LABCELL_X23_Y33_N27
\send_ppm1|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~4_combout\ = ( \send_ppm1|local_counter1|o_count\(2) & ( !\send_ppm1|Add5~33_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(2) & ( \send_ppm1|Add5~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add5~33_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	combout => \send_ppm1|Equal7~4_combout\);

-- Location: LABCELL_X23_Y33_N24
\send_ppm1|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~3_combout\ = ( \send_ppm1|local_counter1|o_count\(1) & ( !\send_ppm1|Add5~29_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(1) & ( \send_ppm1|Add5~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add5~29_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	combout => \send_ppm1|Equal7~3_combout\);

-- Location: LABCELL_X23_Y33_N18
\send_ppm1|next_state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~9_combout\ = ( !\send_ppm1|Equal7~4_combout\ & ( !\send_ppm1|Equal7~3_combout\ & ( (!\send_ppm1|Equal7~2_combout\ & (\send_ppm1|sig_state\(1) & (!\send_ppm1|Add5~37_sumout\ $ (\send_ppm1|local_counter1|o_count\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~37_sumout\,
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	datac => \send_ppm1|ALT_INV_Equal7~2_combout\,
	datad => \send_ppm1|ALT_INV_sig_state\(1),
	datae => \send_ppm1|ALT_INV_Equal7~4_combout\,
	dataf => \send_ppm1|ALT_INV_Equal7~3_combout\,
	combout => \send_ppm1|next_state~9_combout\);

-- Location: LABCELL_X23_Y32_N48
\send_ppm1|next_state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~8_combout\ = ( \send_ppm1|local_counter1|o_count\(11) & ( \send_ppm1|Add5~13_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|Add5~17_sumout\ & (!\send_ppm1|Add5~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(11) & ( \send_ppm1|Add5~13_sumout\ & ( (\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|Add5~17_sumout\ & (!\send_ppm1|Add5~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( \send_ppm1|local_counter1|o_count\(11) & ( !\send_ppm1|Add5~13_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (\send_ppm1|Add5~17_sumout\ & (!\send_ppm1|Add5~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) ) # ( !\send_ppm1|local_counter1|o_count\(11) & ( !\send_ppm1|Add5~13_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(10) & (!\send_ppm1|Add5~17_sumout\ & (!\send_ppm1|Add5~21_sumout\ $ 
-- (\send_ppm1|local_counter1|o_count\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~21_sumout\,
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	datad => \send_ppm1|ALT_INV_Add5~17_sumout\,
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	dataf => \send_ppm1|ALT_INV_Add5~13_sumout\,
	combout => \send_ppm1|next_state~8_combout\);

-- Location: LABCELL_X23_Y34_N48
\send_ppm1|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~0_combout\ = ( !\send_ppm1|Add5~1_sumout\ & ( \send_ppm1|local_counter1|o_count\(12) ) ) # ( \send_ppm1|Add5~1_sumout\ & ( !\send_ppm1|local_counter1|o_count\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|ALT_INV_Add5~1_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	combout => \send_ppm1|Equal7~0_combout\);

-- Location: LABCELL_X24_Y32_N36
\send_ppm1|next_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~11_combout\ = ( \send_ppm1|local_counter1|o_count\(4) & ( \send_ppm1|local_counter1|o_count\(6) & ( (\send_ppm1|Add5~65_sumout\ & (\send_ppm1|Add5~57_sumout\ & (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) 
-- ) ) ) # ( !\send_ppm1|local_counter1|o_count\(4) & ( \send_ppm1|local_counter1|o_count\(6) & ( (\send_ppm1|Add5~65_sumout\ & (!\send_ppm1|Add5~57_sumout\ & (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) ) # ( 
-- \send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|local_counter1|o_count\(6) & ( (!\send_ppm1|Add5~65_sumout\ & (\send_ppm1|Add5~57_sumout\ & (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) ) # ( 
-- !\send_ppm1|local_counter1|o_count\(4) & ( !\send_ppm1|local_counter1|o_count\(6) & ( (!\send_ppm1|Add5~65_sumout\ & (!\send_ppm1|Add5~57_sumout\ & (!\send_ppm1|Add5~61_sumout\ $ (\send_ppm1|local_counter1|o_count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add5~65_sumout\,
	datab => \send_ppm1|ALT_INV_Add5~57_sumout\,
	datac => \send_ppm1|ALT_INV_Add5~61_sumout\,
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	combout => \send_ppm1|next_state~11_combout\);

-- Location: LABCELL_X23_Y34_N15
\send_ppm1|next_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~10_combout\ = ( \send_ppm1|Add5~49_sumout\ & ( (\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|local_counter1|o_count\(8) $ (\send_ppm1|Add5~53_sumout\))) ) ) # ( !\send_ppm1|Add5~49_sumout\ & ( 
-- (!\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|local_counter1|o_count\(8) $ (\send_ppm1|Add5~53_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datad => \send_ppm1|ALT_INV_Add5~53_sumout\,
	dataf => \send_ppm1|ALT_INV_Add5~49_sumout\,
	combout => \send_ppm1|next_state~10_combout\);

-- Location: LABCELL_X23_Y34_N9
\send_ppm1|next_state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~12_combout\ = ( \send_ppm1|next_state~11_combout\ & ( \send_ppm1|next_state~10_combout\ & ( (!\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|Add5~41_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ 
-- (\send_ppm1|Add5~45_sumout\)))) # (\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|Add5~41_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add5~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datac => \send_ppm1|ALT_INV_Add5~41_sumout\,
	datad => \send_ppm1|ALT_INV_Add5~45_sumout\,
	datae => \send_ppm1|ALT_INV_next_state~11_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~10_combout\,
	combout => \send_ppm1|next_state~12_combout\);

-- Location: LABCELL_X23_Y34_N21
\send_ppm1|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~1_combout\ = ( !\send_ppm1|Add5~5_sumout\ & ( \send_ppm1|local_counter1|o_count\(13) ) ) # ( \send_ppm1|Add5~5_sumout\ & ( !\send_ppm1|local_counter1|o_count\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|ALT_INV_Add5~5_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	combout => \send_ppm1|Equal7~1_combout\);

-- Location: LABCELL_X24_Y34_N30
\send_ppm1|next_state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~7_combout\ = ( \send_ppm1|Add5~9_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|local_counter1|o_count\(17) & (!\send_ppm1|local_counter1|o_count\(18) & !\send_ppm1|local_counter1|o_count\(16)))) ) ) # ( 
-- !\send_ppm1|Add5~9_sumout\ & ( (\send_ppm1|local_counter1|o_count\(19) & (\send_ppm1|local_counter1|o_count\(17) & (\send_ppm1|local_counter1|o_count\(18) & \send_ppm1|local_counter1|o_count\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	dataf => \send_ppm1|ALT_INV_Add5~9_sumout\,
	combout => \send_ppm1|next_state~7_combout\);

-- Location: LABCELL_X23_Y34_N24
\send_ppm1|next_state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~13_combout\ = ( !\send_ppm1|Equal7~1_combout\ & ( \send_ppm1|next_state~7_combout\ & ( (\send_ppm1|next_state~9_combout\ & (\send_ppm1|next_state~8_combout\ & (!\send_ppm1|Equal7~0_combout\ & \send_ppm1|next_state~12_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_next_state~9_combout\,
	datab => \send_ppm1|ALT_INV_next_state~8_combout\,
	datac => \send_ppm1|ALT_INV_Equal7~0_combout\,
	datad => \send_ppm1|ALT_INV_next_state~12_combout\,
	datae => \send_ppm1|ALT_INV_Equal7~1_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~7_combout\,
	combout => \send_ppm1|next_state~13_combout\);

-- Location: LABCELL_X24_Y34_N24
\send_ppm1|next_state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~21_combout\ = ( \send_ppm1|sig_state\(0) & ( \send_ppm1|next_state~13_combout\ & ( !\send_ppm1|sig_state\(2) ) ) ) # ( !\send_ppm1|sig_state\(0) & ( \send_ppm1|next_state~13_combout\ & ( (!\send_ppm1|sig_state\(2) & 
-- \send_ppm1|next_state~20_combout\) ) ) ) # ( \send_ppm1|sig_state\(0) & ( !\send_ppm1|next_state~13_combout\ & ( (!\send_ppm1|sig_state\(2) & (((\send_ppm1|next_state~6_combout\ & \send_ppm1|next_state~0_combout\)) # (\send_ppm1|next_state~20_combout\))) 
-- ) ) ) # ( !\send_ppm1|sig_state\(0) & ( !\send_ppm1|next_state~13_combout\ & ( (!\send_ppm1|sig_state\(2) & \send_ppm1|next_state~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000100110000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_next_state~6_combout\,
	datab => \send_ppm1|ALT_INV_sig_state\(2),
	datac => \send_ppm1|ALT_INV_next_state~20_combout\,
	datad => \send_ppm1|ALT_INV_next_state~0_combout\,
	datae => \send_ppm1|ALT_INV_sig_state\(0),
	dataf => \send_ppm1|ALT_INV_next_state~13_combout\,
	combout => \send_ppm1|next_state~21_combout\);

-- Location: LABCELL_X23_Y34_N39
\send_ppm1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~0_combout\ = ( !\send_ppm1|Add7~1_sumout\ & ( \send_ppm1|local_counter1|o_count\(13) ) ) # ( \send_ppm1|Add7~1_sumout\ & ( !\send_ppm1|local_counter1|o_count\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|ALT_INV_Add7~1_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	combout => \send_ppm1|Equal8~0_combout\);

-- Location: LABCELL_X22_Y33_N54
\send_ppm1|combi~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~1_combout\ = ( \send_ppm1|local_counter1|o_count\(10) & ( \send_ppm1|Add7~17_sumout\ & ( (\send_ppm1|Add7~9_sumout\ & (\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|Add7~13_sumout\ $ (\send_ppm1|local_counter1|o_count\(11))))) ) ) 
-- ) # ( !\send_ppm1|local_counter1|o_count\(10) & ( \send_ppm1|Add7~17_sumout\ & ( (!\send_ppm1|Add7~9_sumout\ & (\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|Add7~13_sumout\ $ (\send_ppm1|local_counter1|o_count\(11))))) ) ) ) # ( 
-- \send_ppm1|local_counter1|o_count\(10) & ( !\send_ppm1|Add7~17_sumout\ & ( (\send_ppm1|Add7~9_sumout\ & (!\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|Add7~13_sumout\ $ (\send_ppm1|local_counter1|o_count\(11))))) ) ) ) # ( 
-- !\send_ppm1|local_counter1|o_count\(10) & ( !\send_ppm1|Add7~17_sumout\ & ( (!\send_ppm1|Add7~9_sumout\ & (!\send_ppm1|local_counter1|o_count\(14) & (!\send_ppm1|Add7~13_sumout\ $ (\send_ppm1|local_counter1|o_count\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Add7~13_sumout\,
	datab => \send_ppm1|ALT_INV_Add7~9_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	dataf => \send_ppm1|ALT_INV_Add7~17_sumout\,
	combout => \send_ppm1|combi~1_combout\);

-- Location: LABCELL_X23_Y34_N42
\send_ppm1|combi~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~4_combout\ = ( \send_ppm1|Add7~45_sumout\ & ( \send_ppm1|Add7~49_sumout\ & ( (\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add7~41_sumout\)))) ) ) ) 
-- # ( !\send_ppm1|Add7~45_sumout\ & ( \send_ppm1|Add7~49_sumout\ & ( (\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add7~41_sumout\)))) ) ) ) # ( 
-- \send_ppm1|Add7~45_sumout\ & ( !\send_ppm1|Add7~49_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(9) & (\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add7~41_sumout\)))) ) ) ) # ( 
-- !\send_ppm1|Add7~45_sumout\ & ( !\send_ppm1|Add7~49_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(9) & (!\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) $ (\send_ppm1|Add7~41_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	datad => \send_ppm1|ALT_INV_Add7~41_sumout\,
	datae => \send_ppm1|ALT_INV_Add7~45_sumout\,
	dataf => \send_ppm1|ALT_INV_Add7~49_sumout\,
	combout => \send_ppm1|combi~4_combout\);

-- Location: LABCELL_X24_Y34_N36
\send_ppm1|combi~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~0_combout\ = ( \send_ppm1|Add7~5_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(19) & (!\send_ppm1|local_counter1|o_count\(16) & (!\send_ppm1|local_counter1|o_count\(17) & !\send_ppm1|local_counter1|o_count\(18)))) ) ) # ( 
-- !\send_ppm1|Add7~5_sumout\ & ( (\send_ppm1|local_counter1|o_count\(19) & (\send_ppm1|local_counter1|o_count\(16) & (\send_ppm1|local_counter1|o_count\(17) & \send_ppm1|local_counter1|o_count\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(19),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(16),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(17),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(18),
	dataf => \send_ppm1|ALT_INV_Add7~5_sumout\,
	combout => \send_ppm1|combi~0_combout\);

-- Location: MLABCELL_X25_Y34_N45
\send_ppm1|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~4_combout\ = ( \send_ppm1|Add7~53_sumout\ & ( !\send_ppm1|local_counter1|o_count\(4) ) ) # ( !\send_ppm1|Add7~53_sumout\ & ( \send_ppm1|local_counter1|o_count\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	dataf => \send_ppm1|ALT_INV_Add7~53_sumout\,
	combout => \send_ppm1|Equal8~4_combout\);

-- Location: MLABCELL_X25_Y34_N15
\send_ppm1|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~5_combout\ = ( \send_ppm1|local_counter1|o_count\(5) & ( !\send_ppm1|Add7~57_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(5) & ( \send_ppm1|Add7~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add7~57_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	combout => \send_ppm1|Equal8~5_combout\);

-- Location: MLABCELL_X25_Y34_N57
\send_ppm1|combi~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~5_combout\ = ( !\send_ppm1|Equal8~4_combout\ & ( !\send_ppm1|Equal8~5_combout\ & ( (!\send_ppm1|local_counter1|o_count\(6) & (!\send_ppm1|Add7~61_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add7~65_sumout\)))) # 
-- (\send_ppm1|local_counter1|o_count\(6) & (\send_ppm1|Add7~61_sumout\ & (!\send_ppm1|local_counter1|o_count\(15) $ (\send_ppm1|Add7~65_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datac => \send_ppm1|ALT_INV_Add7~61_sumout\,
	datad => \send_ppm1|ALT_INV_Add7~65_sumout\,
	datae => \send_ppm1|ALT_INV_Equal8~4_combout\,
	dataf => \send_ppm1|ALT_INV_Equal8~5_combout\,
	combout => \send_ppm1|combi~5_combout\);

-- Location: LABCELL_X23_Y35_N21
\send_ppm1|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~2_combout\ = ( \send_ppm1|local_counter1|o_count\(2) & ( !\send_ppm1|Add7~25_sumout\ ) ) # ( !\send_ppm1|local_counter1|o_count\(2) & ( \send_ppm1|Add7~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|ALT_INV_Add7~25_sumout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	combout => \send_ppm1|Equal8~2_combout\);

-- Location: LABCELL_X24_Y35_N57
\send_ppm1|combi~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~2_combout\ = ( \send_ppm1|sig_state\(2) & ( !\send_ppm1|sig_state\(1) & ( (!\send_ppm1|sig_state\(0) & (!\send_ppm1|Add7~37_sumout\ $ (\send_ppm1|local_counter1|o_count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|ALT_INV_Add7~37_sumout\,
	datac => \send_ppm1|ALT_INV_sig_state\(0),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(0),
	datae => \send_ppm1|ALT_INV_sig_state\(2),
	dataf => \send_ppm1|ALT_INV_sig_state\(1),
	combout => \send_ppm1|combi~2_combout\);

-- Location: LABCELL_X23_Y35_N27
\send_ppm1|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~1_combout\ = ( !\send_ppm1|local_counter1|o_count\(1) & ( \send_ppm1|Add7~21_sumout\ ) ) # ( \send_ppm1|local_counter1|o_count\(1) & ( !\send_ppm1|Add7~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	dataf => \send_ppm1|ALT_INV_Add7~21_sumout\,
	combout => \send_ppm1|Equal8~1_combout\);

-- Location: LABCELL_X23_Y35_N18
\send_ppm1|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal8~3_combout\ = ( \send_ppm1|Add7~29_sumout\ & ( !\send_ppm1|local_counter1|o_count\(3) ) ) # ( !\send_ppm1|Add7~29_sumout\ & ( \send_ppm1|local_counter1|o_count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	dataf => \send_ppm1|ALT_INV_Add7~29_sumout\,
	combout => \send_ppm1|Equal8~3_combout\);

-- Location: LABCELL_X23_Y35_N48
\send_ppm1|combi~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~3_combout\ = ( !\send_ppm1|Equal8~1_combout\ & ( !\send_ppm1|Equal8~3_combout\ & ( (!\send_ppm1|Equal8~2_combout\ & (\send_ppm1|combi~2_combout\ & (!\send_ppm1|local_counter1|o_count\(12) $ (\send_ppm1|Add7~33_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	datab => \send_ppm1|ALT_INV_Add7~33_sumout\,
	datac => \send_ppm1|ALT_INV_Equal8~2_combout\,
	datad => \send_ppm1|ALT_INV_combi~2_combout\,
	datae => \send_ppm1|ALT_INV_Equal8~1_combout\,
	dataf => \send_ppm1|ALT_INV_Equal8~3_combout\,
	combout => \send_ppm1|combi~3_combout\);

-- Location: LABCELL_X24_Y34_N45
\send_ppm1|combi~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|combi~6_combout\ = ( \send_ppm1|combi~5_combout\ & ( \send_ppm1|combi~3_combout\ & ( (!\send_ppm1|Equal8~0_combout\ & (\send_ppm1|combi~1_combout\ & (\send_ppm1|combi~4_combout\ & \send_ppm1|combi~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal8~0_combout\,
	datab => \send_ppm1|ALT_INV_combi~1_combout\,
	datac => \send_ppm1|ALT_INV_combi~4_combout\,
	datad => \send_ppm1|ALT_INV_combi~0_combout\,
	datae => \send_ppm1|ALT_INV_combi~5_combout\,
	dataf => \send_ppm1|ALT_INV_combi~3_combout\,
	combout => \send_ppm1|combi~6_combout\);

-- Location: MLABCELL_X25_Y34_N36
\send_ppm1|current_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~11_combout\ = ( \send_ppm1|current_state.pulse~q\ & ( \send_ppm1|combi~6_combout\ & ( (\send_ppm1|current_state~10_combout\ & (!\send_ppm1|Equal1~0_combout\ & \i_reset_n_top~input_o\)) ) ) ) # ( !\send_ppm1|current_state.pulse~q\ 
-- & ( \send_ppm1|combi~6_combout\ & ( (\send_ppm1|current_state~10_combout\ & (!\send_ppm1|Equal1~0_combout\ & \i_reset_n_top~input_o\)) ) ) ) # ( \send_ppm1|current_state.pulse~q\ & ( !\send_ppm1|combi~6_combout\ & ( (\i_reset_n_top~input_o\ & 
-- ((!\send_ppm1|next_state~21_combout\) # ((\send_ppm1|current_state~10_combout\ & !\send_ppm1|Equal1~0_combout\)))) ) ) ) # ( !\send_ppm1|current_state.pulse~q\ & ( !\send_ppm1|combi~6_combout\ & ( (\send_ppm1|current_state~10_combout\ & 
-- (!\send_ppm1|Equal1~0_combout\ & \i_reset_n_top~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000011110000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state~10_combout\,
	datab => \send_ppm1|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_i_reset_n_top~input_o\,
	datad => \send_ppm1|ALT_INV_next_state~21_combout\,
	datae => \send_ppm1|ALT_INV_current_state.pulse~q\,
	dataf => \send_ppm1|ALT_INV_combi~6_combout\,
	combout => \send_ppm1|current_state~11_combout\);

-- Location: FF_X25_Y34_N38
\send_ppm1|current_state.pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|current_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|current_state.pulse~q\);

-- Location: MLABCELL_X25_Y34_N48
\send_ppm1|sig_state[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_state[2]~1_combout\ = ( !\send_ppm1|current_state.pulse~q\ & ( \send_ppm1|current_state.tempo~q\ & ( (\send_ppm1|Equal0~4_combout\ & ((!\send_ppm1|sig_state\(2)) # ((\send_ppm1|sig_state\(0)) # (\send_ppm1|sig_state\(1))))) ) ) ) # ( 
-- !\send_ppm1|current_state.pulse~q\ & ( !\send_ppm1|current_state.tempo~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000101111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_sig_state\(2),
	datab => \send_ppm1|ALT_INV_sig_state\(1),
	datac => \send_ppm1|ALT_INV_sig_state\(0),
	datad => \send_ppm1|ALT_INV_Equal0~4_combout\,
	datae => \send_ppm1|ALT_INV_current_state.pulse~q\,
	dataf => \send_ppm1|ALT_INV_current_state.tempo~q\,
	combout => \send_ppm1|sig_state[2]~1_combout\);

-- Location: MLABCELL_X25_Y36_N54
\send_ppm1|sig_state[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_state[2]~2_combout\ = ( \send_ppm1|Equal9~8_combout\ & ( \send_ppm1|sig_state[2]~1_combout\ & ( (!\send_ppm1|current_state.synchro~q\) # ((!\i_reset_n_top~input_o\) # ((\send_ppm1|Equal9~7_combout\ & \send_ppm1|Equal9~5_combout\))) ) ) ) # 
-- ( !\send_ppm1|Equal9~8_combout\ & ( \send_ppm1|sig_state[2]~1_combout\ & ( (!\send_ppm1|current_state.synchro~q\) # (!\i_reset_n_top~input_o\) ) ) ) # ( \send_ppm1|Equal9~8_combout\ & ( !\send_ppm1|sig_state[2]~1_combout\ & ( !\i_reset_n_top~input_o\ ) ) 
-- ) # ( !\send_ppm1|Equal9~8_combout\ & ( !\send_ppm1|sig_state[2]~1_combout\ & ( !\i_reset_n_top~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101110111011101110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.synchro~q\,
	datab => \ALT_INV_i_reset_n_top~input_o\,
	datac => \send_ppm1|ALT_INV_Equal9~7_combout\,
	datad => \send_ppm1|ALT_INV_Equal9~5_combout\,
	datae => \send_ppm1|ALT_INV_Equal9~8_combout\,
	dataf => \send_ppm1|ALT_INV_sig_state[2]~1_combout\,
	combout => \send_ppm1|sig_state[2]~2_combout\);

-- Location: FF_X25_Y36_N17
\send_ppm1|sig_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|sig_state~3_combout\,
	ena => \send_ppm1|sig_state[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|sig_state\(0));

-- Location: MLABCELL_X25_Y36_N6
\send_ppm1|sig_state~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_state~4_combout\ = ( \send_ppm1|sig_state\(1) & ( (\send_ppm1|current_state.tempo~q\ & (!\send_ppm1|sig_state\(0) & \i_reset_n_top~input_o\)) ) ) # ( !\send_ppm1|sig_state\(1) & ( (\send_ppm1|current_state.tempo~q\ & 
-- (\send_ppm1|sig_state\(0) & \i_reset_n_top~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000100010000000000000100010000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.tempo~q\,
	datab => \send_ppm1|ALT_INV_sig_state\(0),
	datad => \ALT_INV_i_reset_n_top~input_o\,
	datae => \send_ppm1|ALT_INV_sig_state\(1),
	combout => \send_ppm1|sig_state~4_combout\);

-- Location: FF_X25_Y36_N8
\send_ppm1|sig_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|sig_state~4_combout\,
	ena => \send_ppm1|sig_state[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|sig_state\(1));

-- Location: MLABCELL_X25_Y36_N12
\send_ppm1|sig_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_state~0_combout\ = ( \send_ppm1|sig_state\(0) & ( (\send_ppm1|current_state.tempo~q\ & (\i_reset_n_top~input_o\ & (!\send_ppm1|sig_state\(1) $ (!\send_ppm1|sig_state\(2))))) ) ) # ( !\send_ppm1|sig_state\(0) & ( 
-- (\send_ppm1|current_state.tempo~q\ & (\i_reset_n_top~input_o\ & \send_ppm1|sig_state\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.tempo~q\,
	datab => \ALT_INV_i_reset_n_top~input_o\,
	datac => \send_ppm1|ALT_INV_sig_state\(1),
	datad => \send_ppm1|ALT_INV_sig_state\(2),
	dataf => \send_ppm1|ALT_INV_sig_state\(0),
	combout => \send_ppm1|sig_state~0_combout\);

-- Location: FF_X25_Y36_N14
\send_ppm1|sig_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|sig_state~0_combout\,
	ena => \send_ppm1|sig_state[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|sig_state\(2));

-- Location: MLABCELL_X25_Y34_N30
\send_ppm1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal1~0_combout\ = ( !\send_ppm1|sig_state\(1) & ( (\send_ppm1|sig_state\(2) & !\send_ppm1|sig_state\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_sig_state\(2),
	datad => \send_ppm1|ALT_INV_sig_state\(0),
	dataf => \send_ppm1|ALT_INV_sig_state\(1),
	combout => \send_ppm1|Equal1~0_combout\);

-- Location: MLABCELL_X25_Y34_N18
\send_ppm1|current_state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~12_combout\ = ( \send_ppm1|Equal0~1_combout\ & ( \send_ppm1|current_state.tempo~q\ & ( (\send_ppm1|Equal0~2_combout\ & (\send_ppm1|Equal1~0_combout\ & (\send_ppm1|Equal0~3_combout\ & \send_ppm1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal0~2_combout\,
	datab => \send_ppm1|ALT_INV_Equal1~0_combout\,
	datac => \send_ppm1|ALT_INV_Equal0~3_combout\,
	datad => \send_ppm1|ALT_INV_Equal0~0_combout\,
	datae => \send_ppm1|ALT_INV_Equal0~1_combout\,
	dataf => \send_ppm1|ALT_INV_current_state.tempo~q\,
	combout => \send_ppm1|current_state~12_combout\);

-- Location: MLABCELL_X25_Y36_N48
\send_ppm1|current_state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~13_combout\ = ( \send_ppm1|current_state.synchro~q\ & ( \send_ppm1|Equal9~5_combout\ & ( (\i_reset_n_top~input_o\ & (((!\send_ppm1|Equal9~8_combout\) # (!\send_ppm1|Equal9~7_combout\)) # (\send_ppm1|current_state~12_combout\))) ) 
-- ) ) # ( !\send_ppm1|current_state.synchro~q\ & ( \send_ppm1|Equal9~5_combout\ & ( (\send_ppm1|current_state~12_combout\ & \i_reset_n_top~input_o\) ) ) ) # ( \send_ppm1|current_state.synchro~q\ & ( !\send_ppm1|Equal9~5_combout\ & ( \i_reset_n_top~input_o\ 
-- ) ) ) # ( !\send_ppm1|current_state.synchro~q\ & ( !\send_ppm1|Equal9~5_combout\ & ( (\send_ppm1|current_state~12_combout\ & \i_reset_n_top~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001100110011001100010001000100010011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state~12_combout\,
	datab => \ALT_INV_i_reset_n_top~input_o\,
	datac => \send_ppm1|ALT_INV_Equal9~8_combout\,
	datad => \send_ppm1|ALT_INV_Equal9~7_combout\,
	datae => \send_ppm1|ALT_INV_current_state.synchro~q\,
	dataf => \send_ppm1|ALT_INV_Equal9~5_combout\,
	combout => \send_ppm1|current_state~13_combout\);

-- Location: FF_X25_Y36_N50
\send_ppm1|current_state.synchro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|current_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|current_state.synchro~q\);

-- Location: LABCELL_X23_Y34_N12
\send_ppm1|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal7~5_combout\ = ( \send_ppm1|Add5~45_sumout\ & ( !\send_ppm1|local_counter1|o_count\(15) ) ) # ( !\send_ppm1|Add5~45_sumout\ & ( \send_ppm1|local_counter1|o_count\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	dataf => \send_ppm1|ALT_INV_Add5~45_sumout\,
	combout => \send_ppm1|Equal7~5_combout\);

-- Location: LABCELL_X23_Y34_N3
\send_ppm1|next_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~22_combout\ = ( \send_ppm1|Add5~53_sumout\ & ( \send_ppm1|Add5~49_sumout\ & ( (\send_ppm1|local_counter1|o_count\(8) & (\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) 
-- ) ) ) # ( !\send_ppm1|Add5~53_sumout\ & ( \send_ppm1|Add5~49_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(8) & (\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) ) # ( 
-- \send_ppm1|Add5~53_sumout\ & ( !\send_ppm1|Add5~49_sumout\ & ( (\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) ) # ( 
-- !\send_ppm1|Add5~53_sumout\ & ( !\send_ppm1|Add5~49_sumout\ & ( (!\send_ppm1|local_counter1|o_count\(8) & (!\send_ppm1|local_counter1|o_count\(7) & (!\send_ppm1|Add5~41_sumout\ $ (\send_ppm1|local_counter1|o_count\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	datab => \send_ppm1|ALT_INV_Add5~41_sumout\,
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	datae => \send_ppm1|ALT_INV_Add5~53_sumout\,
	dataf => \send_ppm1|ALT_INV_Add5~49_sumout\,
	combout => \send_ppm1|next_state~22_combout\);

-- Location: LABCELL_X23_Y34_N57
\send_ppm1|next_state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~23_combout\ = ( \send_ppm1|next_state~22_combout\ & ( \send_ppm1|next_state~9_combout\ & ( (!\send_ppm1|Equal7~0_combout\ & (!\send_ppm1|Equal7~5_combout\ & (\send_ppm1|next_state~11_combout\ & !\send_ppm1|Equal7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal7~0_combout\,
	datab => \send_ppm1|ALT_INV_Equal7~5_combout\,
	datac => \send_ppm1|ALT_INV_next_state~11_combout\,
	datad => \send_ppm1|ALT_INV_Equal7~1_combout\,
	datae => \send_ppm1|ALT_INV_next_state~22_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~9_combout\,
	combout => \send_ppm1|next_state~23_combout\);

-- Location: LABCELL_X24_Y34_N48
\send_ppm1|next_state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|next_state~24_combout\ = ( \send_ppm1|next_state~23_combout\ & ( \send_ppm1|next_state~6_combout\ & ( (\send_ppm1|sig_state\(0) & (((\send_ppm1|next_state~8_combout\ & \send_ppm1|next_state~7_combout\)) # (\send_ppm1|next_state~0_combout\))) ) 
-- ) ) # ( !\send_ppm1|next_state~23_combout\ & ( \send_ppm1|next_state~6_combout\ & ( (\send_ppm1|sig_state\(0) & \send_ppm1|next_state~0_combout\) ) ) ) # ( \send_ppm1|next_state~23_combout\ & ( !\send_ppm1|next_state~6_combout\ & ( 
-- (\send_ppm1|sig_state\(0) & (\send_ppm1|next_state~8_combout\ & \send_ppm1|next_state~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100010001000100010001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_sig_state\(0),
	datab => \send_ppm1|ALT_INV_next_state~0_combout\,
	datac => \send_ppm1|ALT_INV_next_state~8_combout\,
	datad => \send_ppm1|ALT_INV_next_state~7_combout\,
	datae => \send_ppm1|ALT_INV_next_state~23_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~6_combout\,
	combout => \send_ppm1|next_state~24_combout\);

-- Location: LABCELL_X24_Y34_N21
\send_ppm1|local_counter1|o_count[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|o_count[9]~0_combout\ = ( \send_ppm1|combi~6_combout\ & ( \send_ppm1|next_state~24_combout\ & ( !\send_ppm1|current_state~7_combout\ ) ) ) # ( !\send_ppm1|combi~6_combout\ & ( \send_ppm1|next_state~24_combout\ & ( 
-- (!\send_ppm1|current_state~7_combout\ & ((!\send_ppm1|sig_state\(2)) # (!\send_ppm1|current_state.pulse~q\))) ) ) ) # ( \send_ppm1|combi~6_combout\ & ( !\send_ppm1|next_state~24_combout\ & ( !\send_ppm1|current_state~7_combout\ ) ) ) # ( 
-- !\send_ppm1|combi~6_combout\ & ( !\send_ppm1|next_state~24_combout\ & ( (!\send_ppm1|current_state~7_combout\ & ((!\send_ppm1|current_state.pulse~q\) # ((!\send_ppm1|sig_state\(2) & \send_ppm1|next_state~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011100000111100001111000011100000111000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_sig_state\(2),
	datab => \send_ppm1|ALT_INV_current_state.pulse~q\,
	datac => \send_ppm1|ALT_INV_current_state~7_combout\,
	datad => \send_ppm1|ALT_INV_next_state~20_combout\,
	datae => \send_ppm1|ALT_INV_combi~6_combout\,
	dataf => \send_ppm1|ALT_INV_next_state~24_combout\,
	combout => \send_ppm1|local_counter1|o_count[9]~0_combout\);

-- Location: MLABCELL_X25_Y36_N57
\send_ppm1|local_counter1|o_count[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|o_count[9]~1_combout\ = ( \send_ppm1|Equal9~8_combout\ & ( \send_ppm1|local_counter1|o_count[9]~0_combout\ & ( (!\send_ppm1|current_state.synchro~q\) # ((!\i_reset_n_top~input_o\) # ((\send_ppm1|Equal9~5_combout\ & 
-- \send_ppm1|Equal9~7_combout\))) ) ) ) # ( !\send_ppm1|Equal9~8_combout\ & ( \send_ppm1|local_counter1|o_count[9]~0_combout\ & ( (!\send_ppm1|current_state.synchro~q\) # (!\i_reset_n_top~input_o\) ) ) ) # ( \send_ppm1|Equal9~8_combout\ & ( 
-- !\send_ppm1|local_counter1|o_count[9]~0_combout\ & ( !\i_reset_n_top~input_o\ ) ) ) # ( !\send_ppm1|Equal9~8_combout\ & ( !\send_ppm1|local_counter1|o_count[9]~0_combout\ & ( !\i_reset_n_top~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101110111011101110111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_current_state.synchro~q\,
	datab => \ALT_INV_i_reset_n_top~input_o\,
	datac => \send_ppm1|ALT_INV_Equal9~5_combout\,
	datad => \send_ppm1|ALT_INV_Equal9~7_combout\,
	datae => \send_ppm1|ALT_INV_Equal9~8_combout\,
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count[9]~0_combout\,
	combout => \send_ppm1|local_counter1|o_count[9]~1_combout\);

-- Location: FF_X24_Y36_N14
\send_ppm1|local_counter1|o_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~41_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(0));

-- Location: LABCELL_X27_Y36_N3
\send_ppm1|local_counter1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~45_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(1) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~42\ ))
-- \send_ppm1|local_counter1|Add0~46\ = CARRY(( \send_ppm1|local_counter1|o_count\(1) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(1),
	cin => \send_ppm1|local_counter1|Add0~42\,
	sumout => \send_ppm1|local_counter1|Add0~45_sumout\,
	cout => \send_ppm1|local_counter1|Add0~46\);

-- Location: FF_X27_Y36_N5
\send_ppm1|local_counter1|o_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|local_counter1|Add0~45_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(1));

-- Location: LABCELL_X27_Y36_N6
\send_ppm1|local_counter1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~49_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(2) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~46\ ))
-- \send_ppm1|local_counter1|Add0~50\ = CARRY(( \send_ppm1|local_counter1|o_count\(2) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(2),
	cin => \send_ppm1|local_counter1|Add0~46\,
	sumout => \send_ppm1|local_counter1|Add0~49_sumout\,
	cout => \send_ppm1|local_counter1|Add0~50\);

-- Location: FF_X25_Y36_N26
\send_ppm1|local_counter1|o_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~49_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(2));

-- Location: LABCELL_X27_Y36_N9
\send_ppm1|local_counter1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~37_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(3) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~50\ ))
-- \send_ppm1|local_counter1|Add0~38\ = CARRY(( \send_ppm1|local_counter1|o_count\(3) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(3),
	cin => \send_ppm1|local_counter1|Add0~50\,
	sumout => \send_ppm1|local_counter1|Add0~37_sumout\,
	cout => \send_ppm1|local_counter1|Add0~38\);

-- Location: FF_X25_Y36_N32
\send_ppm1|local_counter1|o_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~37_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(3));

-- Location: LABCELL_X27_Y36_N12
\send_ppm1|local_counter1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~73_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(4) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~38\ ))
-- \send_ppm1|local_counter1|Add0~74\ = CARRY(( \send_ppm1|local_counter1|o_count\(4) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(4),
	cin => \send_ppm1|local_counter1|Add0~38\,
	sumout => \send_ppm1|local_counter1|Add0~73_sumout\,
	cout => \send_ppm1|local_counter1|Add0~74\);

-- Location: FF_X24_Y36_N8
\send_ppm1|local_counter1|o_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~73_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(4));

-- Location: LABCELL_X27_Y36_N15
\send_ppm1|local_counter1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~77_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(5) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~74\ ))
-- \send_ppm1|local_counter1|Add0~78\ = CARRY(( \send_ppm1|local_counter1|o_count\(5) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(5),
	cin => \send_ppm1|local_counter1|Add0~74\,
	sumout => \send_ppm1|local_counter1|Add0~77_sumout\,
	cout => \send_ppm1|local_counter1|Add0~78\);

-- Location: FF_X25_Y36_N29
\send_ppm1|local_counter1|o_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~77_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(5));

-- Location: LABCELL_X27_Y36_N18
\send_ppm1|local_counter1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~65_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(6) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~78\ ))
-- \send_ppm1|local_counter1|Add0~66\ = CARRY(( \send_ppm1|local_counter1|o_count\(6) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(6),
	cin => \send_ppm1|local_counter1|Add0~78\,
	sumout => \send_ppm1|local_counter1|Add0~65_sumout\,
	cout => \send_ppm1|local_counter1|Add0~66\);

-- Location: FF_X24_Y36_N5
\send_ppm1|local_counter1|o_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~65_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(6));

-- Location: LABCELL_X27_Y36_N21
\send_ppm1|local_counter1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~53_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(7) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~66\ ))
-- \send_ppm1|local_counter1|Add0~54\ = CARRY(( \send_ppm1|local_counter1|o_count\(7) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(7),
	cin => \send_ppm1|local_counter1|Add0~66\,
	sumout => \send_ppm1|local_counter1|Add0~53_sumout\,
	cout => \send_ppm1|local_counter1|Add0~54\);

-- Location: FF_X25_Y36_N41
\send_ppm1|local_counter1|o_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~53_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(7));

-- Location: LABCELL_X27_Y36_N24
\send_ppm1|local_counter1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~57_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(8) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~54\ ))
-- \send_ppm1|local_counter1|Add0~58\ = CARRY(( \send_ppm1|local_counter1|o_count\(8) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(8),
	cin => \send_ppm1|local_counter1|Add0~54\,
	sumout => \send_ppm1|local_counter1|Add0~57_sumout\,
	cout => \send_ppm1|local_counter1|Add0~58\);

-- Location: FF_X27_Y36_N26
\send_ppm1|local_counter1|o_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|local_counter1|Add0~57_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(8));

-- Location: LABCELL_X27_Y36_N27
\send_ppm1|local_counter1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~61_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(9) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~58\ ))
-- \send_ppm1|local_counter1|Add0~62\ = CARRY(( \send_ppm1|local_counter1|o_count\(9) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(9),
	cin => \send_ppm1|local_counter1|Add0~58\,
	sumout => \send_ppm1|local_counter1|Add0~61_sumout\,
	cout => \send_ppm1|local_counter1|Add0~62\);

-- Location: FF_X25_Y36_N35
\send_ppm1|local_counter1|o_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~61_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(9));

-- Location: LABCELL_X27_Y36_N30
\send_ppm1|local_counter1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~25_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(10) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~62\ ))
-- \send_ppm1|local_counter1|Add0~26\ = CARRY(( \send_ppm1|local_counter1|o_count\(10) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	cin => \send_ppm1|local_counter1|Add0~62\,
	sumout => \send_ppm1|local_counter1|Add0~25_sumout\,
	cout => \send_ppm1|local_counter1|Add0~26\);

-- Location: FF_X25_Y36_N38
\send_ppm1|local_counter1|o_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~25_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(10));

-- Location: LABCELL_X27_Y36_N33
\send_ppm1|local_counter1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~29_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(11) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~26\ ))
-- \send_ppm1|local_counter1|Add0~30\ = CARRY(( \send_ppm1|local_counter1|o_count\(11) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	cin => \send_ppm1|local_counter1|Add0~26\,
	sumout => \send_ppm1|local_counter1|Add0~29_sumout\,
	cout => \send_ppm1|local_counter1|Add0~30\);

-- Location: FF_X24_Y36_N35
\send_ppm1|local_counter1|o_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~29_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(11));

-- Location: LABCELL_X27_Y36_N36
\send_ppm1|local_counter1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|local_counter1|Add0~17_sumout\ = SUM(( \send_ppm1|local_counter1|o_count\(12) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~30\ ))
-- \send_ppm1|local_counter1|Add0~18\ = CARRY(( \send_ppm1|local_counter1|o_count\(12) ) + ( GND ) + ( \send_ppm1|local_counter1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	cin => \send_ppm1|local_counter1|Add0~30\,
	sumout => \send_ppm1|local_counter1|Add0~17_sumout\,
	cout => \send_ppm1|local_counter1|Add0~18\);

-- Location: FF_X25_Y36_N2
\send_ppm1|local_counter1|o_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~17_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(12));

-- Location: FF_X25_Y36_N47
\send_ppm1|local_counter1|o_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	asdata => \send_ppm1|local_counter1|Add0~21_sumout\,
	sclr => \send_ppm1|local_counter1|o_count[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|local_counter1|o_count\(13));

-- Location: MLABCELL_X25_Y34_N0
\send_ppm1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|Equal0~3_combout\ = ( \send_ppm1|local_counter1|o_count\(12) & ( \send_ppm1|local_counter1|o_count\(10) & ( (!\send_ppm1|local_counter1|o_count\(13) & (!\send_ppm1|local_counter1|o_count\(15) & (!\send_ppm1|local_counter1|o_count\(14) & 
-- \send_ppm1|local_counter1|o_count\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|local_counter1|ALT_INV_o_count\(13),
	datab => \send_ppm1|local_counter1|ALT_INV_o_count\(15),
	datac => \send_ppm1|local_counter1|ALT_INV_o_count\(14),
	datad => \send_ppm1|local_counter1|ALT_INV_o_count\(11),
	datae => \send_ppm1|local_counter1|ALT_INV_o_count\(12),
	dataf => \send_ppm1|local_counter1|ALT_INV_o_count\(10),
	combout => \send_ppm1|Equal0~3_combout\);

-- Location: MLABCELL_X25_Y34_N12
\send_ppm1|current_state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~7_combout\ = ( \send_ppm1|current_state.tempo~q\ & ( (!\send_ppm1|Equal0~3_combout\) # ((!\send_ppm1|Equal0~0_combout\) # ((!\send_ppm1|Equal0~2_combout\) # (!\send_ppm1|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \send_ppm1|ALT_INV_Equal0~3_combout\,
	datab => \send_ppm1|ALT_INV_Equal0~0_combout\,
	datac => \send_ppm1|ALT_INV_Equal0~2_combout\,
	datad => \send_ppm1|ALT_INV_Equal0~1_combout\,
	dataf => \send_ppm1|ALT_INV_current_state.tempo~q\,
	combout => \send_ppm1|current_state~7_combout\);

-- Location: MLABCELL_X25_Y34_N6
\send_ppm1|current_state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|current_state~8_combout\ = ( \send_ppm1|reg~2_combout\ & ( \send_ppm1|combi~6_combout\ & ( \i_reset_n_top~input_o\ ) ) ) # ( !\send_ppm1|reg~2_combout\ & ( \send_ppm1|combi~6_combout\ & ( (\i_reset_n_top~input_o\ & 
-- ((\send_ppm1|current_state.pulse~q\) # (\send_ppm1|current_state~7_combout\))) ) ) ) # ( \send_ppm1|reg~2_combout\ & ( !\send_ppm1|combi~6_combout\ & ( \i_reset_n_top~input_o\ ) ) ) # ( !\send_ppm1|reg~2_combout\ & ( !\send_ppm1|combi~6_combout\ & ( 
-- (\i_reset_n_top~input_o\ & (((\send_ppm1|current_state.pulse~q\ & \send_ppm1|next_state~21_combout\)) # (\send_ppm1|current_state~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010101010101010101010100010101000101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_reset_n_top~input_o\,
	datab => \send_ppm1|ALT_INV_current_state~7_combout\,
	datac => \send_ppm1|ALT_INV_current_state.pulse~q\,
	datad => \send_ppm1|ALT_INV_next_state~21_combout\,
	datae => \send_ppm1|ALT_INV_reg~2_combout\,
	dataf => \send_ppm1|ALT_INV_combi~6_combout\,
	combout => \send_ppm1|current_state~8_combout\);

-- Location: FF_X25_Y34_N8
\send_ppm1|current_state.tempo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|current_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|current_state.tempo~q\);

-- Location: MLABCELL_X25_Y34_N27
\send_ppm1|sig_out_ppm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send_ppm1|sig_out_ppm~0_combout\ = ( \i_reset_n_top~input_o\ & ( \send_ppm1|current_state.tempo~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \send_ppm1|ALT_INV_current_state.tempo~q\,
	dataf => \ALT_INV_i_reset_n_top~input_o\,
	combout => \send_ppm1|sig_out_ppm~0_combout\);

-- Location: FF_X25_Y34_N28
\send_ppm1|sig_out_ppm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk_top~inputCLKENA0_outclk\,
	d => \send_ppm1|sig_out_ppm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_ppm1|sig_out_ppm~q\);

-- Location: LABCELL_X45_Y47_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


