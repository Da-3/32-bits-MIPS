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

-- DATE "11/15/2023 16:22:39"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	ALU_DECODER IS
    PORT (
	ALUOP : IN std_logic_vector(1 DOWNTO 0);
	FUNCT : IN std_logic_vector(5 DOWNTO 0);
	F : OUT std_logic_vector(2 DOWNTO 0)
	);
END ALU_DECODER;

-- Design Ports Information
-- FUNCT[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[5]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_DECODER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUOP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_FUNCT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(2 DOWNTO 0);
SIGNAL \FUNCT[3]~input_o\ : std_logic;
SIGNAL \FUNCT[4]~input_o\ : std_logic;
SIGNAL \FUNCT[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FUNCT[0]~input_o\ : std_logic;
SIGNAL \ALUOP[1]~input_o\ : std_logic;
SIGNAL \ALUOP[0]~input_o\ : std_logic;
SIGNAL \F[0]$latch~combout\ : std_logic;
SIGNAL \FUNCT[1]~input_o\ : std_logic;
SIGNAL \F[1]$latch~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \FUNCT[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \F[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_F[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_F[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_F[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_FUNCT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FUNCT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FUNCT[2]~input_o\ : std_logic;

BEGIN

ww_ALUOP <= ALUOP;
ww_FUNCT <= FUNCT;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_F[0]$latch~combout\ <= NOT \F[0]$latch~combout\;
\ALT_INV_F[2]$latch~combout\ <= NOT \F[2]$latch~combout\;
\ALT_INV_F[1]$latch~combout\ <= NOT \F[1]$latch~combout\;
\ALT_INV_FUNCT[0]~input_o\ <= NOT \FUNCT[0]~input_o\;
\ALT_INV_ALUOP[0]~input_o\ <= NOT \ALUOP[0]~input_o\;
\ALT_INV_ALUOP[1]~input_o\ <= NOT \ALUOP[1]~input_o\;
\ALT_INV_FUNCT[1]~input_o\ <= NOT \FUNCT[1]~input_o\;
\ALT_INV_FUNCT[2]~input_o\ <= NOT \FUNCT[2]~input_o\;

-- Location: IOOBUF_X89_Y20_N79
\F[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_F(0));

-- Location: IOOBUF_X89_Y21_N39
\F[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_F(1));

-- Location: IOOBUF_X89_Y23_N39
\F[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_F(2));

-- Location: IOIBUF_X89_Y21_N55
\FUNCT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(0),
	o => \FUNCT[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\ALUOP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOP(1),
	o => \ALUOP[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\ALUOP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOP(0),
	o => \ALUOP[0]~input_o\);

-- Location: LABCELL_X88_Y21_N36
\F[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \F[0]$latch~combout\ = ( \F[0]$latch~combout\ & ( \ALUOP[0]~input_o\ & ( \ALUOP[1]~input_o\ ) ) ) # ( \F[0]$latch~combout\ & ( !\ALUOP[0]~input_o\ & ( (\FUNCT[0]~input_o\ & \ALUOP[1]~input_o\) ) ) ) # ( !\F[0]$latch~combout\ & ( !\ALUOP[0]~input_o\ & ( 
-- (\FUNCT[0]~input_o\ & \ALUOP[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FUNCT[0]~input_o\,
	datac => \ALT_INV_ALUOP[1]~input_o\,
	datae => \ALT_INV_F[0]$latch~combout\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \F[0]$latch~combout\);

-- Location: IOIBUF_X89_Y20_N44
\FUNCT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(1),
	o => \FUNCT[1]~input_o\);

-- Location: LABCELL_X88_Y21_N45
\F[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \F[1]$latch~combout\ = ( \F[1]$latch~combout\ & ( \ALUOP[0]~input_o\ ) ) # ( !\F[1]$latch~combout\ & ( \ALUOP[0]~input_o\ & ( !\ALUOP[1]~input_o\ ) ) ) # ( \F[1]$latch~combout\ & ( !\ALUOP[0]~input_o\ & ( (!\ALUOP[1]~input_o\) # (\FUNCT[1]~input_o\) ) ) ) 
-- # ( !\F[1]$latch~combout\ & ( !\ALUOP[0]~input_o\ & ( (!\ALUOP[1]~input_o\) # (\FUNCT[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOP[1]~input_o\,
	datac => \ALT_INV_FUNCT[1]~input_o\,
	datae => \ALT_INV_F[1]$latch~combout\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \F[1]$latch~combout\);

-- Location: LABCELL_X88_Y21_N18
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \ALUOP[0]~input_o\ ) # ( !\ALUOP[0]~input_o\ & ( \ALUOP[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUOP[1]~input_o\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X88_Y21_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\ALUOP[1]~input_o\ & ( \ALUOP[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUOP[0]~input_o\,
	dataf => \ALT_INV_ALUOP[1]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X89_Y21_N4
\FUNCT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(2),
	o => \FUNCT[2]~input_o\);

-- Location: LABCELL_X88_Y21_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ALUOP[0]~input_o\ & ( \ALUOP[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOP[1]~input_o\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X88_Y21_N57
\F[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \F[2]$latch~combout\ = ( \F[2]$latch~combout\ & ( \Equal0~0_combout\ & ( (\Equal0~1_combout\ & ((\FUNCT[2]~input_o\) # (\Equal0~2_combout\))) ) ) ) # ( !\F[2]$latch~combout\ & ( \Equal0~0_combout\ & ( (\Equal0~1_combout\ & ((\FUNCT[2]~input_o\) # 
-- (\Equal0~2_combout\))) ) ) ) # ( \F[2]$latch~combout\ & ( !\Equal0~0_combout\ & ( \Equal0~1_combout\ ) ) ) # ( !\F[2]$latch~combout\ & ( !\Equal0~0_combout\ & ( (\Equal0~1_combout\ & \Equal0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010101010101010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_FUNCT[2]~input_o\,
	datae => \ALT_INV_F[2]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \F[2]$latch~combout\);

-- Location: IOIBUF_X4_Y81_N52
\FUNCT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(3),
	o => \FUNCT[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\FUNCT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(4),
	o => \FUNCT[4]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\FUNCT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(5),
	o => \FUNCT[5]~input_o\);

-- Location: LABCELL_X7_Y39_N3
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


