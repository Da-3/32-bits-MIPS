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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "02/04/2024 17:45:45"

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

ENTITY 	ETAGE_FETCH IS
    PORT (
	pc : IN std_logic_vector(31 DOWNTO 0);
	datain : IN std_logic_vector(31 DOWNTO 0);
	wren_ext : IN std_logic;
	clk : IN std_logic;
	ext_in_hit : IN std_logic;
	tag_ext : OUT std_logic_vector(27 DOWNTO 0);
	inst : OUT std_logic_vector(31 DOWNTO 0);
	inst_1 : OUT std_logic_vector(31 DOWNTO 0);
	ext_out_hit : OUT std_logic;
	valid_ext : OUT std_logic;
	is_tag_equal_ext : OUT std_logic
	);
END ETAGE_FETCH;

-- Design Ports Information
-- tag_ext[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[9]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[11]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[13]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[14]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[15]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[16]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[17]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[19]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[21]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[22]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[23]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[24]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[25]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[26]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tag_ext[27]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[12]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[16]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[18]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[19]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[21]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[23]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[25]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[26]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[27]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[28]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[29]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[30]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[17]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[18]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[19]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[20]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[21]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[23]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[24]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[25]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[26]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[27]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[28]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[29]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[30]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_1[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ext_out_hit	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_ext	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_tag_equal_ext	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ext_in_hit	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren_ext	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[9]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[15]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[16]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[19]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[21]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[22]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[23]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[24]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[25]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[26]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[27]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[28]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[29]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[30]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[31]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ETAGE_FETCH IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_datain : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren_ext : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ext_in_hit : std_logic;
SIGNAL ww_tag_ext : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inst_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ext_out_hit : std_logic;
SIGNAL ww_valid_ext : std_logic;
SIGNAL ww_is_tag_equal_ext : std_logic;
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ext_in_hit~input_o\ : std_logic;
SIGNAL \pc[19]~input_o\ : std_logic;
SIGNAL \pc[20]~input_o\ : std_logic;
SIGNAL \pc[17]~input_o\ : std_logic;
SIGNAL \pc[16]~input_o\ : std_logic;
SIGNAL \pc[21]~input_o\ : std_logic;
SIGNAL \pc[18]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \pc[7]~input_o\ : std_logic;
SIGNAL \pc[4]~input_o\ : std_logic;
SIGNAL \pc[6]~input_o\ : std_logic;
SIGNAL \pc[9]~input_o\ : std_logic;
SIGNAL \pc[5]~input_o\ : std_logic;
SIGNAL \pc[8]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \pc[23]~input_o\ : std_logic;
SIGNAL \pc[24]~input_o\ : std_logic;
SIGNAL \pc[25]~input_o\ : std_logic;
SIGNAL \pc[26]~input_o\ : std_logic;
SIGNAL \pc[22]~input_o\ : std_logic;
SIGNAL \pc[27]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \pc[31]~input_o\ : std_logic;
SIGNAL \pc[29]~input_o\ : std_logic;
SIGNAL \pc[30]~input_o\ : std_logic;
SIGNAL \pc[28]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \pc[13]~input_o\ : std_logic;
SIGNAL \pc[10]~input_o\ : std_logic;
SIGNAL \pc[11]~input_o\ : std_logic;
SIGNAL \pc[14]~input_o\ : std_logic;
SIGNAL \pc[12]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \pc[15]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \is_tag_equal~combout\ : std_logic;
SIGNAL \hit~0_combout\ : std_logic;
SIGNAL \wren_ext~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \pc[0]~input_o\ : std_logic;
SIGNAL \pc[1]~input_o\ : std_logic;
SIGNAL \pc[2]~input_o\ : std_logic;
SIGNAL \pc[3]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \datain[8]~input_o\ : std_logic;
SIGNAL \datain[9]~input_o\ : std_logic;
SIGNAL \datain[10]~input_o\ : std_logic;
SIGNAL \datain[11]~input_o\ : std_logic;
SIGNAL \direct_map|Decoder0~10_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~9_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~8_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~11_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][60]~combout\ : std_logic;
SIGNAL \direct_map|Mux31~2_combout\ : std_logic;
SIGNAL \direct_map|Decoder0~4_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~5_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~7_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~6_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][60]~combout\ : std_logic;
SIGNAL \direct_map|Mux31~1_combout\ : std_logic;
SIGNAL \direct_map|Decoder0~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][60]~combout\ : std_logic;
SIGNAL \direct_map|Mux31~0_combout\ : std_logic;
SIGNAL \direct_map|Decoder0~14_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~12_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~15_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][60]~combout\ : std_logic;
SIGNAL \direct_map|Decoder0~13_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][60]~combout\ : std_logic;
SIGNAL \direct_map|Mux31~3_combout\ : std_logic;
SIGNAL \direct_map|Mux31~4_combout\ : std_logic;
SIGNAL \mux|s[0]~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][59]~combout\ : std_logic;
SIGNAL \direct_map|Mux30~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][59]~combout\ : std_logic;
SIGNAL \direct_map|Mux30~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][59]~combout\ : std_logic;
SIGNAL \direct_map|Mux30~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][59]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][59]~combout\ : std_logic;
SIGNAL \direct_map|Mux30~1_combout\ : std_logic;
SIGNAL \direct_map|Mux30~4_combout\ : std_logic;
SIGNAL \mux|s[1]~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][58]~combout\ : std_logic;
SIGNAL \direct_map|Mux29~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][58]~combout\ : std_logic;
SIGNAL \direct_map|Mux29~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][58]~combout\ : std_logic;
SIGNAL \direct_map|Mux29~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][58]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][58]~combout\ : std_logic;
SIGNAL \direct_map|Mux29~0_combout\ : std_logic;
SIGNAL \direct_map|Mux29~4_combout\ : std_logic;
SIGNAL \mux|s[2]~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][57]~combout\ : std_logic;
SIGNAL \direct_map|Mux28~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][57]~combout\ : std_logic;
SIGNAL \direct_map|Mux28~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][57]~combout\ : std_logic;
SIGNAL \direct_map|Mux28~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][57]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][57]~combout\ : std_logic;
SIGNAL \direct_map|Mux28~0_combout\ : std_logic;
SIGNAL \direct_map|Mux28~4_combout\ : std_logic;
SIGNAL \mux|s[3]~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][56]~combout\ : std_logic;
SIGNAL \direct_map|Mux27~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][56]~combout\ : std_logic;
SIGNAL \direct_map|Mux27~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][56]~combout\ : std_logic;
SIGNAL \direct_map|Mux27~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][56]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][56]~combout\ : std_logic;
SIGNAL \direct_map|Mux27~3_combout\ : std_logic;
SIGNAL \direct_map|Mux27~4_combout\ : std_logic;
SIGNAL \mux|s[4]~4_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][55]~combout\ : std_logic;
SIGNAL \direct_map|Mux26~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][55]~combout\ : std_logic;
SIGNAL \direct_map|Mux26~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][55]~combout\ : std_logic;
SIGNAL \direct_map|Mux26~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][55]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][55]~combout\ : std_logic;
SIGNAL \direct_map|Mux26~3_combout\ : std_logic;
SIGNAL \direct_map|Mux26~4_combout\ : std_logic;
SIGNAL \mux|s[5]~5_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][54]~combout\ : std_logic;
SIGNAL \direct_map|Mux25~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][54]~combout\ : std_logic;
SIGNAL \direct_map|Mux25~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][54]~combout\ : std_logic;
SIGNAL \direct_map|Mux25~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][54]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][54]~combout\ : std_logic;
SIGNAL \direct_map|Mux25~1_combout\ : std_logic;
SIGNAL \direct_map|Mux25~4_combout\ : std_logic;
SIGNAL \mux|s[6]~6_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][53]~combout\ : std_logic;
SIGNAL \direct_map|Mux24~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][53]~combout\ : std_logic;
SIGNAL \direct_map|Mux24~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][53]~combout\ : std_logic;
SIGNAL \direct_map|Mux24~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][53]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][53]~combout\ : std_logic;
SIGNAL \direct_map|Mux24~1_combout\ : std_logic;
SIGNAL \direct_map|Mux24~4_combout\ : std_logic;
SIGNAL \mux|s[7]~7_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][52]~combout\ : std_logic;
SIGNAL \direct_map|Mux23~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][52]~combout\ : std_logic;
SIGNAL \direct_map|Mux23~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][52]~combout\ : std_logic;
SIGNAL \direct_map|Mux23~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][52]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][52]~combout\ : std_logic;
SIGNAL \direct_map|Mux23~0_combout\ : std_logic;
SIGNAL \direct_map|Mux23~4_combout\ : std_logic;
SIGNAL \mux|s[8]~8_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][51]~combout\ : std_logic;
SIGNAL \direct_map|Mux22~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][51]~combout\ : std_logic;
SIGNAL \direct_map|Mux22~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][51]~combout\ : std_logic;
SIGNAL \direct_map|Mux22~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][51]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][51]~combout\ : std_logic;
SIGNAL \direct_map|Mux22~0_combout\ : std_logic;
SIGNAL \direct_map|Mux22~4_combout\ : std_logic;
SIGNAL \mux|s[9]~9_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][50]~combout\ : std_logic;
SIGNAL \direct_map|Mux21~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][50]~combout\ : std_logic;
SIGNAL \direct_map|Mux21~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][50]~combout\ : std_logic;
SIGNAL \direct_map|Mux21~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][50]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][50]~combout\ : std_logic;
SIGNAL \direct_map|Mux21~0_combout\ : std_logic;
SIGNAL \direct_map|Mux21~4_combout\ : std_logic;
SIGNAL \mux|s[10]~10_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][49]~combout\ : std_logic;
SIGNAL \direct_map|Mux20~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][49]~combout\ : std_logic;
SIGNAL \direct_map|Mux20~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][49]~combout\ : std_logic;
SIGNAL \direct_map|Mux20~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][49]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][49]~combout\ : std_logic;
SIGNAL \direct_map|Mux20~0_combout\ : std_logic;
SIGNAL \direct_map|Mux20~4_combout\ : std_logic;
SIGNAL \mux|s[11]~11_combout\ : std_logic;
SIGNAL \datain[12]~input_o\ : std_logic;
SIGNAL \datain[13]~input_o\ : std_logic;
SIGNAL \datain[14]~input_o\ : std_logic;
SIGNAL \datain[15]~input_o\ : std_logic;
SIGNAL \datain[16]~input_o\ : std_logic;
SIGNAL \datain[17]~input_o\ : std_logic;
SIGNAL \datain[18]~input_o\ : std_logic;
SIGNAL \datain[19]~input_o\ : std_logic;
SIGNAL \datain[20]~input_o\ : std_logic;
SIGNAL \datain[21]~input_o\ : std_logic;
SIGNAL \datain[22]~input_o\ : std_logic;
SIGNAL \datain[23]~input_o\ : std_logic;
SIGNAL \datain[24]~input_o\ : std_logic;
SIGNAL \datain[25]~input_o\ : std_logic;
SIGNAL \datain[26]~input_o\ : std_logic;
SIGNAL \datain[27]~input_o\ : std_logic;
SIGNAL \datain[28]~input_o\ : std_logic;
SIGNAL \datain[29]~input_o\ : std_logic;
SIGNAL \datain[30]~input_o\ : std_logic;
SIGNAL \datain[31]~input_o\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][48]~combout\ : std_logic;
SIGNAL \direct_map|Mux19~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][48]~combout\ : std_logic;
SIGNAL \direct_map|Mux19~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][48]~combout\ : std_logic;
SIGNAL \direct_map|Mux19~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][48]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][48]~combout\ : std_logic;
SIGNAL \direct_map|Mux19~1_combout\ : std_logic;
SIGNAL \direct_map|Mux19~4_combout\ : std_logic;
SIGNAL \mux|s[12]~12_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][47]~combout\ : std_logic;
SIGNAL \direct_map|Mux18~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][47]~combout\ : std_logic;
SIGNAL \direct_map|Mux18~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][47]~combout\ : std_logic;
SIGNAL \direct_map|Mux18~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][47]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][47]~combout\ : std_logic;
SIGNAL \direct_map|Mux18~3_combout\ : std_logic;
SIGNAL \direct_map|Mux18~4_combout\ : std_logic;
SIGNAL \mux|s[13]~13_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][46]~combout\ : std_logic;
SIGNAL \direct_map|Mux17~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][46]~combout\ : std_logic;
SIGNAL \direct_map|Mux17~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][46]~combout\ : std_logic;
SIGNAL \direct_map|Mux17~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][46]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][46]~combout\ : std_logic;
SIGNAL \direct_map|Mux17~0_combout\ : std_logic;
SIGNAL \direct_map|Mux17~4_combout\ : std_logic;
SIGNAL \mux|s[14]~14_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][45]~combout\ : std_logic;
SIGNAL \direct_map|Mux16~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][45]~combout\ : std_logic;
SIGNAL \direct_map|Mux16~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][45]~combout\ : std_logic;
SIGNAL \direct_map|Mux16~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][45]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][45]~combout\ : std_logic;
SIGNAL \direct_map|Mux16~2_combout\ : std_logic;
SIGNAL \direct_map|Mux16~4_combout\ : std_logic;
SIGNAL \mux|s[15]~15_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][44]~combout\ : std_logic;
SIGNAL \direct_map|Mux15~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][44]~combout\ : std_logic;
SIGNAL \direct_map|Mux15~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][44]~combout\ : std_logic;
SIGNAL \direct_map|Mux15~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][44]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][44]~combout\ : std_logic;
SIGNAL \direct_map|Mux15~2_combout\ : std_logic;
SIGNAL \direct_map|Mux15~4_combout\ : std_logic;
SIGNAL \mux|s[16]~16_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][43]~combout\ : std_logic;
SIGNAL \direct_map|Mux14~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][43]~combout\ : std_logic;
SIGNAL \direct_map|Mux14~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][43]~combout\ : std_logic;
SIGNAL \direct_map|Mux14~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][43]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][43]~combout\ : std_logic;
SIGNAL \direct_map|Mux14~3_combout\ : std_logic;
SIGNAL \direct_map|Mux14~4_combout\ : std_logic;
SIGNAL \mux|s[17]~17_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][42]~combout\ : std_logic;
SIGNAL \direct_map|Mux13~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][42]~combout\ : std_logic;
SIGNAL \direct_map|Mux13~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][42]~combout\ : std_logic;
SIGNAL \direct_map|Mux13~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][42]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][42]~combout\ : std_logic;
SIGNAL \direct_map|Mux13~1_combout\ : std_logic;
SIGNAL \direct_map|Mux13~4_combout\ : std_logic;
SIGNAL \mux|s[18]~18_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][41]~combout\ : std_logic;
SIGNAL \direct_map|Mux12~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][41]~combout\ : std_logic;
SIGNAL \direct_map|Mux12~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][41]~combout\ : std_logic;
SIGNAL \direct_map|Mux12~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][41]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][41]~combout\ : std_logic;
SIGNAL \direct_map|Mux12~1_combout\ : std_logic;
SIGNAL \direct_map|Mux12~4_combout\ : std_logic;
SIGNAL \mux|s[19]~19_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][40]~combout\ : std_logic;
SIGNAL \direct_map|Mux11~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][40]~combout\ : std_logic;
SIGNAL \direct_map|Mux11~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][40]~combout\ : std_logic;
SIGNAL \direct_map|Mux11~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][40]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][40]~combout\ : std_logic;
SIGNAL \direct_map|Mux11~2_combout\ : std_logic;
SIGNAL \direct_map|Mux11~4_combout\ : std_logic;
SIGNAL \mux|s[20]~20_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][39]~combout\ : std_logic;
SIGNAL \direct_map|Mux10~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][39]~combout\ : std_logic;
SIGNAL \direct_map|Mux10~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][39]~combout\ : std_logic;
SIGNAL \direct_map|Mux10~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][39]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][39]~combout\ : std_logic;
SIGNAL \direct_map|Mux10~3_combout\ : std_logic;
SIGNAL \direct_map|Mux10~4_combout\ : std_logic;
SIGNAL \mux|s[21]~21_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][38]~combout\ : std_logic;
SIGNAL \direct_map|Mux9~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][38]~combout\ : std_logic;
SIGNAL \direct_map|Mux9~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][38]~combout\ : std_logic;
SIGNAL \direct_map|Mux9~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][38]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][38]~combout\ : std_logic;
SIGNAL \direct_map|Mux9~3_combout\ : std_logic;
SIGNAL \direct_map|Mux9~4_combout\ : std_logic;
SIGNAL \mux|s[22]~22_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][37]~combout\ : std_logic;
SIGNAL \direct_map|Mux8~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][37]~combout\ : std_logic;
SIGNAL \direct_map|Mux8~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][37]~combout\ : std_logic;
SIGNAL \direct_map|Mux8~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][37]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][37]~combout\ : std_logic;
SIGNAL \direct_map|Mux8~0_combout\ : std_logic;
SIGNAL \direct_map|Mux8~4_combout\ : std_logic;
SIGNAL \mux|s[23]~23_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][36]~combout\ : std_logic;
SIGNAL \direct_map|Mux7~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][36]~combout\ : std_logic;
SIGNAL \direct_map|Mux7~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][36]~combout\ : std_logic;
SIGNAL \direct_map|Mux7~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][36]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][36]~combout\ : std_logic;
SIGNAL \direct_map|Mux7~1_combout\ : std_logic;
SIGNAL \direct_map|Mux7~4_combout\ : std_logic;
SIGNAL \mux|s[24]~24_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][35]~combout\ : std_logic;
SIGNAL \direct_map|Mux6~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][35]~combout\ : std_logic;
SIGNAL \direct_map|Mux6~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][35]~combout\ : std_logic;
SIGNAL \direct_map|Mux6~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][35]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][35]~combout\ : std_logic;
SIGNAL \direct_map|Mux6~1_combout\ : std_logic;
SIGNAL \direct_map|Mux6~4_combout\ : std_logic;
SIGNAL \mux|s[25]~25_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][34]~combout\ : std_logic;
SIGNAL \direct_map|Mux5~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][34]~combout\ : std_logic;
SIGNAL \direct_map|Mux5~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][34]~combout\ : std_logic;
SIGNAL \direct_map|Mux5~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][34]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][34]~combout\ : std_logic;
SIGNAL \direct_map|Mux5~1_combout\ : std_logic;
SIGNAL \direct_map|Mux5~4_combout\ : std_logic;
SIGNAL \mux|s[26]~26_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][33]~combout\ : std_logic;
SIGNAL \direct_map|Mux4~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][33]~combout\ : std_logic;
SIGNAL \direct_map|Mux4~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][33]~combout\ : std_logic;
SIGNAL \direct_map|Mux4~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][33]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][33]~combout\ : std_logic;
SIGNAL \direct_map|Mux4~1_combout\ : std_logic;
SIGNAL \direct_map|Mux4~4_combout\ : std_logic;
SIGNAL \mux|s[27]~27_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][32]~combout\ : std_logic;
SIGNAL \direct_map|Mux3~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][32]~combout\ : std_logic;
SIGNAL \direct_map|Mux3~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][32]~combout\ : std_logic;
SIGNAL \direct_map|Mux3~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][32]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][32]~combout\ : std_logic;
SIGNAL \direct_map|Mux3~3_combout\ : std_logic;
SIGNAL \direct_map|Mux3~4_combout\ : std_logic;
SIGNAL \mux|s[28]~28_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][31]~combout\ : std_logic;
SIGNAL \direct_map|Mux2~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][31]~combout\ : std_logic;
SIGNAL \direct_map|Mux2~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][31]~combout\ : std_logic;
SIGNAL \direct_map|Mux2~0_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][31]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][31]~combout\ : std_logic;
SIGNAL \direct_map|Mux2~1_combout\ : std_logic;
SIGNAL \direct_map|Mux2~4_combout\ : std_logic;
SIGNAL \mux|s[29]~29_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][30]~combout\ : std_logic;
SIGNAL \direct_map|Mux1~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][30]~combout\ : std_logic;
SIGNAL \direct_map|Mux1~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][30]~combout\ : std_logic;
SIGNAL \direct_map|Mux1~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][30]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][30]~combout\ : std_logic;
SIGNAL \direct_map|Mux1~0_combout\ : std_logic;
SIGNAL \direct_map|Mux1~4_combout\ : std_logic;
SIGNAL \mux|s[30]~30_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[10][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[14][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[2][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[6][29]~combout\ : std_logic;
SIGNAL \direct_map|Mux0~2_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[11][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[3][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[15][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[7][29]~combout\ : std_logic;
SIGNAL \direct_map|Mux0~3_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[5][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[9][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[1][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[13][29]~combout\ : std_logic;
SIGNAL \direct_map|Mux0~1_combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[4][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[0][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[12][29]~combout\ : std_logic;
SIGNAL \direct_map|cach_instruction[8][29]~combout\ : std_logic;
SIGNAL \direct_map|Mux0~0_combout\ : std_logic;
SIGNAL \direct_map|Mux0~4_combout\ : std_logic;
SIGNAL \mux|s[31]~31_combout\ : std_logic;
SIGNAL \U1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \direct_map|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_hit~0_combout\ : std_logic;
SIGNAL \U1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][55]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][56]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][57]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][58]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][59]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][60]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][60]~combout\ : std_logic;
SIGNAL \ALT_INV_is_tag_equal~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~15_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~14_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~13_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~12_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~11_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~10_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~9_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][47]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][48]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][49]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][50]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][51]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][52]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][53]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][54]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][39]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][40]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][41]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][42]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][43]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][44]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][45]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][46]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][31]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][32]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][33]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][34]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][35]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][36]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][37]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][38]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][38]~combout\ : std_logic;
SIGNAL \ALT_INV_pc[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ext_in_hit~input_o\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[7][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[3][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[6][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[2][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[5][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[1][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[4][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[0][29]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[15][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[14][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[13][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[12][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[11][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[10][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[9][30]~combout\ : std_logic;
SIGNAL \direct_map|ALT_INV_cach_instruction[8][30]~combout\ : std_logic;

BEGIN

ww_pc <= pc;
ww_datain <= datain;
ww_wren_ext <= wren_ext;
ww_clk <= clk;
ww_ext_in_hit <= ext_in_hit;
tag_ext <= ww_tag_ext;
inst <= ww_inst;
inst_1 <= ww_inst_1;
ext_out_hit <= ww_ext_out_hit;
valid_ext <= ww_valid_ext;
is_tag_equal_ext <= ww_is_tag_equal_ext;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \datain[11]~input_o\ & \datain[10]~input_o\ & \datain[9]~input_o\ & \datain[8]~input_o\ & \datain[7]~input_o\ & \datain[6]~input_o\
& \datain[5]~input_o\ & \datain[4]~input_o\ & \datain[3]~input_o\ & \datain[2]~input_o\ & \datain[1]~input_o\ & \datain[0]~input_o\);

\U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pc[4]~input_o\ & \pc[3]~input_o\ & \pc[2]~input_o\ & \pc[1]~input_o\ & \pc[0]~input_o\);

\U1|altsyncram_component|auto_generated|q_a\(0) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U1|altsyncram_component|auto_generated|q_a\(1) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U1|altsyncram_component|auto_generated|q_a\(2) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U1|altsyncram_component|auto_generated|q_a\(3) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U1|altsyncram_component|auto_generated|q_a\(4) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U1|altsyncram_component|auto_generated|q_a\(5) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U1|altsyncram_component|auto_generated|q_a\(6) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U1|altsyncram_component|auto_generated|q_a\(7) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U1|altsyncram_component|auto_generated|q_a\(8) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U1|altsyncram_component|auto_generated|q_a\(9) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U1|altsyncram_component|auto_generated|q_a\(10) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U1|altsyncram_component|auto_generated|q_a\(11) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\datain[31]~input_o\ & \datain[30]~input_o\ & \datain[29]~input_o\ & \datain[28]~input_o\ & \datain[27]~input_o\ & \datain[26]~input_o\ & \datain[25]~input_o\ & 
\datain[24]~input_o\ & \datain[23]~input_o\ & \datain[22]~input_o\ & \datain[21]~input_o\ & \datain[20]~input_o\ & \datain[19]~input_o\ & \datain[18]~input_o\ & \datain[17]~input_o\ & \datain[16]~input_o\ & \datain[15]~input_o\ & \datain[14]~input_o\ & 
\datain[13]~input_o\ & \datain[12]~input_o\);

\U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\pc[4]~input_o\ & \pc[3]~input_o\ & \pc[2]~input_o\ & \pc[1]~input_o\ & \pc[0]~input_o\);

\U1|altsyncram_component|auto_generated|q_a\(12) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\U1|altsyncram_component|auto_generated|q_a\(13) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\U1|altsyncram_component|auto_generated|q_a\(14) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\U1|altsyncram_component|auto_generated|q_a\(15) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\U1|altsyncram_component|auto_generated|q_a\(16) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\U1|altsyncram_component|auto_generated|q_a\(17) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\U1|altsyncram_component|auto_generated|q_a\(18) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\U1|altsyncram_component|auto_generated|q_a\(19) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\U1|altsyncram_component|auto_generated|q_a\(20) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\U1|altsyncram_component|auto_generated|q_a\(21) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);
\U1|altsyncram_component|auto_generated|q_a\(22) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(10);
\U1|altsyncram_component|auto_generated|q_a\(23) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(11);
\U1|altsyncram_component|auto_generated|q_a\(24) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(12);
\U1|altsyncram_component|auto_generated|q_a\(25) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(13);
\U1|altsyncram_component|auto_generated|q_a\(26) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(14);
\U1|altsyncram_component|auto_generated|q_a\(27) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(15);
\U1|altsyncram_component|auto_generated|q_a\(28) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(16);
\U1|altsyncram_component|auto_generated|q_a\(29) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(17);
\U1|altsyncram_component|auto_generated|q_a\(30) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(18);
\U1|altsyncram_component|auto_generated|q_a\(31) <= \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(19);
\direct_map|ALT_INV_Mux20~1_combout\ <= NOT \direct_map|Mux20~1_combout\;
\direct_map|ALT_INV_Mux20~0_combout\ <= NOT \direct_map|Mux20~0_combout\;
\direct_map|ALT_INV_Mux21~4_combout\ <= NOT \direct_map|Mux21~4_combout\;
\direct_map|ALT_INV_Mux21~3_combout\ <= NOT \direct_map|Mux21~3_combout\;
\direct_map|ALT_INV_Mux21~2_combout\ <= NOT \direct_map|Mux21~2_combout\;
\direct_map|ALT_INV_Mux21~1_combout\ <= NOT \direct_map|Mux21~1_combout\;
\direct_map|ALT_INV_Mux21~0_combout\ <= NOT \direct_map|Mux21~0_combout\;
\direct_map|ALT_INV_Mux22~4_combout\ <= NOT \direct_map|Mux22~4_combout\;
\direct_map|ALT_INV_Mux22~3_combout\ <= NOT \direct_map|Mux22~3_combout\;
\direct_map|ALT_INV_Mux22~2_combout\ <= NOT \direct_map|Mux22~2_combout\;
\direct_map|ALT_INV_Mux22~1_combout\ <= NOT \direct_map|Mux22~1_combout\;
\direct_map|ALT_INV_Mux22~0_combout\ <= NOT \direct_map|Mux22~0_combout\;
\direct_map|ALT_INV_Mux23~4_combout\ <= NOT \direct_map|Mux23~4_combout\;
\direct_map|ALT_INV_Mux23~3_combout\ <= NOT \direct_map|Mux23~3_combout\;
\direct_map|ALT_INV_Mux23~2_combout\ <= NOT \direct_map|Mux23~2_combout\;
\direct_map|ALT_INV_Mux23~1_combout\ <= NOT \direct_map|Mux23~1_combout\;
\direct_map|ALT_INV_Mux23~0_combout\ <= NOT \direct_map|Mux23~0_combout\;
\direct_map|ALT_INV_Mux24~4_combout\ <= NOT \direct_map|Mux24~4_combout\;
\direct_map|ALT_INV_Mux24~3_combout\ <= NOT \direct_map|Mux24~3_combout\;
\direct_map|ALT_INV_Mux24~2_combout\ <= NOT \direct_map|Mux24~2_combout\;
\direct_map|ALT_INV_Mux24~1_combout\ <= NOT \direct_map|Mux24~1_combout\;
\direct_map|ALT_INV_Mux24~0_combout\ <= NOT \direct_map|Mux24~0_combout\;
\direct_map|ALT_INV_Mux25~4_combout\ <= NOT \direct_map|Mux25~4_combout\;
\direct_map|ALT_INV_Mux25~3_combout\ <= NOT \direct_map|Mux25~3_combout\;
\direct_map|ALT_INV_Mux25~2_combout\ <= NOT \direct_map|Mux25~2_combout\;
\direct_map|ALT_INV_Mux25~1_combout\ <= NOT \direct_map|Mux25~1_combout\;
\direct_map|ALT_INV_Mux25~0_combout\ <= NOT \direct_map|Mux25~0_combout\;
\direct_map|ALT_INV_Mux26~4_combout\ <= NOT \direct_map|Mux26~4_combout\;
\direct_map|ALT_INV_Mux26~3_combout\ <= NOT \direct_map|Mux26~3_combout\;
\direct_map|ALT_INV_Mux26~2_combout\ <= NOT \direct_map|Mux26~2_combout\;
\direct_map|ALT_INV_Mux26~1_combout\ <= NOT \direct_map|Mux26~1_combout\;
\direct_map|ALT_INV_Mux26~0_combout\ <= NOT \direct_map|Mux26~0_combout\;
\direct_map|ALT_INV_Mux27~4_combout\ <= NOT \direct_map|Mux27~4_combout\;
\direct_map|ALT_INV_Mux27~3_combout\ <= NOT \direct_map|Mux27~3_combout\;
\direct_map|ALT_INV_Mux27~2_combout\ <= NOT \direct_map|Mux27~2_combout\;
\direct_map|ALT_INV_Mux27~1_combout\ <= NOT \direct_map|Mux27~1_combout\;
\direct_map|ALT_INV_Mux27~0_combout\ <= NOT \direct_map|Mux27~0_combout\;
\direct_map|ALT_INV_Mux28~4_combout\ <= NOT \direct_map|Mux28~4_combout\;
\direct_map|ALT_INV_Mux28~3_combout\ <= NOT \direct_map|Mux28~3_combout\;
\direct_map|ALT_INV_Mux28~2_combout\ <= NOT \direct_map|Mux28~2_combout\;
\direct_map|ALT_INV_Mux28~1_combout\ <= NOT \direct_map|Mux28~1_combout\;
\direct_map|ALT_INV_Mux28~0_combout\ <= NOT \direct_map|Mux28~0_combout\;
\direct_map|ALT_INV_Mux29~4_combout\ <= NOT \direct_map|Mux29~4_combout\;
\direct_map|ALT_INV_Mux29~3_combout\ <= NOT \direct_map|Mux29~3_combout\;
\direct_map|ALT_INV_Mux29~2_combout\ <= NOT \direct_map|Mux29~2_combout\;
\direct_map|ALT_INV_Mux29~1_combout\ <= NOT \direct_map|Mux29~1_combout\;
\direct_map|ALT_INV_Mux29~0_combout\ <= NOT \direct_map|Mux29~0_combout\;
\direct_map|ALT_INV_Mux30~4_combout\ <= NOT \direct_map|Mux30~4_combout\;
\direct_map|ALT_INV_Mux30~3_combout\ <= NOT \direct_map|Mux30~3_combout\;
\direct_map|ALT_INV_Mux30~2_combout\ <= NOT \direct_map|Mux30~2_combout\;
\direct_map|ALT_INV_Mux30~1_combout\ <= NOT \direct_map|Mux30~1_combout\;
\direct_map|ALT_INV_Mux30~0_combout\ <= NOT \direct_map|Mux30~0_combout\;
\direct_map|ALT_INV_Mux31~4_combout\ <= NOT \direct_map|Mux31~4_combout\;
\direct_map|ALT_INV_Mux31~3_combout\ <= NOT \direct_map|Mux31~3_combout\;
\direct_map|ALT_INV_Mux31~2_combout\ <= NOT \direct_map|Mux31~2_combout\;
\direct_map|ALT_INV_Mux31~1_combout\ <= NOT \direct_map|Mux31~1_combout\;
\direct_map|ALT_INV_Mux31~0_combout\ <= NOT \direct_map|Mux31~0_combout\;
\ALT_INV_hit~0_combout\ <= NOT \hit~0_combout\;
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \U1|altsyncram_component|auto_generated|q_a\(13);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \U1|altsyncram_component|auto_generated|q_a\(14);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \U1|altsyncram_component|auto_generated|q_a\(15);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16) <= NOT \U1|altsyncram_component|auto_generated|q_a\(16);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17) <= NOT \U1|altsyncram_component|auto_generated|q_a\(17);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18) <= NOT \U1|altsyncram_component|auto_generated|q_a\(18);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19) <= NOT \U1|altsyncram_component|auto_generated|q_a\(19);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20) <= NOT \U1|altsyncram_component|auto_generated|q_a\(20);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21) <= NOT \U1|altsyncram_component|auto_generated|q_a\(21);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22) <= NOT \U1|altsyncram_component|auto_generated|q_a\(22);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23) <= NOT \U1|altsyncram_component|auto_generated|q_a\(23);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24) <= NOT \U1|altsyncram_component|auto_generated|q_a\(24);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25) <= NOT \U1|altsyncram_component|auto_generated|q_a\(25);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26) <= NOT \U1|altsyncram_component|auto_generated|q_a\(26);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27) <= NOT \U1|altsyncram_component|auto_generated|q_a\(27);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28) <= NOT \U1|altsyncram_component|auto_generated|q_a\(28);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29) <= NOT \U1|altsyncram_component|auto_generated|q_a\(29);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30) <= NOT \U1|altsyncram_component|auto_generated|q_a\(30);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31) <= NOT \U1|altsyncram_component|auto_generated|q_a\(31);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \U1|altsyncram_component|auto_generated|q_a\(12);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \U1|altsyncram_component|auto_generated|q_a\(1);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \U1|altsyncram_component|auto_generated|q_a\(2);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \U1|altsyncram_component|auto_generated|q_a\(3);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \U1|altsyncram_component|auto_generated|q_a\(4);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \U1|altsyncram_component|auto_generated|q_a\(5);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \U1|altsyncram_component|auto_generated|q_a\(6);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \U1|altsyncram_component|auto_generated|q_a\(7);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \U1|altsyncram_component|auto_generated|q_a\(8);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \U1|altsyncram_component|auto_generated|q_a\(9);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \U1|altsyncram_component|auto_generated|q_a\(10);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \U1|altsyncram_component|auto_generated|q_a\(11);
\U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \U1|altsyncram_component|auto_generated|q_a\(0);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\direct_map|ALT_INV_Mux0~4_combout\ <= NOT \direct_map|Mux0~4_combout\;
\direct_map|ALT_INV_Mux0~3_combout\ <= NOT \direct_map|Mux0~3_combout\;
\direct_map|ALT_INV_Mux0~2_combout\ <= NOT \direct_map|Mux0~2_combout\;
\direct_map|ALT_INV_Mux0~1_combout\ <= NOT \direct_map|Mux0~1_combout\;
\direct_map|ALT_INV_Mux0~0_combout\ <= NOT \direct_map|Mux0~0_combout\;
\direct_map|ALT_INV_Mux1~4_combout\ <= NOT \direct_map|Mux1~4_combout\;
\direct_map|ALT_INV_Mux1~3_combout\ <= NOT \direct_map|Mux1~3_combout\;
\direct_map|ALT_INV_Mux1~2_combout\ <= NOT \direct_map|Mux1~2_combout\;
\direct_map|ALT_INV_Mux1~1_combout\ <= NOT \direct_map|Mux1~1_combout\;
\direct_map|ALT_INV_Mux1~0_combout\ <= NOT \direct_map|Mux1~0_combout\;
\direct_map|ALT_INV_Mux2~4_combout\ <= NOT \direct_map|Mux2~4_combout\;
\direct_map|ALT_INV_Mux2~3_combout\ <= NOT \direct_map|Mux2~3_combout\;
\direct_map|ALT_INV_Mux2~2_combout\ <= NOT \direct_map|Mux2~2_combout\;
\direct_map|ALT_INV_Mux2~1_combout\ <= NOT \direct_map|Mux2~1_combout\;
\direct_map|ALT_INV_Mux2~0_combout\ <= NOT \direct_map|Mux2~0_combout\;
\direct_map|ALT_INV_Mux3~4_combout\ <= NOT \direct_map|Mux3~4_combout\;
\direct_map|ALT_INV_Mux3~3_combout\ <= NOT \direct_map|Mux3~3_combout\;
\direct_map|ALT_INV_Mux3~2_combout\ <= NOT \direct_map|Mux3~2_combout\;
\direct_map|ALT_INV_Mux3~1_combout\ <= NOT \direct_map|Mux3~1_combout\;
\direct_map|ALT_INV_Mux3~0_combout\ <= NOT \direct_map|Mux3~0_combout\;
\direct_map|ALT_INV_Mux4~4_combout\ <= NOT \direct_map|Mux4~4_combout\;
\direct_map|ALT_INV_Mux4~3_combout\ <= NOT \direct_map|Mux4~3_combout\;
\direct_map|ALT_INV_Mux4~2_combout\ <= NOT \direct_map|Mux4~2_combout\;
\direct_map|ALT_INV_Mux4~1_combout\ <= NOT \direct_map|Mux4~1_combout\;
\direct_map|ALT_INV_Mux4~0_combout\ <= NOT \direct_map|Mux4~0_combout\;
\direct_map|ALT_INV_Mux5~4_combout\ <= NOT \direct_map|Mux5~4_combout\;
\direct_map|ALT_INV_Mux5~3_combout\ <= NOT \direct_map|Mux5~3_combout\;
\direct_map|ALT_INV_Mux5~2_combout\ <= NOT \direct_map|Mux5~2_combout\;
\direct_map|ALT_INV_Mux5~1_combout\ <= NOT \direct_map|Mux5~1_combout\;
\direct_map|ALT_INV_Mux5~0_combout\ <= NOT \direct_map|Mux5~0_combout\;
\direct_map|ALT_INV_Mux6~4_combout\ <= NOT \direct_map|Mux6~4_combout\;
\direct_map|ALT_INV_Mux6~3_combout\ <= NOT \direct_map|Mux6~3_combout\;
\direct_map|ALT_INV_Mux6~2_combout\ <= NOT \direct_map|Mux6~2_combout\;
\direct_map|ALT_INV_Mux6~1_combout\ <= NOT \direct_map|Mux6~1_combout\;
\direct_map|ALT_INV_Mux6~0_combout\ <= NOT \direct_map|Mux6~0_combout\;
\direct_map|ALT_INV_Mux7~4_combout\ <= NOT \direct_map|Mux7~4_combout\;
\direct_map|ALT_INV_Mux7~3_combout\ <= NOT \direct_map|Mux7~3_combout\;
\direct_map|ALT_INV_Mux7~2_combout\ <= NOT \direct_map|Mux7~2_combout\;
\direct_map|ALT_INV_Mux7~1_combout\ <= NOT \direct_map|Mux7~1_combout\;
\direct_map|ALT_INV_Mux7~0_combout\ <= NOT \direct_map|Mux7~0_combout\;
\direct_map|ALT_INV_Mux8~4_combout\ <= NOT \direct_map|Mux8~4_combout\;
\direct_map|ALT_INV_Mux8~3_combout\ <= NOT \direct_map|Mux8~3_combout\;
\direct_map|ALT_INV_Mux8~2_combout\ <= NOT \direct_map|Mux8~2_combout\;
\direct_map|ALT_INV_Mux8~1_combout\ <= NOT \direct_map|Mux8~1_combout\;
\direct_map|ALT_INV_Mux8~0_combout\ <= NOT \direct_map|Mux8~0_combout\;
\direct_map|ALT_INV_Mux9~4_combout\ <= NOT \direct_map|Mux9~4_combout\;
\direct_map|ALT_INV_Mux9~3_combout\ <= NOT \direct_map|Mux9~3_combout\;
\direct_map|ALT_INV_Mux9~2_combout\ <= NOT \direct_map|Mux9~2_combout\;
\direct_map|ALT_INV_Mux9~1_combout\ <= NOT \direct_map|Mux9~1_combout\;
\direct_map|ALT_INV_Mux9~0_combout\ <= NOT \direct_map|Mux9~0_combout\;
\direct_map|ALT_INV_Mux10~4_combout\ <= NOT \direct_map|Mux10~4_combout\;
\direct_map|ALT_INV_Mux10~3_combout\ <= NOT \direct_map|Mux10~3_combout\;
\direct_map|ALT_INV_Mux10~2_combout\ <= NOT \direct_map|Mux10~2_combout\;
\direct_map|ALT_INV_Mux10~1_combout\ <= NOT \direct_map|Mux10~1_combout\;
\direct_map|ALT_INV_Mux10~0_combout\ <= NOT \direct_map|Mux10~0_combout\;
\direct_map|ALT_INV_Mux11~4_combout\ <= NOT \direct_map|Mux11~4_combout\;
\direct_map|ALT_INV_Mux11~3_combout\ <= NOT \direct_map|Mux11~3_combout\;
\direct_map|ALT_INV_Mux11~2_combout\ <= NOT \direct_map|Mux11~2_combout\;
\direct_map|ALT_INV_Mux11~1_combout\ <= NOT \direct_map|Mux11~1_combout\;
\direct_map|ALT_INV_Mux11~0_combout\ <= NOT \direct_map|Mux11~0_combout\;
\direct_map|ALT_INV_Mux12~4_combout\ <= NOT \direct_map|Mux12~4_combout\;
\direct_map|ALT_INV_Mux12~3_combout\ <= NOT \direct_map|Mux12~3_combout\;
\direct_map|ALT_INV_Mux12~2_combout\ <= NOT \direct_map|Mux12~2_combout\;
\direct_map|ALT_INV_Mux12~1_combout\ <= NOT \direct_map|Mux12~1_combout\;
\direct_map|ALT_INV_Mux12~0_combout\ <= NOT \direct_map|Mux12~0_combout\;
\direct_map|ALT_INV_Mux13~4_combout\ <= NOT \direct_map|Mux13~4_combout\;
\direct_map|ALT_INV_Mux13~3_combout\ <= NOT \direct_map|Mux13~3_combout\;
\direct_map|ALT_INV_Mux13~2_combout\ <= NOT \direct_map|Mux13~2_combout\;
\direct_map|ALT_INV_Mux13~1_combout\ <= NOT \direct_map|Mux13~1_combout\;
\direct_map|ALT_INV_Mux13~0_combout\ <= NOT \direct_map|Mux13~0_combout\;
\direct_map|ALT_INV_Mux14~4_combout\ <= NOT \direct_map|Mux14~4_combout\;
\direct_map|ALT_INV_Mux14~3_combout\ <= NOT \direct_map|Mux14~3_combout\;
\direct_map|ALT_INV_Mux14~2_combout\ <= NOT \direct_map|Mux14~2_combout\;
\direct_map|ALT_INV_Mux14~1_combout\ <= NOT \direct_map|Mux14~1_combout\;
\direct_map|ALT_INV_Mux14~0_combout\ <= NOT \direct_map|Mux14~0_combout\;
\direct_map|ALT_INV_Mux15~4_combout\ <= NOT \direct_map|Mux15~4_combout\;
\direct_map|ALT_INV_Mux15~3_combout\ <= NOT \direct_map|Mux15~3_combout\;
\direct_map|ALT_INV_Mux15~2_combout\ <= NOT \direct_map|Mux15~2_combout\;
\direct_map|ALT_INV_Mux15~1_combout\ <= NOT \direct_map|Mux15~1_combout\;
\direct_map|ALT_INV_Mux15~0_combout\ <= NOT \direct_map|Mux15~0_combout\;
\direct_map|ALT_INV_Mux16~4_combout\ <= NOT \direct_map|Mux16~4_combout\;
\direct_map|ALT_INV_Mux16~3_combout\ <= NOT \direct_map|Mux16~3_combout\;
\direct_map|ALT_INV_Mux16~2_combout\ <= NOT \direct_map|Mux16~2_combout\;
\direct_map|ALT_INV_Mux16~1_combout\ <= NOT \direct_map|Mux16~1_combout\;
\direct_map|ALT_INV_Mux16~0_combout\ <= NOT \direct_map|Mux16~0_combout\;
\direct_map|ALT_INV_Mux17~4_combout\ <= NOT \direct_map|Mux17~4_combout\;
\direct_map|ALT_INV_Mux17~3_combout\ <= NOT \direct_map|Mux17~3_combout\;
\direct_map|ALT_INV_Mux17~2_combout\ <= NOT \direct_map|Mux17~2_combout\;
\direct_map|ALT_INV_Mux17~1_combout\ <= NOT \direct_map|Mux17~1_combout\;
\direct_map|ALT_INV_Mux17~0_combout\ <= NOT \direct_map|Mux17~0_combout\;
\direct_map|ALT_INV_Mux18~4_combout\ <= NOT \direct_map|Mux18~4_combout\;
\direct_map|ALT_INV_Mux18~3_combout\ <= NOT \direct_map|Mux18~3_combout\;
\direct_map|ALT_INV_Mux18~2_combout\ <= NOT \direct_map|Mux18~2_combout\;
\direct_map|ALT_INV_Mux18~1_combout\ <= NOT \direct_map|Mux18~1_combout\;
\direct_map|ALT_INV_Mux18~0_combout\ <= NOT \direct_map|Mux18~0_combout\;
\direct_map|ALT_INV_Mux19~4_combout\ <= NOT \direct_map|Mux19~4_combout\;
\direct_map|ALT_INV_Mux19~3_combout\ <= NOT \direct_map|Mux19~3_combout\;
\direct_map|ALT_INV_Mux19~2_combout\ <= NOT \direct_map|Mux19~2_combout\;
\direct_map|ALT_INV_Mux19~1_combout\ <= NOT \direct_map|Mux19~1_combout\;
\direct_map|ALT_INV_Mux19~0_combout\ <= NOT \direct_map|Mux19~0_combout\;
\direct_map|ALT_INV_Mux20~4_combout\ <= NOT \direct_map|Mux20~4_combout\;
\direct_map|ALT_INV_Mux20~3_combout\ <= NOT \direct_map|Mux20~3_combout\;
\direct_map|ALT_INV_Mux20~2_combout\ <= NOT \direct_map|Mux20~2_combout\;
\direct_map|ALT_INV_cach_instruction[10][54]~combout\ <= NOT \direct_map|cach_instruction[10][54]~combout\;
\direct_map|ALT_INV_cach_instruction[9][54]~combout\ <= NOT \direct_map|cach_instruction[9][54]~combout\;
\direct_map|ALT_INV_cach_instruction[8][54]~combout\ <= NOT \direct_map|cach_instruction[8][54]~combout\;
\direct_map|ALT_INV_cach_instruction[7][54]~combout\ <= NOT \direct_map|cach_instruction[7][54]~combout\;
\direct_map|ALT_INV_cach_instruction[6][54]~combout\ <= NOT \direct_map|cach_instruction[6][54]~combout\;
\direct_map|ALT_INV_cach_instruction[5][54]~combout\ <= NOT \direct_map|cach_instruction[5][54]~combout\;
\direct_map|ALT_INV_cach_instruction[4][54]~combout\ <= NOT \direct_map|cach_instruction[4][54]~combout\;
\direct_map|ALT_INV_cach_instruction[3][54]~combout\ <= NOT \direct_map|cach_instruction[3][54]~combout\;
\direct_map|ALT_INV_cach_instruction[2][54]~combout\ <= NOT \direct_map|cach_instruction[2][54]~combout\;
\direct_map|ALT_INV_cach_instruction[1][54]~combout\ <= NOT \direct_map|cach_instruction[1][54]~combout\;
\direct_map|ALT_INV_cach_instruction[0][54]~combout\ <= NOT \direct_map|cach_instruction[0][54]~combout\;
\direct_map|ALT_INV_cach_instruction[15][55]~combout\ <= NOT \direct_map|cach_instruction[15][55]~combout\;
\direct_map|ALT_INV_cach_instruction[11][55]~combout\ <= NOT \direct_map|cach_instruction[11][55]~combout\;
\direct_map|ALT_INV_cach_instruction[7][55]~combout\ <= NOT \direct_map|cach_instruction[7][55]~combout\;
\direct_map|ALT_INV_cach_instruction[3][55]~combout\ <= NOT \direct_map|cach_instruction[3][55]~combout\;
\direct_map|ALT_INV_cach_instruction[14][55]~combout\ <= NOT \direct_map|cach_instruction[14][55]~combout\;
\direct_map|ALT_INV_cach_instruction[10][55]~combout\ <= NOT \direct_map|cach_instruction[10][55]~combout\;
\direct_map|ALT_INV_cach_instruction[6][55]~combout\ <= NOT \direct_map|cach_instruction[6][55]~combout\;
\direct_map|ALT_INV_cach_instruction[2][55]~combout\ <= NOT \direct_map|cach_instruction[2][55]~combout\;
\direct_map|ALT_INV_cach_instruction[13][55]~combout\ <= NOT \direct_map|cach_instruction[13][55]~combout\;
\direct_map|ALT_INV_cach_instruction[9][55]~combout\ <= NOT \direct_map|cach_instruction[9][55]~combout\;
\direct_map|ALT_INV_cach_instruction[5][55]~combout\ <= NOT \direct_map|cach_instruction[5][55]~combout\;
\direct_map|ALT_INV_cach_instruction[1][55]~combout\ <= NOT \direct_map|cach_instruction[1][55]~combout\;
\direct_map|ALT_INV_cach_instruction[12][55]~combout\ <= NOT \direct_map|cach_instruction[12][55]~combout\;
\direct_map|ALT_INV_cach_instruction[8][55]~combout\ <= NOT \direct_map|cach_instruction[8][55]~combout\;
\direct_map|ALT_INV_cach_instruction[4][55]~combout\ <= NOT \direct_map|cach_instruction[4][55]~combout\;
\direct_map|ALT_INV_cach_instruction[0][55]~combout\ <= NOT \direct_map|cach_instruction[0][55]~combout\;
\direct_map|ALT_INV_cach_instruction[15][56]~combout\ <= NOT \direct_map|cach_instruction[15][56]~combout\;
\direct_map|ALT_INV_cach_instruction[14][56]~combout\ <= NOT \direct_map|cach_instruction[14][56]~combout\;
\direct_map|ALT_INV_cach_instruction[13][56]~combout\ <= NOT \direct_map|cach_instruction[13][56]~combout\;
\direct_map|ALT_INV_cach_instruction[12][56]~combout\ <= NOT \direct_map|cach_instruction[12][56]~combout\;
\direct_map|ALT_INV_cach_instruction[11][56]~combout\ <= NOT \direct_map|cach_instruction[11][56]~combout\;
\direct_map|ALT_INV_cach_instruction[10][56]~combout\ <= NOT \direct_map|cach_instruction[10][56]~combout\;
\direct_map|ALT_INV_cach_instruction[9][56]~combout\ <= NOT \direct_map|cach_instruction[9][56]~combout\;
\direct_map|ALT_INV_cach_instruction[8][56]~combout\ <= NOT \direct_map|cach_instruction[8][56]~combout\;
\direct_map|ALT_INV_cach_instruction[7][56]~combout\ <= NOT \direct_map|cach_instruction[7][56]~combout\;
\direct_map|ALT_INV_cach_instruction[6][56]~combout\ <= NOT \direct_map|cach_instruction[6][56]~combout\;
\direct_map|ALT_INV_cach_instruction[5][56]~combout\ <= NOT \direct_map|cach_instruction[5][56]~combout\;
\direct_map|ALT_INV_cach_instruction[4][56]~combout\ <= NOT \direct_map|cach_instruction[4][56]~combout\;
\direct_map|ALT_INV_cach_instruction[3][56]~combout\ <= NOT \direct_map|cach_instruction[3][56]~combout\;
\direct_map|ALT_INV_cach_instruction[2][56]~combout\ <= NOT \direct_map|cach_instruction[2][56]~combout\;
\direct_map|ALT_INV_cach_instruction[1][56]~combout\ <= NOT \direct_map|cach_instruction[1][56]~combout\;
\direct_map|ALT_INV_cach_instruction[0][56]~combout\ <= NOT \direct_map|cach_instruction[0][56]~combout\;
\direct_map|ALT_INV_cach_instruction[15][57]~combout\ <= NOT \direct_map|cach_instruction[15][57]~combout\;
\direct_map|ALT_INV_cach_instruction[11][57]~combout\ <= NOT \direct_map|cach_instruction[11][57]~combout\;
\direct_map|ALT_INV_cach_instruction[7][57]~combout\ <= NOT \direct_map|cach_instruction[7][57]~combout\;
\direct_map|ALT_INV_cach_instruction[3][57]~combout\ <= NOT \direct_map|cach_instruction[3][57]~combout\;
\direct_map|ALT_INV_cach_instruction[14][57]~combout\ <= NOT \direct_map|cach_instruction[14][57]~combout\;
\direct_map|ALT_INV_cach_instruction[10][57]~combout\ <= NOT \direct_map|cach_instruction[10][57]~combout\;
\direct_map|ALT_INV_cach_instruction[6][57]~combout\ <= NOT \direct_map|cach_instruction[6][57]~combout\;
\direct_map|ALT_INV_cach_instruction[2][57]~combout\ <= NOT \direct_map|cach_instruction[2][57]~combout\;
\direct_map|ALT_INV_cach_instruction[13][57]~combout\ <= NOT \direct_map|cach_instruction[13][57]~combout\;
\direct_map|ALT_INV_cach_instruction[9][57]~combout\ <= NOT \direct_map|cach_instruction[9][57]~combout\;
\direct_map|ALT_INV_cach_instruction[5][57]~combout\ <= NOT \direct_map|cach_instruction[5][57]~combout\;
\direct_map|ALT_INV_cach_instruction[1][57]~combout\ <= NOT \direct_map|cach_instruction[1][57]~combout\;
\direct_map|ALT_INV_cach_instruction[12][57]~combout\ <= NOT \direct_map|cach_instruction[12][57]~combout\;
\direct_map|ALT_INV_cach_instruction[8][57]~combout\ <= NOT \direct_map|cach_instruction[8][57]~combout\;
\direct_map|ALT_INV_cach_instruction[4][57]~combout\ <= NOT \direct_map|cach_instruction[4][57]~combout\;
\direct_map|ALT_INV_cach_instruction[0][57]~combout\ <= NOT \direct_map|cach_instruction[0][57]~combout\;
\direct_map|ALT_INV_cach_instruction[15][58]~combout\ <= NOT \direct_map|cach_instruction[15][58]~combout\;
\direct_map|ALT_INV_cach_instruction[14][58]~combout\ <= NOT \direct_map|cach_instruction[14][58]~combout\;
\direct_map|ALT_INV_cach_instruction[13][58]~combout\ <= NOT \direct_map|cach_instruction[13][58]~combout\;
\direct_map|ALT_INV_cach_instruction[12][58]~combout\ <= NOT \direct_map|cach_instruction[12][58]~combout\;
\direct_map|ALT_INV_cach_instruction[11][58]~combout\ <= NOT \direct_map|cach_instruction[11][58]~combout\;
\direct_map|ALT_INV_cach_instruction[10][58]~combout\ <= NOT \direct_map|cach_instruction[10][58]~combout\;
\direct_map|ALT_INV_cach_instruction[9][58]~combout\ <= NOT \direct_map|cach_instruction[9][58]~combout\;
\direct_map|ALT_INV_cach_instruction[8][58]~combout\ <= NOT \direct_map|cach_instruction[8][58]~combout\;
\direct_map|ALT_INV_cach_instruction[7][58]~combout\ <= NOT \direct_map|cach_instruction[7][58]~combout\;
\direct_map|ALT_INV_cach_instruction[6][58]~combout\ <= NOT \direct_map|cach_instruction[6][58]~combout\;
\direct_map|ALT_INV_cach_instruction[5][58]~combout\ <= NOT \direct_map|cach_instruction[5][58]~combout\;
\direct_map|ALT_INV_cach_instruction[4][58]~combout\ <= NOT \direct_map|cach_instruction[4][58]~combout\;
\direct_map|ALT_INV_cach_instruction[3][58]~combout\ <= NOT \direct_map|cach_instruction[3][58]~combout\;
\direct_map|ALT_INV_cach_instruction[2][58]~combout\ <= NOT \direct_map|cach_instruction[2][58]~combout\;
\direct_map|ALT_INV_cach_instruction[1][58]~combout\ <= NOT \direct_map|cach_instruction[1][58]~combout\;
\direct_map|ALT_INV_cach_instruction[0][58]~combout\ <= NOT \direct_map|cach_instruction[0][58]~combout\;
\direct_map|ALT_INV_cach_instruction[15][59]~combout\ <= NOT \direct_map|cach_instruction[15][59]~combout\;
\direct_map|ALT_INV_cach_instruction[11][59]~combout\ <= NOT \direct_map|cach_instruction[11][59]~combout\;
\direct_map|ALT_INV_cach_instruction[7][59]~combout\ <= NOT \direct_map|cach_instruction[7][59]~combout\;
\direct_map|ALT_INV_cach_instruction[3][59]~combout\ <= NOT \direct_map|cach_instruction[3][59]~combout\;
\direct_map|ALT_INV_cach_instruction[14][59]~combout\ <= NOT \direct_map|cach_instruction[14][59]~combout\;
\direct_map|ALT_INV_cach_instruction[10][59]~combout\ <= NOT \direct_map|cach_instruction[10][59]~combout\;
\direct_map|ALT_INV_cach_instruction[6][59]~combout\ <= NOT \direct_map|cach_instruction[6][59]~combout\;
\direct_map|ALT_INV_cach_instruction[2][59]~combout\ <= NOT \direct_map|cach_instruction[2][59]~combout\;
\direct_map|ALT_INV_cach_instruction[13][59]~combout\ <= NOT \direct_map|cach_instruction[13][59]~combout\;
\direct_map|ALT_INV_cach_instruction[9][59]~combout\ <= NOT \direct_map|cach_instruction[9][59]~combout\;
\direct_map|ALT_INV_cach_instruction[5][59]~combout\ <= NOT \direct_map|cach_instruction[5][59]~combout\;
\direct_map|ALT_INV_cach_instruction[1][59]~combout\ <= NOT \direct_map|cach_instruction[1][59]~combout\;
\direct_map|ALT_INV_cach_instruction[12][59]~combout\ <= NOT \direct_map|cach_instruction[12][59]~combout\;
\direct_map|ALT_INV_cach_instruction[8][59]~combout\ <= NOT \direct_map|cach_instruction[8][59]~combout\;
\direct_map|ALT_INV_cach_instruction[4][59]~combout\ <= NOT \direct_map|cach_instruction[4][59]~combout\;
\direct_map|ALT_INV_cach_instruction[0][59]~combout\ <= NOT \direct_map|cach_instruction[0][59]~combout\;
\direct_map|ALT_INV_cach_instruction[15][60]~combout\ <= NOT \direct_map|cach_instruction[15][60]~combout\;
\direct_map|ALT_INV_cach_instruction[14][60]~combout\ <= NOT \direct_map|cach_instruction[14][60]~combout\;
\direct_map|ALT_INV_cach_instruction[13][60]~combout\ <= NOT \direct_map|cach_instruction[13][60]~combout\;
\direct_map|ALT_INV_cach_instruction[12][60]~combout\ <= NOT \direct_map|cach_instruction[12][60]~combout\;
\direct_map|ALT_INV_cach_instruction[11][60]~combout\ <= NOT \direct_map|cach_instruction[11][60]~combout\;
\direct_map|ALT_INV_cach_instruction[10][60]~combout\ <= NOT \direct_map|cach_instruction[10][60]~combout\;
\direct_map|ALT_INV_cach_instruction[9][60]~combout\ <= NOT \direct_map|cach_instruction[9][60]~combout\;
\direct_map|ALT_INV_cach_instruction[8][60]~combout\ <= NOT \direct_map|cach_instruction[8][60]~combout\;
\direct_map|ALT_INV_cach_instruction[7][60]~combout\ <= NOT \direct_map|cach_instruction[7][60]~combout\;
\direct_map|ALT_INV_cach_instruction[6][60]~combout\ <= NOT \direct_map|cach_instruction[6][60]~combout\;
\direct_map|ALT_INV_cach_instruction[5][60]~combout\ <= NOT \direct_map|cach_instruction[5][60]~combout\;
\direct_map|ALT_INV_cach_instruction[4][60]~combout\ <= NOT \direct_map|cach_instruction[4][60]~combout\;
\direct_map|ALT_INV_cach_instruction[3][60]~combout\ <= NOT \direct_map|cach_instruction[3][60]~combout\;
\direct_map|ALT_INV_cach_instruction[2][60]~combout\ <= NOT \direct_map|cach_instruction[2][60]~combout\;
\direct_map|ALT_INV_cach_instruction[1][60]~combout\ <= NOT \direct_map|cach_instruction[1][60]~combout\;
\direct_map|ALT_INV_cach_instruction[0][60]~combout\ <= NOT \direct_map|cach_instruction[0][60]~combout\;
\ALT_INV_is_tag_equal~combout\ <= NOT \is_tag_equal~combout\;
\direct_map|ALT_INV_Decoder0~15_combout\ <= NOT \direct_map|Decoder0~15_combout\;
\direct_map|ALT_INV_Decoder0~14_combout\ <= NOT \direct_map|Decoder0~14_combout\;
\direct_map|ALT_INV_Decoder0~13_combout\ <= NOT \direct_map|Decoder0~13_combout\;
\direct_map|ALT_INV_Decoder0~12_combout\ <= NOT \direct_map|Decoder0~12_combout\;
\direct_map|ALT_INV_Decoder0~11_combout\ <= NOT \direct_map|Decoder0~11_combout\;
\direct_map|ALT_INV_Decoder0~10_combout\ <= NOT \direct_map|Decoder0~10_combout\;
\direct_map|ALT_INV_Decoder0~9_combout\ <= NOT \direct_map|Decoder0~9_combout\;
\direct_map|ALT_INV_Decoder0~8_combout\ <= NOT \direct_map|Decoder0~8_combout\;
\direct_map|ALT_INV_Decoder0~7_combout\ <= NOT \direct_map|Decoder0~7_combout\;
\direct_map|ALT_INV_Decoder0~6_combout\ <= NOT \direct_map|Decoder0~6_combout\;
\direct_map|ALT_INV_Decoder0~5_combout\ <= NOT \direct_map|Decoder0~5_combout\;
\direct_map|ALT_INV_Decoder0~4_combout\ <= NOT \direct_map|Decoder0~4_combout\;
\direct_map|ALT_INV_Decoder0~3_combout\ <= NOT \direct_map|Decoder0~3_combout\;
\direct_map|ALT_INV_Decoder0~2_combout\ <= NOT \direct_map|Decoder0~2_combout\;
\direct_map|ALT_INV_Decoder0~1_combout\ <= NOT \direct_map|Decoder0~1_combout\;
\direct_map|ALT_INV_Decoder0~0_combout\ <= NOT \direct_map|Decoder0~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\direct_map|ALT_INV_cach_instruction[9][46]~combout\ <= NOT \direct_map|cach_instruction[9][46]~combout\;
\direct_map|ALT_INV_cach_instruction[8][46]~combout\ <= NOT \direct_map|cach_instruction[8][46]~combout\;
\direct_map|ALT_INV_cach_instruction[7][46]~combout\ <= NOT \direct_map|cach_instruction[7][46]~combout\;
\direct_map|ALT_INV_cach_instruction[6][46]~combout\ <= NOT \direct_map|cach_instruction[6][46]~combout\;
\direct_map|ALT_INV_cach_instruction[5][46]~combout\ <= NOT \direct_map|cach_instruction[5][46]~combout\;
\direct_map|ALT_INV_cach_instruction[4][46]~combout\ <= NOT \direct_map|cach_instruction[4][46]~combout\;
\direct_map|ALT_INV_cach_instruction[3][46]~combout\ <= NOT \direct_map|cach_instruction[3][46]~combout\;
\direct_map|ALT_INV_cach_instruction[2][46]~combout\ <= NOT \direct_map|cach_instruction[2][46]~combout\;
\direct_map|ALT_INV_cach_instruction[1][46]~combout\ <= NOT \direct_map|cach_instruction[1][46]~combout\;
\direct_map|ALT_INV_cach_instruction[0][46]~combout\ <= NOT \direct_map|cach_instruction[0][46]~combout\;
\direct_map|ALT_INV_cach_instruction[15][47]~combout\ <= NOT \direct_map|cach_instruction[15][47]~combout\;
\direct_map|ALT_INV_cach_instruction[11][47]~combout\ <= NOT \direct_map|cach_instruction[11][47]~combout\;
\direct_map|ALT_INV_cach_instruction[7][47]~combout\ <= NOT \direct_map|cach_instruction[7][47]~combout\;
\direct_map|ALT_INV_cach_instruction[3][47]~combout\ <= NOT \direct_map|cach_instruction[3][47]~combout\;
\direct_map|ALT_INV_cach_instruction[14][47]~combout\ <= NOT \direct_map|cach_instruction[14][47]~combout\;
\direct_map|ALT_INV_cach_instruction[10][47]~combout\ <= NOT \direct_map|cach_instruction[10][47]~combout\;
\direct_map|ALT_INV_cach_instruction[6][47]~combout\ <= NOT \direct_map|cach_instruction[6][47]~combout\;
\direct_map|ALT_INV_cach_instruction[2][47]~combout\ <= NOT \direct_map|cach_instruction[2][47]~combout\;
\direct_map|ALT_INV_cach_instruction[13][47]~combout\ <= NOT \direct_map|cach_instruction[13][47]~combout\;
\direct_map|ALT_INV_cach_instruction[9][47]~combout\ <= NOT \direct_map|cach_instruction[9][47]~combout\;
\direct_map|ALT_INV_cach_instruction[5][47]~combout\ <= NOT \direct_map|cach_instruction[5][47]~combout\;
\direct_map|ALT_INV_cach_instruction[1][47]~combout\ <= NOT \direct_map|cach_instruction[1][47]~combout\;
\direct_map|ALT_INV_cach_instruction[12][47]~combout\ <= NOT \direct_map|cach_instruction[12][47]~combout\;
\direct_map|ALT_INV_cach_instruction[8][47]~combout\ <= NOT \direct_map|cach_instruction[8][47]~combout\;
\direct_map|ALT_INV_cach_instruction[4][47]~combout\ <= NOT \direct_map|cach_instruction[4][47]~combout\;
\direct_map|ALT_INV_cach_instruction[0][47]~combout\ <= NOT \direct_map|cach_instruction[0][47]~combout\;
\direct_map|ALT_INV_cach_instruction[15][48]~combout\ <= NOT \direct_map|cach_instruction[15][48]~combout\;
\direct_map|ALT_INV_cach_instruction[14][48]~combout\ <= NOT \direct_map|cach_instruction[14][48]~combout\;
\direct_map|ALT_INV_cach_instruction[13][48]~combout\ <= NOT \direct_map|cach_instruction[13][48]~combout\;
\direct_map|ALT_INV_cach_instruction[12][48]~combout\ <= NOT \direct_map|cach_instruction[12][48]~combout\;
\direct_map|ALT_INV_cach_instruction[11][48]~combout\ <= NOT \direct_map|cach_instruction[11][48]~combout\;
\direct_map|ALT_INV_cach_instruction[10][48]~combout\ <= NOT \direct_map|cach_instruction[10][48]~combout\;
\direct_map|ALT_INV_cach_instruction[9][48]~combout\ <= NOT \direct_map|cach_instruction[9][48]~combout\;
\direct_map|ALT_INV_cach_instruction[8][48]~combout\ <= NOT \direct_map|cach_instruction[8][48]~combout\;
\direct_map|ALT_INV_cach_instruction[7][48]~combout\ <= NOT \direct_map|cach_instruction[7][48]~combout\;
\direct_map|ALT_INV_cach_instruction[6][48]~combout\ <= NOT \direct_map|cach_instruction[6][48]~combout\;
\direct_map|ALT_INV_cach_instruction[5][48]~combout\ <= NOT \direct_map|cach_instruction[5][48]~combout\;
\direct_map|ALT_INV_cach_instruction[4][48]~combout\ <= NOT \direct_map|cach_instruction[4][48]~combout\;
\direct_map|ALT_INV_cach_instruction[3][48]~combout\ <= NOT \direct_map|cach_instruction[3][48]~combout\;
\direct_map|ALT_INV_cach_instruction[2][48]~combout\ <= NOT \direct_map|cach_instruction[2][48]~combout\;
\direct_map|ALT_INV_cach_instruction[1][48]~combout\ <= NOT \direct_map|cach_instruction[1][48]~combout\;
\direct_map|ALT_INV_cach_instruction[0][48]~combout\ <= NOT \direct_map|cach_instruction[0][48]~combout\;
\direct_map|ALT_INV_cach_instruction[15][49]~combout\ <= NOT \direct_map|cach_instruction[15][49]~combout\;
\direct_map|ALT_INV_cach_instruction[11][49]~combout\ <= NOT \direct_map|cach_instruction[11][49]~combout\;
\direct_map|ALT_INV_cach_instruction[7][49]~combout\ <= NOT \direct_map|cach_instruction[7][49]~combout\;
\direct_map|ALT_INV_cach_instruction[3][49]~combout\ <= NOT \direct_map|cach_instruction[3][49]~combout\;
\direct_map|ALT_INV_cach_instruction[14][49]~combout\ <= NOT \direct_map|cach_instruction[14][49]~combout\;
\direct_map|ALT_INV_cach_instruction[10][49]~combout\ <= NOT \direct_map|cach_instruction[10][49]~combout\;
\direct_map|ALT_INV_cach_instruction[6][49]~combout\ <= NOT \direct_map|cach_instruction[6][49]~combout\;
\direct_map|ALT_INV_cach_instruction[2][49]~combout\ <= NOT \direct_map|cach_instruction[2][49]~combout\;
\direct_map|ALT_INV_cach_instruction[13][49]~combout\ <= NOT \direct_map|cach_instruction[13][49]~combout\;
\direct_map|ALT_INV_cach_instruction[9][49]~combout\ <= NOT \direct_map|cach_instruction[9][49]~combout\;
\direct_map|ALT_INV_cach_instruction[5][49]~combout\ <= NOT \direct_map|cach_instruction[5][49]~combout\;
\direct_map|ALT_INV_cach_instruction[1][49]~combout\ <= NOT \direct_map|cach_instruction[1][49]~combout\;
\direct_map|ALT_INV_cach_instruction[12][49]~combout\ <= NOT \direct_map|cach_instruction[12][49]~combout\;
\direct_map|ALT_INV_cach_instruction[8][49]~combout\ <= NOT \direct_map|cach_instruction[8][49]~combout\;
\direct_map|ALT_INV_cach_instruction[4][49]~combout\ <= NOT \direct_map|cach_instruction[4][49]~combout\;
\direct_map|ALT_INV_cach_instruction[0][49]~combout\ <= NOT \direct_map|cach_instruction[0][49]~combout\;
\direct_map|ALT_INV_cach_instruction[15][50]~combout\ <= NOT \direct_map|cach_instruction[15][50]~combout\;
\direct_map|ALT_INV_cach_instruction[14][50]~combout\ <= NOT \direct_map|cach_instruction[14][50]~combout\;
\direct_map|ALT_INV_cach_instruction[13][50]~combout\ <= NOT \direct_map|cach_instruction[13][50]~combout\;
\direct_map|ALT_INV_cach_instruction[12][50]~combout\ <= NOT \direct_map|cach_instruction[12][50]~combout\;
\direct_map|ALT_INV_cach_instruction[11][50]~combout\ <= NOT \direct_map|cach_instruction[11][50]~combout\;
\direct_map|ALT_INV_cach_instruction[10][50]~combout\ <= NOT \direct_map|cach_instruction[10][50]~combout\;
\direct_map|ALT_INV_cach_instruction[9][50]~combout\ <= NOT \direct_map|cach_instruction[9][50]~combout\;
\direct_map|ALT_INV_cach_instruction[8][50]~combout\ <= NOT \direct_map|cach_instruction[8][50]~combout\;
\direct_map|ALT_INV_cach_instruction[7][50]~combout\ <= NOT \direct_map|cach_instruction[7][50]~combout\;
\direct_map|ALT_INV_cach_instruction[6][50]~combout\ <= NOT \direct_map|cach_instruction[6][50]~combout\;
\direct_map|ALT_INV_cach_instruction[5][50]~combout\ <= NOT \direct_map|cach_instruction[5][50]~combout\;
\direct_map|ALT_INV_cach_instruction[4][50]~combout\ <= NOT \direct_map|cach_instruction[4][50]~combout\;
\direct_map|ALT_INV_cach_instruction[3][50]~combout\ <= NOT \direct_map|cach_instruction[3][50]~combout\;
\direct_map|ALT_INV_cach_instruction[2][50]~combout\ <= NOT \direct_map|cach_instruction[2][50]~combout\;
\direct_map|ALT_INV_cach_instruction[1][50]~combout\ <= NOT \direct_map|cach_instruction[1][50]~combout\;
\direct_map|ALT_INV_cach_instruction[0][50]~combout\ <= NOT \direct_map|cach_instruction[0][50]~combout\;
\direct_map|ALT_INV_cach_instruction[15][51]~combout\ <= NOT \direct_map|cach_instruction[15][51]~combout\;
\direct_map|ALT_INV_cach_instruction[11][51]~combout\ <= NOT \direct_map|cach_instruction[11][51]~combout\;
\direct_map|ALT_INV_cach_instruction[7][51]~combout\ <= NOT \direct_map|cach_instruction[7][51]~combout\;
\direct_map|ALT_INV_cach_instruction[3][51]~combout\ <= NOT \direct_map|cach_instruction[3][51]~combout\;
\direct_map|ALT_INV_cach_instruction[14][51]~combout\ <= NOT \direct_map|cach_instruction[14][51]~combout\;
\direct_map|ALT_INV_cach_instruction[10][51]~combout\ <= NOT \direct_map|cach_instruction[10][51]~combout\;
\direct_map|ALT_INV_cach_instruction[6][51]~combout\ <= NOT \direct_map|cach_instruction[6][51]~combout\;
\direct_map|ALT_INV_cach_instruction[2][51]~combout\ <= NOT \direct_map|cach_instruction[2][51]~combout\;
\direct_map|ALT_INV_cach_instruction[13][51]~combout\ <= NOT \direct_map|cach_instruction[13][51]~combout\;
\direct_map|ALT_INV_cach_instruction[9][51]~combout\ <= NOT \direct_map|cach_instruction[9][51]~combout\;
\direct_map|ALT_INV_cach_instruction[5][51]~combout\ <= NOT \direct_map|cach_instruction[5][51]~combout\;
\direct_map|ALT_INV_cach_instruction[1][51]~combout\ <= NOT \direct_map|cach_instruction[1][51]~combout\;
\direct_map|ALT_INV_cach_instruction[12][51]~combout\ <= NOT \direct_map|cach_instruction[12][51]~combout\;
\direct_map|ALT_INV_cach_instruction[8][51]~combout\ <= NOT \direct_map|cach_instruction[8][51]~combout\;
\direct_map|ALT_INV_cach_instruction[4][51]~combout\ <= NOT \direct_map|cach_instruction[4][51]~combout\;
\direct_map|ALT_INV_cach_instruction[0][51]~combout\ <= NOT \direct_map|cach_instruction[0][51]~combout\;
\direct_map|ALT_INV_cach_instruction[15][52]~combout\ <= NOT \direct_map|cach_instruction[15][52]~combout\;
\direct_map|ALT_INV_cach_instruction[14][52]~combout\ <= NOT \direct_map|cach_instruction[14][52]~combout\;
\direct_map|ALT_INV_cach_instruction[13][52]~combout\ <= NOT \direct_map|cach_instruction[13][52]~combout\;
\direct_map|ALT_INV_cach_instruction[12][52]~combout\ <= NOT \direct_map|cach_instruction[12][52]~combout\;
\direct_map|ALT_INV_cach_instruction[11][52]~combout\ <= NOT \direct_map|cach_instruction[11][52]~combout\;
\direct_map|ALT_INV_cach_instruction[10][52]~combout\ <= NOT \direct_map|cach_instruction[10][52]~combout\;
\direct_map|ALT_INV_cach_instruction[9][52]~combout\ <= NOT \direct_map|cach_instruction[9][52]~combout\;
\direct_map|ALT_INV_cach_instruction[8][52]~combout\ <= NOT \direct_map|cach_instruction[8][52]~combout\;
\direct_map|ALT_INV_cach_instruction[7][52]~combout\ <= NOT \direct_map|cach_instruction[7][52]~combout\;
\direct_map|ALT_INV_cach_instruction[6][52]~combout\ <= NOT \direct_map|cach_instruction[6][52]~combout\;
\direct_map|ALT_INV_cach_instruction[5][52]~combout\ <= NOT \direct_map|cach_instruction[5][52]~combout\;
\direct_map|ALT_INV_cach_instruction[4][52]~combout\ <= NOT \direct_map|cach_instruction[4][52]~combout\;
\direct_map|ALT_INV_cach_instruction[3][52]~combout\ <= NOT \direct_map|cach_instruction[3][52]~combout\;
\direct_map|ALT_INV_cach_instruction[2][52]~combout\ <= NOT \direct_map|cach_instruction[2][52]~combout\;
\direct_map|ALT_INV_cach_instruction[1][52]~combout\ <= NOT \direct_map|cach_instruction[1][52]~combout\;
\direct_map|ALT_INV_cach_instruction[0][52]~combout\ <= NOT \direct_map|cach_instruction[0][52]~combout\;
\direct_map|ALT_INV_cach_instruction[15][53]~combout\ <= NOT \direct_map|cach_instruction[15][53]~combout\;
\direct_map|ALT_INV_cach_instruction[11][53]~combout\ <= NOT \direct_map|cach_instruction[11][53]~combout\;
\direct_map|ALT_INV_cach_instruction[7][53]~combout\ <= NOT \direct_map|cach_instruction[7][53]~combout\;
\direct_map|ALT_INV_cach_instruction[3][53]~combout\ <= NOT \direct_map|cach_instruction[3][53]~combout\;
\direct_map|ALT_INV_cach_instruction[14][53]~combout\ <= NOT \direct_map|cach_instruction[14][53]~combout\;
\direct_map|ALT_INV_cach_instruction[10][53]~combout\ <= NOT \direct_map|cach_instruction[10][53]~combout\;
\direct_map|ALT_INV_cach_instruction[6][53]~combout\ <= NOT \direct_map|cach_instruction[6][53]~combout\;
\direct_map|ALT_INV_cach_instruction[2][53]~combout\ <= NOT \direct_map|cach_instruction[2][53]~combout\;
\direct_map|ALT_INV_cach_instruction[13][53]~combout\ <= NOT \direct_map|cach_instruction[13][53]~combout\;
\direct_map|ALT_INV_cach_instruction[9][53]~combout\ <= NOT \direct_map|cach_instruction[9][53]~combout\;
\direct_map|ALT_INV_cach_instruction[5][53]~combout\ <= NOT \direct_map|cach_instruction[5][53]~combout\;
\direct_map|ALT_INV_cach_instruction[1][53]~combout\ <= NOT \direct_map|cach_instruction[1][53]~combout\;
\direct_map|ALT_INV_cach_instruction[12][53]~combout\ <= NOT \direct_map|cach_instruction[12][53]~combout\;
\direct_map|ALT_INV_cach_instruction[8][53]~combout\ <= NOT \direct_map|cach_instruction[8][53]~combout\;
\direct_map|ALT_INV_cach_instruction[4][53]~combout\ <= NOT \direct_map|cach_instruction[4][53]~combout\;
\direct_map|ALT_INV_cach_instruction[0][53]~combout\ <= NOT \direct_map|cach_instruction[0][53]~combout\;
\direct_map|ALT_INV_cach_instruction[15][54]~combout\ <= NOT \direct_map|cach_instruction[15][54]~combout\;
\direct_map|ALT_INV_cach_instruction[14][54]~combout\ <= NOT \direct_map|cach_instruction[14][54]~combout\;
\direct_map|ALT_INV_cach_instruction[13][54]~combout\ <= NOT \direct_map|cach_instruction[13][54]~combout\;
\direct_map|ALT_INV_cach_instruction[12][54]~combout\ <= NOT \direct_map|cach_instruction[12][54]~combout\;
\direct_map|ALT_INV_cach_instruction[11][54]~combout\ <= NOT \direct_map|cach_instruction[11][54]~combout\;
\direct_map|ALT_INV_cach_instruction[8][38]~combout\ <= NOT \direct_map|cach_instruction[8][38]~combout\;
\direct_map|ALT_INV_cach_instruction[7][38]~combout\ <= NOT \direct_map|cach_instruction[7][38]~combout\;
\direct_map|ALT_INV_cach_instruction[6][38]~combout\ <= NOT \direct_map|cach_instruction[6][38]~combout\;
\direct_map|ALT_INV_cach_instruction[5][38]~combout\ <= NOT \direct_map|cach_instruction[5][38]~combout\;
\direct_map|ALT_INV_cach_instruction[4][38]~combout\ <= NOT \direct_map|cach_instruction[4][38]~combout\;
\direct_map|ALT_INV_cach_instruction[3][38]~combout\ <= NOT \direct_map|cach_instruction[3][38]~combout\;
\direct_map|ALT_INV_cach_instruction[2][38]~combout\ <= NOT \direct_map|cach_instruction[2][38]~combout\;
\direct_map|ALT_INV_cach_instruction[1][38]~combout\ <= NOT \direct_map|cach_instruction[1][38]~combout\;
\direct_map|ALT_INV_cach_instruction[0][38]~combout\ <= NOT \direct_map|cach_instruction[0][38]~combout\;
\direct_map|ALT_INV_cach_instruction[15][39]~combout\ <= NOT \direct_map|cach_instruction[15][39]~combout\;
\direct_map|ALT_INV_cach_instruction[11][39]~combout\ <= NOT \direct_map|cach_instruction[11][39]~combout\;
\direct_map|ALT_INV_cach_instruction[7][39]~combout\ <= NOT \direct_map|cach_instruction[7][39]~combout\;
\direct_map|ALT_INV_cach_instruction[3][39]~combout\ <= NOT \direct_map|cach_instruction[3][39]~combout\;
\direct_map|ALT_INV_cach_instruction[14][39]~combout\ <= NOT \direct_map|cach_instruction[14][39]~combout\;
\direct_map|ALT_INV_cach_instruction[10][39]~combout\ <= NOT \direct_map|cach_instruction[10][39]~combout\;
\direct_map|ALT_INV_cach_instruction[6][39]~combout\ <= NOT \direct_map|cach_instruction[6][39]~combout\;
\direct_map|ALT_INV_cach_instruction[2][39]~combout\ <= NOT \direct_map|cach_instruction[2][39]~combout\;
\direct_map|ALT_INV_cach_instruction[13][39]~combout\ <= NOT \direct_map|cach_instruction[13][39]~combout\;
\direct_map|ALT_INV_cach_instruction[9][39]~combout\ <= NOT \direct_map|cach_instruction[9][39]~combout\;
\direct_map|ALT_INV_cach_instruction[5][39]~combout\ <= NOT \direct_map|cach_instruction[5][39]~combout\;
\direct_map|ALT_INV_cach_instruction[1][39]~combout\ <= NOT \direct_map|cach_instruction[1][39]~combout\;
\direct_map|ALT_INV_cach_instruction[12][39]~combout\ <= NOT \direct_map|cach_instruction[12][39]~combout\;
\direct_map|ALT_INV_cach_instruction[8][39]~combout\ <= NOT \direct_map|cach_instruction[8][39]~combout\;
\direct_map|ALT_INV_cach_instruction[4][39]~combout\ <= NOT \direct_map|cach_instruction[4][39]~combout\;
\direct_map|ALT_INV_cach_instruction[0][39]~combout\ <= NOT \direct_map|cach_instruction[0][39]~combout\;
\direct_map|ALT_INV_cach_instruction[15][40]~combout\ <= NOT \direct_map|cach_instruction[15][40]~combout\;
\direct_map|ALT_INV_cach_instruction[14][40]~combout\ <= NOT \direct_map|cach_instruction[14][40]~combout\;
\direct_map|ALT_INV_cach_instruction[13][40]~combout\ <= NOT \direct_map|cach_instruction[13][40]~combout\;
\direct_map|ALT_INV_cach_instruction[12][40]~combout\ <= NOT \direct_map|cach_instruction[12][40]~combout\;
\direct_map|ALT_INV_cach_instruction[11][40]~combout\ <= NOT \direct_map|cach_instruction[11][40]~combout\;
\direct_map|ALT_INV_cach_instruction[10][40]~combout\ <= NOT \direct_map|cach_instruction[10][40]~combout\;
\direct_map|ALT_INV_cach_instruction[9][40]~combout\ <= NOT \direct_map|cach_instruction[9][40]~combout\;
\direct_map|ALT_INV_cach_instruction[8][40]~combout\ <= NOT \direct_map|cach_instruction[8][40]~combout\;
\direct_map|ALT_INV_cach_instruction[7][40]~combout\ <= NOT \direct_map|cach_instruction[7][40]~combout\;
\direct_map|ALT_INV_cach_instruction[6][40]~combout\ <= NOT \direct_map|cach_instruction[6][40]~combout\;
\direct_map|ALT_INV_cach_instruction[5][40]~combout\ <= NOT \direct_map|cach_instruction[5][40]~combout\;
\direct_map|ALT_INV_cach_instruction[4][40]~combout\ <= NOT \direct_map|cach_instruction[4][40]~combout\;
\direct_map|ALT_INV_cach_instruction[3][40]~combout\ <= NOT \direct_map|cach_instruction[3][40]~combout\;
\direct_map|ALT_INV_cach_instruction[2][40]~combout\ <= NOT \direct_map|cach_instruction[2][40]~combout\;
\direct_map|ALT_INV_cach_instruction[1][40]~combout\ <= NOT \direct_map|cach_instruction[1][40]~combout\;
\direct_map|ALT_INV_cach_instruction[0][40]~combout\ <= NOT \direct_map|cach_instruction[0][40]~combout\;
\direct_map|ALT_INV_cach_instruction[15][41]~combout\ <= NOT \direct_map|cach_instruction[15][41]~combout\;
\direct_map|ALT_INV_cach_instruction[11][41]~combout\ <= NOT \direct_map|cach_instruction[11][41]~combout\;
\direct_map|ALT_INV_cach_instruction[7][41]~combout\ <= NOT \direct_map|cach_instruction[7][41]~combout\;
\direct_map|ALT_INV_cach_instruction[3][41]~combout\ <= NOT \direct_map|cach_instruction[3][41]~combout\;
\direct_map|ALT_INV_cach_instruction[14][41]~combout\ <= NOT \direct_map|cach_instruction[14][41]~combout\;
\direct_map|ALT_INV_cach_instruction[10][41]~combout\ <= NOT \direct_map|cach_instruction[10][41]~combout\;
\direct_map|ALT_INV_cach_instruction[6][41]~combout\ <= NOT \direct_map|cach_instruction[6][41]~combout\;
\direct_map|ALT_INV_cach_instruction[2][41]~combout\ <= NOT \direct_map|cach_instruction[2][41]~combout\;
\direct_map|ALT_INV_cach_instruction[13][41]~combout\ <= NOT \direct_map|cach_instruction[13][41]~combout\;
\direct_map|ALT_INV_cach_instruction[9][41]~combout\ <= NOT \direct_map|cach_instruction[9][41]~combout\;
\direct_map|ALT_INV_cach_instruction[5][41]~combout\ <= NOT \direct_map|cach_instruction[5][41]~combout\;
\direct_map|ALT_INV_cach_instruction[1][41]~combout\ <= NOT \direct_map|cach_instruction[1][41]~combout\;
\direct_map|ALT_INV_cach_instruction[12][41]~combout\ <= NOT \direct_map|cach_instruction[12][41]~combout\;
\direct_map|ALT_INV_cach_instruction[8][41]~combout\ <= NOT \direct_map|cach_instruction[8][41]~combout\;
\direct_map|ALT_INV_cach_instruction[4][41]~combout\ <= NOT \direct_map|cach_instruction[4][41]~combout\;
\direct_map|ALT_INV_cach_instruction[0][41]~combout\ <= NOT \direct_map|cach_instruction[0][41]~combout\;
\direct_map|ALT_INV_cach_instruction[15][42]~combout\ <= NOT \direct_map|cach_instruction[15][42]~combout\;
\direct_map|ALT_INV_cach_instruction[14][42]~combout\ <= NOT \direct_map|cach_instruction[14][42]~combout\;
\direct_map|ALT_INV_cach_instruction[13][42]~combout\ <= NOT \direct_map|cach_instruction[13][42]~combout\;
\direct_map|ALT_INV_cach_instruction[12][42]~combout\ <= NOT \direct_map|cach_instruction[12][42]~combout\;
\direct_map|ALT_INV_cach_instruction[11][42]~combout\ <= NOT \direct_map|cach_instruction[11][42]~combout\;
\direct_map|ALT_INV_cach_instruction[10][42]~combout\ <= NOT \direct_map|cach_instruction[10][42]~combout\;
\direct_map|ALT_INV_cach_instruction[9][42]~combout\ <= NOT \direct_map|cach_instruction[9][42]~combout\;
\direct_map|ALT_INV_cach_instruction[8][42]~combout\ <= NOT \direct_map|cach_instruction[8][42]~combout\;
\direct_map|ALT_INV_cach_instruction[7][42]~combout\ <= NOT \direct_map|cach_instruction[7][42]~combout\;
\direct_map|ALT_INV_cach_instruction[6][42]~combout\ <= NOT \direct_map|cach_instruction[6][42]~combout\;
\direct_map|ALT_INV_cach_instruction[5][42]~combout\ <= NOT \direct_map|cach_instruction[5][42]~combout\;
\direct_map|ALT_INV_cach_instruction[4][42]~combout\ <= NOT \direct_map|cach_instruction[4][42]~combout\;
\direct_map|ALT_INV_cach_instruction[3][42]~combout\ <= NOT \direct_map|cach_instruction[3][42]~combout\;
\direct_map|ALT_INV_cach_instruction[2][42]~combout\ <= NOT \direct_map|cach_instruction[2][42]~combout\;
\direct_map|ALT_INV_cach_instruction[1][42]~combout\ <= NOT \direct_map|cach_instruction[1][42]~combout\;
\direct_map|ALT_INV_cach_instruction[0][42]~combout\ <= NOT \direct_map|cach_instruction[0][42]~combout\;
\direct_map|ALT_INV_cach_instruction[15][43]~combout\ <= NOT \direct_map|cach_instruction[15][43]~combout\;
\direct_map|ALT_INV_cach_instruction[11][43]~combout\ <= NOT \direct_map|cach_instruction[11][43]~combout\;
\direct_map|ALT_INV_cach_instruction[7][43]~combout\ <= NOT \direct_map|cach_instruction[7][43]~combout\;
\direct_map|ALT_INV_cach_instruction[3][43]~combout\ <= NOT \direct_map|cach_instruction[3][43]~combout\;
\direct_map|ALT_INV_cach_instruction[14][43]~combout\ <= NOT \direct_map|cach_instruction[14][43]~combout\;
\direct_map|ALT_INV_cach_instruction[10][43]~combout\ <= NOT \direct_map|cach_instruction[10][43]~combout\;
\direct_map|ALT_INV_cach_instruction[6][43]~combout\ <= NOT \direct_map|cach_instruction[6][43]~combout\;
\direct_map|ALT_INV_cach_instruction[2][43]~combout\ <= NOT \direct_map|cach_instruction[2][43]~combout\;
\direct_map|ALT_INV_cach_instruction[13][43]~combout\ <= NOT \direct_map|cach_instruction[13][43]~combout\;
\direct_map|ALT_INV_cach_instruction[9][43]~combout\ <= NOT \direct_map|cach_instruction[9][43]~combout\;
\direct_map|ALT_INV_cach_instruction[5][43]~combout\ <= NOT \direct_map|cach_instruction[5][43]~combout\;
\direct_map|ALT_INV_cach_instruction[1][43]~combout\ <= NOT \direct_map|cach_instruction[1][43]~combout\;
\direct_map|ALT_INV_cach_instruction[12][43]~combout\ <= NOT \direct_map|cach_instruction[12][43]~combout\;
\direct_map|ALT_INV_cach_instruction[8][43]~combout\ <= NOT \direct_map|cach_instruction[8][43]~combout\;
\direct_map|ALT_INV_cach_instruction[4][43]~combout\ <= NOT \direct_map|cach_instruction[4][43]~combout\;
\direct_map|ALT_INV_cach_instruction[0][43]~combout\ <= NOT \direct_map|cach_instruction[0][43]~combout\;
\direct_map|ALT_INV_cach_instruction[15][44]~combout\ <= NOT \direct_map|cach_instruction[15][44]~combout\;
\direct_map|ALT_INV_cach_instruction[14][44]~combout\ <= NOT \direct_map|cach_instruction[14][44]~combout\;
\direct_map|ALT_INV_cach_instruction[13][44]~combout\ <= NOT \direct_map|cach_instruction[13][44]~combout\;
\direct_map|ALT_INV_cach_instruction[12][44]~combout\ <= NOT \direct_map|cach_instruction[12][44]~combout\;
\direct_map|ALT_INV_cach_instruction[11][44]~combout\ <= NOT \direct_map|cach_instruction[11][44]~combout\;
\direct_map|ALT_INV_cach_instruction[10][44]~combout\ <= NOT \direct_map|cach_instruction[10][44]~combout\;
\direct_map|ALT_INV_cach_instruction[9][44]~combout\ <= NOT \direct_map|cach_instruction[9][44]~combout\;
\direct_map|ALT_INV_cach_instruction[8][44]~combout\ <= NOT \direct_map|cach_instruction[8][44]~combout\;
\direct_map|ALT_INV_cach_instruction[7][44]~combout\ <= NOT \direct_map|cach_instruction[7][44]~combout\;
\direct_map|ALT_INV_cach_instruction[6][44]~combout\ <= NOT \direct_map|cach_instruction[6][44]~combout\;
\direct_map|ALT_INV_cach_instruction[5][44]~combout\ <= NOT \direct_map|cach_instruction[5][44]~combout\;
\direct_map|ALT_INV_cach_instruction[4][44]~combout\ <= NOT \direct_map|cach_instruction[4][44]~combout\;
\direct_map|ALT_INV_cach_instruction[3][44]~combout\ <= NOT \direct_map|cach_instruction[3][44]~combout\;
\direct_map|ALT_INV_cach_instruction[2][44]~combout\ <= NOT \direct_map|cach_instruction[2][44]~combout\;
\direct_map|ALT_INV_cach_instruction[1][44]~combout\ <= NOT \direct_map|cach_instruction[1][44]~combout\;
\direct_map|ALT_INV_cach_instruction[0][44]~combout\ <= NOT \direct_map|cach_instruction[0][44]~combout\;
\direct_map|ALT_INV_cach_instruction[15][45]~combout\ <= NOT \direct_map|cach_instruction[15][45]~combout\;
\direct_map|ALT_INV_cach_instruction[11][45]~combout\ <= NOT \direct_map|cach_instruction[11][45]~combout\;
\direct_map|ALT_INV_cach_instruction[7][45]~combout\ <= NOT \direct_map|cach_instruction[7][45]~combout\;
\direct_map|ALT_INV_cach_instruction[3][45]~combout\ <= NOT \direct_map|cach_instruction[3][45]~combout\;
\direct_map|ALT_INV_cach_instruction[14][45]~combout\ <= NOT \direct_map|cach_instruction[14][45]~combout\;
\direct_map|ALT_INV_cach_instruction[10][45]~combout\ <= NOT \direct_map|cach_instruction[10][45]~combout\;
\direct_map|ALT_INV_cach_instruction[6][45]~combout\ <= NOT \direct_map|cach_instruction[6][45]~combout\;
\direct_map|ALT_INV_cach_instruction[2][45]~combout\ <= NOT \direct_map|cach_instruction[2][45]~combout\;
\direct_map|ALT_INV_cach_instruction[13][45]~combout\ <= NOT \direct_map|cach_instruction[13][45]~combout\;
\direct_map|ALT_INV_cach_instruction[9][45]~combout\ <= NOT \direct_map|cach_instruction[9][45]~combout\;
\direct_map|ALT_INV_cach_instruction[5][45]~combout\ <= NOT \direct_map|cach_instruction[5][45]~combout\;
\direct_map|ALT_INV_cach_instruction[1][45]~combout\ <= NOT \direct_map|cach_instruction[1][45]~combout\;
\direct_map|ALT_INV_cach_instruction[12][45]~combout\ <= NOT \direct_map|cach_instruction[12][45]~combout\;
\direct_map|ALT_INV_cach_instruction[8][45]~combout\ <= NOT \direct_map|cach_instruction[8][45]~combout\;
\direct_map|ALT_INV_cach_instruction[4][45]~combout\ <= NOT \direct_map|cach_instruction[4][45]~combout\;
\direct_map|ALT_INV_cach_instruction[0][45]~combout\ <= NOT \direct_map|cach_instruction[0][45]~combout\;
\direct_map|ALT_INV_cach_instruction[15][46]~combout\ <= NOT \direct_map|cach_instruction[15][46]~combout\;
\direct_map|ALT_INV_cach_instruction[14][46]~combout\ <= NOT \direct_map|cach_instruction[14][46]~combout\;
\direct_map|ALT_INV_cach_instruction[13][46]~combout\ <= NOT \direct_map|cach_instruction[13][46]~combout\;
\direct_map|ALT_INV_cach_instruction[12][46]~combout\ <= NOT \direct_map|cach_instruction[12][46]~combout\;
\direct_map|ALT_INV_cach_instruction[11][46]~combout\ <= NOT \direct_map|cach_instruction[11][46]~combout\;
\direct_map|ALT_INV_cach_instruction[10][46]~combout\ <= NOT \direct_map|cach_instruction[10][46]~combout\;
\direct_map|ALT_INV_cach_instruction[7][30]~combout\ <= NOT \direct_map|cach_instruction[7][30]~combout\;
\direct_map|ALT_INV_cach_instruction[6][30]~combout\ <= NOT \direct_map|cach_instruction[6][30]~combout\;
\direct_map|ALT_INV_cach_instruction[5][30]~combout\ <= NOT \direct_map|cach_instruction[5][30]~combout\;
\direct_map|ALT_INV_cach_instruction[4][30]~combout\ <= NOT \direct_map|cach_instruction[4][30]~combout\;
\direct_map|ALT_INV_cach_instruction[3][30]~combout\ <= NOT \direct_map|cach_instruction[3][30]~combout\;
\direct_map|ALT_INV_cach_instruction[2][30]~combout\ <= NOT \direct_map|cach_instruction[2][30]~combout\;
\direct_map|ALT_INV_cach_instruction[1][30]~combout\ <= NOT \direct_map|cach_instruction[1][30]~combout\;
\direct_map|ALT_INV_cach_instruction[0][30]~combout\ <= NOT \direct_map|cach_instruction[0][30]~combout\;
\direct_map|ALT_INV_cach_instruction[15][31]~combout\ <= NOT \direct_map|cach_instruction[15][31]~combout\;
\direct_map|ALT_INV_cach_instruction[11][31]~combout\ <= NOT \direct_map|cach_instruction[11][31]~combout\;
\direct_map|ALT_INV_cach_instruction[7][31]~combout\ <= NOT \direct_map|cach_instruction[7][31]~combout\;
\direct_map|ALT_INV_cach_instruction[3][31]~combout\ <= NOT \direct_map|cach_instruction[3][31]~combout\;
\direct_map|ALT_INV_cach_instruction[14][31]~combout\ <= NOT \direct_map|cach_instruction[14][31]~combout\;
\direct_map|ALT_INV_cach_instruction[10][31]~combout\ <= NOT \direct_map|cach_instruction[10][31]~combout\;
\direct_map|ALT_INV_cach_instruction[6][31]~combout\ <= NOT \direct_map|cach_instruction[6][31]~combout\;
\direct_map|ALT_INV_cach_instruction[2][31]~combout\ <= NOT \direct_map|cach_instruction[2][31]~combout\;
\direct_map|ALT_INV_cach_instruction[13][31]~combout\ <= NOT \direct_map|cach_instruction[13][31]~combout\;
\direct_map|ALT_INV_cach_instruction[9][31]~combout\ <= NOT \direct_map|cach_instruction[9][31]~combout\;
\direct_map|ALT_INV_cach_instruction[5][31]~combout\ <= NOT \direct_map|cach_instruction[5][31]~combout\;
\direct_map|ALT_INV_cach_instruction[1][31]~combout\ <= NOT \direct_map|cach_instruction[1][31]~combout\;
\direct_map|ALT_INV_cach_instruction[12][31]~combout\ <= NOT \direct_map|cach_instruction[12][31]~combout\;
\direct_map|ALT_INV_cach_instruction[8][31]~combout\ <= NOT \direct_map|cach_instruction[8][31]~combout\;
\direct_map|ALT_INV_cach_instruction[4][31]~combout\ <= NOT \direct_map|cach_instruction[4][31]~combout\;
\direct_map|ALT_INV_cach_instruction[0][31]~combout\ <= NOT \direct_map|cach_instruction[0][31]~combout\;
\direct_map|ALT_INV_cach_instruction[15][32]~combout\ <= NOT \direct_map|cach_instruction[15][32]~combout\;
\direct_map|ALT_INV_cach_instruction[14][32]~combout\ <= NOT \direct_map|cach_instruction[14][32]~combout\;
\direct_map|ALT_INV_cach_instruction[13][32]~combout\ <= NOT \direct_map|cach_instruction[13][32]~combout\;
\direct_map|ALT_INV_cach_instruction[12][32]~combout\ <= NOT \direct_map|cach_instruction[12][32]~combout\;
\direct_map|ALT_INV_cach_instruction[11][32]~combout\ <= NOT \direct_map|cach_instruction[11][32]~combout\;
\direct_map|ALT_INV_cach_instruction[10][32]~combout\ <= NOT \direct_map|cach_instruction[10][32]~combout\;
\direct_map|ALT_INV_cach_instruction[9][32]~combout\ <= NOT \direct_map|cach_instruction[9][32]~combout\;
\direct_map|ALT_INV_cach_instruction[8][32]~combout\ <= NOT \direct_map|cach_instruction[8][32]~combout\;
\direct_map|ALT_INV_cach_instruction[7][32]~combout\ <= NOT \direct_map|cach_instruction[7][32]~combout\;
\direct_map|ALT_INV_cach_instruction[6][32]~combout\ <= NOT \direct_map|cach_instruction[6][32]~combout\;
\direct_map|ALT_INV_cach_instruction[5][32]~combout\ <= NOT \direct_map|cach_instruction[5][32]~combout\;
\direct_map|ALT_INV_cach_instruction[4][32]~combout\ <= NOT \direct_map|cach_instruction[4][32]~combout\;
\direct_map|ALT_INV_cach_instruction[3][32]~combout\ <= NOT \direct_map|cach_instruction[3][32]~combout\;
\direct_map|ALT_INV_cach_instruction[2][32]~combout\ <= NOT \direct_map|cach_instruction[2][32]~combout\;
\direct_map|ALT_INV_cach_instruction[1][32]~combout\ <= NOT \direct_map|cach_instruction[1][32]~combout\;
\direct_map|ALT_INV_cach_instruction[0][32]~combout\ <= NOT \direct_map|cach_instruction[0][32]~combout\;
\direct_map|ALT_INV_cach_instruction[15][33]~combout\ <= NOT \direct_map|cach_instruction[15][33]~combout\;
\direct_map|ALT_INV_cach_instruction[11][33]~combout\ <= NOT \direct_map|cach_instruction[11][33]~combout\;
\direct_map|ALT_INV_cach_instruction[7][33]~combout\ <= NOT \direct_map|cach_instruction[7][33]~combout\;
\direct_map|ALT_INV_cach_instruction[3][33]~combout\ <= NOT \direct_map|cach_instruction[3][33]~combout\;
\direct_map|ALT_INV_cach_instruction[14][33]~combout\ <= NOT \direct_map|cach_instruction[14][33]~combout\;
\direct_map|ALT_INV_cach_instruction[10][33]~combout\ <= NOT \direct_map|cach_instruction[10][33]~combout\;
\direct_map|ALT_INV_cach_instruction[6][33]~combout\ <= NOT \direct_map|cach_instruction[6][33]~combout\;
\direct_map|ALT_INV_cach_instruction[2][33]~combout\ <= NOT \direct_map|cach_instruction[2][33]~combout\;
\direct_map|ALT_INV_cach_instruction[13][33]~combout\ <= NOT \direct_map|cach_instruction[13][33]~combout\;
\direct_map|ALT_INV_cach_instruction[9][33]~combout\ <= NOT \direct_map|cach_instruction[9][33]~combout\;
\direct_map|ALT_INV_cach_instruction[5][33]~combout\ <= NOT \direct_map|cach_instruction[5][33]~combout\;
\direct_map|ALT_INV_cach_instruction[1][33]~combout\ <= NOT \direct_map|cach_instruction[1][33]~combout\;
\direct_map|ALT_INV_cach_instruction[12][33]~combout\ <= NOT \direct_map|cach_instruction[12][33]~combout\;
\direct_map|ALT_INV_cach_instruction[8][33]~combout\ <= NOT \direct_map|cach_instruction[8][33]~combout\;
\direct_map|ALT_INV_cach_instruction[4][33]~combout\ <= NOT \direct_map|cach_instruction[4][33]~combout\;
\direct_map|ALT_INV_cach_instruction[0][33]~combout\ <= NOT \direct_map|cach_instruction[0][33]~combout\;
\direct_map|ALT_INV_cach_instruction[15][34]~combout\ <= NOT \direct_map|cach_instruction[15][34]~combout\;
\direct_map|ALT_INV_cach_instruction[14][34]~combout\ <= NOT \direct_map|cach_instruction[14][34]~combout\;
\direct_map|ALT_INV_cach_instruction[13][34]~combout\ <= NOT \direct_map|cach_instruction[13][34]~combout\;
\direct_map|ALT_INV_cach_instruction[12][34]~combout\ <= NOT \direct_map|cach_instruction[12][34]~combout\;
\direct_map|ALT_INV_cach_instruction[11][34]~combout\ <= NOT \direct_map|cach_instruction[11][34]~combout\;
\direct_map|ALT_INV_cach_instruction[10][34]~combout\ <= NOT \direct_map|cach_instruction[10][34]~combout\;
\direct_map|ALT_INV_cach_instruction[9][34]~combout\ <= NOT \direct_map|cach_instruction[9][34]~combout\;
\direct_map|ALT_INV_cach_instruction[8][34]~combout\ <= NOT \direct_map|cach_instruction[8][34]~combout\;
\direct_map|ALT_INV_cach_instruction[7][34]~combout\ <= NOT \direct_map|cach_instruction[7][34]~combout\;
\direct_map|ALT_INV_cach_instruction[6][34]~combout\ <= NOT \direct_map|cach_instruction[6][34]~combout\;
\direct_map|ALT_INV_cach_instruction[5][34]~combout\ <= NOT \direct_map|cach_instruction[5][34]~combout\;
\direct_map|ALT_INV_cach_instruction[4][34]~combout\ <= NOT \direct_map|cach_instruction[4][34]~combout\;
\direct_map|ALT_INV_cach_instruction[3][34]~combout\ <= NOT \direct_map|cach_instruction[3][34]~combout\;
\direct_map|ALT_INV_cach_instruction[2][34]~combout\ <= NOT \direct_map|cach_instruction[2][34]~combout\;
\direct_map|ALT_INV_cach_instruction[1][34]~combout\ <= NOT \direct_map|cach_instruction[1][34]~combout\;
\direct_map|ALT_INV_cach_instruction[0][34]~combout\ <= NOT \direct_map|cach_instruction[0][34]~combout\;
\direct_map|ALT_INV_cach_instruction[15][35]~combout\ <= NOT \direct_map|cach_instruction[15][35]~combout\;
\direct_map|ALT_INV_cach_instruction[11][35]~combout\ <= NOT \direct_map|cach_instruction[11][35]~combout\;
\direct_map|ALT_INV_cach_instruction[7][35]~combout\ <= NOT \direct_map|cach_instruction[7][35]~combout\;
\direct_map|ALT_INV_cach_instruction[3][35]~combout\ <= NOT \direct_map|cach_instruction[3][35]~combout\;
\direct_map|ALT_INV_cach_instruction[14][35]~combout\ <= NOT \direct_map|cach_instruction[14][35]~combout\;
\direct_map|ALT_INV_cach_instruction[10][35]~combout\ <= NOT \direct_map|cach_instruction[10][35]~combout\;
\direct_map|ALT_INV_cach_instruction[6][35]~combout\ <= NOT \direct_map|cach_instruction[6][35]~combout\;
\direct_map|ALT_INV_cach_instruction[2][35]~combout\ <= NOT \direct_map|cach_instruction[2][35]~combout\;
\direct_map|ALT_INV_cach_instruction[13][35]~combout\ <= NOT \direct_map|cach_instruction[13][35]~combout\;
\direct_map|ALT_INV_cach_instruction[9][35]~combout\ <= NOT \direct_map|cach_instruction[9][35]~combout\;
\direct_map|ALT_INV_cach_instruction[5][35]~combout\ <= NOT \direct_map|cach_instruction[5][35]~combout\;
\direct_map|ALT_INV_cach_instruction[1][35]~combout\ <= NOT \direct_map|cach_instruction[1][35]~combout\;
\direct_map|ALT_INV_cach_instruction[12][35]~combout\ <= NOT \direct_map|cach_instruction[12][35]~combout\;
\direct_map|ALT_INV_cach_instruction[8][35]~combout\ <= NOT \direct_map|cach_instruction[8][35]~combout\;
\direct_map|ALT_INV_cach_instruction[4][35]~combout\ <= NOT \direct_map|cach_instruction[4][35]~combout\;
\direct_map|ALT_INV_cach_instruction[0][35]~combout\ <= NOT \direct_map|cach_instruction[0][35]~combout\;
\direct_map|ALT_INV_cach_instruction[15][36]~combout\ <= NOT \direct_map|cach_instruction[15][36]~combout\;
\direct_map|ALT_INV_cach_instruction[14][36]~combout\ <= NOT \direct_map|cach_instruction[14][36]~combout\;
\direct_map|ALT_INV_cach_instruction[13][36]~combout\ <= NOT \direct_map|cach_instruction[13][36]~combout\;
\direct_map|ALT_INV_cach_instruction[12][36]~combout\ <= NOT \direct_map|cach_instruction[12][36]~combout\;
\direct_map|ALT_INV_cach_instruction[11][36]~combout\ <= NOT \direct_map|cach_instruction[11][36]~combout\;
\direct_map|ALT_INV_cach_instruction[10][36]~combout\ <= NOT \direct_map|cach_instruction[10][36]~combout\;
\direct_map|ALT_INV_cach_instruction[9][36]~combout\ <= NOT \direct_map|cach_instruction[9][36]~combout\;
\direct_map|ALT_INV_cach_instruction[8][36]~combout\ <= NOT \direct_map|cach_instruction[8][36]~combout\;
\direct_map|ALT_INV_cach_instruction[7][36]~combout\ <= NOT \direct_map|cach_instruction[7][36]~combout\;
\direct_map|ALT_INV_cach_instruction[6][36]~combout\ <= NOT \direct_map|cach_instruction[6][36]~combout\;
\direct_map|ALT_INV_cach_instruction[5][36]~combout\ <= NOT \direct_map|cach_instruction[5][36]~combout\;
\direct_map|ALT_INV_cach_instruction[4][36]~combout\ <= NOT \direct_map|cach_instruction[4][36]~combout\;
\direct_map|ALT_INV_cach_instruction[3][36]~combout\ <= NOT \direct_map|cach_instruction[3][36]~combout\;
\direct_map|ALT_INV_cach_instruction[2][36]~combout\ <= NOT \direct_map|cach_instruction[2][36]~combout\;
\direct_map|ALT_INV_cach_instruction[1][36]~combout\ <= NOT \direct_map|cach_instruction[1][36]~combout\;
\direct_map|ALT_INV_cach_instruction[0][36]~combout\ <= NOT \direct_map|cach_instruction[0][36]~combout\;
\direct_map|ALT_INV_cach_instruction[15][37]~combout\ <= NOT \direct_map|cach_instruction[15][37]~combout\;
\direct_map|ALT_INV_cach_instruction[11][37]~combout\ <= NOT \direct_map|cach_instruction[11][37]~combout\;
\direct_map|ALT_INV_cach_instruction[7][37]~combout\ <= NOT \direct_map|cach_instruction[7][37]~combout\;
\direct_map|ALT_INV_cach_instruction[3][37]~combout\ <= NOT \direct_map|cach_instruction[3][37]~combout\;
\direct_map|ALT_INV_cach_instruction[14][37]~combout\ <= NOT \direct_map|cach_instruction[14][37]~combout\;
\direct_map|ALT_INV_cach_instruction[10][37]~combout\ <= NOT \direct_map|cach_instruction[10][37]~combout\;
\direct_map|ALT_INV_cach_instruction[6][37]~combout\ <= NOT \direct_map|cach_instruction[6][37]~combout\;
\direct_map|ALT_INV_cach_instruction[2][37]~combout\ <= NOT \direct_map|cach_instruction[2][37]~combout\;
\direct_map|ALT_INV_cach_instruction[13][37]~combout\ <= NOT \direct_map|cach_instruction[13][37]~combout\;
\direct_map|ALT_INV_cach_instruction[9][37]~combout\ <= NOT \direct_map|cach_instruction[9][37]~combout\;
\direct_map|ALT_INV_cach_instruction[5][37]~combout\ <= NOT \direct_map|cach_instruction[5][37]~combout\;
\direct_map|ALT_INV_cach_instruction[1][37]~combout\ <= NOT \direct_map|cach_instruction[1][37]~combout\;
\direct_map|ALT_INV_cach_instruction[12][37]~combout\ <= NOT \direct_map|cach_instruction[12][37]~combout\;
\direct_map|ALT_INV_cach_instruction[8][37]~combout\ <= NOT \direct_map|cach_instruction[8][37]~combout\;
\direct_map|ALT_INV_cach_instruction[4][37]~combout\ <= NOT \direct_map|cach_instruction[4][37]~combout\;
\direct_map|ALT_INV_cach_instruction[0][37]~combout\ <= NOT \direct_map|cach_instruction[0][37]~combout\;
\direct_map|ALT_INV_cach_instruction[15][38]~combout\ <= NOT \direct_map|cach_instruction[15][38]~combout\;
\direct_map|ALT_INV_cach_instruction[14][38]~combout\ <= NOT \direct_map|cach_instruction[14][38]~combout\;
\direct_map|ALT_INV_cach_instruction[13][38]~combout\ <= NOT \direct_map|cach_instruction[13][38]~combout\;
\direct_map|ALT_INV_cach_instruction[12][38]~combout\ <= NOT \direct_map|cach_instruction[12][38]~combout\;
\direct_map|ALT_INV_cach_instruction[11][38]~combout\ <= NOT \direct_map|cach_instruction[11][38]~combout\;
\direct_map|ALT_INV_cach_instruction[10][38]~combout\ <= NOT \direct_map|cach_instruction[10][38]~combout\;
\direct_map|ALT_INV_cach_instruction[9][38]~combout\ <= NOT \direct_map|cach_instruction[9][38]~combout\;
\ALT_INV_pc[31]~input_o\ <= NOT \pc[31]~input_o\;
\ALT_INV_pc[30]~input_o\ <= NOT \pc[30]~input_o\;
\ALT_INV_pc[29]~input_o\ <= NOT \pc[29]~input_o\;
\ALT_INV_pc[28]~input_o\ <= NOT \pc[28]~input_o\;
\ALT_INV_pc[27]~input_o\ <= NOT \pc[27]~input_o\;
\ALT_INV_pc[26]~input_o\ <= NOT \pc[26]~input_o\;
\ALT_INV_pc[25]~input_o\ <= NOT \pc[25]~input_o\;
\ALT_INV_pc[24]~input_o\ <= NOT \pc[24]~input_o\;
\ALT_INV_pc[23]~input_o\ <= NOT \pc[23]~input_o\;
\ALT_INV_pc[22]~input_o\ <= NOT \pc[22]~input_o\;
\ALT_INV_pc[21]~input_o\ <= NOT \pc[21]~input_o\;
\ALT_INV_pc[20]~input_o\ <= NOT \pc[20]~input_o\;
\ALT_INV_pc[19]~input_o\ <= NOT \pc[19]~input_o\;
\ALT_INV_pc[18]~input_o\ <= NOT \pc[18]~input_o\;
\ALT_INV_pc[17]~input_o\ <= NOT \pc[17]~input_o\;
\ALT_INV_pc[16]~input_o\ <= NOT \pc[16]~input_o\;
\ALT_INV_pc[14]~input_o\ <= NOT \pc[14]~input_o\;
\ALT_INV_pc[13]~input_o\ <= NOT \pc[13]~input_o\;
\ALT_INV_pc[12]~input_o\ <= NOT \pc[12]~input_o\;
\ALT_INV_pc[11]~input_o\ <= NOT \pc[11]~input_o\;
\ALT_INV_pc[10]~input_o\ <= NOT \pc[10]~input_o\;
\ALT_INV_pc[9]~input_o\ <= NOT \pc[9]~input_o\;
\ALT_INV_pc[8]~input_o\ <= NOT \pc[8]~input_o\;
\ALT_INV_pc[7]~input_o\ <= NOT \pc[7]~input_o\;
\ALT_INV_pc[6]~input_o\ <= NOT \pc[6]~input_o\;
\ALT_INV_pc[5]~input_o\ <= NOT \pc[5]~input_o\;
\ALT_INV_pc[4]~input_o\ <= NOT \pc[4]~input_o\;
\ALT_INV_pc[15]~input_o\ <= NOT \pc[15]~input_o\;
\ALT_INV_pc[3]~input_o\ <= NOT \pc[3]~input_o\;
\ALT_INV_pc[2]~input_o\ <= NOT \pc[2]~input_o\;
\ALT_INV_pc[1]~input_o\ <= NOT \pc[1]~input_o\;
\ALT_INV_pc[0]~input_o\ <= NOT \pc[0]~input_o\;
\ALT_INV_ext_in_hit~input_o\ <= NOT \ext_in_hit~input_o\;
\direct_map|ALT_INV_cach_instruction[15][29]~combout\ <= NOT \direct_map|cach_instruction[15][29]~combout\;
\direct_map|ALT_INV_cach_instruction[11][29]~combout\ <= NOT \direct_map|cach_instruction[11][29]~combout\;
\direct_map|ALT_INV_cach_instruction[7][29]~combout\ <= NOT \direct_map|cach_instruction[7][29]~combout\;
\direct_map|ALT_INV_cach_instruction[3][29]~combout\ <= NOT \direct_map|cach_instruction[3][29]~combout\;
\direct_map|ALT_INV_cach_instruction[14][29]~combout\ <= NOT \direct_map|cach_instruction[14][29]~combout\;
\direct_map|ALT_INV_cach_instruction[10][29]~combout\ <= NOT \direct_map|cach_instruction[10][29]~combout\;
\direct_map|ALT_INV_cach_instruction[6][29]~combout\ <= NOT \direct_map|cach_instruction[6][29]~combout\;
\direct_map|ALT_INV_cach_instruction[2][29]~combout\ <= NOT \direct_map|cach_instruction[2][29]~combout\;
\direct_map|ALT_INV_cach_instruction[13][29]~combout\ <= NOT \direct_map|cach_instruction[13][29]~combout\;
\direct_map|ALT_INV_cach_instruction[9][29]~combout\ <= NOT \direct_map|cach_instruction[9][29]~combout\;
\direct_map|ALT_INV_cach_instruction[5][29]~combout\ <= NOT \direct_map|cach_instruction[5][29]~combout\;
\direct_map|ALT_INV_cach_instruction[1][29]~combout\ <= NOT \direct_map|cach_instruction[1][29]~combout\;
\direct_map|ALT_INV_cach_instruction[12][29]~combout\ <= NOT \direct_map|cach_instruction[12][29]~combout\;
\direct_map|ALT_INV_cach_instruction[8][29]~combout\ <= NOT \direct_map|cach_instruction[8][29]~combout\;
\direct_map|ALT_INV_cach_instruction[4][29]~combout\ <= NOT \direct_map|cach_instruction[4][29]~combout\;
\direct_map|ALT_INV_cach_instruction[0][29]~combout\ <= NOT \direct_map|cach_instruction[0][29]~combout\;
\direct_map|ALT_INV_cach_instruction[15][30]~combout\ <= NOT \direct_map|cach_instruction[15][30]~combout\;
\direct_map|ALT_INV_cach_instruction[14][30]~combout\ <= NOT \direct_map|cach_instruction[14][30]~combout\;
\direct_map|ALT_INV_cach_instruction[13][30]~combout\ <= NOT \direct_map|cach_instruction[13][30]~combout\;
\direct_map|ALT_INV_cach_instruction[12][30]~combout\ <= NOT \direct_map|cach_instruction[12][30]~combout\;
\direct_map|ALT_INV_cach_instruction[11][30]~combout\ <= NOT \direct_map|cach_instruction[11][30]~combout\;
\direct_map|ALT_INV_cach_instruction[10][30]~combout\ <= NOT \direct_map|cach_instruction[10][30]~combout\;
\direct_map|ALT_INV_cach_instruction[9][30]~combout\ <= NOT \direct_map|cach_instruction[9][30]~combout\;
\direct_map|ALT_INV_cach_instruction[8][30]~combout\ <= NOT \direct_map|cach_instruction[8][30]~combout\;

-- Location: IOOBUF_X78_Y81_N19
\tag_ext[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(0));

-- Location: IOOBUF_X88_Y81_N20
\tag_ext[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(1));

-- Location: IOOBUF_X54_Y81_N36
\tag_ext[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(2));

-- Location: IOOBUF_X72_Y0_N53
\tag_ext[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(3));

-- Location: IOOBUF_X76_Y81_N2
\tag_ext[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(4));

-- Location: IOOBUF_X64_Y81_N53
\tag_ext[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(5));

-- Location: IOOBUF_X86_Y81_N19
\tag_ext[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(6));

-- Location: IOOBUF_X60_Y0_N53
\tag_ext[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(7));

-- Location: IOOBUF_X64_Y81_N2
\tag_ext[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(8));

-- Location: IOOBUF_X86_Y81_N53
\tag_ext[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(9));

-- Location: IOOBUF_X66_Y81_N76
\tag_ext[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(10));

-- Location: IOOBUF_X82_Y81_N59
\tag_ext[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(11));

-- Location: IOOBUF_X89_Y38_N56
\tag_ext[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(12));

-- Location: IOOBUF_X89_Y9_N56
\tag_ext[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(13));

-- Location: IOOBUF_X82_Y81_N76
\tag_ext[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(14));

-- Location: IOOBUF_X68_Y81_N36
\tag_ext[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(15));

-- Location: IOOBUF_X76_Y81_N36
\tag_ext[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(16));

-- Location: IOOBUF_X78_Y81_N2
\tag_ext[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(17));

-- Location: IOOBUF_X50_Y81_N93
\tag_ext[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(18));

-- Location: IOOBUF_X68_Y81_N2
\tag_ext[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(19));

-- Location: IOOBUF_X4_Y0_N53
\tag_ext[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(20));

-- Location: IOOBUF_X76_Y81_N53
\tag_ext[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(21));

-- Location: IOOBUF_X58_Y81_N59
\tag_ext[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(22));

-- Location: IOOBUF_X89_Y6_N22
\tag_ext[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(23));

-- Location: IOOBUF_X88_Y81_N3
\tag_ext[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(24));

-- Location: IOOBUF_X89_Y35_N79
\tag_ext[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(25));

-- Location: IOOBUF_X88_Y81_N37
\tag_ext[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(26));

-- Location: IOOBUF_X74_Y81_N76
\tag_ext[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tag_ext(27));

-- Location: IOOBUF_X30_Y81_N36
\inst[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_inst(0));

-- Location: IOOBUF_X40_Y0_N36
\inst[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_inst(1));

-- Location: IOOBUF_X36_Y81_N19
\inst[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_inst(2));

-- Location: IOOBUF_X50_Y81_N76
\inst[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_inst(3));

-- Location: IOOBUF_X8_Y0_N19
\inst[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_inst(4));

-- Location: IOOBUF_X34_Y0_N93
\inst[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_inst(5));

-- Location: IOOBUF_X38_Y0_N2
\inst[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_inst(6));

-- Location: IOOBUF_X6_Y0_N53
\inst[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_inst(7));

-- Location: IOOBUF_X89_Y35_N45
\inst[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_inst(8));

-- Location: IOOBUF_X38_Y0_N53
\inst[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_inst(9));

-- Location: IOOBUF_X50_Y0_N93
\inst[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_inst(10));

-- Location: IOOBUF_X30_Y81_N19
\inst[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_inst(11));

-- Location: IOOBUF_X58_Y0_N59
\inst[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_inst(12));

-- Location: IOOBUF_X89_Y6_N39
\inst[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_inst(13));

-- Location: IOOBUF_X40_Y81_N36
\inst[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_inst(14));

-- Location: IOOBUF_X36_Y0_N19
\inst[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_inst(15));

-- Location: IOOBUF_X38_Y81_N19
\inst[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_inst(16));

-- Location: IOOBUF_X56_Y0_N2
\inst[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_inst(17));

-- Location: IOOBUF_X40_Y0_N19
\inst[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_inst(18));

-- Location: IOOBUF_X36_Y0_N2
\inst[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_inst(19));

-- Location: IOOBUF_X34_Y81_N42
\inst[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_inst(20));

-- Location: IOOBUF_X26_Y81_N93
\inst[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_inst(21));

-- Location: IOOBUF_X28_Y81_N2
\inst[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_inst(22));

-- Location: IOOBUF_X30_Y0_N2
\inst[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_inst(23));

-- Location: IOOBUF_X32_Y0_N53
\inst[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_inst(24));

-- Location: IOOBUF_X89_Y9_N22
\inst[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_inst(25));

-- Location: IOOBUF_X36_Y0_N53
\inst[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_inst(26));

-- Location: IOOBUF_X26_Y0_N76
\inst[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_inst(27));

-- Location: IOOBUF_X40_Y0_N53
\inst[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_inst(28));

-- Location: IOOBUF_X89_Y4_N96
\inst[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_inst(29));

-- Location: IOOBUF_X34_Y81_N59
\inst[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_inst(30));

-- Location: IOOBUF_X8_Y0_N53
\inst[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|s[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_inst(31));

-- Location: IOOBUF_X6_Y0_N19
\inst_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux31~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(0));

-- Location: IOOBUF_X52_Y0_N19
\inst_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux30~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(1));

-- Location: IOOBUF_X36_Y81_N53
\inst_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux29~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(2));

-- Location: IOOBUF_X34_Y0_N59
\inst_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux28~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(3));

-- Location: IOOBUF_X52_Y0_N36
\inst_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux27~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(4));

-- Location: IOOBUF_X40_Y0_N2
\inst_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux26~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(5));

-- Location: IOOBUF_X30_Y0_N19
\inst_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux25~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(6));

-- Location: IOOBUF_X26_Y81_N76
\inst_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux24~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(7));

-- Location: IOOBUF_X89_Y9_N39
\inst_1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux23~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(8));

-- Location: IOOBUF_X32_Y0_N2
\inst_1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux22~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(9));

-- Location: IOOBUF_X28_Y0_N53
\inst_1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux21~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(10));

-- Location: IOOBUF_X89_Y6_N56
\inst_1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux20~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(11));

-- Location: IOOBUF_X32_Y0_N19
\inst_1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux19~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(12));

-- Location: IOOBUF_X40_Y81_N53
\inst_1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux18~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(13));

-- Location: IOOBUF_X38_Y0_N19
\inst_1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux17~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(14));

-- Location: IOOBUF_X54_Y0_N36
\inst_1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux16~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(15));

-- Location: IOOBUF_X58_Y0_N93
\inst_1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux15~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(16));

-- Location: IOOBUF_X52_Y0_N2
\inst_1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux14~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(17));

-- Location: IOOBUF_X50_Y81_N59
\inst_1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux13~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(18));

-- Location: IOOBUF_X50_Y0_N59
\inst_1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux12~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(19));

-- Location: IOOBUF_X50_Y0_N42
\inst_1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux11~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(20));

-- Location: IOOBUF_X60_Y0_N36
\inst_1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux10~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(21));

-- Location: IOOBUF_X54_Y0_N19
\inst_1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux9~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(22));

-- Location: IOOBUF_X40_Y81_N2
\inst_1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux8~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(23));

-- Location: IOOBUF_X34_Y0_N76
\inst_1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux7~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(24));

-- Location: IOOBUF_X52_Y0_N53
\inst_1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux6~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(25));

-- Location: IOOBUF_X36_Y0_N36
\inst_1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux5~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(26));

-- Location: IOOBUF_X26_Y0_N42
\inst_1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux4~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(27));

-- Location: IOOBUF_X38_Y0_N36
\inst_1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(28));

-- Location: IOOBUF_X89_Y9_N5
\inst_1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux2~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(29));

-- Location: IOOBUF_X54_Y0_N53
\inst_1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux1~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(30));

-- Location: IOOBUF_X30_Y81_N2
\inst_1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \direct_map|Mux0~4_combout\,
	devoe => ww_devoe,
	o => ww_inst_1(31));

-- Location: IOOBUF_X34_Y0_N42
\ext_out_hit~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hit~0_combout\,
	devoe => ww_devoe,
	o => ww_ext_out_hit);

-- Location: IOOBUF_X74_Y81_N93
\valid_ext~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_valid_ext);

-- Location: IOOBUF_X56_Y0_N53
\is_tag_equal_ext~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \is_tag_equal~combout\,
	devoe => ww_devoe,
	o => ww_is_tag_equal_ext);

-- Location: IOIBUF_X28_Y0_N18
\ext_in_hit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ext_in_hit,
	o => \ext_in_hit~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\pc[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(19),
	o => \pc[19]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\pc[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(20),
	o => \pc[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\pc[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(17),
	o => \pc[17]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\pc[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(16),
	o => \pc[16]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\pc[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(21),
	o => \pc[21]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\pc[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(18),
	o => \pc[18]~input_o\);

-- Location: LABCELL_X67_Y2_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\pc[21]~input_o\ & ( !\pc[18]~input_o\ & ( (!\pc[19]~input_o\ & (!\pc[20]~input_o\ & (!\pc[17]~input_o\ & !\pc[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[19]~input_o\,
	datab => \ALT_INV_pc[20]~input_o\,
	datac => \ALT_INV_pc[17]~input_o\,
	datad => \ALT_INV_pc[16]~input_o\,
	datae => \ALT_INV_pc[21]~input_o\,
	dataf => \ALT_INV_pc[18]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X89_Y36_N21
\pc[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(7),
	o => \pc[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\pc[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(4),
	o => \pc[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\pc[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(6),
	o => \pc[6]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\pc[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(9),
	o => \pc[9]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\pc[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(5),
	o => \pc[5]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\pc[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(8),
	o => \pc[8]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\pc[5]~input_o\ & ( !\pc[8]~input_o\ & ( (!\pc[7]~input_o\ & (!\pc[4]~input_o\ & (!\pc[6]~input_o\ & !\pc[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[7]~input_o\,
	datab => \ALT_INV_pc[4]~input_o\,
	datac => \ALT_INV_pc[6]~input_o\,
	datad => \ALT_INV_pc[9]~input_o\,
	datae => \ALT_INV_pc[5]~input_o\,
	dataf => \ALT_INV_pc[8]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X68_Y0_N35
\pc[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(23),
	o => \pc[23]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\pc[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(24),
	o => \pc[24]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\pc[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(25),
	o => \pc[25]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\pc[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(26),
	o => \pc[26]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\pc[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(22),
	o => \pc[22]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\pc[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(27),
	o => \pc[27]~input_o\);

-- Location: LABCELL_X67_Y2_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\pc[22]~input_o\ & ( !\pc[27]~input_o\ & ( (!\pc[23]~input_o\ & (!\pc[24]~input_o\ & (!\pc[25]~input_o\ & !\pc[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[23]~input_o\,
	datab => \ALT_INV_pc[24]~input_o\,
	datac => \ALT_INV_pc[25]~input_o\,
	datad => \ALT_INV_pc[26]~input_o\,
	datae => \ALT_INV_pc[22]~input_o\,
	dataf => \ALT_INV_pc[27]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X68_Y0_N1
\pc[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(31),
	o => \pc[31]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\pc[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(29),
	o => \pc[29]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\pc[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(30),
	o => \pc[30]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\pc[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(28),
	o => \pc[28]~input_o\);

-- Location: LABCELL_X67_Y2_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\pc[30]~input_o\ & ( !\pc[28]~input_o\ & ( (!\pc[31]~input_o\ & !\pc[29]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[31]~input_o\,
	datab => \ALT_INV_pc[29]~input_o\,
	datae => \ALT_INV_pc[30]~input_o\,
	dataf => \ALT_INV_pc[28]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X66_Y0_N75
\pc[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(13),
	o => \pc[13]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\pc[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(10),
	o => \pc[10]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\pc[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(11),
	o => \pc[11]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\pc[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(14),
	o => \pc[14]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\pc[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(12),
	o => \pc[12]~input_o\);

-- Location: LABCELL_X66_Y2_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\pc[14]~input_o\ & ( !\pc[12]~input_o\ & ( (!\pc[13]~input_o\ & (!\pc[10]~input_o\ & !\pc[11]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[13]~input_o\,
	datab => \ALT_INV_pc[10]~input_o\,
	datac => \ALT_INV_pc[11]~input_o\,
	datae => \ALT_INV_pc[14]~input_o\,
	dataf => \ALT_INV_pc[12]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X70_Y0_N1
\pc[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(15),
	o => \pc[15]~input_o\);

-- Location: LABCELL_X67_Y2_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~1_combout\ & ( !\pc[15]~input_o\ & ( (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_pc[15]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X28_Y6_N12
is_tag_equal : cyclonev_lcell_comb
-- Equation(s):
-- \is_tag_equal~combout\ = ( \is_tag_equal~combout\ & ( (!\ext_in_hit~input_o\) # (\Equal0~5_combout\) ) ) # ( !\is_tag_equal~combout\ & ( (\Equal0~5_combout\ & \ext_in_hit~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	dataf => \ALT_INV_is_tag_equal~combout\,
	combout => \is_tag_equal~combout\);

-- Location: LABCELL_X29_Y2_N12
\hit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hit~0_combout\ = ( \is_tag_equal~combout\ & ( \ext_in_hit~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ext_in_hit~input_o\,
	dataf => \ALT_INV_is_tag_equal~combout\,
	combout => \hit~0_combout\);

-- Location: IOIBUF_X56_Y0_N35
\wren_ext~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren_ext,
	o => \wren_ext~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X28_Y81_N52
\datain[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\pc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(0),
	o => \pc[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\pc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(1),
	o => \pc[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\pc[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(2),
	o => \pc[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\pc[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(3),
	o => \pc[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\datain[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\datain[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\datain[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\datain[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\datain[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\datain[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\datain[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\datain[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(8),
	o => \datain[8]~input_o\);

-- Location: IOIBUF_X36_Y81_N1
\datain[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(9),
	o => \datain[9]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\datain[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(10),
	o => \datain[10]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\datain[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(11),
	o => \datain[11]~input_o\);

-- Location: M10K_X26_Y6_N0
\U1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "000830008200081000800007F0007E0007D0007C0007B0007A000790007800077000760007500074000730007200071000700006F0006E0006D0006C0006B0006A000690006800067000660006500064",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "On_Chip_ram32x32_init.mif",
	init_file_layout => "port_a",
	logical_ram_name => "On_Chip_ram32x32:U1|altsyncram:altsyncram_component|altsyncram_kd34:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_ext~input_o\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X28_Y6_N0
\direct_map|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~10_combout\ = ( \pc[1]~input_o\ & ( !\pc[2]~input_o\ & ( (!\pc[0]~input_o\ & (\pc[3]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_is_tag_equal~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Decoder0~10_combout\);

-- Location: MLABCELL_X25_Y5_N51
\direct_map|cach_instruction[10][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][60]~combout\ = ( \direct_map|cach_instruction[10][60]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( !\direct_map|cach_instruction[10][60]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(0) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][60]~combout\,
	combout => \direct_map|cach_instruction[10][60]~combout\);

-- Location: MLABCELL_X28_Y6_N21
\direct_map|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~9_combout\ = ( \pc[3]~input_o\ & ( !\pc[2]~input_o\ & ( (\pc[0]~input_o\ & (!\pc[1]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_is_tag_equal~combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Decoder0~9_combout\);

-- Location: LABCELL_X30_Y4_N51
\direct_map|cach_instruction[9][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[9][60]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[9][60]~combout\);

-- Location: MLABCELL_X28_Y6_N27
\direct_map|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~8_combout\ = ( \pc[3]~input_o\ & ( !\pc[2]~input_o\ & ( (!\pc[0]~input_o\ & (!\pc[1]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_is_tag_equal~combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Decoder0~8_combout\);

-- Location: MLABCELL_X25_Y5_N18
\direct_map|cach_instruction[8][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[8][60]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[8][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[8][60]~combout\);

-- Location: MLABCELL_X28_Y6_N33
\direct_map|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~11_combout\ = ( !\pc[2]~input_o\ & ( \pc[1]~input_o\ & ( (\pc[0]~input_o\ & (\pc[3]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_is_tag_equal~combout\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Decoder0~11_combout\);

-- Location: MLABCELL_X25_Y5_N48
\direct_map|cach_instruction[11][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][60]~combout\ = ( \direct_map|cach_instruction[11][60]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( !\direct_map|cach_instruction[11][60]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(0) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][60]~combout\,
	combout => \direct_map|cach_instruction[11][60]~combout\);

-- Location: MLABCELL_X25_Y5_N0
\direct_map|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux31~2_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[11][60]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[9][60]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[11][60]~combout\ & ( 
-- (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[8][60]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[10][60]~combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[11][60]~combout\ & ( 
-- (\direct_map|cach_instruction[9][60]~combout\ & !\pc[1]~input_o\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[11][60]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[8][60]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[10][60]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][60]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][60]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[8][60]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][60]~combout\,
	combout => \direct_map|Mux31~2_combout\);

-- Location: MLABCELL_X28_Y6_N24
\direct_map|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~4_combout\ = ( \pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( (!\pc[0]~input_o\ & (!\pc[1]~input_o\ & ((!\ext_in_hit~input_o\) # (!\is_tag_equal~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_is_tag_equal~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Decoder0~4_combout\);

-- Location: MLABCELL_X25_Y6_N33
\direct_map|cach_instruction[4][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~4_combout\) # (\direct_map|cach_instruction[4][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[4][60]~combout\ & !\direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[4][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[4][60]~combout\);

-- Location: MLABCELL_X28_Y6_N18
\direct_map|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~5_combout\ = ( \pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( (\pc[0]~input_o\ & (!\pc[1]~input_o\ & ((!\ext_in_hit~input_o\) # (!\is_tag_equal~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_is_tag_equal~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Decoder0~5_combout\);

-- Location: LABCELL_X23_Y6_N18
\direct_map|cach_instruction[5][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][60]~combout\ = ( \direct_map|cach_instruction[5][60]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( !\direct_map|cach_instruction[5][60]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(0) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][60]~combout\,
	combout => \direct_map|cach_instruction[5][60]~combout\);

-- Location: MLABCELL_X28_Y6_N57
\direct_map|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~7_combout\ = ( !\pc[3]~input_o\ & ( \pc[0]~input_o\ & ( (\pc[1]~input_o\ & (\pc[2]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_is_tag_equal~combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Decoder0~7_combout\);

-- Location: LABCELL_X23_Y6_N27
\direct_map|cach_instruction[7][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][60]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \direct_map|ALT_INV_cach_instruction[7][60]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][60]~combout\);

-- Location: MLABCELL_X28_Y6_N48
\direct_map|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~6_combout\ = ( !\pc[0]~input_o\ & ( \pc[2]~input_o\ & ( (!\pc[3]~input_o\ & (\pc[1]~input_o\ & ((!\ext_in_hit~input_o\) # (!\is_tag_equal~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_is_tag_equal~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Decoder0~6_combout\);

-- Location: LABCELL_X23_Y6_N24
\direct_map|cach_instruction[6][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][60]~combout\ = ( \direct_map|cach_instruction[6][60]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(0)) ) ) # ( !\direct_map|cach_instruction[6][60]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(0) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][60]~combout\,
	combout => \direct_map|cach_instruction[6][60]~combout\);

-- Location: LABCELL_X23_Y6_N42
\direct_map|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux31~1_combout\ = ( \direct_map|cach_instruction[7][60]~combout\ & ( \direct_map|cach_instruction[6][60]~combout\ & ( ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[4][60]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[5][60]~combout\)))) # (\pc[1]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[7][60]~combout\ & ( \direct_map|cach_instruction[6][60]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[4][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[5][60]~combout\))))) # (\pc[1]~input_o\ & (((!\pc[0]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[7][60]~combout\ & ( 
-- !\direct_map|cach_instruction[6][60]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[4][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[5][60]~combout\))))) # (\pc[1]~input_o\ & (((\pc[0]~input_o\)))) 
-- ) ) ) # ( !\direct_map|cach_instruction[7][60]~combout\ & ( !\direct_map|cach_instruction[6][60]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[4][60]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[5][60]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[4][60]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[5][60]~combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[7][60]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][60]~combout\,
	combout => \direct_map|Mux31~1_combout\);

-- Location: MLABCELL_X28_Y6_N9
\direct_map|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~2_combout\ = ( \pc[1]~input_o\ & ( !\pc[0]~input_o\ & ( (!\pc[3]~input_o\ & (!\pc[2]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_is_tag_equal~combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Decoder0~2_combout\);

-- Location: LABCELL_X23_Y6_N15
\direct_map|cach_instruction[2][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][60]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \direct_map|ALT_INV_cach_instruction[2][60]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][60]~combout\);

-- Location: MLABCELL_X28_Y6_N51
\direct_map|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~3_combout\ = ( !\pc[2]~input_o\ & ( \pc[0]~input_o\ & ( (!\pc[3]~input_o\ & (\pc[1]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_is_tag_equal~combout\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Decoder0~3_combout\);

-- Location: LABCELL_X24_Y6_N36
\direct_map|cach_instruction[3][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][60]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \direct_map|ALT_INV_cach_instruction[3][60]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][60]~combout\);

-- Location: MLABCELL_X28_Y6_N6
\direct_map|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~1_combout\ = ( \pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( (!\pc[3]~input_o\ & (!\pc[2]~input_o\ & ((!\ext_in_hit~input_o\) # (!\is_tag_equal~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_is_tag_equal~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Decoder0~1_combout\);

-- Location: MLABCELL_X25_Y6_N15
\direct_map|cach_instruction[1][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[1][60]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[1][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[1][60]~combout\);

-- Location: MLABCELL_X28_Y6_N36
\direct_map|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~0_combout\ = ( !\ext_in_hit~input_o\ & ( \is_tag_equal~combout\ & ( (!\pc[1]~input_o\ & (!\pc[3]~input_o\ & (!\pc[0]~input_o\ & !\pc[2]~input_o\))) ) ) ) # ( \ext_in_hit~input_o\ & ( !\is_tag_equal~combout\ & ( (!\pc[1]~input_o\ & 
-- (!\pc[3]~input_o\ & (!\pc[0]~input_o\ & !\pc[2]~input_o\))) ) ) ) # ( !\ext_in_hit~input_o\ & ( !\is_tag_equal~combout\ & ( (!\pc[1]~input_o\ & (!\pc[3]~input_o\ & (!\pc[0]~input_o\ & !\pc[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \ALT_INV_ext_in_hit~input_o\,
	dataf => \ALT_INV_is_tag_equal~combout\,
	combout => \direct_map|Decoder0~0_combout\);

-- Location: LABCELL_X23_Y6_N12
\direct_map|cach_instruction[0][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|cach_instruction[0][60]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][60]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][60]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[0][60]~combout\);

-- Location: LABCELL_X23_Y6_N36
\direct_map|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux31~0_combout\ = ( \direct_map|cach_instruction[1][60]~combout\ & ( \direct_map|cach_instruction[0][60]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[2][60]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[3][60]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[1][60]~combout\ & ( \direct_map|cach_instruction[0][60]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)))) # (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[2][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[3][60]~combout\))))) ) ) ) # ( \direct_map|cach_instruction[1][60]~combout\ & ( !\direct_map|cach_instruction[0][60]~combout\ & ( (!\pc[1]~input_o\ & 
-- (((\pc[0]~input_o\)))) # (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[2][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[3][60]~combout\))))) ) ) ) # ( !\direct_map|cach_instruction[1][60]~combout\ & ( 
-- !\direct_map|cach_instruction[0][60]~combout\ & ( (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & (\direct_map|cach_instruction[2][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[3][60]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[2][60]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[3][60]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[1][60]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][60]~combout\,
	combout => \direct_map|Mux31~0_combout\);

-- Location: MLABCELL_X28_Y6_N54
\direct_map|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~14_combout\ = ( !\pc[0]~input_o\ & ( \pc[3]~input_o\ & ( (\pc[1]~input_o\ & (\pc[2]~input_o\ & ((!\ext_in_hit~input_o\) # (!\is_tag_equal~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_is_tag_equal~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Decoder0~14_combout\);

-- Location: MLABCELL_X25_Y5_N27
\direct_map|cach_instruction[14][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][60]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \direct_map|ALT_INV_cach_instruction[14][60]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][60]~combout\);

-- Location: MLABCELL_X28_Y6_N3
\direct_map|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~12_combout\ = ( \pc[2]~input_o\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\pc[3]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_is_tag_equal~combout\,
	datac => \ALT_INV_ext_in_hit~input_o\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Decoder0~12_combout\);

-- Location: LABCELL_X30_Y5_N33
\direct_map|cach_instruction[12][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~12_combout\) # (\direct_map|cach_instruction[12][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[12][60]~combout\ & !\direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[12][60]~combout\);

-- Location: LABCELL_X30_Y4_N12
\direct_map|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~15_combout\ = ( !\ext_in_hit~input_o\ & ( \is_tag_equal~combout\ & ( (\pc[0]~input_o\ & (\pc[3]~input_o\ & (\pc[1]~input_o\ & \pc[2]~input_o\))) ) ) ) # ( \ext_in_hit~input_o\ & ( !\is_tag_equal~combout\ & ( (\pc[0]~input_o\ & 
-- (\pc[3]~input_o\ & (\pc[1]~input_o\ & \pc[2]~input_o\))) ) ) ) # ( !\ext_in_hit~input_o\ & ( !\is_tag_equal~combout\ & ( (\pc[0]~input_o\ & (\pc[3]~input_o\ & (\pc[1]~input_o\ & \pc[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \ALT_INV_ext_in_hit~input_o\,
	dataf => \ALT_INV_is_tag_equal~combout\,
	combout => \direct_map|Decoder0~15_combout\);

-- Location: MLABCELL_X25_Y5_N30
\direct_map|cach_instruction[15][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][60]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(0) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][60]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\direct_map|cach_instruction[15][60]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[15][60]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \direct_map|cach_instruction[15][60]~combout\);

-- Location: MLABCELL_X28_Y6_N30
\direct_map|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Decoder0~13_combout\ = ( !\pc[1]~input_o\ & ( \pc[2]~input_o\ & ( (\pc[0]~input_o\ & (\pc[3]~input_o\ & ((!\is_tag_equal~combout\) # (!\ext_in_hit~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_is_tag_equal~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_ext_in_hit~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Decoder0~13_combout\);

-- Location: MLABCELL_X25_Y5_N9
\direct_map|cach_instruction[13][60]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][60]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(0) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][60]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datac => \direct_map|ALT_INV_cach_instruction[13][60]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][60]~combout\);

-- Location: MLABCELL_X25_Y5_N54
\direct_map|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux31~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[13][60]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[14][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[15][60]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[13][60]~combout\ & ( (\pc[0]~input_o\) # (\direct_map|cach_instruction[12][60]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[13][60]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[14][60]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[15][60]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[13][60]~combout\ & ( (\direct_map|cach_instruction[12][60]~combout\ & 
-- !\pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][60]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[12][60]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][60]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][60]~combout\,
	combout => \direct_map|Mux31~3_combout\);

-- Location: LABCELL_X23_Y6_N0
\direct_map|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux31~4_combout\ = ( \direct_map|Mux31~0_combout\ & ( \direct_map|Mux31~3_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|Mux31~1_combout\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\)) # (\direct_map|Mux31~2_combout\))) ) 
-- ) ) # ( !\direct_map|Mux31~0_combout\ & ( \direct_map|Mux31~3_combout\ & ( (!\pc[3]~input_o\ & (((\pc[2]~input_o\ & \direct_map|Mux31~1_combout\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\)) # (\direct_map|Mux31~2_combout\))) ) ) ) # ( 
-- \direct_map|Mux31~0_combout\ & ( !\direct_map|Mux31~3_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|Mux31~1_combout\)))) # (\pc[3]~input_o\ & (\direct_map|Mux31~2_combout\ & (!\pc[2]~input_o\))) ) ) ) # ( 
-- !\direct_map|Mux31~0_combout\ & ( !\direct_map|Mux31~3_combout\ & ( (!\pc[3]~input_o\ & (((\pc[2]~input_o\ & \direct_map|Mux31~1_combout\)))) # (\pc[3]~input_o\ & (\direct_map|Mux31~2_combout\ & (!\pc[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_Mux31~2_combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_Mux31~1_combout\,
	datae => \direct_map|ALT_INV_Mux31~0_combout\,
	dataf => \direct_map|ALT_INV_Mux31~3_combout\,
	combout => \direct_map|Mux31~4_combout\);

-- Location: LABCELL_X24_Y5_N36
\mux|s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[0]~0_combout\ = ( \direct_map|Mux31~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(0)) # (\hit~0_combout\) ) ) # ( !\direct_map|Mux31~4_combout\ & ( (!\hit~0_combout\ & \U1|altsyncram_component|auto_generated|q_a\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \direct_map|ALT_INV_Mux31~4_combout\,
	combout => \mux|s[0]~0_combout\);

-- Location: LABCELL_X29_Y8_N33
\direct_map|cach_instruction[14][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][59]~combout\ = ( \direct_map|cach_instruction[14][59]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[14][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][59]~combout\,
	combout => \direct_map|cach_instruction[14][59]~combout\);

-- Location: LABCELL_X29_Y8_N15
\direct_map|cach_instruction[10][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][59]~combout\ = ( \direct_map|cach_instruction[10][59]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[10][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][59]~combout\,
	combout => \direct_map|cach_instruction[10][59]~combout\);

-- Location: MLABCELL_X28_Y7_N54
\direct_map|cach_instruction[6][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][59]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][59]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_cach_instruction[6][59]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][59]~combout\);

-- Location: LABCELL_X29_Y8_N12
\direct_map|cach_instruction[2][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][59]~combout\ = ( \direct_map|cach_instruction[2][59]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[2][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][59]~combout\,
	combout => \direct_map|cach_instruction[2][59]~combout\);

-- Location: LABCELL_X29_Y8_N36
\direct_map|Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux30~2_combout\ = ( \direct_map|cach_instruction[6][59]~combout\ & ( \direct_map|cach_instruction[2][59]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][59]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[14][59]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[6][59]~combout\ & ( \direct_map|cach_instruction[2][59]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[10][59]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][59]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[6][59]~combout\ & ( !\direct_map|cach_instruction[2][59]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][59]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][59]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[6][59]~combout\ & ( 
-- !\direct_map|cach_instruction[2][59]~combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][59]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][59]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][59]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[10][59]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[6][59]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][59]~combout\,
	combout => \direct_map|Mux30~2_combout\);

-- Location: LABCELL_X29_Y8_N27
\direct_map|cach_instruction[0][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][59]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(1) & ( (\direct_map|cach_instruction[0][59]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][59]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][59]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \direct_map|cach_instruction[0][59]~combout\);

-- Location: LABCELL_X29_Y8_N6
\direct_map|cach_instruction[12][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][59]~combout\ = ( \direct_map|cach_instruction[12][59]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[12][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][59]~combout\,
	combout => \direct_map|cach_instruction[12][59]~combout\);

-- Location: LABCELL_X29_Y8_N24
\direct_map|cach_instruction[4][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][59]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][59]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \direct_map|ALT_INV_cach_instruction[4][59]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][59]~combout\);

-- Location: LABCELL_X29_Y8_N9
\direct_map|cach_instruction[8][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][59]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][59]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \direct_map|ALT_INV_cach_instruction[8][59]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][59]~combout\);

-- Location: LABCELL_X29_Y8_N0
\direct_map|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux30~0_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[8][59]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[4][59]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][59]~combout\)) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[8][59]~combout\ & ( (\pc[3]~input_o\) # (\direct_map|cach_instruction[0][59]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][59]~combout\ & ( (!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[4][59]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][59]~combout\)) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][59]~combout\ & ( (\direct_map|cach_instruction[0][59]~combout\ & 
-- !\pc[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][59]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[12][59]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[4][59]~combout\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][59]~combout\,
	combout => \direct_map|Mux30~0_combout\);

-- Location: LABCELL_X27_Y5_N18
\direct_map|cach_instruction[3][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][59]~combout\ = ( \direct_map|cach_instruction[3][59]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[3][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][59]~combout\,
	combout => \direct_map|cach_instruction[3][59]~combout\);

-- Location: MLABCELL_X28_Y5_N48
\direct_map|cach_instruction[11][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][59]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(1) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][59]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (\direct_map|cach_instruction[11][59]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[11][59]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \direct_map|cach_instruction[11][59]~combout\);

-- Location: LABCELL_X27_Y5_N21
\direct_map|cach_instruction[7][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][59]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(1) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][59]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_cach_instruction[7][59]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][59]~combout\);

-- Location: LABCELL_X30_Y7_N30
\direct_map|cach_instruction[15][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][59]~combout\ = ( \direct_map|cach_instruction[15][59]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[15][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][59]~combout\,
	combout => \direct_map|cach_instruction[15][59]~combout\);

-- Location: LABCELL_X27_Y5_N0
\direct_map|Mux30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux30~3_combout\ = ( \direct_map|cach_instruction[7][59]~combout\ & ( \direct_map|cach_instruction[15][59]~combout\ & ( ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][59]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[11][59]~combout\)))) # (\pc[2]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[7][59]~combout\ & ( \direct_map|cach_instruction[15][59]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[3][59]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[11][59]~combout\))))) # (\pc[2]~input_o\ & (((\pc[3]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[7][59]~combout\ & ( 
-- !\direct_map|cach_instruction[15][59]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][59]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[11][59]~combout\))))) # (\pc[2]~input_o\ & 
-- (((!\pc[3]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[7][59]~combout\ & ( !\direct_map|cach_instruction[15][59]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][59]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[11][59]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][59]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][59]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[7][59]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][59]~combout\,
	combout => \direct_map|Mux30~3_combout\);

-- Location: LABCELL_X29_Y8_N51
\direct_map|cach_instruction[13][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][59]~combout\ = ( \direct_map|cach_instruction[13][59]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[13][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][59]~combout\,
	combout => \direct_map|cach_instruction[13][59]~combout\);

-- Location: LABCELL_X29_Y8_N30
\direct_map|cach_instruction[9][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][59]~combout\ = ( \direct_map|cach_instruction[9][59]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[9][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][59]~combout\,
	combout => \direct_map|cach_instruction[9][59]~combout\);

-- Location: LABCELL_X29_Y8_N48
\direct_map|cach_instruction[1][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][59]~combout\ = ( \direct_map|cach_instruction[1][59]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|cach_instruction[1][59]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(1) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][59]~combout\,
	combout => \direct_map|cach_instruction[1][59]~combout\);

-- Location: MLABCELL_X28_Y6_N45
\direct_map|cach_instruction[5][59]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][59]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(1) & ( (\direct_map|cach_instruction[5][59]~combout\) # (\direct_map|Decoder0~5_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\direct_map|Decoder0~5_combout\ & \direct_map|cach_instruction[5][59]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][59]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \direct_map|cach_instruction[5][59]~combout\);

-- Location: LABCELL_X29_Y8_N18
\direct_map|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux30~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[5][59]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[13][59]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[5][59]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[1][59]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[9][59]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[5][59]~combout\ & ( 
-- (\direct_map|cach_instruction[13][59]~combout\ & \pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[5][59]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[1][59]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[9][59]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][59]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][59]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][59]~combout\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][59]~combout\,
	combout => \direct_map|Mux30~1_combout\);

-- Location: LABCELL_X29_Y8_N42
\direct_map|Mux30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux30~4_combout\ = ( \pc[0]~input_o\ & ( \direct_map|Mux30~1_combout\ & ( (!\pc[1]~input_o\) # (\direct_map|Mux30~3_combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|Mux30~1_combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|Mux30~0_combout\))) 
-- # (\pc[1]~input_o\ & (\direct_map|Mux30~2_combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|Mux30~1_combout\ & ( (\pc[1]~input_o\ & \direct_map|Mux30~3_combout\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|Mux30~1_combout\ & ( (!\pc[1]~input_o\ & 
-- ((\direct_map|Mux30~0_combout\))) # (\pc[1]~input_o\ & (\direct_map|Mux30~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_Mux30~2_combout\,
	datac => \direct_map|ALT_INV_Mux30~0_combout\,
	datad => \direct_map|ALT_INV_Mux30~3_combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_Mux30~1_combout\,
	combout => \direct_map|Mux30~4_combout\);

-- Location: MLABCELL_X34_Y4_N3
\mux|s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[1]~1_combout\ = ( \direct_map|Mux30~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(1)) ) ) # ( !\direct_map|Mux30~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(1) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux30~4_combout\,
	combout => \mux|s[1]~1_combout\);

-- Location: LABCELL_X30_Y8_N3
\direct_map|cach_instruction[4][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][58]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_cach_instruction[4][58]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][58]~combout\);

-- Location: LABCELL_X30_Y8_N30
\direct_map|cach_instruction[6][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][58]~combout\ = ( \direct_map|cach_instruction[6][58]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[6][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][58]~combout\,
	combout => \direct_map|cach_instruction[6][58]~combout\);

-- Location: MLABCELL_X25_Y7_N24
\direct_map|cach_instruction[5][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][58]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][58]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( 
-- \direct_map|cach_instruction[5][58]~combout\ ) ) # ( \direct_map|Decoder0~5_combout\ & ( !\direct_map|cach_instruction[5][58]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][58]~combout\,
	combout => \direct_map|cach_instruction[5][58]~combout\);

-- Location: LABCELL_X30_Y8_N9
\direct_map|cach_instruction[7][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][58]~combout\ = ( \direct_map|cach_instruction[7][58]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[7][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][58]~combout\,
	combout => \direct_map|cach_instruction[7][58]~combout\);

-- Location: LABCELL_X30_Y8_N36
\direct_map|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux29~1_combout\ = ( \direct_map|cach_instruction[5][58]~combout\ & ( \direct_map|cach_instruction[7][58]~combout\ & ( ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][58]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[6][58]~combout\)))) # (\pc[0]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[5][58]~combout\ & ( \direct_map|cach_instruction[7][58]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[4][58]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[6][58]~combout\))))) # (\pc[0]~input_o\ & (((\pc[1]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[5][58]~combout\ & ( 
-- !\direct_map|cach_instruction[7][58]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][58]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[6][58]~combout\))))) # (\pc[0]~input_o\ & 
-- (((!\pc[1]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[5][58]~combout\ & ( !\direct_map|cach_instruction[7][58]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][58]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[6][58]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[4][58]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[6][58]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[5][58]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][58]~combout\,
	combout => \direct_map|Mux29~1_combout\);

-- Location: LABCELL_X30_Y8_N51
\direct_map|cach_instruction[10][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][58]~combout\ = ( \direct_map|cach_instruction[10][58]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[10][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][58]~combout\,
	combout => \direct_map|cach_instruction[10][58]~combout\);

-- Location: LABCELL_X30_Y8_N6
\direct_map|cach_instruction[11][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][58]~combout\ = ( \direct_map|cach_instruction[11][58]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[11][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][58]~combout\,
	combout => \direct_map|cach_instruction[11][58]~combout\);

-- Location: LABCELL_X27_Y9_N42
\direct_map|cach_instruction[8][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][58]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[8][58]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][58]~combout\);

-- Location: MLABCELL_X28_Y7_N51
\direct_map|cach_instruction[9][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][58]~combout\ = ( \direct_map|cach_instruction[9][58]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[9][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][58]~combout\,
	combout => \direct_map|cach_instruction[9][58]~combout\);

-- Location: LABCELL_X30_Y8_N42
\direct_map|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux29~2_combout\ = ( \direct_map|cach_instruction[9][58]~combout\ & ( \pc[0]~input_o\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[11][58]~combout\) ) ) ) # ( !\direct_map|cach_instruction[9][58]~combout\ & ( \pc[0]~input_o\ & ( 
-- (\direct_map|cach_instruction[11][58]~combout\ & \pc[1]~input_o\) ) ) ) # ( \direct_map|cach_instruction[9][58]~combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[8][58]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[10][58]~combout\)) ) ) ) # ( !\direct_map|cach_instruction[9][58]~combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[8][58]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[10][58]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][58]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][58]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[8][58]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[9][58]~combout\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Mux29~2_combout\);

-- Location: LABCELL_X31_Y4_N30
\direct_map|cach_instruction[12][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][58]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(2) & ( (\direct_map|Decoder0~12_combout\) # (\direct_map|cach_instruction[12][58]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (\direct_map|cach_instruction[12][58]~combout\ & !\direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[12][58]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \direct_map|cach_instruction[12][58]~combout\);

-- Location: LABCELL_X31_Y4_N51
\direct_map|cach_instruction[13][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][58]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(2) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][58]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (\direct_map|cach_instruction[13][58]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][58]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \direct_map|cach_instruction[13][58]~combout\);

-- Location: LABCELL_X27_Y6_N18
\direct_map|cach_instruction[14][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][58]~combout\ = ( \direct_map|cach_instruction[14][58]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[14][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][58]~combout\,
	combout => \direct_map|cach_instruction[14][58]~combout\);

-- Location: LABCELL_X31_Y4_N24
\direct_map|cach_instruction[15][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][58]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(2) & ( (\direct_map|cach_instruction[15][58]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][58]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~15_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][58]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \direct_map|cach_instruction[15][58]~combout\);

-- Location: LABCELL_X31_Y4_N36
\direct_map|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux29~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[15][58]~combout\ & ( (\direct_map|cach_instruction[14][58]~combout\) # (\pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[15][58]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][58]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[13][58]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][58]~combout\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[14][58]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][58]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][58]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[13][58]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][58]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][58]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][58]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][58]~combout\,
	combout => \direct_map|Mux29~3_combout\);

-- Location: MLABCELL_X25_Y4_N57
\direct_map|cach_instruction[3][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][58]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_cach_instruction[3][58]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][58]~combout\);

-- Location: MLABCELL_X25_Y4_N42
\direct_map|cach_instruction[0][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][58]~combout\ = ( \direct_map|cach_instruction[0][58]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[0][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][58]~combout\,
	combout => \direct_map|cach_instruction[0][58]~combout\);

-- Location: MLABCELL_X25_Y4_N45
\direct_map|cach_instruction[1][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][58]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(2) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][58]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_cach_instruction[1][58]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][58]~combout\);

-- Location: MLABCELL_X25_Y4_N24
\direct_map|cach_instruction[2][58]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][58]~combout\ = ( \direct_map|cach_instruction[2][58]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|cach_instruction[2][58]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(2) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][58]~combout\,
	combout => \direct_map|cach_instruction[2][58]~combout\);

-- Location: MLABCELL_X25_Y4_N36
\direct_map|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux29~0_combout\ = ( \direct_map|cach_instruction[1][58]~combout\ & ( \direct_map|cach_instruction[2][58]~combout\ & ( (!\pc[0]~input_o\ & (((\direct_map|cach_instruction[0][58]~combout\) # (\pc[1]~input_o\)))) # (\pc[0]~input_o\ & 
-- (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[3][58]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[1][58]~combout\ & ( \direct_map|cach_instruction[2][58]~combout\ & ( (!\pc[0]~input_o\ & (((\direct_map|cach_instruction[0][58]~combout\) # 
-- (\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][58]~combout\ & (\pc[1]~input_o\))) ) ) ) # ( \direct_map|cach_instruction[1][58]~combout\ & ( !\direct_map|cach_instruction[2][58]~combout\ & ( (!\pc[0]~input_o\ & 
-- (((!\pc[1]~input_o\ & \direct_map|cach_instruction[0][58]~combout\)))) # (\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[3][58]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[1][58]~combout\ & ( 
-- !\direct_map|cach_instruction[2][58]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\ & \direct_map|cach_instruction[0][58]~combout\)))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][58]~combout\ & (\pc[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[3][58]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[0][58]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[1][58]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][58]~combout\,
	combout => \direct_map|Mux29~0_combout\);

-- Location: LABCELL_X30_Y8_N12
\direct_map|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux29~4_combout\ = ( \direct_map|Mux29~3_combout\ & ( \direct_map|Mux29~0_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\) # ((\direct_map|Mux29~2_combout\)))) # (\pc[2]~input_o\ & (((\direct_map|Mux29~1_combout\)) # (\pc[3]~input_o\))) ) 
-- ) ) # ( !\direct_map|Mux29~3_combout\ & ( \direct_map|Mux29~0_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\) # ((\direct_map|Mux29~2_combout\)))) # (\pc[2]~input_o\ & (!\pc[3]~input_o\ & (\direct_map|Mux29~1_combout\))) ) ) ) # ( 
-- \direct_map|Mux29~3_combout\ & ( !\direct_map|Mux29~0_combout\ & ( (!\pc[2]~input_o\ & (\pc[3]~input_o\ & ((\direct_map|Mux29~2_combout\)))) # (\pc[2]~input_o\ & (((\direct_map|Mux29~1_combout\)) # (\pc[3]~input_o\))) ) ) ) # ( 
-- !\direct_map|Mux29~3_combout\ & ( !\direct_map|Mux29~0_combout\ & ( (!\pc[2]~input_o\ & (\pc[3]~input_o\ & ((\direct_map|Mux29~2_combout\)))) # (\pc[2]~input_o\ & (!\pc[3]~input_o\ & (\direct_map|Mux29~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_Mux29~1_combout\,
	datad => \direct_map|ALT_INV_Mux29~2_combout\,
	datae => \direct_map|ALT_INV_Mux29~3_combout\,
	dataf => \direct_map|ALT_INV_Mux29~0_combout\,
	combout => \direct_map|Mux29~4_combout\);

-- Location: LABCELL_X30_Y8_N33
\mux|s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[2]~2_combout\ = ( \direct_map|Mux29~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(2)) ) ) # ( !\direct_map|Mux29~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(2) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datad => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux29~4_combout\,
	combout => \mux|s[2]~2_combout\);

-- Location: MLABCELL_X25_Y5_N21
\direct_map|cach_instruction[10][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][57]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][57]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \direct_map|ALT_INV_cach_instruction[10][57]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][57]~combout\);

-- Location: LABCELL_X24_Y5_N39
\direct_map|cach_instruction[14][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][57]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][57]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \direct_map|ALT_INV_cach_instruction[14][57]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][57]~combout\);

-- Location: MLABCELL_X25_Y5_N6
\direct_map|cach_instruction[2][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][57]~combout\ = ( \direct_map|cach_instruction[2][57]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !\direct_map|cach_instruction[2][57]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(3) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][57]~combout\,
	combout => \direct_map|cach_instruction[2][57]~combout\);

-- Location: LABCELL_X24_Y5_N15
\direct_map|cach_instruction[6][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][57]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][57]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( 
-- \direct_map|cach_instruction[6][57]~combout\ ) ) # ( \direct_map|Decoder0~6_combout\ & ( !\direct_map|cach_instruction[6][57]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][57]~combout\,
	combout => \direct_map|cach_instruction[6][57]~combout\);

-- Location: LABCELL_X24_Y5_N54
\direct_map|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux28~2_combout\ = ( \direct_map|cach_instruction[2][57]~combout\ & ( \direct_map|cach_instruction[6][57]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][57]~combout\)) # (\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[14][57]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[2][57]~combout\ & ( \direct_map|cach_instruction[6][57]~combout\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][57]~combout\ & ((\pc[3]~input_o\)))) # 
-- (\pc[2]~input_o\ & (((!\pc[3]~input_o\) # (\direct_map|cach_instruction[14][57]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[2][57]~combout\ & ( !\direct_map|cach_instruction[6][57]~combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\)) # 
-- (\direct_map|cach_instruction[10][57]~combout\))) # (\pc[2]~input_o\ & (((\direct_map|cach_instruction[14][57]~combout\ & \pc[3]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[2][57]~combout\ & ( !\direct_map|cach_instruction[6][57]~combout\ & ( 
-- (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][57]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[14][57]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][57]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[14][57]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[2][57]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][57]~combout\,
	combout => \direct_map|Mux28~2_combout\);

-- Location: LABCELL_X27_Y4_N24
\direct_map|cach_instruction[13][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[13][57]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][57]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[13][57]~combout\);

-- Location: LABCELL_X29_Y2_N15
\direct_map|cach_instruction[9][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[9][57]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[9][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[9][57]~combout\);

-- Location: LABCELL_X29_Y6_N12
\direct_map|cach_instruction[5][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[5][57]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[5][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[5][57]~combout\);

-- Location: MLABCELL_X28_Y2_N51
\direct_map|cach_instruction[1][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[1][57]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[1][57]~combout\);

-- Location: LABCELL_X29_Y2_N0
\direct_map|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux28~1_combout\ = ( \direct_map|cach_instruction[5][57]~combout\ & ( \direct_map|cach_instruction[1][57]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][57]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[13][57]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[5][57]~combout\ & ( \direct_map|cach_instruction[1][57]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[9][57]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][57]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[5][57]~combout\ & ( !\direct_map|cach_instruction[1][57]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][57]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][57]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[5][57]~combout\ & ( 
-- !\direct_map|cach_instruction[1][57]~combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][57]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][57]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][57]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[9][57]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[5][57]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][57]~combout\,
	combout => \direct_map|Mux28~1_combout\);

-- Location: LABCELL_X29_Y2_N51
\direct_map|cach_instruction[15][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[15][57]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][57]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[15][57]~combout\);

-- Location: LABCELL_X27_Y3_N33
\direct_map|cach_instruction[7][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[7][57]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[7][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[7][57]~combout\);

-- Location: LABCELL_X22_Y6_N51
\direct_map|cach_instruction[11][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][57]~combout\ = ( \direct_map|cach_instruction[11][57]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(3)) ) ) # ( !\direct_map|cach_instruction[11][57]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(3) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][57]~combout\,
	combout => \direct_map|cach_instruction[11][57]~combout\);

-- Location: LABCELL_X29_Y2_N24
\direct_map|cach_instruction[3][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[3][57]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[3][57]~combout\);

-- Location: LABCELL_X29_Y2_N42
\direct_map|Mux28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux28~3_combout\ = ( \direct_map|cach_instruction[11][57]~combout\ & ( \direct_map|cach_instruction[3][57]~combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[7][57]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[15][57]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[11][57]~combout\ & ( \direct_map|cach_instruction[3][57]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|cach_instruction[7][57]~combout\)))) # 
-- (\pc[3]~input_o\ & (\direct_map|cach_instruction[15][57]~combout\ & (\pc[2]~input_o\))) ) ) ) # ( \direct_map|cach_instruction[11][57]~combout\ & ( !\direct_map|cach_instruction[3][57]~combout\ & ( (!\pc[3]~input_o\ & (((\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[7][57]~combout\)))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|cach_instruction[15][57]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[11][57]~combout\ & ( !\direct_map|cach_instruction[3][57]~combout\ & ( 
-- (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[7][57]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[15][57]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][57]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[7][57]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[11][57]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][57]~combout\,
	combout => \direct_map|Mux28~3_combout\);

-- Location: LABCELL_X27_Y6_N0
\direct_map|cach_instruction[4][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|cach_instruction[4][57]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][57]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][57]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[4][57]~combout\);

-- Location: LABCELL_X27_Y2_N15
\direct_map|cach_instruction[0][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][57]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][57]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (\direct_map|cach_instruction[0][57]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[0][57]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[0][57]~combout\);

-- Location: LABCELL_X23_Y6_N9
\direct_map|cach_instruction[8][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][57]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][57]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \direct_map|ALT_INV_cach_instruction[8][57]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][57]~combout\);

-- Location: LABCELL_X27_Y4_N54
\direct_map|cach_instruction[12][57]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][57]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- \direct_map|cach_instruction[12][57]~combout\ ) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( \direct_map|cach_instruction[12][57]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[12][57]~combout\,
	datae => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \direct_map|cach_instruction[12][57]~combout\);

-- Location: LABCELL_X29_Y2_N6
\direct_map|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux28~0_combout\ = ( \direct_map|cach_instruction[8][57]~combout\ & ( \direct_map|cach_instruction[12][57]~combout\ & ( ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[0][57]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[4][57]~combout\))) # (\pc[3]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[8][57]~combout\ & ( \direct_map|cach_instruction[12][57]~combout\ & ( (!\pc[2]~input_o\ & (!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[0][57]~combout\)))) # (\pc[2]~input_o\ & (((\direct_map|cach_instruction[4][57]~combout\)) # (\pc[3]~input_o\))) ) ) ) # ( \direct_map|cach_instruction[8][57]~combout\ & ( !\direct_map|cach_instruction[12][57]~combout\ & ( 
-- (!\pc[2]~input_o\ & (((\direct_map|cach_instruction[0][57]~combout\)) # (\pc[3]~input_o\))) # (\pc[2]~input_o\ & (!\pc[3]~input_o\ & (\direct_map|cach_instruction[4][57]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[8][57]~combout\ & ( 
-- !\direct_map|cach_instruction[12][57]~combout\ & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[0][57]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[4][57]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[4][57]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][57]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[8][57]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][57]~combout\,
	combout => \direct_map|Mux28~0_combout\);

-- Location: LABCELL_X29_Y2_N36
\direct_map|Mux28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux28~4_combout\ = ( \pc[1]~input_o\ & ( \direct_map|Mux28~0_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux28~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux28~3_combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|Mux28~0_combout\ & 
-- ( (!\pc[0]~input_o\) # (\direct_map|Mux28~1_combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|Mux28~0_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux28~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux28~3_combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( 
-- !\direct_map|Mux28~0_combout\ & ( (\pc[0]~input_o\ & \direct_map|Mux28~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux28~2_combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_Mux28~1_combout\,
	datad => \direct_map|ALT_INV_Mux28~3_combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_Mux28~0_combout\,
	combout => \direct_map|Mux28~4_combout\);

-- Location: LABCELL_X29_Y2_N18
\mux|s[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[3]~3_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(3) & ( (!\hit~0_combout\) # (\direct_map|Mux28~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(3) & ( (\hit~0_combout\ & \direct_map|Mux28~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hit~0_combout\,
	datac => \direct_map|ALT_INV_Mux28~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \mux|s[3]~3_combout\);

-- Location: MLABCELL_X28_Y5_N36
\direct_map|cach_instruction[8][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][56]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_cach_instruction[8][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][56]~combout\);

-- Location: MLABCELL_X28_Y5_N39
\direct_map|cach_instruction[11][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][56]~combout\ = ( \direct_map|cach_instruction[11][56]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(4)) ) ) # ( !\direct_map|cach_instruction[11][56]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(4) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][56]~combout\,
	combout => \direct_map|cach_instruction[11][56]~combout\);

-- Location: MLABCELL_X28_Y5_N21
\direct_map|cach_instruction[10][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][56]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_cach_instruction[10][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][56]~combout\);

-- Location: MLABCELL_X28_Y5_N18
\direct_map|cach_instruction[9][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][56]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \direct_map|ALT_INV_cach_instruction[9][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][56]~combout\);

-- Location: MLABCELL_X28_Y5_N12
\direct_map|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux27~2_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[9][56]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[11][56]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[9][56]~combout\ & ( 
-- (!\pc[1]~input_o\ & (\direct_map|cach_instruction[8][56]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[10][56]~combout\))) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[9][56]~combout\ & ( 
-- (\direct_map|cach_instruction[11][56]~combout\ & \pc[1]~input_o\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[9][56]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[8][56]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[10][56]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][56]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][56]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][56]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][56]~combout\,
	combout => \direct_map|Mux27~2_combout\);

-- Location: MLABCELL_X28_Y5_N42
\direct_map|cach_instruction[3][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][56]~combout\ = ( \direct_map|cach_instruction[3][56]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(4)) ) ) # ( !\direct_map|cach_instruction[3][56]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(4) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][56]~combout\,
	combout => \direct_map|cach_instruction[3][56]~combout\);

-- Location: MLABCELL_X28_Y5_N51
\direct_map|cach_instruction[2][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][56]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[2][56]~combout\,
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][56]~combout\);

-- Location: MLABCELL_X25_Y6_N39
\direct_map|cach_instruction[0][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][56]~combout\ = ( \direct_map|cach_instruction[0][56]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(4)) ) ) # ( !\direct_map|cach_instruction[0][56]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(4) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][56]~combout\,
	combout => \direct_map|cach_instruction[0][56]~combout\);

-- Location: MLABCELL_X28_Y5_N45
\direct_map|cach_instruction[1][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][56]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_cach_instruction[1][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][56]~combout\);

-- Location: MLABCELL_X28_Y5_N0
\direct_map|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux27~0_combout\ = ( \direct_map|cach_instruction[1][56]~combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][56]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][56]~combout\)) ) ) ) # ( 
-- !\direct_map|cach_instruction[1][56]~combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][56]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][56]~combout\)) ) ) ) # ( 
-- \direct_map|cach_instruction[1][56]~combout\ & ( !\pc[1]~input_o\ & ( (\direct_map|cach_instruction[0][56]~combout\) # (\pc[0]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[1][56]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[0][56]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[3][56]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[2][56]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][56]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[1][56]~combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux27~0_combout\);

-- Location: MLABCELL_X28_Y5_N6
\direct_map|cach_instruction[5][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][56]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_cach_instruction[5][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~5_combout\,
	combout => \direct_map|cach_instruction[5][56]~combout\);

-- Location: MLABCELL_X28_Y5_N9
\direct_map|cach_instruction[6][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][56]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \direct_map|ALT_INV_cach_instruction[6][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][56]~combout\);

-- Location: LABCELL_X27_Y6_N54
\direct_map|cach_instruction[7][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][56]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(4) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][56]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (\direct_map|cach_instruction[7][56]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[7][56]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \direct_map|cach_instruction[7][56]~combout\);

-- Location: MLABCELL_X28_Y5_N24
\direct_map|cach_instruction[4][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][56]~combout\ = ( \direct_map|cach_instruction[4][56]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(4)) ) ) # ( !\direct_map|cach_instruction[4][56]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(4) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][56]~combout\,
	combout => \direct_map|cach_instruction[4][56]~combout\);

-- Location: MLABCELL_X28_Y5_N30
\direct_map|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux27~1_combout\ = ( \direct_map|cach_instruction[7][56]~combout\ & ( \direct_map|cach_instruction[4][56]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)) # (\direct_map|cach_instruction[5][56]~combout\))) # (\pc[1]~input_o\ & 
-- (((\direct_map|cach_instruction[6][56]~combout\) # (\pc[0]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[7][56]~combout\ & ( \direct_map|cach_instruction[4][56]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)) # 
-- (\direct_map|cach_instruction[5][56]~combout\))) # (\pc[1]~input_o\ & (((!\pc[0]~input_o\ & \direct_map|cach_instruction[6][56]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[7][56]~combout\ & ( !\direct_map|cach_instruction[4][56]~combout\ & ( 
-- (!\pc[1]~input_o\ & (\direct_map|cach_instruction[5][56]~combout\ & (\pc[0]~input_o\))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[6][56]~combout\) # (\pc[0]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[7][56]~combout\ & ( 
-- !\direct_map|cach_instruction[4][56]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[5][56]~combout\ & (\pc[0]~input_o\))) # (\pc[1]~input_o\ & (((!\pc[0]~input_o\ & \direct_map|cach_instruction[6][56]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[5][56]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[6][56]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[7][56]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][56]~combout\,
	combout => \direct_map|Mux27~1_combout\);

-- Location: MLABCELL_X25_Y5_N15
\direct_map|cach_instruction[12][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][56]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datac => \direct_map|ALT_INV_cach_instruction[12][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][56]~combout\);

-- Location: MLABCELL_X25_Y3_N24
\direct_map|cach_instruction[15][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][56]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(4) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][56]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(4) & ( 
-- (\direct_map|cach_instruction[15][56]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][56]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \direct_map|cach_instruction[15][56]~combout\);

-- Location: MLABCELL_X25_Y5_N42
\direct_map|cach_instruction[13][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][56]~combout\ = ( \direct_map|cach_instruction[13][56]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(4)) ) ) # ( !\direct_map|cach_instruction[13][56]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(4) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][56]~combout\,
	combout => \direct_map|cach_instruction[13][56]~combout\);

-- Location: MLABCELL_X25_Y5_N12
\direct_map|cach_instruction[14][56]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][56]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(4) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][56]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	datab => \direct_map|ALT_INV_cach_instruction[14][56]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][56]~combout\);

-- Location: MLABCELL_X25_Y5_N36
\direct_map|Mux27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux27~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[14][56]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[15][56]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[14][56]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][56]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[13][56]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][56]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[15][56]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][56]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][56]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[13][56]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][56]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][56]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][56]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][56]~combout\,
	combout => \direct_map|Mux27~3_combout\);

-- Location: MLABCELL_X28_Y5_N54
\direct_map|Mux27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux27~4_combout\ = ( \direct_map|Mux27~3_combout\ & ( \pc[3]~input_o\ & ( (\direct_map|Mux27~2_combout\) # (\pc[2]~input_o\) ) ) ) # ( !\direct_map|Mux27~3_combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & \direct_map|Mux27~2_combout\) ) ) 
-- ) # ( \direct_map|Mux27~3_combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|Mux27~0_combout\)) # (\pc[2]~input_o\ & ((\direct_map|Mux27~1_combout\))) ) ) ) # ( !\direct_map|Mux27~3_combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & 
-- (\direct_map|Mux27~0_combout\)) # (\pc[2]~input_o\ & ((\direct_map|Mux27~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_Mux27~2_combout\,
	datac => \direct_map|ALT_INV_Mux27~0_combout\,
	datad => \direct_map|ALT_INV_Mux27~1_combout\,
	datae => \direct_map|ALT_INV_Mux27~3_combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux27~4_combout\);

-- Location: MLABCELL_X25_Y3_N15
\mux|s[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[4]~4_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(4) & ( (!\hit~0_combout\) # (\direct_map|Mux27~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(4) & ( (\hit~0_combout\ & \direct_map|Mux27~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datad => \direct_map|ALT_INV_Mux27~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \mux|s[4]~4_combout\);

-- Location: MLABCELL_X28_Y8_N12
\direct_map|cach_instruction[13][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][55]~combout\ = ( \direct_map|cach_instruction[13][55]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[13][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][55]~combout\,
	combout => \direct_map|cach_instruction[13][55]~combout\);

-- Location: MLABCELL_X28_Y8_N45
\direct_map|cach_instruction[1][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][55]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][55]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_cach_instruction[1][55]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][55]~combout\);

-- Location: MLABCELL_X28_Y8_N15
\direct_map|cach_instruction[5][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][55]~combout\ = ( \direct_map|cach_instruction[5][55]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[5][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][55]~combout\,
	combout => \direct_map|cach_instruction[5][55]~combout\);

-- Location: MLABCELL_X28_Y8_N42
\direct_map|cach_instruction[9][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][55]~combout\ = ( \direct_map|cach_instruction[9][55]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[9][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][55]~combout\,
	combout => \direct_map|cach_instruction[9][55]~combout\);

-- Location: MLABCELL_X28_Y8_N0
\direct_map|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux26~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[9][55]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[5][55]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[13][55]~combout\)) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[9][55]~combout\ & ( (\direct_map|cach_instruction[1][55]~combout\) # (\pc[3]~input_o\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[9][55]~combout\ & ( (!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[5][55]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[13][55]~combout\)) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[9][55]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[1][55]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[13][55]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][55]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][55]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][55]~combout\,
	combout => \direct_map|Mux26~1_combout\);

-- Location: LABCELL_X27_Y4_N21
\direct_map|cach_instruction[8][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][55]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][55]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_cach_instruction[8][55]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][55]~combout\);

-- Location: MLABCELL_X28_Y4_N51
\direct_map|cach_instruction[0][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][55]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(5) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][55]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- (\direct_map|cach_instruction[0][55]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][55]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \direct_map|cach_instruction[0][55]~combout\);

-- Location: MLABCELL_X28_Y4_N30
\direct_map|cach_instruction[12][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][55]~combout\ = ( \direct_map|cach_instruction[12][55]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[12][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][55]~combout\,
	combout => \direct_map|cach_instruction[12][55]~combout\);

-- Location: MLABCELL_X28_Y4_N33
\direct_map|cach_instruction[4][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][55]~combout\ = ( \direct_map|cach_instruction[4][55]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[4][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][55]~combout\,
	combout => \direct_map|cach_instruction[4][55]~combout\);

-- Location: MLABCELL_X28_Y4_N0
\direct_map|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux26~0_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[4][55]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[12][55]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[4][55]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[0][55]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[8][55]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[4][55]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[12][55]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[4][55]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[0][55]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[8][55]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[8][55]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][55]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[12][55]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][55]~combout\,
	combout => \direct_map|Mux26~0_combout\);

-- Location: MLABCELL_X28_Y4_N15
\direct_map|cach_instruction[6][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][55]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][55]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \direct_map|ALT_INV_cach_instruction[6][55]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][55]~combout\);

-- Location: MLABCELL_X28_Y4_N42
\direct_map|cach_instruction[10][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][55]~combout\ = ( \direct_map|cach_instruction[10][55]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[10][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][55]~combout\,
	combout => \direct_map|cach_instruction[10][55]~combout\);

-- Location: MLABCELL_X28_Y4_N45
\direct_map|cach_instruction[14][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][55]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][55]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_cach_instruction[14][55]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][55]~combout\);

-- Location: MLABCELL_X28_Y4_N12
\direct_map|cach_instruction[2][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][55]~combout\ = ( \direct_map|cach_instruction[2][55]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(5)) ) ) # ( !\direct_map|cach_instruction[2][55]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(5) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][55]~combout\,
	combout => \direct_map|cach_instruction[2][55]~combout\);

-- Location: MLABCELL_X28_Y4_N18
\direct_map|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux26~2_combout\ = ( \direct_map|cach_instruction[14][55]~combout\ & ( \direct_map|cach_instruction[2][55]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|cach_instruction[6][55]~combout\))) # (\pc[3]~input_o\ & 
-- (((\direct_map|cach_instruction[10][55]~combout\) # (\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[14][55]~combout\ & ( \direct_map|cach_instruction[2][55]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # 
-- (\direct_map|cach_instruction[6][55]~combout\))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\ & \direct_map|cach_instruction[10][55]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[14][55]~combout\ & ( !\direct_map|cach_instruction[2][55]~combout\ & ( 
-- (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][55]~combout\ & (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (((\direct_map|cach_instruction[10][55]~combout\) # (\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[14][55]~combout\ & ( 
-- !\direct_map|cach_instruction[2][55]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][55]~combout\ & (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\ & \direct_map|cach_instruction[10][55]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[6][55]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[10][55]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[14][55]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][55]~combout\,
	combout => \direct_map|Mux26~2_combout\);

-- Location: MLABCELL_X28_Y4_N48
\direct_map|cach_instruction[3][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][55]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(5) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][55]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \direct_map|ALT_INV_cach_instruction[3][55]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][55]~combout\);

-- Location: LABCELL_X29_Y4_N42
\direct_map|cach_instruction[15][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][55]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(5) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][55]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- (\direct_map|cach_instruction[15][55]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[15][55]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \direct_map|cach_instruction[15][55]~combout\);

-- Location: MLABCELL_X28_Y4_N6
\direct_map|cach_instruction[11][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][55]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(5) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][55]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- (\direct_map|cach_instruction[11][55]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[11][55]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \direct_map|cach_instruction[11][55]~combout\);

-- Location: MLABCELL_X28_Y4_N36
\direct_map|cach_instruction[7][55]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][55]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(5) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][55]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- (\direct_map|cach_instruction[7][55]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[7][55]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \direct_map|cach_instruction[7][55]~combout\);

-- Location: MLABCELL_X28_Y4_N24
\direct_map|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux26~3_combout\ = ( \direct_map|cach_instruction[7][55]~combout\ & ( \pc[2]~input_o\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[15][55]~combout\) ) ) ) # ( !\direct_map|cach_instruction[7][55]~combout\ & ( \pc[2]~input_o\ & ( 
-- (\direct_map|cach_instruction[15][55]~combout\ & \pc[3]~input_o\) ) ) ) # ( \direct_map|cach_instruction[7][55]~combout\ & ( !\pc[2]~input_o\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][55]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[11][55]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[7][55]~combout\ & ( !\pc[2]~input_o\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][55]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[11][55]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][55]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[15][55]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[11][55]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[7][55]~combout\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux26~3_combout\);

-- Location: MLABCELL_X28_Y4_N54
\direct_map|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux26~4_combout\ = ( \direct_map|Mux26~2_combout\ & ( \direct_map|Mux26~3_combout\ & ( ((!\pc[0]~input_o\ & ((\direct_map|Mux26~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux26~1_combout\))) # (\pc[1]~input_o\) ) ) ) # ( 
-- !\direct_map|Mux26~2_combout\ & ( \direct_map|Mux26~3_combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|Mux26~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux26~1_combout\)))) # (\pc[1]~input_o\ & (((\pc[0]~input_o\)))) ) ) ) # ( 
-- \direct_map|Mux26~2_combout\ & ( !\direct_map|Mux26~3_combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|Mux26~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux26~1_combout\)))) # (\pc[1]~input_o\ & (((!\pc[0]~input_o\)))) ) ) ) # ( 
-- !\direct_map|Mux26~2_combout\ & ( !\direct_map|Mux26~3_combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|Mux26~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux26~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_Mux26~1_combout\,
	datac => \direct_map|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_Mux26~2_combout\,
	dataf => \direct_map|ALT_INV_Mux26~3_combout\,
	combout => \direct_map|Mux26~4_combout\);

-- Location: LABCELL_X30_Y3_N15
\mux|s[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[5]~5_combout\ = ( \direct_map|Mux26~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(5)) # (\hit~0_combout\) ) ) # ( !\direct_map|Mux26~4_combout\ & ( (!\hit~0_combout\ & \U1|altsyncram_component|auto_generated|q_a\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hit~0_combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \direct_map|ALT_INV_Mux26~4_combout\,
	combout => \mux|s[5]~5_combout\);

-- Location: LABCELL_X24_Y6_N48
\direct_map|cach_instruction[2][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][54]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_cach_instruction[2][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][54]~combout\);

-- Location: LABCELL_X24_Y6_N42
\direct_map|cach_instruction[0][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][54]~combout\ = ( \direct_map|cach_instruction[0][54]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[0][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][54]~combout\,
	combout => \direct_map|cach_instruction[0][54]~combout\);

-- Location: LABCELL_X24_Y6_N45
\direct_map|cach_instruction[1][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][54]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_cach_instruction[1][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][54]~combout\);

-- Location: LABCELL_X24_Y6_N9
\direct_map|cach_instruction[3][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][54]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_cach_instruction[3][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][54]~combout\);

-- Location: LABCELL_X24_Y6_N0
\direct_map|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux25~0_combout\ = ( \direct_map|cach_instruction[1][54]~combout\ & ( \direct_map|cach_instruction[3][54]~combout\ & ( ((!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][54]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[2][54]~combout\))) # (\pc[0]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[1][54]~combout\ & ( \direct_map|cach_instruction[3][54]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[0][54]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][54]~combout\)))) # (\pc[0]~input_o\ & (((\pc[1]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[1][54]~combout\ & ( 
-- !\direct_map|cach_instruction[3][54]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][54]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][54]~combout\)))) # (\pc[0]~input_o\ & 
-- (((!\pc[1]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[1][54]~combout\ & ( !\direct_map|cach_instruction[3][54]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][54]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[2][54]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[2][54]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][54]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[1][54]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][54]~combout\,
	combout => \direct_map|Mux25~0_combout\);

-- Location: LABCELL_X31_Y5_N33
\direct_map|cach_instruction[15][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][54]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(6) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][54]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (\direct_map|cach_instruction[15][54]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[15][54]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \direct_map|cach_instruction[15][54]~combout\);

-- Location: MLABCELL_X25_Y5_N45
\direct_map|cach_instruction[12][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][54]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_cach_instruction[12][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][54]~combout\);

-- Location: LABCELL_X31_Y5_N30
\direct_map|cach_instruction[14][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][54]~combout\ = ( \direct_map|cach_instruction[14][54]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[14][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][54]~combout\,
	combout => \direct_map|cach_instruction[14][54]~combout\);

-- Location: LABCELL_X31_Y5_N27
\direct_map|cach_instruction[13][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][54]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(6) & ( (\direct_map|cach_instruction[13][54]~combout\) # (\direct_map|Decoder0~13_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (!\direct_map|Decoder0~13_combout\ & \direct_map|cach_instruction[13][54]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][54]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \direct_map|cach_instruction[13][54]~combout\);

-- Location: LABCELL_X31_Y5_N0
\direct_map|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux25~3_combout\ = ( \direct_map|cach_instruction[13][54]~combout\ & ( \pc[0]~input_o\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[15][54]~combout\) ) ) ) # ( !\direct_map|cach_instruction[13][54]~combout\ & ( \pc[0]~input_o\ & ( 
-- (\direct_map|cach_instruction[15][54]~combout\ & \pc[1]~input_o\) ) ) ) # ( \direct_map|cach_instruction[13][54]~combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[12][54]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[14][54]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[13][54]~combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[12][54]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[14][54]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][54]~combout\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[12][54]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][54]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[13][54]~combout\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Mux25~3_combout\);

-- Location: LABCELL_X31_Y5_N57
\direct_map|cach_instruction[8][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][54]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(6) & ( (\direct_map|cach_instruction[8][54]~combout\) # (\direct_map|Decoder0~8_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (!\direct_map|Decoder0~8_combout\ & \direct_map|cach_instruction[8][54]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][54]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \direct_map|cach_instruction[8][54]~combout\);

-- Location: LABCELL_X24_Y6_N39
\direct_map|cach_instruction[9][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][54]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_cach_instruction[9][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][54]~combout\);

-- Location: LABCELL_X24_Y6_N6
\direct_map|cach_instruction[11][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][54]~combout\ = ( \direct_map|cach_instruction[11][54]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[11][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][54]~combout\,
	combout => \direct_map|cach_instruction[11][54]~combout\);

-- Location: LABCELL_X24_Y6_N51
\direct_map|cach_instruction[10][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][54]~combout\ = ( \direct_map|cach_instruction[10][54]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[10][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][54]~combout\,
	combout => \direct_map|cach_instruction[10][54]~combout\);

-- Location: LABCELL_X24_Y6_N24
\direct_map|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux25~2_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[10][54]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[11][54]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[10][54]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][54]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[9][54]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[10][54]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[11][54]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[10][54]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][54]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[9][54]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][54]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][54]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[11][54]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][54]~combout\,
	combout => \direct_map|Mux25~2_combout\);

-- Location: LABCELL_X24_Y6_N33
\direct_map|cach_instruction[6][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][54]~combout\ = ( \direct_map|cach_instruction[6][54]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[6][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][54]~combout\,
	combout => \direct_map|cach_instruction[6][54]~combout\);

-- Location: LABCELL_X24_Y6_N12
\direct_map|cach_instruction[7][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][54]~combout\ = ( \direct_map|cach_instruction[7][54]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[7][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][54]~combout\,
	combout => \direct_map|cach_instruction[7][54]~combout\);

-- Location: LABCELL_X24_Y6_N30
\direct_map|cach_instruction[5][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][54]~combout\ = ( \direct_map|cach_instruction[5][54]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(6)) ) ) # ( !\direct_map|cach_instruction[5][54]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(6) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][54]~combout\,
	combout => \direct_map|cach_instruction[5][54]~combout\);

-- Location: LABCELL_X24_Y6_N15
\direct_map|cach_instruction[4][54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][54]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(6) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][54]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datac => \direct_map|ALT_INV_cach_instruction[4][54]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][54]~combout\);

-- Location: LABCELL_X24_Y6_N18
\direct_map|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux25~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[4][54]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][54]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][54]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[4][54]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[5][54]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][54]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[6][54]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][54]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][54]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[5][54]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100110101001111110000111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][54]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][54]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[5][54]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][54]~combout\,
	combout => \direct_map|Mux25~1_combout\);

-- Location: LABCELL_X24_Y6_N54
\direct_map|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux25~4_combout\ = ( \pc[3]~input_o\ & ( \direct_map|Mux25~1_combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|Mux25~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux25~3_combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|Mux25~1_combout\ & 
-- ( (\pc[2]~input_o\) # (\direct_map|Mux25~0_combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|Mux25~1_combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|Mux25~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux25~3_combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( 
-- !\direct_map|Mux25~1_combout\ & ( (\direct_map|Mux25~0_combout\ & !\pc[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_Mux25~3_combout\,
	datad => \direct_map|ALT_INV_Mux25~2_combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_Mux25~1_combout\,
	combout => \direct_map|Mux25~4_combout\);

-- Location: LABCELL_X29_Y2_N21
\mux|s[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[6]~6_combout\ = (!\hit~0_combout\ & ((\U1|altsyncram_component|auto_generated|q_a\(6)))) # (\hit~0_combout\ & (\direct_map|Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hit~0_combout\,
	datac => \direct_map|ALT_INV_Mux25~4_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \mux|s[6]~6_combout\);

-- Location: MLABCELL_X25_Y8_N39
\direct_map|cach_instruction[6][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][53]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][53]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datac => \direct_map|ALT_INV_cach_instruction[6][53]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][53]~combout\);

-- Location: MLABCELL_X25_Y8_N36
\direct_map|cach_instruction[14][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~14_combout\) # (\direct_map|cach_instruction[14][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[14][53]~combout\ & !\direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[14][53]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[14][53]~combout\);

-- Location: MLABCELL_X25_Y8_N9
\direct_map|cach_instruction[10][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[10][53]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[10][53]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[10][53]~combout\);

-- Location: MLABCELL_X25_Y8_N30
\direct_map|cach_instruction[2][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~2_combout\) # (\direct_map|cach_instruction[2][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[2][53]~combout\ & !\direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[2][53]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[2][53]~combout\);

-- Location: MLABCELL_X25_Y8_N48
\direct_map|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux24~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[2][53]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][53]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][53]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[2][53]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[10][53]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][53]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[6][53]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][53]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][53]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[10][53]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[6][53]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[14][53]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][53]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][53]~combout\,
	combout => \direct_map|Mux24~2_combout\);

-- Location: LABCELL_X27_Y8_N15
\direct_map|cach_instruction[11][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[11][53]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[11][53]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[11][53]~combout\);

-- Location: MLABCELL_X25_Y8_N27
\direct_map|cach_instruction[15][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|cach_instruction[15][53]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][53]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][53]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[15][53]~combout\);

-- Location: MLABCELL_X25_Y8_N21
\direct_map|cach_instruction[7][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|cach_instruction[7][53]~combout\) # (\direct_map|Decoder0~7_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\direct_map|Decoder0~7_combout\ & \direct_map|cach_instruction[7][53]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][53]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[7][53]~combout\);

-- Location: MLABCELL_X25_Y8_N0
\direct_map|cach_instruction[3][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|cach_instruction[3][53]~combout\) # (\direct_map|Decoder0~3_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\direct_map|Decoder0~3_combout\ & \direct_map|cach_instruction[3][53]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~3_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][53]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[3][53]~combout\);

-- Location: MLABCELL_X25_Y8_N54
\direct_map|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux24~3_combout\ = ( \direct_map|cach_instruction[3][53]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[11][53]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[15][53]~combout\))) ) ) ) # ( 
-- !\direct_map|cach_instruction[3][53]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[11][53]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[15][53]~combout\))) ) ) ) # ( 
-- \direct_map|cach_instruction[3][53]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[7][53]~combout\) ) ) ) # ( !\direct_map|cach_instruction[3][53]~combout\ & ( !\pc[3]~input_o\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[7][53]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[11][53]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][53]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][53]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[3][53]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux24~3_combout\);

-- Location: LABCELL_X22_Y6_N18
\direct_map|cach_instruction[8][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][53]~combout\ = ( \direct_map|cach_instruction[8][53]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(7)) ) ) # ( !\direct_map|cach_instruction[8][53]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(7) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][53]~combout\,
	combout => \direct_map|cach_instruction[8][53]~combout\);

-- Location: MLABCELL_X25_Y4_N54
\direct_map|cach_instruction[4][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][53]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][53]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \direct_map|ALT_INV_cach_instruction[4][53]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][53]~combout\);

-- Location: LABCELL_X22_Y6_N21
\direct_map|cach_instruction[12][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][53]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][53]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \direct_map|ALT_INV_cach_instruction[12][53]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][53]~combout\);

-- Location: LABCELL_X22_Y6_N48
\direct_map|cach_instruction[0][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[0][53]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][53]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[0][53]~combout\);

-- Location: LABCELL_X22_Y6_N12
\direct_map|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux24~0_combout\ = ( \direct_map|cach_instruction[12][53]~combout\ & ( \direct_map|cach_instruction[0][53]~combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\)) # (\direct_map|cach_instruction[8][53]~combout\))) # (\pc[2]~input_o\ & 
-- (((\direct_map|cach_instruction[4][53]~combout\) # (\pc[3]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[12][53]~combout\ & ( \direct_map|cach_instruction[0][53]~combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\)) # 
-- (\direct_map|cach_instruction[8][53]~combout\))) # (\pc[2]~input_o\ & (((!\pc[3]~input_o\ & \direct_map|cach_instruction[4][53]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[12][53]~combout\ & ( !\direct_map|cach_instruction[0][53]~combout\ & ( 
-- (!\pc[2]~input_o\ & (\direct_map|cach_instruction[8][53]~combout\ & (\pc[3]~input_o\))) # (\pc[2]~input_o\ & (((\direct_map|cach_instruction[4][53]~combout\) # (\pc[3]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[12][53]~combout\ & ( 
-- !\direct_map|cach_instruction[0][53]~combout\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[8][53]~combout\ & (\pc[3]~input_o\))) # (\pc[2]~input_o\ & (((!\pc[3]~input_o\ & \direct_map|cach_instruction[4][53]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][53]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[4][53]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[12][53]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][53]~combout\,
	combout => \direct_map|Mux24~0_combout\);

-- Location: LABCELL_X22_Y6_N0
\direct_map|cach_instruction[1][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|cach_instruction[1][53]~combout\) # (\direct_map|Decoder0~1_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (!\direct_map|Decoder0~1_combout\ & \direct_map|cach_instruction[1][53]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~1_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[1][53]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[1][53]~combout\);

-- Location: LABCELL_X27_Y3_N39
\direct_map|cach_instruction[9][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][53]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][53]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[9][53]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][53]~combout\);

-- Location: LABCELL_X22_Y6_N6
\direct_map|cach_instruction[5][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][53]~combout\ = ( \direct_map|cach_instruction[5][53]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(7)) ) ) # ( !\direct_map|cach_instruction[5][53]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(7) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][53]~combout\,
	combout => \direct_map|cach_instruction[5][53]~combout\);

-- Location: LABCELL_X22_Y6_N9
\direct_map|cach_instruction[13][53]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][53]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][53]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\direct_map|cach_instruction[13][53]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[13][53]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \direct_map|cach_instruction[13][53]~combout\);

-- Location: LABCELL_X22_Y6_N54
\direct_map|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux24~1_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[13][53]~combout\ & ( (\direct_map|cach_instruction[9][53]~combout\) # (\pc[2]~input_o\) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[13][53]~combout\ & ( 
-- (!\pc[2]~input_o\ & (\direct_map|cach_instruction[1][53]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[5][53]~combout\))) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[13][53]~combout\ & ( (!\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[9][53]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[13][53]~combout\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[1][53]~combout\)) # (\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[5][53]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][53]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[9][53]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][53]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][53]~combout\,
	combout => \direct_map|Mux24~1_combout\);

-- Location: MLABCELL_X25_Y8_N12
\direct_map|Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux24~4_combout\ = ( \pc[0]~input_o\ & ( \direct_map|Mux24~1_combout\ & ( (!\pc[1]~input_o\) # (\direct_map|Mux24~3_combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|Mux24~1_combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|Mux24~0_combout\))) 
-- # (\pc[1]~input_o\ & (\direct_map|Mux24~2_combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|Mux24~1_combout\ & ( (\direct_map|Mux24~3_combout\ & \pc[1]~input_o\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|Mux24~1_combout\ & ( (!\pc[1]~input_o\ & 
-- ((\direct_map|Mux24~0_combout\))) # (\pc[1]~input_o\ & (\direct_map|Mux24~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100001111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux24~2_combout\,
	datab => \direct_map|ALT_INV_Mux24~3_combout\,
	datac => \direct_map|ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_Mux24~1_combout\,
	combout => \direct_map|Mux24~4_combout\);

-- Location: MLABCELL_X25_Y9_N48
\mux|s[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[7]~7_combout\ = ( \direct_map|Mux24~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) ) ) # ( !\direct_map|Mux24~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(7) & ( !\hit~0_combout\ ) ) ) # ( \direct_map|Mux24~4_combout\ 
-- & ( !\U1|altsyncram_component|auto_generated|q_a\(7) & ( \hit~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datae => \direct_map|ALT_INV_Mux24~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \mux|s[7]~7_combout\);

-- Location: LABCELL_X27_Y9_N33
\direct_map|cach_instruction[12][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][52]~combout\ = ( \direct_map|cach_instruction[12][52]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[12][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][52]~combout\,
	combout => \direct_map|cach_instruction[12][52]~combout\);

-- Location: LABCELL_X30_Y7_N45
\direct_map|cach_instruction[13][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][52]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][52]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_cach_instruction[13][52]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][52]~combout\);

-- Location: LABCELL_X30_Y7_N12
\direct_map|cach_instruction[15][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][52]~combout\ = ( \direct_map|cach_instruction[15][52]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[15][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][52]~combout\,
	combout => \direct_map|cach_instruction[15][52]~combout\);

-- Location: LABCELL_X30_Y7_N15
\direct_map|cach_instruction[14][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][52]~combout\ = ( \direct_map|cach_instruction[14][52]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[14][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][52]~combout\,
	combout => \direct_map|cach_instruction[14][52]~combout\);

-- Location: LABCELL_X30_Y7_N54
\direct_map|Mux23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux23~3_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[14][52]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[13][52]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][52]~combout\))) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[14][52]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[12][52]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[14][52]~combout\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[13][52]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][52]~combout\))) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[14][52]~combout\ & ( (\direct_map|cach_instruction[12][52]~combout\ & 
-- !\pc[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][52]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][52]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][52]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][52]~combout\,
	combout => \direct_map|Mux23~3_combout\);

-- Location: LABCELL_X27_Y10_N30
\direct_map|cach_instruction[7][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][52]~combout\ = ( \direct_map|cach_instruction[7][52]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[7][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][52]~combout\,
	combout => \direct_map|cach_instruction[7][52]~combout\);

-- Location: LABCELL_X27_Y9_N15
\direct_map|cach_instruction[6][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|Decoder0~6_combout\) # (\direct_map|cach_instruction[6][52]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (\direct_map|cach_instruction[6][52]~combout\ & !\direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[6][52]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[6][52]~combout\);

-- Location: LABCELL_X27_Y9_N27
\direct_map|cach_instruction[4][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|cach_instruction[4][52]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][52]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][52]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[4][52]~combout\);

-- Location: LABCELL_X27_Y9_N30
\direct_map|cach_instruction[5][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][52]~combout\ = ( \direct_map|cach_instruction[5][52]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[5][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][52]~combout\,
	combout => \direct_map|cach_instruction[5][52]~combout\);

-- Location: LABCELL_X27_Y9_N54
\direct_map|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux23~1_combout\ = ( \direct_map|cach_instruction[4][52]~combout\ & ( \direct_map|cach_instruction[5][52]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[6][52]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[7][52]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[4][52]~combout\ & ( \direct_map|cach_instruction[5][52]~combout\ & ( (!\pc[0]~input_o\ & (\pc[1]~input_o\ & ((\direct_map|cach_instruction[6][52]~combout\)))) # 
-- (\pc[0]~input_o\ & ((!\pc[1]~input_o\) # ((\direct_map|cach_instruction[7][52]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[4][52]~combout\ & ( !\direct_map|cach_instruction[5][52]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\) # 
-- ((\direct_map|cach_instruction[6][52]~combout\)))) # (\pc[0]~input_o\ & (\pc[1]~input_o\ & (\direct_map|cach_instruction[7][52]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[4][52]~combout\ & ( !\direct_map|cach_instruction[5][52]~combout\ & ( 
-- (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[6][52]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[7][52]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[7][52]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[6][52]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[4][52]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][52]~combout\,
	combout => \direct_map|Mux23~1_combout\);

-- Location: LABCELL_X29_Y7_N15
\direct_map|cach_instruction[8][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|cach_instruction[8][52]~combout\) # (\direct_map|Decoder0~8_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\direct_map|Decoder0~8_combout\ & \direct_map|cach_instruction[8][52]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][52]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[8][52]~combout\);

-- Location: LABCELL_X27_Y6_N48
\direct_map|cach_instruction[11][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][52]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][52]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \direct_map|ALT_INV_cach_instruction[11][52]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][52]~combout\);

-- Location: LABCELL_X30_Y7_N21
\direct_map|cach_instruction[10][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][52]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(8) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][52]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_cach_instruction[10][52]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][52]~combout\);

-- Location: LABCELL_X30_Y7_N48
\direct_map|cach_instruction[9][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][52]~combout\ = ( \direct_map|cach_instruction[9][52]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[9][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][52]~combout\,
	combout => \direct_map|cach_instruction[9][52]~combout\);

-- Location: LABCELL_X30_Y7_N0
\direct_map|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux23~2_combout\ = ( \direct_map|cach_instruction[10][52]~combout\ & ( \direct_map|cach_instruction[9][52]~combout\ & ( (!\pc[1]~input_o\ & (((\direct_map|cach_instruction[8][52]~combout\)) # (\pc[0]~input_o\))) # (\pc[1]~input_o\ & 
-- ((!\pc[0]~input_o\) # ((\direct_map|cach_instruction[11][52]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[10][52]~combout\ & ( \direct_map|cach_instruction[9][52]~combout\ & ( (!\pc[1]~input_o\ & (((\direct_map|cach_instruction[8][52]~combout\)) # 
-- (\pc[0]~input_o\))) # (\pc[1]~input_o\ & (\pc[0]~input_o\ & ((\direct_map|cach_instruction[11][52]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[10][52]~combout\ & ( !\direct_map|cach_instruction[9][52]~combout\ & ( (!\pc[1]~input_o\ & 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][52]~combout\))) # (\pc[1]~input_o\ & ((!\pc[0]~input_o\) # ((\direct_map|cach_instruction[11][52]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[10][52]~combout\ & ( 
-- !\direct_map|cach_instruction[9][52]~combout\ & ( (!\pc[1]~input_o\ & (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][52]~combout\))) # (\pc[1]~input_o\ & (\pc[0]~input_o\ & ((\direct_map|cach_instruction[11][52]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[8][52]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[11][52]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[10][52]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][52]~combout\,
	combout => \direct_map|Mux23~2_combout\);

-- Location: LABCELL_X27_Y10_N12
\direct_map|cach_instruction[3][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][52]~combout\ = ( \direct_map|cach_instruction[3][52]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(8)) ) ) # ( !\direct_map|cach_instruction[3][52]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(8) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][52]~combout\,
	combout => \direct_map|cach_instruction[3][52]~combout\);

-- Location: LABCELL_X27_Y9_N45
\direct_map|cach_instruction[2][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|Decoder0~2_combout\) # (\direct_map|cach_instruction[2][52]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (\direct_map|cach_instruction[2][52]~combout\ & !\direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[2][52]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[2][52]~combout\);

-- Location: LABCELL_X27_Y9_N21
\direct_map|cach_instruction[1][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|cach_instruction[1][52]~combout\) # (\direct_map|Decoder0~1_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\direct_map|Decoder0~1_combout\ & \direct_map|cach_instruction[1][52]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~1_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[1][52]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[1][52]~combout\);

-- Location: LABCELL_X27_Y9_N12
\direct_map|cach_instruction[0][52]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][52]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(8) & ( (\direct_map|cach_instruction[0][52]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(8) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][52]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][52]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	combout => \direct_map|cach_instruction[0][52]~combout\);

-- Location: LABCELL_X27_Y9_N36
\direct_map|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux23~0_combout\ = ( \direct_map|cach_instruction[1][52]~combout\ & ( \direct_map|cach_instruction[0][52]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][52]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[3][52]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[1][52]~combout\ & ( \direct_map|cach_instruction[0][52]~combout\ & ( (!\pc[0]~input_o\ & ((!\pc[1]~input_o\) # ((\direct_map|cach_instruction[2][52]~combout\)))) # 
-- (\pc[0]~input_o\ & (\pc[1]~input_o\ & (\direct_map|cach_instruction[3][52]~combout\))) ) ) ) # ( \direct_map|cach_instruction[1][52]~combout\ & ( !\direct_map|cach_instruction[0][52]~combout\ & ( (!\pc[0]~input_o\ & (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[2][52]~combout\)))) # (\pc[0]~input_o\ & ((!\pc[1]~input_o\) # ((\direct_map|cach_instruction[3][52]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[1][52]~combout\ & ( !\direct_map|cach_instruction[0][52]~combout\ & ( 
-- (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][52]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][52]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[3][52]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[2][52]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[1][52]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][52]~combout\,
	combout => \direct_map|Mux23~0_combout\);

-- Location: LABCELL_X30_Y7_N36
\direct_map|Mux23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux23~4_combout\ = ( \direct_map|Mux23~2_combout\ & ( \direct_map|Mux23~0_combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & ((\direct_map|Mux23~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux23~3_combout\))) ) ) ) # ( 
-- !\direct_map|Mux23~2_combout\ & ( \direct_map|Mux23~0_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|Mux23~1_combout\)))) # (\pc[3]~input_o\ & (\direct_map|Mux23~3_combout\ & ((\pc[2]~input_o\)))) ) ) ) # ( 
-- \direct_map|Mux23~2_combout\ & ( !\direct_map|Mux23~0_combout\ & ( (!\pc[3]~input_o\ & (((\direct_map|Mux23~1_combout\ & \pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|Mux23~3_combout\))) ) ) ) # ( 
-- !\direct_map|Mux23~2_combout\ & ( !\direct_map|Mux23~0_combout\ & ( (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|Mux23~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux23~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux23~3_combout\,
	datab => \direct_map|ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_Mux23~2_combout\,
	dataf => \direct_map|ALT_INV_Mux23~0_combout\,
	combout => \direct_map|Mux23~4_combout\);

-- Location: LABCELL_X30_Y7_N42
\mux|s[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[8]~8_combout\ = (!\hit~0_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(8))) # (\hit~0_combout\ & ((\direct_map|Mux23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	datac => \direct_map|ALT_INV_Mux23~4_combout\,
	datad => \ALT_INV_hit~0_combout\,
	combout => \mux|s[8]~8_combout\);

-- Location: LABCELL_X27_Y2_N51
\direct_map|cach_instruction[5][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][51]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_cach_instruction[5][51]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~5_combout\,
	combout => \direct_map|cach_instruction[5][51]~combout\);

-- Location: LABCELL_X27_Y2_N6
\direct_map|cach_instruction[13][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][51]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[13][51]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][51]~combout\);

-- Location: LABCELL_X27_Y2_N45
\direct_map|cach_instruction[1][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][51]~combout\ = ( \direct_map|cach_instruction[1][51]~combout\ & ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) ) # ( !\direct_map|cach_instruction[1][51]~combout\ & ( 
-- \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) ) # ( \direct_map|cach_instruction[1][51]~combout\ & ( !\direct_map|Decoder0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \direct_map|ALT_INV_cach_instruction[1][51]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][51]~combout\);

-- Location: LABCELL_X27_Y2_N48
\direct_map|cach_instruction[9][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][51]~combout\ = ( \direct_map|cach_instruction[9][51]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[9][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][51]~combout\,
	combout => \direct_map|cach_instruction[9][51]~combout\);

-- Location: LABCELL_X27_Y2_N54
\direct_map|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux22~1_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[9][51]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[13][51]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[9][51]~combout\ & ( 
-- (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][51]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[5][51]~combout\)) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[9][51]~combout\ & ( 
-- (\direct_map|cach_instruction[13][51]~combout\ & \pc[2]~input_o\) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[9][51]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][51]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][51]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][51]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][51]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[1][51]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][51]~combout\,
	combout => \direct_map|Mux22~1_combout\);

-- Location: MLABCELL_X25_Y3_N9
\direct_map|cach_instruction[11][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][51]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \direct_map|ALT_INV_cach_instruction[11][51]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][51]~combout\);

-- Location: MLABCELL_X25_Y3_N27
\direct_map|cach_instruction[3][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][51]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_cach_instruction[3][51]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][51]~combout\);

-- Location: MLABCELL_X25_Y3_N6
\direct_map|cach_instruction[7][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][51]~combout\ = ( \direct_map|cach_instruction[7][51]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[7][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][51]~combout\,
	combout => \direct_map|cach_instruction[7][51]~combout\);

-- Location: MLABCELL_X25_Y4_N27
\direct_map|cach_instruction[15][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][51]~combout\ = ( \direct_map|cach_instruction[15][51]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[15][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][51]~combout\,
	combout => \direct_map|cach_instruction[15][51]~combout\);

-- Location: MLABCELL_X25_Y3_N54
\direct_map|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux22~3_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[15][51]~combout\ & ( (\direct_map|cach_instruction[7][51]~combout\) # (\pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[15][51]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[3][51]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[11][51]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[15][51]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[7][51]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[15][51]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[3][51]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[11][51]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[11][51]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[3][51]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][51]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][51]~combout\,
	combout => \direct_map|Mux22~3_combout\);

-- Location: LABCELL_X24_Y5_N51
\direct_map|cach_instruction[14][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][51]~combout\ = ( \direct_map|cach_instruction[14][51]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[14][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][51]~combout\,
	combout => \direct_map|cach_instruction[14][51]~combout\);

-- Location: LABCELL_X24_Y5_N6
\direct_map|cach_instruction[2][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][51]~combout\ = ( \direct_map|cach_instruction[2][51]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[2][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][51]~combout\,
	combout => \direct_map|cach_instruction[2][51]~combout\);

-- Location: LABCELL_X24_Y5_N48
\direct_map|cach_instruction[10][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][51]~combout\ = ( \direct_map|cach_instruction[10][51]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[10][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][51]~combout\,
	combout => \direct_map|cach_instruction[10][51]~combout\);

-- Location: LABCELL_X24_Y5_N9
\direct_map|cach_instruction[6][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][51]~combout\ = ( \direct_map|cach_instruction[6][51]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[6][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][51]~combout\,
	combout => \direct_map|cach_instruction[6][51]~combout\);

-- Location: LABCELL_X24_Y5_N24
\direct_map|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux22~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[6][51]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[14][51]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[6][51]~combout\ & ( 
-- (!\pc[3]~input_o\ & (\direct_map|cach_instruction[2][51]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[10][51]~combout\))) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][51]~combout\ & ( 
-- (\direct_map|cach_instruction[14][51]~combout\ & \pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][51]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[2][51]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[10][51]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][51]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[2][51]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][51]~combout\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][51]~combout\,
	combout => \direct_map|Mux22~2_combout\);

-- Location: LABCELL_X27_Y2_N33
\direct_map|cach_instruction[4][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][51]~combout\ = ( \direct_map|cach_instruction[4][51]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[4][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][51]~combout\,
	combout => \direct_map|cach_instruction[4][51]~combout\);

-- Location: LABCELL_X27_Y2_N12
\direct_map|cach_instruction[0][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][51]~combout\ = ( \direct_map|cach_instruction[0][51]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(9)) ) ) # ( !\direct_map|cach_instruction[0][51]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(9) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][51]~combout\,
	combout => \direct_map|cach_instruction[0][51]~combout\);

-- Location: LABCELL_X27_Y2_N39
\direct_map|cach_instruction[12][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][51]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][51]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( 
-- \direct_map|cach_instruction[12][51]~combout\ ) ) # ( \direct_map|Decoder0~12_combout\ & ( !\direct_map|cach_instruction[12][51]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datae => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][51]~combout\,
	combout => \direct_map|cach_instruction[12][51]~combout\);

-- Location: LABCELL_X27_Y2_N18
\direct_map|cach_instruction[8][51]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][51]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][51]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datac => \direct_map|ALT_INV_cach_instruction[8][51]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][51]~combout\);

-- Location: LABCELL_X27_Y2_N24
\direct_map|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux22~0_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[8][51]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[12][51]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[8][51]~combout\ & ( 
-- (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[0][51]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[4][51]~combout\)) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[8][51]~combout\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[12][51]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[8][51]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[0][51]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[4][51]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[4][51]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][51]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[12][51]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][51]~combout\,
	combout => \direct_map|Mux22~0_combout\);

-- Location: LABCELL_X27_Y2_N0
\direct_map|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux22~4_combout\ = ( \pc[1]~input_o\ & ( \direct_map|Mux22~0_combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|Mux22~2_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux22~3_combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|Mux22~0_combout\ & 
-- ( (!\pc[0]~input_o\) # (\direct_map|Mux22~1_combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|Mux22~0_combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|Mux22~2_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux22~3_combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( 
-- !\direct_map|Mux22~0_combout\ & ( (\direct_map|Mux22~1_combout\ & \pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux22~1_combout\,
	datab => \direct_map|ALT_INV_Mux22~3_combout\,
	datac => \direct_map|ALT_INV_Mux22~2_combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_Mux22~0_combout\,
	combout => \direct_map|Mux22~4_combout\);

-- Location: LABCELL_X27_Y2_N21
\mux|s[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[9]~9_combout\ = ( \hit~0_combout\ & ( \direct_map|Mux22~4_combout\ ) ) # ( !\hit~0_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \direct_map|ALT_INV_Mux22~4_combout\,
	dataf => \ALT_INV_hit~0_combout\,
	combout => \mux|s[9]~9_combout\);

-- Location: LABCELL_X27_Y3_N12
\direct_map|cach_instruction[7][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][50]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(10) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- \direct_map|cach_instruction[7][50]~combout\ ) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( \direct_map|cach_instruction[7][50]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \direct_map|ALT_INV_cach_instruction[7][50]~combout\,
	datae => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[7][50]~combout\);

-- Location: MLABCELL_X28_Y3_N27
\direct_map|cach_instruction[4][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|cach_instruction[4][50]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][50]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][50]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[4][50]~combout\);

-- Location: LABCELL_X27_Y3_N45
\direct_map|cach_instruction[6][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][50]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(10) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][50]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \direct_map|ALT_INV_cach_instruction[6][50]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][50]~combout\);

-- Location: MLABCELL_X28_Y7_N48
\direct_map|cach_instruction[5][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[5][50]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[5][50]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[5][50]~combout\);

-- Location: LABCELL_X27_Y3_N0
\direct_map|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux21~1_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[5][50]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[7][50]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[5][50]~combout\ & ( 
-- (!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][50]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[6][50]~combout\))) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[5][50]~combout\ & ( (\pc[1]~input_o\ & 
-- \direct_map|cach_instruction[7][50]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[5][50]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][50]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[6][50]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000100010001000100001010010111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[7][50]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[4][50]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[6][50]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][50]~combout\,
	combout => \direct_map|Mux21~1_combout\);

-- Location: LABCELL_X27_Y3_N36
\direct_map|cach_instruction[8][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|cach_instruction[8][50]~combout\) # (\direct_map|Decoder0~8_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (!\direct_map|Decoder0~8_combout\ & \direct_map|cach_instruction[8][50]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][50]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[8][50]~combout\);

-- Location: MLABCELL_X28_Y3_N54
\direct_map|cach_instruction[11][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[11][50]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[11][50]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[11][50]~combout\);

-- Location: LABCELL_X27_Y3_N42
\direct_map|cach_instruction[9][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][50]~combout\ = ( \direct_map|cach_instruction[9][50]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(10)) ) ) # ( !\direct_map|cach_instruction[9][50]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(10) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][50]~combout\,
	combout => \direct_map|cach_instruction[9][50]~combout\);

-- Location: LABCELL_X27_Y3_N30
\direct_map|cach_instruction[10][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[10][50]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[10][50]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[10][50]~combout\);

-- Location: LABCELL_X27_Y3_N54
\direct_map|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux21~2_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[10][50]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[9][50]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[11][50]~combout\)) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[10][50]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[8][50]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[10][50]~combout\ & ( (!\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[9][50]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[11][50]~combout\)) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[10][50]~combout\ & ( (\direct_map|cach_instruction[8][50]~combout\ & 
-- !\pc[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][50]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][50]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[9][50]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][50]~combout\,
	combout => \direct_map|Mux21~2_combout\);

-- Location: LABCELL_X27_Y3_N9
\direct_map|cach_instruction[13][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][50]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(10) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][50]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datac => \direct_map|ALT_INV_cach_instruction[13][50]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][50]~combout\);

-- Location: LABCELL_X29_Y3_N15
\direct_map|cach_instruction[15][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[15][50]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[15][50]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[15][50]~combout\);

-- Location: MLABCELL_X28_Y3_N48
\direct_map|cach_instruction[14][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~14_combout\) # (\direct_map|cach_instruction[14][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[14][50]~combout\ & !\direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][50]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[14][50]~combout\);

-- Location: LABCELL_X27_Y3_N6
\direct_map|cach_instruction[12][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][50]~combout\ = ( \direct_map|cach_instruction[12][50]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(10)) ) ) # ( !\direct_map|cach_instruction[12][50]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(10) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][50]~combout\,
	combout => \direct_map|cach_instruction[12][50]~combout\);

-- Location: LABCELL_X27_Y3_N24
\direct_map|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux21~3_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[12][50]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[13][50]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][50]~combout\))) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[12][50]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[14][50]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][50]~combout\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[13][50]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][50]~combout\))) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][50]~combout\ & ( (\pc[1]~input_o\ & 
-- \direct_map|cach_instruction[14][50]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[13][50]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][50]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][50]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][50]~combout\,
	combout => \direct_map|Mux21~3_combout\);

-- Location: MLABCELL_X28_Y9_N36
\direct_map|cach_instruction[2][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~2_combout\) # (\direct_map|cach_instruction[2][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[2][50]~combout\ & !\direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[2][50]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[2][50]~combout\);

-- Location: MLABCELL_X28_Y9_N42
\direct_map|cach_instruction[1][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][50]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (\direct_map|cach_instruction[1][50]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[1][50]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[1][50]~combout\);

-- Location: MLABCELL_X28_Y9_N45
\direct_map|cach_instruction[3][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|cach_instruction[3][50]~combout\) # (\direct_map|Decoder0~3_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (!\direct_map|Decoder0~3_combout\ & \direct_map|cach_instruction[3][50]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~3_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][50]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[3][50]~combout\);

-- Location: MLABCELL_X28_Y9_N39
\direct_map|cach_instruction[0][50]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][50]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(10) & ( (\direct_map|cach_instruction[0][50]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(10) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][50]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][50]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \direct_map|cach_instruction[0][50]~combout\);

-- Location: MLABCELL_X28_Y9_N24
\direct_map|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux21~0_combout\ = ( \direct_map|cach_instruction[3][50]~combout\ & ( \direct_map|cach_instruction[0][50]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\) # (\direct_map|cach_instruction[1][50]~combout\)))) # (\pc[1]~input_o\ & 
-- (((\pc[0]~input_o\)) # (\direct_map|cach_instruction[2][50]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[3][50]~combout\ & ( \direct_map|cach_instruction[0][50]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\) # 
-- (\direct_map|cach_instruction[1][50]~combout\)))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][50]~combout\ & ((!\pc[0]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[3][50]~combout\ & ( !\direct_map|cach_instruction[0][50]~combout\ & ( 
-- (!\pc[1]~input_o\ & (((\direct_map|cach_instruction[1][50]~combout\ & \pc[0]~input_o\)))) # (\pc[1]~input_o\ & (((\pc[0]~input_o\)) # (\direct_map|cach_instruction[2][50]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[3][50]~combout\ & ( 
-- !\direct_map|cach_instruction[0][50]~combout\ & ( (!\pc[1]~input_o\ & (((\direct_map|cach_instruction[1][50]~combout\ & \pc[0]~input_o\)))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][50]~combout\ & ((!\pc[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[2][50]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[1][50]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[3][50]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][50]~combout\,
	combout => \direct_map|Mux21~0_combout\);

-- Location: MLABCELL_X28_Y3_N3
\direct_map|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux21~4_combout\ = ( \direct_map|Mux21~3_combout\ & ( \direct_map|Mux21~0_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|Mux21~1_combout\))) # (\pc[3]~input_o\ & (((\direct_map|Mux21~2_combout\) # (\pc[2]~input_o\)))) ) 
-- ) ) # ( !\direct_map|Mux21~3_combout\ & ( \direct_map|Mux21~0_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|Mux21~1_combout\))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\ & \direct_map|Mux21~2_combout\)))) ) ) ) # ( 
-- \direct_map|Mux21~3_combout\ & ( !\direct_map|Mux21~0_combout\ & ( (!\pc[3]~input_o\ & (\direct_map|Mux21~1_combout\ & (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (((\direct_map|Mux21~2_combout\) # (\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|Mux21~3_combout\ 
-- & ( !\direct_map|Mux21~0_combout\ & ( (!\pc[3]~input_o\ & (\direct_map|Mux21~1_combout\ & (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\ & \direct_map|Mux21~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_Mux21~1_combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_Mux21~2_combout\,
	datae => \direct_map|ALT_INV_Mux21~3_combout\,
	dataf => \direct_map|ALT_INV_Mux21~0_combout\,
	combout => \direct_map|Mux21~4_combout\);

-- Location: LABCELL_X29_Y2_N48
\mux|s[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[10]~10_combout\ = ( \hit~0_combout\ & ( \direct_map|Mux21~4_combout\ ) ) # ( !\hit~0_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Mux21~4_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	dataf => \ALT_INV_hit~0_combout\,
	combout => \mux|s[10]~10_combout\);

-- Location: LABCELL_X22_Y6_N27
\direct_map|cach_instruction[1][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][49]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_cach_instruction[1][49]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][49]~combout\);

-- Location: LABCELL_X22_Y6_N30
\direct_map|cach_instruction[9][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][49]~combout\ = ( \direct_map|cach_instruction[9][49]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[9][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][49]~combout\,
	combout => \direct_map|cach_instruction[9][49]~combout\);

-- Location: LABCELL_X22_Y6_N3
\direct_map|cach_instruction[5][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][49]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(11) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][49]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(11) & ( 
-- (\direct_map|cach_instruction[5][49]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][49]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \direct_map|cach_instruction[5][49]~combout\);

-- Location: LABCELL_X22_Y6_N33
\direct_map|cach_instruction[13][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][49]~combout\ = ( \direct_map|cach_instruction[13][49]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[13][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][49]~combout\,
	combout => \direct_map|cach_instruction[13][49]~combout\);

-- Location: LABCELL_X22_Y6_N36
\direct_map|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux20~1_combout\ = ( \direct_map|cach_instruction[5][49]~combout\ & ( \direct_map|cach_instruction[13][49]~combout\ & ( ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][49]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[9][49]~combout\)))) # (\pc[2]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[5][49]~combout\ & ( \direct_map|cach_instruction[13][49]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][49]~combout\ & 
-- ((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\) # (\direct_map|cach_instruction[9][49]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[5][49]~combout\ & ( !\direct_map|cach_instruction[13][49]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)) # (\direct_map|cach_instruction[1][49]~combout\))) # (\pc[3]~input_o\ & (((\direct_map|cach_instruction[9][49]~combout\ & !\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[5][49]~combout\ & ( 
-- !\direct_map|cach_instruction[13][49]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][49]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[9][49]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][49]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][49]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[5][49]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][49]~combout\,
	combout => \direct_map|Mux20~1_combout\);

-- Location: MLABCELL_X25_Y8_N33
\direct_map|cach_instruction[3][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][49]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][49]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][49]~combout\);

-- Location: LABCELL_X22_Y6_N24
\direct_map|cach_instruction[11][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][49]~combout\ = ( \direct_map|cach_instruction[11][49]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[11][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][49]~combout\,
	combout => \direct_map|cach_instruction[11][49]~combout\);

-- Location: MLABCELL_X25_Y8_N3
\direct_map|cach_instruction[7][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][49]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_cach_instruction[7][49]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][49]~combout\);

-- Location: MLABCELL_X25_Y8_N18
\direct_map|cach_instruction[15][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][49]~combout\ = ( \direct_map|Decoder0~15_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~15_combout\ & ( \direct_map|cach_instruction[15][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \direct_map|ALT_INV_cach_instruction[15][49]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~15_combout\,
	combout => \direct_map|cach_instruction[15][49]~combout\);

-- Location: MLABCELL_X25_Y8_N42
\direct_map|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux20~3_combout\ = ( \direct_map|cach_instruction[7][49]~combout\ & ( \direct_map|cach_instruction[15][49]~combout\ & ( ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][49]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[11][49]~combout\)))) # (\pc[2]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[7][49]~combout\ & ( \direct_map|cach_instruction[15][49]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][49]~combout\ & 
-- ((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\) # (\direct_map|cach_instruction[11][49]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[7][49]~combout\ & ( !\direct_map|cach_instruction[15][49]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)) # (\direct_map|cach_instruction[3][49]~combout\))) # (\pc[3]~input_o\ & (((\direct_map|cach_instruction[11][49]~combout\ & !\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[7][49]~combout\ & ( 
-- !\direct_map|cach_instruction[15][49]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[3][49]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[11][49]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100111111000001010011000011110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][49]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][49]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[7][49]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][49]~combout\,
	combout => \direct_map|Mux20~3_combout\);

-- Location: MLABCELL_X28_Y9_N33
\direct_map|cach_instruction[6][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][49]~combout\ = ( \direct_map|cach_instruction[6][49]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[6][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][49]~combout\,
	combout => \direct_map|cach_instruction[6][49]~combout\);

-- Location: MLABCELL_X28_Y7_N30
\direct_map|cach_instruction[10][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][49]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][49]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][49]~combout\);

-- Location: MLABCELL_X28_Y8_N21
\direct_map|cach_instruction[14][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][49]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_cach_instruction[14][49]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][49]~combout\);

-- Location: MLABCELL_X28_Y9_N30
\direct_map|cach_instruction[2][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][49]~combout\ = ( \direct_map|cach_instruction[2][49]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[2][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][49]~combout\,
	combout => \direct_map|cach_instruction[2][49]~combout\);

-- Location: MLABCELL_X28_Y9_N0
\direct_map|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux20~2_combout\ = ( \direct_map|cach_instruction[14][49]~combout\ & ( \direct_map|cach_instruction[2][49]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\) # ((\direct_map|cach_instruction[10][49]~combout\)))) # (\pc[2]~input_o\ & 
-- (((\direct_map|cach_instruction[6][49]~combout\)) # (\pc[3]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[14][49]~combout\ & ( \direct_map|cach_instruction[2][49]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\) # 
-- ((\direct_map|cach_instruction[10][49]~combout\)))) # (\pc[2]~input_o\ & (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][49]~combout\))) ) ) ) # ( \direct_map|cach_instruction[14][49]~combout\ & ( !\direct_map|cach_instruction[2][49]~combout\ & ( 
-- (!\pc[2]~input_o\ & (\pc[3]~input_o\ & ((\direct_map|cach_instruction[10][49]~combout\)))) # (\pc[2]~input_o\ & (((\direct_map|cach_instruction[6][49]~combout\)) # (\pc[3]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[14][49]~combout\ & ( 
-- !\direct_map|cach_instruction[2][49]~combout\ & ( (!\pc[2]~input_o\ & (\pc[3]~input_o\ & ((\direct_map|cach_instruction[10][49]~combout\)))) # (\pc[2]~input_o\ & (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][49]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[6][49]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][49]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[14][49]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][49]~combout\,
	combout => \direct_map|Mux20~2_combout\);

-- Location: MLABCELL_X28_Y9_N9
\direct_map|cach_instruction[12][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][49]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(11) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][49]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datac => \direct_map|ALT_INV_cach_instruction[12][49]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][49]~combout\);

-- Location: MLABCELL_X28_Y9_N48
\direct_map|cach_instruction[8][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][49]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(11) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][49]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(11) & ( 
-- (\direct_map|cach_instruction[8][49]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[8][49]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \direct_map|cach_instruction[8][49]~combout\);

-- Location: MLABCELL_X28_Y9_N6
\direct_map|cach_instruction[4][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][49]~combout\ = ( \direct_map|cach_instruction[4][49]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|cach_instruction[4][49]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(11) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][49]~combout\,
	combout => \direct_map|cach_instruction[4][49]~combout\);

-- Location: MLABCELL_X28_Y9_N15
\direct_map|cach_instruction[0][49]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][49]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(11) & ( (\direct_map|cach_instruction[0][49]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(11) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][49]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][49]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \direct_map|cach_instruction[0][49]~combout\);

-- Location: MLABCELL_X28_Y9_N54
\direct_map|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux20~0_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[0][49]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[8][49]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[12][49]~combout\)) ) ) ) # ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[0][49]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[4][49]~combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[0][49]~combout\ & ( (!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[8][49]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[12][49]~combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[0][49]~combout\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[4][49]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][49]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[8][49]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][49]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][49]~combout\,
	combout => \direct_map|Mux20~0_combout\);

-- Location: LABCELL_X22_Y6_N42
\direct_map|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux20~4_combout\ = ( \pc[1]~input_o\ & ( \direct_map|Mux20~0_combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|Mux20~2_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux20~3_combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|Mux20~0_combout\ & 
-- ( (!\pc[0]~input_o\) # (\direct_map|Mux20~1_combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|Mux20~0_combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|Mux20~2_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux20~3_combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( 
-- !\direct_map|Mux20~0_combout\ & ( (\direct_map|Mux20~1_combout\ & \pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux20~1_combout\,
	datab => \direct_map|ALT_INV_Mux20~3_combout\,
	datac => \direct_map|ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_Mux20~0_combout\,
	combout => \direct_map|Mux20~4_combout\);

-- Location: LABCELL_X30_Y8_N27
\mux|s[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[11]~11_combout\ = ( \direct_map|Mux20~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(11)) ) ) # ( !\direct_map|Mux20~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(11) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	datad => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux20~4_combout\,
	combout => \mux|s[11]~11_combout\);

-- Location: IOIBUF_X2_Y0_N58
\datain[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(12),
	o => \datain[12]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\datain[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(13),
	o => \datain[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\datain[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(14),
	o => \datain[14]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\datain[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(15),
	o => \datain[15]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\datain[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(16),
	o => \datain[16]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\datain[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(17),
	o => \datain[17]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\datain[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(18),
	o => \datain[18]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\datain[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(19),
	o => \datain[19]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\datain[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(20),
	o => \datain[20]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\datain[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(21),
	o => \datain[21]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\datain[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(22),
	o => \datain[22]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\datain[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(23),
	o => \datain[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\datain[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(24),
	o => \datain[24]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\datain[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(25),
	o => \datain[25]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\datain[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(26),
	o => \datain[26]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\datain[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(27),
	o => \datain[27]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\datain[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(28),
	o => \datain[28]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\datain[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(29),
	o => \datain[29]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\datain[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(30),
	o => \datain[30]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\datain[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(31),
	o => \datain[31]~input_o\);

-- Location: M10K_X26_Y6_N0
\U1|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "On_Chip_ram32x32_init.mif",
	init_file_layout => "port_a",
	logical_ram_name => "On_Chip_ram32x32:U1|altsyncram:altsyncram_component|altsyncram_kd34:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_ext~input_o\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LABCELL_X27_Y4_N18
\direct_map|cach_instruction[1][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[1][48]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[1][48]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[1][48]~combout\);

-- Location: LABCELL_X27_Y4_N15
\direct_map|cach_instruction[0][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[0][48]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[0][48]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[0][48]~combout\);

-- Location: LABCELL_X27_Y4_N27
\direct_map|cach_instruction[2][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][48]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(12) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][48]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \direct_map|ALT_INV_cach_instruction[2][48]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][48]~combout\);

-- Location: LABCELL_X27_Y5_N12
\direct_map|cach_instruction[3][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][48]~combout\ = ( \direct_map|cach_instruction[3][48]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(12)) ) ) # ( !\direct_map|cach_instruction[3][48]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(12) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][48]~combout\,
	combout => \direct_map|cach_instruction[3][48]~combout\);

-- Location: LABCELL_X27_Y4_N0
\direct_map|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux19~0_combout\ = ( \pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[3][48]~combout\ ) ) ) # ( !\pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[2][48]~combout\ ) ) ) # ( \pc[0]~input_o\ & ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[1][48]~combout\ ) ) ) # ( !\pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[0][48]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][48]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][48]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[2][48]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][48]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux19~0_combout\);

-- Location: MLABCELL_X28_Y4_N9
\direct_map|cach_instruction[13][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|cach_instruction[13][48]~combout\) # (\direct_map|Decoder0~13_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (!\direct_map|Decoder0~13_combout\ & \direct_map|cach_instruction[13][48]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~13_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][48]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[13][48]~combout\);

-- Location: LABCELL_X27_Y4_N51
\direct_map|cach_instruction[12][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][48]~combout\ = ( \direct_map|cach_instruction[12][48]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(12)) ) ) # ( !\direct_map|cach_instruction[12][48]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(12) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][48]~combout\,
	combout => \direct_map|cach_instruction[12][48]~combout\);

-- Location: LABCELL_X27_Y4_N30
\direct_map|cach_instruction[15][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[15][48]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[15][48]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[15][48]~combout\);

-- Location: LABCELL_X27_Y4_N48
\direct_map|cach_instruction[14][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][48]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(12) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][48]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \direct_map|ALT_INV_cach_instruction[14][48]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][48]~combout\);

-- Location: LABCELL_X27_Y4_N36
\direct_map|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux19~3_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[14][48]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[13][48]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][48]~combout\))) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[14][48]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[12][48]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[14][48]~combout\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[13][48]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][48]~combout\))) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[14][48]~combout\ & ( (\direct_map|cach_instruction[12][48]~combout\ & 
-- !\pc[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][48]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[12][48]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][48]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][48]~combout\,
	combout => \direct_map|Mux19~3_combout\);

-- Location: LABCELL_X30_Y4_N39
\direct_map|cach_instruction[11][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[11][48]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[11][48]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[11][48]~combout\);

-- Location: LABCELL_X27_Y4_N6
\direct_map|cach_instruction[9][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][48]~combout\ = ( \direct_map|cach_instruction[9][48]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(12)) ) ) # ( !\direct_map|cach_instruction[9][48]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(12) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][48]~combout\,
	combout => \direct_map|cach_instruction[9][48]~combout\);

-- Location: MLABCELL_X28_Y8_N30
\direct_map|cach_instruction[10][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[10][48]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[10][48]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[10][48]~combout\);

-- Location: LABCELL_X27_Y4_N9
\direct_map|cach_instruction[8][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][48]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(12) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][48]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[8][48]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][48]~combout\);

-- Location: LABCELL_X27_Y4_N42
\direct_map|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux19~2_combout\ = ( \pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[11][48]~combout\ ) ) ) # ( !\pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[10][48]~combout\ ) ) ) # ( \pc[0]~input_o\ & ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[9][48]~combout\ ) ) ) # ( !\pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[8][48]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[11][48]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][48]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][48]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][48]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux19~2_combout\);

-- Location: LABCELL_X30_Y8_N21
\direct_map|cach_instruction[7][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|cach_instruction[7][48]~combout\) # (\direct_map|Decoder0~7_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (!\direct_map|Decoder0~7_combout\ & \direct_map|cach_instruction[7][48]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][48]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[7][48]~combout\);

-- Location: MLABCELL_X28_Y8_N36
\direct_map|cach_instruction[6][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~6_combout\) # (\direct_map|cach_instruction[6][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[6][48]~combout\ & !\direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[6][48]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[6][48]~combout\);

-- Location: LABCELL_X29_Y7_N6
\direct_map|cach_instruction[4][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|cach_instruction[4][48]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][48]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][48]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[4][48]~combout\);

-- Location: LABCELL_X30_Y8_N18
\direct_map|cach_instruction[5][48]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][48]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(12) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][48]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(12) & ( 
-- (\direct_map|cach_instruction[5][48]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][48]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \direct_map|cach_instruction[5][48]~combout\);

-- Location: LABCELL_X30_Y8_N54
\direct_map|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux19~1_combout\ = ( \direct_map|cach_instruction[4][48]~combout\ & ( \direct_map|cach_instruction[5][48]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[6][48]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[7][48]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[4][48]~combout\ & ( \direct_map|cach_instruction[5][48]~combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\ & \direct_map|cach_instruction[6][48]~combout\)))) # 
-- (\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[7][48]~combout\))) ) ) ) # ( \direct_map|cach_instruction[4][48]~combout\ & ( !\direct_map|cach_instruction[5][48]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\) # 
-- (\direct_map|cach_instruction[6][48]~combout\)))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[7][48]~combout\ & (\pc[1]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[4][48]~combout\ & ( !\direct_map|cach_instruction[5][48]~combout\ & ( 
-- (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[6][48]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[7][48]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[7][48]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[6][48]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[4][48]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][48]~combout\,
	combout => \direct_map|Mux19~1_combout\);

-- Location: LABCELL_X29_Y2_N30
\direct_map|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux19~4_combout\ = ( \pc[3]~input_o\ & ( \direct_map|Mux19~1_combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|Mux19~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux19~3_combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|Mux19~1_combout\ & 
-- ( (\pc[2]~input_o\) # (\direct_map|Mux19~0_combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|Mux19~1_combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|Mux19~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux19~3_combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( 
-- !\direct_map|Mux19~1_combout\ & ( (\direct_map|Mux19~0_combout\ & !\pc[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux19~0_combout\,
	datab => \direct_map|ALT_INV_Mux19~3_combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_Mux19~2_combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_Mux19~1_combout\,
	combout => \direct_map|Mux19~4_combout\);

-- Location: LABCELL_X29_Y2_N27
\mux|s[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[12]~12_combout\ = ( \direct_map|Mux19~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(12)) ) ) # ( !\direct_map|Mux19~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(12) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	datac => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux19~4_combout\,
	combout => \mux|s[12]~12_combout\);

-- Location: LABCELL_X27_Y7_N51
\direct_map|cach_instruction[5][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][47]~combout\ = ( \direct_map|cach_instruction[5][47]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[5][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][47]~combout\,
	combout => \direct_map|cach_instruction[5][47]~combout\);

-- Location: LABCELL_X27_Y7_N48
\direct_map|cach_instruction[1][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][47]~combout\ = ( \direct_map|cach_instruction[1][47]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[1][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][47]~combout\,
	combout => \direct_map|cach_instruction[1][47]~combout\);

-- Location: LABCELL_X31_Y6_N18
\direct_map|cach_instruction[13][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][47]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(13) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][47]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(13) & ( 
-- (\direct_map|cach_instruction[13][47]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[13][47]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \direct_map|cach_instruction[13][47]~combout\);

-- Location: LABCELL_X27_Y7_N33
\direct_map|cach_instruction[9][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][47]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(13) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][47]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][47]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][47]~combout\);

-- Location: MLABCELL_X25_Y7_N0
\direct_map|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux18~1_combout\ = ( \direct_map|cach_instruction[13][47]~combout\ & ( \direct_map|cach_instruction[9][47]~combout\ & ( ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][47]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][47]~combout\))) # (\pc[3]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[13][47]~combout\ & ( \direct_map|cach_instruction[9][47]~combout\ & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[1][47]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[5][47]~combout\)))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[13][47]~combout\ & ( 
-- !\direct_map|cach_instruction[9][47]~combout\ & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][47]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[5][47]~combout\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\)))) 
-- ) ) ) # ( !\direct_map|cach_instruction[13][47]~combout\ & ( !\direct_map|cach_instruction[9][47]~combout\ & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][47]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][47]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[5][47]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[1][47]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[13][47]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][47]~combout\,
	combout => \direct_map|Mux18~1_combout\);

-- Location: LABCELL_X31_Y6_N48
\direct_map|cach_instruction[12][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][47]~combout\ = ( \direct_map|cach_instruction[12][47]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[12][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][47]~combout\,
	combout => \direct_map|cach_instruction[12][47]~combout\);

-- Location: LABCELL_X27_Y6_N21
\direct_map|cach_instruction[4][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][47]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(13) & ( (\direct_map|cach_instruction[4][47]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(13) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][47]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][47]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \direct_map|cach_instruction[4][47]~combout\);

-- Location: LABCELL_X27_Y6_N6
\direct_map|cach_instruction[0][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][47]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(13) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][47]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(13) & ( 
-- (\direct_map|cach_instruction[0][47]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][47]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \direct_map|cach_instruction[0][47]~combout\);

-- Location: LABCELL_X31_Y6_N51
\direct_map|cach_instruction[8][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][47]~combout\ = ( \direct_map|cach_instruction[8][47]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[8][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][47]~combout\,
	combout => \direct_map|cach_instruction[8][47]~combout\);

-- Location: LABCELL_X31_Y6_N0
\direct_map|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux18~0_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[8][47]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[4][47]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][47]~combout\)) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[8][47]~combout\ & ( (\direct_map|cach_instruction[0][47]~combout\) # (\pc[3]~input_o\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][47]~combout\ & ( (!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[4][47]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][47]~combout\)) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][47]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[0][47]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][47]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[4][47]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][47]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][47]~combout\,
	combout => \direct_map|Mux18~0_combout\);

-- Location: LABCELL_X31_Y7_N18
\direct_map|cach_instruction[6][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][47]~combout\ = ( \direct_map|cach_instruction[6][47]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[6][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][47]~combout\,
	combout => \direct_map|cach_instruction[6][47]~combout\);

-- Location: LABCELL_X31_Y6_N21
\direct_map|cach_instruction[10][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][47]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(13) & ( (\direct_map|cach_instruction[10][47]~combout\) # (\direct_map|Decoder0~10_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(13) & ( 
-- (!\direct_map|Decoder0~10_combout\ & \direct_map|cach_instruction[10][47]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~10_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][47]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \direct_map|cach_instruction[10][47]~combout\);

-- Location: LABCELL_X31_Y7_N30
\direct_map|cach_instruction[14][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][47]~combout\ = ( \direct_map|cach_instruction[14][47]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[14][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][47]~combout\,
	combout => \direct_map|cach_instruction[14][47]~combout\);

-- Location: LABCELL_X31_Y7_N33
\direct_map|cach_instruction[2][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][47]~combout\ = ( \direct_map|cach_instruction[2][47]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[2][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][47]~combout\,
	combout => \direct_map|cach_instruction[2][47]~combout\);

-- Location: LABCELL_X31_Y7_N0
\direct_map|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux18~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[2][47]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][47]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][47]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[2][47]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[10][47]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][47]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[6][47]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][47]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][47]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[10][47]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][47]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[10][47]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][47]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][47]~combout\,
	combout => \direct_map|Mux18~2_combout\);

-- Location: LABCELL_X31_Y7_N51
\direct_map|cach_instruction[3][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][47]~combout\ = ( \direct_map|cach_instruction[3][47]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[3][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][47]~combout\,
	combout => \direct_map|cach_instruction[3][47]~combout\);

-- Location: LABCELL_X31_Y7_N6
\direct_map|cach_instruction[7][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][47]~combout\ = ( \direct_map|cach_instruction[7][47]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[7][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][47]~combout\,
	combout => \direct_map|cach_instruction[7][47]~combout\);

-- Location: LABCELL_X31_Y7_N9
\direct_map|cach_instruction[15][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][47]~combout\ = ( \direct_map|cach_instruction[15][47]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(13)) ) ) # ( !\direct_map|cach_instruction[15][47]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(13) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][47]~combout\,
	combout => \direct_map|cach_instruction[15][47]~combout\);

-- Location: LABCELL_X31_Y7_N48
\direct_map|cach_instruction[11][47]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][47]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(13) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][47]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datac => \direct_map|ALT_INV_cach_instruction[11][47]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][47]~combout\);

-- Location: LABCELL_X31_Y7_N54
\direct_map|Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux18~3_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[11][47]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[7][47]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[15][47]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[11][47]~combout\ & ( (\pc[3]~input_o\) # (\direct_map|cach_instruction[3][47]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[11][47]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[7][47]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[15][47]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[11][47]~combout\ & ( (\direct_map|cach_instruction[3][47]~combout\ & 
-- !\pc[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][47]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][47]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][47]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][47]~combout\,
	combout => \direct_map|Mux18~3_combout\);

-- Location: LABCELL_X31_Y7_N36
\direct_map|Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux18~4_combout\ = ( \direct_map|Mux18~3_combout\ & ( \pc[0]~input_o\ & ( (\pc[1]~input_o\) # (\direct_map|Mux18~1_combout\) ) ) ) # ( !\direct_map|Mux18~3_combout\ & ( \pc[0]~input_o\ & ( (\direct_map|Mux18~1_combout\ & !\pc[1]~input_o\) ) ) 
-- ) # ( \direct_map|Mux18~3_combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & (\direct_map|Mux18~0_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux18~2_combout\))) ) ) ) # ( !\direct_map|Mux18~3_combout\ & ( !\pc[0]~input_o\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|Mux18~0_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux18~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux18~1_combout\,
	datab => \direct_map|ALT_INV_Mux18~0_combout\,
	datac => \direct_map|ALT_INV_Mux18~2_combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_Mux18~3_combout\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Mux18~4_combout\);

-- Location: LABCELL_X31_Y7_N21
\mux|s[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[13]~13_combout\ = (!\hit~0_combout\ & ((\U1|altsyncram_component|auto_generated|q_a\(13)))) # (\hit~0_combout\ & (\direct_map|Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux18~4_combout\,
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	datad => \ALT_INV_hit~0_combout\,
	combout => \mux|s[13]~13_combout\);

-- Location: MLABCELL_X28_Y4_N39
\direct_map|cach_instruction[9][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][46]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][46]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \direct_map|ALT_INV_cach_instruction[9][46]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][46]~combout\);

-- Location: LABCELL_X29_Y4_N6
\direct_map|cach_instruction[8][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][46]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][46]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\direct_map|cach_instruction[8][46]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[8][46]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \direct_map|cach_instruction[8][46]~combout\);

-- Location: LABCELL_X29_Y4_N45
\direct_map|cach_instruction[10][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][46]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][46]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\direct_map|cach_instruction[10][46]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[10][46]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \direct_map|cach_instruction[10][46]~combout\);

-- Location: LABCELL_X29_Y4_N9
\direct_map|cach_instruction[11][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][46]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( (\direct_map|cach_instruction[11][46]~combout\) # (\direct_map|Decoder0~11_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (!\direct_map|Decoder0~11_combout\ & \direct_map|cach_instruction[11][46]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~11_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[11][46]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \direct_map|cach_instruction[11][46]~combout\);

-- Location: LABCELL_X29_Y4_N18
\direct_map|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux17~2_combout\ = ( \direct_map|cach_instruction[10][46]~combout\ & ( \direct_map|cach_instruction[11][46]~combout\ & ( ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[8][46]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[9][46]~combout\))) # (\pc[1]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[10][46]~combout\ & ( \direct_map|cach_instruction[11][46]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[8][46]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[9][46]~combout\)))) # (\pc[1]~input_o\ & (((\pc[0]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[10][46]~combout\ & ( 
-- !\direct_map|cach_instruction[11][46]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[8][46]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[9][46]~combout\)))) # (\pc[1]~input_o\ & 
-- (((!\pc[0]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[10][46]~combout\ & ( !\direct_map|cach_instruction[11][46]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[8][46]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[9][46]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][46]~combout\,
	datab => \ALT_INV_pc[1]~input_o\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[8][46]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[10][46]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][46]~combout\,
	combout => \direct_map|Mux17~2_combout\);

-- Location: LABCELL_X29_Y4_N15
\direct_map|cach_instruction[5][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][46]~combout\ = ( \direct_map|cach_instruction[5][46]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[5][46]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(14) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][46]~combout\,
	combout => \direct_map|cach_instruction[5][46]~combout\);

-- Location: MLABCELL_X25_Y5_N33
\direct_map|cach_instruction[4][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][46]~combout\ = ( \direct_map|cach_instruction[4][46]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[4][46]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(14) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][46]~combout\,
	combout => \direct_map|cach_instruction[4][46]~combout\);

-- Location: MLABCELL_X25_Y5_N24
\direct_map|cach_instruction[7][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][46]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][46]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datac => \direct_map|ALT_INV_cach_instruction[7][46]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][46]~combout\);

-- Location: LABCELL_X29_Y4_N12
\direct_map|cach_instruction[6][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][46]~combout\ = ( \direct_map|cach_instruction[6][46]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[6][46]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(14) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][46]~combout\,
	combout => \direct_map|cach_instruction[6][46]~combout\);

-- Location: LABCELL_X29_Y4_N24
\direct_map|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux17~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[6][46]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[7][46]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[6][46]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[4][46]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[5][46]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[6][46]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[7][46]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[6][46]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[4][46]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[5][46]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[5][46]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[4][46]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][46]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][46]~combout\,
	combout => \direct_map|Mux17~1_combout\);

-- Location: LABCELL_X29_Y4_N33
\direct_map|cach_instruction[14][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][46]~combout\ = ( \direct_map|cach_instruction[14][46]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[14][46]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(14) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][46]~combout\,
	combout => \direct_map|cach_instruction[14][46]~combout\);

-- Location: LABCELL_X29_Y4_N30
\direct_map|cach_instruction[13][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][46]~combout\ = ( \direct_map|cach_instruction[13][46]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[13][46]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(14) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][46]~combout\,
	combout => \direct_map|cach_instruction[13][46]~combout\);

-- Location: LABCELL_X29_Y4_N48
\direct_map|cach_instruction[12][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][46]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][46]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[12][46]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][46]~combout\);

-- Location: LABCELL_X29_Y4_N51
\direct_map|cach_instruction[15][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][46]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][46]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\direct_map|cach_instruction[15][46]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][46]~combout\,
	datab => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \direct_map|cach_instruction[15][46]~combout\);

-- Location: LABCELL_X29_Y4_N36
\direct_map|Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux17~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[15][46]~combout\ & ( (\pc[0]~input_o\) # (\direct_map|cach_instruction[14][46]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[15][46]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][46]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[13][46]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][46]~combout\ & ( 
-- (\direct_map|cach_instruction[14][46]~combout\ & !\pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][46]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][46]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[13][46]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][46]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][46]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[12][46]~combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][46]~combout\,
	combout => \direct_map|Mux17~3_combout\);

-- Location: LABCELL_X27_Y9_N51
\direct_map|cach_instruction[0][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][46]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][46]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (\direct_map|cach_instruction[0][46]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][46]~combout\,
	datab => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \direct_map|cach_instruction[0][46]~combout\);

-- Location: LABCELL_X27_Y9_N6
\direct_map|cach_instruction[2][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][46]~combout\ = ( \direct_map|cach_instruction[2][46]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[2][46]~combout\ & ( 
-- (\direct_map|Decoder0~2_combout\ & \U1|altsyncram_component|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \direct_map|ALT_INV_cach_instruction[2][46]~combout\,
	combout => \direct_map|cach_instruction[2][46]~combout\);

-- Location: LABCELL_X27_Y9_N9
\direct_map|cach_instruction[3][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][46]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][46]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][46]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][46]~combout\);

-- Location: LABCELL_X27_Y9_N48
\direct_map|cach_instruction[1][46]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][46]~combout\ = ( \direct_map|cach_instruction[1][46]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(14)) ) ) # ( !\direct_map|cach_instruction[1][46]~combout\ & ( 
-- (\direct_map|Decoder0~1_combout\ & \U1|altsyncram_component|auto_generated|q_a\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~1_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	dataf => \direct_map|ALT_INV_cach_instruction[1][46]~combout\,
	combout => \direct_map|cach_instruction[1][46]~combout\);

-- Location: LABCELL_X27_Y9_N0
\direct_map|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux17~0_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[1][46]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[2][46]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[3][46]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[1][46]~combout\ & ( (\pc[0]~input_o\) # (\direct_map|cach_instruction[0][46]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[1][46]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[2][46]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[3][46]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[1][46]~combout\ & ( (\direct_map|cach_instruction[0][46]~combout\ & 
-- !\pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][46]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[2][46]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[3][46]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][46]~combout\,
	combout => \direct_map|Mux17~0_combout\);

-- Location: LABCELL_X29_Y4_N54
\direct_map|Mux17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux17~4_combout\ = ( \pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|Mux17~3_combout\ ) ) ) # ( !\pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|Mux17~2_combout\ ) ) ) # ( \pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( 
-- \direct_map|Mux17~1_combout\ ) ) ) # ( !\pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( \direct_map|Mux17~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux17~2_combout\,
	datab => \direct_map|ALT_INV_Mux17~1_combout\,
	datac => \direct_map|ALT_INV_Mux17~3_combout\,
	datad => \direct_map|ALT_INV_Mux17~0_combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux17~4_combout\);

-- Location: MLABCELL_X34_Y4_N45
\mux|s[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[14]~14_combout\ = ( \direct_map|Mux17~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) ) ) # ( !\direct_map|Mux17~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(14) & ( !\hit~0_combout\ ) ) ) # ( 
-- \direct_map|Mux17~4_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(14) & ( \hit~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datae => \direct_map|ALT_INV_Mux17~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \mux|s[14]~14_combout\);

-- Location: LABCELL_X33_Y6_N21
\direct_map|cach_instruction[12][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][45]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(15) & ( (\direct_map|cach_instruction[12][45]~combout\) # (\direct_map|Decoder0~12_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(15) & ( 
-- (!\direct_map|Decoder0~12_combout\ & \direct_map|cach_instruction[12][45]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~12_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[12][45]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \direct_map|cach_instruction[12][45]~combout\);

-- Location: MLABCELL_X28_Y2_N57
\direct_map|cach_instruction[4][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][45]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][45]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_cach_instruction[4][45]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][45]~combout\);

-- Location: LABCELL_X33_Y6_N24
\direct_map|cach_instruction[0][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][45]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(15) & ( (\direct_map|cach_instruction[0][45]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(15) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][45]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][45]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \direct_map|cach_instruction[0][45]~combout\);

-- Location: MLABCELL_X28_Y2_N3
\direct_map|cach_instruction[8][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][45]~combout\ = ( \direct_map|cach_instruction[8][45]~combout\ & ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( !\direct_map|cach_instruction[8][45]~combout\ & ( 
-- \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( \direct_map|cach_instruction[8][45]~combout\ & ( !\direct_map|Decoder0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \direct_map|ALT_INV_cach_instruction[8][45]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][45]~combout\);

-- Location: LABCELL_X29_Y2_N57
\direct_map|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux16~0_combout\ = ( \direct_map|cach_instruction[0][45]~combout\ & ( \direct_map|cach_instruction[8][45]~combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[4][45]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[12][45]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[0][45]~combout\ & ( \direct_map|cach_instruction[8][45]~combout\ & ( (!\pc[2]~input_o\ & (((\pc[3]~input_o\)))) # (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[4][45]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][45]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[0][45]~combout\ & ( !\direct_map|cach_instruction[8][45]~combout\ & ( (!\pc[2]~input_o\ & 
-- (((!\pc[3]~input_o\)))) # (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[4][45]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][45]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[0][45]~combout\ & ( 
-- !\direct_map|cach_instruction[8][45]~combout\ & ( (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[4][45]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][45]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][45]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[4][45]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[0][45]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][45]~combout\,
	combout => \direct_map|Mux16~0_combout\);

-- Location: LABCELL_X31_Y7_N12
\direct_map|cach_instruction[7][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][45]~combout\ = ( \direct_map|cach_instruction[7][45]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[7][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][45]~combout\,
	combout => \direct_map|cach_instruction[7][45]~combout\);

-- Location: LABCELL_X31_Y7_N42
\direct_map|cach_instruction[15][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][45]~combout\ = ( \direct_map|cach_instruction[15][45]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[15][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][45]~combout\,
	combout => \direct_map|cach_instruction[15][45]~combout\);

-- Location: LABCELL_X31_Y7_N45
\direct_map|cach_instruction[11][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][45]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][45]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_cach_instruction[11][45]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][45]~combout\);

-- Location: LABCELL_X31_Y7_N15
\direct_map|cach_instruction[3][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][45]~combout\ = ( \direct_map|cach_instruction[3][45]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[3][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][45]~combout\,
	combout => \direct_map|cach_instruction[3][45]~combout\);

-- Location: LABCELL_X31_Y7_N24
\direct_map|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux16~3_combout\ = ( \direct_map|cach_instruction[11][45]~combout\ & ( \direct_map|cach_instruction[3][45]~combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[7][45]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[15][45]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[11][45]~combout\ & ( \direct_map|cach_instruction[3][45]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|cach_instruction[7][45]~combout\))) 
-- # (\pc[3]~input_o\ & (((\pc[2]~input_o\ & \direct_map|cach_instruction[15][45]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[11][45]~combout\ & ( !\direct_map|cach_instruction[3][45]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[7][45]~combout\ & (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|cach_instruction[15][45]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[11][45]~combout\ & ( 
-- !\direct_map|cach_instruction[3][45]~combout\ & ( (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|cach_instruction[7][45]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[15][45]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[7][45]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][45]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[11][45]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][45]~combout\,
	combout => \direct_map|Mux16~3_combout\);

-- Location: MLABCELL_X28_Y2_N27
\direct_map|cach_instruction[13][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][45]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][45]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_cach_instruction[13][45]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][45]~combout\);

-- Location: LABCELL_X33_Y6_N36
\direct_map|cach_instruction[5][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][45]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(15) & ( (\direct_map|cach_instruction[5][45]~combout\) # (\direct_map|Decoder0~5_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(15) & ( 
-- (!\direct_map|Decoder0~5_combout\ & \direct_map|cach_instruction[5][45]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][45]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \direct_map|cach_instruction[5][45]~combout\);

-- Location: MLABCELL_X28_Y2_N30
\direct_map|cach_instruction[9][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][45]~combout\ = ( \direct_map|cach_instruction[9][45]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[9][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][45]~combout\,
	combout => \direct_map|cach_instruction[9][45]~combout\);

-- Location: MLABCELL_X28_Y2_N33
\direct_map|cach_instruction[1][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][45]~combout\ = ( \direct_map|cach_instruction[1][45]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[1][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][45]~combout\,
	combout => \direct_map|cach_instruction[1][45]~combout\);

-- Location: MLABCELL_X28_Y2_N12
\direct_map|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux16~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[1][45]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[5][45]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[13][45]~combout\)) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[1][45]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[9][45]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[1][45]~combout\ & ( (!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[5][45]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[13][45]~combout\)) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[1][45]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[9][45]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[13][45]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[5][45]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[9][45]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][45]~combout\,
	combout => \direct_map|Mux16~1_combout\);

-- Location: LABCELL_X24_Y5_N33
\direct_map|cach_instruction[6][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][45]~combout\ = ( \direct_map|cach_instruction[6][45]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[6][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][45]~combout\,
	combout => \direct_map|cach_instruction[6][45]~combout\);

-- Location: LABCELL_X33_Y6_N39
\direct_map|cach_instruction[14][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][45]~combout\ = ( \direct_map|cach_instruction[14][45]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[14][45]~combout\ & ( 
-- (\direct_map|Decoder0~14_combout\ & \U1|altsyncram_component|auto_generated|q_a\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~14_combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	dataf => \direct_map|ALT_INV_cach_instruction[14][45]~combout\,
	combout => \direct_map|cach_instruction[14][45]~combout\);

-- Location: LABCELL_X24_Y5_N42
\direct_map|cach_instruction[10][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][45]~combout\ = ( \direct_map|cach_instruction[10][45]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[10][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][45]~combout\,
	combout => \direct_map|cach_instruction[10][45]~combout\);

-- Location: LABCELL_X24_Y5_N30
\direct_map|cach_instruction[2][45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][45]~combout\ = ( \direct_map|cach_instruction[2][45]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(15)) ) ) # ( !\direct_map|cach_instruction[2][45]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(15) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][45]~combout\,
	combout => \direct_map|cach_instruction[2][45]~combout\);

-- Location: LABCELL_X24_Y5_N18
\direct_map|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux16~2_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[2][45]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][45]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][45]~combout\)) ) ) ) # ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[2][45]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[6][45]~combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[2][45]~combout\ & ( (!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[10][45]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][45]~combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[2][45]~combout\ & ( (\direct_map|cach_instruction[6][45]~combout\ & 
-- \pc[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][45]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[14][45]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[10][45]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][45]~combout\,
	combout => \direct_map|Mux16~2_combout\);

-- Location: LABCELL_X30_Y3_N42
\direct_map|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux16~4_combout\ = ( \pc[1]~input_o\ & ( \direct_map|Mux16~2_combout\ & ( (!\pc[0]~input_o\) # (\direct_map|Mux16~3_combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|Mux16~2_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux16~0_combout\)) # 
-- (\pc[0]~input_o\ & ((\direct_map|Mux16~1_combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|Mux16~2_combout\ & ( (\direct_map|Mux16~3_combout\ & \pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|Mux16~2_combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|Mux16~0_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux16~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux16~0_combout\,
	datab => \direct_map|ALT_INV_Mux16~3_combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_Mux16~1_combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_Mux16~2_combout\,
	combout => \direct_map|Mux16~4_combout\);

-- Location: LABCELL_X30_Y3_N27
\mux|s[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[15]~15_combout\ = ( \hit~0_combout\ & ( \direct_map|Mux16~4_combout\ ) ) # ( !\hit~0_combout\ & ( \direct_map|Mux16~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(15) ) ) ) # ( !\hit~0_combout\ & ( !\direct_map|Mux16~4_combout\ & ( 
-- \U1|altsyncram_component|auto_generated|q_a\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datae => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux16~4_combout\,
	combout => \mux|s[15]~15_combout\);

-- Location: LABCELL_X27_Y5_N51
\direct_map|cach_instruction[3][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][44]~combout\ = ( \direct_map|cach_instruction[3][44]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(16)) ) ) # ( !\direct_map|cach_instruction[3][44]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(16) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][44]~combout\,
	combout => \direct_map|cach_instruction[3][44]~combout\);

-- Location: LABCELL_X27_Y5_N48
\direct_map|cach_instruction[2][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][44]~combout\ = ( \direct_map|cach_instruction[2][44]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(16)) ) ) # ( !\direct_map|cach_instruction[2][44]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(16) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][44]~combout\,
	combout => \direct_map|cach_instruction[2][44]~combout\);

-- Location: LABCELL_X27_Y5_N30
\direct_map|cach_instruction[0][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[0][44]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[0][44]~combout\);

-- Location: LABCELL_X27_Y5_N33
\direct_map|cach_instruction[1][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][44]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][44]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][44]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][44]~combout\);

-- Location: LABCELL_X27_Y5_N54
\direct_map|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux15~0_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[1][44]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][44]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][44]~combout\)) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[1][44]~combout\ & ( (\direct_map|cach_instruction[0][44]~combout\) # (\pc[0]~input_o\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[1][44]~combout\ & ( (!\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[2][44]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][44]~combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[1][44]~combout\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[0][44]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][44]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[2][44]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][44]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][44]~combout\,
	combout => \direct_map|Mux15~0_combout\);

-- Location: LABCELL_X27_Y5_N6
\direct_map|cach_instruction[5][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][44]~combout\ = ( \direct_map|cach_instruction[5][44]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(16)) ) ) # ( !\direct_map|cach_instruction[5][44]~combout\ & ( 
-- (\direct_map|Decoder0~5_combout\ & \U1|altsyncram_component|auto_generated|q_a\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	dataf => \direct_map|ALT_INV_cach_instruction[5][44]~combout\,
	combout => \direct_map|cach_instruction[5][44]~combout\);

-- Location: LABCELL_X27_Y5_N9
\direct_map|cach_instruction[6][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][44]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][44]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[6][44]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][44]~combout\);

-- Location: LABCELL_X27_Y5_N39
\direct_map|cach_instruction[7][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][44]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][44]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[7][44]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][44]~combout\);

-- Location: LABCELL_X27_Y5_N15
\direct_map|cach_instruction[4][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][44]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][44]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[4][44]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][44]~combout\);

-- Location: LABCELL_X27_Y5_N24
\direct_map|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux15~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[4][44]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][44]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][44]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[4][44]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[5][44]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][44]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[6][44]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][44]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][44]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[5][44]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[5][44]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[6][44]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][44]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][44]~combout\,
	combout => \direct_map|Mux15~1_combout\);

-- Location: LABCELL_X29_Y3_N9
\direct_map|cach_instruction[14][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~14_combout\) # (\direct_map|cach_instruction[14][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[14][44]~combout\ & !\direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[14][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[14][44]~combout\);

-- Location: LABCELL_X29_Y3_N48
\direct_map|cach_instruction[13][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[13][44]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[13][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[13][44]~combout\);

-- Location: LABCELL_X29_Y3_N6
\direct_map|cach_instruction[12][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~12_combout\) # (\direct_map|cach_instruction[12][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[12][44]~combout\ & !\direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[12][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[12][44]~combout\);

-- Location: LABCELL_X29_Y3_N18
\direct_map|cach_instruction[15][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[15][44]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[15][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[15][44]~combout\);

-- Location: LABCELL_X29_Y3_N0
\direct_map|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux15~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[15][44]~combout\ & ( (\direct_map|cach_instruction[14][44]~combout\) # (\pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[15][44]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][44]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[13][44]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][44]~combout\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[14][44]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][44]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][44]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[13][44]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[14][44]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][44]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[12][44]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][44]~combout\,
	combout => \direct_map|Mux15~3_combout\);

-- Location: LABCELL_X29_Y3_N27
\direct_map|cach_instruction[11][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|cach_instruction[11][44]~combout\) # (\direct_map|Decoder0~11_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (!\direct_map|Decoder0~11_combout\ & \direct_map|cach_instruction[11][44]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[11][44]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[11][44]~combout\);

-- Location: LABCELL_X29_Y3_N24
\direct_map|cach_instruction[10][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|cach_instruction[10][44]~combout\) # (\direct_map|Decoder0~10_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (!\direct_map|Decoder0~10_combout\ & \direct_map|cach_instruction[10][44]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~10_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][44]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[10][44]~combout\);

-- Location: LABCELL_X29_Y3_N33
\direct_map|cach_instruction[8][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[8][44]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[8][44]~combout\);

-- Location: LABCELL_X29_Y3_N30
\direct_map|cach_instruction[9][44]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][44]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][44]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( 
-- (\direct_map|cach_instruction[9][44]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[9][44]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \direct_map|cach_instruction[9][44]~combout\);

-- Location: LABCELL_X30_Y3_N6
\direct_map|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux15~2_combout\ = ( \direct_map|cach_instruction[8][44]~combout\ & ( \direct_map|cach_instruction[9][44]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[10][44]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[11][44]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[8][44]~combout\ & ( \direct_map|cach_instruction[9][44]~combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\ & \direct_map|cach_instruction[10][44]~combout\)))) # 
-- (\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[11][44]~combout\))) ) ) ) # ( \direct_map|cach_instruction[8][44]~combout\ & ( !\direct_map|cach_instruction[9][44]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\) # 
-- (\direct_map|cach_instruction[10][44]~combout\)))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[11][44]~combout\ & (\pc[1]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[8][44]~combout\ & ( !\direct_map|cach_instruction[9][44]~combout\ & ( 
-- (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[10][44]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[11][44]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[11][44]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[10][44]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[8][44]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][44]~combout\,
	combout => \direct_map|Mux15~2_combout\);

-- Location: LABCELL_X29_Y4_N0
\direct_map|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux15~4_combout\ = ( \pc[2]~input_o\ & ( \direct_map|Mux15~2_combout\ & ( (!\pc[3]~input_o\ & (\direct_map|Mux15~1_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux15~3_combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|Mux15~2_combout\ & 
-- ( (\pc[3]~input_o\) # (\direct_map|Mux15~0_combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|Mux15~2_combout\ & ( (!\pc[3]~input_o\ & (\direct_map|Mux15~1_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux15~3_combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( 
-- !\direct_map|Mux15~2_combout\ & ( (\direct_map|Mux15~0_combout\ & !\pc[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux15~0_combout\,
	datab => \direct_map|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_Mux15~3_combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_Mux15~2_combout\,
	combout => \direct_map|Mux15~4_combout\);

-- Location: MLABCELL_X34_Y6_N27
\mux|s[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[16]~16_combout\ = ( \direct_map|Mux15~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) ) ) # ( !\direct_map|Mux15~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(16) & ( !\hit~0_combout\ ) ) ) # ( 
-- \direct_map|Mux15~4_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(16) & ( \hit~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datae => \direct_map|ALT_INV_Mux15~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(16),
	combout => \mux|s[16]~16_combout\);

-- Location: MLABCELL_X25_Y6_N27
\direct_map|cach_instruction[14][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][43]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][43]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_cach_instruction[14][43]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][43]~combout\);

-- Location: MLABCELL_X25_Y6_N24
\direct_map|cach_instruction[6][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][43]~combout\ = ( \direct_map|cach_instruction[6][43]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[6][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][43]~combout\,
	combout => \direct_map|cach_instruction[6][43]~combout\);

-- Location: MLABCELL_X25_Y6_N6
\direct_map|cach_instruction[10][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][43]~combout\ = ( \direct_map|cach_instruction[10][43]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[10][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][43]~combout\,
	combout => \direct_map|cach_instruction[10][43]~combout\);

-- Location: MLABCELL_X25_Y6_N9
\direct_map|cach_instruction[2][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][43]~combout\ = ( \direct_map|cach_instruction[2][43]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[2][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][43]~combout\,
	combout => \direct_map|cach_instruction[2][43]~combout\);

-- Location: MLABCELL_X25_Y6_N54
\direct_map|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux14~2_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[2][43]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][43]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][43]~combout\)) ) ) ) # ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[2][43]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[6][43]~combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[2][43]~combout\ & ( (!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[10][43]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][43]~combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[2][43]~combout\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[6][43]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][43]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[6][43]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][43]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][43]~combout\,
	combout => \direct_map|Mux14~2_combout\);

-- Location: MLABCELL_X25_Y6_N21
\direct_map|cach_instruction[0][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][43]~combout\ = (!\direct_map|Decoder0~0_combout\ & ((\direct_map|cach_instruction[0][43]~combout\))) # (\direct_map|Decoder0~0_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(17)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[0][43]~combout\,
	combout => \direct_map|cach_instruction[0][43]~combout\);

-- Location: LABCELL_X27_Y6_N27
\direct_map|cach_instruction[4][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][43]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(17) & ( (\direct_map|cach_instruction[4][43]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(17) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][43]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][43]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \direct_map|cach_instruction[4][43]~combout\);

-- Location: MLABCELL_X25_Y6_N36
\direct_map|cach_instruction[8][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][43]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(17) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][43]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(17) & ( 
-- (\direct_map|cach_instruction[8][43]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[8][43]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \direct_map|cach_instruction[8][43]~combout\);

-- Location: MLABCELL_X25_Y6_N12
\direct_map|cach_instruction[12][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][43]~combout\ = ( \direct_map|cach_instruction[12][43]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[12][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][43]~combout\,
	combout => \direct_map|cach_instruction[12][43]~combout\);

-- Location: MLABCELL_X25_Y2_N39
\direct_map|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux14~0_combout\ = ( \pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[12][43]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[4][43]~combout\ ) ) ) # ( \pc[3]~input_o\ & ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[8][43]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[0][43]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][43]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[4][43]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[8][43]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[12][43]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux14~0_combout\);

-- Location: MLABCELL_X25_Y6_N51
\direct_map|cach_instruction[5][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][43]~combout\ = ( \direct_map|cach_instruction[5][43]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[5][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][43]~combout\,
	combout => \direct_map|cach_instruction[5][43]~combout\);

-- Location: LABCELL_X23_Y6_N21
\direct_map|cach_instruction[13][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][43]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(17) & ( (\direct_map|cach_instruction[13][43]~combout\) # (\direct_map|Decoder0~13_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(17) & ( 
-- (!\direct_map|Decoder0~13_combout\ & \direct_map|cach_instruction[13][43]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][43]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \direct_map|cach_instruction[13][43]~combout\);

-- Location: MLABCELL_X25_Y6_N30
\direct_map|cach_instruction[1][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][43]~combout\ = ( \direct_map|cach_instruction[1][43]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[1][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][43]~combout\,
	combout => \direct_map|cach_instruction[1][43]~combout\);

-- Location: MLABCELL_X25_Y6_N48
\direct_map|cach_instruction[9][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][43]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][43]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datac => \direct_map|ALT_INV_cach_instruction[9][43]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][43]~combout\);

-- Location: MLABCELL_X25_Y6_N0
\direct_map|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux14~1_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[9][43]~combout\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[13][43]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[9][43]~combout\ & ( 
-- (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][43]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[5][43]~combout\)) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[9][43]~combout\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[13][43]~combout\) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[9][43]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][43]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][43]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][43]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[13][43]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[1][43]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][43]~combout\,
	combout => \direct_map|Mux14~1_combout\);

-- Location: LABCELL_X27_Y4_N12
\direct_map|cach_instruction[15][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][43]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(17) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][43]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(17) & ( 
-- (\direct_map|cach_instruction[15][43]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[15][43]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \direct_map|cach_instruction[15][43]~combout\);

-- Location: MLABCELL_X25_Y3_N33
\direct_map|cach_instruction[11][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][43]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][43]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[11][43]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][43]~combout\);

-- Location: MLABCELL_X25_Y3_N30
\direct_map|cach_instruction[7][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][43]~combout\ = ( \direct_map|cach_instruction[7][43]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(17)) ) ) # ( !\direct_map|cach_instruction[7][43]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(17) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][43]~combout\,
	combout => \direct_map|cach_instruction[7][43]~combout\);

-- Location: MLABCELL_X25_Y3_N3
\direct_map|cach_instruction[3][43]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][43]~combout\ = ( \direct_map|cach_instruction[3][43]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) ) ) # ( !\direct_map|cach_instruction[3][43]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) & 
-- ( \direct_map|Decoder0~3_combout\ ) ) ) # ( \direct_map|cach_instruction[3][43]~combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(17) & ( !\direct_map|Decoder0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	datae => \direct_map|ALT_INV_cach_instruction[3][43]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	combout => \direct_map|cach_instruction[3][43]~combout\);

-- Location: MLABCELL_X25_Y3_N36
\direct_map|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux14~3_combout\ = ( \direct_map|cach_instruction[3][43]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[11][43]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][43]~combout\)) ) ) ) # ( 
-- !\direct_map|cach_instruction[3][43]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[11][43]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][43]~combout\)) ) ) ) # ( 
-- \direct_map|cach_instruction[3][43]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[7][43]~combout\) ) ) ) # ( !\direct_map|cach_instruction[3][43]~combout\ & ( !\pc[3]~input_o\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[7][43]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[15][43]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[11][43]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][43]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[3][43]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux14~3_combout\);

-- Location: LABCELL_X24_Y5_N0
\direct_map|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux14~4_combout\ = ( \pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|Mux14~3_combout\ ) ) ) # ( !\pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|Mux14~2_combout\ ) ) ) # ( \pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( 
-- \direct_map|Mux14~1_combout\ ) ) ) # ( !\pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( \direct_map|Mux14~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux14~2_combout\,
	datab => \direct_map|ALT_INV_Mux14~0_combout\,
	datac => \direct_map|ALT_INV_Mux14~1_combout\,
	datad => \direct_map|ALT_INV_Mux14~3_combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux14~4_combout\);

-- Location: MLABCELL_X34_Y4_N27
\mux|s[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[17]~17_combout\ = ( \hit~0_combout\ & ( \direct_map|Mux14~4_combout\ ) ) # ( !\hit~0_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(17),
	datac => \direct_map|ALT_INV_Mux14~4_combout\,
	dataf => \ALT_INV_hit~0_combout\,
	combout => \mux|s[17]~17_combout\);

-- Location: MLABCELL_X25_Y4_N33
\direct_map|cach_instruction[3][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][42]~combout\ = ( \direct_map|cach_instruction[3][42]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[3][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][42]~combout\,
	combout => \direct_map|cach_instruction[3][42]~combout\);

-- Location: MLABCELL_X25_Y4_N30
\direct_map|cach_instruction[1][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][42]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datab => \direct_map|ALT_INV_cach_instruction[1][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][42]~combout\);

-- Location: MLABCELL_X25_Y4_N48
\direct_map|cach_instruction[0][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][42]~combout\ = ( \direct_map|cach_instruction[0][42]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[0][42]~combout\ & ( 
-- (\direct_map|Decoder0~0_combout\ & \U1|altsyncram_component|auto_generated|q_a\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	dataf => \direct_map|ALT_INV_cach_instruction[0][42]~combout\,
	combout => \direct_map|cach_instruction[0][42]~combout\);

-- Location: MLABCELL_X25_Y4_N51
\direct_map|cach_instruction[2][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][42]~combout\ = ( \direct_map|cach_instruction[2][42]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[2][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][42]~combout\,
	combout => \direct_map|cach_instruction[2][42]~combout\);

-- Location: MLABCELL_X25_Y4_N6
\direct_map|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux13~0_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[2][42]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[3][42]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[2][42]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[0][42]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[1][42]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[2][42]~combout\ & ( 
-- (\direct_map|cach_instruction[3][42]~combout\ & \pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[2][42]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[0][42]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[1][42]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000000101010100001111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][42]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[1][42]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][42]~combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][42]~combout\,
	combout => \direct_map|Mux13~0_combout\);

-- Location: MLABCELL_X25_Y4_N21
\direct_map|cach_instruction[9][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][42]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_cach_instruction[9][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][42]~combout\);

-- Location: LABCELL_X27_Y5_N45
\direct_map|cach_instruction[11][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][42]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_cach_instruction[11][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][42]~combout\);

-- Location: MLABCELL_X25_Y4_N0
\direct_map|cach_instruction[8][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][42]~combout\ = ( \direct_map|cach_instruction[8][42]~combout\ & ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) ) # ( !\direct_map|cach_instruction[8][42]~combout\ & ( 
-- \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) ) # ( \direct_map|cach_instruction[8][42]~combout\ & ( !\direct_map|Decoder0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datae => \direct_map|ALT_INV_cach_instruction[8][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][42]~combout\);

-- Location: MLABCELL_X25_Y4_N18
\direct_map|cach_instruction[10][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][42]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_cach_instruction[10][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][42]~combout\);

-- Location: MLABCELL_X25_Y4_N12
\direct_map|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux13~2_combout\ = ( \direct_map|cach_instruction[8][42]~combout\ & ( \direct_map|cach_instruction[10][42]~combout\ & ( (!\pc[0]~input_o\) # ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][42]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[11][42]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[8][42]~combout\ & ( \direct_map|cach_instruction[10][42]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][42]~combout\ & ((\pc[0]~input_o\)))) # 
-- (\pc[1]~input_o\ & (((!\pc[0]~input_o\) # (\direct_map|cach_instruction[11][42]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[8][42]~combout\ & ( !\direct_map|cach_instruction[10][42]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)) # 
-- (\direct_map|cach_instruction[9][42]~combout\))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[11][42]~combout\ & \pc[0]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[8][42]~combout\ & ( !\direct_map|cach_instruction[10][42]~combout\ & ( 
-- (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][42]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[11][42]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][42]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][42]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[8][42]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][42]~combout\,
	combout => \direct_map|Mux13~2_combout\);

-- Location: LABCELL_X31_Y4_N15
\direct_map|cach_instruction[12][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][42]~combout\ = ( \direct_map|cach_instruction[12][42]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[12][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][42]~combout\,
	combout => \direct_map|cach_instruction[12][42]~combout\);

-- Location: LABCELL_X31_Y4_N57
\direct_map|cach_instruction[13][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][42]~combout\ = (!\direct_map|Decoder0~13_combout\ & ((\direct_map|cach_instruction[13][42]~combout\))) # (\direct_map|Decoder0~13_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(18)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][42]~combout\,
	combout => \direct_map|cach_instruction[13][42]~combout\);

-- Location: LABCELL_X30_Y4_N48
\direct_map|cach_instruction[15][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][42]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(18) & ( (\direct_map|cach_instruction[15][42]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(18) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][42]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~15_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][42]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	combout => \direct_map|cach_instruction[15][42]~combout\);

-- Location: LABCELL_X31_Y4_N12
\direct_map|cach_instruction[14][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][42]~combout\ = ( \direct_map|cach_instruction[14][42]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[14][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][42]~combout\,
	combout => \direct_map|cach_instruction[14][42]~combout\);

-- Location: LABCELL_X31_Y4_N0
\direct_map|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux13~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[14][42]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[15][42]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[14][42]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][42]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[13][42]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][42]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[15][42]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][42]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][42]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[13][42]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][42]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][42]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][42]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][42]~combout\,
	combout => \direct_map|Mux13~3_combout\);

-- Location: LABCELL_X33_Y6_N18
\direct_map|cach_instruction[6][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][42]~combout\ = ( \direct_map|cach_instruction[6][42]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[6][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][42]~combout\,
	combout => \direct_map|cach_instruction[6][42]~combout\);

-- Location: LABCELL_X33_Y6_N45
\direct_map|cach_instruction[7][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][42]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \direct_map|ALT_INV_cach_instruction[7][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][42]~combout\);

-- Location: LABCELL_X31_Y4_N9
\direct_map|cach_instruction[4][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][42]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(18) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][42]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_cach_instruction[4][42]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][42]~combout\);

-- Location: LABCELL_X27_Y5_N42
\direct_map|cach_instruction[5][42]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][42]~combout\ = ( \direct_map|cach_instruction[5][42]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|cach_instruction[5][42]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(18) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][42]~combout\,
	combout => \direct_map|cach_instruction[5][42]~combout\);

-- Location: LABCELL_X31_Y4_N18
\direct_map|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux13~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[5][42]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][42]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][42]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[5][42]~combout\ & ( (\direct_map|cach_instruction[4][42]~combout\) # (\pc[0]~input_o\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[5][42]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[6][42]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][42]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[5][42]~combout\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[4][42]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][42]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][42]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[4][42]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][42]~combout\,
	combout => \direct_map|Mux13~1_combout\);

-- Location: LABCELL_X31_Y4_N42
\direct_map|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux13~4_combout\ = ( \direct_map|Mux13~3_combout\ & ( \direct_map|Mux13~1_combout\ & ( ((!\pc[3]~input_o\ & (\direct_map|Mux13~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux13~2_combout\)))) # (\pc[2]~input_o\) ) ) ) # ( 
-- !\direct_map|Mux13~3_combout\ & ( \direct_map|Mux13~1_combout\ & ( (!\pc[3]~input_o\ & (((\pc[2]~input_o\)) # (\direct_map|Mux13~0_combout\))) # (\pc[3]~input_o\ & (((\direct_map|Mux13~2_combout\ & !\pc[2]~input_o\)))) ) ) ) # ( 
-- \direct_map|Mux13~3_combout\ & ( !\direct_map|Mux13~1_combout\ & ( (!\pc[3]~input_o\ & (\direct_map|Mux13~0_combout\ & ((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((\pc[2]~input_o\) # (\direct_map|Mux13~2_combout\)))) ) ) ) # ( 
-- !\direct_map|Mux13~3_combout\ & ( !\direct_map|Mux13~1_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|Mux13~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux13~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux13~0_combout\,
	datab => \direct_map|ALT_INV_Mux13~2_combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_Mux13~3_combout\,
	dataf => \direct_map|ALT_INV_Mux13~1_combout\,
	combout => \direct_map|Mux13~4_combout\);

-- Location: LABCELL_X31_Y4_N48
\mux|s[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[18]~18_combout\ = ( \direct_map|Mux13~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(18)) ) ) # ( !\direct_map|Mux13~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(18) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(18),
	datad => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux13~4_combout\,
	combout => \mux|s[18]~18_combout\);

-- Location: LABCELL_X30_Y6_N48
\direct_map|cach_instruction[10][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][41]~combout\ = ( \direct_map|cach_instruction[10][41]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[10][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][41]~combout\,
	combout => \direct_map|cach_instruction[10][41]~combout\);

-- Location: LABCELL_X30_Y6_N51
\direct_map|cach_instruction[2][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][41]~combout\ = ( \direct_map|cach_instruction[2][41]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[2][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][41]~combout\,
	combout => \direct_map|cach_instruction[2][41]~combout\);

-- Location: LABCELL_X30_Y6_N30
\direct_map|cach_instruction[14][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][41]~combout\ = ( \direct_map|cach_instruction[14][41]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[14][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][41]~combout\,
	combout => \direct_map|cach_instruction[14][41]~combout\);

-- Location: LABCELL_X30_Y6_N33
\direct_map|cach_instruction[6][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][41]~combout\ = ( \direct_map|cach_instruction[6][41]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[6][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][41]~combout\,
	combout => \direct_map|cach_instruction[6][41]~combout\);

-- Location: LABCELL_X30_Y6_N36
\direct_map|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux12~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[6][41]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[14][41]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[6][41]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[2][41]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[10][41]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][41]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[14][41]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][41]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[2][41]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[10][41]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][41]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[2][41]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][41]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][41]~combout\,
	combout => \direct_map|Mux12~2_combout\);

-- Location: LABCELL_X31_Y6_N15
\direct_map|cach_instruction[15][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][41]~combout\ = ( \direct_map|cach_instruction[15][41]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[15][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][41]~combout\,
	combout => \direct_map|cach_instruction[15][41]~combout\);

-- Location: LABCELL_X30_Y6_N15
\direct_map|cach_instruction[7][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][41]~combout\ = ( \direct_map|cach_instruction[7][41]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[7][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][41]~combout\,
	combout => \direct_map|cach_instruction[7][41]~combout\);

-- Location: LABCELL_X30_Y6_N12
\direct_map|cach_instruction[3][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][41]~combout\ = ( \direct_map|cach_instruction[3][41]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[3][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][41]~combout\,
	combout => \direct_map|cach_instruction[3][41]~combout\);

-- Location: LABCELL_X30_Y6_N57
\direct_map|cach_instruction[11][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][41]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(19) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][41]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_cach_instruction[11][41]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][41]~combout\);

-- Location: LABCELL_X30_Y6_N42
\direct_map|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux12~3_combout\ = ( \direct_map|cach_instruction[11][41]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[15][41]~combout\) ) ) ) # ( !\direct_map|cach_instruction[11][41]~combout\ & ( \pc[3]~input_o\ & ( 
-- (\direct_map|cach_instruction[15][41]~combout\ & \pc[2]~input_o\) ) ) ) # ( \direct_map|cach_instruction[11][41]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[3][41]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[7][41]~combout\)) ) ) ) # ( !\direct_map|cach_instruction[11][41]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[3][41]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[7][41]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][41]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][41]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[3][41]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[11][41]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux12~3_combout\);

-- Location: LABCELL_X30_Y8_N48
\direct_map|cach_instruction[0][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][41]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(19) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][41]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(19) & ( 
-- (\direct_map|cach_instruction[0][41]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[0][41]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \direct_map|cach_instruction[0][41]~combout\);

-- Location: LABCELL_X30_Y6_N21
\direct_map|cach_instruction[12][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][41]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(19) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][41]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_cach_instruction[12][41]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][41]~combout\);

-- Location: LABCELL_X30_Y6_N18
\direct_map|cach_instruction[8][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][41]~combout\ = ( \direct_map|cach_instruction[8][41]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[8][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][41]~combout\,
	combout => \direct_map|cach_instruction[8][41]~combout\);

-- Location: LABCELL_X30_Y6_N27
\direct_map|cach_instruction[4][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][41]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(19) & ( (\direct_map|cach_instruction[4][41]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(19) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][41]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][41]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \direct_map|cach_instruction[4][41]~combout\);

-- Location: LABCELL_X31_Y6_N42
\direct_map|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux12~0_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[4][41]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[12][41]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[4][41]~combout\ & ( 
-- (!\pc[3]~input_o\ & (\direct_map|cach_instruction[0][41]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[8][41]~combout\))) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[4][41]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[12][41]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[4][41]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[0][41]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[8][41]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][41]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[12][41]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][41]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][41]~combout\,
	combout => \direct_map|Mux12~0_combout\);

-- Location: LABCELL_X30_Y4_N36
\direct_map|cach_instruction[1][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][41]~combout\ = (!\direct_map|Decoder0~1_combout\ & ((\direct_map|cach_instruction[1][41]~combout\))) # (\direct_map|Decoder0~1_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(19)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datab => \direct_map|ALT_INV_Decoder0~1_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][41]~combout\,
	combout => \direct_map|cach_instruction[1][41]~combout\);

-- Location: LABCELL_X30_Y4_N33
\direct_map|cach_instruction[9][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][41]~combout\ = ( \direct_map|cach_instruction[9][41]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[9][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][41]~combout\,
	combout => \direct_map|cach_instruction[9][41]~combout\);

-- Location: LABCELL_X31_Y4_N54
\direct_map|cach_instruction[5][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][41]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(19) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][41]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(19) & ( 
-- (\direct_map|cach_instruction[5][41]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[5][41]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \direct_map|cach_instruction[5][41]~combout\);

-- Location: LABCELL_X30_Y4_N6
\direct_map|cach_instruction[13][41]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][41]~combout\ = ( \direct_map|cach_instruction[13][41]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(19)) ) ) # ( !\direct_map|cach_instruction[13][41]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(19) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][41]~combout\,
	combout => \direct_map|cach_instruction[13][41]~combout\);

-- Location: LABCELL_X30_Y4_N24
\direct_map|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux12~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[13][41]~combout\ & ( (\direct_map|cach_instruction[5][41]~combout\) # (\pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[13][41]~combout\ & ( 
-- (!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][41]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[9][41]~combout\))) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[13][41]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[5][41]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[13][41]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][41]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[9][41]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][41]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[9][41]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][41]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][41]~combout\,
	combout => \direct_map|Mux12~1_combout\);

-- Location: LABCELL_X30_Y6_N0
\direct_map|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux12~4_combout\ = ( \pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|Mux12~3_combout\ ) ) ) # ( !\pc[0]~input_o\ & ( \pc[1]~input_o\ & ( \direct_map|Mux12~2_combout\ ) ) ) # ( \pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( 
-- \direct_map|Mux12~1_combout\ ) ) ) # ( !\pc[0]~input_o\ & ( !\pc[1]~input_o\ & ( \direct_map|Mux12~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux12~2_combout\,
	datab => \direct_map|ALT_INV_Mux12~3_combout\,
	datac => \direct_map|ALT_INV_Mux12~0_combout\,
	datad => \direct_map|ALT_INV_Mux12~1_combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux12~4_combout\);

-- Location: LABCELL_X31_Y4_N6
\mux|s[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[19]~19_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(19) & ( (!\hit~0_combout\) # (\direct_map|Mux12~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(19) & ( (\direct_map|Mux12~4_combout\ & \hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Mux12~4_combout\,
	datac => \ALT_INV_hit~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(19),
	combout => \mux|s[19]~19_combout\);

-- Location: LABCELL_X27_Y10_N51
\direct_map|cach_instruction[2][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][40]~combout\ = ( \direct_map|cach_instruction[2][40]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[2][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][40]~combout\,
	combout => \direct_map|cach_instruction[2][40]~combout\);

-- Location: LABCELL_X27_Y10_N45
\direct_map|cach_instruction[1][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][40]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(20) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][40]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_cach_instruction[1][40]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][40]~combout\);

-- Location: LABCELL_X27_Y10_N48
\direct_map|cach_instruction[0][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][40]~combout\ = ( \direct_map|cach_instruction[0][40]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[0][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datab => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][40]~combout\,
	combout => \direct_map|cach_instruction[0][40]~combout\);

-- Location: LABCELL_X27_Y10_N33
\direct_map|cach_instruction[3][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][40]~combout\ = ( \direct_map|cach_instruction[3][40]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[3][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][40]~combout\,
	combout => \direct_map|cach_instruction[3][40]~combout\);

-- Location: LABCELL_X27_Y10_N36
\direct_map|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux11~0_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[3][40]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[1][40]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[3][40]~combout\ & ( 
-- (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][40]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][40]~combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[3][40]~combout\ & ( 
-- (\direct_map|cach_instruction[1][40]~combout\ & !\pc[1]~input_o\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[3][40]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][40]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[2][40]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[2][40]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[1][40]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][40]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][40]~combout\,
	combout => \direct_map|Mux11~0_combout\);

-- Location: LABCELL_X31_Y5_N9
\direct_map|cach_instruction[15][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][40]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(20) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][40]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(20) & ( 
-- (\direct_map|cach_instruction[15][40]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[15][40]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	combout => \direct_map|cach_instruction[15][40]~combout\);

-- Location: LABCELL_X31_Y5_N12
\direct_map|cach_instruction[12][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][40]~combout\ = ( \direct_map|cach_instruction[12][40]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[12][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][40]~combout\,
	combout => \direct_map|cach_instruction[12][40]~combout\);

-- Location: LABCELL_X31_Y5_N6
\direct_map|cach_instruction[13][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][40]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(20) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][40]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[13][40]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][40]~combout\);

-- Location: LABCELL_X31_Y5_N15
\direct_map|cach_instruction[14][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][40]~combout\ = ( \direct_map|cach_instruction[14][40]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[14][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][40]~combout\,
	combout => \direct_map|cach_instruction[14][40]~combout\);

-- Location: LABCELL_X31_Y5_N36
\direct_map|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux11~3_combout\ = ( \pc[1]~input_o\ & ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[15][40]~combout\ ) ) ) # ( !\pc[1]~input_o\ & ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[13][40]~combout\ ) ) ) # ( \pc[1]~input_o\ & ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[14][40]~combout\ ) ) ) # ( !\pc[1]~input_o\ & ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[12][40]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][40]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[12][40]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][40]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][40]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Mux11~3_combout\);

-- Location: LABCELL_X27_Y10_N24
\direct_map|cach_instruction[6][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][40]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(20) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][40]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datac => \direct_map|ALT_INV_cach_instruction[6][40]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][40]~combout\);

-- Location: LABCELL_X27_Y10_N27
\direct_map|cach_instruction[7][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][40]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(20) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][40]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_cach_instruction[7][40]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~7_combout\,
	combout => \direct_map|cach_instruction[7][40]~combout\);

-- Location: LABCELL_X27_Y10_N42
\direct_map|cach_instruction[5][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][40]~combout\ = ( \direct_map|cach_instruction[5][40]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[5][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][40]~combout\,
	combout => \direct_map|cach_instruction[5][40]~combout\);

-- Location: LABCELL_X27_Y10_N15
\direct_map|cach_instruction[4][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][40]~combout\ = ( \direct_map|cach_instruction[4][40]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[4][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][40]~combout\,
	combout => \direct_map|cach_instruction[4][40]~combout\);

-- Location: LABCELL_X27_Y10_N18
\direct_map|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux11~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[4][40]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][40]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][40]~combout\))) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[4][40]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[5][40]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][40]~combout\ & ( (!\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[6][40]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[7][40]~combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][40]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[5][40]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][40]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[7][40]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][40]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][40]~combout\,
	combout => \direct_map|Mux11~1_combout\);

-- Location: LABCELL_X31_Y5_N51
\direct_map|cach_instruction[8][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][40]~combout\ = ( \direct_map|cach_instruction[8][40]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[8][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][40]~combout\,
	combout => \direct_map|cach_instruction[8][40]~combout\);

-- Location: LABCELL_X29_Y5_N27
\direct_map|cach_instruction[11][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][40]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(20) & ( (\direct_map|cach_instruction[11][40]~combout\) # (\direct_map|Decoder0~11_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(20) & ( 
-- (!\direct_map|Decoder0~11_combout\ & \direct_map|cach_instruction[11][40]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[11][40]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	combout => \direct_map|cach_instruction[11][40]~combout\);

-- Location: LABCELL_X31_Y5_N48
\direct_map|cach_instruction[9][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][40]~combout\ = ( \direct_map|cach_instruction[9][40]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[9][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][40]~combout\,
	combout => \direct_map|cach_instruction[9][40]~combout\);

-- Location: LABCELL_X31_Y5_N18
\direct_map|cach_instruction[10][40]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][40]~combout\ = ( \direct_map|cach_instruction[10][40]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(20)) ) ) # ( !\direct_map|cach_instruction[10][40]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(20) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][40]~combout\,
	combout => \direct_map|cach_instruction[10][40]~combout\);

-- Location: LABCELL_X31_Y5_N42
\direct_map|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux11~2_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[10][40]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[11][40]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[10][40]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][40]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[9][40]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[10][40]~combout\ & ( 
-- (\direct_map|cach_instruction[11][40]~combout\ & \pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[10][40]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[8][40]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[9][40]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][40]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][40]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[9][40]~combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][40]~combout\,
	combout => \direct_map|Mux11~2_combout\);

-- Location: LABCELL_X27_Y10_N0
\direct_map|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux11~4_combout\ = ( \direct_map|Mux11~2_combout\ & ( \pc[2]~input_o\ & ( (!\pc[3]~input_o\ & ((\direct_map|Mux11~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux11~3_combout\)) ) ) ) # ( !\direct_map|Mux11~2_combout\ & ( \pc[2]~input_o\ & 
-- ( (!\pc[3]~input_o\ & ((\direct_map|Mux11~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux11~3_combout\)) ) ) ) # ( \direct_map|Mux11~2_combout\ & ( !\pc[2]~input_o\ & ( (\pc[3]~input_o\) # (\direct_map|Mux11~0_combout\) ) ) ) # ( 
-- !\direct_map|Mux11~2_combout\ & ( !\pc[2]~input_o\ & ( (\direct_map|Mux11~0_combout\ & !\pc[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux11~0_combout\,
	datab => \direct_map|ALT_INV_Mux11~3_combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_Mux11~1_combout\,
	datae => \direct_map|ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux11~4_combout\);

-- Location: LABCELL_X31_Y5_N54
\mux|s[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[20]~20_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(20) & ( (!\hit~0_combout\) # (\direct_map|Mux11~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(20) & ( (\hit~0_combout\ & \direct_map|Mux11~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hit~0_combout\,
	datac => \direct_map|ALT_INV_Mux11~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(20),
	combout => \mux|s[20]~20_combout\);

-- Location: LABCELL_X29_Y7_N48
\direct_map|cach_instruction[5][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[5][39]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[5][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[5][39]~combout\);

-- Location: LABCELL_X29_Y7_N42
\direct_map|cach_instruction[9][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[9][39]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[9][39]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[9][39]~combout\);

-- Location: LABCELL_X29_Y7_N33
\direct_map|cach_instruction[1][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[1][39]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[1][39]~combout\);

-- Location: LABCELL_X29_Y7_N45
\direct_map|cach_instruction[13][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|cach_instruction[13][39]~combout\) # (\direct_map|Decoder0~13_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (!\direct_map|Decoder0~13_combout\ & \direct_map|cach_instruction[13][39]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][39]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[13][39]~combout\);

-- Location: LABCELL_X29_Y7_N54
\direct_map|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux10~1_combout\ = ( \pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[13][39]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[5][39]~combout\ ) ) ) # ( \pc[3]~input_o\ & ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[9][39]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[1][39]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][39]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][39]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][39]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][39]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux10~1_combout\);

-- Location: LABCELL_X29_Y7_N27
\direct_map|cach_instruction[4][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|cach_instruction[4][39]~combout\) # (\direct_map|Decoder0~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (!\direct_map|Decoder0~4_combout\ & \direct_map|cach_instruction[4][39]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~4_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[4][39]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[4][39]~combout\);

-- Location: LABCELL_X29_Y7_N12
\direct_map|cach_instruction[0][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[0][39]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][39]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[0][39]~combout\);

-- Location: LABCELL_X29_Y7_N24
\direct_map|cach_instruction[12][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~12_combout\) # (\direct_map|cach_instruction[12][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[12][39]~combout\ & !\direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[12][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[12][39]~combout\);

-- Location: LABCELL_X29_Y7_N9
\direct_map|cach_instruction[8][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|cach_instruction[8][39]~combout\) # (\direct_map|Decoder0~8_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (!\direct_map|Decoder0~8_combout\ & \direct_map|cach_instruction[8][39]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~8_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[8][39]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[8][39]~combout\);

-- Location: LABCELL_X29_Y7_N36
\direct_map|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux10~0_combout\ = ( \pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[12][39]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[4][39]~combout\ ) ) ) # ( \pc[3]~input_o\ & ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[8][39]~combout\ ) ) ) # ( !\pc[3]~input_o\ & ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[0][39]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[4][39]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][39]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[12][39]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][39]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux10~0_combout\);

-- Location: MLABCELL_X25_Y8_N6
\direct_map|cach_instruction[10][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[10][39]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[10][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[10][39]~combout\);

-- Location: LABCELL_X27_Y10_N9
\direct_map|cach_instruction[14][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][39]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(21) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][39]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[14][39]~combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][39]~combout\);

-- Location: LABCELL_X23_Y6_N51
\direct_map|cach_instruction[6][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][39]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(21) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][39]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][39]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][39]~combout\);

-- Location: LABCELL_X27_Y10_N6
\direct_map|cach_instruction[2][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][39]~combout\ = ( \direct_map|cach_instruction[2][39]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(21)) ) ) # ( !\direct_map|cach_instruction[2][39]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(21) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][39]~combout\,
	combout => \direct_map|cach_instruction[2][39]~combout\);

-- Location: LABCELL_X27_Y10_N54
\direct_map|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux10~2_combout\ = ( \direct_map|cach_instruction[6][39]~combout\ & ( \direct_map|cach_instruction[2][39]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][39]~combout\)) # (\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[14][39]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[6][39]~combout\ & ( \direct_map|cach_instruction[2][39]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[10][39]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[14][39]~combout\))))) ) ) ) # ( \direct_map|cach_instruction[6][39]~combout\ & ( !\direct_map|cach_instruction[2][39]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][39]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[14][39]~combout\))))) ) ) ) # ( !\direct_map|cach_instruction[6][39]~combout\ & ( 
-- !\direct_map|cach_instruction[2][39]~combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[10][39]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[14][39]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[10][39]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[14][39]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[6][39]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][39]~combout\,
	combout => \direct_map|Mux10~2_combout\);

-- Location: LABCELL_X30_Y7_N33
\direct_map|cach_instruction[15][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[15][39]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[15][39]~combout\);

-- Location: LABCELL_X29_Y7_N30
\direct_map|cach_instruction[3][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[3][39]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[3][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[3][39]~combout\);

-- Location: LABCELL_X30_Y7_N18
\direct_map|cach_instruction[11][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[11][39]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[11][39]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[11][39]~combout\);

-- Location: LABCELL_X29_Y7_N51
\direct_map|cach_instruction[7][39]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][39]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][39]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( 
-- (\direct_map|cach_instruction[7][39]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[7][39]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \direct_map|cach_instruction[7][39]~combout\);

-- Location: LABCELL_X29_Y7_N0
\direct_map|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux10~3_combout\ = ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[7][39]~combout\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[11][39]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][39]~combout\)) ) ) ) # ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[7][39]~combout\ & ( (\pc[2]~input_o\) # (\direct_map|cach_instruction[3][39]~combout\) ) ) ) # ( \pc[3]~input_o\ & ( !\direct_map|cach_instruction[7][39]~combout\ & ( (!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[11][39]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][39]~combout\)) ) ) ) # ( !\pc[3]~input_o\ & ( !\direct_map|cach_instruction[7][39]~combout\ & ( (\direct_map|cach_instruction[3][39]~combout\ & 
-- !\pc[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000001011111010100111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][39]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[3][39]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[11][39]~combout\,
	datae => \ALT_INV_pc[3]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][39]~combout\,
	combout => \direct_map|Mux10~3_combout\);

-- Location: LABCELL_X29_Y7_N18
\direct_map|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux10~4_combout\ = ( \direct_map|Mux10~3_combout\ & ( \pc[1]~input_o\ & ( (\direct_map|Mux10~2_combout\) # (\pc[0]~input_o\) ) ) ) # ( !\direct_map|Mux10~3_combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & \direct_map|Mux10~2_combout\) ) ) 
-- ) # ( \direct_map|Mux10~3_combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & ((\direct_map|Mux10~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux10~1_combout\)) ) ) ) # ( !\direct_map|Mux10~3_combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & 
-- ((\direct_map|Mux10~0_combout\))) # (\pc[0]~input_o\ & (\direct_map|Mux10~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_Mux10~0_combout\,
	datad => \direct_map|ALT_INV_Mux10~2_combout\,
	datae => \direct_map|ALT_INV_Mux10~3_combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux10~4_combout\);

-- Location: LABCELL_X24_Y4_N39
\mux|s[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[21]~21_combout\ = ( \direct_map|Mux10~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(21) ) ) # ( !\direct_map|Mux10~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(21) & ( !\hit~0_combout\ ) ) ) # ( 
-- \direct_map|Mux10~4_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(21) & ( \hit~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hit~0_combout\,
	datae => \direct_map|ALT_INV_Mux10~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(21),
	combout => \mux|s[21]~21_combout\);

-- Location: LABCELL_X30_Y8_N24
\direct_map|cach_instruction[0][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][38]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(22) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][38]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(22) & ( 
-- (\direct_map|cach_instruction[0][38]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[0][38]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	combout => \direct_map|cach_instruction[0][38]~combout\);

-- Location: MLABCELL_X25_Y7_N33
\direct_map|cach_instruction[1][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][38]~combout\ = ( \direct_map|cach_instruction[1][38]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[1][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][38]~combout\,
	combout => \direct_map|cach_instruction[1][38]~combout\);

-- Location: MLABCELL_X28_Y7_N15
\direct_map|cach_instruction[3][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][38]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(22) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][38]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(22) & ( 
-- (\direct_map|cach_instruction[3][38]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][38]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	combout => \direct_map|cach_instruction[3][38]~combout\);

-- Location: MLABCELL_X25_Y7_N15
\direct_map|cach_instruction[2][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][38]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \direct_map|ALT_INV_cach_instruction[2][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][38]~combout\);

-- Location: MLABCELL_X25_Y7_N54
\direct_map|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux9~0_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[2][38]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[1][38]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[3][38]~combout\))) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[2][38]~combout\ & ( (\direct_map|cach_instruction[0][38]~combout\) # (\pc[1]~input_o\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[2][38]~combout\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[1][38]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[3][38]~combout\))) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[2][38]~combout\ & ( (!\pc[1]~input_o\ & 
-- \direct_map|cach_instruction[0][38]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[0][38]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][38]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][38]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][38]~combout\,
	combout => \direct_map|Mux9~0_combout\);

-- Location: LABCELL_X31_Y6_N30
\direct_map|cach_instruction[9][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][38]~combout\ = ( \direct_map|cach_instruction[9][38]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[9][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][38]~combout\,
	combout => \direct_map|cach_instruction[9][38]~combout\);

-- Location: LABCELL_X31_Y6_N24
\direct_map|cach_instruction[10][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][38]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \direct_map|ALT_INV_cach_instruction[10][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][38]~combout\);

-- Location: LABCELL_X31_Y6_N27
\direct_map|cach_instruction[11][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][38]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_cach_instruction[11][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][38]~combout\);

-- Location: LABCELL_X31_Y6_N33
\direct_map|cach_instruction[8][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][38]~combout\ = ( \direct_map|cach_instruction[8][38]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[8][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][38]~combout\,
	combout => \direct_map|cach_instruction[8][38]~combout\);

-- Location: LABCELL_X31_Y6_N36
\direct_map|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux9~2_combout\ = ( \direct_map|cach_instruction[11][38]~combout\ & ( \direct_map|cach_instruction[8][38]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)) # (\direct_map|cach_instruction[9][38]~combout\))) # (\pc[1]~input_o\ & 
-- (((\pc[0]~input_o\) # (\direct_map|cach_instruction[10][38]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[11][38]~combout\ & ( \direct_map|cach_instruction[8][38]~combout\ & ( (!\pc[1]~input_o\ & (((!\pc[0]~input_o\)) # 
-- (\direct_map|cach_instruction[9][38]~combout\))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[10][38]~combout\ & !\pc[0]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[11][38]~combout\ & ( !\direct_map|cach_instruction[8][38]~combout\ & ( 
-- (!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][38]~combout\ & ((\pc[0]~input_o\)))) # (\pc[1]~input_o\ & (((\pc[0]~input_o\) # (\direct_map|cach_instruction[10][38]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[11][38]~combout\ & ( 
-- !\direct_map|cach_instruction[8][38]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][38]~combout\ & ((\pc[0]~input_o\)))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[10][38]~combout\ & !\pc[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[9][38]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][38]~combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[11][38]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][38]~combout\,
	combout => \direct_map|Mux9~2_combout\);

-- Location: MLABCELL_X25_Y6_N45
\direct_map|cach_instruction[4][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][38]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_cach_instruction[4][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][38]~combout\);

-- Location: MLABCELL_X25_Y7_N42
\direct_map|cach_instruction[7][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][38]~combout\ = ( \direct_map|Decoder0~7_combout\ & ( \direct_map|cach_instruction[7][38]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) ) # ( !\direct_map|Decoder0~7_combout\ & ( 
-- \direct_map|cach_instruction[7][38]~combout\ ) ) # ( \direct_map|Decoder0~7_combout\ & ( !\direct_map|cach_instruction[7][38]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datae => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][38]~combout\,
	combout => \direct_map|cach_instruction[7][38]~combout\);

-- Location: LABCELL_X27_Y5_N36
\direct_map|cach_instruction[5][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][38]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_cach_instruction[5][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~5_combout\,
	combout => \direct_map|cach_instruction[5][38]~combout\);

-- Location: MLABCELL_X25_Y7_N39
\direct_map|cach_instruction[6][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][38]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \direct_map|ALT_INV_cach_instruction[6][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][38]~combout\);

-- Location: MLABCELL_X25_Y7_N48
\direct_map|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux9~1_combout\ = ( \direct_map|cach_instruction[5][38]~combout\ & ( \direct_map|cach_instruction[6][38]~combout\ & ( (!\pc[1]~input_o\ & (((\pc[0]~input_o\)) # (\direct_map|cach_instruction[4][38]~combout\))) # (\pc[1]~input_o\ & 
-- (((!\pc[0]~input_o\) # (\direct_map|cach_instruction[7][38]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[5][38]~combout\ & ( \direct_map|cach_instruction[6][38]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][38]~combout\ & 
-- ((!\pc[0]~input_o\)))) # (\pc[1]~input_o\ & (((!\pc[0]~input_o\) # (\direct_map|cach_instruction[7][38]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[5][38]~combout\ & ( !\direct_map|cach_instruction[6][38]~combout\ & ( (!\pc[1]~input_o\ & 
-- (((\pc[0]~input_o\)) # (\direct_map|cach_instruction[4][38]~combout\))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[7][38]~combout\ & \pc[0]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[5][38]~combout\ & ( 
-- !\direct_map|cach_instruction[6][38]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[4][38]~combout\ & ((!\pc[0]~input_o\)))) # (\pc[1]~input_o\ & (((\direct_map|cach_instruction[7][38]~combout\ & \pc[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[4][38]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][38]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[5][38]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][38]~combout\,
	combout => \direct_map|Mux9~1_combout\);

-- Location: LABCELL_X30_Y6_N54
\direct_map|cach_instruction[14][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][38]~combout\ = ( \direct_map|Decoder0~14_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(22) ) ) # ( !\direct_map|Decoder0~14_combout\ & ( \direct_map|cach_instruction[14][38]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \direct_map|ALT_INV_cach_instruction[14][38]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~14_combout\,
	combout => \direct_map|cach_instruction[14][38]~combout\);

-- Location: LABCELL_X31_Y6_N6
\direct_map|cach_instruction[13][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][38]~combout\ = ( \direct_map|cach_instruction[13][38]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[13][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][38]~combout\,
	combout => \direct_map|cach_instruction[13][38]~combout\);

-- Location: LABCELL_X31_Y6_N9
\direct_map|cach_instruction[15][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][38]~combout\ = ( \direct_map|cach_instruction[15][38]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[15][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][38]~combout\,
	combout => \direct_map|cach_instruction[15][38]~combout\);

-- Location: LABCELL_X31_Y6_N12
\direct_map|cach_instruction[12][38]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][38]~combout\ = ( \direct_map|cach_instruction[12][38]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|cach_instruction[12][38]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(22) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][38]~combout\,
	combout => \direct_map|cach_instruction[12][38]~combout\);

-- Location: LABCELL_X31_Y6_N54
\direct_map|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux9~3_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[12][38]~combout\ & ( (!\pc[1]~input_o\ & (\direct_map|cach_instruction[13][38]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][38]~combout\))) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[12][38]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[14][38]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][38]~combout\ & ( (!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[13][38]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[15][38]~combout\))) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][38]~combout\ & ( (\direct_map|cach_instruction[14][38]~combout\ & 
-- \pc[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[14][38]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][38]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[15][38]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][38]~combout\,
	combout => \direct_map|Mux9~3_combout\);

-- Location: MLABCELL_X25_Y7_N6
\direct_map|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux9~4_combout\ = ( \direct_map|Mux9~3_combout\ & ( \pc[3]~input_o\ & ( (\pc[2]~input_o\) # (\direct_map|Mux9~2_combout\) ) ) ) # ( !\direct_map|Mux9~3_combout\ & ( \pc[3]~input_o\ & ( (\direct_map|Mux9~2_combout\ & !\pc[2]~input_o\) ) ) ) # ( 
-- \direct_map|Mux9~3_combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|Mux9~0_combout\)) # (\pc[2]~input_o\ & ((\direct_map|Mux9~1_combout\))) ) ) ) # ( !\direct_map|Mux9~3_combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & 
-- (\direct_map|Mux9~0_combout\)) # (\pc[2]~input_o\ & ((\direct_map|Mux9~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux9~0_combout\,
	datab => \direct_map|ALT_INV_Mux9~2_combout\,
	datac => \direct_map|ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_Mux9~3_combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux9~4_combout\);

-- Location: MLABCELL_X25_Y7_N12
\mux|s[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[22]~22_combout\ = ( \direct_map|Mux9~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(22)) ) ) # ( !\direct_map|Mux9~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(22) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(22),
	datac => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux9~4_combout\,
	combout => \mux|s[22]~22_combout\);

-- Location: LABCELL_X29_Y5_N33
\direct_map|cach_instruction[5][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][37]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(23) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][37]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \direct_map|ALT_INV_cach_instruction[5][37]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~5_combout\,
	combout => \direct_map|cach_instruction[5][37]~combout\);

-- Location: LABCELL_X29_Y5_N12
\direct_map|cach_instruction[13][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][37]~combout\ = ( \direct_map|cach_instruction[13][37]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[13][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][37]~combout\,
	combout => \direct_map|cach_instruction[13][37]~combout\);

-- Location: LABCELL_X29_Y5_N30
\direct_map|cach_instruction[1][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][37]~combout\ = ( \direct_map|cach_instruction[1][37]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[1][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][37]~combout\,
	combout => \direct_map|cach_instruction[1][37]~combout\);

-- Location: LABCELL_X29_Y3_N39
\direct_map|cach_instruction[9][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][37]~combout\ = ( \direct_map|cach_instruction[9][37]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[9][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][37]~combout\,
	combout => \direct_map|cach_instruction[9][37]~combout\);

-- Location: LABCELL_X29_Y5_N54
\direct_map|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux8~1_combout\ = ( \direct_map|cach_instruction[9][37]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[13][37]~combout\) ) ) ) # ( !\direct_map|cach_instruction[9][37]~combout\ & ( \pc[3]~input_o\ & ( 
-- (\direct_map|cach_instruction[13][37]~combout\ & \pc[2]~input_o\) ) ) ) # ( \direct_map|cach_instruction[9][37]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][37]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][37]~combout\)) ) ) ) # ( !\direct_map|cach_instruction[9][37]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[1][37]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[5][37]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][37]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][37]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[1][37]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[9][37]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux8~1_combout\);

-- Location: LABCELL_X29_Y5_N18
\direct_map|cach_instruction[3][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][37]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(23) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][37]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(23) & ( 
-- (\direct_map|cach_instruction[3][37]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][37]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \direct_map|cach_instruction[3][37]~combout\);

-- Location: LABCELL_X29_Y5_N15
\direct_map|cach_instruction[11][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][37]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(23) & ( (\direct_map|Decoder0~11_combout\) # (\direct_map|cach_instruction[11][37]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(23) & ( 
-- (\direct_map|cach_instruction[11][37]~combout\ & !\direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[11][37]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \direct_map|cach_instruction[11][37]~combout\);

-- Location: LABCELL_X29_Y5_N24
\direct_map|cach_instruction[7][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][37]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(23) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][37]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(23) & ( 
-- (\direct_map|cach_instruction[7][37]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[7][37]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \direct_map|cach_instruction[7][37]~combout\);

-- Location: LABCELL_X30_Y5_N48
\direct_map|cach_instruction[15][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][37]~combout\ = ( \direct_map|cach_instruction[15][37]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[15][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][37]~combout\,
	combout => \direct_map|cach_instruction[15][37]~combout\);

-- Location: LABCELL_X29_Y5_N0
\direct_map|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux8~3_combout\ = ( \pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[15][37]~combout\ ) ) ) # ( !\pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[11][37]~combout\ ) ) ) # ( \pc[2]~input_o\ & ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[7][37]~combout\ ) ) ) # ( !\pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[3][37]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][37]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[11][37]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[7][37]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][37]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux8~3_combout\);

-- Location: LABCELL_X29_Y3_N12
\direct_map|cach_instruction[6][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][37]~combout\ = ( \direct_map|cach_instruction[6][37]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[6][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][37]~combout\,
	combout => \direct_map|cach_instruction[6][37]~combout\);

-- Location: LABCELL_X29_Y3_N45
\direct_map|cach_instruction[14][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][37]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(23) & ( (\direct_map|cach_instruction[14][37]~combout\) # (\direct_map|Decoder0~14_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(23) & ( 
-- (!\direct_map|Decoder0~14_combout\ & \direct_map|cach_instruction[14][37]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][37]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \direct_map|cach_instruction[14][37]~combout\);

-- Location: LABCELL_X29_Y3_N42
\direct_map|cach_instruction[10][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][37]~combout\ = ( \direct_map|cach_instruction[10][37]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[10][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][37]~combout\,
	combout => \direct_map|cach_instruction[10][37]~combout\);

-- Location: LABCELL_X27_Y3_N48
\direct_map|cach_instruction[2][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][37]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(23) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][37]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_cach_instruction[2][37]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][37]~combout\);

-- Location: LABCELL_X29_Y3_N54
\direct_map|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux8~2_combout\ = ( \direct_map|cach_instruction[2][37]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][37]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][37]~combout\)) ) ) ) # ( 
-- !\direct_map|cach_instruction[2][37]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[10][37]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[14][37]~combout\)) ) ) ) # ( 
-- \direct_map|cach_instruction[2][37]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[6][37]~combout\) ) ) ) # ( !\direct_map|cach_instruction[2][37]~combout\ & ( !\pc[3]~input_o\ & ( (\pc[2]~input_o\ & 
-- \direct_map|cach_instruction[6][37]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[6][37]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[14][37]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][37]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[2][37]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux8~2_combout\);

-- Location: LABCELL_X29_Y5_N36
\direct_map|cach_instruction[12][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][37]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(23) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][37]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \direct_map|ALT_INV_cach_instruction[12][37]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][37]~combout\);

-- Location: LABCELL_X29_Y5_N39
\direct_map|cach_instruction[8][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][37]~combout\ = ( \direct_map|cach_instruction[8][37]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[8][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][37]~combout\,
	combout => \direct_map|cach_instruction[8][37]~combout\);

-- Location: LABCELL_X29_Y5_N9
\direct_map|cach_instruction[4][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][37]~combout\ = ( \direct_map|cach_instruction[4][37]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(23)) ) ) # ( !\direct_map|cach_instruction[4][37]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(23) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][37]~combout\,
	combout => \direct_map|cach_instruction[4][37]~combout\);

-- Location: LABCELL_X29_Y5_N6
\direct_map|cach_instruction[0][37]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][37]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(23) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][37]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(23) & ( 
-- (\direct_map|cach_instruction[0][37]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][37]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \direct_map|cach_instruction[0][37]~combout\);

-- Location: LABCELL_X29_Y5_N48
\direct_map|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux8~0_combout\ = ( \direct_map|cach_instruction[4][37]~combout\ & ( \direct_map|cach_instruction[0][37]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[8][37]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[12][37]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[4][37]~combout\ & ( \direct_map|cach_instruction[0][37]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[8][37]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[12][37]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[4][37]~combout\ & ( !\direct_map|cach_instruction[0][37]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[8][37]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[12][37]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[4][37]~combout\ & ( 
-- !\direct_map|cach_instruction[0][37]~combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[8][37]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[12][37]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][37]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[8][37]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[4][37]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][37]~combout\,
	combout => \direct_map|Mux8~0_combout\);

-- Location: LABCELL_X29_Y5_N42
\direct_map|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux8~4_combout\ = ( \direct_map|Mux8~2_combout\ & ( \direct_map|Mux8~0_combout\ & ( (!\pc[0]~input_o\) # ((!\pc[1]~input_o\ & (\direct_map|Mux8~1_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux8~3_combout\)))) ) ) ) # ( 
-- !\direct_map|Mux8~2_combout\ & ( \direct_map|Mux8~0_combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\)))) # (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|Mux8~1_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux8~3_combout\))))) ) ) ) # ( 
-- \direct_map|Mux8~2_combout\ & ( !\direct_map|Mux8~0_combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\)))) # (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|Mux8~1_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux8~3_combout\))))) ) ) ) # ( 
-- !\direct_map|Mux8~2_combout\ & ( !\direct_map|Mux8~0_combout\ & ( (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|Mux8~1_combout\)) # (\pc[1]~input_o\ & ((\direct_map|Mux8~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux8~1_combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_Mux8~3_combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_Mux8~2_combout\,
	dataf => \direct_map|ALT_INV_Mux8~0_combout\,
	combout => \direct_map|Mux8~4_combout\);

-- Location: LABCELL_X31_Y5_N24
\mux|s[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[23]~23_combout\ = (!\hit~0_combout\ & ((\U1|altsyncram_component|auto_generated|q_a\(23)))) # (\hit~0_combout\ & (\direct_map|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hit~0_combout\,
	datab => \direct_map|ALT_INV_Mux8~4_combout\,
	datad => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(23),
	combout => \mux|s[23]~23_combout\);

-- Location: MLABCELL_X28_Y3_N30
\direct_map|cach_instruction[2][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][36]~combout\ = ( \direct_map|cach_instruction[2][36]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[2][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][36]~combout\,
	combout => \direct_map|cach_instruction[2][36]~combout\);

-- Location: MLABCELL_X28_Y3_N33
\direct_map|cach_instruction[0][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][36]~combout\ = ( \direct_map|cach_instruction[0][36]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[0][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][36]~combout\,
	combout => \direct_map|cach_instruction[0][36]~combout\);

-- Location: MLABCELL_X28_Y3_N12
\direct_map|cach_instruction[3][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][36]~combout\ = ( \direct_map|cach_instruction[3][36]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[3][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][36]~combout\,
	combout => \direct_map|cach_instruction[3][36]~combout\);

-- Location: MLABCELL_X28_Y3_N15
\direct_map|cach_instruction[1][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][36]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_cach_instruction[1][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][36]~combout\);

-- Location: MLABCELL_X28_Y3_N18
\direct_map|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux7~0_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[1][36]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[3][36]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[1][36]~combout\ & ( 
-- (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][36]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][36]~combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[1][36]~combout\ & ( (\pc[1]~input_o\ & 
-- \direct_map|cach_instruction[3][36]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[1][36]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][36]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[2][36]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[2][36]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][36]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][36]~combout\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][36]~combout\,
	combout => \direct_map|Mux7~0_combout\);

-- Location: MLABCELL_X28_Y3_N51
\direct_map|cach_instruction[10][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][36]~combout\ = ( \direct_map|cach_instruction[10][36]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[10][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][36]~combout\,
	combout => \direct_map|cach_instruction[10][36]~combout\);

-- Location: MLABCELL_X28_Y3_N24
\direct_map|cach_instruction[11][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][36]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_cach_instruction[11][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][36]~combout\);

-- Location: LABCELL_X27_Y3_N51
\direct_map|cach_instruction[8][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][36]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_cach_instruction[8][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][36]~combout\);

-- Location: LABCELL_X27_Y3_N18
\direct_map|cach_instruction[9][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][36]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_cach_instruction[9][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][36]~combout\);

-- Location: MLABCELL_X28_Y3_N42
\direct_map|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux7~2_combout\ = ( \direct_map|cach_instruction[9][36]~combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[10][36]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[11][36]~combout\))) ) ) ) # ( 
-- !\direct_map|cach_instruction[9][36]~combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[10][36]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[11][36]~combout\))) ) ) ) # ( 
-- \direct_map|cach_instruction[9][36]~combout\ & ( !\pc[1]~input_o\ & ( (\direct_map|cach_instruction[8][36]~combout\) # (\pc[0]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[9][36]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[8][36]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[10][36]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[11][36]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[8][36]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[9][36]~combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux7~2_combout\);

-- Location: LABCELL_X29_Y6_N30
\direct_map|cach_instruction[14][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][36]~combout\ = ( \direct_map|cach_instruction[14][36]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[14][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][36]~combout\,
	combout => \direct_map|cach_instruction[14][36]~combout\);

-- Location: LABCELL_X29_Y3_N51
\direct_map|cach_instruction[13][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][36]~combout\ = ( \direct_map|cach_instruction[13][36]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[13][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][36]~combout\,
	combout => \direct_map|cach_instruction[13][36]~combout\);

-- Location: LABCELL_X27_Y4_N33
\direct_map|cach_instruction[12][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][36]~combout\ = ( \direct_map|cach_instruction[12][36]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[12][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][36]~combout\,
	combout => \direct_map|cach_instruction[12][36]~combout\);

-- Location: LABCELL_X30_Y3_N33
\direct_map|cach_instruction[15][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][36]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(24) & ( (\direct_map|cach_instruction[15][36]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(24) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][36]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][36]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	combout => \direct_map|cach_instruction[15][36]~combout\);

-- Location: LABCELL_X30_Y3_N36
\direct_map|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux7~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[15][36]~combout\ & ( (\direct_map|cach_instruction[14][36]~combout\) # (\pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[15][36]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][36]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[13][36]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][36]~combout\ & ( (!\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[14][36]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[15][36]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][36]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[13][36]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[14][36]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][36]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[12][36]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][36]~combout\,
	combout => \direct_map|Mux7~3_combout\);

-- Location: LABCELL_X27_Y3_N21
\direct_map|cach_instruction[5][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][36]~combout\ = ( \direct_map|Decoder0~5_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~5_combout\ & ( \direct_map|cach_instruction[5][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_cach_instruction[5][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~5_combout\,
	combout => \direct_map|cach_instruction[5][36]~combout\);

-- Location: MLABCELL_X28_Y3_N6
\direct_map|cach_instruction[4][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][36]~combout\ = ( \direct_map|cach_instruction[4][36]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[4][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][36]~combout\,
	combout => \direct_map|cach_instruction[4][36]~combout\);

-- Location: MLABCELL_X28_Y3_N9
\direct_map|cach_instruction[7][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][36]~combout\ = ( \direct_map|cach_instruction[7][36]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(24)) ) ) # ( !\direct_map|cach_instruction[7][36]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(24) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][36]~combout\,
	combout => \direct_map|cach_instruction[7][36]~combout\);

-- Location: LABCELL_X29_Y3_N36
\direct_map|cach_instruction[6][36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][36]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][36]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	datad => \direct_map|ALT_INV_cach_instruction[6][36]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][36]~combout\);

-- Location: MLABCELL_X28_Y3_N36
\direct_map|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux7~1_combout\ = ( \direct_map|cach_instruction[6][36]~combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[7][36]~combout\) ) ) ) # ( !\direct_map|cach_instruction[6][36]~combout\ & ( \pc[1]~input_o\ & ( 
-- (\pc[0]~input_o\ & \direct_map|cach_instruction[7][36]~combout\) ) ) ) # ( \direct_map|cach_instruction[6][36]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[4][36]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[5][36]~combout\)) ) ) ) # ( !\direct_map|cach_instruction[6][36]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[4][36]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[5][36]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][36]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[4][36]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[7][36]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[6][36]~combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux7~1_combout\);

-- Location: LABCELL_X30_Y3_N57
\direct_map|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux7~4_combout\ = ( \direct_map|Mux7~3_combout\ & ( \direct_map|Mux7~1_combout\ & ( ((!\pc[3]~input_o\ & (\direct_map|Mux7~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux7~2_combout\)))) # (\pc[2]~input_o\) ) ) ) # ( 
-- !\direct_map|Mux7~3_combout\ & ( \direct_map|Mux7~1_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|Mux7~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux7~2_combout\))))) # (\pc[2]~input_o\ & (((!\pc[3]~input_o\)))) ) ) ) # ( 
-- \direct_map|Mux7~3_combout\ & ( !\direct_map|Mux7~1_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|Mux7~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux7~2_combout\))))) # (\pc[2]~input_o\ & (((\pc[3]~input_o\)))) ) ) ) # ( 
-- !\direct_map|Mux7~3_combout\ & ( !\direct_map|Mux7~1_combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & (\direct_map|Mux7~0_combout\)) # (\pc[3]~input_o\ & ((\direct_map|Mux7~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[2]~input_o\,
	datab => \direct_map|ALT_INV_Mux7~0_combout\,
	datac => \direct_map|ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \direct_map|ALT_INV_Mux7~3_combout\,
	dataf => \direct_map|ALT_INV_Mux7~1_combout\,
	combout => \direct_map|Mux7~4_combout\);

-- Location: LABCELL_X30_Y3_N48
\mux|s[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[24]~24_combout\ = ( \direct_map|Mux7~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) ) ) # ( !\direct_map|Mux7~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(24) & ( !\hit~0_combout\ ) ) ) # ( 
-- \direct_map|Mux7~4_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(24) & ( \hit~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hit~0_combout\,
	datae => \direct_map|ALT_INV_Mux7~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(24),
	combout => \mux|s[24]~24_combout\);

-- Location: MLABCELL_X28_Y8_N33
\direct_map|cach_instruction[6][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~6_combout\) # (\direct_map|cach_instruction[6][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[6][35]~combout\ & !\direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[6][35]~combout\);

-- Location: LABCELL_X27_Y8_N51
\direct_map|cach_instruction[14][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][35]~combout\ = ( \direct_map|cach_instruction[14][35]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[14][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][35]~combout\,
	combout => \direct_map|cach_instruction[14][35]~combout\);

-- Location: MLABCELL_X28_Y8_N9
\direct_map|cach_instruction[10][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[10][35]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[10][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[10][35]~combout\);

-- Location: LABCELL_X27_Y8_N45
\direct_map|cach_instruction[2][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][35]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(25) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][35]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_cach_instruction[2][35]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][35]~combout\);

-- Location: MLABCELL_X28_Y8_N24
\direct_map|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux6~2_combout\ = ( \direct_map|cach_instruction[2][35]~combout\ & ( \pc[2]~input_o\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][35]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][35]~combout\))) ) ) ) # ( 
-- !\direct_map|cach_instruction[2][35]~combout\ & ( \pc[2]~input_o\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][35]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][35]~combout\))) ) ) ) # ( 
-- \direct_map|cach_instruction[2][35]~combout\ & ( !\pc[2]~input_o\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[10][35]~combout\) ) ) ) # ( !\direct_map|cach_instruction[2][35]~combout\ & ( !\pc[2]~input_o\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[10][35]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][35]~combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[14][35]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[10][35]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[2][35]~combout\,
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \direct_map|Mux6~2_combout\);

-- Location: LABCELL_X30_Y5_N51
\direct_map|cach_instruction[3][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[3][35]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[3][35]~combout\);

-- Location: LABCELL_X30_Y5_N15
\direct_map|cach_instruction[7][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][35]~combout\ = ( \direct_map|cach_instruction[7][35]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[7][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][35]~combout\,
	combout => \direct_map|cach_instruction[7][35]~combout\);

-- Location: LABCELL_X31_Y5_N21
\direct_map|cach_instruction[15][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[15][35]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[15][35]~combout\);

-- Location: LABCELL_X30_Y5_N12
\direct_map|cach_instruction[11][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][35]~combout\ = ( \direct_map|cach_instruction[11][35]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[11][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][35]~combout\,
	combout => \direct_map|cach_instruction[11][35]~combout\);

-- Location: LABCELL_X30_Y5_N54
\direct_map|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux6~3_combout\ = ( \pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[15][35]~combout\ ) ) ) # ( !\pc[2]~input_o\ & ( \pc[3]~input_o\ & ( \direct_map|cach_instruction[11][35]~combout\ ) ) ) # ( \pc[2]~input_o\ & ( 
-- !\pc[3]~input_o\ & ( \direct_map|cach_instruction[7][35]~combout\ ) ) ) # ( !\pc[2]~input_o\ & ( !\pc[3]~input_o\ & ( \direct_map|cach_instruction[3][35]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][35]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[7][35]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][35]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[11][35]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux6~3_combout\);

-- Location: LABCELL_X30_Y5_N9
\direct_map|cach_instruction[8][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][35]~combout\ = ( \direct_map|cach_instruction[8][35]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[8][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][35]~combout\,
	combout => \direct_map|cach_instruction[8][35]~combout\);

-- Location: LABCELL_X30_Y5_N6
\direct_map|cach_instruction[4][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][35]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(25) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][35]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datab => \direct_map|ALT_INV_cach_instruction[4][35]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][35]~combout\);

-- Location: LABCELL_X30_Y5_N45
\direct_map|cach_instruction[12][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~12_combout\) # (\direct_map|cach_instruction[12][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[12][35]~combout\ & !\direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[12][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[12][35]~combout\);

-- Location: LABCELL_X27_Y7_N30
\direct_map|cach_instruction[0][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[0][35]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][35]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[0][35]~combout\);

-- Location: LABCELL_X30_Y5_N36
\direct_map|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux6~0_combout\ = ( \direct_map|cach_instruction[0][35]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[8][35]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[12][35]~combout\))) ) ) ) # ( 
-- !\direct_map|cach_instruction[0][35]~combout\ & ( \pc[3]~input_o\ & ( (!\pc[2]~input_o\ & (\direct_map|cach_instruction[8][35]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[12][35]~combout\))) ) ) ) # ( 
-- \direct_map|cach_instruction[0][35]~combout\ & ( !\pc[3]~input_o\ & ( (!\pc[2]~input_o\) # (\direct_map|cach_instruction[4][35]~combout\) ) ) ) # ( !\direct_map|cach_instruction[0][35]~combout\ & ( !\pc[3]~input_o\ & ( 
-- (\direct_map|cach_instruction[4][35]~combout\ & \pc[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[8][35]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[4][35]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[12][35]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[0][35]~combout\,
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \direct_map|Mux6~0_combout\);

-- Location: MLABCELL_X28_Y8_N48
\direct_map|cach_instruction[1][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][35]~combout\ = ( \direct_map|cach_instruction[1][35]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[1][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][35]~combout\,
	combout => \direct_map|cach_instruction[1][35]~combout\);

-- Location: MLABCELL_X28_Y8_N6
\direct_map|cach_instruction[13][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][35]~combout\ = ( \direct_map|cach_instruction[13][35]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[13][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][35]~combout\,
	combout => \direct_map|cach_instruction[13][35]~combout\);

-- Location: MLABCELL_X28_Y8_N39
\direct_map|cach_instruction[9][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][35]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(25) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][35]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(25) & ( 
-- (\direct_map|cach_instruction[9][35]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[9][35]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	combout => \direct_map|cach_instruction[9][35]~combout\);

-- Location: MLABCELL_X28_Y8_N51
\direct_map|cach_instruction[5][35]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][35]~combout\ = ( \direct_map|cach_instruction[5][35]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|cach_instruction[5][35]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(25) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][35]~combout\,
	combout => \direct_map|cach_instruction[5][35]~combout\);

-- Location: MLABCELL_X28_Y8_N54
\direct_map|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux6~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[5][35]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[13][35]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[5][35]~combout\ & ( 
-- (!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][35]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[9][35]~combout\))) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[5][35]~combout\ & ( 
-- (\direct_map|cach_instruction[13][35]~combout\ & \pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[5][35]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[1][35]~combout\)) # (\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[9][35]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][35]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][35]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[9][35]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][35]~combout\,
	combout => \direct_map|Mux6~1_combout\);

-- Location: LABCELL_X30_Y5_N24
\direct_map|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux6~4_combout\ = ( \direct_map|Mux6~0_combout\ & ( \direct_map|Mux6~1_combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & (\direct_map|Mux6~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux6~3_combout\)))) ) ) ) # ( 
-- !\direct_map|Mux6~0_combout\ & ( \direct_map|Mux6~1_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux6~2_combout\ & ((\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (((!\pc[1]~input_o\) # (\direct_map|Mux6~3_combout\)))) ) ) ) # ( \direct_map|Mux6~0_combout\ & 
-- ( !\direct_map|Mux6~1_combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|Mux6~2_combout\))) # (\pc[0]~input_o\ & (((\direct_map|Mux6~3_combout\ & \pc[1]~input_o\)))) ) ) ) # ( !\direct_map|Mux6~0_combout\ & ( 
-- !\direct_map|Mux6~1_combout\ & ( (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & (\direct_map|Mux6~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux6~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_Mux6~2_combout\,
	datac => \direct_map|ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_Mux6~0_combout\,
	dataf => \direct_map|ALT_INV_Mux6~1_combout\,
	combout => \direct_map|Mux6~4_combout\);

-- Location: LABCELL_X30_Y5_N42
\mux|s[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[25]~25_combout\ = ( \direct_map|Mux6~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(25)) ) ) # ( !\direct_map|Mux6~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(25) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(25),
	datac => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux6~4_combout\,
	combout => \mux|s[25]~25_combout\);

-- Location: LABCELL_X30_Y4_N18
\direct_map|cach_instruction[15][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][34]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(26) & ( (\direct_map|cach_instruction[15][34]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][34]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~15_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[15][34]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \direct_map|cach_instruction[15][34]~combout\);

-- Location: LABCELL_X30_Y4_N9
\direct_map|cach_instruction[13][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][34]~combout\ = ( \direct_map|cach_instruction[13][34]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[13][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][34]~combout\,
	combout => \direct_map|cach_instruction[13][34]~combout\);

-- Location: MLABCELL_X25_Y3_N12
\direct_map|cach_instruction[14][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][34]~combout\ = ( \direct_map|cach_instruction[14][34]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[14][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][34]~combout\,
	combout => \direct_map|cach_instruction[14][34]~combout\);

-- Location: LABCELL_X30_Y4_N30
\direct_map|cach_instruction[12][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][34]~combout\ = ( \direct_map|cach_instruction[12][34]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[12][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][34]~combout\,
	combout => \direct_map|cach_instruction[12][34]~combout\);

-- Location: LABCELL_X30_Y4_N0
\direct_map|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux5~3_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[12][34]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[13][34]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[15][34]~combout\)) ) ) ) # ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[12][34]~combout\ & ( (!\pc[1]~input_o\) # (\direct_map|cach_instruction[14][34]~combout\) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][34]~combout\ & ( (!\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[13][34]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[15][34]~combout\)) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[12][34]~combout\ & ( (\direct_map|cach_instruction[14][34]~combout\ & 
-- \pc[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][34]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][34]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[14][34]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][34]~combout\,
	combout => \direct_map|Mux5~3_combout\);

-- Location: LABCELL_X27_Y6_N9
\direct_map|cach_instruction[11][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][34]~combout\ = ( \direct_map|cach_instruction[11][34]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[11][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][34]~combout\,
	combout => \direct_map|cach_instruction[11][34]~combout\);

-- Location: LABCELL_X29_Y6_N33
\direct_map|cach_instruction[10][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][34]~combout\ = ( \direct_map|cach_instruction[10][34]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[10][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][34]~combout\,
	combout => \direct_map|cach_instruction[10][34]~combout\);

-- Location: LABCELL_X29_Y6_N42
\direct_map|cach_instruction[8][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][34]~combout\ = ( \direct_map|cach_instruction[8][34]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[8][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][34]~combout\,
	combout => \direct_map|cach_instruction[8][34]~combout\);

-- Location: LABCELL_X27_Y6_N45
\direct_map|cach_instruction[9][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][34]~combout\ = (!\direct_map|Decoder0~9_combout\ & ((\direct_map|cach_instruction[9][34]~combout\))) # (\direct_map|Decoder0~9_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_cach_instruction[9][34]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][34]~combout\);

-- Location: LABCELL_X30_Y6_N6
\direct_map|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux5~2_combout\ = ( \direct_map|cach_instruction[8][34]~combout\ & ( \direct_map|cach_instruction[9][34]~combout\ & ( (!\pc[1]~input_o\) # ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[10][34]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[11][34]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[8][34]~combout\ & ( \direct_map|cach_instruction[9][34]~combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\ & \direct_map|cach_instruction[10][34]~combout\)))) # 
-- (\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[11][34]~combout\))) ) ) ) # ( \direct_map|cach_instruction[8][34]~combout\ & ( !\direct_map|cach_instruction[9][34]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\) # 
-- (\direct_map|cach_instruction[10][34]~combout\)))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[11][34]~combout\ & (\pc[1]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[8][34]~combout\ & ( !\direct_map|cach_instruction[9][34]~combout\ & ( 
-- (\pc[1]~input_o\ & ((!\pc[0]~input_o\ & ((\direct_map|cach_instruction[10][34]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[11][34]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[11][34]~combout\,
	datac => \ALT_INV_pc[1]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[10][34]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[8][34]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][34]~combout\,
	combout => \direct_map|Mux5~2_combout\);

-- Location: LABCELL_X27_Y6_N30
\direct_map|cach_instruction[3][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][34]~combout\ = ( \direct_map|cach_instruction[3][34]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[3][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][34]~combout\,
	combout => \direct_map|cach_instruction[3][34]~combout\);

-- Location: LABCELL_X27_Y6_N12
\direct_map|cach_instruction[1][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][34]~combout\ = ( \direct_map|cach_instruction[1][34]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[1][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][34]~combout\,
	combout => \direct_map|cach_instruction[1][34]~combout\);

-- Location: LABCELL_X27_Y6_N15
\direct_map|cach_instruction[2][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][34]~combout\ = ( \direct_map|cach_instruction[2][34]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[2][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][34]~combout\,
	combout => \direct_map|cach_instruction[2][34]~combout\);

-- Location: LABCELL_X27_Y6_N33
\direct_map|cach_instruction[0][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][34]~combout\ = ( \direct_map|cach_instruction[0][34]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[0][34]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(26) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][34]~combout\,
	combout => \direct_map|cach_instruction[0][34]~combout\);

-- Location: MLABCELL_X28_Y7_N0
\direct_map|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux5~0_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[0][34]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[2][34]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][34]~combout\)) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[0][34]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[1][34]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[0][34]~combout\ & ( (!\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[2][34]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[3][34]~combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[0][34]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[1][34]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[3][34]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[1][34]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[2][34]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][34]~combout\,
	combout => \direct_map|Mux5~0_combout\);

-- Location: LABCELL_X27_Y6_N57
\direct_map|cach_instruction[6][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][34]~combout\ = (!\direct_map|Decoder0~6_combout\ & ((\direct_map|cach_instruction[6][34]~combout\))) # (\direct_map|Decoder0~6_combout\ & (\U1|altsyncram_component|auto_generated|q_a\(26)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	datac => \direct_map|ALT_INV_Decoder0~6_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[6][34]~combout\,
	combout => \direct_map|cach_instruction[6][34]~combout\);

-- Location: LABCELL_X29_Y6_N24
\direct_map|cach_instruction[5][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][34]~combout\ = ( \direct_map|cach_instruction[5][34]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[5][34]~combout\ & ( 
-- (\direct_map|Decoder0~5_combout\ & \U1|altsyncram_component|auto_generated|q_a\(26)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~5_combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	dataf => \direct_map|ALT_INV_cach_instruction[5][34]~combout\,
	combout => \direct_map|cach_instruction[5][34]~combout\);

-- Location: LABCELL_X27_Y6_N3
\direct_map|cach_instruction[7][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][34]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(26) & ( (\direct_map|cach_instruction[7][34]~combout\) # (\direct_map|Decoder0~7_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(26) & ( 
-- (!\direct_map|Decoder0~7_combout\ & \direct_map|cach_instruction[7][34]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[7][34]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \direct_map|cach_instruction[7][34]~combout\);

-- Location: LABCELL_X27_Y6_N42
\direct_map|cach_instruction[4][34]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][34]~combout\ = ( \direct_map|cach_instruction[4][34]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(26)) ) ) # ( !\direct_map|cach_instruction[4][34]~combout\ & ( 
-- (\direct_map|Decoder0~4_combout\ & \U1|altsyncram_component|auto_generated|q_a\(26)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~4_combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	dataf => \direct_map|ALT_INV_cach_instruction[4][34]~combout\,
	combout => \direct_map|cach_instruction[4][34]~combout\);

-- Location: LABCELL_X27_Y6_N36
\direct_map|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux5~1_combout\ = ( \direct_map|cach_instruction[7][34]~combout\ & ( \direct_map|cach_instruction[4][34]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # (\direct_map|cach_instruction[6][34]~combout\))) # (\pc[0]~input_o\ & 
-- (((\pc[1]~input_o\) # (\direct_map|cach_instruction[5][34]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[7][34]~combout\ & ( \direct_map|cach_instruction[4][34]~combout\ & ( (!\pc[0]~input_o\ & (((!\pc[1]~input_o\)) # 
-- (\direct_map|cach_instruction[6][34]~combout\))) # (\pc[0]~input_o\ & (((\direct_map|cach_instruction[5][34]~combout\ & !\pc[1]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[7][34]~combout\ & ( !\direct_map|cach_instruction[4][34]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][34]~combout\ & ((\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (((\pc[1]~input_o\) # (\direct_map|cach_instruction[5][34]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[7][34]~combout\ & ( 
-- !\direct_map|cach_instruction[4][34]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[6][34]~combout\ & ((\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (((\direct_map|cach_instruction[5][34]~combout\ & !\pc[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[6][34]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[5][34]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[7][34]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][34]~combout\,
	combout => \direct_map|Mux5~1_combout\);

-- Location: LABCELL_X30_Y4_N54
\direct_map|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux5~4_combout\ = ( \direct_map|Mux5~0_combout\ & ( \direct_map|Mux5~1_combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|Mux5~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux5~3_combout\))) ) ) ) # ( 
-- !\direct_map|Mux5~0_combout\ & ( \direct_map|Mux5~1_combout\ & ( (!\pc[2]~input_o\ & (((\direct_map|Mux5~2_combout\ & \pc[3]~input_o\)))) # (\pc[2]~input_o\ & (((!\pc[3]~input_o\)) # (\direct_map|Mux5~3_combout\))) ) ) ) # ( \direct_map|Mux5~0_combout\ & 
-- ( !\direct_map|Mux5~1_combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\) # (\direct_map|Mux5~2_combout\)))) # (\pc[2]~input_o\ & (\direct_map|Mux5~3_combout\ & ((\pc[3]~input_o\)))) ) ) ) # ( !\direct_map|Mux5~0_combout\ & ( 
-- !\direct_map|Mux5~1_combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|Mux5~2_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux5~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux5~3_combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \direct_map|ALT_INV_Mux5~0_combout\,
	dataf => \direct_map|ALT_INV_Mux5~1_combout\,
	combout => \direct_map|Mux5~4_combout\);

-- Location: LABCELL_X30_Y4_N42
\mux|s[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[26]~26_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(26) & ( (!\hit~0_combout\) # (\direct_map|Mux5~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(26) & ( (\direct_map|Mux5~4_combout\ & \hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux5~4_combout\,
	datac => \ALT_INV_hit~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(26),
	combout => \mux|s[26]~26_combout\);

-- Location: LABCELL_X29_Y6_N27
\direct_map|cach_instruction[12][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][33]~combout\ = ( \direct_map|cach_instruction[12][33]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[12][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][33]~combout\,
	combout => \direct_map|cach_instruction[12][33]~combout\);

-- Location: LABCELL_X29_Y6_N15
\direct_map|cach_instruction[0][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][33]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(27) & ( (\direct_map|cach_instruction[0][33]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(27) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][33]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][33]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	combout => \direct_map|cach_instruction[0][33]~combout\);

-- Location: MLABCELL_X28_Y5_N27
\direct_map|cach_instruction[4][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][33]~combout\ = ( \direct_map|Decoder0~4_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(27) ) ) # ( !\direct_map|Decoder0~4_combout\ & ( \direct_map|cach_instruction[4][33]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_cach_instruction[4][33]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~4_combout\,
	combout => \direct_map|cach_instruction[4][33]~combout\);

-- Location: LABCELL_X29_Y6_N39
\direct_map|cach_instruction[8][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][33]~combout\ = ( \direct_map|cach_instruction[8][33]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[8][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][33]~combout\,
	combout => \direct_map|cach_instruction[8][33]~combout\);

-- Location: LABCELL_X29_Y6_N0
\direct_map|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux4~0_combout\ = ( \direct_map|cach_instruction[4][33]~combout\ & ( \direct_map|cach_instruction[8][33]~combout\ & ( (!\pc[3]~input_o\ & (((\pc[2]~input_o\) # (\direct_map|cach_instruction[0][33]~combout\)))) # (\pc[3]~input_o\ & 
-- (((!\pc[2]~input_o\)) # (\direct_map|cach_instruction[12][33]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[4][33]~combout\ & ( \direct_map|cach_instruction[8][33]~combout\ & ( (!\pc[3]~input_o\ & (((\direct_map|cach_instruction[0][33]~combout\ & 
-- !\pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|cach_instruction[12][33]~combout\))) ) ) ) # ( \direct_map|cach_instruction[4][33]~combout\ & ( !\direct_map|cach_instruction[8][33]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\) # (\direct_map|cach_instruction[0][33]~combout\)))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][33]~combout\ & ((\pc[2]~input_o\)))) ) ) ) # ( !\direct_map|cach_instruction[4][33]~combout\ & ( 
-- !\direct_map|cach_instruction[8][33]~combout\ & ( (!\pc[3]~input_o\ & (((\direct_map|cach_instruction[0][33]~combout\ & !\pc[2]~input_o\)))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[12][33]~combout\ & ((\pc[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][33]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][33]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[4][33]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][33]~combout\,
	combout => \direct_map|Mux4~0_combout\);

-- Location: LABCELL_X30_Y4_N45
\direct_map|cach_instruction[15][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][33]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(27) & ( (\direct_map|cach_instruction[15][33]~combout\) # (\direct_map|Decoder0~15_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(27) & ( 
-- (!\direct_map|Decoder0~15_combout\ & \direct_map|cach_instruction[15][33]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~15_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][33]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	combout => \direct_map|cach_instruction[15][33]~combout\);

-- Location: LABCELL_X29_Y6_N9
\direct_map|cach_instruction[11][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][33]~combout\ = ( \direct_map|cach_instruction[11][33]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[11][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][33]~combout\,
	combout => \direct_map|cach_instruction[11][33]~combout\);

-- Location: MLABCELL_X25_Y6_N42
\direct_map|cach_instruction[3][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][33]~combout\ = ( \direct_map|cach_instruction[3][33]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[3][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][33]~combout\,
	combout => \direct_map|cach_instruction[3][33]~combout\);

-- Location: LABCELL_X30_Y6_N24
\direct_map|cach_instruction[7][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][33]~combout\ = ( \direct_map|cach_instruction[7][33]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[7][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][33]~combout\,
	combout => \direct_map|cach_instruction[7][33]~combout\);

-- Location: LABCELL_X29_Y6_N48
\direct_map|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux4~3_combout\ = ( \direct_map|cach_instruction[3][33]~combout\ & ( \direct_map|cach_instruction[7][33]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[11][33]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[15][33]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[3][33]~combout\ & ( \direct_map|cach_instruction[7][33]~combout\ & ( (!\pc[2]~input_o\ & (((\pc[3]~input_o\ & \direct_map|cach_instruction[11][33]~combout\)))) # 
-- (\pc[2]~input_o\ & (((!\pc[3]~input_o\)) # (\direct_map|cach_instruction[15][33]~combout\))) ) ) ) # ( \direct_map|cach_instruction[3][33]~combout\ & ( !\direct_map|cach_instruction[7][33]~combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\) # 
-- (\direct_map|cach_instruction[11][33]~combout\)))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][33]~combout\ & (\pc[3]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[3][33]~combout\ & ( !\direct_map|cach_instruction[7][33]~combout\ & ( 
-- (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[11][33]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[15][33]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101110000011100110100110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][33]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[11][33]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[3][33]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][33]~combout\,
	combout => \direct_map|Mux4~3_combout\);

-- Location: LABCELL_X23_Y6_N33
\direct_map|cach_instruction[6][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][33]~combout\ = ( \direct_map|cach_instruction[6][33]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[6][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][33]~combout\,
	combout => \direct_map|cach_instruction[6][33]~combout\);

-- Location: LABCELL_X23_Y6_N6
\direct_map|cach_instruction[14][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][33]~combout\ = ( \direct_map|cach_instruction[14][33]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[14][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][33]~combout\,
	combout => \direct_map|cach_instruction[14][33]~combout\);

-- Location: LABCELL_X23_Y6_N30
\direct_map|cach_instruction[2][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][33]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(27) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][33]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datab => \direct_map|ALT_INV_cach_instruction[2][33]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][33]~combout\);

-- Location: MLABCELL_X25_Y6_N18
\direct_map|cach_instruction[10][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][33]~combout\ = ( \direct_map|cach_instruction[10][33]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[10][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][33]~combout\,
	combout => \direct_map|cach_instruction[10][33]~combout\);

-- Location: LABCELL_X23_Y6_N54
\direct_map|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux4~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[10][33]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][33]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][33]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[10][33]~combout\ & ( (\direct_map|cach_instruction[2][33]~combout\) # (\pc[3]~input_o\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[10][33]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[6][33]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][33]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[10][33]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[2][33]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][33]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[14][33]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[2][33]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][33]~combout\,
	combout => \direct_map|Mux4~2_combout\);

-- Location: LABCELL_X29_Y6_N6
\direct_map|cach_instruction[13][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][33]~combout\ = ( \direct_map|cach_instruction[13][33]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[13][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][33]~combout\,
	combout => \direct_map|cach_instruction[13][33]~combout\);

-- Location: MLABCELL_X28_Y6_N42
\direct_map|cach_instruction[9][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][33]~combout\ = ( \direct_map|cach_instruction[9][33]~combout\ & ( (!\direct_map|Decoder0~9_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[9][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][33]~combout\,
	combout => \direct_map|cach_instruction[9][33]~combout\);

-- Location: LABCELL_X29_Y6_N45
\direct_map|cach_instruction[5][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][33]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(27) & ( (\direct_map|cach_instruction[5][33]~combout\) # (\direct_map|Decoder0~5_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(27) & ( 
-- (!\direct_map|Decoder0~5_combout\ & \direct_map|cach_instruction[5][33]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][33]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	combout => \direct_map|cach_instruction[5][33]~combout\);

-- Location: MLABCELL_X28_Y6_N15
\direct_map|cach_instruction[1][33]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][33]~combout\ = ( \direct_map|cach_instruction[1][33]~combout\ & ( (!\direct_map|Decoder0~1_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|cach_instruction[1][33]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(27) & \direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][33]~combout\,
	combout => \direct_map|cach_instruction[1][33]~combout\);

-- Location: LABCELL_X29_Y6_N18
\direct_map|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux4~1_combout\ = ( \direct_map|cach_instruction[5][33]~combout\ & ( \direct_map|cach_instruction[1][33]~combout\ & ( (!\pc[3]~input_o\) # ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][33]~combout\))) # (\pc[2]~input_o\ & 
-- (\direct_map|cach_instruction[13][33]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[5][33]~combout\ & ( \direct_map|cach_instruction[1][33]~combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[9][33]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][33]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[5][33]~combout\ & ( !\direct_map|cach_instruction[1][33]~combout\ & ( (!\pc[3]~input_o\ & 
-- (((\pc[2]~input_o\)))) # (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][33]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][33]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[5][33]~combout\ & ( 
-- !\direct_map|cach_instruction[1][33]~combout\ & ( (\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|cach_instruction[9][33]~combout\))) # (\pc[2]~input_o\ & (\direct_map|cach_instruction[13][33]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[13][33]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[9][33]~combout\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[5][33]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[1][33]~combout\,
	combout => \direct_map|Mux4~1_combout\);

-- Location: LABCELL_X29_Y6_N54
\direct_map|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux4~4_combout\ = ( \direct_map|Mux4~2_combout\ & ( \direct_map|Mux4~1_combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\)) # (\direct_map|Mux4~0_combout\))) # (\pc[0]~input_o\ & (((!\pc[1]~input_o\) # (\direct_map|Mux4~3_combout\)))) ) ) ) # 
-- ( !\direct_map|Mux4~2_combout\ & ( \direct_map|Mux4~1_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux4~0_combout\ & ((!\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (((!\pc[1]~input_o\) # (\direct_map|Mux4~3_combout\)))) ) ) ) # ( \direct_map|Mux4~2_combout\ 
-- & ( !\direct_map|Mux4~1_combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\)) # (\direct_map|Mux4~0_combout\))) # (\pc[0]~input_o\ & (((\direct_map|Mux4~3_combout\ & \pc[1]~input_o\)))) ) ) ) # ( !\direct_map|Mux4~2_combout\ & ( 
-- !\direct_map|Mux4~1_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux4~0_combout\ & ((!\pc[1]~input_o\)))) # (\pc[0]~input_o\ & (((\direct_map|Mux4~3_combout\ & \pc[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux4~0_combout\,
	datab => \direct_map|ALT_INV_Mux4~3_combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_Mux4~2_combout\,
	dataf => \direct_map|ALT_INV_Mux4~1_combout\,
	combout => \direct_map|Mux4~4_combout\);

-- Location: LABCELL_X23_Y5_N0
\mux|s[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[27]~27_combout\ = ( \direct_map|Mux4~4_combout\ & ( (\hit~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(27)) ) ) # ( !\direct_map|Mux4~4_combout\ & ( (\U1|altsyncram_component|auto_generated|q_a\(27) & !\hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(27),
	datac => \ALT_INV_hit~0_combout\,
	dataf => \direct_map|ALT_INV_Mux4~4_combout\,
	combout => \mux|s[27]~27_combout\);

-- Location: LABCELL_X33_Y6_N33
\direct_map|cach_instruction[7][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][32]~combout\ = ( \direct_map|cach_instruction[7][32]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[7][32]~combout\ & ( 
-- (\direct_map|Decoder0~7_combout\ & \U1|altsyncram_component|auto_generated|q_a\(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~7_combout\,
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \direct_map|ALT_INV_cach_instruction[7][32]~combout\,
	combout => \direct_map|cach_instruction[7][32]~combout\);

-- Location: LABCELL_X33_Y6_N15
\direct_map|cach_instruction[5][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][32]~combout\ = ( \direct_map|cach_instruction[5][32]~combout\ & ( (!\direct_map|Decoder0~5_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[5][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[5][32]~combout\,
	combout => \direct_map|cach_instruction[5][32]~combout\);

-- Location: LABCELL_X33_Y6_N12
\direct_map|cach_instruction[6][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][32]~combout\ = ( \direct_map|cach_instruction[6][32]~combout\ & ( (!\direct_map|Decoder0~6_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[6][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][32]~combout\,
	combout => \direct_map|cach_instruction[6][32]~combout\);

-- Location: LABCELL_X33_Y6_N30
\direct_map|cach_instruction[4][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][32]~combout\ = ( \direct_map|cach_instruction[4][32]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[4][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][32]~combout\,
	combout => \direct_map|cach_instruction[4][32]~combout\);

-- Location: LABCELL_X33_Y6_N0
\direct_map|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux3~1_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[4][32]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[6][32]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[7][32]~combout\)) ) ) ) # ( 
-- !\pc[1]~input_o\ & ( \direct_map|cach_instruction[4][32]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[5][32]~combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][32]~combout\ & ( (!\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[6][32]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[7][32]~combout\)) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[4][32]~combout\ & ( (\direct_map|cach_instruction[5][32]~combout\ & 
-- \pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001011111010111110011111100110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[7][32]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[5][32]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[6][32]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][32]~combout\,
	combout => \direct_map|Mux3~1_combout\);

-- Location: LABCELL_X27_Y2_N30
\direct_map|cach_instruction[1][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][32]~combout\ = ( \direct_map|Decoder0~1_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(28) ) ) # ( !\direct_map|Decoder0~1_combout\ & ( \direct_map|cach_instruction[1][32]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[1][32]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	dataf => \direct_map|ALT_INV_Decoder0~1_combout\,
	combout => \direct_map|cach_instruction[1][32]~combout\);

-- Location: LABCELL_X33_Y6_N51
\direct_map|cach_instruction[2][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][32]~combout\ = ( \direct_map|cach_instruction[2][32]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[2][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][32]~combout\,
	combout => \direct_map|cach_instruction[2][32]~combout\);

-- Location: MLABCELL_X28_Y2_N24
\direct_map|cach_instruction[0][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][32]~combout\ = ( \direct_map|cach_instruction[0][32]~combout\ & ( (!\direct_map|Decoder0~0_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[0][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[0][32]~combout\,
	combout => \direct_map|cach_instruction[0][32]~combout\);

-- Location: LABCELL_X27_Y2_N9
\direct_map|cach_instruction[3][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][32]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(28) & ( (\direct_map|Decoder0~3_combout\) # (\direct_map|cach_instruction[3][32]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(28) & ( 
-- (\direct_map|cach_instruction[3][32]~combout\ & !\direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[3][32]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \direct_map|cach_instruction[3][32]~combout\);

-- Location: MLABCELL_X28_Y2_N18
\direct_map|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux3~0_combout\ = ( \pc[1]~input_o\ & ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[3][32]~combout\ ) ) ) # ( !\pc[1]~input_o\ & ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[1][32]~combout\ ) ) ) # ( \pc[1]~input_o\ & ( 
-- !\pc[0]~input_o\ & ( \direct_map|cach_instruction[2][32]~combout\ ) ) ) # ( !\pc[1]~input_o\ & ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[0][32]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[1][32]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[2][32]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][32]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][32]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \ALT_INV_pc[0]~input_o\,
	combout => \direct_map|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y2_N54
\direct_map|cach_instruction[9][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][32]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(28) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \direct_map|cach_instruction[9][32]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \direct_map|ALT_INV_cach_instruction[9][32]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~9_combout\,
	combout => \direct_map|cach_instruction[9][32]~combout\);

-- Location: MLABCELL_X28_Y2_N42
\direct_map|cach_instruction[11][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][32]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][32]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(28) ) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( 
-- \direct_map|cach_instruction[11][32]~combout\ ) ) # ( \direct_map|Decoder0~11_combout\ & ( !\direct_map|cach_instruction[11][32]~combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(28) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datae => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][32]~combout\,
	combout => \direct_map|cach_instruction[11][32]~combout\);

-- Location: LABCELL_X33_Y6_N48
\direct_map|cach_instruction[10][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][32]~combout\ = ( \direct_map|cach_instruction[10][32]~combout\ & ( (!\direct_map|Decoder0~10_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[10][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][32]~combout\,
	combout => \direct_map|cach_instruction[10][32]~combout\);

-- Location: MLABCELL_X28_Y2_N48
\direct_map|cach_instruction[8][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][32]~combout\ = ( \direct_map|cach_instruction[8][32]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[8][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][32]~combout\,
	combout => \direct_map|cach_instruction[8][32]~combout\);

-- Location: MLABCELL_X28_Y2_N36
\direct_map|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux3~2_combout\ = ( \direct_map|cach_instruction[10][32]~combout\ & ( \direct_map|cach_instruction[8][32]~combout\ & ( (!\pc[0]~input_o\) # ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][32]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[11][32]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[10][32]~combout\ & ( \direct_map|cach_instruction[8][32]~combout\ & ( (!\pc[1]~input_o\ & ((!\pc[0]~input_o\) # ((\direct_map|cach_instruction[9][32]~combout\)))) 
-- # (\pc[1]~input_o\ & (\pc[0]~input_o\ & ((\direct_map|cach_instruction[11][32]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[10][32]~combout\ & ( !\direct_map|cach_instruction[8][32]~combout\ & ( (!\pc[1]~input_o\ & (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[9][32]~combout\))) # (\pc[1]~input_o\ & ((!\pc[0]~input_o\) # ((\direct_map|cach_instruction[11][32]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[10][32]~combout\ & ( !\direct_map|cach_instruction[8][32]~combout\ & ( 
-- (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][32]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[11][32]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[1]~input_o\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[9][32]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[11][32]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[10][32]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][32]~combout\,
	combout => \direct_map|Mux3~2_combout\);

-- Location: LABCELL_X31_Y4_N33
\direct_map|cach_instruction[15][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][32]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(28) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][32]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(28) & ( 
-- (\direct_map|cach_instruction[15][32]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][32]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \direct_map|cach_instruction[15][32]~combout\);

-- Location: LABCELL_X33_Y6_N9
\direct_map|cach_instruction[13][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][32]~combout\ = ( \direct_map|Decoder0~13_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(28) ) ) # ( !\direct_map|Decoder0~13_combout\ & ( \direct_map|cach_instruction[13][32]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datac => \direct_map|ALT_INV_cach_instruction[13][32]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~13_combout\,
	combout => \direct_map|cach_instruction[13][32]~combout\);

-- Location: LABCELL_X33_Y6_N6
\direct_map|cach_instruction[12][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][32]~combout\ = ( \direct_map|cach_instruction[12][32]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(28)) ) ) # ( !\direct_map|cach_instruction[12][32]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(28) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	datad => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][32]~combout\,
	combout => \direct_map|cach_instruction[12][32]~combout\);

-- Location: LABCELL_X33_Y6_N42
\direct_map|cach_instruction[14][32]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][32]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(28) & ( (\direct_map|Decoder0~14_combout\) # (\direct_map|cach_instruction[14][32]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(28) & ( 
-- (\direct_map|cach_instruction[14][32]~combout\ & !\direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[14][32]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \direct_map|cach_instruction[14][32]~combout\);

-- Location: LABCELL_X33_Y6_N54
\direct_map|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux3~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[14][32]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[15][32]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[14][32]~combout\ & ( 
-- (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][32]~combout\))) # (\pc[0]~input_o\ & (\direct_map|cach_instruction[13][32]~combout\)) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][32]~combout\ & ( 
-- (\direct_map|cach_instruction[15][32]~combout\ & \pc[0]~input_o\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][32]~combout\ & ( (!\pc[0]~input_o\ & ((\direct_map|cach_instruction[12][32]~combout\))) # (\pc[0]~input_o\ & 
-- (\direct_map|cach_instruction[13][32]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][32]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[13][32]~combout\,
	datac => \ALT_INV_pc[0]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[12][32]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][32]~combout\,
	combout => \direct_map|Mux3~3_combout\);

-- Location: MLABCELL_X28_Y2_N9
\direct_map|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux3~4_combout\ = ( \direct_map|Mux3~2_combout\ & ( \direct_map|Mux3~3_combout\ & ( ((!\pc[2]~input_o\ & ((\direct_map|Mux3~0_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux3~1_combout\))) # (\pc[3]~input_o\) ) ) ) # ( 
-- !\direct_map|Mux3~2_combout\ & ( \direct_map|Mux3~3_combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\ & \direct_map|Mux3~0_combout\)))) # (\pc[2]~input_o\ & (((\pc[3]~input_o\)) # (\direct_map|Mux3~1_combout\))) ) ) ) # ( \direct_map|Mux3~2_combout\ & 
-- ( !\direct_map|Mux3~3_combout\ & ( (!\pc[2]~input_o\ & (((\direct_map|Mux3~0_combout\) # (\pc[3]~input_o\)))) # (\pc[2]~input_o\ & (\direct_map|Mux3~1_combout\ & (!\pc[3]~input_o\))) ) ) ) # ( !\direct_map|Mux3~2_combout\ & ( !\direct_map|Mux3~3_combout\ 
-- & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & ((\direct_map|Mux3~0_combout\))) # (\pc[2]~input_o\ & (\direct_map|Mux3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_Mux3~0_combout\,
	datae => \direct_map|ALT_INV_Mux3~2_combout\,
	dataf => \direct_map|ALT_INV_Mux3~3_combout\,
	combout => \direct_map|Mux3~4_combout\);

-- Location: LABCELL_X31_Y4_N27
\mux|s[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[28]~28_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(28) & ( (!\hit~0_combout\) # (\direct_map|Mux3~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(28) & ( (\direct_map|Mux3~4_combout\ & \hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux3~4_combout\,
	datad => \ALT_INV_hit~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(28),
	combout => \mux|s[28]~28_combout\);

-- Location: MLABCELL_X28_Y7_N6
\direct_map|cach_instruction[6][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][31]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(29) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][31]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[6][31]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][31]~combout\);

-- Location: LABCELL_X27_Y8_N9
\direct_map|cach_instruction[10][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[10][31]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[10][31]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[10][31]~combout\);

-- Location: MLABCELL_X28_Y7_N57
\direct_map|cach_instruction[14][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|cach_instruction[14][31]~combout\) # (\direct_map|Decoder0~14_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (!\direct_map|Decoder0~14_combout\ & \direct_map|cach_instruction[14][31]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~14_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][31]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[14][31]~combout\);

-- Location: MLABCELL_X28_Y7_N33
\direct_map|cach_instruction[2][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][31]~combout\ = ( \direct_map|cach_instruction[2][31]~combout\ & ( (!\direct_map|Decoder0~2_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[2][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \direct_map|ALT_INV_Decoder0~2_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][31]~combout\,
	combout => \direct_map|cach_instruction[2][31]~combout\);

-- Location: MLABCELL_X28_Y7_N42
\direct_map|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux2~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[2][31]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[6][31]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][31]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[2][31]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[10][31]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][31]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[6][31]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[14][31]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[2][31]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[10][31]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[6][31]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[10][31]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[14][31]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[2][31]~combout\,
	combout => \direct_map|Mux2~2_combout\);

-- Location: LABCELL_X30_Y7_N51
\direct_map|cach_instruction[15][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~15_combout\) # (\direct_map|cach_instruction[15][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[15][31]~combout\ & !\direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][31]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[15][31]~combout\);

-- Location: LABCELL_X30_Y7_N9
\direct_map|cach_instruction[7][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][31]~combout\ = ( \direct_map|cach_instruction[7][31]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[7][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][31]~combout\,
	combout => \direct_map|cach_instruction[7][31]~combout\);

-- Location: MLABCELL_X28_Y7_N12
\direct_map|cach_instruction[11][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][31]~combout\ = ( \direct_map|cach_instruction[11][31]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[11][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datac => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][31]~combout\,
	combout => \direct_map|cach_instruction[11][31]~combout\);

-- Location: LABCELL_X30_Y7_N6
\direct_map|cach_instruction[3][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][31]~combout\ = ( \direct_map|cach_instruction[3][31]~combout\ & ( (!\direct_map|Decoder0~3_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[3][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \direct_map|ALT_INV_Decoder0~3_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][31]~combout\,
	combout => \direct_map|cach_instruction[3][31]~combout\);

-- Location: LABCELL_X30_Y7_N24
\direct_map|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux2~3_combout\ = ( \direct_map|cach_instruction[11][31]~combout\ & ( \direct_map|cach_instruction[3][31]~combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[7][31]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[15][31]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[11][31]~combout\ & ( \direct_map|cach_instruction[3][31]~combout\ & ( (!\pc[2]~input_o\ & (((!\pc[3]~input_o\)))) # (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & 
-- ((\direct_map|cach_instruction[7][31]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[15][31]~combout\)))) ) ) ) # ( \direct_map|cach_instruction[11][31]~combout\ & ( !\direct_map|cach_instruction[3][31]~combout\ & ( (!\pc[2]~input_o\ & 
-- (((\pc[3]~input_o\)))) # (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[7][31]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[15][31]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[11][31]~combout\ & ( 
-- !\direct_map|cach_instruction[3][31]~combout\ & ( (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[7][31]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[15][31]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[15][31]~combout\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[7][31]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[11][31]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][31]~combout\,
	combout => \direct_map|Mux2~3_combout\);

-- Location: MLABCELL_X28_Y9_N12
\direct_map|cach_instruction[0][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[0][31]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][31]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[0][31]~combout\);

-- Location: LABCELL_X27_Y7_N24
\direct_map|cach_instruction[4][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~4_combout\) # (\direct_map|cach_instruction[4][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[4][31]~combout\ & !\direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[4][31]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[4][31]~combout\);

-- Location: LABCELL_X27_Y7_N42
\direct_map|cach_instruction[12][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][31]~combout\ = ( \direct_map|cach_instruction[12][31]~combout\ & ( (!\direct_map|Decoder0~12_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[12][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datac => \direct_map|ALT_INV_Decoder0~12_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[12][31]~combout\,
	combout => \direct_map|cach_instruction[12][31]~combout\);

-- Location: MLABCELL_X25_Y7_N30
\direct_map|cach_instruction[8][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][31]~combout\ = ( \direct_map|cach_instruction[8][31]~combout\ & ( (!\direct_map|Decoder0~8_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[8][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][31]~combout\,
	combout => \direct_map|cach_instruction[8][31]~combout\);

-- Location: MLABCELL_X28_Y7_N18
\direct_map|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux2~0_combout\ = ( \direct_map|cach_instruction[12][31]~combout\ & ( \direct_map|cach_instruction[8][31]~combout\ & ( ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[0][31]~combout\)) # (\pc[2]~input_o\ & 
-- ((\direct_map|cach_instruction[4][31]~combout\)))) # (\pc[3]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[12][31]~combout\ & ( \direct_map|cach_instruction[8][31]~combout\ & ( (!\pc[2]~input_o\ & (((\pc[3]~input_o\)) # 
-- (\direct_map|cach_instruction[0][31]~combout\))) # (\pc[2]~input_o\ & (((\direct_map|cach_instruction[4][31]~combout\ & !\pc[3]~input_o\)))) ) ) ) # ( \direct_map|cach_instruction[12][31]~combout\ & ( !\direct_map|cach_instruction[8][31]~combout\ & ( 
-- (!\pc[2]~input_o\ & (\direct_map|cach_instruction[0][31]~combout\ & ((!\pc[3]~input_o\)))) # (\pc[2]~input_o\ & (((\pc[3]~input_o\) # (\direct_map|cach_instruction[4][31]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[12][31]~combout\ & ( 
-- !\direct_map|cach_instruction[8][31]~combout\ & ( (!\pc[3]~input_o\ & ((!\pc[2]~input_o\ & (\direct_map|cach_instruction[0][31]~combout\)) # (\pc[2]~input_o\ & ((\direct_map|cach_instruction[4][31]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[0][31]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[4][31]~combout\,
	datac => \ALT_INV_pc[2]~input_o\,
	datad => \ALT_INV_pc[3]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[12][31]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][31]~combout\,
	combout => \direct_map|Mux2~0_combout\);

-- Location: LABCELL_X29_Y6_N36
\direct_map|cach_instruction[5][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|cach_instruction[5][31]~combout\) # (\direct_map|Decoder0~5_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (!\direct_map|Decoder0~5_combout\ & \direct_map|cach_instruction[5][31]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][31]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[5][31]~combout\);

-- Location: LABCELL_X27_Y6_N24
\direct_map|cach_instruction[1][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[1][31]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[1][31]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[1][31]~combout\);

-- Location: LABCELL_X27_Y7_N12
\direct_map|cach_instruction[13][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][31]~combout\ = ( \direct_map|cach_instruction[13][31]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(29)) ) ) # ( !\direct_map|cach_instruction[13][31]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(29) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][31]~combout\,
	combout => \direct_map|cach_instruction[13][31]~combout\);

-- Location: LABCELL_X27_Y6_N51
\direct_map|cach_instruction[9][31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][31]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][31]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( 
-- (\direct_map|cach_instruction[9][31]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][31]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \direct_map|cach_instruction[9][31]~combout\);

-- Location: MLABCELL_X28_Y7_N24
\direct_map|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux2~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[9][31]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[5][31]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[13][31]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[9][31]~combout\ & ( (\direct_map|cach_instruction[1][31]~combout\) # (\pc[3]~input_o\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[9][31]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[5][31]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[13][31]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[9][31]~combout\ & ( (!\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[1][31]~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[5][31]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[1][31]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[13][31]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[9][31]~combout\,
	combout => \direct_map|Mux2~1_combout\);

-- Location: MLABCELL_X28_Y7_N36
\direct_map|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux2~4_combout\ = ( \pc[1]~input_o\ & ( \direct_map|Mux2~1_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux2~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux2~3_combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|Mux2~1_combout\ & ( 
-- (\pc[0]~input_o\) # (\direct_map|Mux2~0_combout\) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|Mux2~1_combout\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux2~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux2~3_combout\))) ) ) ) # ( !\pc[1]~input_o\ & ( 
-- !\direct_map|Mux2~1_combout\ & ( (\direct_map|Mux2~0_combout\ & !\pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux2~2_combout\,
	datab => \direct_map|ALT_INV_Mux2~3_combout\,
	datac => \direct_map|ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_Mux2~1_combout\,
	combout => \direct_map|Mux2~4_combout\);

-- Location: LABCELL_X30_Y8_N0
\mux|s[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[29]~29_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(29) & ( (!\hit~0_combout\) # (\direct_map|Mux2~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(29) & ( (\direct_map|Mux2~4_combout\ & \hit~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Mux2~4_combout\,
	datad => \ALT_INV_hit~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(29),
	combout => \mux|s[29]~29_combout\);

-- Location: LABCELL_X27_Y7_N45
\direct_map|cach_instruction[12][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][30]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][30]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_cach_instruction[12][30]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][30]~combout\);

-- Location: LABCELL_X27_Y7_N18
\direct_map|cach_instruction[13][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][30]~combout\ = ( \direct_map|cach_instruction[13][30]~combout\ & ( (!\direct_map|Decoder0~13_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(30)) ) ) # ( !\direct_map|cach_instruction[13][30]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(30) & \direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][30]~combout\,
	combout => \direct_map|cach_instruction[13][30]~combout\);

-- Location: LABCELL_X27_Y7_N9
\direct_map|cach_instruction[15][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][30]~combout\ = ( \direct_map|cach_instruction[15][30]~combout\ & ( (!\direct_map|Decoder0~15_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(30)) ) ) # ( !\direct_map|cach_instruction[15][30]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(30) & \direct_map|Decoder0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_Decoder0~15_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[15][30]~combout\,
	combout => \direct_map|cach_instruction[15][30]~combout\);

-- Location: LABCELL_X27_Y7_N6
\direct_map|cach_instruction[14][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][30]~combout\ = ( \direct_map|cach_instruction[14][30]~combout\ & ( (!\direct_map|Decoder0~14_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(30)) ) ) # ( !\direct_map|cach_instruction[14][30]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(30) & \direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][30]~combout\,
	combout => \direct_map|cach_instruction[14][30]~combout\);

-- Location: LABCELL_X27_Y7_N0
\direct_map|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux1~3_combout\ = ( \pc[1]~input_o\ & ( \direct_map|cach_instruction[14][30]~combout\ & ( (!\pc[0]~input_o\) # (\direct_map|cach_instruction[15][30]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( \direct_map|cach_instruction[14][30]~combout\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][30]~combout\)) # (\pc[0]~input_o\ & ((\direct_map|cach_instruction[13][30]~combout\))) ) ) ) # ( \pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][30]~combout\ & ( (\pc[0]~input_o\ & 
-- \direct_map|cach_instruction[15][30]~combout\) ) ) ) # ( !\pc[1]~input_o\ & ( !\direct_map|cach_instruction[14][30]~combout\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[12][30]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[13][30]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000101010100100111001001111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[0]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[12][30]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[13][30]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[15][30]~combout\,
	datae => \ALT_INV_pc[1]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[14][30]~combout\,
	combout => \direct_map|Mux1~3_combout\);

-- Location: LABCELL_X27_Y7_N27
\direct_map|cach_instruction[6][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][30]~combout\ = ( \direct_map|Decoder0~6_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~6_combout\ & ( \direct_map|cach_instruction[6][30]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_cach_instruction[6][30]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~6_combout\,
	combout => \direct_map|cach_instruction[6][30]~combout\);

-- Location: LABCELL_X27_Y7_N15
\direct_map|cach_instruction[4][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][30]~combout\ = ( \direct_map|cach_instruction[4][30]~combout\ & ( (!\direct_map|Decoder0~4_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(30)) ) ) # ( !\direct_map|cach_instruction[4][30]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(30) & \direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[4][30]~combout\,
	combout => \direct_map|cach_instruction[4][30]~combout\);

-- Location: LABCELL_X27_Y9_N18
\direct_map|cach_instruction[5][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][30]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (\direct_map|Decoder0~5_combout\) # (\direct_map|cach_instruction[5][30]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (\direct_map|cach_instruction[5][30]~combout\ & !\direct_map|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[5][30]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~5_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[5][30]~combout\);

-- Location: MLABCELL_X28_Y7_N9
\direct_map|cach_instruction[7][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][30]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (\direct_map|Decoder0~7_combout\) # (\direct_map|cach_instruction[7][30]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (\direct_map|cach_instruction[7][30]~combout\ & !\direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[7][30]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[7][30]~combout\);

-- Location: MLABCELL_X28_Y9_N18
\direct_map|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux1~1_combout\ = ( \direct_map|cach_instruction[7][30]~combout\ & ( \pc[1]~input_o\ & ( (\pc[0]~input_o\) # (\direct_map|cach_instruction[6][30]~combout\) ) ) ) # ( !\direct_map|cach_instruction[7][30]~combout\ & ( \pc[1]~input_o\ & ( 
-- (\direct_map|cach_instruction[6][30]~combout\ & !\pc[0]~input_o\) ) ) ) # ( \direct_map|cach_instruction[7][30]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[4][30]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[5][30]~combout\))) ) ) ) # ( !\direct_map|cach_instruction[7][30]~combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\direct_map|cach_instruction[4][30]~combout\)) # (\pc[0]~input_o\ & 
-- ((\direct_map|cach_instruction[5][30]~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][30]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[4][30]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][30]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[7][30]~combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux1~1_combout\);

-- Location: LABCELL_X29_Y8_N54
\direct_map|cach_instruction[9][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][30]~combout\ = ( \direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- \direct_map|cach_instruction[9][30]~combout\ ) ) ) # ( !\direct_map|Decoder0~9_combout\ & ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( \direct_map|cach_instruction[9][30]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[9][30]~combout\,
	datae => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[9][30]~combout\);

-- Location: LABCELL_X27_Y7_N39
\direct_map|cach_instruction[11][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][30]~combout\ = ( \direct_map|cach_instruction[11][30]~combout\ & ( (!\direct_map|Decoder0~11_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(30)) ) ) # ( !\direct_map|cach_instruction[11][30]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(30) & \direct_map|Decoder0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_Decoder0~11_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[11][30]~combout\,
	combout => \direct_map|cach_instruction[11][30]~combout\);

-- Location: LABCELL_X27_Y7_N21
\direct_map|cach_instruction[8][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][30]~combout\ = ( \direct_map|Decoder0~8_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~8_combout\ & ( \direct_map|cach_instruction[8][30]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_cach_instruction[8][30]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~8_combout\,
	combout => \direct_map|cach_instruction[8][30]~combout\);

-- Location: LABCELL_X27_Y7_N36
\direct_map|cach_instruction[10][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][30]~combout\ = ( \direct_map|Decoder0~10_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~10_combout\ & ( \direct_map|cach_instruction[10][30]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_cach_instruction[10][30]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~10_combout\,
	combout => \direct_map|cach_instruction[10][30]~combout\);

-- Location: MLABCELL_X25_Y7_N18
\direct_map|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux1~2_combout\ = ( \direct_map|cach_instruction[8][30]~combout\ & ( \direct_map|cach_instruction[10][30]~combout\ & ( (!\pc[0]~input_o\) # ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][30]~combout\)) # (\pc[1]~input_o\ & 
-- ((\direct_map|cach_instruction[11][30]~combout\)))) ) ) ) # ( !\direct_map|cach_instruction[8][30]~combout\ & ( \direct_map|cach_instruction[10][30]~combout\ & ( (!\pc[0]~input_o\ & (((\pc[1]~input_o\)))) # (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[9][30]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[11][30]~combout\))))) ) ) ) # ( \direct_map|cach_instruction[8][30]~combout\ & ( !\direct_map|cach_instruction[10][30]~combout\ & ( (!\pc[0]~input_o\ & 
-- (((!\pc[1]~input_o\)))) # (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][30]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[11][30]~combout\))))) ) ) ) # ( !\direct_map|cach_instruction[8][30]~combout\ & ( 
-- !\direct_map|cach_instruction[10][30]~combout\ & ( (\pc[0]~input_o\ & ((!\pc[1]~input_o\ & (\direct_map|cach_instruction[9][30]~combout\)) # (\pc[1]~input_o\ & ((\direct_map|cach_instruction[11][30]~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[9][30]~combout\,
	datab => \ALT_INV_pc[0]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[11][30]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \direct_map|ALT_INV_cach_instruction[8][30]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[10][30]~combout\,
	combout => \direct_map|Mux1~2_combout\);

-- Location: LABCELL_X30_Y5_N21
\direct_map|cach_instruction[2][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][30]~combout\ = ( \direct_map|Decoder0~2_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(30) ) ) # ( !\direct_map|Decoder0~2_combout\ & ( \direct_map|cach_instruction[2][30]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	datad => \direct_map|ALT_INV_cach_instruction[2][30]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~2_combout\,
	combout => \direct_map|cach_instruction[2][30]~combout\);

-- Location: LABCELL_X30_Y5_N30
\direct_map|cach_instruction[1][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][30]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][30]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (\direct_map|cach_instruction[1][30]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[1][30]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[1][30]~combout\);

-- Location: LABCELL_X30_Y5_N18
\direct_map|cach_instruction[0][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][30]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (\direct_map|cach_instruction[0][30]~combout\) # (\direct_map|Decoder0~0_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (!\direct_map|Decoder0~0_combout\ & \direct_map|cach_instruction[0][30]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~0_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][30]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[0][30]~combout\);

-- Location: LABCELL_X29_Y5_N21
\direct_map|cach_instruction[3][30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][30]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (\direct_map|cach_instruction[3][30]~combout\) # (\direct_map|Decoder0~3_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( 
-- (!\direct_map|Decoder0~3_combout\ & \direct_map|cach_instruction[3][30]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Decoder0~3_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][30]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \direct_map|cach_instruction[3][30]~combout\);

-- Location: LABCELL_X30_Y5_N0
\direct_map|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux1~0_combout\ = ( \pc[0]~input_o\ & ( \direct_map|cach_instruction[3][30]~combout\ & ( (\pc[1]~input_o\) # (\direct_map|cach_instruction[1][30]~combout\) ) ) ) # ( !\pc[0]~input_o\ & ( \direct_map|cach_instruction[3][30]~combout\ & ( 
-- (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][30]~combout\))) # (\pc[1]~input_o\ & (\direct_map|cach_instruction[2][30]~combout\)) ) ) ) # ( \pc[0]~input_o\ & ( !\direct_map|cach_instruction[3][30]~combout\ & ( 
-- (\direct_map|cach_instruction[1][30]~combout\ & !\pc[1]~input_o\) ) ) ) # ( !\pc[0]~input_o\ & ( !\direct_map|cach_instruction[3][30]~combout\ & ( (!\pc[1]~input_o\ & ((\direct_map|cach_instruction[0][30]~combout\))) # (\pc[1]~input_o\ & 
-- (\direct_map|cach_instruction[2][30]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[2][30]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[1][30]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[0][30]~combout\,
	datad => \ALT_INV_pc[1]~input_o\,
	datae => \ALT_INV_pc[0]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[3][30]~combout\,
	combout => \direct_map|Mux1~0_combout\);

-- Location: LABCELL_X27_Y7_N54
\direct_map|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux1~4_combout\ = ( \direct_map|Mux1~2_combout\ & ( \direct_map|Mux1~0_combout\ & ( (!\pc[2]~input_o\) # ((!\pc[3]~input_o\ & ((\direct_map|Mux1~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux1~3_combout\))) ) ) ) # ( 
-- !\direct_map|Mux1~2_combout\ & ( \direct_map|Mux1~0_combout\ & ( (!\pc[3]~input_o\ & (((!\pc[2]~input_o\) # (\direct_map|Mux1~1_combout\)))) # (\pc[3]~input_o\ & (\direct_map|Mux1~3_combout\ & ((\pc[2]~input_o\)))) ) ) ) # ( \direct_map|Mux1~2_combout\ & 
-- ( !\direct_map|Mux1~0_combout\ & ( (!\pc[3]~input_o\ & (((\direct_map|Mux1~1_combout\ & \pc[2]~input_o\)))) # (\pc[3]~input_o\ & (((!\pc[2]~input_o\)) # (\direct_map|Mux1~3_combout\))) ) ) ) # ( !\direct_map|Mux1~2_combout\ & ( 
-- !\direct_map|Mux1~0_combout\ & ( (\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|Mux1~1_combout\))) # (\pc[3]~input_o\ & (\direct_map|Mux1~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux1~3_combout\,
	datab => \ALT_INV_pc[3]~input_o\,
	datac => \direct_map|ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_pc[2]~input_o\,
	datae => \direct_map|ALT_INV_Mux1~2_combout\,
	dataf => \direct_map|ALT_INV_Mux1~0_combout\,
	combout => \direct_map|Mux1~4_combout\);

-- Location: LABCELL_X24_Y5_N45
\mux|s[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[30]~30_combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(30) & ( (!\hit~0_combout\) # (\direct_map|Mux1~4_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(30) & ( (\hit~0_combout\ & \direct_map|Mux1~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hit~0_combout\,
	datac => \direct_map|ALT_INV_Mux1~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(30),
	combout => \mux|s[30]~30_combout\);

-- Location: LABCELL_X27_Y8_N30
\direct_map|cach_instruction[10][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[10][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~10_combout\) # (\direct_map|cach_instruction[10][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[10][29]~combout\ & !\direct_map|Decoder0~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[10][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~10_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[10][29]~combout\);

-- Location: LABCELL_X27_Y9_N24
\direct_map|cach_instruction[14][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[14][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~14_combout\) # (\direct_map|cach_instruction[14][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[14][29]~combout\ & !\direct_map|Decoder0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[14][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~14_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[14][29]~combout\);

-- Location: LABCELL_X23_Y6_N48
\direct_map|cach_instruction[2][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[2][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|cach_instruction[2][29]~combout\) # (\direct_map|Decoder0~2_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (!\direct_map|Decoder0~2_combout\ & \direct_map|cach_instruction[2][29]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Decoder0~2_combout\,
	datac => \direct_map|ALT_INV_cach_instruction[2][29]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[2][29]~combout\);

-- Location: LABCELL_X27_Y8_N33
\direct_map|cach_instruction[6][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[6][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~6_combout\) # (\direct_map|cach_instruction[6][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[6][29]~combout\ & !\direct_map|Decoder0~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[6][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~6_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[6][29]~combout\);

-- Location: LABCELL_X27_Y8_N36
\direct_map|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux0~2_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[6][29]~combout\ & ( (!\pc[3]~input_o\) # (\direct_map|cach_instruction[14][29]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[6][29]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[2][29]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[10][29]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][29]~combout\ & ( (\pc[3]~input_o\ & 
-- \direct_map|cach_instruction[14][29]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[6][29]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[2][29]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[10][29]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \direct_map|ALT_INV_cach_instruction[10][29]~combout\,
	datac => \direct_map|ALT_INV_cach_instruction[14][29]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[2][29]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[6][29]~combout\,
	combout => \direct_map|Mux0~2_combout\);

-- Location: MLABCELL_X25_Y3_N18
\direct_map|cach_instruction[11][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[11][29]~combout\ = ( \direct_map|Decoder0~11_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(31) ) ) # ( !\direct_map|Decoder0~11_combout\ & ( \direct_map|cach_instruction[11][29]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \direct_map|ALT_INV_cach_instruction[11][29]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~11_combout\,
	combout => \direct_map|cach_instruction[11][29]~combout\);

-- Location: MLABCELL_X25_Y3_N48
\direct_map|cach_instruction[3][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[3][29]~combout\ = ( \direct_map|Decoder0~3_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(31) ) ) # ( !\direct_map|Decoder0~3_combout\ & ( \direct_map|cach_instruction[3][29]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \direct_map|ALT_INV_cach_instruction[3][29]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~3_combout\,
	combout => \direct_map|cach_instruction[3][29]~combout\);

-- Location: MLABCELL_X25_Y3_N21
\direct_map|cach_instruction[15][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[15][29]~combout\ = ( \direct_map|Decoder0~15_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(31) ) ) # ( !\direct_map|Decoder0~15_combout\ & ( \direct_map|cach_instruction[15][29]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datad => \direct_map|ALT_INV_cach_instruction[15][29]~combout\,
	dataf => \direct_map|ALT_INV_Decoder0~15_combout\,
	combout => \direct_map|cach_instruction[15][29]~combout\);

-- Location: MLABCELL_X25_Y3_N51
\direct_map|cach_instruction[7][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[7][29]~combout\ = ( \direct_map|cach_instruction[7][29]~combout\ & ( (!\direct_map|Decoder0~7_combout\) # (\U1|altsyncram_component|auto_generated|q_a\(31)) ) ) # ( !\direct_map|cach_instruction[7][29]~combout\ & ( 
-- (\U1|altsyncram_component|auto_generated|q_a\(31) & \direct_map|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	datac => \direct_map|ALT_INV_Decoder0~7_combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][29]~combout\,
	combout => \direct_map|cach_instruction[7][29]~combout\);

-- Location: MLABCELL_X25_Y3_N42
\direct_map|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux0~3_combout\ = ( \direct_map|cach_instruction[15][29]~combout\ & ( \direct_map|cach_instruction[7][29]~combout\ & ( ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[3][29]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[11][29]~combout\))) # (\pc[2]~input_o\) ) ) ) # ( !\direct_map|cach_instruction[15][29]~combout\ & ( \direct_map|cach_instruction[7][29]~combout\ & ( (!\pc[3]~input_o\ & (((\direct_map|cach_instruction[3][29]~combout\)) # 
-- (\pc[2]~input_o\))) # (\pc[3]~input_o\ & (!\pc[2]~input_o\ & (\direct_map|cach_instruction[11][29]~combout\))) ) ) ) # ( \direct_map|cach_instruction[15][29]~combout\ & ( !\direct_map|cach_instruction[7][29]~combout\ & ( (!\pc[3]~input_o\ & 
-- (!\pc[2]~input_o\ & ((\direct_map|cach_instruction[3][29]~combout\)))) # (\pc[3]~input_o\ & (((\direct_map|cach_instruction[11][29]~combout\)) # (\pc[2]~input_o\))) ) ) ) # ( !\direct_map|cach_instruction[15][29]~combout\ & ( 
-- !\direct_map|cach_instruction[7][29]~combout\ & ( (!\pc[2]~input_o\ & ((!\pc[3]~input_o\ & ((\direct_map|cach_instruction[3][29]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[11][29]~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pc[3]~input_o\,
	datab => \ALT_INV_pc[2]~input_o\,
	datac => \direct_map|ALT_INV_cach_instruction[11][29]~combout\,
	datad => \direct_map|ALT_INV_cach_instruction[3][29]~combout\,
	datae => \direct_map|ALT_INV_cach_instruction[15][29]~combout\,
	dataf => \direct_map|ALT_INV_cach_instruction[7][29]~combout\,
	combout => \direct_map|Mux0~3_combout\);

-- Location: LABCELL_X27_Y8_N27
\direct_map|cach_instruction[5][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[5][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|cach_instruction[5][29]~combout\) # (\direct_map|Decoder0~5_combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (!\direct_map|Decoder0~5_combout\ & \direct_map|cach_instruction[5][29]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_Decoder0~5_combout\,
	datad => \direct_map|ALT_INV_cach_instruction[5][29]~combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[5][29]~combout\);

-- Location: MLABCELL_X28_Y8_N18
\direct_map|cach_instruction[9][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[9][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~9_combout\) # (\direct_map|cach_instruction[9][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[9][29]~combout\ & !\direct_map|Decoder0~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[9][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~9_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[9][29]~combout\);

-- Location: LABCELL_X27_Y8_N42
\direct_map|cach_instruction[1][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[1][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~1_combout\) # (\direct_map|cach_instruction[1][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[1][29]~combout\ & !\direct_map|Decoder0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[1][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~1_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[1][29]~combout\);

-- Location: LABCELL_X27_Y8_N6
\direct_map|cach_instruction[13][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[13][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~13_combout\) # (\direct_map|cach_instruction[13][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[13][29]~combout\ & !\direct_map|Decoder0~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[13][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~13_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[13][29]~combout\);

-- Location: LABCELL_X27_Y8_N18
\direct_map|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux0~1_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[13][29]~combout\ & ( (\pc[3]~input_o\) # (\direct_map|cach_instruction[5][29]~combout\) ) ) ) # ( !\pc[2]~input_o\ & ( \direct_map|cach_instruction[13][29]~combout\ & ( 
-- (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[1][29]~combout\))) # (\pc[3]~input_o\ & (\direct_map|cach_instruction[9][29]~combout\)) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[13][29]~combout\ & ( 
-- (\direct_map|cach_instruction[5][29]~combout\ & !\pc[3]~input_o\) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[13][29]~combout\ & ( (!\pc[3]~input_o\ & ((\direct_map|cach_instruction[1][29]~combout\))) # (\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[9][29]~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[5][29]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[9][29]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[1][29]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[13][29]~combout\,
	combout => \direct_map|Mux0~1_combout\);

-- Location: LABCELL_X27_Y8_N24
\direct_map|cach_instruction[4][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[4][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~4_combout\) # (\direct_map|cach_instruction[4][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[4][29]~combout\ & !\direct_map|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[4][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~4_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[4][29]~combout\);

-- Location: LABCELL_X27_Y8_N12
\direct_map|cach_instruction[0][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[0][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~0_combout\) # (\direct_map|cach_instruction[0][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[0][29]~combout\ & !\direct_map|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_cach_instruction[0][29]~combout\,
	datac => \direct_map|ALT_INV_Decoder0~0_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[0][29]~combout\);

-- Location: MLABCELL_X28_Y9_N51
\direct_map|cach_instruction[12][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[12][29]~combout\ = ( \direct_map|Decoder0~12_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(31) ) ) # ( !\direct_map|Decoder0~12_combout\ & ( \direct_map|cach_instruction[12][29]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[12][29]~combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	dataf => \direct_map|ALT_INV_Decoder0~12_combout\,
	combout => \direct_map|cach_instruction[12][29]~combout\);

-- Location: LABCELL_X27_Y8_N48
\direct_map|cach_instruction[8][29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|cach_instruction[8][29]~combout\ = ( \U1|altsyncram_component|auto_generated|q_a\(31) & ( (\direct_map|Decoder0~8_combout\) # (\direct_map|cach_instruction[8][29]~combout\) ) ) # ( !\U1|altsyncram_component|auto_generated|q_a\(31) & ( 
-- (\direct_map|cach_instruction[8][29]~combout\ & !\direct_map|Decoder0~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \direct_map|ALT_INV_cach_instruction[8][29]~combout\,
	datad => \direct_map|ALT_INV_Decoder0~8_combout\,
	dataf => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	combout => \direct_map|cach_instruction[8][29]~combout\);

-- Location: LABCELL_X27_Y8_N0
\direct_map|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux0~0_combout\ = ( \pc[2]~input_o\ & ( \direct_map|cach_instruction[8][29]~combout\ & ( (!\pc[3]~input_o\ & (\direct_map|cach_instruction[4][29]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[12][29]~combout\))) ) ) ) # ( 
-- !\pc[2]~input_o\ & ( \direct_map|cach_instruction[8][29]~combout\ & ( (\pc[3]~input_o\) # (\direct_map|cach_instruction[0][29]~combout\) ) ) ) # ( \pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][29]~combout\ & ( (!\pc[3]~input_o\ & 
-- (\direct_map|cach_instruction[4][29]~combout\)) # (\pc[3]~input_o\ & ((\direct_map|cach_instruction[12][29]~combout\))) ) ) ) # ( !\pc[2]~input_o\ & ( !\direct_map|cach_instruction[8][29]~combout\ & ( (\direct_map|cach_instruction[0][29]~combout\ & 
-- !\pc[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_cach_instruction[4][29]~combout\,
	datab => \direct_map|ALT_INV_cach_instruction[0][29]~combout\,
	datac => \ALT_INV_pc[3]~input_o\,
	datad => \direct_map|ALT_INV_cach_instruction[12][29]~combout\,
	datae => \ALT_INV_pc[2]~input_o\,
	dataf => \direct_map|ALT_INV_cach_instruction[8][29]~combout\,
	combout => \direct_map|Mux0~0_combout\);

-- Location: LABCELL_X27_Y8_N54
\direct_map|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \direct_map|Mux0~4_combout\ = ( \direct_map|Mux0~0_combout\ & ( \pc[1]~input_o\ & ( (!\pc[0]~input_o\ & (\direct_map|Mux0~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux0~3_combout\))) ) ) ) # ( !\direct_map|Mux0~0_combout\ & ( \pc[1]~input_o\ & ( 
-- (!\pc[0]~input_o\ & (\direct_map|Mux0~2_combout\)) # (\pc[0]~input_o\ & ((\direct_map|Mux0~3_combout\))) ) ) ) # ( \direct_map|Mux0~0_combout\ & ( !\pc[1]~input_o\ & ( (!\pc[0]~input_o\) # (\direct_map|Mux0~1_combout\) ) ) ) # ( 
-- !\direct_map|Mux0~0_combout\ & ( !\pc[1]~input_o\ & ( (\direct_map|Mux0~1_combout\ & \pc[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \direct_map|ALT_INV_Mux0~2_combout\,
	datab => \direct_map|ALT_INV_Mux0~3_combout\,
	datac => \direct_map|ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_pc[0]~input_o\,
	datae => \direct_map|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \direct_map|Mux0~4_combout\);

-- Location: MLABCELL_X25_Y8_N24
\mux|s[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|s[31]~31_combout\ = ( \hit~0_combout\ & ( \direct_map|Mux0~4_combout\ ) ) # ( !\hit~0_combout\ & ( \U1|altsyncram_component|auto_generated|q_a\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \direct_map|ALT_INV_Mux0~4_combout\,
	datac => \U1|altsyncram_component|auto_generated|ALT_INV_q_a\(31),
	dataf => \ALT_INV_hit~0_combout\,
	combout => \mux|s[31]~31_combout\);

-- Location: LABCELL_X83_Y70_N0
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


