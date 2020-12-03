-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/03/2020 20:09:17"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	I0 : IN std_logic_vector(15 DOWNTO 0);
	I1 : IN std_logic_vector(15 DOWNTO 0);
	S0 : IN std_logic;
	S1 : IN std_logic;
	A : BUFFER std_logic_vector(15 DOWNTO 0);
	C : BUFFER std_logic;
	Z : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- A[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[7]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[9]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[10]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[11]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[12]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[13]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_I1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \I1[0]~input_o\ : std_logic;
SIGNAL \S0~input_o\ : std_logic;
SIGNAL \I0[0]~input_o\ : std_logic;
SIGNAL \S1~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:0:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I1[1]~input_o\ : std_logic;
SIGNAL \I0[1]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:1:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I1[2]~input_o\ : std_logic;
SIGNAL \I0[2]~input_o\ : std_logic;
SIGNAL \U0|GP_2_2|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_5|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:2:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:2:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \I1[3]~input_o\ : std_logic;
SIGNAL \I0[3]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:3:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_1|temp_1|Output~0_combout\ : std_logic;
SIGNAL \U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ : std_logic;
SIGNAL \U0|GP_3_3|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_4_1|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:3:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \I1[4]~input_o\ : std_logic;
SIGNAL \I0[4]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:4:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_3_0|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_4_4|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_3_0|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:4:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_4|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_4_1|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I1[5]~input_o\ : std_logic;
SIGNAL \I0[5]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:5:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_5_2|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:10:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_5|Carry_out|process_0~1_combout\ : std_logic;
SIGNAL \I1[6]~input_o\ : std_logic;
SIGNAL \I0[6]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:6:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \U0|sum_carry_6|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I1[7]~input_o\ : std_logic;
SIGNAL \I0[7]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:7:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|process_0~3_combout\ : std_logic;
SIGNAL \I0[8]~input_o\ : std_logic;
SIGNAL \I1[8]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:8:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_7|temp_1|Output~0_combout\ : std_logic;
SIGNAL \U0|GP_8_8|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:8:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_8_5|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I0[9]~input_o\ : std_logic;
SIGNAL \I1[9]~input_o\ : std_logic;
SIGNAL \U0|GP_9_9|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \I0[10]~input_o\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_9_6|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I1[10]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:10:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_10_10|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \I0[11]~input_o\ : std_logic;
SIGNAL \I1[11]~input_o\ : std_logic;
SIGNAL \U0|GP_11_11|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|process_0~6_combout\ : std_logic;
SIGNAL \U0|sum_carry_3|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \I0[12]~input_o\ : std_logic;
SIGNAL \I1[12]~input_o\ : std_logic;
SIGNAL \U0|GP_12_12|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~5_combout\ : std_logic;
SIGNAL \I0[13]~input_o\ : std_logic;
SIGNAL \I1[13]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~6_combout\ : std_logic;
SIGNAL \U0|GP_13_13|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~7_combout\ : std_logic;
SIGNAL \U0|GP_10_10|P|I0_barI1|Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|process_0~8_combout\ : std_logic;
SIGNAL \I1[14]~input_o\ : std_logic;
SIGNAL \I0[14]~input_o\ : std_logic;
SIGNAL \U0|GP_14_14|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_13_13|P|I0_barI1|Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~5_combout\ : std_logic;
SIGNAL \U5|U1|Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~7_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~8_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|process_0~9_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~2_combout\ : std_logic;
SIGNAL \I1[15]~input_o\ : std_logic;
SIGNAL \I0[15]~input_o\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~8_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~9_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~10_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~7_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~11_combout\ : std_logic;
SIGNAL \U5|U1|Output~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|process_0~12_combout\ : std_logic;
SIGNAL \U5|U1|Output~2_combout\ : std_logic;
SIGNAL \U5|U1|Output~4_combout\ : std_logic;
SIGNAL \U5|U1|Output~5_combout\ : std_logic;
SIGNAL \U0|GP_12_12|P|I0_barI1|Output~0_combout\ : std_logic;
SIGNAL \U5|U1|Output~3_combout\ : std_logic;
SIGNAL \U5|U1|Output~6_combout\ : std_logic;
SIGNAL \U6|U2|process_0~0_combout\ : std_logic;
SIGNAL \U6|U2|process_0~1_combout\ : std_logic;
SIGNAL \U6|U2|process_0~2_combout\ : std_logic;
SIGNAL \U6|U2|process_0~3_combout\ : std_logic;
SIGNAL \U6|U2|process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_8_5|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:8:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:8:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|sum_carry_7|temp_1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U0|GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:7:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|sum_carry_6|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:6:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:10:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_7_4|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:5:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_6_3|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:4:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_4|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_3_0|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:3:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_3|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:2:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:1:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:0:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_I1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_S1~input_o\ : std_logic;
SIGNAL \ALT_INV_S0~input_o\ : std_logic;
SIGNAL \ALT_INV_I1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_I0[0]~input_o\ : std_logic;
SIGNAL \U6|U2|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U6|U2|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U6|U2|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U6|U2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~6_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~5_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~4_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~3_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~2_combout\ : std_logic;
SIGNAL \U0|GP_12_12|P|I0_barI1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~12_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \U5|U1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_10_10|P|I0_barI1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|sum_carry_3|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_11_8|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_10_7|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;

BEGIN

ww_I0 <= I0;
ww_I1 <= I1;
ww_S0 <= S0;
ww_S1 <= S1;
A <= ww_A;
C <= ww_C;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~1_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~0_combout\;
\U0|GP_11_8|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_11_8|G_i_k|process_0~0_combout\;
\U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_9_6|G_i_k|process_0~0_combout\;
\U4|GEN_MUX:9:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:9:U|U3|process_0~3_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~0_combout\;
\U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_10_7|G_i_k|process_0~0_combout\;
\U4|GEN_MUX:9:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:9:U|U3|process_0~2_combout\;
\U4|GEN_MUX:9:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:9:U|U3|process_0~1_combout\;
\U0|GP_8_5|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_8_5|G_i_k|process_0~0_combout\;
\U0|GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_9_9|P|Output_xor|process_0~0_combout\;
\U4|GEN_MUX:8:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:8:U|U3|process_0~1_combout\;
\U4|GEN_MUX:8:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:8:U|U3|process_0~0_combout\;
\U0|GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_8_8|P|Output_xor|process_0~0_combout\;
\U0|GP_7_4|G_i_k|ALT_INV_process_0~3_combout\ <= NOT \U0|GP_7_4|G_i_k|process_0~3_combout\;
\U0|GP_7_4|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \U0|GP_7_4|G_i_k|process_0~2_combout\;
\U0|sum_carry_7|temp_1|ALT_INV_Output~0_combout\ <= NOT \U0|sum_carry_7|temp_1|Output~0_combout\;
\U0|GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ <= NOT \U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\;
\U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_7_4|G_i_k|process_0~1_combout\;
\U4|GEN_MUX:7:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:7:U|U3|process_0~0_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~0_combout\;
\U0|GP_6_3|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \U0|GP_6_3|G_i_k|process_0~2_combout\;
\U0|sum_carry_6|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_6|Carry_out|process_0~0_combout\;
\U0|GP_6_3|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_6_3|G_i_k|process_0~1_combout\;
\U4|GEN_MUX:6:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:6:U|U3|process_0~0_combout\;
\U4|GEN_MUX:10:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:10:U|U3|process_0~0_combout\;
\U0|GP_7_4|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_7_4|G_i_k|process_0~0_combout\;
\U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_5_2|G_i_k|process_0~0_combout\;
\U0|sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\ <= NOT \U0|sum_carry_5|Carry_out|process_0~1_combout\;
\U4|GEN_MUX:5:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:5:U|U3|process_0~0_combout\;
\U4|GEN_MUX:9:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:9:U|U3|process_0~0_combout\;
\U0|sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_4|Carry_out|process_0~0_combout\;
\U0|GP_6_3|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_6_3|G_i_k|process_0~0_combout\;
\U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_4_1|G_i_k|process_0~1_combout\;
\U4|GEN_MUX:4:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:4:U|U3|process_0~0_combout\;
\U0|sum_carry_4|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\;
\U0|GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_4_4|P|Output_xor|process_0~0_combout\;
\U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_3_0|G_i_k|process_0~1_combout\;
\U0|GP_3_0|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_3_0|G_i_k|process_0~0_combout\;
\U4|GEN_MUX:3:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:3:U|U3|process_0~0_combout\;
\U0|sum_carry_3|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\;
\U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_4_1|G_i_k|process_0~0_combout\;
\U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_3_3|P|Output_xor|process_0~0_combout\;
\U0|GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ <= NOT \U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\;
\U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\ <= NOT \U0|sum_carry_1|temp_1|Output~0_combout\;
\U4|GEN_MUX:2:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:2:U|U3|process_0~0_combout\;
\U0|sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_5|Carry_out|process_0~0_combout\;
\U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_2_2|P|Output_xor|process_0~0_combout\;
\U4|GEN_MUX:1:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:1:U|U3|process_0~0_combout\;
\U4|GEN_MUX:0:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:0:U|U3|process_0~0_combout\;
\ALT_INV_I1[15]~input_o\ <= NOT \I1[15]~input_o\;
\ALT_INV_I0[15]~input_o\ <= NOT \I0[15]~input_o\;
\ALT_INV_I1[14]~input_o\ <= NOT \I1[14]~input_o\;
\ALT_INV_I0[14]~input_o\ <= NOT \I0[14]~input_o\;
\ALT_INV_I1[13]~input_o\ <= NOT \I1[13]~input_o\;
\ALT_INV_I0[13]~input_o\ <= NOT \I0[13]~input_o\;
\ALT_INV_I1[12]~input_o\ <= NOT \I1[12]~input_o\;
\ALT_INV_I0[12]~input_o\ <= NOT \I0[12]~input_o\;
\ALT_INV_I1[11]~input_o\ <= NOT \I1[11]~input_o\;
\ALT_INV_I0[11]~input_o\ <= NOT \I0[11]~input_o\;
\ALT_INV_I1[10]~input_o\ <= NOT \I1[10]~input_o\;
\ALT_INV_I0[10]~input_o\ <= NOT \I0[10]~input_o\;
\ALT_INV_I1[9]~input_o\ <= NOT \I1[9]~input_o\;
\ALT_INV_I0[9]~input_o\ <= NOT \I0[9]~input_o\;
\ALT_INV_I1[8]~input_o\ <= NOT \I1[8]~input_o\;
\ALT_INV_I0[8]~input_o\ <= NOT \I0[8]~input_o\;
\ALT_INV_I1[7]~input_o\ <= NOT \I1[7]~input_o\;
\ALT_INV_I0[7]~input_o\ <= NOT \I0[7]~input_o\;
\ALT_INV_I1[6]~input_o\ <= NOT \I1[6]~input_o\;
\ALT_INV_I0[6]~input_o\ <= NOT \I0[6]~input_o\;
\ALT_INV_I1[5]~input_o\ <= NOT \I1[5]~input_o\;
\ALT_INV_I0[5]~input_o\ <= NOT \I0[5]~input_o\;
\ALT_INV_I1[4]~input_o\ <= NOT \I1[4]~input_o\;
\ALT_INV_I0[4]~input_o\ <= NOT \I0[4]~input_o\;
\ALT_INV_I1[3]~input_o\ <= NOT \I1[3]~input_o\;
\ALT_INV_I0[3]~input_o\ <= NOT \I0[3]~input_o\;
\ALT_INV_I1[2]~input_o\ <= NOT \I1[2]~input_o\;
\ALT_INV_I0[2]~input_o\ <= NOT \I0[2]~input_o\;
\ALT_INV_I1[1]~input_o\ <= NOT \I1[1]~input_o\;
\ALT_INV_I0[1]~input_o\ <= NOT \I0[1]~input_o\;
\ALT_INV_S1~input_o\ <= NOT \S1~input_o\;
\ALT_INV_S0~input_o\ <= NOT \S0~input_o\;
\ALT_INV_I1[0]~input_o\ <= NOT \I1[0]~input_o\;
\ALT_INV_I0[0]~input_o\ <= NOT \I0[0]~input_o\;
\U6|U2|ALT_INV_process_0~3_combout\ <= NOT \U6|U2|process_0~3_combout\;
\U6|U2|ALT_INV_process_0~2_combout\ <= NOT \U6|U2|process_0~2_combout\;
\U6|U2|ALT_INV_process_0~1_combout\ <= NOT \U6|U2|process_0~1_combout\;
\U6|U2|ALT_INV_process_0~0_combout\ <= NOT \U6|U2|process_0~0_combout\;
\U5|U1|ALT_INV_Output~6_combout\ <= NOT \U5|U1|Output~6_combout\;
\U5|U1|ALT_INV_Output~5_combout\ <= NOT \U5|U1|Output~5_combout\;
\U5|U1|ALT_INV_Output~4_combout\ <= NOT \U5|U1|Output~4_combout\;
\U5|U1|ALT_INV_Output~3_combout\ <= NOT \U5|U1|Output~3_combout\;
\U5|U1|ALT_INV_Output~2_combout\ <= NOT \U5|U1|Output~2_combout\;
\U0|GP_12_12|P|I0_barI1|ALT_INV_Output~0_combout\ <= NOT \U0|GP_12_12|P|I0_barI1|Output~0_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~12_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~12_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~11_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~11_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~10_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~10_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~9_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~9_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~8_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~8_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~7_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~7_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~6_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~6_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~5_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~5_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~4_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~4_combout\;
\U5|U1|ALT_INV_Output~1_combout\ <= NOT \U5|U1|Output~1_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~3_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~2_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~9_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~9_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~8_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~8_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~7_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~7_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~6_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~6_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~5_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~5_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~4_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~4_combout\;
\U5|U1|ALT_INV_Output~0_combout\ <= NOT \U5|U1|Output~0_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~3_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~2_combout\;
\U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\ <= NOT \U0|GP_13_13|P|I0_barI1|Output~0_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~1_combout\;
\U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_14_14|P|Output_xor|process_0~0_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~8_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~8_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~7_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~7_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~6_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~6_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~5_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~5_combout\;
\U4|GEN_MUX:14:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:14:U|U3|process_0~1_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~4_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~4_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~3_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~2_combout\;
\U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:15:U|U3|process_0~0_combout\;
\U0|GP_10_10|P|I0_barI1|ALT_INV_Output~0_combout\ <= NOT \U0|GP_10_10|P|I0_barI1|Output~0_combout\;
\U4|GEN_MUX:13:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:13:U|U3|process_0~1_combout\;
\U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_13_13|P|Output_xor|process_0~0_combout\;
\U4|GEN_MUX:12:U|U3|ALT_INV_process_0~4_combout\ <= NOT \U4|GEN_MUX:12:U|U3|process_0~4_combout\;
\U4|GEN_MUX:12:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:12:U|U3|process_0~3_combout\;
\U4|GEN_MUX:12:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:12:U|U3|process_0~2_combout\;
\U4|GEN_MUX:12:U|U3|ALT_INV_process_0~1_combout\ <= NOT \U4|GEN_MUX:12:U|U3|process_0~1_combout\;
\U4|GEN_MUX:12:U|U3|ALT_INV_process_0~0_combout\ <= NOT \U4|GEN_MUX:12:U|U3|process_0~0_combout\;
\U0|sum_carry_3|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \U0|sum_carry_3|Carry_out|process_0~0_combout\;
\U0|GP_11_8|G_i_k|ALT_INV_process_0~3_combout\ <= NOT \U0|GP_11_8|G_i_k|process_0~3_combout\;
\U0|GP_11_8|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \U0|GP_11_8|G_i_k|process_0~2_combout\;
\U0|GP_11_8|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_11_8|G_i_k|process_0~1_combout\;
\U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_12_12|P|Output_xor|process_0~0_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~6_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~6_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~5_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~5_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~4_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~4_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~3_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~3_combout\;
\U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_11_11|P|Output_xor|process_0~0_combout\;
\U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \U0|GP_10_7|G_i_k|process_0~2_combout\;
\U0|GP_10_7|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \U0|GP_10_7|G_i_k|process_0~1_combout\;
\U4|GEN_MUX:11:U|U3|ALT_INV_process_0~2_combout\ <= NOT \U4|GEN_MUX:11:U|U3|process_0~2_combout\;
\U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \U0|GP_10_10|P|Output_xor|process_0~0_combout\;

-- Location: IOOBUF_X52_Y0_N53
\A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:0:U|U3|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_A(0));

-- Location: IOOBUF_X58_Y0_N93
\A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:1:U|U3|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_A(1));

-- Location: IOOBUF_X54_Y0_N19
\A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:2:U|U3|process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_A(2));

-- Location: IOOBUF_X56_Y0_N19
\A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:3:U|U3|process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_A(3));

-- Location: IOOBUF_X62_Y0_N19
\A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:4:U|U3|process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_A(4));

-- Location: IOOBUF_X56_Y0_N2
\A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:5:U|U3|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_A(5));

-- Location: IOOBUF_X72_Y0_N53
\A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:6:U|U3|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_A(6));

-- Location: IOOBUF_X50_Y0_N76
\A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:7:U|U3|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_A(7));

-- Location: IOOBUF_X58_Y0_N59
\A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:8:U|U3|process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_A(8));

-- Location: IOOBUF_X62_Y0_N36
\A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:9:U|U3|process_0~3_combout\,
	devoe => ww_devoe,
	o => ww_A(9));

-- Location: IOOBUF_X70_Y0_N36
\A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:10:U|U3|process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_A(10));

-- Location: IOOBUF_X68_Y0_N36
\A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:11:U|U3|process_0~6_combout\,
	devoe => ww_devoe,
	o => ww_A(11));

-- Location: IOOBUF_X40_Y0_N2
\A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:12:U|U3|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_A(12));

-- Location: IOOBUF_X62_Y0_N2
\A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:13:U|U3|process_0~8_combout\,
	devoe => ww_devoe,
	o => ww_A(13));

-- Location: IOOBUF_X68_Y0_N53
\A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:14:U|U3|process_0~9_combout\,
	devoe => ww_devoe,
	o => ww_A(14));

-- Location: IOOBUF_X72_Y0_N36
\A[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|GEN_MUX:15:U|U3|process_0~12_combout\,
	devoe => ww_devoe,
	o => ww_A(15));

-- Location: IOOBUF_X50_Y0_N59
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|U1|ALT_INV_Output~6_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X72_Y0_N19
\Z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|U2|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_Z);

-- Location: IOIBUF_X40_Y0_N35
\I1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(0),
	o => \I1[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\S0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0,
	o => \S0~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\I0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(0),
	o => \I0[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\S1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1,
	o => \S1~input_o\);

-- Location: LABCELL_X60_Y2_N0
\U4|GEN_MUX:0:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:0:U|U3|process_0~0_combout\ = ( \S1~input_o\ & ( (!\I1[0]~input_o\ & ((!\S0~input_o\) # (\I0[0]~input_o\))) # (\I1[0]~input_o\ & ((!\I0[0]~input_o\))) ) ) # ( !\S1~input_o\ & ( !\I1[0]~input_o\ $ (!\I0[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011011010110110101101101011011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[0]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[0]~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:0:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\I1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(1),
	o => \I1[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\I0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(1),
	o => \I0[1]~input_o\);

-- Location: LABCELL_X60_Y2_N6
\U4|GEN_MUX:1:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:1:U|U3|process_0~0_combout\ = ( \S0~input_o\ & ( \S1~input_o\ & ( !\I1[1]~input_o\ $ (!\I0[1]~input_o\) ) ) ) # ( !\S0~input_o\ & ( \S1~input_o\ & ( (!\I1[1]~input_o\) # (!\I0[1]~input_o\) ) ) ) # ( \S0~input_o\ & ( !\S1~input_o\ & ( 
-- !\I1[1]~input_o\ $ (!\I0[1]~input_o\ $ (((!\I0[0]~input_o\ & \I1[0]~input_o\)))) ) ) ) # ( !\S0~input_o\ & ( !\S1~input_o\ & ( !\I1[1]~input_o\ $ (!\I0[1]~input_o\ $ (((\I0[0]~input_o\ & \I1[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010110011010011011111111101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[1]~input_o\,
	datab => \ALT_INV_I0[0]~input_o\,
	datac => \ALT_INV_I1[0]~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:1:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\I1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(2),
	o => \I1[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\I0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(2),
	o => \I0[2]~input_o\);

-- Location: LABCELL_X60_Y2_N42
\U0|GP_2_2|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_2_2|P|Output_xor|process_0~0_combout\ = !\I1[2]~input_o\ $ (!\S0~input_o\ $ (\I0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[2]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[2]~input_o\,
	combout => \U0|GP_2_2|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N3
\U0|sum_carry_5|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_5|Carry_out|process_0~0_combout\ = ( \I0[0]~input_o\ & ( (!\I1[0]~input_o\ & ((!\I1[1]~input_o\ & (\S0~input_o\)) # (\I1[1]~input_o\ & ((\I0[1]~input_o\))))) # (\I1[0]~input_o\ & ((!\S0~input_o\ $ (!\I1[1]~input_o\)) # (\I0[1]~input_o\))) ) 
-- ) # ( !\I0[0]~input_o\ & ( (!\I1[0]~input_o\ & ((!\I1[1]~input_o\ & (\S0~input_o\)) # (\I1[1]~input_o\ & ((\I0[1]~input_o\))))) # (\I1[0]~input_o\ & (\I0[1]~input_o\ & (!\S0~input_o\ $ (!\I1[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111110001000000011111000110100011111110011010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[0]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[1]~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	dataf => \ALT_INV_I0[0]~input_o\,
	combout => \U0|sum_carry_5|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N21
\U4|GEN_MUX:2:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:2:U|U3|process_0~0_combout\ = (!\I1[2]~input_o\ & (\S0~input_o\ & !\I0[2]~input_o\)) # (\I1[2]~input_o\ & ((\I0[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[2]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[2]~input_o\,
	combout => \U4|GEN_MUX:2:U|U3|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N3
\U4|GEN_MUX:2:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:2:U|U3|process_0~1_combout\ = ( \S1~input_o\ & ( !\U4|GEN_MUX:2:U|U3|process_0~0_combout\ ) ) # ( !\S1~input_o\ & ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ $ (!\U0|sum_carry_5|Carry_out|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U0|sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	datad => \U4|GEN_MUX:2:U|U3|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:2:U|U3|process_0~1_combout\);

-- Location: IOIBUF_X50_Y0_N92
\I1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(3),
	o => \I1[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\I0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(3),
	o => \I0[3]~input_o\);

-- Location: LABCELL_X60_Y2_N39
\U4|GEN_MUX:3:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:3:U|U3|process_0~0_combout\ = ( \I0[3]~input_o\ & ( \I1[3]~input_o\ ) ) # ( !\I0[3]~input_o\ & ( (\S0~input_o\ & !\I1[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[3]~input_o\,
	dataf => \ALT_INV_I0[3]~input_o\,
	combout => \U4|GEN_MUX:3:U|U3|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N54
\U0|sum_carry_1|temp_1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_1|temp_1|Output~0_combout\ = ( \I1[1]~input_o\ & ( (\S0~input_o\ & (\I0[1]~input_o\ & (!\I1[0]~input_o\ $ (\I0[0]~input_o\)))) ) ) # ( !\I1[1]~input_o\ & ( (\S0~input_o\ & (!\I0[1]~input_o\ & (!\I1[0]~input_o\ $ (\I0[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000001000010000000000000000001000010000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[0]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[0]~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	dataf => \ALT_INV_I1[1]~input_o\,
	combout => \U0|sum_carry_1|temp_1|Output~0_combout\);

-- Location: LABCELL_X60_Y2_N57
\U0|GP_1_0|P_i_jG_jMinus1_k|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ = ( \I1[1]~input_o\ & ( (\I0[0]~input_o\ & ((!\I1[0]~input_o\ & (\S0~input_o\ & \I0[1]~input_o\)) # (\I1[0]~input_o\ & (!\S0~input_o\ & !\I0[1]~input_o\)))) ) ) # ( !\I1[1]~input_o\ & ( (\I0[0]~input_o\ & 
-- ((!\I1[0]~input_o\ & (\S0~input_o\ & !\I0[1]~input_o\)) # (\I1[0]~input_o\ & (!\S0~input_o\ & \I0[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000000100000000100000010000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[0]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[0]~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	dataf => \ALT_INV_I1[1]~input_o\,
	combout => \U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\);

-- Location: LABCELL_X60_Y2_N30
\U0|GP_3_3|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_3_3|P|Output_xor|process_0~0_combout\ = !\S0~input_o\ $ (!\I0[3]~input_o\ $ (\I1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[3]~input_o\,
	datad => \ALT_INV_I1[3]~input_o\,
	combout => \U0|GP_3_3|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N18
\U0|GP_4_1|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_4_1|G_i_k|process_0~0_combout\ = ( \I1[1]~input_o\ & ( (!\I1[2]~input_o\ & (\I0[2]~input_o\ & ((\I0[1]~input_o\) # (\S0~input_o\)))) # (\I1[2]~input_o\ & (!\S0~input_o\ & ((\I0[1]~input_o\) # (\I0[2]~input_o\)))) ) ) # ( !\I1[1]~input_o\ & ( 
-- (!\I1[2]~input_o\ & (\S0~input_o\ & ((\I0[1]~input_o\) # (\I0[2]~input_o\)))) # (\I1[2]~input_o\ & (\I0[2]~input_o\ & ((!\S0~input_o\) # (\I0[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000011011000100100001101100010010011100100001001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[2]~input_o\,
	datab => \ALT_INV_I0[2]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	dataf => \ALT_INV_I1[1]~input_o\,
	combout => \U0|GP_4_1|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N36
\U0|sum_carry_3|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\ = ( \U0|GP_4_1|G_i_k|process_0~0_combout\ & ( !\U0|GP_3_3|P|Output_xor|process_0~0_combout\ ) ) # ( !\U0|GP_4_1|G_i_k|process_0~0_combout\ & ( !\U0|GP_3_3|P|Output_xor|process_0~0_combout\ $ 
-- (((!\U0|GP_2_2|P|Output_xor|process_0~0_combout\) # ((!\U0|sum_carry_1|temp_1|Output~0_combout\ & !\U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111101100000100111110110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datab => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datad => \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X62_Y2_N0
\U4|GEN_MUX:3:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:3:U|U3|process_0~1_combout\ = ( \S1~input_o\ & ( !\U4|GEN_MUX:3:U|U3|process_0~0_combout\ ) ) # ( !\S1~input_o\ & ( \U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U4|GEN_MUX:3:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|sum_carry_3|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:3:U|U3|process_0~1_combout\);

-- Location: IOIBUF_X56_Y0_N52
\I1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(4),
	o => \I1[4]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\I0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(4),
	o => \I0[4]~input_o\);

-- Location: LABCELL_X62_Y2_N36
\U4|GEN_MUX:4:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:4:U|U3|process_0~0_combout\ = ( \I0[4]~input_o\ & ( \I1[4]~input_o\ ) ) # ( !\I0[4]~input_o\ & ( (\S0~input_o\ & !\I1[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I1[4]~input_o\,
	dataf => \ALT_INV_I0[4]~input_o\,
	combout => \U4|GEN_MUX:4:U|U3|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N45
\U0|GP_3_0|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_3_0|G_i_k|process_0~1_combout\ = ( \I0[3]~input_o\ & ( (!\S0~input_o\ & (((\I1[2]~input_o\ & \I0[2]~input_o\)) # (\I1[3]~input_o\))) # (\S0~input_o\ & ((!\I1[3]~input_o\) # ((!\I1[2]~input_o\ & \I0[2]~input_o\)))) ) ) # ( !\I0[3]~input_o\ & ( 
-- (\I0[2]~input_o\ & ((!\I1[2]~input_o\ & (\S0~input_o\ & !\I1[3]~input_o\)) # (\I1[2]~input_o\ & (!\S0~input_o\ & \I1[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100100000000000010010000111100011111100011110001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[2]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[3]~input_o\,
	datad => \ALT_INV_I0[2]~input_o\,
	dataf => \ALT_INV_I0[3]~input_o\,
	combout => \U0|GP_3_0|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X60_Y2_N33
\U0|GP_4_4|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_4_4|P|Output_xor|process_0~0_combout\ = ( \I1[4]~input_o\ & ( !\S0~input_o\ $ (\I0[4]~input_o\) ) ) # ( !\I1[4]~input_o\ & ( !\S0~input_o\ $ (!\I0[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[4]~input_o\,
	dataf => \ALT_INV_I1[4]~input_o\,
	combout => \U0|GP_4_4|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N12
\U0|GP_3_0|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_3_0|G_i_k|process_0~0_combout\ = ( \I1[0]~input_o\ & ( (!\I1[1]~input_o\ & (\I0[1]~input_o\ & ((\S0~input_o\) # (\I0[0]~input_o\)))) # (\I1[1]~input_o\ & (!\S0~input_o\ & ((\I0[1]~input_o\) # (\I0[0]~input_o\)))) ) ) # ( !\I1[0]~input_o\ & ( 
-- (!\I1[1]~input_o\ & (\S0~input_o\ & ((\I0[1]~input_o\) # (\I0[0]~input_o\)))) # (\I1[1]~input_o\ & (\I0[1]~input_o\ & ((!\S0~input_o\) # (\I0[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001011011000000100101101100010000011110100001000001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[1]~input_o\,
	datab => \ALT_INV_I0[0]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[1]~input_o\,
	dataf => \ALT_INV_I1[0]~input_o\,
	combout => \U0|GP_3_0|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N42
\U0|sum_carry_4|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\ = ( \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|sum_carry_1|temp_1|Output~0_combout\ & ( !\U0|GP_4_4|P|Output_xor|process_0~0_combout\ $ (((!\U0|GP_3_0|G_i_k|process_0~1_combout\ & 
-- !\U0|GP_3_3|P|Output_xor|process_0~0_combout\))) ) ) ) # ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|sum_carry_1|temp_1|Output~0_combout\ & ( !\U0|GP_3_0|G_i_k|process_0~1_combout\ $ (!\U0|GP_4_4|P|Output_xor|process_0~0_combout\) ) ) ) # ( 
-- \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|sum_carry_1|temp_1|Output~0_combout\ & ( !\U0|GP_4_4|P|Output_xor|process_0~0_combout\ $ (((!\U0|GP_3_0|G_i_k|process_0~1_combout\ & ((!\U0|GP_3_3|P|Output_xor|process_0~0_combout\) # 
-- (!\U0|GP_3_0|G_i_k|process_0~0_combout\))))) ) ) ) # ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|sum_carry_1|temp_1|Output~0_combout\ & ( !\U0|GP_3_0|G_i_k|process_0~1_combout\ $ (!\U0|GP_4_4|P|Output_xor|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110110001100110011001100110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	datab => \U0|GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	datae => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	combout => \U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X62_Y2_N39
\U4|GEN_MUX:4:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:4:U|U3|process_0~1_combout\ = ( \S1~input_o\ & ( !\U4|GEN_MUX:4:U|U3|process_0~0_combout\ ) ) # ( !\S1~input_o\ & ( \U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:4:U|U3|ALT_INV_process_0~0_combout\,
	datac => \U0|sum_carry_4|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:4:U|U3|process_0~1_combout\);

-- Location: LABCELL_X60_Y2_N51
\U0|GP_6_3|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_6_3|G_i_k|process_0~0_combout\ = ( \I0[3]~input_o\ & ( (!\I1[4]~input_o\ & ((!\I1[3]~input_o\ & (\S0~input_o\)) # (\I1[3]~input_o\ & ((\I0[4]~input_o\))))) # (\I1[4]~input_o\ & ((!\I1[3]~input_o\ & ((\I0[4]~input_o\))) # (\I1[3]~input_o\ & 
-- (!\S0~input_o\)))) ) ) # ( !\I0[3]~input_o\ & ( (\I0[4]~input_o\ & (!\I1[4]~input_o\ $ (!\S0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000011000011111100001100001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[4]~input_o\,
	datab => \ALT_INV_I1[3]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[4]~input_o\,
	dataf => \ALT_INV_I0[3]~input_o\,
	combout => \U0|GP_6_3|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N15
\U0|sum_carry_4|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_4|Carry_out|process_0~0_combout\ = ( \I1[0]~input_o\ & ( (\I0[0]~input_o\ & (!\I1[1]~input_o\ $ (!\I0[1]~input_o\ $ (\S0~input_o\)))) ) ) # ( !\I1[0]~input_o\ & ( (\S0~input_o\ & (!\I1[1]~input_o\ $ (\I0[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010100010010001000010001001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[1]~input_o\,
	datab => \ALT_INV_I0[0]~input_o\,
	datac => \ALT_INV_I0[1]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[0]~input_o\,
	combout => \U0|sum_carry_4|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N48
\U0|GP_4_1|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_4_1|G_i_k|process_0~1_combout\ = ( \S0~input_o\ & ( (!\I1[4]~input_o\ & (!\I0[4]~input_o\ & (!\I1[3]~input_o\ $ (\I0[3]~input_o\)))) # (\I1[4]~input_o\ & (\I0[4]~input_o\ & (!\I1[3]~input_o\ $ (\I0[3]~input_o\)))) ) ) # ( !\S0~input_o\ & ( 
-- (!\I1[4]~input_o\ & (\I0[4]~input_o\ & (!\I1[3]~input_o\ $ (!\I0[3]~input_o\)))) # (\I1[4]~input_o\ & (!\I0[4]~input_o\ & (!\I1[3]~input_o\ $ (!\I0[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100010000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[4]~input_o\,
	datab => \ALT_INV_I1[3]~input_o\,
	datac => \ALT_INV_I0[3]~input_o\,
	datad => \ALT_INV_I0[4]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_4_1|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X61_Y2_N51
\U4|GEN_MUX:9:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:9:U|U3|process_0~0_combout\ = ( \U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (!\U0|GP_6_3|G_i_k|process_0~0_combout\ & (!\U0|GP_4_1|G_i_k|process_0~0_combout\ & ((!\U0|sum_carry_4|Carry_out|process_0~0_combout\) # 
-- (!\U0|GP_2_2|P|Output_xor|process_0~0_combout\)))) ) ) # ( !\U0|GP_4_1|G_i_k|process_0~1_combout\ & ( !\U0|GP_6_3|G_i_k|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_6_3|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U4|GEN_MUX:9:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\I1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(5),
	o => \I1[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\I0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(5),
	o => \I0[5]~input_o\);

-- Location: LABCELL_X62_Y2_N42
\U4|GEN_MUX:5:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:5:U|U3|process_0~0_combout\ = ( \S1~input_o\ & ( (!\I1[5]~input_o\ & ((!\S0~input_o\) # (\I0[5]~input_o\))) # (\I1[5]~input_o\ & ((!\I0[5]~input_o\))) ) ) # ( !\S1~input_o\ & ( !\U4|GEN_MUX:9:U|U3|process_0~0_combout\ $ (!\S0~input_o\ $ 
-- (!\I1[5]~input_o\ $ (\I0[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011001101001100101100110100111001111111100001100111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[5]~input_o\,
	datad => \ALT_INV_I0[5]~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:5:U|U3|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N36
\U0|GP_7_4|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_7_4|G_i_k|process_0~0_combout\ = ( \I0[5]~input_o\ & ( (!\S0~input_o\ & (((\I0[4]~input_o\ & \I1[4]~input_o\)) # (\I1[5]~input_o\))) # (\S0~input_o\ & ((!\I1[5]~input_o\) # ((\I0[4]~input_o\ & !\I1[4]~input_o\)))) ) ) # ( !\I0[5]~input_o\ & ( 
-- (\I0[4]~input_o\ & ((!\S0~input_o\ & (\I1[4]~input_o\ & \I1[5]~input_o\)) # (\S0~input_o\ & (!\I1[4]~input_o\ & !\I1[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000100000100000000010000110111110111000011011111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[4]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[4]~input_o\,
	datad => \ALT_INV_I1[5]~input_o\,
	dataf => \ALT_INV_I0[5]~input_o\,
	combout => \U0|GP_7_4|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N24
\U0|GP_5_2|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_5_2|G_i_k|process_0~0_combout\ = ( \I0[5]~input_o\ & ( (!\I1[5]~input_o\ & (!\S0~input_o\ & (!\I1[4]~input_o\ $ (!\I0[4]~input_o\)))) # (\I1[5]~input_o\ & (\S0~input_o\ & (!\I1[4]~input_o\ $ (\I0[4]~input_o\)))) ) ) # ( !\I0[5]~input_o\ & ( 
-- (!\I1[5]~input_o\ & (\S0~input_o\ & (!\I1[4]~input_o\ $ (\I0[4]~input_o\)))) # (\I1[5]~input_o\ & (!\S0~input_o\ & (!\I1[4]~input_o\ $ (!\I0[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000010001001000100001000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[5]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[4]~input_o\,
	datad => \ALT_INV_I0[4]~input_o\,
	dataf => \ALT_INV_I0[5]~input_o\,
	combout => \U0|GP_5_2|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N30
\U4|GEN_MUX:10:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:10:U|U3|process_0~0_combout\ = ( \U0|GP_5_2|G_i_k|process_0~0_combout\ & ( (!\U0|GP_7_4|G_i_k|process_0~0_combout\ & !\U0|GP_3_0|G_i_k|process_0~1_combout\) ) ) # ( !\U0|GP_5_2|G_i_k|process_0~0_combout\ & ( 
-- !\U0|GP_7_4|G_i_k|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:10:U|U3|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N54
\U0|sum_carry_5|Carry_out|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_5|Carry_out|process_0~1_combout\ = ( \S0~input_o\ & ( \U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|sum_carry_5|Carry_out|process_0~0_combout\ & (\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & (!\I0[5]~input_o\ $ (\I1[5]~input_o\)))) ) ) ) 
-- # ( !\S0~input_o\ & ( \U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|sum_carry_5|Carry_out|process_0~0_combout\ & (\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & (!\I0[5]~input_o\ $ (!\I1[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[5]~input_o\,
	datab => \U0|sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_I1[5]~input_o\,
	datad => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U0|sum_carry_5|Carry_out|process_0~1_combout\);

-- Location: IOIBUF_X64_Y0_N35
\I1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(6),
	o => \I1[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\I0[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(6),
	o => \I0[6]~input_o\);

-- Location: LABCELL_X63_Y2_N30
\U4|GEN_MUX:6:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:6:U|U3|process_0~0_combout\ = ( \I1[6]~input_o\ & ( \I0[6]~input_o\ & ( (!\S1~input_o\ & (!\S0~input_o\ $ (((\U4|GEN_MUX:10:U|U3|process_0~0_combout\ & !\U0|sum_carry_5|Carry_out|process_0~1_combout\))))) ) ) ) # ( !\I1[6]~input_o\ & ( 
-- \I0[6]~input_o\ & ( (!\S0~input_o\ $ (((!\U4|GEN_MUX:10:U|U3|process_0~0_combout\) # (\U0|sum_carry_5|Carry_out|process_0~1_combout\)))) # (\S1~input_o\) ) ) ) # ( \I1[6]~input_o\ & ( !\I0[6]~input_o\ & ( (!\S0~input_o\ $ 
-- (((!\U4|GEN_MUX:10:U|U3|process_0~0_combout\) # (\U0|sum_carry_5|Carry_out|process_0~1_combout\)))) # (\S1~input_o\) ) ) ) # ( !\I1[6]~input_o\ & ( !\I0[6]~input_o\ & ( !\S0~input_o\ $ (((\U4|GEN_MUX:10:U|U3|process_0~0_combout\ & 
-- (!\U0|sum_carry_5|Carry_out|process_0~1_combout\ & !\S1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110011001100011000111111111101100011111111111001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:10:U|U3|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_S0~input_o\,
	datac => \U0|sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_I1[6]~input_o\,
	dataf => \ALT_INV_I0[6]~input_o\,
	combout => \U4|GEN_MUX:6:U|U3|process_0~0_combout\);

-- Location: LABCELL_X60_Y2_N27
\U0|GP_6_3|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_6_3|G_i_k|process_0~1_combout\ = ( \I0[6]~input_o\ & ( (!\S0~input_o\ & (!\I1[6]~input_o\ & (!\I1[5]~input_o\ $ (!\I0[5]~input_o\)))) # (\S0~input_o\ & (\I1[6]~input_o\ & (!\I1[5]~input_o\ $ (\I0[5]~input_o\)))) ) ) # ( !\I0[6]~input_o\ & ( 
-- (!\S0~input_o\ & (\I1[6]~input_o\ & (!\I1[5]~input_o\ $ (!\I0[5]~input_o\)))) # (\S0~input_o\ & (!\I1[6]~input_o\ & (!\I1[5]~input_o\ $ (\I0[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000011000001001000001100001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[5]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[6]~input_o\,
	datad => \ALT_INV_I0[5]~input_o\,
	dataf => \ALT_INV_I0[6]~input_o\,
	combout => \U0|GP_6_3|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X61_Y2_N6
\U0|sum_carry_6|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_6|Carry_out|process_0~0_combout\ = ( \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|sum_carry_1|temp_1|Output~0_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & \U0|GP_4_1|G_i_k|process_0~1_combout\) ) ) ) # ( 
-- !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|sum_carry_1|temp_1|Output~0_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & (\U0|GP_4_1|G_i_k|process_0~0_combout\ & \U0|GP_4_1|G_i_k|process_0~1_combout\)) ) ) ) # ( 
-- \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|sum_carry_1|temp_1|Output~0_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & (\U0|GP_4_1|G_i_k|process_0~1_combout\ & ((\U0|GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\) # 
-- (\U0|GP_4_1|G_i_k|process_0~0_combout\)))) ) ) ) # ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|sum_carry_1|temp_1|Output~0_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & (\U0|GP_4_1|G_i_k|process_0~0_combout\ & 
-- \U0|GP_4_1|G_i_k|process_0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001010100000000000100010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	datab => \U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datad => \U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	datae => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	combout => \U0|sum_carry_6|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X62_Y2_N3
\U0|GP_6_3|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_6_3|G_i_k|process_0~2_combout\ = ( \I0[6]~input_o\ & ( (!\S0~input_o\ & (((\I1[5]~input_o\ & \I0[5]~input_o\)) # (\I1[6]~input_o\))) # (\S0~input_o\ & ((!\I1[6]~input_o\) # ((!\I1[5]~input_o\ & \I0[5]~input_o\)))) ) ) # ( !\I0[6]~input_o\ & ( 
-- (\I0[5]~input_o\ & ((!\I1[5]~input_o\ & (\S0~input_o\ & !\I1[6]~input_o\)) # (\I1[5]~input_o\ & (!\S0~input_o\ & \I1[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010000110111110011100011011111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[5]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[5]~input_o\,
	datad => \ALT_INV_I1[6]~input_o\,
	dataf => \ALT_INV_I0[6]~input_o\,
	combout => \U0|GP_6_3|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X61_Y2_N48
\U4|GEN_MUX:11:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~0_combout\ = (!\U0|GP_6_3|G_i_k|process_0~2_combout\ & ((!\U0|GP_6_3|G_i_k|process_0~0_combout\) # (!\U0|GP_6_3|G_i_k|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_6_3|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_6_3|G_i_k|ALT_INV_process_0~2_combout\,
	datad => \U0|GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\I1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(7),
	o => \I1[7]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\I0[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(7),
	o => \I0[7]~input_o\);

-- Location: LABCELL_X63_Y2_N36
\U4|GEN_MUX:7:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:7:U|U3|process_0~0_combout\ = ( \S1~input_o\ & ( \I0[7]~input_o\ & ( !\I1[7]~input_o\ ) ) ) # ( !\S1~input_o\ & ( \I0[7]~input_o\ & ( !\S0~input_o\ $ (!\I1[7]~input_o\ $ (((!\U0|sum_carry_6|Carry_out|process_0~0_combout\ & 
-- \U4|GEN_MUX:11:U|U3|process_0~0_combout\)))) ) ) ) # ( \S1~input_o\ & ( !\I0[7]~input_o\ & ( (!\S0~input_o\) # (\I1[7]~input_o\) ) ) ) # ( !\S1~input_o\ & ( !\I0[7]~input_o\ & ( !\S0~input_o\ $ (!\I1[7]~input_o\ $ 
-- (((!\U4|GEN_MUX:11:U|U3|process_0~0_combout\) # (\U0|sum_carry_6|Carry_out|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011001011001101010101111111101011001101001101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \U0|sum_carry_6|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_I1[7]~input_o\,
	datae => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U4|GEN_MUX:7:U|U3|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N15
\U0|GP_7_4|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_7_4|G_i_k|process_0~2_combout\ = ( \I0[7]~input_o\ & ( (!\I1[7]~input_o\ & (((\I0[6]~input_o\ & \I1[6]~input_o\)) # (\S0~input_o\))) # (\I1[7]~input_o\ & ((!\S0~input_o\) # ((\I0[6]~input_o\ & !\I1[6]~input_o\)))) ) ) # ( !\I0[7]~input_o\ & ( 
-- (\I0[6]~input_o\ & ((!\I1[7]~input_o\ & (\S0~input_o\ & !\I1[6]~input_o\)) # (\I1[7]~input_o\ & (!\S0~input_o\ & \I1[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010000000001000001000000111101011111000011110101111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[6]~input_o\,
	datab => \ALT_INV_I1[7]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I1[6]~input_o\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U0|GP_7_4|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X63_Y2_N12
\U0|GP_7_4|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_7_4|G_i_k|process_0~1_combout\ = ( \I0[7]~input_o\ & ( (!\I1[7]~input_o\ & (!\S0~input_o\ & (!\I0[6]~input_o\ $ (!\I1[6]~input_o\)))) # (\I1[7]~input_o\ & (\S0~input_o\ & (!\I0[6]~input_o\ $ (\I1[6]~input_o\)))) ) ) # ( !\I0[7]~input_o\ & ( 
-- (!\I1[7]~input_o\ & (\S0~input_o\ & (!\I0[6]~input_o\ $ (\I1[6]~input_o\)))) # (\I1[7]~input_o\ & (!\S0~input_o\ & (!\I0[6]~input_o\ $ (!\I1[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010000100000100101000010001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[6]~input_o\,
	datab => \ALT_INV_I1[7]~input_o\,
	datac => \ALT_INV_I1[6]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U0|GP_7_4|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X61_Y2_N33
\U0|GP_7_4|G_i_k|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_7_4|G_i_k|process_0~3_combout\ = ( \U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (!\U0|GP_7_4|G_i_k|process_0~0_combout\ & !\U0|GP_7_4|G_i_k|process_0~2_combout\) ) ) # ( !\U0|GP_7_4|G_i_k|process_0~1_combout\ & ( !\U0|GP_7_4|G_i_k|process_0~2_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_7_4|G_i_k|ALT_INV_process_0~2_combout\,
	dataf => \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U0|GP_7_4|G_i_k|process_0~3_combout\);

-- Location: IOIBUF_X62_Y0_N52
\I0[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(8),
	o => \I0[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\I1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(8),
	o => \I1[8]~input_o\);

-- Location: LABCELL_X62_Y1_N39
\U4|GEN_MUX:8:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:8:U|U3|process_0~0_combout\ = ( \I1[8]~input_o\ & ( \S0~input_o\ & ( \I0[8]~input_o\ ) ) ) # ( !\I1[8]~input_o\ & ( \S0~input_o\ & ( !\I0[8]~input_o\ ) ) ) # ( \I1[8]~input_o\ & ( !\S0~input_o\ & ( \I0[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_I0[8]~input_o\,
	datae => \ALT_INV_I1[8]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U4|GEN_MUX:8:U|U3|process_0~0_combout\);

-- Location: LABCELL_X61_Y2_N12
\U0|GP_7_0|P_i_jG_jMinus1_k|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\ = ( \U0|GP_3_0|G_i_k|process_0~0_combout\ & ( \U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (\U0|GP_5_2|G_i_k|process_0~0_combout\ & (((\U0|GP_3_3|P|Output_xor|process_0~0_combout\ & 
-- \U0|GP_2_2|P|Output_xor|process_0~0_combout\)) # (\U0|GP_3_0|G_i_k|process_0~1_combout\))) ) ) ) # ( !\U0|GP_3_0|G_i_k|process_0~0_combout\ & ( \U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (\U0|GP_3_0|G_i_k|process_0~1_combout\ & 
-- \U0|GP_5_2|G_i_k|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	datab => \U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \U0|GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\);

-- Location: LABCELL_X61_Y2_N0
\U0|sum_carry_7|temp_1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_7|temp_1|Output~0_combout\ = ( \U0|GP_5_2|G_i_k|process_0~0_combout\ & ( (\U0|sum_carry_1|temp_1|Output~0_combout\ & (\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & (\U0|GP_7_4|G_i_k|process_0~1_combout\ & 
-- \U0|GP_3_3|P|Output_xor|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datab => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	datad => \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U0|sum_carry_7|temp_1|Output~0_combout\);

-- Location: LABCELL_X62_Y1_N30
\U0|GP_8_8|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_8_8|P|Output_xor|process_0~0_combout\ = ( \I1[8]~input_o\ & ( \S0~input_o\ & ( \I0[8]~input_o\ ) ) ) # ( !\I1[8]~input_o\ & ( \S0~input_o\ & ( !\I0[8]~input_o\ ) ) ) # ( \I1[8]~input_o\ & ( !\S0~input_o\ & ( !\I0[8]~input_o\ ) ) ) # ( 
-- !\I1[8]~input_o\ & ( !\S0~input_o\ & ( \I0[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_I0[8]~input_o\,
	datae => \ALT_INV_I1[8]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_8_8|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X61_Y1_N0
\U4|GEN_MUX:8:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:8:U|U3|process_0~1_combout\ = ( \U0|sum_carry_7|temp_1|Output~0_combout\ & ( \U0|GP_8_8|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:8:U|U3|process_0~0_combout\ & \S1~input_o\) ) ) ) # ( !\U0|sum_carry_7|temp_1|Output~0_combout\ & ( 
-- \U0|GP_8_8|P|Output_xor|process_0~0_combout\ & ( (!\S1~input_o\ & (\U0|GP_7_4|G_i_k|process_0~3_combout\ & ((!\U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\)))) # (\S1~input_o\ & (((!\U4|GEN_MUX:8:U|U3|process_0~0_combout\)))) ) ) ) # ( 
-- \U0|sum_carry_7|temp_1|Output~0_combout\ & ( !\U0|GP_8_8|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:8:U|U3|process_0~0_combout\) # (!\S1~input_o\) ) ) ) # ( !\U0|sum_carry_7|temp_1|Output~0_combout\ & ( 
-- !\U0|GP_8_8|P|Output_xor|process_0~0_combout\ & ( (!\S1~input_o\ & ((!\U0|GP_7_4|G_i_k|process_0~3_combout\) # ((\U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\)))) # (\S1~input_o\ & (((!\U4|GEN_MUX:8:U|U3|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111001100111111111100110001010000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_7_4|G_i_k|ALT_INV_process_0~3_combout\,
	datab => \U4|GEN_MUX:8:U|U3|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datad => \ALT_INV_S1~input_o\,
	datae => \U0|sum_carry_7|temp_1|ALT_INV_Output~0_combout\,
	dataf => \U0|GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:8:U|U3|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N27
\U0|GP_10_7|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_10_7|G_i_k|process_0~0_combout\ = ( \I0[7]~input_o\ & ( (!\I1[7]~input_o\ & ((!\I1[8]~input_o\ & (\S0~input_o\)) # (\I1[8]~input_o\ & ((\I0[8]~input_o\))))) # (\I1[7]~input_o\ & ((!\I1[8]~input_o\ & ((\I0[8]~input_o\))) # (\I1[8]~input_o\ & 
-- (!\S0~input_o\)))) ) ) # ( !\I0[7]~input_o\ & ( (\I0[8]~input_o\ & (!\S0~input_o\ $ (!\I1[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001000111001011100100011100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[7]~input_o\,
	datac => \ALT_INV_I0[8]~input_o\,
	datad => \ALT_INV_I1[8]~input_o\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U0|GP_10_7|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N18
\U0|GP_8_5|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_8_5|G_i_k|process_0~0_combout\ = ( \I0[7]~input_o\ & ( (!\I1[7]~input_o\ & (!\S0~input_o\ & (!\I1[8]~input_o\ $ (!\I0[8]~input_o\)))) # (\I1[7]~input_o\ & (\S0~input_o\ & (!\I1[8]~input_o\ $ (\I0[8]~input_o\)))) ) ) # ( !\I0[7]~input_o\ & ( 
-- (!\I1[7]~input_o\ & (\S0~input_o\ & (!\I1[8]~input_o\ $ (\I0[8]~input_o\)))) # (\I1[7]~input_o\ & (!\S0~input_o\ & (!\I1[8]~input_o\ $ (!\I0[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000100100000110000010010001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[8]~input_o\,
	datab => \ALT_INV_I1[7]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[8]~input_o\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U0|GP_8_5|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N21
\U4|GEN_MUX:13:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~0_combout\ = ( \U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\U0|GP_6_3|G_i_k|process_0~2_combout\ & !\U0|GP_10_7|G_i_k|process_0~0_combout\) ) ) # ( !\U0|GP_8_5|G_i_k|process_0~0_combout\ & ( 
-- !\U0|GP_10_7|G_i_k|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U0|GP_6_3|G_i_k|ALT_INV_process_0~2_combout\,
	datad => \U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_8_5|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\I0[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(9),
	o => \I0[9]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\I1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(9),
	o => \I1[9]~input_o\);

-- Location: LABCELL_X62_Y2_N18
\U0|GP_9_9|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_9_9|P|Output_xor|process_0~0_combout\ = ( \I1[9]~input_o\ & ( !\I0[9]~input_o\ $ (\S0~input_o\) ) ) # ( !\I1[9]~input_o\ & ( !\I0[9]~input_o\ $ (!\S0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[9]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[9]~input_o\,
	combout => \U0|GP_9_9|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X62_Y2_N21
\U4|GEN_MUX:9:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:9:U|U3|process_0~1_combout\ = ( \I1[9]~input_o\ & ( \I0[9]~input_o\ ) ) # ( !\I1[9]~input_o\ & ( (!\I0[9]~input_o\ & \S0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[9]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[9]~input_o\,
	combout => \U4|GEN_MUX:9:U|U3|process_0~1_combout\);

-- Location: LABCELL_X61_Y2_N18
\U4|GEN_MUX:9:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:9:U|U3|process_0~2_combout\ = ( \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & (((\U0|sum_carry_4|Carry_out|process_0~0_combout\) # 
-- (\U0|GP_4_1|G_i_k|process_0~0_combout\)) # (\U0|GP_6_3|G_i_k|process_0~0_combout\))) ) ) ) # ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( \U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~1_combout\ & 
-- ((\U0|GP_4_1|G_i_k|process_0~0_combout\) # (\U0|GP_6_3|G_i_k|process_0~0_combout\))) ) ) ) # ( \U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~0_combout\ & 
-- \U0|GP_6_3|G_i_k|process_0~1_combout\) ) ) ) # ( !\U0|GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\U0|GP_4_1|G_i_k|process_0~1_combout\ & ( (\U0|GP_6_3|G_i_k|process_0~0_combout\ & \U0|GP_6_3|G_i_k|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000111000001110000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_6_3|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	datad => \U0|sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\,
	datae => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U4|GEN_MUX:9:U|U3|process_0~2_combout\);

-- Location: LABCELL_X63_Y2_N0
\U4|GEN_MUX:9:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:9:U|U3|process_0~3_combout\ = ( \U4|GEN_MUX:9:U|U3|process_0~2_combout\ & ( \U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\S1~input_o\ & (!\U0|GP_9_9|P|Output_xor|process_0~0_combout\)) # (\S1~input_o\ & 
-- ((!\U4|GEN_MUX:9:U|U3|process_0~1_combout\))) ) ) ) # ( !\U4|GEN_MUX:9:U|U3|process_0~2_combout\ & ( \U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\S1~input_o\ & (!\U4|GEN_MUX:13:U|U3|process_0~0_combout\ $ ((\U0|GP_9_9|P|Output_xor|process_0~0_combout\)))) 
-- # (\S1~input_o\ & (((!\U4|GEN_MUX:9:U|U3|process_0~1_combout\)))) ) ) ) # ( \U4|GEN_MUX:9:U|U3|process_0~2_combout\ & ( !\U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\S1~input_o\ & (!\U4|GEN_MUX:13:U|U3|process_0~0_combout\ $ 
-- ((\U0|GP_9_9|P|Output_xor|process_0~0_combout\)))) # (\S1~input_o\ & (((!\U4|GEN_MUX:9:U|U3|process_0~1_combout\)))) ) ) ) # ( !\U4|GEN_MUX:9:U|U3|process_0~2_combout\ & ( !\U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\S1~input_o\ & 
-- (!\U4|GEN_MUX:13:U|U3|process_0~0_combout\ $ ((\U0|GP_9_9|P|Output_xor|process_0~0_combout\)))) # (\S1~input_o\ & (((!\U4|GEN_MUX:9:U|U3|process_0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111110000100110011111000010011001111100001100110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_S1~input_o\,
	datae => \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~2_combout\,
	dataf => \U0|GP_8_5|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:9:U|U3|process_0~3_combout\);

-- Location: IOIBUF_X68_Y0_N1
\I0[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(10),
	o => \I0[10]~input_o\);

-- Location: LABCELL_X62_Y1_N51
\U0|GP_11_8|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_11_8|G_i_k|process_0~0_combout\ = ( \I1[8]~input_o\ & ( \I1[9]~input_o\ & ( (!\S0~input_o\ & ((\I0[8]~input_o\) # (\I0[9]~input_o\))) ) ) ) # ( !\I1[8]~input_o\ & ( \I1[9]~input_o\ & ( (\I0[9]~input_o\ & ((!\S0~input_o\) # (\I0[8]~input_o\))) ) ) ) 
-- # ( \I1[8]~input_o\ & ( !\I1[9]~input_o\ & ( (\I0[9]~input_o\ & ((\I0[8]~input_o\) # (\S0~input_o\))) ) ) ) # ( !\I1[8]~input_o\ & ( !\I1[9]~input_o\ & ( (\S0~input_o\ & ((\I0[8]~input_o\) # (\I0[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000101010001010101000101010001010100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[9]~input_o\,
	datab => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[8]~input_o\,
	datae => \ALT_INV_I1[8]~input_o\,
	dataf => \ALT_INV_I1[9]~input_o\,
	combout => \U0|GP_11_8|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X62_Y1_N12
\U0|GP_9_6|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_9_6|G_i_k|process_0~0_combout\ = ( \I1[8]~input_o\ & ( \I1[9]~input_o\ & ( (!\I0[8]~input_o\ & (!\I0[9]~input_o\ & !\S0~input_o\)) # (\I0[8]~input_o\ & (\I0[9]~input_o\ & \S0~input_o\)) ) ) ) # ( !\I1[8]~input_o\ & ( \I1[9]~input_o\ & ( 
-- (!\I0[8]~input_o\ & (\I0[9]~input_o\ & \S0~input_o\)) # (\I0[8]~input_o\ & (!\I0[9]~input_o\ & !\S0~input_o\)) ) ) ) # ( \I1[8]~input_o\ & ( !\I1[9]~input_o\ & ( (!\I0[8]~input_o\ & (\I0[9]~input_o\ & !\S0~input_o\)) # (\I0[8]~input_o\ & (!\I0[9]~input_o\ 
-- & \S0~input_o\)) ) ) ) # ( !\I1[8]~input_o\ & ( !\I1[9]~input_o\ & ( (!\I0[8]~input_o\ & (!\I0[9]~input_o\ & \S0~input_o\)) # (\I0[8]~input_o\ & (\I0[9]~input_o\ & !\S0~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000011000011000000110000000011001100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_I0[8]~input_o\,
	datac => \ALT_INV_I0[9]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	datae => \ALT_INV_I1[8]~input_o\,
	dataf => \ALT_INV_I1[9]~input_o\,
	combout => \U0|GP_9_6|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N6
\U4|GEN_MUX:14:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~0_combout\ = ( \U0|sum_carry_5|Carry_out|process_0~1_combout\ & ( \U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (!\U0|GP_11_8|G_i_k|process_0~0_combout\ & !\U0|GP_9_6|G_i_k|process_0~0_combout\) ) ) ) # ( 
-- !\U0|sum_carry_5|Carry_out|process_0~1_combout\ & ( \U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (!\U0|GP_11_8|G_i_k|process_0~0_combout\ & ((!\U0|GP_9_6|G_i_k|process_0~0_combout\) # ((\U4|GEN_MUX:10:U|U3|process_0~0_combout\ & 
-- !\U0|GP_7_4|G_i_k|process_0~2_combout\)))) ) ) ) # ( \U0|sum_carry_5|Carry_out|process_0~1_combout\ & ( !\U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (!\U0|GP_11_8|G_i_k|process_0~0_combout\ & ((!\U0|GP_9_6|G_i_k|process_0~0_combout\) # 
-- (!\U0|GP_7_4|G_i_k|process_0~2_combout\))) ) ) ) # ( !\U0|sum_carry_5|Carry_out|process_0~1_combout\ & ( !\U0|GP_7_4|G_i_k|process_0~1_combout\ & ( (!\U0|GP_11_8|G_i_k|process_0~0_combout\ & ((!\U0|GP_9_6|G_i_k|process_0~0_combout\) # 
-- (!\U0|GP_7_4|G_i_k|process_0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010001010100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_11_8|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:10:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_7_4|G_i_k|ALT_INV_process_0~2_combout\,
	datae => \U0|sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\,
	dataf => \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\I1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(10),
	o => \I1[10]~input_o\);

-- Location: MLABCELL_X65_Y2_N33
\U4|GEN_MUX:10:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:10:U|U3|process_0~1_combout\ = ( \I1[10]~input_o\ & ( !\I0[10]~input_o\ $ (((!\S1~input_o\ & (!\S0~input_o\ $ (\U4|GEN_MUX:14:U|U3|process_0~0_combout\))))) ) ) # ( !\I1[10]~input_o\ & ( (!\S1~input_o\ & (!\S0~input_o\ $ (!\I0[10]~input_o\ $ 
-- (!\U4|GEN_MUX:14:U|U3|process_0~0_combout\)))) # (\S1~input_o\ & ((!\S0~input_o\) # ((\I0[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010111011100101101011101101101001110011000110100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	datac => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_I1[10]~input_o\,
	combout => \U4|GEN_MUX:10:U|U3|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N30
\U0|GP_10_10|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_10_10|P|Output_xor|process_0~0_combout\ = ( \I1[10]~input_o\ & ( !\S0~input_o\ $ (\I0[10]~input_o\) ) ) # ( !\I1[10]~input_o\ & ( !\S0~input_o\ $ (!\I0[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	dataf => \ALT_INV_I1[10]~input_o\,
	combout => \U0|GP_10_10|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N24
\U4|GEN_MUX:11:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~2_combout\ = ( \I0[7]~input_o\ & ( (\U0|GP_10_10|P|Output_xor|process_0~0_combout\ & (\U0|GP_9_6|G_i_k|process_0~0_combout\ & (!\S0~input_o\ $ (\I1[7]~input_o\)))) ) ) # ( !\I0[7]~input_o\ & ( 
-- (\U0|GP_10_10|P|Output_xor|process_0~0_combout\ & (\U0|GP_9_6|G_i_k|process_0~0_combout\ & (!\S0~input_o\ $ (!\I1[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[7]~input_o\,
	datac => \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_I0[7]~input_o\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~2_combout\);

-- Location: MLABCELL_X65_Y2_N15
\U0|GP_10_7|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_10_7|G_i_k|process_0~1_combout\ = ( \I1[10]~input_o\ & ( (!\I0[10]~input_o\ & (!\S0~input_o\ & (!\I1[9]~input_o\ $ (!\I0[9]~input_o\)))) # (\I0[10]~input_o\ & (\S0~input_o\ & (!\I1[9]~input_o\ $ (\I0[9]~input_o\)))) ) ) # ( !\I1[10]~input_o\ & ( 
-- (!\I0[10]~input_o\ & (\S0~input_o\ & (!\I1[9]~input_o\ $ (\I0[9]~input_o\)))) # (\I0[10]~input_o\ & (!\S0~input_o\ & (!\I1[9]~input_o\ $ (!\I0[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000100100000110000010010001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[9]~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[9]~input_o\,
	dataf => \ALT_INV_I1[10]~input_o\,
	combout => \U0|GP_10_7|G_i_k|process_0~1_combout\);

-- Location: IOIBUF_X72_Y0_N1
\I0[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(11),
	o => \I0[11]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\I1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(11),
	o => \I1[11]~input_o\);

-- Location: MLABCELL_X65_Y2_N21
\U0|GP_11_11|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_11_11|P|Output_xor|process_0~0_combout\ = ( \S0~input_o\ & ( !\I0[11]~input_o\ $ (\I1[11]~input_o\) ) ) # ( !\S0~input_o\ & ( !\I0[11]~input_o\ $ (!\I1[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I1[11]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_11_11|P|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X65_Y2_N12
\U0|GP_10_7|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_10_7|G_i_k|process_0~2_combout\ = ( \I1[10]~input_o\ & ( (!\I0[9]~input_o\ & (((\I0[10]~input_o\ & !\S0~input_o\)))) # (\I0[9]~input_o\ & ((!\I1[9]~input_o\ & (\I0[10]~input_o\)) # (\I1[9]~input_o\ & ((!\S0~input_o\))))) ) ) # ( !\I1[10]~input_o\ & 
-- ( (!\I0[9]~input_o\ & (((\I0[10]~input_o\ & \S0~input_o\)))) # (\I0[9]~input_o\ & ((!\I1[9]~input_o\ & ((\S0~input_o\))) # (\I1[9]~input_o\ & (\I0[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100011011000000110001101100110000011100100011000001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[9]~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[9]~input_o\,
	dataf => \ALT_INV_I1[10]~input_o\,
	combout => \U0|GP_10_7|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X63_Y2_N45
\U4|GEN_MUX:11:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~3_combout\ = ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (!\S1~input_o\ & (\U0|GP_11_11|P|Output_xor|process_0~0_combout\ & ((!\U0|GP_10_7|G_i_k|process_0~0_combout\) # (!\U0|GP_10_7|G_i_k|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_10_7|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_S1~input_o\,
	datad => \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~3_combout\);

-- Location: MLABCELL_X65_Y2_N9
\U4|GEN_MUX:11:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~1_combout\ = ( \S0~input_o\ & ( (!\S1~input_o\ & (!\I0[11]~input_o\ $ (!\I1[11]~input_o\))) ) ) # ( !\S0~input_o\ & ( (!\S1~input_o\ & (!\I0[11]~input_o\ $ (\I1[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I1[11]~input_o\,
	datac => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N18
\U4|GEN_MUX:11:U|U3|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~4_combout\ = ( \S0~input_o\ & ( (\S1~input_o\ & (!\I1[11]~input_o\ $ (!\I0[11]~input_o\))) ) ) # ( !\S0~input_o\ & ( (\S1~input_o\ & ((!\I1[11]~input_o\) # (!\I0[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_I1[11]~input_o\,
	datac => \ALT_INV_I0[11]~input_o\,
	datad => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~4_combout\);

-- Location: LABCELL_X63_Y2_N42
\U4|GEN_MUX:11:U|U3|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~5_combout\ = ( \U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (!\U4|GEN_MUX:11:U|U3|process_0~4_combout\ & !\U4|GEN_MUX:11:U|U3|process_0~1_combout\) ) ) # ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( 
-- (!\U4|GEN_MUX:11:U|U3|process_0~4_combout\ & ((!\U0|GP_10_7|G_i_k|process_0~0_combout\) # ((!\U0|GP_10_7|G_i_k|process_0~1_combout\) # (!\U4|GEN_MUX:11:U|U3|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_10_7|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~4_combout\,
	datad => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~1_combout\,
	dataf => \U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~5_combout\);

-- Location: LABCELL_X63_Y2_N48
\U4|GEN_MUX:11:U|U3|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:11:U|U3|process_0~6_combout\ = ( \U4|GEN_MUX:11:U|U3|process_0~1_combout\ & ( \U4|GEN_MUX:11:U|U3|process_0~5_combout\ & ( ((\U4|GEN_MUX:11:U|U3|process_0~2_combout\ & ((!\U4|GEN_MUX:11:U|U3|process_0~0_combout\) # 
-- (\U0|sum_carry_6|Carry_out|process_0~0_combout\)))) # (\U4|GEN_MUX:11:U|U3|process_0~3_combout\) ) ) ) # ( !\U4|GEN_MUX:11:U|U3|process_0~1_combout\ & ( \U4|GEN_MUX:11:U|U3|process_0~5_combout\ & ( (\U4|GEN_MUX:11:U|U3|process_0~3_combout\ & 
-- ((!\U4|GEN_MUX:11:U|U3|process_0~2_combout\) # ((!\U0|sum_carry_6|Carry_out|process_0~0_combout\ & \U4|GEN_MUX:11:U|U3|process_0~0_combout\)))) ) ) ) # ( \U4|GEN_MUX:11:U|U3|process_0~1_combout\ & ( !\U4|GEN_MUX:11:U|U3|process_0~5_combout\ ) ) # ( 
-- !\U4|GEN_MUX:11:U|U3|process_0~1_combout\ & ( !\U4|GEN_MUX:11:U|U3|process_0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000101011100101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~2_combout\,
	datab => \U0|sum_carry_6|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~3_combout\,
	datae => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~1_combout\,
	dataf => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~5_combout\,
	combout => \U4|GEN_MUX:11:U|U3|process_0~6_combout\);

-- Location: LABCELL_X61_Y2_N39
\U0|sum_carry_3|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|sum_carry_3|Carry_out|process_0~0_combout\ = ( !\U0|GP_3_0|G_i_k|process_0~1_combout\ & ( (!\U0|GP_2_2|P|Output_xor|process_0~0_combout\) # ((!\U0|GP_3_3|P|Output_xor|process_0~0_combout\) # ((!\U0|sum_carry_1|temp_1|Output~0_combout\ & 
-- !\U0|GP_3_0|G_i_k|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100111111101111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datab => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U0|sum_carry_3|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X61_Y1_N21
\U4|GEN_MUX:12:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:12:U|U3|process_0~0_combout\ = ( \U0|GP_7_4|G_i_k|process_0~3_combout\ & ( (!\U0|GP_5_2|G_i_k|process_0~0_combout\) # ((!\U0|GP_7_4|G_i_k|process_0~1_combout\) # (\U0|sum_carry_3|Carry_out|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|sum_carry_3|Carry_out|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \U0|GP_7_4|G_i_k|ALT_INV_process_0~3_combout\,
	combout => \U4|GEN_MUX:12:U|U3|process_0~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\I0[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(12),
	o => \I0[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\I1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(12),
	o => \I1[12]~input_o\);

-- Location: LABCELL_X61_Y1_N36
\U0|GP_12_12|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_12_12|P|Output_xor|process_0~0_combout\ = ( \S0~input_o\ & ( !\I0[12]~input_o\ $ (\I1[12]~input_o\) ) ) # ( !\S0~input_o\ & ( !\I0[12]~input_o\ $ (!\I1[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_I0[12]~input_o\,
	datad => \ALT_INV_I1[12]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_12_12|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X61_Y1_N39
\U4|GEN_MUX:12:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:12:U|U3|process_0~1_combout\ = ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (!\U0|GP_12_12|P|Output_xor|process_0~0_combout\ & (\U0|GP_9_6|G_i_k|process_0~0_combout\ & (\U0|GP_11_11|P|Output_xor|process_0~0_combout\ & !\S1~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_S1~input_o\,
	dataf => \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:12:U|U3|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N54
\U0|GP_11_8|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_11_8|G_i_k|process_0~1_combout\ = ( \S0~input_o\ & ( (!\I0[11]~input_o\ & (\I0[10]~input_o\ & (!\I1[10]~input_o\ & !\I1[11]~input_o\))) # (\I0[11]~input_o\ & ((!\I1[11]~input_o\) # ((\I0[10]~input_o\ & !\I1[10]~input_o\)))) ) ) # ( !\S0~input_o\ & 
-- ( (!\I0[11]~input_o\ & (\I0[10]~input_o\ & (\I1[10]~input_o\ & \I1[11]~input_o\))) # (\I0[11]~input_o\ & (((\I0[10]~input_o\ & \I1[10]~input_o\)) # (\I1[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011101110101000100000111010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	datac => \ALT_INV_I1[10]~input_o\,
	datad => \ALT_INV_I1[11]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_11_8|G_i_k|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N57
\U0|GP_11_8|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_11_8|G_i_k|process_0~2_combout\ = ( \S0~input_o\ & ( (!\I0[11]~input_o\ & (!\I1[11]~input_o\ & (!\I0[10]~input_o\ $ (\I1[10]~input_o\)))) # (\I0[11]~input_o\ & (\I1[11]~input_o\ & (!\I0[10]~input_o\ $ (\I1[10]~input_o\)))) ) ) # ( !\S0~input_o\ & ( 
-- (!\I0[11]~input_o\ & (\I1[11]~input_o\ & (!\I0[10]~input_o\ $ (!\I1[10]~input_o\)))) # (\I0[11]~input_o\ & (!\I1[11]~input_o\ & (!\I0[10]~input_o\ $ (!\I1[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100010000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I0[10]~input_o\,
	datac => \ALT_INV_I1[10]~input_o\,
	datad => \ALT_INV_I1[11]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_11_8|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X61_Y1_N42
\U0|GP_11_8|G_i_k|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_11_8|G_i_k|process_0~3_combout\ = (!\U0|GP_11_8|G_i_k|process_0~1_combout\ & ((!\U0|GP_11_8|G_i_k|process_0~0_combout\) # (!\U0|GP_11_8|G_i_k|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|GP_11_8|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \U0|GP_11_8|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_11_8|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \U0|GP_11_8|G_i_k|process_0~3_combout\);

-- Location: LABCELL_X61_Y1_N18
\U4|GEN_MUX:12:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:12:U|U3|process_0~2_combout\ = ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (\U0|GP_9_6|G_i_k|process_0~0_combout\ & \U0|GP_11_11|P|Output_xor|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U0|GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:12:U|U3|process_0~2_combout\);

-- Location: LABCELL_X61_Y1_N24
\U4|GEN_MUX:12:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:12:U|U3|process_0~3_combout\ = ( \S1~input_o\ & ( \I0[12]~input_o\ & ( !\I1[12]~input_o\ ) ) ) # ( !\S1~input_o\ & ( \I0[12]~input_o\ & ( (!\U0|GP_11_8|G_i_k|process_0~3_combout\ & (!\S0~input_o\ $ ((!\I1[12]~input_o\)))) # 
-- (\U0|GP_11_8|G_i_k|process_0~3_combout\ & (!\U4|GEN_MUX:12:U|U3|process_0~2_combout\ & (!\S0~input_o\ $ (\I1[12]~input_o\)))) ) ) ) # ( \S1~input_o\ & ( !\I0[12]~input_o\ & ( (!\S0~input_o\) # (\I1[12]~input_o\) ) ) ) # ( !\S1~input_o\ & ( 
-- !\I0[12]~input_o\ & ( (!\U0|GP_11_8|G_i_k|process_0~3_combout\ & (!\S0~input_o\ $ ((\I1[12]~input_o\)))) # (\U0|GP_11_8|G_i_k|process_0~3_combout\ & (!\U4|GEN_MUX:12:U|U3|process_0~2_combout\ & (!\S0~input_o\ $ (!\I1[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101100000101110111011101101100110100100001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[12]~input_o\,
	datac => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~2_combout\,
	datad => \U0|GP_11_8|G_i_k|ALT_INV_process_0~3_combout\,
	datae => \ALT_INV_S1~input_o\,
	dataf => \ALT_INV_I0[12]~input_o\,
	combout => \U4|GEN_MUX:12:U|U3|process_0~3_combout\);

-- Location: LABCELL_X61_Y1_N30
\U4|GEN_MUX:12:U|U3|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:12:U|U3|process_0~4_combout\ = ( \S1~input_o\ & ( \U4|GEN_MUX:12:U|U3|process_0~3_combout\ ) ) # ( !\S1~input_o\ & ( \U4|GEN_MUX:12:U|U3|process_0~3_combout\ ) ) # ( \S1~input_o\ & ( !\U4|GEN_MUX:12:U|U3|process_0~3_combout\ & ( 
-- (!\U4|GEN_MUX:12:U|U3|process_0~0_combout\ & \U4|GEN_MUX:12:U|U3|process_0~1_combout\) ) ) ) # ( !\S1~input_o\ & ( !\U4|GEN_MUX:12:U|U3|process_0~3_combout\ & ( (!\U4|GEN_MUX:12:U|U3|process_0~0_combout\ & (\U4|GEN_MUX:12:U|U3|process_0~1_combout\)) # 
-- (\U4|GEN_MUX:12:U|U3|process_0~0_combout\ & (((\U0|GP_12_12|P|Output_xor|process_0~0_combout\ & \U0|GP_11_8|G_i_k|process_0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100111001000100010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~0_combout\,
	datab => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~1_combout\,
	datac => \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_11_8|G_i_k|ALT_INV_process_0~3_combout\,
	datae => \ALT_INV_S1~input_o\,
	dataf => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~3_combout\,
	combout => \U4|GEN_MUX:12:U|U3|process_0~4_combout\);

-- Location: MLABCELL_X65_Y2_N36
\U4|GEN_MUX:15:U|U3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~0_combout\ = ( \I1[11]~input_o\ & ( \I1[12]~input_o\ & ( (!\S1~input_o\ & (((!\I0[11]~input_o\ & !\I0[12]~input_o\)) # (\S0~input_o\))) ) ) ) # ( !\I1[11]~input_o\ & ( \I1[12]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & 
-- ((!\I0[12]~input_o\))) # (\S0~input_o\ & (!\I0[11]~input_o\)))) ) ) ) # ( \I1[11]~input_o\ & ( !\I1[12]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (!\I0[11]~input_o\)) # (\S0~input_o\ & ((!\I0[12]~input_o\))))) ) ) ) # ( !\I1[11]~input_o\ & ( 
-- !\I1[12]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\) # ((!\I0[11]~input_o\ & !\I0[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000101011000000000011001010000000001000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I0[12]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \ALT_INV_I1[11]~input_o\,
	dataf => \ALT_INV_I1[12]~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~0_combout\);

-- Location: MLABCELL_X65_Y2_N0
\U4|GEN_MUX:14:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~1_combout\ = ( \I1[12]~input_o\ & ( (\S0~input_o\ & !\I0[12]~input_o\) ) ) # ( !\I1[12]~input_o\ & ( (!\S0~input_o\ & !\I0[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[12]~input_o\,
	dataf => \ALT_INV_I1[12]~input_o\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N45
\U4|GEN_MUX:13:U|U3|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~5_combout\ = ( \I1[12]~input_o\ & ( (!\I0[11]~input_o\ & (((\I0[12]~input_o\ & !\S0~input_o\)))) # (\I0[11]~input_o\ & ((!\I1[11]~input_o\ & (\I0[12]~input_o\)) # (\I1[11]~input_o\ & ((!\S0~input_o\))))) ) ) # ( 
-- !\I1[12]~input_o\ & ( (!\I0[11]~input_o\ & (((\I0[12]~input_o\ & \S0~input_o\)))) # (\I0[11]~input_o\ & ((!\I1[11]~input_o\ & ((\S0~input_o\))) # (\I1[11]~input_o\ & (\I0[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101001111000000010100111100011111000001000001111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I1[11]~input_o\,
	datac => \ALT_INV_I0[12]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[12]~input_o\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~5_combout\);

-- Location: IOIBUF_X64_Y0_N1
\I0[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(13),
	o => \I0[13]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\I1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(13),
	o => \I1[13]~input_o\);

-- Location: MLABCELL_X65_Y2_N48
\U4|GEN_MUX:13:U|U3|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~6_combout\ = ( \I0[13]~input_o\ & ( \I1[13]~input_o\ & ( ((!\S0~input_o\ & ((!\U4|GEN_MUX:13:U|U3|process_0~5_combout\))) # (\S0~input_o\ & (!\U4|GEN_MUX:14:U|U3|process_0~1_combout\))) # (\S1~input_o\) ) ) ) # ( 
-- !\I0[13]~input_o\ & ( \I1[13]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & (!\U4|GEN_MUX:14:U|U3|process_0~1_combout\)) # (\S0~input_o\ & ((!\U4|GEN_MUX:13:U|U3|process_0~5_combout\))))) ) ) ) # ( \I0[13]~input_o\ & ( !\I1[13]~input_o\ & ( 
-- (!\S1~input_o\ & ((!\S0~input_o\ & (!\U4|GEN_MUX:14:U|U3|process_0~1_combout\)) # (\S0~input_o\ & ((!\U4|GEN_MUX:13:U|U3|process_0~5_combout\))))) ) ) ) # ( !\I0[13]~input_o\ & ( !\I1[13]~input_o\ & ( (!\S1~input_o\ & ((!\S0~input_o\ & 
-- ((!\U4|GEN_MUX:13:U|U3|process_0~5_combout\))) # (\S0~input_o\ & (!\U4|GEN_MUX:14:U|U3|process_0~1_combout\)))) # (\S1~input_o\ & (((\S0~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101100001011100011001000000010001100100000001111101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~5_combout\,
	datae => \ALT_INV_I0[13]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~6_combout\);

-- Location: LABCELL_X60_Y1_N30
\U0|GP_13_13|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_13_13|P|Output_xor|process_0~0_combout\ = ( \I1[13]~input_o\ & ( !\S0~input_o\ $ (\I0[13]~input_o\) ) ) # ( !\I1[13]~input_o\ & ( !\S0~input_o\ $ (!\I0[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U0|GP_13_13|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X61_Y1_N6
\U4|GEN_MUX:13:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~1_combout\ = ( !\U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( (\U0|GP_12_12|P|Output_xor|process_0~0_combout\ & (!\S1~input_o\ & \U0|GP_11_11|P|Output_xor|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_S1~input_o\,
	datad => \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~1_combout\);

-- Location: MLABCELL_X65_Y2_N42
\U4|GEN_MUX:13:U|U3|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~4_combout\ = ( \I0[10]~input_o\ & ( !\I0[11]~input_o\ $ (!\I1[11]~input_o\ $ (\S0~input_o\)) ) ) # ( !\I0[10]~input_o\ & ( (!\I1[10]~input_o\ & (\S0~input_o\ & (!\I0[11]~input_o\ $ (\I1[11]~input_o\)))) # (\I1[10]~input_o\ & 
-- (!\S0~input_o\ & (!\I0[11]~input_o\ $ (!\I1[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I1[11]~input_o\,
	datac => \ALT_INV_I1[10]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I0[10]~input_o\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~4_combout\);

-- Location: LABCELL_X62_Y2_N30
\U4|GEN_MUX:13:U|U3|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~7_combout\ = ( \U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( \U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (\U4|GEN_MUX:13:U|U3|process_0~6_combout\ & (!\U4|GEN_MUX:13:U|U3|process_0~1_combout\ & 
-- ((!\U4|GEN_MUX:15:U|U3|process_0~0_combout\) # (\U4|GEN_MUX:13:U|U3|process_0~4_combout\)))) ) ) ) # ( !\U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( \U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (\U4|GEN_MUX:13:U|U3|process_0~6_combout\ & 
-- !\U4|GEN_MUX:13:U|U3|process_0~1_combout\) ) ) ) # ( \U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (\U4|GEN_MUX:13:U|U3|process_0~6_combout\ & ((!\U4|GEN_MUX:15:U|U3|process_0~0_combout\) # 
-- (\U4|GEN_MUX:13:U|U3|process_0~4_combout\))) ) ) ) # ( !\U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( \U4|GEN_MUX:13:U|U3|process_0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000100011001100110000001100000010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\,
	datab => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~6_combout\,
	datac => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~1_combout\,
	datad => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~4_combout\,
	datae => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~7_combout\);

-- Location: MLABCELL_X65_Y2_N3
\U0|GP_10_10|P|I0_barI1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_10_10|P|I0_barI1|Output~0_combout\ = ( \I1[10]~input_o\ & ( (!\S0~input_o\ & \I0[10]~input_o\) ) ) # ( !\I1[10]~input_o\ & ( (\S0~input_o\ & \I0[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I0[10]~input_o\,
	dataf => \ALT_INV_I1[10]~input_o\,
	combout => \U0|GP_10_10|P|I0_barI1|Output~0_combout\);

-- Location: LABCELL_X62_Y2_N24
\U4|GEN_MUX:13:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~2_combout\ = ( \I0[9]~input_o\ & ( \I1[9]~input_o\ & ( (!\U0|GP_10_10|P|I0_barI1|Output~0_combout\ & (\S0~input_o\ & (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & \U0|GP_13_13|P|Output_xor|process_0~0_combout\))) ) ) ) # ( 
-- !\I0[9]~input_o\ & ( \I1[9]~input_o\ & ( (!\U0|GP_10_10|P|I0_barI1|Output~0_combout\ & (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & \U0|GP_13_13|P|Output_xor|process_0~0_combout\)) ) ) ) # ( \I0[9]~input_o\ & ( !\I1[9]~input_o\ & ( 
-- (!\U0|GP_10_10|P|I0_barI1|Output~0_combout\ & (!\S0~input_o\ & (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & \U0|GP_13_13|P|Output_xor|process_0~0_combout\))) ) ) ) # ( !\I0[9]~input_o\ & ( !\I1[9]~input_o\ & ( (!\U0|GP_10_10|P|I0_barI1|Output~0_combout\ & 
-- (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & \U0|GP_13_13|P|Output_xor|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000100000000000000010100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_10_10|P|I0_barI1|ALT_INV_Output~0_combout\,
	datab => \ALT_INV_S0~input_o\,
	datac => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_I0[9]~input_o\,
	dataf => \ALT_INV_I1[9]~input_o\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~2_combout\);

-- Location: LABCELL_X62_Y2_N45
\U4|GEN_MUX:13:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~3_combout\ = ( \U0|GP_8_5|G_i_k|process_0~0_combout\ & ( (!\U4|GEN_MUX:9:U|U3|process_0~2_combout\ & \U4|GEN_MUX:13:U|U3|process_0~0_combout\) ) ) # ( !\U0|GP_8_5|G_i_k|process_0~0_combout\ & ( 
-- \U4|GEN_MUX:13:U|U3|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~2_combout\,
	datad => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_8_5|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~3_combout\);

-- Location: LABCELL_X62_Y2_N6
\U4|GEN_MUX:13:U|U3|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:13:U|U3|process_0~8_combout\ = ( \U4|GEN_MUX:13:U|U3|process_0~1_combout\ & ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:13:U|U3|process_0~7_combout\) # (((\U0|GP_9_9|P|Output_xor|process_0~0_combout\ & 
-- !\U4|GEN_MUX:13:U|U3|process_0~3_combout\)) # (\U4|GEN_MUX:13:U|U3|process_0~2_combout\)) ) ) ) # ( !\U4|GEN_MUX:13:U|U3|process_0~1_combout\ & ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:13:U|U3|process_0~7_combout\) # 
-- ((\U4|GEN_MUX:13:U|U3|process_0~2_combout\ & ((!\U0|GP_9_9|P|Output_xor|process_0~0_combout\) # (\U4|GEN_MUX:13:U|U3|process_0~3_combout\)))) ) ) ) # ( \U4|GEN_MUX:13:U|U3|process_0~1_combout\ & ( !\U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( 
-- (!\U4|GEN_MUX:13:U|U3|process_0~7_combout\) # ((\U4|GEN_MUX:13:U|U3|process_0~2_combout\ & ((!\U0|GP_9_9|P|Output_xor|process_0~0_combout\) # (\U4|GEN_MUX:13:U|U3|process_0~3_combout\)))) ) ) ) # ( !\U4|GEN_MUX:13:U|U3|process_0~1_combout\ & ( 
-- !\U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:13:U|U3|process_0~7_combout\) # ((\U4|GEN_MUX:13:U|U3|process_0~2_combout\ & ((!\U0|GP_9_9|P|Output_xor|process_0~0_combout\) # (\U4|GEN_MUX:13:U|U3|process_0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001111110011101100111111001110110011111101111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~7_combout\,
	datac => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~2_combout\,
	datad => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~3_combout\,
	datae => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~1_combout\,
	dataf => \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:13:U|U3|process_0~8_combout\);

-- Location: IOIBUF_X40_Y0_N18
\I1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(14),
	o => \I1[14]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\I0[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(14),
	o => \I0[14]~input_o\);

-- Location: LABCELL_X60_Y1_N39
\U0|GP_14_14|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_14_14|P|Output_xor|process_0~0_combout\ = ( \I0[14]~input_o\ & ( !\S0~input_o\ $ (\I1[14]~input_o\) ) ) # ( !\I0[14]~input_o\ & ( !\S0~input_o\ $ (!\I1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[14]~input_o\,
	dataf => \ALT_INV_I0[14]~input_o\,
	combout => \U0|GP_14_14|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y1_N33
\U0|GP_13_13|P|I0_barI1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_13_13|P|I0_barI1|Output~0_combout\ = ( \I1[13]~input_o\ & ( (!\S0~input_o\ & \I0[13]~input_o\) ) ) # ( !\I1[13]~input_o\ & ( (\S0~input_o\ & \I0[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U0|GP_13_13|P|I0_barI1|Output~0_combout\);

-- Location: LABCELL_X62_Y1_N24
\U4|GEN_MUX:14:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~2_combout\ = ( !\U0|GP_10_10|P|I0_barI1|Output~0_combout\ & ( (\U0|GP_14_14|P|Output_xor|process_0~0_combout\ & (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & !\U0|GP_13_13|P|I0_barI1|Output~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\,
	dataf => \U0|GP_10_10|P|I0_barI1|ALT_INV_Output~0_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~2_combout\);

-- Location: LABCELL_X61_Y1_N9
\U4|GEN_MUX:15:U|U3|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~1_combout\ = ( \U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( (\U0|GP_12_12|P|Output_xor|process_0~0_combout\ & (!\S1~input_o\ & \U0|GP_11_11|P|Output_xor|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_S1~input_o\,
	datad => \U0|GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~1_combout\);

-- Location: LABCELL_X61_Y1_N45
\U4|GEN_MUX:14:U|U3|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~5_combout\ = ( \U0|GP_13_13|P|Output_xor|process_0~0_combout\ & ( (!\U0|GP_14_14|P|Output_xor|process_0~0_combout\ & (\U0|GP_11_8|G_i_k|process_0~1_combout\ & (!\S1~input_o\ & \U0|GP_12_12|P|Output_xor|process_0~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U0|GP_11_8|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_S1~input_o\,
	datad => \U0|GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~5_combout\);

-- Location: LABCELL_X60_Y1_N12
\U5|U1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~0_combout\ = ( \I1[13]~input_o\ & ( (!\S0~input_o\ & (!\I0[13]~input_o\ & ((\I0[12]~input_o\) # (\I1[12]~input_o\)))) # (\S0~input_o\ & (\I0[13]~input_o\ & ((!\I1[12]~input_o\) # (\I0[12]~input_o\)))) ) ) # ( !\I1[13]~input_o\ & ( 
-- (!\S0~input_o\ & (\I0[13]~input_o\ & ((\I0[12]~input_o\) # (\I1[12]~input_o\)))) # (\S0~input_o\ & (!\I0[13]~input_o\ & ((!\I1[12]~input_o\) # (\I0[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001100110010000100110011000011000100110010001100010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	datac => \ALT_INV_I1[12]~input_o\,
	datad => \ALT_INV_I0[12]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U5|U1|Output~0_combout\);

-- Location: LABCELL_X60_Y1_N51
\U4|GEN_MUX:14:U|U3|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~4_combout\ = ( !\U0|GP_13_13|P|I0_barI1|Output~0_combout\ & ( (!\S1~input_o\ & (!\U5|U1|Output~0_combout\ & \U0|GP_14_14|P|Output_xor|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S1~input_o\,
	datac => \U5|U1|ALT_INV_Output~0_combout\,
	datad => \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~4_combout\);

-- Location: LABCELL_X60_Y1_N15
\U4|GEN_MUX:14:U|U3|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~6_combout\ = ( \I1[13]~input_o\ & ( (!\I0[12]~input_o\ & (!\S0~input_o\ & (\I0[13]~input_o\))) # (\I0[12]~input_o\ & ((!\I1[12]~input_o\ & ((\I0[13]~input_o\))) # (\I1[12]~input_o\ & (!\S0~input_o\)))) ) ) # ( 
-- !\I1[13]~input_o\ & ( (!\I0[12]~input_o\ & (\S0~input_o\ & (\I0[13]~input_o\))) # (\I0[12]~input_o\ & ((!\I1[12]~input_o\ & (\S0~input_o\)) # (\I1[12]~input_o\ & ((\I0[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010011000101010001001100100011001010100010001100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	datac => \ALT_INV_I0[12]~input_o\,
	datad => \ALT_INV_I1[12]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~6_combout\);

-- Location: LABCELL_X60_Y1_N48
\U4|GEN_MUX:14:U|U3|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~7_combout\ = ( \U4|GEN_MUX:14:U|U3|process_0~6_combout\ & ( (!\I1[14]~input_o\ & ((!\I0[14]~input_o\ & ((!\S0~input_o\))) # (\I0[14]~input_o\ & ((\S0~input_o\) # (\S1~input_o\))))) # (\I1[14]~input_o\ & (!\I0[14]~input_o\ $ 
-- (((!\S1~input_o\ & !\S0~input_o\))))) ) ) # ( !\U4|GEN_MUX:14:U|U3|process_0~6_combout\ & ( (\S1~input_o\ & ((!\I1[14]~input_o\ & ((!\S0~input_o\) # (\I0[14]~input_o\))) # (\I1[14]~input_o\ & (!\I0[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010010001100100001001010110110010110101011011001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[14]~input_o\,
	datab => \ALT_INV_S1~input_o\,
	datac => \ALT_INV_I0[14]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~6_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~7_combout\);

-- Location: LABCELL_X62_Y1_N27
\U4|GEN_MUX:14:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~3_combout\ = ( !\U4|GEN_MUX:13:U|U3|process_0~4_combout\ & ( (\U0|GP_14_14|P|Output_xor|process_0~0_combout\ & (\U4|GEN_MUX:15:U|U3|process_0~0_combout\ & !\U0|GP_13_13|P|I0_barI1|Output~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\,
	datac => \U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\,
	dataf => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~4_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~3_combout\);

-- Location: LABCELL_X62_Y1_N0
\U4|GEN_MUX:14:U|U3|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~8_combout\ = ( !\U4|GEN_MUX:14:U|U3|process_0~3_combout\ & ( (!\U4|GEN_MUX:14:U|U3|process_0~5_combout\ & (!\U4|GEN_MUX:14:U|U3|process_0~4_combout\ & !\U4|GEN_MUX:14:U|U3|process_0~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~5_combout\,
	datab => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~4_combout\,
	datac => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~7_combout\,
	datae => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~3_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~8_combout\);

-- Location: LABCELL_X62_Y1_N6
\U4|GEN_MUX:14:U|U3|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:14:U|U3|process_0~9_combout\ = ( \U4|GEN_MUX:14:U|U3|process_0~8_combout\ & ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (!\U4|GEN_MUX:14:U|U3|process_0~0_combout\ & (((\U4|GEN_MUX:15:U|U3|process_0~1_combout\ & 
-- !\U0|GP_14_14|P|Output_xor|process_0~0_combout\)))) # (\U4|GEN_MUX:14:U|U3|process_0~0_combout\ & (\U4|GEN_MUX:14:U|U3|process_0~2_combout\)) ) ) ) # ( !\U4|GEN_MUX:14:U|U3|process_0~8_combout\ & ( \U0|GP_10_10|P|Output_xor|process_0~0_combout\ ) ) # ( 
-- \U4|GEN_MUX:14:U|U3|process_0~8_combout\ & ( !\U0|GP_10_10|P|Output_xor|process_0~0_combout\ & ( (\U4|GEN_MUX:14:U|U3|process_0~2_combout\ & \U4|GEN_MUX:14:U|U3|process_0~0_combout\) ) ) ) # ( !\U4|GEN_MUX:14:U|U3|process_0~8_combout\ & ( 
-- !\U0|GP_10_10|P|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000001010000010111111111111111110011010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~2_combout\,
	datab => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~1_combout\,
	datac => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~8_combout\,
	dataf => \U0|GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:14:U|U3|process_0~9_combout\);

-- Location: LABCELL_X63_Y2_N54
\U4|GEN_MUX:15:U|U3|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~2_combout\ = ( \U0|GP_10_7|G_i_k|process_0~0_combout\ & ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (!\U0|GP_10_7|G_i_k|process_0~1_combout\ & ((!\U4|GEN_MUX:11:U|U3|process_0~2_combout\) # 
-- ((!\U0|sum_carry_6|Carry_out|process_0~0_combout\ & \U4|GEN_MUX:11:U|U3|process_0~0_combout\)))) ) ) ) # ( !\U0|GP_10_7|G_i_k|process_0~0_combout\ & ( !\U0|GP_10_7|G_i_k|process_0~2_combout\ & ( (!\U4|GEN_MUX:11:U|U3|process_0~2_combout\) # 
-- ((!\U0|sum_carry_6|Carry_out|process_0~0_combout\ & \U4|GEN_MUX:11:U|U3|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~2_combout\,
	datab => \U0|sum_carry_6|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_10_7|G_i_k|ALT_INV_process_0~1_combout\,
	datae => \U0|GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \U0|GP_10_7|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~2_combout\);

-- Location: IOIBUF_X54_Y0_N35
\I1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1(15),
	o => \I1[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\I0[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0(15),
	o => \I0[15]~input_o\);

-- Location: LABCELL_X60_Y1_N57
\U4|GEN_MUX:15:U|U3|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~3_combout\ = ( \I0[14]~input_o\ & ( (!\S0~input_o\ & (!\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (\I0[15]~input_o\)))) # (\S0~input_o\ & (\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (!\I0[15]~input_o\)))) ) ) # ( !\I0[14]~input_o\ 
-- & ( (!\S0~input_o\ & (\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (\I0[15]~input_o\)))) # (\S0~input_o\ & (!\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (!\I0[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010000010000101001000001010000010000101001000001000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[15]~input_o\,
	datac => \ALT_INV_I0[15]~input_o\,
	datad => \ALT_INV_I1[14]~input_o\,
	dataf => \ALT_INV_I0[14]~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~3_combout\);

-- Location: LABCELL_X60_Y1_N42
\U4|GEN_MUX:15:U|U3|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~8_combout\ = ( \U4|GEN_MUX:13:U|U3|process_0~5_combout\ & ( (!\S1~input_o\ & (\U0|GP_13_13|P|Output_xor|process_0~0_combout\ & \U4|GEN_MUX:15:U|U3|process_0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S1~input_o\,
	datac => \U0|GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~3_combout\,
	dataf => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~5_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~8_combout\);

-- Location: LABCELL_X60_Y1_N0
\U4|GEN_MUX:15:U|U3|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~5_combout\ = ( \I1[14]~input_o\ & ( (!\I0[14]~input_o\ & (!\S0~input_o\ & ((\I0[13]~input_o\) # (\I1[13]~input_o\)))) # (\I0[14]~input_o\ & (\S0~input_o\ & ((!\I1[13]~input_o\) # (\I0[13]~input_o\)))) ) ) # ( 
-- !\I1[14]~input_o\ & ( (!\I0[14]~input_o\ & (\S0~input_o\ & ((!\I1[13]~input_o\) # (\I0[13]~input_o\)))) # (\I0[14]~input_o\ & (!\S0~input_o\ & ((\I0[13]~input_o\) # (\I1[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110110000000001111011000001110000000010110111000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[13]~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	datac => \ALT_INV_I0[14]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[14]~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~5_combout\);

-- Location: LABCELL_X60_Y1_N6
\U4|GEN_MUX:15:U|U3|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~6_combout\ = ( \S0~input_o\ & ( !\S1~input_o\ & ( (!\I0[14]~input_o\ & (!\I1[15]~input_o\ $ (((\I0[15]~input_o\))))) # (\I0[14]~input_o\ & (\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (\I0[15]~input_o\)))) ) ) ) # ( !\S0~input_o\ 
-- & ( !\S1~input_o\ & ( (!\I0[14]~input_o\ & (!\I1[15]~input_o\ $ (((!\I0[15]~input_o\))))) # (\I0[14]~input_o\ & (!\I1[14]~input_o\ & (!\I1[15]~input_o\ $ (!\I0[15]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011001000100011000010001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[14]~input_o\,
	datab => \ALT_INV_I1[15]~input_o\,
	datac => \ALT_INV_I1[14]~input_o\,
	datad => \ALT_INV_I0[15]~input_o\,
	datae => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~6_combout\);

-- Location: LABCELL_X60_Y1_N18
\U4|GEN_MUX:15:U|U3|process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~9_combout\ = ( \I1[13]~input_o\ & ( (!\I1[14]~input_o\ & (\I0[14]~input_o\ & ((\I0[13]~input_o\) # (\S0~input_o\)))) # (\I1[14]~input_o\ & (!\S0~input_o\ & ((\I0[13]~input_o\) # (\I0[14]~input_o\)))) ) ) # ( !\I1[13]~input_o\ 
-- & ( (!\I1[14]~input_o\ & (\S0~input_o\ & ((\I0[13]~input_o\) # (\I0[14]~input_o\)))) # (\I1[14]~input_o\ & (\I0[14]~input_o\ & ((!\S0~input_o\) # (\I0[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000011101000101000001110100010100011101000001010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[14]~input_o\,
	datab => \ALT_INV_I1[14]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[13]~input_o\,
	dataf => \ALT_INV_I1[13]~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~9_combout\);

-- Location: LABCELL_X60_Y1_N54
\U4|GEN_MUX:15:U|U3|process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~10_combout\ = ( \S1~input_o\ & ( (!\I1[15]~input_o\ & ((!\S0~input_o\) # (\I0[15]~input_o\))) # (\I1[15]~input_o\ & ((!\I0[15]~input_o\))) ) ) # ( !\S1~input_o\ & ( (\U4|GEN_MUX:15:U|U3|process_0~9_combout\ & (!\S0~input_o\ $ 
-- (!\I1[15]~input_o\ $ (!\I0[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000110000010010000011010111011110011001011101111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[15]~input_o\,
	datac => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_I0[15]~input_o\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~10_combout\);

-- Location: MLABCELL_X65_Y2_N6
\U4|GEN_MUX:15:U|U3|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~7_combout\ = ( \I1[12]~input_o\ & ( (!\I0[11]~input_o\ & ((!\I1[11]~input_o\ & ((!\I0[12]~input_o\))) # (\I1[11]~input_o\ & (\S0~input_o\)))) # (\I0[11]~input_o\ & (((\S0~input_o\ & !\I0[12]~input_o\)))) ) ) # ( 
-- !\I1[12]~input_o\ & ( (!\I0[11]~input_o\ & ((!\I1[11]~input_o\ & (!\S0~input_o\)) # (\I1[11]~input_o\ & ((!\I0[12]~input_o\))))) # (\I0[11]~input_o\ & (((!\S0~input_o\ & !\I0[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001010000000111100101000000010001111000000101000111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[11]~input_o\,
	datab => \ALT_INV_I1[11]~input_o\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_I0[12]~input_o\,
	dataf => \ALT_INV_I1[12]~input_o\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~7_combout\);

-- Location: LABCELL_X60_Y1_N24
\U4|GEN_MUX:15:U|U3|process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~11_combout\ = ( !\U4|GEN_MUX:15:U|U3|process_0~10_combout\ & ( \U4|GEN_MUX:15:U|U3|process_0~7_combout\ & ( (!\U4|GEN_MUX:15:U|U3|process_0~8_combout\ & ((!\U4|GEN_MUX:15:U|U3|process_0~6_combout\) # 
-- ((\U0|GP_13_13|P|I0_barI1|Output~0_combout\ & \U4|GEN_MUX:15:U|U3|process_0~5_combout\)))) ) ) ) # ( !\U4|GEN_MUX:15:U|U3|process_0~10_combout\ & ( !\U4|GEN_MUX:15:U|U3|process_0~7_combout\ & ( (!\U4|GEN_MUX:15:U|U3|process_0~8_combout\ & 
-- ((!\U4|GEN_MUX:15:U|U3|process_0~6_combout\) # (\U4|GEN_MUX:15:U|U3|process_0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100000000000000000011001100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_13_13|P|I0_barI1|ALT_INV_Output~0_combout\,
	datab => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~8_combout\,
	datac => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~5_combout\,
	datad => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~6_combout\,
	datae => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~10_combout\,
	dataf => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~7_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~11_combout\);

-- Location: LABCELL_X60_Y1_N3
\U5|U1|Output~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~1_combout\ = ( \I1[14]~input_o\ & ( (!\S0~input_o\ & (((\I1[13]~input_o\ & \I0[13]~input_o\)) # (\I0[14]~input_o\))) # (\S0~input_o\ & (!\I1[13]~input_o\ & (\I0[13]~input_o\))) ) ) # ( !\I1[14]~input_o\ & ( (!\S0~input_o\ & (\I1[13]~input_o\ 
-- & (\I0[13]~input_o\))) # (\S0~input_o\ & (((!\I1[13]~input_o\ & \I0[13]~input_o\)) # (\I0[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100101111000100010010111100011111001000100001111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[13]~input_o\,
	datab => \ALT_INV_I0[13]~input_o\,
	datac => \ALT_INV_I0[14]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I1[14]~input_o\,
	combout => \U5|U1|Output~1_combout\);

-- Location: LABCELL_X60_Y1_N36
\U4|GEN_MUX:15:U|U3|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~4_combout\ = ( \U4|GEN_MUX:15:U|U3|process_0~0_combout\ & ( (!\U5|U1|Output~1_combout\ & (!\S0~input_o\ $ (!\I1[15]~input_o\ $ (\I0[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001000000000110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datab => \ALT_INV_I1[15]~input_o\,
	datac => \ALT_INV_I0[15]~input_o\,
	datad => \U5|U1|ALT_INV_Output~1_combout\,
	dataf => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~0_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~4_combout\);

-- Location: LABCELL_X62_Y1_N42
\U4|GEN_MUX:15:U|U3|process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|GEN_MUX:15:U|U3|process_0~12_combout\ = ( \U4|GEN_MUX:15:U|U3|process_0~4_combout\ & ( ((!\U4|GEN_MUX:15:U|U3|process_0~11_combout\) # ((\U4|GEN_MUX:15:U|U3|process_0~3_combout\ & \U4|GEN_MUX:15:U|U3|process_0~1_combout\))) # 
-- (\U4|GEN_MUX:15:U|U3|process_0~2_combout\) ) ) # ( !\U4|GEN_MUX:15:U|U3|process_0~4_combout\ & ( (!\U4|GEN_MUX:15:U|U3|process_0~11_combout\) # ((!\U4|GEN_MUX:15:U|U3|process_0~2_combout\ & (\U4|GEN_MUX:15:U|U3|process_0~3_combout\ & 
-- \U4|GEN_MUX:15:U|U3|process_0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100001111001011110101111101111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~2_combout\,
	datab => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~3_combout\,
	datac => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~11_combout\,
	datad => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~1_combout\,
	dataf => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~4_combout\,
	combout => \U4|GEN_MUX:15:U|U3|process_0~12_combout\);

-- Location: LABCELL_X60_Y1_N45
\U5|U1|Output~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~2_combout\ = ( \I0[15]~input_o\ & ( !\S0~input_o\ $ (!\I1[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S0~input_o\,
	datac => \ALT_INV_I1[15]~input_o\,
	dataf => \ALT_INV_I0[15]~input_o\,
	combout => \U5|U1|Output~2_combout\);

-- Location: LABCELL_X60_Y1_N21
\U5|U1|Output~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~4_combout\ = ( \I0[15]~input_o\ & ( (!\I0[14]~input_o\ & ((!\I1[14]~input_o\ & (!\I1[15]~input_o\ & !\S0~input_o\)) # (\I1[14]~input_o\ & (\I1[15]~input_o\ & \S0~input_o\)))) ) ) # ( !\I0[15]~input_o\ & ( (!\I1[15]~input_o\ & 
-- ((!\S0~input_o\) # ((!\I0[14]~input_o\ & \I1[14]~input_o\)))) # (\I1[15]~input_o\ & (((!\I0[14]~input_o\ & !\I1[14]~input_o\)) # (\S0~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000101111111110000010111110000000000000101000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I0[14]~input_o\,
	datab => \ALT_INV_I1[14]~input_o\,
	datac => \ALT_INV_I1[15]~input_o\,
	datad => \ALT_INV_S0~input_o\,
	dataf => \ALT_INV_I0[15]~input_o\,
	combout => \U5|U1|Output~4_combout\);

-- Location: LABCELL_X61_Y1_N12
\U5|U1|Output~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~5_combout\ = ( \U5|U1|Output~1_combout\ & ( (!\S1~input_o\ & !\U5|U1|Output~4_combout\) ) ) # ( !\U5|U1|Output~1_combout\ & ( (!\S1~input_o\ & (!\U5|U1|Output~4_combout\ & ((\U5|U1|Output~0_combout\) # (\U5|U1|Output~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000010000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|U1|ALT_INV_Output~2_combout\,
	datab => \ALT_INV_S1~input_o\,
	datac => \U5|U1|ALT_INV_Output~4_combout\,
	datad => \U5|U1|ALT_INV_Output~0_combout\,
	dataf => \U5|U1|ALT_INV_Output~1_combout\,
	combout => \U5|U1|Output~5_combout\);

-- Location: LABCELL_X61_Y1_N15
\U0|GP_12_12|P|I0_barI1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|GP_12_12|P|I0_barI1|Output~0_combout\ = ( \S0~input_o\ & ( (\I0[12]~input_o\ & !\I1[12]~input_o\) ) ) # ( !\S0~input_o\ & ( (\I0[12]~input_o\ & \I1[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_I0[12]~input_o\,
	datad => \ALT_INV_I1[12]~input_o\,
	dataf => \ALT_INV_S0~input_o\,
	combout => \U0|GP_12_12|P|I0_barI1|Output~0_combout\);

-- Location: LABCELL_X61_Y1_N48
\U5|U1|Output~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~3_combout\ = ( \U0|GP_11_8|G_i_k|process_0~2_combout\ & ( !\U0|GP_11_8|G_i_k|process_0~1_combout\ & ( (!\U0|GP_11_8|G_i_k|process_0~0_combout\ & (!\U5|U1|Output~1_combout\ & (!\U5|U1|Output~2_combout\ & 
-- !\U0|GP_12_12|P|I0_barI1|Output~0_combout\))) ) ) ) # ( !\U0|GP_11_8|G_i_k|process_0~2_combout\ & ( !\U0|GP_11_8|G_i_k|process_0~1_combout\ & ( (!\U5|U1|Output~1_combout\ & (!\U5|U1|Output~2_combout\ & !\U0|GP_12_12|P|I0_barI1|Output~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|GP_11_8|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \U5|U1|ALT_INV_Output~1_combout\,
	datac => \U5|U1|ALT_INV_Output~2_combout\,
	datad => \U0|GP_12_12|P|I0_barI1|ALT_INV_Output~0_combout\,
	datae => \U0|GP_11_8|G_i_k|ALT_INV_process_0~2_combout\,
	dataf => \U0|GP_11_8|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \U5|U1|Output~3_combout\);

-- Location: LABCELL_X61_Y1_N54
\U5|U1|Output~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|U1|Output~6_combout\ = ( \U0|sum_carry_7|temp_1|Output~0_combout\ & ( \U0|GP_7_4|G_i_k|process_0~3_combout\ & ( (!\U5|U1|Output~5_combout\) # ((!\U4|GEN_MUX:12:U|U3|process_0~2_combout\ & \U5|U1|Output~3_combout\)) ) ) ) # ( 
-- !\U0|sum_carry_7|temp_1|Output~0_combout\ & ( \U0|GP_7_4|G_i_k|process_0~3_combout\ & ( (!\U5|U1|Output~5_combout\) # ((\U5|U1|Output~3_combout\ & ((!\U4|GEN_MUX:12:U|U3|process_0~2_combout\) # (!\U0|GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\)))) ) ) ) # ( 
-- \U0|sum_carry_7|temp_1|Output~0_combout\ & ( !\U0|GP_7_4|G_i_k|process_0~3_combout\ & ( (!\U5|U1|Output~5_combout\) # ((!\U4|GEN_MUX:12:U|U3|process_0~2_combout\ & \U5|U1|Output~3_combout\)) ) ) ) # ( !\U0|sum_carry_7|temp_1|Output~0_combout\ & ( 
-- !\U0|GP_7_4|G_i_k|process_0~3_combout\ & ( (!\U5|U1|Output~5_combout\) # ((!\U4|GEN_MUX:12:U|U3|process_0~2_combout\ & \U5|U1|Output~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111111101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~2_combout\,
	datab => \U5|U1|ALT_INV_Output~5_combout\,
	datac => \U0|GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datad => \U5|U1|ALT_INV_Output~3_combout\,
	datae => \U0|sum_carry_7|temp_1|ALT_INV_Output~0_combout\,
	dataf => \U0|GP_7_4|G_i_k|ALT_INV_process_0~3_combout\,
	combout => \U5|U1|Output~6_combout\);

-- Location: LABCELL_X61_Y2_N24
\U6|U2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U2|process_0~0_combout\ = ( \U4|GEN_MUX:2:U|U3|process_0~0_combout\ & ( !\U4|GEN_MUX:1:U|U3|process_0~0_combout\ & ( (!\U4|GEN_MUX:0:U|U3|process_0~0_combout\ & ((!\U0|sum_carry_5|Carry_out|process_0~0_combout\ $ 
-- (\U0|GP_2_2|P|Output_xor|process_0~0_combout\)) # (\S1~input_o\))) ) ) ) # ( !\U4|GEN_MUX:2:U|U3|process_0~0_combout\ & ( !\U4|GEN_MUX:1:U|U3|process_0~0_combout\ & ( (!\S1~input_o\ & (!\U4|GEN_MUX:0:U|U3|process_0~0_combout\ & 
-- (!\U0|sum_carry_5|Carry_out|process_0~0_combout\ $ (\U0|GP_2_2|P|Output_xor|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000110100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1~input_o\,
	datab => \U0|sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:0:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \U4|GEN_MUX:2:U|U3|ALT_INV_process_0~0_combout\,
	dataf => \U4|GEN_MUX:1:U|U3|ALT_INV_process_0~0_combout\,
	combout => \U6|U2|process_0~0_combout\);

-- Location: LABCELL_X62_Y2_N12
\U6|U2|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U2|process_0~1_combout\ = ( \U4|GEN_MUX:4:U|U3|process_0~0_combout\ & ( \S1~input_o\ & ( (\U6|U2|process_0~0_combout\ & \U4|GEN_MUX:3:U|U3|process_0~0_combout\) ) ) ) # ( \U4|GEN_MUX:4:U|U3|process_0~0_combout\ & ( !\S1~input_o\ & ( 
-- (!\U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\ & (\U6|U2|process_0~0_combout\ & !\U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\)) ) ) ) # ( !\U4|GEN_MUX:4:U|U3|process_0~0_combout\ & ( !\S1~input_o\ & ( 
-- (!\U0|sum_carry_3|Sum|Output_xor|process_0~0_combout\ & (\U6|U2|process_0~0_combout\ & !\U0|sum_carry_4|Sum|Output_xor|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U0|sum_carry_3|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \U6|U2|ALT_INV_process_0~0_combout\,
	datac => \U4|GEN_MUX:3:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U0|sum_carry_4|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \U4|GEN_MUX:4:U|U3|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_S1~input_o\,
	combout => \U6|U2|process_0~1_combout\);

-- Location: LABCELL_X62_Y2_N48
\U6|U2|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U2|process_0~2_combout\ = ( !\U4|GEN_MUX:8:U|U3|process_0~1_combout\ & ( !\U4|GEN_MUX:9:U|U3|process_0~3_combout\ & ( (!\U4|GEN_MUX:6:U|U3|process_0~0_combout\ & (\U6|U2|process_0~1_combout\ & (!\U4|GEN_MUX:7:U|U3|process_0~0_combout\ & 
-- !\U4|GEN_MUX:5:U|U3|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:6:U|U3|ALT_INV_process_0~0_combout\,
	datab => \U6|U2|ALT_INV_process_0~1_combout\,
	datac => \U4|GEN_MUX:7:U|U3|ALT_INV_process_0~0_combout\,
	datad => \U4|GEN_MUX:5:U|U3|ALT_INV_process_0~0_combout\,
	datae => \U4|GEN_MUX:8:U|U3|ALT_INV_process_0~1_combout\,
	dataf => \U4|GEN_MUX:9:U|U3|ALT_INV_process_0~3_combout\,
	combout => \U6|U2|process_0~2_combout\);

-- Location: MLABCELL_X65_Y2_N24
\U6|U2|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U2|process_0~3_combout\ = ( !\U4|GEN_MUX:11:U|U3|process_0~6_combout\ & ( \I0[10]~input_o\ & ( !\I1[10]~input_o\ $ (((!\U4|GEN_MUX:14:U|U3|process_0~0_combout\ $ (!\S0~input_o\)) # (\S1~input_o\))) ) ) ) # ( !\U4|GEN_MUX:11:U|U3|process_0~6_combout\ & 
-- ( !\I0[10]~input_o\ & ( (!\S1~input_o\ & (!\I1[10]~input_o\ $ (!\U4|GEN_MUX:14:U|U3|process_0~0_combout\ $ (\S0~input_o\)))) # (\S1~input_o\ & (!\I1[10]~input_o\ & ((\S0~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100001010000000000000000010010110010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I1[10]~input_o\,
	datab => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_S0~input_o\,
	datad => \ALT_INV_S1~input_o\,
	datae => \U4|GEN_MUX:11:U|U3|ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_I0[10]~input_o\,
	combout => \U6|U2|process_0~3_combout\);

-- Location: LABCELL_X62_Y2_N54
\U6|U2|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|U2|process_0~4_combout\ = ( !\U4|GEN_MUX:12:U|U3|process_0~4_combout\ & ( \U6|U2|process_0~3_combout\ & ( (!\U4|GEN_MUX:15:U|U3|process_0~12_combout\ & (!\U4|GEN_MUX:13:U|U3|process_0~8_combout\ & (\U6|U2|process_0~2_combout\ & 
-- !\U4|GEN_MUX:14:U|U3|process_0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|GEN_MUX:15:U|U3|ALT_INV_process_0~12_combout\,
	datab => \U4|GEN_MUX:13:U|U3|ALT_INV_process_0~8_combout\,
	datac => \U6|U2|ALT_INV_process_0~2_combout\,
	datad => \U4|GEN_MUX:14:U|U3|ALT_INV_process_0~9_combout\,
	datae => \U4|GEN_MUX:12:U|U3|ALT_INV_process_0~4_combout\,
	dataf => \U6|U2|ALT_INV_process_0~3_combout\,
	combout => \U6|U2|process_0~4_combout\);

-- Location: LABCELL_X83_Y57_N0
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


