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

-- DATE "12/03/2020 18:16:02"

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

ENTITY 	KoggeStoneFastAdder IS
    PORT (
	Input0 : IN std_logic_vector(15 DOWNTO 0);
	Input2 : IN std_logic_vector(15 DOWNTO 0);
	Sum : BUFFER std_logic_vector(15 DOWNTO 0);
	Carry_in : IN std_logic;
	Carry_Output : BUFFER std_logic
	);
END KoggeStoneFastAdder;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[7]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[10]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry_Output	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry_in	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[3]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[6]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[8]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[11]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[13]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input0[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KoggeStoneFastAdder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Input0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Input2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Carry_in : std_logic;
SIGNAL ww_Carry_Output : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Input2[0]~input_o\ : std_logic;
SIGNAL \Input0[0]~input_o\ : std_logic;
SIGNAL \sum_carry_0|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \Input2[1]~input_o\ : std_logic;
SIGNAL \Carry_in~input_o\ : std_logic;
SIGNAL \Input0[1]~input_o\ : std_logic;
SIGNAL \sum_carry_1|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \Input0[2]~input_o\ : std_logic;
SIGNAL \Input2[2]~input_o\ : std_logic;
SIGNAL \GP_2_2|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_5|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_2|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_4_1|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \Input2[3]~input_o\ : std_logic;
SIGNAL \Input0[3]~input_o\ : std_logic;
SIGNAL \GP_3_3|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_1|temp_1|Output~0_combout\ : std_logic;
SIGNAL \GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ : std_logic;
SIGNAL \sum_carry_3|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \Input2[4]~input_o\ : std_logic;
SIGNAL \Input0[4]~input_o\ : std_logic;
SIGNAL \GP_4_4|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_4|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \Input2[5]~input_o\ : std_logic;
SIGNAL \Input0[5]~input_o\ : std_logic;
SIGNAL \GP_5_5|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_4_1|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_4|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_5|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_5_2|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \Input0[6]~input_o\ : std_logic;
SIGNAL \Input2[6]~input_o\ : std_logic;
SIGNAL \GP_6_6|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_6|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_6_3|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \GP_6_3|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \Input0[7]~input_o\ : std_logic;
SIGNAL \Input2[7]~input_o\ : std_logic;
SIGNAL \sum_carry_7|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_7|temp_1|Output~0_combout\ : std_logic;
SIGNAL \Input0[8]~input_o\ : std_logic;
SIGNAL \Input2[8]~input_o\ : std_logic;
SIGNAL \GP_8_8|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_8|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \GP_8_5|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \GP_8_5|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \Input0[9]~input_o\ : std_logic;
SIGNAL \Input2[9]~input_o\ : std_logic;
SIGNAL \GP_9_9|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|process_0~5_combout\ : std_logic;
SIGNAL \Input0[10]~input_o\ : std_logic;
SIGNAL \Input2[10]~input_o\ : std_logic;
SIGNAL \GP_10_10|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_10|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_10|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_10|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \Input2[11]~input_o\ : std_logic;
SIGNAL \Input0[11]~input_o\ : std_logic;
SIGNAL \GP_11_11|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \GP_10_10|P|I0I1_bar|Output~0_combout\ : std_logic;
SIGNAL \GP_9_9|P|I0I1_bar|Output~0_combout\ : std_logic;
SIGNAL \GP_10_7|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \GP_11_8|G_i_k|process_0~0_combout\ : std_logic;
SIGNAL \GP_11_8|G_i_k|process_0~1_combout\ : std_logic;
SIGNAL \Input2[12]~input_o\ : std_logic;
SIGNAL \Input0[12]~input_o\ : std_logic;
SIGNAL \GP_12_12|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \Input0[13]~input_o\ : std_logic;
SIGNAL \Input2[13]~input_o\ : std_logic;
SIGNAL \GP_13_13|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \Input2[14]~input_o\ : std_logic;
SIGNAL \Input0[14]~input_o\ : std_logic;
SIGNAL \GP_14_14|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_5|Carry_out|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \Input0[15]~input_o\ : std_logic;
SIGNAL \Input2[15]~input_o\ : std_logic;
SIGNAL \GP_15_15|P|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|process_0~2_combout\ : std_logic;
SIGNAL \GP_14_14|P|I0I1_bar|Output~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~1_combout\ : std_logic;
SIGNAL \GP_13_13|P|I0I1_bar|Output~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|process_0~5_combout\ : std_logic;
SIGNAL Input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_13_13|P|I0I1_bar|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL ALT_INV_Input1 : std_logic_vector(11 DOWNTO 11);
SIGNAL \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_11_8|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_11_8|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_10_7|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_10_10|P|I0I1_bar|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \GP_9_9|P|I0I1_bar|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_10|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_10|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_8_5|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_8_5|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \sum_carry_7|temp_1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_6_3|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_6_3|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_5_2|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_6_6|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_4_1|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_5_5|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \GP_3_0|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_4_1|G_i_k|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \sum_carry_1|temp_1|ALT_INV_Output~0_combout\ : std_logic;
SIGNAL \sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Input0[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input0[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Input2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Carry_in~input_o\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \sum_carry_15|Carry_out|ALT_INV_process_0~3_combout\ : std_logic;

BEGIN

ww_Input0 <= Input0;
ww_Input2 <= Input2;
Sum <= ww_Sum;
ww_Carry_in <= Carry_in;
Carry_Output <= ww_Carry_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\sum_carry_15|Carry_out|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_15|Carry_out|process_0~2_combout\;
\sum_carry_15|Carry_out|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_15|Carry_out|process_0~1_combout\;
\GP_13_13|P|I0I1_bar|ALT_INV_Output~0_combout\ <= NOT \GP_13_13|P|I0I1_bar|Output~0_combout\;
\sum_carry_15|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_15|Sum|Output_xor|process_0~2_combout\;
\sum_carry_15|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_15|Sum|Output_xor|process_0~1_combout\;
\sum_carry_15|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_15|Carry_out|process_0~0_combout\;
\GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_15_15|P|Output_xor|process_0~0_combout\;
\GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\ <= NOT \GP_14_14|P|I0I1_bar|Output~0_combout\;
\sum_carry_15|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_15|Sum|Output_xor|process_0~0_combout\;
\sum_carry_14|Sum|Output_xor|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_14|Sum|Output_xor|process_0~3_combout\;
\sum_carry_14|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_14|Sum|Output_xor|process_0~2_combout\;
ALT_INV_Input1(11) <= NOT Input1(11);
\sum_carry_14|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_14|Sum|Output_xor|process_0~1_combout\;
\sum_carry_14|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_14|Sum|Output_xor|process_0~0_combout\;
\GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_14_14|P|Output_xor|process_0~0_combout\;
\sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_5|Carry_out|process_0~1_combout\;
\sum_carry_13|Sum|Output_xor|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_13|Sum|Output_xor|process_0~3_combout\;
\sum_carry_13|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_13|Sum|Output_xor|process_0~2_combout\;
\sum_carry_13|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_13|Sum|Output_xor|process_0~1_combout\;
\sum_carry_13|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_13|Sum|Output_xor|process_0~0_combout\;
\GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_13_13|P|Output_xor|process_0~0_combout\;
\GP_11_8|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_11_8|G_i_k|process_0~1_combout\;
\GP_11_8|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_11_8|G_i_k|process_0~0_combout\;
\sum_carry_12|Sum|Output_xor|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_12|Sum|Output_xor|process_0~3_combout\;
\sum_carry_12|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_12|Sum|Output_xor|process_0~2_combout\;
\GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_12_12|P|Output_xor|process_0~0_combout\;
\sum_carry_12|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_12|Sum|Output_xor|process_0~1_combout\;
\sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_12|Sum|Output_xor|process_0~0_combout\;
\GP_10_7|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_10_7|G_i_k|process_0~0_combout\;
\GP_10_10|P|I0I1_bar|ALT_INV_Output~0_combout\ <= NOT \GP_10_10|P|I0I1_bar|Output~0_combout\;
\GP_9_9|P|I0I1_bar|ALT_INV_Output~0_combout\ <= NOT \GP_9_9|P|I0I1_bar|Output~0_combout\;
\sum_carry_11|Sum|Output_xor|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_11|Sum|Output_xor|process_0~3_combout\;
\GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_11_11|P|Output_xor|process_0~0_combout\;
\sum_carry_11|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_11|Sum|Output_xor|process_0~2_combout\;
\GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_10_10|P|Output_xor|process_0~0_combout\;
\GP_9_6|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \GP_9_6|G_i_k|process_0~2_combout\;
\GP_9_6|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_9_6|G_i_k|process_0~1_combout\;
\sum_carry_10|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_10|Sum|Output_xor|process_0~1_combout\;
\sum_carry_10|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_10|Sum|Output_xor|process_0~0_combout\;
\GP_9_6|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_9_6|G_i_k|process_0~0_combout\;
\sum_carry_9|Sum|Output_xor|ALT_INV_process_0~4_combout\ <= NOT \sum_carry_9|Sum|Output_xor|process_0~4_combout\;
\sum_carry_9|Sum|Output_xor|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_9|Sum|Output_xor|process_0~3_combout\;
\GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_9_9|P|Output_xor|process_0~0_combout\;
\GP_8_5|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_8_5|G_i_k|process_0~1_combout\;
\GP_8_5|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_8_5|G_i_k|process_0~0_combout\;
\sum_carry_9|Sum|Output_xor|ALT_INV_process_0~2_combout\ <= NOT \sum_carry_9|Sum|Output_xor|process_0~2_combout\;
\GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_8_8|P|Output_xor|process_0~0_combout\;
\GP_7_4|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \GP_7_4|G_i_k|process_0~2_combout\;
\GP_7_4|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_7_4|G_i_k|process_0~1_combout\;
\sum_carry_7|temp_1|ALT_INV_Output~0_combout\ <= NOT \sum_carry_7|temp_1|Output~0_combout\;
\GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ <= NOT \GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\;
\GP_7_4|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_7_4|G_i_k|process_0~0_combout\;
\sum_carry_11|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_11|Sum|Output_xor|process_0~1_combout\;
\GP_6_3|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_6_3|G_i_k|process_0~1_combout\;
\GP_6_3|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_6_3|G_i_k|process_0~0_combout\;
\sum_carry_9|Sum|Output_xor|ALT_INV_process_0~1_combout\ <= NOT \sum_carry_9|Sum|Output_xor|process_0~1_combout\;
\GP_5_2|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_5_2|G_i_k|process_0~0_combout\;
\sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_11|Sum|Output_xor|process_0~0_combout\;
\GP_6_6|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_6_6|P|Output_xor|process_0~0_combout\;
\GP_3_0|G_i_k|ALT_INV_process_0~2_combout\ <= NOT \GP_3_0|G_i_k|process_0~2_combout\;
\sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_4|Carry_out|process_0~0_combout\;
\sum_carry_9|Sum|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_9|Sum|Output_xor|process_0~0_combout\;
\GP_4_1|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_4_1|G_i_k|process_0~1_combout\;
\GP_5_5|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_5_5|P|Output_xor|process_0~0_combout\;
\GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_4_4|P|Output_xor|process_0~0_combout\;
\GP_3_0|G_i_k|ALT_INV_process_0~1_combout\ <= NOT \GP_3_0|G_i_k|process_0~1_combout\;
\GP_3_0|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_3_0|G_i_k|process_0~0_combout\;
\GP_4_1|G_i_k|ALT_INV_process_0~0_combout\ <= NOT \GP_4_1|G_i_k|process_0~0_combout\;
\GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_3_3|P|Output_xor|process_0~0_combout\;
\GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\ <= NOT \GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\;
\sum_carry_1|temp_1|ALT_INV_Output~0_combout\ <= NOT \sum_carry_1|temp_1|Output~0_combout\;
\sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\ <= NOT \sum_carry_5|Carry_out|process_0~0_combout\;
\GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\ <= NOT \GP_2_2|P|Output_xor|process_0~0_combout\;
\sum_carry_15|Sum|Output_xor|ALT_INV_process_0~4_combout\ <= NOT \sum_carry_15|Sum|Output_xor|process_0~4_combout\;
\ALT_INV_Input0[15]~input_o\ <= NOT \Input0[15]~input_o\;
\ALT_INV_Input2[15]~input_o\ <= NOT \Input2[15]~input_o\;
\ALT_INV_Input0[14]~input_o\ <= NOT \Input0[14]~input_o\;
\ALT_INV_Input2[14]~input_o\ <= NOT \Input2[14]~input_o\;
\ALT_INV_Input0[13]~input_o\ <= NOT \Input0[13]~input_o\;
\ALT_INV_Input2[13]~input_o\ <= NOT \Input2[13]~input_o\;
\ALT_INV_Input0[12]~input_o\ <= NOT \Input0[12]~input_o\;
\ALT_INV_Input2[12]~input_o\ <= NOT \Input2[12]~input_o\;
\ALT_INV_Input0[11]~input_o\ <= NOT \Input0[11]~input_o\;
\ALT_INV_Input2[11]~input_o\ <= NOT \Input2[11]~input_o\;
\ALT_INV_Input0[10]~input_o\ <= NOT \Input0[10]~input_o\;
\ALT_INV_Input2[10]~input_o\ <= NOT \Input2[10]~input_o\;
\ALT_INV_Input0[9]~input_o\ <= NOT \Input0[9]~input_o\;
\ALT_INV_Input2[9]~input_o\ <= NOT \Input2[9]~input_o\;
\ALT_INV_Input0[8]~input_o\ <= NOT \Input0[8]~input_o\;
\ALT_INV_Input2[8]~input_o\ <= NOT \Input2[8]~input_o\;
\ALT_INV_Input0[7]~input_o\ <= NOT \Input0[7]~input_o\;
\ALT_INV_Input2[7]~input_o\ <= NOT \Input2[7]~input_o\;
\ALT_INV_Input0[6]~input_o\ <= NOT \Input0[6]~input_o\;
\ALT_INV_Input2[6]~input_o\ <= NOT \Input2[6]~input_o\;
\ALT_INV_Input0[5]~input_o\ <= NOT \Input0[5]~input_o\;
\ALT_INV_Input2[5]~input_o\ <= NOT \Input2[5]~input_o\;
\ALT_INV_Input0[4]~input_o\ <= NOT \Input0[4]~input_o\;
\ALT_INV_Input2[4]~input_o\ <= NOT \Input2[4]~input_o\;
\ALT_INV_Input0[3]~input_o\ <= NOT \Input0[3]~input_o\;
\ALT_INV_Input2[3]~input_o\ <= NOT \Input2[3]~input_o\;
\ALT_INV_Input0[2]~input_o\ <= NOT \Input0[2]~input_o\;
\ALT_INV_Input2[2]~input_o\ <= NOT \Input2[2]~input_o\;
\ALT_INV_Input0[1]~input_o\ <= NOT \Input0[1]~input_o\;
\ALT_INV_Input2[1]~input_o\ <= NOT \Input2[1]~input_o\;
\ALT_INV_Input0[0]~input_o\ <= NOT \Input0[0]~input_o\;
\ALT_INV_Input2[0]~input_o\ <= NOT \Input2[0]~input_o\;
\ALT_INV_Carry_in~input_o\ <= NOT \Carry_in~input_o\;
\sum_carry_15|Carry_out|ALT_INV_process_0~5_combout\ <= NOT \sum_carry_15|Carry_out|process_0~5_combout\;
\sum_carry_15|Carry_out|ALT_INV_process_0~4_combout\ <= NOT \sum_carry_15|Carry_out|process_0~4_combout\;
\sum_carry_15|Carry_out|ALT_INV_process_0~3_combout\ <= NOT \sum_carry_15|Carry_out|process_0~3_combout\;

-- Location: IOOBUF_X70_Y0_N36
\Sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_0|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(0));

-- Location: IOOBUF_X68_Y0_N36
\Sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_1|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(1));

-- Location: IOOBUF_X66_Y0_N59
\Sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_2|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(2));

-- Location: IOOBUF_X58_Y0_N93
\Sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_3|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(3));

-- Location: IOOBUF_X72_Y0_N36
\Sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_4|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(4));

-- Location: IOOBUF_X60_Y0_N19
\Sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_5|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(5));

-- Location: IOOBUF_X66_Y0_N76
\Sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_6|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(6));

-- Location: IOOBUF_X58_Y0_N59
\Sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_7|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(7));

-- Location: IOOBUF_X50_Y0_N59
\Sum[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_8|Sum|Output_xor|process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum(8));

-- Location: IOOBUF_X60_Y0_N53
\Sum[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_9|Sum|Output_xor|process_0~5_combout\,
	devoe => ww_devoe,
	o => ww_Sum(9));

-- Location: IOOBUF_X68_Y0_N19
\Sum[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_10|Sum|Output_xor|process_0~2_combout\,
	devoe => ww_devoe,
	o => ww_Sum(10));

-- Location: IOOBUF_X50_Y0_N76
\Sum[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_11|Sum|Output_xor|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_Sum(11));

-- Location: IOOBUF_X40_Y0_N36
\Sum[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_12|Sum|Output_xor|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_Sum(12));

-- Location: IOOBUF_X56_Y0_N36
\Sum[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_13|Sum|Output_xor|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_Sum(13));

-- Location: IOOBUF_X58_Y0_N42
\Sum[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_14|Sum|Output_xor|process_0~4_combout\,
	devoe => ww_devoe,
	o => ww_Sum(14));

-- Location: IOOBUF_X54_Y0_N36
\Sum[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_15|Sum|Output_xor|process_0~3_combout\,
	devoe => ww_devoe,
	o => ww_Sum(15));

-- Location: IOOBUF_X52_Y0_N2
\Carry_Output~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sum_carry_15|Carry_out|ALT_INV_process_0~5_combout\,
	devoe => ww_devoe,
	o => ww_Carry_Output);

-- Location: IOIBUF_X72_Y0_N1
\Input2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(0),
	o => \Input2[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\Input0[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(0),
	o => \Input0[0]~input_o\);

-- Location: LABCELL_X64_Y2_N0
\sum_carry_0|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_0|Sum|Output_xor|process_0~0_combout\ = ( \Input0[0]~input_o\ & ( !\Input2[0]~input_o\ ) ) # ( !\Input0[0]~input_o\ & ( \Input2[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input2[0]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \sum_carry_0|Sum|Output_xor|process_0~0_combout\);

-- Location: IOIBUF_X70_Y0_N1
\Input2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(1),
	o => \Input2[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\Carry_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Carry_in,
	o => \Carry_in~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\Input0[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(1),
	o => \Input0[1]~input_o\);

-- Location: LABCELL_X64_Y2_N3
\sum_carry_1|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_1|Sum|Output_xor|process_0~0_combout\ = ( \Input0[0]~input_o\ & ( !\Input2[1]~input_o\ $ (!\Input0[1]~input_o\ $ (((\Input2[0]~input_o\ & !\Carry_in~input_o\)))) ) ) # ( !\Input0[0]~input_o\ & ( !\Input2[1]~input_o\ $ (!\Input0[1]~input_o\ $ 
-- (((\Input2[0]~input_o\ & \Carry_in~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001010101101010100101100101100110100110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[1]~input_o\,
	datab => \ALT_INV_Input2[0]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[1]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \sum_carry_1|Sum|Output_xor|process_0~0_combout\);

-- Location: IOIBUF_X70_Y0_N18
\Input0[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(2),
	o => \Input0[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\Input2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(2),
	o => \Input2[2]~input_o\);

-- Location: LABCELL_X64_Y2_N36
\GP_2_2|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_2_2|P|Output_xor|process_0~0_combout\ = ( \Input2[2]~input_o\ & ( !\Input0[2]~input_o\ $ (\Carry_in~input_o\) ) ) # ( !\Input2[2]~input_o\ & ( !\Input0[2]~input_o\ $ (!\Carry_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Input0[2]~input_o\,
	datad => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input2[2]~input_o\,
	combout => \GP_2_2|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N12
\sum_carry_5|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_5|Carry_out|process_0~0_combout\ = ( \Input0[0]~input_o\ & ( (!\Input2[1]~input_o\ & (((\Input2[0]~input_o\ & \Input0[1]~input_o\)) # (\Carry_in~input_o\))) # (\Input2[1]~input_o\ & (((\Input2[0]~input_o\ & !\Carry_in~input_o\)) # 
-- (\Input0[1]~input_o\))) ) ) # ( !\Input0[0]~input_o\ & ( (!\Input2[1]~input_o\ & (\Carry_in~input_o\ & ((!\Input2[0]~input_o\) # (\Input0[1]~input_o\)))) # (\Input2[1]~input_o\ & (\Input0[1]~input_o\ & ((!\Input2[0]~input_o\) # (!\Carry_in~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011110000010000101111000011010011111110001101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[1]~input_o\,
	datab => \ALT_INV_Input2[0]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[1]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \sum_carry_5|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N3
\sum_carry_2|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_2|Sum|Output_xor|process_0~0_combout\ = ( \sum_carry_5|Carry_out|process_0~0_combout\ & ( !\GP_2_2|P|Output_xor|process_0~0_combout\ ) ) # ( !\sum_carry_5|Carry_out|process_0~0_combout\ & ( \GP_2_2|P|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_2|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N33
\GP_4_1|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_4_1|G_i_k|process_0~0_combout\ = ( \Input2[2]~input_o\ & ( (!\Input0[1]~input_o\ & (!\Carry_in~input_o\ & (\Input0[2]~input_o\))) # (\Input0[1]~input_o\ & ((!\Input2[1]~input_o\ & ((\Input0[2]~input_o\))) # (\Input2[1]~input_o\ & 
-- (!\Carry_in~input_o\)))) ) ) # ( !\Input2[2]~input_o\ & ( (!\Input0[1]~input_o\ & (\Carry_in~input_o\ & (\Input0[2]~input_o\))) # (\Input0[1]~input_o\ & ((!\Input2[1]~input_o\ & (\Carry_in~input_o\)) # (\Input2[1]~input_o\ & ((\Input0[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000111000100110000011100001101010011000000110101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[1]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[2]~input_o\,
	datad => \ALT_INV_Input2[1]~input_o\,
	dataf => \ALT_INV_Input2[2]~input_o\,
	combout => \GP_4_1|G_i_k|process_0~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\Input2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(3),
	o => \Input2[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\Input0[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(3),
	o => \Input0[3]~input_o\);

-- Location: LABCELL_X64_Y2_N27
\GP_3_3|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_3_3|P|Output_xor|process_0~0_combout\ = !\Input2[3]~input_o\ $ (!\Input0[3]~input_o\ $ (\Carry_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[3]~input_o\,
	datab => \ALT_INV_Input0[3]~input_o\,
	datad => \ALT_INV_Carry_in~input_o\,
	combout => \GP_3_3|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N15
\sum_carry_1|temp_1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_1|temp_1|Output~0_combout\ = ( \Input0[0]~input_o\ & ( (\Input2[0]~input_o\ & (\Carry_in~input_o\ & (!\Input2[1]~input_o\ $ (\Input0[1]~input_o\)))) ) ) # ( !\Input0[0]~input_o\ & ( (!\Input2[0]~input_o\ & (\Carry_in~input_o\ & 
-- (!\Input2[1]~input_o\ $ (\Input0[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[1]~input_o\,
	datab => \ALT_INV_Input2[0]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[1]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \sum_carry_1|temp_1|Output~0_combout\);

-- Location: LABCELL_X64_Y2_N48
\GP_1_0|P_i_jG_jMinus1_k|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ = ( \Input0[0]~input_o\ & ( (!\Input2[0]~input_o\ & (\Carry_in~input_o\ & (!\Input2[1]~input_o\ $ (\Input0[1]~input_o\)))) # (\Input2[0]~input_o\ & (!\Carry_in~input_o\ & (!\Input2[1]~input_o\ $ 
-- (!\Input0[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000001001000001100000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[1]~input_o\,
	datab => \ALT_INV_Input2[0]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[1]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\);

-- Location: LABCELL_X63_Y2_N6
\sum_carry_3|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_3|Sum|Output_xor|process_0~0_combout\ = ( \GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ & ( !\GP_3_3|P|Output_xor|process_0~0_combout\ $ (((!\GP_4_1|G_i_k|process_0~0_combout\ & !\GP_2_2|P|Output_xor|process_0~0_combout\))) ) ) # ( 
-- !\GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\ & ( !\GP_3_3|P|Output_xor|process_0~0_combout\ $ (((!\GP_4_1|G_i_k|process_0~0_combout\ & ((!\sum_carry_1|temp_1|Output~0_combout\) # (!\GP_2_2|P|Output_xor|process_0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101100011001100110110001100110110011000110011011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datad => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	combout => \sum_carry_3|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N51
\GP_3_0|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_3_0|G_i_k|process_0~0_combout\ = ( \Input0[0]~input_o\ & ( (!\Input2[1]~input_o\ & ((!\Input2[0]~input_o\ & (\Carry_in~input_o\)) # (\Input2[0]~input_o\ & ((\Input0[1]~input_o\))))) # (\Input2[1]~input_o\ & ((!\Input2[0]~input_o\ & 
-- ((\Input0[1]~input_o\))) # (\Input2[0]~input_o\ & (!\Carry_in~input_o\)))) ) ) # ( !\Input0[0]~input_o\ & ( (\Input0[1]~input_o\ & (!\Input2[1]~input_o\ $ (!\Carry_in~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000011000011111100001100001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[1]~input_o\,
	datab => \ALT_INV_Input2[0]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[1]~input_o\,
	dataf => \ALT_INV_Input0[0]~input_o\,
	combout => \GP_3_0|G_i_k|process_0~0_combout\);

-- Location: IOIBUF_X72_Y0_N18
\Input2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(4),
	o => \Input2[4]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\Input0[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(4),
	o => \Input0[4]~input_o\);

-- Location: LABCELL_X64_Y2_N9
\GP_4_4|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_4_4|P|Output_xor|process_0~0_combout\ = ( \Input0[4]~input_o\ & ( !\Input2[4]~input_o\ $ (\Carry_in~input_o\) ) ) # ( !\Input0[4]~input_o\ & ( !\Input2[4]~input_o\ $ (!\Carry_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[4]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input0[4]~input_o\,
	combout => \GP_4_4|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N39
\GP_3_0|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_3_0|G_i_k|process_0~1_combout\ = ( \Input2[2]~input_o\ & ( (!\Input0[2]~input_o\ & (\Input0[3]~input_o\ & (!\Carry_in~input_o\ $ (!\Input2[3]~input_o\)))) # (\Input0[2]~input_o\ & ((!\Input2[3]~input_o\ & ((\Input0[3]~input_o\))) # 
-- (\Input2[3]~input_o\ & (!\Carry_in~input_o\)))) ) ) # ( !\Input2[2]~input_o\ & ( (!\Input0[2]~input_o\ & (\Input0[3]~input_o\ & (!\Carry_in~input_o\ $ (!\Input2[3]~input_o\)))) # (\Input0[2]~input_o\ & ((!\Input2[3]~input_o\ & (\Carry_in~input_o\)) # 
-- (\Input2[3]~input_o\ & ((\Input0[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100001011000101010000101100000111001010100000011100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Carry_in~input_o\,
	datab => \ALT_INV_Input0[2]~input_o\,
	datac => \ALT_INV_Input0[3]~input_o\,
	datad => \ALT_INV_Input2[3]~input_o\,
	dataf => \ALT_INV_Input2[2]~input_o\,
	combout => \GP_3_0|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N42
\sum_carry_4|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_4|Sum|Output_xor|process_0~0_combout\ = ( \GP_2_2|P|Output_xor|process_0~0_combout\ & ( \GP_3_0|G_i_k|process_0~1_combout\ & ( !\GP_4_4|P|Output_xor|process_0~0_combout\ ) ) ) # ( !\GP_2_2|P|Output_xor|process_0~0_combout\ & ( 
-- \GP_3_0|G_i_k|process_0~1_combout\ & ( !\GP_4_4|P|Output_xor|process_0~0_combout\ ) ) ) # ( \GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( !\GP_4_4|P|Output_xor|process_0~0_combout\ $ 
-- (((!\GP_3_3|P|Output_xor|process_0~0_combout\) # ((!\sum_carry_1|temp_1|Output~0_combout\ & !\GP_3_0|G_i_k|process_0~0_combout\)))) ) ) ) # ( !\GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( 
-- \GP_4_4|P|Output_xor|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100111110110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datab => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_4|Sum|Output_xor|process_0~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\Input2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(5),
	o => \Input2[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\Input0[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(5),
	o => \Input0[5]~input_o\);

-- Location: LABCELL_X64_Y2_N42
\GP_5_5|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_5_5|P|Output_xor|process_0~0_combout\ = ( \Input0[5]~input_o\ & ( !\Carry_in~input_o\ $ (\Input2[5]~input_o\) ) ) # ( !\Input0[5]~input_o\ & ( !\Carry_in~input_o\ $ (!\Input2[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input2[5]~input_o\,
	dataf => \ALT_INV_Input0[5]~input_o\,
	combout => \GP_5_5|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N30
\sum_carry_9|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~0_combout\ = ( \Input2[0]~input_o\ & ( (\Input0[0]~input_o\ & (!\Input0[1]~input_o\ $ (!\Carry_in~input_o\ $ (\Input2[1]~input_o\)))) ) ) # ( !\Input2[0]~input_o\ & ( (\Carry_in~input_o\ & (!\Input0[1]~input_o\ $ 
-- (\Input2[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000100000110000010010000011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[1]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[0]~input_o\,
	datad => \ALT_INV_Input2[1]~input_o\,
	dataf => \ALT_INV_Input2[0]~input_o\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N6
\GP_4_1|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_4_1|G_i_k|process_0~1_combout\ = ( \Input0[3]~input_o\ & ( (!\Input2[4]~input_o\ & ((!\Input2[3]~input_o\ & (\Carry_in~input_o\)) # (\Input2[3]~input_o\ & ((\Input0[4]~input_o\))))) # (\Input2[4]~input_o\ & ((!\Input2[3]~input_o\ & 
-- ((\Input0[4]~input_o\))) # (\Input2[3]~input_o\ & (!\Carry_in~input_o\)))) ) ) # ( !\Input0[3]~input_o\ & ( (\Input0[4]~input_o\ & (!\Input2[4]~input_o\ $ (!\Carry_in~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000100111010011100010011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[4]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[4]~input_o\,
	datad => \ALT_INV_Input2[3]~input_o\,
	dataf => \ALT_INV_Input0[3]~input_o\,
	combout => \GP_4_1|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N18
\sum_carry_4|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_4|Carry_out|process_0~0_combout\ = ( !\GP_4_1|G_i_k|process_0~1_combout\ & ( \GP_4_4|P|Output_xor|process_0~0_combout\ & ( (!\GP_3_3|P|Output_xor|process_0~0_combout\) # ((!\GP_4_1|G_i_k|process_0~0_combout\ & 
-- ((!\GP_2_2|P|Output_xor|process_0~0_combout\) # (!\sum_carry_9|Sum|Output_xor|process_0~0_combout\)))) ) ) ) # ( !\GP_4_1|G_i_k|process_0~1_combout\ & ( !\GP_4_4|P|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_4|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X61_Y3_N3
\sum_carry_5|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_5|Sum|Output_xor|process_0~0_combout\ = ( \sum_carry_4|Carry_out|process_0~0_combout\ & ( \GP_5_5|P|Output_xor|process_0~0_combout\ ) ) # ( !\sum_carry_4|Carry_out|process_0~0_combout\ & ( !\GP_5_5|P|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_5_5|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_5|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N24
\GP_3_0|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_3_0|G_i_k|process_0~2_combout\ = ( \Input2[2]~input_o\ & ( (!\Carry_in~input_o\ & (!\Input0[2]~input_o\ & (!\Input2[3]~input_o\ $ (!\Input0[3]~input_o\)))) # (\Carry_in~input_o\ & (\Input0[2]~input_o\ & (!\Input2[3]~input_o\ $ (\Input0[3]~input_o\)))) 
-- ) ) # ( !\Input2[2]~input_o\ & ( (!\Carry_in~input_o\ & (\Input0[2]~input_o\ & (!\Input2[3]~input_o\ $ (!\Input0[3]~input_o\)))) # (\Carry_in~input_o\ & (!\Input0[2]~input_o\ & (!\Input2[3]~input_o\ $ (\Input0[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[3]~input_o\,
	datab => \ALT_INV_Input0[3]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input0[2]~input_o\,
	dataf => \ALT_INV_Input2[2]~input_o\,
	combout => \GP_3_0|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X64_Y2_N18
\sum_carry_11|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_11|Sum|Output_xor|process_0~0_combout\ = ( \Input2[5]~input_o\ & ( (!\Input0[5]~input_o\ & (!\Carry_in~input_o\ & (!\Input2[4]~input_o\ $ (!\Input0[4]~input_o\)))) # (\Input0[5]~input_o\ & (\Carry_in~input_o\ & (!\Input2[4]~input_o\ $ 
-- (\Input0[4]~input_o\)))) ) ) # ( !\Input2[5]~input_o\ & ( (!\Input0[5]~input_o\ & (\Carry_in~input_o\ & (!\Input2[4]~input_o\ $ (\Input0[4]~input_o\)))) # (\Input0[5]~input_o\ & (!\Carry_in~input_o\ & (!\Input2[4]~input_o\ $ (!\Input0[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010000100000100101000010001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[4]~input_o\,
	datab => \ALT_INV_Input0[5]~input_o\,
	datac => \ALT_INV_Input0[4]~input_o\,
	datad => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input2[5]~input_o\,
	combout => \sum_carry_11|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N21
\GP_5_2|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_5_2|G_i_k|process_0~0_combout\ = ( \Input0[4]~input_o\ & ( (!\Input2[4]~input_o\ & ((!\Input2[5]~input_o\ & ((\Carry_in~input_o\))) # (\Input2[5]~input_o\ & (\Input0[5]~input_o\)))) # (\Input2[4]~input_o\ & ((!\Input2[5]~input_o\ & 
-- (\Input0[5]~input_o\)) # (\Input2[5]~input_o\ & ((!\Carry_in~input_o\))))) ) ) # ( !\Input0[4]~input_o\ & ( (\Input0[5]~input_o\ & (!\Input2[5]~input_o\ $ (!\Carry_in~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000010111101100100001011110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[4]~input_o\,
	datab => \ALT_INV_Input0[5]~input_o\,
	datac => \ALT_INV_Input2[5]~input_o\,
	datad => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input0[4]~input_o\,
	combout => \GP_5_2|G_i_k|process_0~0_combout\);

-- Location: IOIBUF_X64_Y0_N35
\Input0[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(6),
	o => \Input0[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\Input2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(6),
	o => \Input2[6]~input_o\);

-- Location: LABCELL_X62_Y2_N33
\GP_6_6|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_6_6|P|Output_xor|process_0~0_combout\ = ( \Input2[6]~input_o\ & ( !\Input0[6]~input_o\ $ (\Carry_in~input_o\) ) ) # ( !\Input2[6]~input_o\ & ( !\Input0[6]~input_o\ $ (!\Carry_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[6]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datae => \ALT_INV_Input2[6]~input_o\,
	combout => \GP_6_6|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N54
\sum_carry_6|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_6|Sum|Output_xor|process_0~0_combout\ = ( \GP_6_6|P|Output_xor|process_0~0_combout\ & ( \GP_3_0|G_i_k|process_0~1_combout\ & ( (!\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & !\GP_5_2|G_i_k|process_0~0_combout\) ) ) ) # ( 
-- !\GP_6_6|P|Output_xor|process_0~0_combout\ & ( \GP_3_0|G_i_k|process_0~1_combout\ & ( (\GP_5_2|G_i_k|process_0~0_combout\) # (\sum_carry_11|Sum|Output_xor|process_0~0_combout\) ) ) ) # ( \GP_6_6|P|Output_xor|process_0~0_combout\ & ( 
-- !\GP_3_0|G_i_k|process_0~1_combout\ & ( (!\GP_5_2|G_i_k|process_0~0_combout\ & ((!\GP_3_0|G_i_k|process_0~2_combout\) # ((!\sum_carry_11|Sum|Output_xor|process_0~0_combout\) # (!\sum_carry_5|Carry_out|process_0~0_combout\)))) ) ) ) # ( 
-- !\GP_6_6|P|Output_xor|process_0~0_combout\ & ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( ((\GP_3_0|G_i_k|process_0~2_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & \sum_carry_5|Carry_out|process_0~0_combout\))) # 
-- (\GP_5_2|G_i_k|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111111100001110000000111111001111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\,
	datab => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	datae => \GP_6_6|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_6|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N57
\GP_6_3|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_6_3|G_i_k|process_0~0_combout\ = ( \Input0[5]~input_o\ & ( (!\Input2[6]~input_o\ & ((!\Input2[5]~input_o\ & ((\Carry_in~input_o\))) # (\Input2[5]~input_o\ & (\Input0[6]~input_o\)))) # (\Input2[6]~input_o\ & ((!\Input2[5]~input_o\ & 
-- (\Input0[6]~input_o\)) # (\Input2[5]~input_o\ & ((!\Carry_in~input_o\))))) ) ) # ( !\Input0[5]~input_o\ & ( (\Input0[6]~input_o\ & (!\Input2[6]~input_o\ $ (!\Carry_in~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000010111101100100001011110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[6]~input_o\,
	datab => \ALT_INV_Input0[6]~input_o\,
	datac => \ALT_INV_Input2[5]~input_o\,
	datad => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input0[5]~input_o\,
	combout => \GP_6_3|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N54
\sum_carry_9|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~1_combout\ = ( \Input0[5]~input_o\ & ( (!\Carry_in~input_o\ & (!\Input2[5]~input_o\ & (!\Input2[6]~input_o\ $ (!\Input0[6]~input_o\)))) # (\Carry_in~input_o\ & (\Input2[5]~input_o\ & (!\Input2[6]~input_o\ $ 
-- (\Input0[6]~input_o\)))) ) ) # ( !\Input0[5]~input_o\ & ( (!\Carry_in~input_o\ & (\Input2[5]~input_o\ & (!\Input2[6]~input_o\ $ (!\Input0[6]~input_o\)))) # (\Carry_in~input_o\ & (!\Input2[5]~input_o\ & (!\Input2[6]~input_o\ $ (\Input0[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[6]~input_o\,
	datab => \ALT_INV_Input0[6]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \ALT_INV_Input2[5]~input_o\,
	dataf => \ALT_INV_Input0[5]~input_o\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~1_combout\);

-- Location: LABCELL_X62_Y2_N39
\GP_6_3|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_6_3|G_i_k|process_0~1_combout\ = ( !\GP_4_1|G_i_k|process_0~1_combout\ & ( \sum_carry_9|Sum|Output_xor|process_0~1_combout\ & ( !\GP_6_3|G_i_k|process_0~0_combout\ ) ) ) # ( \GP_4_1|G_i_k|process_0~1_combout\ & ( 
-- !\sum_carry_9|Sum|Output_xor|process_0~1_combout\ & ( !\GP_6_3|G_i_k|process_0~0_combout\ ) ) ) # ( !\GP_4_1|G_i_k|process_0~1_combout\ & ( !\sum_carry_9|Sum|Output_xor|process_0~1_combout\ & ( !\GP_6_3|G_i_k|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_6_3|G_i_k|ALT_INV_process_0~0_combout\,
	datae => \GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	combout => \GP_6_3|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N30
\sum_carry_11|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_11|Sum|Output_xor|process_0~1_combout\ = ( \GP_4_1|G_i_k|process_0~0_combout\ & ( \GP_3_3|P|Output_xor|process_0~0_combout\ & ( \sum_carry_11|Sum|Output_xor|process_0~0_combout\ ) ) ) # ( !\GP_4_1|G_i_k|process_0~0_combout\ & ( 
-- \GP_3_3|P|Output_xor|process_0~0_combout\ & ( (\GP_2_2|P|Output_xor|process_0~0_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & ((\sum_carry_1|temp_1|Output~0_combout\) # (\GP_1_0|P_i_jG_jMinus1_k|Output~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_1_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datac => \sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datad => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_11|Sum|Output_xor|process_0~1_combout\);

-- Location: IOIBUF_X60_Y0_N1
\Input0[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(7),
	o => \Input0[7]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\Input2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(7),
	o => \Input2[7]~input_o\);

-- Location: LABCELL_X62_Y2_N45
\sum_carry_7|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_7|Sum|Output_xor|process_0~0_combout\ = ( \Input0[7]~input_o\ & ( \Input2[7]~input_o\ & ( !\Carry_in~input_o\ $ (((\GP_6_3|G_i_k|process_0~1_combout\ & ((!\GP_6_6|P|Output_xor|process_0~0_combout\) # 
-- (!\sum_carry_11|Sum|Output_xor|process_0~1_combout\))))) ) ) ) # ( !\Input0[7]~input_o\ & ( \Input2[7]~input_o\ & ( !\Carry_in~input_o\ $ (((!\GP_6_3|G_i_k|process_0~1_combout\) # ((\GP_6_6|P|Output_xor|process_0~0_combout\ & 
-- \sum_carry_11|Sum|Output_xor|process_0~1_combout\)))) ) ) ) # ( \Input0[7]~input_o\ & ( !\Input2[7]~input_o\ & ( !\Carry_in~input_o\ $ (((!\GP_6_3|G_i_k|process_0~1_combout\) # ((\GP_6_6|P|Output_xor|process_0~0_combout\ & 
-- \sum_carry_11|Sum|Output_xor|process_0~1_combout\)))) ) ) ) # ( !\Input0[7]~input_o\ & ( !\Input2[7]~input_o\ & ( !\Carry_in~input_o\ $ (((\GP_6_3|G_i_k|process_0~1_combout\ & ((!\GP_6_6|P|Output_xor|process_0~0_combout\) # 
-- (!\sum_carry_11|Sum|Output_xor|process_0~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111010010001111000010110100111100001011011100001111010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_6_6|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_Carry_in~input_o\,
	datad => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_Input0[7]~input_o\,
	dataf => \ALT_INV_Input2[7]~input_o\,
	combout => \sum_carry_7|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X64_Y2_N45
\GP_7_4|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_7_4|G_i_k|process_0~0_combout\ = ( \Input0[6]~input_o\ & ( (!\Input2[6]~input_o\ & (!\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (!\Input2[7]~input_o\)))) # (\Input2[6]~input_o\ & (\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (\Input2[7]~input_o\)))) 
-- ) ) # ( !\Input0[6]~input_o\ & ( (!\Input2[6]~input_o\ & (\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (\Input2[7]~input_o\)))) # (\Input2[6]~input_o\ & (!\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (!\Input2[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000010001001000100001000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[6]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[7]~input_o\,
	datad => \ALT_INV_Input2[7]~input_o\,
	dataf => \ALT_INV_Input0[6]~input_o\,
	combout => \GP_7_4|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N39
\sum_carry_7|temp_1|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_7|temp_1|Output~0_combout\ = ( \sum_carry_1|temp_1|Output~0_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & (\GP_3_3|P|Output_xor|process_0~0_combout\ & 
-- \GP_2_2|P|Output_xor|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	combout => \sum_carry_7|temp_1|Output~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\Input0[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(8),
	o => \Input0[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\Input2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(8),
	o => \Input2[8]~input_o\);

-- Location: MLABCELL_X59_Y3_N33
\GP_8_8|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_8_8|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input0[8]~input_o\ $ (\Input2[8]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input0[8]~input_o\ $ (!\Input2[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[8]~input_o\,
	datac => \ALT_INV_Input2[8]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_8_8|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N36
\GP_7_0|P_i_jG_jMinus1_k|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\ = ( \GP_3_0|G_i_k|process_0~1_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & \sum_carry_11|Sum|Output_xor|process_0~0_combout\) ) ) # ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( 
-- (\GP_7_4|G_i_k|process_0~0_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & (\GP_3_0|G_i_k|process_0~0_combout\ & \GP_3_0|G_i_k|process_0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\);

-- Location: LABCELL_X62_Y2_N48
\GP_7_4|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_7_4|G_i_k|process_0~1_combout\ = ( \Input0[7]~input_o\ & ( \Input2[7]~input_o\ & ( (!\Carry_in~input_o\) # ((\Input0[6]~input_o\ & !\Input2[6]~input_o\)) ) ) ) # ( !\Input0[7]~input_o\ & ( \Input2[7]~input_o\ & ( (!\Carry_in~input_o\ & 
-- (\Input0[6]~input_o\ & \Input2[6]~input_o\)) ) ) ) # ( \Input0[7]~input_o\ & ( !\Input2[7]~input_o\ & ( ((\Input0[6]~input_o\ & \Input2[6]~input_o\)) # (\Carry_in~input_o\) ) ) ) # ( !\Input0[7]~input_o\ & ( !\Input2[7]~input_o\ & ( (\Carry_in~input_o\ & 
-- (\Input0[6]~input_o\ & !\Input2[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000001100110011111100000000000011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[6]~input_o\,
	datad => \ALT_INV_Input2[6]~input_o\,
	datae => \ALT_INV_Input0[7]~input_o\,
	dataf => \ALT_INV_Input2[7]~input_o\,
	combout => \GP_7_4|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N0
\GP_7_4|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_7_4|G_i_k|process_0~2_combout\ = ( \GP_7_4|G_i_k|process_0~0_combout\ & ( (!\GP_7_4|G_i_k|process_0~1_combout\ & !\GP_5_2|G_i_k|process_0~0_combout\) ) ) # ( !\GP_7_4|G_i_k|process_0~0_combout\ & ( !\GP_7_4|G_i_k|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \GP_7_4|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X61_Y3_N36
\sum_carry_8|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_8|Sum|Output_xor|process_0~0_combout\ = ( \GP_7_4|G_i_k|process_0~2_combout\ & ( !\GP_8_8|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_7|temp_1|Output~0_combout\ & !\GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\))) ) ) # ( 
-- !\GP_7_4|G_i_k|process_0~2_combout\ & ( !\GP_8_8|P|Output_xor|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000111100111100000011110011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sum_carry_7|temp_1|ALT_INV_Output~0_combout\,
	datac => \GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	dataf => \GP_7_4|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \sum_carry_8|Sum|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N30
\sum_carry_9|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~2_combout\ = ( \Input2[8]~input_o\ & ( (!\Input0[8]~input_o\ & (!\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (!\Input2[7]~input_o\)))) # (\Input0[8]~input_o\ & (\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ 
-- (\Input2[7]~input_o\)))) ) ) # ( !\Input2[8]~input_o\ & ( (!\Input0[8]~input_o\ & (\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (\Input2[7]~input_o\)))) # (\Input0[8]~input_o\ & (!\Carry_in~input_o\ & (!\Input0[7]~input_o\ $ (!\Input2[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000010001001000100001000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[8]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[7]~input_o\,
	datad => \ALT_INV_Input2[7]~input_o\,
	dataf => \ALT_INV_Input2[8]~input_o\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~2_combout\);

-- Location: MLABCELL_X59_Y3_N9
\GP_8_5|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_8_5|G_i_k|process_0~0_combout\ = ( \Input2[8]~input_o\ & ( (!\Input0[7]~input_o\ & (\Input0[8]~input_o\ & (!\Carry_in~input_o\))) # (\Input0[7]~input_o\ & ((!\Input2[7]~input_o\ & (\Input0[8]~input_o\)) # (\Input2[7]~input_o\ & 
-- ((!\Carry_in~input_o\))))) ) ) # ( !\Input2[8]~input_o\ & ( (!\Input0[7]~input_o\ & (\Input0[8]~input_o\ & (\Carry_in~input_o\))) # (\Input0[7]~input_o\ & ((!\Input2[7]~input_o\ & ((\Carry_in~input_o\))) # (\Input2[7]~input_o\ & (\Input0[8]~input_o\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110101000100010011010101000100010111000100010001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[8]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input2[7]~input_o\,
	datad => \ALT_INV_Input0[7]~input_o\,
	dataf => \ALT_INV_Input2[8]~input_o\,
	combout => \GP_8_5|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X61_Y3_N45
\GP_8_5|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_8_5|G_i_k|process_0~1_combout\ = ( \sum_carry_9|Sum|Output_xor|process_0~2_combout\ & ( (!\GP_8_5|G_i_k|process_0~0_combout\ & !\GP_6_3|G_i_k|process_0~0_combout\) ) ) # ( !\sum_carry_9|Sum|Output_xor|process_0~2_combout\ & ( 
-- !\GP_8_5|G_i_k|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_8_5|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \GP_6_3|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	combout => \GP_8_5|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N9
\sum_carry_9|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~4_combout\ = ( \GP_4_4|P|Output_xor|process_0~0_combout\ & ( (\sum_carry_9|Sum|Output_xor|process_0~1_combout\ & (((\GP_4_1|G_i_k|process_0~0_combout\ & \GP_3_3|P|Output_xor|process_0~0_combout\)) # 
-- (\GP_4_1|G_i_k|process_0~1_combout\))) ) ) # ( !\GP_4_4|P|Output_xor|process_0~0_combout\ & ( (\GP_4_1|G_i_k|process_0~1_combout\ & \sum_carry_9|Sum|Output_xor|process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000111110000000000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_4_1|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_4_1|G_i_k|ALT_INV_process_0~1_combout\,
	datad => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	dataf => \GP_4_4|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~4_combout\);

-- Location: IOIBUF_X52_Y0_N35
\Input0[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(9),
	o => \Input0[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\Input2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(9),
	o => \Input2[9]~input_o\);

-- Location: MLABCELL_X59_Y3_N45
\GP_9_9|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_9_9|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input0[9]~input_o\ $ (\Input2[9]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input0[9]~input_o\ $ (!\Input2[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[9]~input_o\,
	datab => \ALT_INV_Input2[9]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_9_9|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N12
\sum_carry_9|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~3_combout\ = ( \sum_carry_9|Sum|Output_xor|process_0~0_combout\ & ( (\GP_3_0|G_i_k|process_0~2_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & (\GP_8_8|P|Output_xor|process_0~0_combout\ & 
-- \GP_7_4|G_i_k|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\,
	datab => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_8_8|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~3_combout\);

-- Location: LABCELL_X61_Y3_N0
\sum_carry_9|Sum|Output_xor|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_9|Sum|Output_xor|process_0~5_combout\ = ( \sum_carry_9|Sum|Output_xor|process_0~3_combout\ & ( !\GP_9_9|P|Output_xor|process_0~0_combout\ ) ) # ( !\sum_carry_9|Sum|Output_xor|process_0~3_combout\ & ( !\GP_9_9|P|Output_xor|process_0~0_combout\ $ 
-- (((\GP_8_5|G_i_k|process_0~1_combout\ & ((!\sum_carry_9|Sum|Output_xor|process_0~2_combout\) # (!\sum_carry_9|Sum|Output_xor|process_0~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110100110010110011010011001011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datab => \GP_8_5|G_i_k|ALT_INV_process_0~1_combout\,
	datac => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~4_combout\,
	datad => \GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_9|Sum|Output_xor|ALT_INV_process_0~3_combout\,
	combout => \sum_carry_9|Sum|Output_xor|process_0~5_combout\);

-- Location: IOIBUF_X58_Y0_N75
\Input0[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(10),
	o => \Input0[10]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\Input2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(10),
	o => \Input2[10]~input_o\);

-- Location: MLABCELL_X59_Y3_N57
\GP_10_10|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_10_10|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input0[10]~input_o\ $ (\Input2[10]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input0[10]~input_o\ $ (!\Input2[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[10]~input_o\,
	datab => \ALT_INV_Input2[10]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_10_10|P|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N51
\GP_9_6|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_9_6|G_i_k|process_0~0_combout\ = ( \Carry_in~input_o\ & ( (!\Input0[9]~input_o\ & (!\Input2[9]~input_o\ & (!\Input2[8]~input_o\ $ (\Input0[8]~input_o\)))) # (\Input0[9]~input_o\ & (\Input2[9]~input_o\ & (!\Input2[8]~input_o\ $ (\Input0[8]~input_o\)))) 
-- ) ) # ( !\Carry_in~input_o\ & ( (!\Input0[9]~input_o\ & (\Input2[9]~input_o\ & (!\Input2[8]~input_o\ $ (!\Input0[8]~input_o\)))) # (\Input0[9]~input_o\ & (!\Input2[9]~input_o\ & (!\Input2[8]~input_o\ $ (!\Input0[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[9]~input_o\,
	datab => \ALT_INV_Input2[8]~input_o\,
	datac => \ALT_INV_Input2[9]~input_o\,
	datad => \ALT_INV_Input0[8]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_9_6|G_i_k|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N48
\GP_9_6|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_9_6|G_i_k|process_0~1_combout\ = ( \Carry_in~input_o\ & ( (!\Input0[9]~input_o\ & (!\Input2[8]~input_o\ & (\Input0[8]~input_o\ & !\Input2[9]~input_o\))) # (\Input0[9]~input_o\ & ((!\Input2[9]~input_o\) # ((!\Input2[8]~input_o\ & 
-- \Input0[8]~input_o\)))) ) ) # ( !\Carry_in~input_o\ & ( (!\Input0[9]~input_o\ & (\Input2[8]~input_o\ & (\Input0[8]~input_o\ & \Input2[9]~input_o\))) # (\Input0[9]~input_o\ & (((\Input2[8]~input_o\ & \Input0[8]~input_o\)) # (\Input2[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000000010101011101011101000001000101110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[9]~input_o\,
	datab => \ALT_INV_Input2[8]~input_o\,
	datac => \ALT_INV_Input0[8]~input_o\,
	datad => \ALT_INV_Input2[9]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_9_6|G_i_k|process_0~1_combout\);

-- Location: LABCELL_X62_Y2_N24
\GP_9_6|G_i_k|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_9_6|G_i_k|process_0~2_combout\ = ( !\GP_9_6|G_i_k|process_0~1_combout\ & ( \GP_7_4|G_i_k|process_0~1_combout\ & ( !\GP_9_6|G_i_k|process_0~0_combout\ ) ) ) # ( !\GP_9_6|G_i_k|process_0~1_combout\ & ( !\GP_7_4|G_i_k|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datae => \GP_9_6|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \GP_7_4|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \GP_9_6|G_i_k|process_0~2_combout\);

-- Location: LABCELL_X63_Y2_N48
\sum_carry_10|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_10|Sum|Output_xor|process_0~0_combout\ = ( \GP_3_0|G_i_k|process_0~1_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & ((\sum_carry_11|Sum|Output_xor|process_0~0_combout\) # 
-- (\GP_5_2|G_i_k|process_0~0_combout\)))) ) ) # ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & \GP_5_2|G_i_k|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_10|Sum|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N51
\sum_carry_10|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_10|Sum|Output_xor|process_0~1_combout\ = ( \sum_carry_5|Carry_out|process_0~0_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & 
-- \GP_3_0|G_i_k|process_0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\,
	dataf => \sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_10|Sum|Output_xor|process_0~1_combout\);

-- Location: LABCELL_X62_Y2_N0
\sum_carry_10|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_10|Sum|Output_xor|process_0~2_combout\ = ( \sum_carry_10|Sum|Output_xor|process_0~0_combout\ & ( \sum_carry_10|Sum|Output_xor|process_0~1_combout\ & ( !\GP_10_10|P|Output_xor|process_0~0_combout\ ) ) ) # ( 
-- !\sum_carry_10|Sum|Output_xor|process_0~0_combout\ & ( \sum_carry_10|Sum|Output_xor|process_0~1_combout\ & ( !\GP_10_10|P|Output_xor|process_0~0_combout\ ) ) ) # ( \sum_carry_10|Sum|Output_xor|process_0~0_combout\ & ( 
-- !\sum_carry_10|Sum|Output_xor|process_0~1_combout\ & ( !\GP_10_10|P|Output_xor|process_0~0_combout\ ) ) ) # ( !\sum_carry_10|Sum|Output_xor|process_0~0_combout\ & ( !\sum_carry_10|Sum|Output_xor|process_0~1_combout\ & ( 
-- !\GP_10_10|P|Output_xor|process_0~0_combout\ $ (\GP_9_6|G_i_k|process_0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~2_combout\,
	datae => \sum_carry_10|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_10|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_10|Sum|Output_xor|process_0~2_combout\);

-- Location: LABCELL_X61_Y3_N48
\sum_carry_11|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_11|Sum|Output_xor|process_0~3_combout\ = ( \GP_9_6|G_i_k|process_0~0_combout\ & ( (\GP_7_4|G_i_k|process_0~0_combout\ & \GP_10_10|P|Output_xor|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_11|Sum|Output_xor|process_0~3_combout\);

-- Location: IOIBUF_X40_Y0_N52
\Input2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(11),
	o => \Input2[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\Input0[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(11),
	o => \Input0[11]~input_o\);

-- Location: MLABCELL_X59_Y3_N3
\GP_11_11|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_11_11|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input2[11]~input_o\ $ (\Input0[11]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input2[11]~input_o\ $ (!\Input0[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[11]~input_o\,
	datab => \ALT_INV_Input0[11]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_11_11|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y3_N36
\sum_carry_11|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_11|Sum|Output_xor|process_0~2_combout\ = ( \Input2[7]~input_o\ & ( (\GP_10_10|P|Output_xor|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & (!\Carry_in~input_o\ $ (\Input0[7]~input_o\)))) ) ) # ( !\Input2[7]~input_o\ & ( 
-- (\GP_10_10|P|Output_xor|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & (!\Carry_in~input_o\ $ (!\Input0[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000100000000010000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_Input0[7]~input_o\,
	dataf => \ALT_INV_Input2[7]~input_o\,
	combout => \sum_carry_11|Sum|Output_xor|process_0~2_combout\);

-- Location: MLABCELL_X59_Y3_N54
\GP_10_10|P|I0I1_bar|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_10_10|P|I0I1_bar|Output~0_combout\ = ( \Carry_in~input_o\ & ( (\Input0[10]~input_o\ & !\Input2[10]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( (\Input0[10]~input_o\ & \Input2[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[10]~input_o\,
	datab => \ALT_INV_Input2[10]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_10_10|P|I0I1_bar|Output~0_combout\);

-- Location: MLABCELL_X59_Y3_N42
\GP_9_9|P|I0I1_bar|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_9_9|P|I0I1_bar|Output~0_combout\ = ( \Carry_in~input_o\ & ( (\Input0[9]~input_o\ & !\Input2[9]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( (\Input0[9]~input_o\ & \Input2[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[9]~input_o\,
	datab => \ALT_INV_Input2[9]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_9_9|P|I0I1_bar|Output~0_combout\);

-- Location: LABCELL_X61_Y3_N42
\GP_10_7|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_10_7|G_i_k|process_0~0_combout\ = ( \GP_9_9|P|I0I1_bar|Output~0_combout\ & ( (!\GP_10_10|P|Output_xor|process_0~0_combout\ & !\GP_10_10|P|I0I1_bar|Output~0_combout\) ) ) # ( !\GP_9_9|P|I0I1_bar|Output~0_combout\ & ( 
-- (!\GP_10_10|P|I0I1_bar|Output~0_combout\ & ((!\GP_8_5|G_i_k|process_0~0_combout\) # ((!\GP_10_10|P|Output_xor|process_0~0_combout\) # (!\GP_9_9|P|Output_xor|process_0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_8_5|G_i_k|ALT_INV_process_0~0_combout\,
	datab => \GP_10_10|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_10_10|P|I0I1_bar|ALT_INV_Output~0_combout\,
	datad => \GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_9_9|P|I0I1_bar|ALT_INV_Output~0_combout\,
	combout => \GP_10_7|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X61_Y3_N54
\sum_carry_11|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_11|Sum|Output_xor|process_0~4_combout\ = ( \sum_carry_11|Sum|Output_xor|process_0~1_combout\ & ( \GP_6_3|G_i_k|process_0~1_combout\ & ( !\GP_11_11|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_11|Sum|Output_xor|process_0~3_combout\ & 
-- \GP_10_7|G_i_k|process_0~0_combout\))) ) ) ) # ( !\sum_carry_11|Sum|Output_xor|process_0~1_combout\ & ( \GP_6_3|G_i_k|process_0~1_combout\ & ( !\GP_11_11|P|Output_xor|process_0~0_combout\ $ (\GP_10_7|G_i_k|process_0~0_combout\) ) ) ) # ( 
-- \sum_carry_11|Sum|Output_xor|process_0~1_combout\ & ( !\GP_6_3|G_i_k|process_0~1_combout\ & ( !\GP_11_11|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_11|Sum|Output_xor|process_0~3_combout\ & (!\sum_carry_11|Sum|Output_xor|process_0~2_combout\ & 
-- \GP_10_7|G_i_k|process_0~0_combout\)))) ) ) ) # ( !\sum_carry_11|Sum|Output_xor|process_0~1_combout\ & ( !\GP_6_3|G_i_k|process_0~1_combout\ & ( !\GP_11_11|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_11|Sum|Output_xor|process_0~2_combout\ & 
-- \GP_10_7|G_i_k|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000111100110011000110110011001100001100111100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~3_combout\,
	datab => \GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datad => \GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	datae => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	dataf => \GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_11|Sum|Output_xor|process_0~4_combout\);

-- Location: MLABCELL_X59_Y3_N39
\sum_carry_12|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_12|Sum|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( (!\Input0[10]~input_o\ & (!\Input2[10]~input_o\ & (!\Input0[11]~input_o\ $ (\Input2[11]~input_o\)))) # (\Input0[10]~input_o\ & (\Input2[10]~input_o\ & (!\Input0[11]~input_o\ $ 
-- (\Input2[11]~input_o\)))) ) ) # ( !\Carry_in~input_o\ & ( (!\Input0[10]~input_o\ & (\Input2[10]~input_o\ & (!\Input0[11]~input_o\ $ (!\Input2[11]~input_o\)))) # (\Input0[10]~input_o\ & (!\Input2[10]~input_o\ & (!\Input0[11]~input_o\ $ 
-- (!\Input2[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[10]~input_o\,
	datab => \ALT_INV_Input0[11]~input_o\,
	datac => \ALT_INV_Input2[10]~input_o\,
	datad => \ALT_INV_Input2[11]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \sum_carry_12|Sum|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N36
\GP_11_8|G_i_k|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_11_8|G_i_k|process_0~0_combout\ = ( \Carry_in~input_o\ & ( (!\Input0[11]~input_o\ & (\Input0[10]~input_o\ & (!\Input2[10]~input_o\ & !\Input2[11]~input_o\))) # (\Input0[11]~input_o\ & ((!\Input2[11]~input_o\) # ((\Input0[10]~input_o\ & 
-- !\Input2[10]~input_o\)))) ) ) # ( !\Carry_in~input_o\ & ( (!\Input0[11]~input_o\ & (\Input0[10]~input_o\ & (\Input2[10]~input_o\ & \Input2[11]~input_o\))) # (\Input0[11]~input_o\ & (((\Input0[10]~input_o\ & \Input2[10]~input_o\)) # 
-- (\Input2[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011101110011000100000111001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[10]~input_o\,
	datab => \ALT_INV_Input0[11]~input_o\,
	datac => \ALT_INV_Input2[10]~input_o\,
	datad => \ALT_INV_Input2[11]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_11_8|G_i_k|process_0~0_combout\);

-- Location: LABCELL_X60_Y3_N39
\GP_11_8|G_i_k|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_11_8|G_i_k|process_0~1_combout\ = ( !\GP_11_8|G_i_k|process_0~0_combout\ & ( (!\GP_9_6|G_i_k|process_0~1_combout\) # (!\sum_carry_12|Sum|Output_xor|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~1_combout\,
	datad => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_11_8|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \GP_11_8|G_i_k|process_0~1_combout\);

-- Location: IOIBUF_X52_Y0_N52
\Input2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(12),
	o => \Input2[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\Input0[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(12),
	o => \Input0[12]~input_o\);

-- Location: MLABCELL_X59_Y3_N12
\GP_12_12|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_12_12|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input2[12]~input_o\ $ (\Input0[12]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input2[12]~input_o\ $ (!\Input0[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[12]~input_o\,
	datad => \ALT_INV_Input0[12]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_12_12|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X61_Y3_N39
\sum_carry_12|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_12|Sum|Output_xor|process_0~1_combout\ = ( \sum_carry_12|Sum|Output_xor|process_0~0_combout\ & ( \GP_9_6|G_i_k|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_12|Sum|Output_xor|process_0~1_combout\);

-- Location: LABCELL_X63_Y2_N24
\sum_carry_12|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_12|Sum|Output_xor|process_0~2_combout\ = ( \GP_2_2|P|Output_xor|process_0~0_combout\ & ( \GP_3_0|G_i_k|process_0~1_combout\ & ( \sum_carry_11|Sum|Output_xor|process_0~0_combout\ ) ) ) # ( !\GP_2_2|P|Output_xor|process_0~0_combout\ & ( 
-- \GP_3_0|G_i_k|process_0~1_combout\ & ( \sum_carry_11|Sum|Output_xor|process_0~0_combout\ ) ) ) # ( \GP_2_2|P|Output_xor|process_0~0_combout\ & ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( (\GP_3_3|P|Output_xor|process_0~0_combout\ & 
-- (\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & ((\GP_3_0|G_i_k|process_0~0_combout\) # (\sum_carry_1|temp_1|Output~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_1|temp_1|ALT_INV_Output~0_combout\,
	datab => \GP_3_3|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_3_0|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_2_2|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_12|Sum|Output_xor|process_0~2_combout\);

-- Location: LABCELL_X60_Y3_N15
\sum_carry_12|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_12|Sum|Output_xor|process_0~3_combout\ = ( \GP_9_6|G_i_k|process_0~0_combout\ & ( (\sum_carry_12|Sum|Output_xor|process_0~0_combout\ & \GP_7_4|G_i_k|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_12|Sum|Output_xor|process_0~3_combout\);

-- Location: LABCELL_X61_Y3_N30
\sum_carry_12|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_12|Sum|Output_xor|process_0~4_combout\ = ( \sum_carry_12|Sum|Output_xor|process_0~2_combout\ & ( \sum_carry_12|Sum|Output_xor|process_0~3_combout\ & ( !\GP_12_12|P|Output_xor|process_0~0_combout\ ) ) ) # ( 
-- !\sum_carry_12|Sum|Output_xor|process_0~2_combout\ & ( \sum_carry_12|Sum|Output_xor|process_0~3_combout\ & ( !\GP_12_12|P|Output_xor|process_0~0_combout\ $ (((\GP_11_8|G_i_k|process_0~1_combout\ & ((!\sum_carry_12|Sum|Output_xor|process_0~1_combout\) # 
-- (\GP_7_4|G_i_k|process_0~2_combout\))))) ) ) ) # ( \sum_carry_12|Sum|Output_xor|process_0~2_combout\ & ( !\sum_carry_12|Sum|Output_xor|process_0~3_combout\ & ( !\GP_12_12|P|Output_xor|process_0~0_combout\ $ (((\GP_11_8|G_i_k|process_0~1_combout\ & 
-- ((!\sum_carry_12|Sum|Output_xor|process_0~1_combout\) # (\GP_7_4|G_i_k|process_0~2_combout\))))) ) ) ) # ( !\sum_carry_12|Sum|Output_xor|process_0~2_combout\ & ( !\sum_carry_12|Sum|Output_xor|process_0~3_combout\ & ( 
-- !\GP_12_12|P|Output_xor|process_0~0_combout\ $ (((\GP_11_8|G_i_k|process_0~1_combout\ & ((!\sum_carry_12|Sum|Output_xor|process_0~1_combout\) # (\GP_7_4|G_i_k|process_0~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100111001001100110011100100110011001110010011100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_11_8|G_i_k|ALT_INV_process_0~1_combout\,
	datab => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_7_4|G_i_k|ALT_INV_process_0~2_combout\,
	datad => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	datae => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	dataf => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~3_combout\,
	combout => \sum_carry_12|Sum|Output_xor|process_0~4_combout\);

-- Location: IOIBUF_X54_Y0_N1
\Input0[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(13),
	o => \Input0[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Input2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(13),
	o => \Input2[13]~input_o\);

-- Location: MLABCELL_X59_Y3_N18
\GP_13_13|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_13_13|P|Output_xor|process_0~0_combout\ = ( \Carry_in~input_o\ & ( !\Input0[13]~input_o\ $ (\Input2[13]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( !\Input0[13]~input_o\ $ (!\Input2[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[13]~input_o\,
	datab => \ALT_INV_Input2[13]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_13_13|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X61_Y3_N9
\sum_carry_13|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_13|Sum|Output_xor|process_0~0_combout\ = ( \GP_5_5|P|Output_xor|process_0~0_combout\ & ( (\sum_carry_12|Sum|Output_xor|process_0~0_combout\ & (\GP_12_12|P|Output_xor|process_0~0_combout\ & (\GP_7_4|G_i_k|process_0~0_combout\ & 
-- \GP_9_6|G_i_k|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \GP_5_5|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_13|Sum|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N0
\sum_carry_13|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_13|Sum|Output_xor|process_0~2_combout\ = ( \Carry_in~input_o\ & ( (!\Input2[12]~input_o\ & (!\Input0[12]~input_o\ & ((!\Input0[11]~input_o\) # (\Input2[11]~input_o\)))) # (\Input2[12]~input_o\ & (((!\Input0[11]~input_o\) # 
-- (!\Input0[12]~input_o\)) # (\Input2[11]~input_o\))) ) ) # ( !\Carry_in~input_o\ & ( (!\Input2[12]~input_o\ & ((!\Input2[11]~input_o\) # ((!\Input0[11]~input_o\) # (!\Input0[12]~input_o\)))) # (\Input2[12]~input_o\ & (!\Input0[12]~input_o\ & 
-- ((!\Input2[11]~input_o\) # (!\Input0[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011100000111111101110000011011111000011011101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[11]~input_o\,
	datab => \ALT_INV_Input0[11]~input_o\,
	datac => \ALT_INV_Input2[12]~input_o\,
	datad => \ALT_INV_Input0[12]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \sum_carry_13|Sum|Output_xor|process_0~2_combout\);

-- Location: LABCELL_X60_Y3_N18
\sum_carry_13|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_13|Sum|Output_xor|process_0~3_combout\ = ( \GP_9_9|P|I0I1_bar|Output~0_combout\ & ( \sum_carry_13|Sum|Output_xor|process_0~2_combout\ & ( (!\GP_12_12|P|Output_xor|process_0~0_combout\) # ((!\sum_carry_12|Sum|Output_xor|process_0~0_combout\ & 
-- ((!\GP_10_10|P|I0I1_bar|Output~0_combout\) # (!\GP_11_11|P|Output_xor|process_0~0_combout\)))) ) ) ) # ( !\GP_9_9|P|I0I1_bar|Output~0_combout\ & ( \sum_carry_13|Sum|Output_xor|process_0~2_combout\ & ( (!\GP_10_10|P|I0I1_bar|Output~0_combout\) # 
-- ((!\GP_12_12|P|Output_xor|process_0~0_combout\) # (!\GP_11_11|P|Output_xor|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111110101111110011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_10_10|P|I0I1_bar|ALT_INV_Output~0_combout\,
	datab => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_9_9|P|I0I1_bar|ALT_INV_Output~0_combout\,
	dataf => \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	combout => \sum_carry_13|Sum|Output_xor|process_0~3_combout\);

-- Location: LABCELL_X61_Y3_N6
\sum_carry_13|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_13|Sum|Output_xor|process_0~1_combout\ = (\sum_carry_12|Sum|Output_xor|process_0~0_combout\ & (\GP_12_12|P|Output_xor|process_0~0_combout\ & \GP_9_9|P|Output_xor|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_9_9|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_13|Sum|Output_xor|process_0~1_combout\);

-- Location: LABCELL_X61_Y3_N12
\sum_carry_13|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_13|Sum|Output_xor|process_0~4_combout\ = ( \GP_8_5|G_i_k|process_0~1_combout\ & ( \sum_carry_13|Sum|Output_xor|process_0~1_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ $ (((\sum_carry_13|Sum|Output_xor|process_0~3_combout\ & 
-- ((!\sum_carry_13|Sum|Output_xor|process_0~0_combout\) # (\sum_carry_4|Carry_out|process_0~0_combout\))))) ) ) ) # ( !\GP_8_5|G_i_k|process_0~1_combout\ & ( \sum_carry_13|Sum|Output_xor|process_0~1_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ 
-- ) ) ) # ( \GP_8_5|G_i_k|process_0~1_combout\ & ( !\sum_carry_13|Sum|Output_xor|process_0~1_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ $ (((\sum_carry_13|Sum|Output_xor|process_0~3_combout\ & 
-- ((!\sum_carry_13|Sum|Output_xor|process_0~0_combout\) # (\sum_carry_4|Carry_out|process_0~0_combout\))))) ) ) ) # ( !\GP_8_5|G_i_k|process_0~1_combout\ & ( !\sum_carry_13|Sum|Output_xor|process_0~1_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ 
-- $ (((\sum_carry_13|Sum|Output_xor|process_0~3_combout\ & ((!\sum_carry_13|Sum|Output_xor|process_0~0_combout\) # (\sum_carry_4|Carry_out|process_0~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001100101101010100110010110101010101010101010101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_4|Carry_out|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~3_combout\,
	datae => \GP_8_5|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_13|Sum|Output_xor|process_0~4_combout\);

-- Location: LABCELL_X60_Y3_N3
\sum_carry_14|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_14|Sum|Output_xor|process_0~1_combout\ = ( \sum_carry_12|Sum|Output_xor|process_0~0_combout\ & ( (\GP_13_13|P|Output_xor|process_0~0_combout\ & \GP_12_12|P|Output_xor|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_14|Sum|Output_xor|process_0~1_combout\);

-- Location: MLABCELL_X59_Y3_N15
\sum_carry_14|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_14|Sum|Output_xor|process_0~2_combout\ = ( \Input2[13]~input_o\ & ( (!\Input0[12]~input_o\ & (((!\Carry_in~input_o\ & \Input0[13]~input_o\)))) # (\Input0[12]~input_o\ & ((!\Input2[12]~input_o\ & ((\Input0[13]~input_o\))) # (\Input2[12]~input_o\ 
-- & (!\Carry_in~input_o\)))) ) ) # ( !\Input2[13]~input_o\ & ( (!\Input0[12]~input_o\ & (((\Carry_in~input_o\ & \Input0[13]~input_o\)))) # (\Input0[12]~input_o\ & ((!\Input2[12]~input_o\ & (\Carry_in~input_o\)) # (\Input2[12]~input_o\ & 
-- ((\Input0[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100111000000110010011100001100010011100000110001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[12]~input_o\,
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[13]~input_o\,
	datad => \ALT_INV_Input0[12]~input_o\,
	dataf => \ALT_INV_Input2[13]~input_o\,
	combout => \sum_carry_14|Sum|Output_xor|process_0~2_combout\);

-- Location: MLABCELL_X59_Y3_N6
\Input1[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- Input1(11) = !\Carry_in~input_o\ $ (!\Input2[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input2[11]~input_o\,
	combout => Input1(11));

-- Location: LABCELL_X60_Y3_N6
\sum_carry_14|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_14|Sum|Output_xor|process_0~3_combout\ = ( \GP_12_12|P|Output_xor|process_0~0_combout\ & ( \GP_13_13|P|Output_xor|process_0~0_combout\ & ( (!\sum_carry_14|Sum|Output_xor|process_0~2_combout\ & ((!\Input0[11]~input_o\ & ((!Input1(11)) # 
-- (!\GP_10_10|P|I0I1_bar|Output~0_combout\))) # (\Input0[11]~input_o\ & (!Input1(11) & !\GP_10_10|P|I0I1_bar|Output~0_combout\)))) ) ) ) # ( !\GP_12_12|P|Output_xor|process_0~0_combout\ & ( \GP_13_13|P|Output_xor|process_0~0_combout\ & ( 
-- !\sum_carry_14|Sum|Output_xor|process_0~2_combout\ ) ) ) # ( \GP_12_12|P|Output_xor|process_0~0_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ & ( !\sum_carry_14|Sum|Output_xor|process_0~2_combout\ ) ) ) # ( 
-- !\GP_12_12|P|Output_xor|process_0~0_combout\ & ( !\GP_13_13|P|Output_xor|process_0~0_combout\ & ( !\sum_carry_14|Sum|Output_xor|process_0~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datab => \ALT_INV_Input0[11]~input_o\,
	datac => ALT_INV_Input1(11),
	datad => \GP_10_10|P|I0I1_bar|ALT_INV_Output~0_combout\,
	datae => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_14|Sum|Output_xor|process_0~3_combout\);

-- Location: LABCELL_X60_Y3_N24
\sum_carry_14|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_14|Sum|Output_xor|process_0~0_combout\ = ( \GP_7_4|G_i_k|process_0~0_combout\ & ( (\GP_12_12|P|Output_xor|process_0~0_combout\ & (\GP_13_13|P|Output_xor|process_0~0_combout\ & (\GP_9_6|G_i_k|process_0~0_combout\ & 
-- \sum_carry_12|Sum|Output_xor|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_9_6|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_7_4|G_i_k|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_14|Sum|Output_xor|process_0~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\Input2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(14),
	o => \Input2[14]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\Input0[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(14),
	o => \Input0[14]~input_o\);

-- Location: LABCELL_X62_Y2_N9
\GP_14_14|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_14_14|P|Output_xor|process_0~0_combout\ = ( \Input0[14]~input_o\ & ( !\Input2[14]~input_o\ $ (\Carry_in~input_o\) ) ) # ( !\Input0[14]~input_o\ & ( !\Input2[14]~input_o\ $ (!\Carry_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[14]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input0[14]~input_o\,
	combout => \GP_14_14|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X63_Y2_N15
\sum_carry_5|Carry_out|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_5|Carry_out|process_0~1_combout\ = ( \GP_3_0|G_i_k|process_0~1_combout\ & ( (!\sum_carry_11|Sum|Output_xor|process_0~0_combout\ & !\GP_5_2|G_i_k|process_0~0_combout\) ) ) # ( !\GP_3_0|G_i_k|process_0~1_combout\ & ( 
-- (!\GP_5_2|G_i_k|process_0~0_combout\ & ((!\GP_3_0|G_i_k|process_0~2_combout\) # ((!\sum_carry_11|Sum|Output_xor|process_0~0_combout\) # (!\sum_carry_5|Carry_out|process_0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_3_0|G_i_k|ALT_INV_process_0~2_combout\,
	datab => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_5|Carry_out|ALT_INV_process_0~0_combout\,
	datad => \GP_5_2|G_i_k|ALT_INV_process_0~0_combout\,
	dataf => \GP_3_0|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_5|Carry_out|process_0~1_combout\);

-- Location: LABCELL_X60_Y3_N42
\sum_carry_14|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_14|Sum|Output_xor|process_0~4_combout\ = ( \GP_9_6|G_i_k|process_0~2_combout\ & ( \sum_carry_5|Carry_out|process_0~1_combout\ & ( !\sum_carry_14|Sum|Output_xor|process_0~3_combout\ $ (\GP_14_14|P|Output_xor|process_0~0_combout\) ) ) ) # ( 
-- !\GP_9_6|G_i_k|process_0~2_combout\ & ( \sum_carry_5|Carry_out|process_0~1_combout\ & ( !\GP_14_14|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_14|Sum|Output_xor|process_0~1_combout\ & \sum_carry_14|Sum|Output_xor|process_0~3_combout\))) ) ) ) # ( 
-- \GP_9_6|G_i_k|process_0~2_combout\ & ( !\sum_carry_5|Carry_out|process_0~1_combout\ & ( !\GP_14_14|P|Output_xor|process_0~0_combout\ $ (((\sum_carry_14|Sum|Output_xor|process_0~3_combout\ & !\sum_carry_14|Sum|Output_xor|process_0~0_combout\))) ) ) ) # ( 
-- !\GP_9_6|G_i_k|process_0~2_combout\ & ( !\sum_carry_5|Carry_out|process_0~1_combout\ & ( !\GP_14_14|P|Output_xor|process_0~0_combout\ $ (((!\sum_carry_14|Sum|Output_xor|process_0~1_combout\ & (\sum_carry_14|Sum|Output_xor|process_0~3_combout\ & 
-- !\sum_carry_14|Sum|Output_xor|process_0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100100000110011110011000011011101001000101100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	datab => \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~3_combout\,
	datac => \sum_carry_14|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datae => \GP_9_6|G_i_k|ALT_INV_process_0~2_combout\,
	dataf => \sum_carry_5|Carry_out|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_14|Sum|Output_xor|process_0~4_combout\);

-- Location: IOIBUF_X56_Y0_N52
\Input0[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input0(15),
	o => \Input0[15]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\Input2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2(15),
	o => \Input2[15]~input_o\);

-- Location: LABCELL_X62_Y2_N21
\GP_15_15|P|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_15_15|P|Output_xor|process_0~0_combout\ = ( \Input2[15]~input_o\ & ( !\Input0[15]~input_o\ $ (\Carry_in~input_o\) ) ) # ( !\Input2[15]~input_o\ & ( !\Input0[15]~input_o\ $ (!\Carry_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[15]~input_o\,
	datac => \ALT_INV_Carry_in~input_o\,
	dataf => \ALT_INV_Input2[15]~input_o\,
	combout => \GP_15_15|P|Output_xor|process_0~0_combout\);

-- Location: LABCELL_X60_Y3_N51
\sum_carry_15|Sum|Output_xor|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Sum|Output_xor|process_0~2_combout\ = ( \GP_11_11|P|Output_xor|process_0~0_combout\ & ( (!\GP_15_15|P|Output_xor|process_0~0_combout\ & (\GP_14_14|P|Output_xor|process_0~0_combout\ & (\GP_13_13|P|Output_xor|process_0~0_combout\ & 
-- \GP_12_12|P|Output_xor|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \GP_12_12|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_15|Sum|Output_xor|process_0~2_combout\);

-- Location: LABCELL_X62_Y2_N12
\GP_14_14|P|I0I1_bar|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_14_14|P|I0I1_bar|Output~0_combout\ = ( \Input0[14]~input_o\ & ( !\Carry_in~input_o\ $ (!\Input2[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input2[14]~input_o\,
	dataf => \ALT_INV_Input0[14]~input_o\,
	combout => \GP_14_14|P|I0I1_bar|Output~0_combout\);

-- Location: MLABCELL_X59_Y3_N27
\sum_carry_15|Carry_out|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~1_combout\ = ( \Carry_in~input_o\ & ( (!\Input2[13]~input_o\ & (\Input2[12]~input_o\ & (!\Input0[13]~input_o\ & !\Input0[12]~input_o\))) # (\Input2[13]~input_o\ & ((!\Input0[13]~input_o\) # ((\Input2[12]~input_o\ & 
-- !\Input0[12]~input_o\)))) ) ) # ( !\Carry_in~input_o\ & ( (!\Input2[13]~input_o\ & ((!\Input0[13]~input_o\) # ((!\Input2[12]~input_o\ & !\Input0[12]~input_o\)))) # (\Input2[13]~input_o\ & (!\Input2[12]~input_o\ & (!\Input0[13]~input_o\ & 
-- !\Input0[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000001110001001100000111000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[12]~input_o\,
	datab => \ALT_INV_Input2[13]~input_o\,
	datac => \ALT_INV_Input0[13]~input_o\,
	datad => \ALT_INV_Input0[12]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \sum_carry_15|Carry_out|process_0~1_combout\);

-- Location: MLABCELL_X59_Y3_N21
\GP_13_13|P|I0I1_bar|Output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GP_13_13|P|I0I1_bar|Output~0_combout\ = ( \Carry_in~input_o\ & ( (\Input0[13]~input_o\ & !\Input2[13]~input_o\) ) ) # ( !\Carry_in~input_o\ & ( (\Input0[13]~input_o\ & \Input2[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input0[13]~input_o\,
	datac => \ALT_INV_Input2[13]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \GP_13_13|P|I0I1_bar|Output~0_combout\);

-- Location: LABCELL_X60_Y3_N30
\sum_carry_15|Sum|Output_xor|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Sum|Output_xor|process_0~4_combout\ = ( !\GP_15_15|P|Output_xor|process_0~0_combout\ & ( ((\GP_14_14|P|Output_xor|process_0~0_combout\ & (((!\sum_carry_13|Sum|Output_xor|process_0~2_combout\ & \GP_13_13|P|Output_xor|process_0~0_combout\)) # 
-- (\GP_13_13|P|I0I1_bar|Output~0_combout\)))) # (\GP_14_14|P|I0I1_bar|Output~0_combout\) ) ) # ( \GP_15_15|P|Output_xor|process_0~0_combout\ & ( (!\GP_14_14|P|I0I1_bar|Output~0_combout\ & ((!\GP_14_14|P|Output_xor|process_0~0_combout\) # 
-- ((\sum_carry_15|Carry_out|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011101010111100010101000101001110111010101111000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\,
	datab => \GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_15|Carry_out|ALT_INV_process_0~1_combout\,
	datad => \sum_carry_13|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datae => \GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_13_13|P|Output_xor|ALT_INV_process_0~0_combout\,
	datag => \GP_13_13|P|I0I1_bar|ALT_INV_Output~0_combout\,
	combout => \sum_carry_15|Sum|Output_xor|process_0~4_combout\);

-- Location: LABCELL_X61_Y3_N51
\sum_carry_15|Sum|Output_xor|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Sum|Output_xor|process_0~0_combout\ = ( \GP_6_3|G_i_k|process_0~1_combout\ & ( (\GP_10_7|G_i_k|process_0~0_combout\ & ((!\sum_carry_11|Sum|Output_xor|process_0~2_combout\) # ((!\sum_carry_11|Sum|Output_xor|process_0~1_combout\) # 
-- (!\GP_6_6|P|Output_xor|process_0~0_combout\)))) ) ) # ( !\GP_6_3|G_i_k|process_0~1_combout\ & ( (!\sum_carry_11|Sum|Output_xor|process_0~2_combout\ & \GP_10_7|G_i_k|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000110011001100100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datab => \GP_10_7|G_i_k|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_11|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	datad => \GP_6_6|P|Output_xor|ALT_INV_process_0~0_combout\,
	dataf => \GP_6_3|G_i_k|ALT_INV_process_0~1_combout\,
	combout => \sum_carry_15|Sum|Output_xor|process_0~0_combout\);

-- Location: MLABCELL_X59_Y3_N24
\sum_carry_15|Carry_out|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~0_combout\ = ( \Carry_in~input_o\ & ( (!\Input2[12]~input_o\ & (((!\Input2[13]~input_o\ & \Input0[13]~input_o\)) # (\Input0[12]~input_o\))) # (\Input2[12]~input_o\ & (!\Input2[13]~input_o\ & (\Input0[13]~input_o\))) ) ) # 
-- ( !\Carry_in~input_o\ & ( (!\Input2[12]~input_o\ & (\Input2[13]~input_o\ & (\Input0[13]~input_o\))) # (\Input2[12]~input_o\ & (((\Input2[13]~input_o\ & \Input0[13]~input_o\)) # (\Input0[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100001100101011100000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Input2[12]~input_o\,
	datab => \ALT_INV_Input2[13]~input_o\,
	datac => \ALT_INV_Input0[13]~input_o\,
	datad => \ALT_INV_Input0[12]~input_o\,
	dataf => \ALT_INV_Carry_in~input_o\,
	combout => \sum_carry_15|Carry_out|process_0~0_combout\);

-- Location: LABCELL_X60_Y3_N0
\sum_carry_15|Sum|Output_xor|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Sum|Output_xor|process_0~1_combout\ = ( !\GP_14_14|P|I0I1_bar|Output~0_combout\ & ( (!\sum_carry_15|Carry_out|process_0~0_combout\ & (\GP_15_15|P|Output_xor|process_0~0_combout\ & ((!Input1(11)) # (!\Input0[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001000000011000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Input1(11),
	datab => \sum_carry_15|Carry_out|ALT_INV_process_0~0_combout\,
	datac => \GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_Input0[11]~input_o\,
	dataf => \GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\,
	combout => \sum_carry_15|Sum|Output_xor|process_0~1_combout\);

-- Location: LABCELL_X60_Y3_N12
\sum_carry_15|Sum|Output_xor|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Sum|Output_xor|process_0~3_combout\ = ( \GP_11_11|P|Output_xor|process_0~0_combout\ & ( ((!\sum_carry_15|Sum|Output_xor|process_0~0_combout\ & (\sum_carry_15|Sum|Output_xor|process_0~2_combout\)) # 
-- (\sum_carry_15|Sum|Output_xor|process_0~0_combout\ & ((\sum_carry_15|Sum|Output_xor|process_0~1_combout\)))) # (\sum_carry_15|Sum|Output_xor|process_0~4_combout\) ) ) # ( !\GP_11_11|P|Output_xor|process_0~0_combout\ & ( 
-- (((\sum_carry_15|Sum|Output_xor|process_0~2_combout\ & !\sum_carry_15|Sum|Output_xor|process_0~0_combout\)) # (\sum_carry_15|Sum|Output_xor|process_0~1_combout\)) # (\sum_carry_15|Sum|Output_xor|process_0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111111111011100111111111101110011011111110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~2_combout\,
	datab => \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~4_combout\,
	datac => \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_15|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	dataf => \GP_11_11|P|Output_xor|ALT_INV_process_0~0_combout\,
	combout => \sum_carry_15|Sum|Output_xor|process_0~3_combout\);

-- Location: LABCELL_X62_Y2_N54
\sum_carry_15|Carry_out|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~2_combout\ = ( \Input2[15]~input_o\ & ( (!\Carry_in~input_o\ & \Input0[15]~input_o\) ) ) # ( !\Input2[15]~input_o\ & ( (\Carry_in~input_o\ & \Input0[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Carry_in~input_o\,
	datac => \ALT_INV_Input0[15]~input_o\,
	dataf => \ALT_INV_Input2[15]~input_o\,
	combout => \sum_carry_15|Carry_out|process_0~2_combout\);

-- Location: LABCELL_X60_Y3_N54
\sum_carry_15|Carry_out|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~4_combout\ = ( \GP_9_6|G_i_k|process_0~1_combout\ & ( !\GP_14_14|P|I0I1_bar|Output~0_combout\ & ( (!\sum_carry_15|Carry_out|process_0~2_combout\ & (!\sum_carry_12|Sum|Output_xor|process_0~0_combout\ & 
-- (!\GP_11_8|G_i_k|process_0~0_combout\ & !\sum_carry_15|Carry_out|process_0~0_combout\))) ) ) ) # ( !\GP_9_6|G_i_k|process_0~1_combout\ & ( !\GP_14_14|P|I0I1_bar|Output~0_combout\ & ( (!\sum_carry_15|Carry_out|process_0~2_combout\ & 
-- (!\GP_11_8|G_i_k|process_0~0_combout\ & !\sum_carry_15|Carry_out|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sum_carry_15|Carry_out|ALT_INV_process_0~2_combout\,
	datab => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \GP_11_8|G_i_k|ALT_INV_process_0~0_combout\,
	datad => \sum_carry_15|Carry_out|ALT_INV_process_0~0_combout\,
	datae => \GP_9_6|G_i_k|ALT_INV_process_0~1_combout\,
	dataf => \GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\,
	combout => \sum_carry_15|Carry_out|process_0~4_combout\);

-- Location: LABCELL_X60_Y3_N48
\sum_carry_15|Carry_out|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~3_combout\ = ( \GP_14_14|P|I0I1_bar|Output~0_combout\ & ( (!\GP_15_15|P|Output_xor|process_0~0_combout\ & !\sum_carry_15|Carry_out|process_0~2_combout\) ) ) # ( !\GP_14_14|P|I0I1_bar|Output~0_combout\ & ( 
-- (!\sum_carry_15|Carry_out|process_0~2_combout\ & ((!\GP_15_15|P|Output_xor|process_0~0_combout\) # ((!\GP_14_14|P|Output_xor|process_0~0_combout\) # (\sum_carry_15|Carry_out|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_15_15|P|Output_xor|ALT_INV_process_0~0_combout\,
	datab => \GP_14_14|P|Output_xor|ALT_INV_process_0~0_combout\,
	datac => \sum_carry_15|Carry_out|ALT_INV_process_0~1_combout\,
	datad => \sum_carry_15|Carry_out|ALT_INV_process_0~2_combout\,
	dataf => \GP_14_14|P|I0I1_bar|ALT_INV_Output~0_combout\,
	combout => \sum_carry_15|Carry_out|process_0~3_combout\);

-- Location: LABCELL_X61_Y3_N18
\sum_carry_15|Carry_out|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum_carry_15|Carry_out|process_0~5_combout\ = ( \sum_carry_15|Carry_out|process_0~3_combout\ & ( \GP_7_4|G_i_k|process_0~2_combout\ ) ) # ( !\sum_carry_15|Carry_out|process_0~3_combout\ & ( \GP_7_4|G_i_k|process_0~2_combout\ & ( 
-- (\sum_carry_15|Carry_out|process_0~4_combout\ & ((!\sum_carry_12|Sum|Output_xor|process_0~1_combout\) # ((!\GP_7_0|P_i_jG_jMinus1_k|Output~0_combout\ & !\sum_carry_7|temp_1|Output~0_combout\)))) ) ) ) # ( \sum_carry_15|Carry_out|process_0~3_combout\ & ( 
-- !\GP_7_4|G_i_k|process_0~2_combout\ ) ) # ( !\sum_carry_15|Carry_out|process_0~3_combout\ & ( !\GP_7_4|G_i_k|process_0~2_combout\ & ( (!\sum_carry_12|Sum|Output_xor|process_0~1_combout\ & \sum_carry_15|Carry_out|process_0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100001110000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GP_7_0|P_i_jG_jMinus1_k|ALT_INV_Output~0_combout\,
	datab => \sum_carry_12|Sum|Output_xor|ALT_INV_process_0~1_combout\,
	datac => \sum_carry_15|Carry_out|ALT_INV_process_0~4_combout\,
	datad => \sum_carry_7|temp_1|ALT_INV_Output~0_combout\,
	datae => \sum_carry_15|Carry_out|ALT_INV_process_0~3_combout\,
	dataf => \GP_7_4|G_i_k|ALT_INV_process_0~2_combout\,
	combout => \sum_carry_15|Carry_out|process_0~5_combout\);

-- Location: LABCELL_X1_Y9_N0
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


