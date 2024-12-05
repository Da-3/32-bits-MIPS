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

-- DATE "02/02/2024 15:47:20"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	forwarding_decode IS
    PORT (
	IF_ID_RS : IN std_logic_vector(4 DOWNTO 0);
	IF_ID_RT : IN std_logic_vector(4 DOWNTO 0);
	EX_MEM_RD : IN std_logic_vector(4 DOWNTO 0);
	forwardingA : OUT std_logic;
	forwardingB : OUT std_logic
	);
END forwarding_decode;

-- Design Ports Information
-- forwardingA	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- forwardingB	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RS[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RD[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RS[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RD[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RS[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RD[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RS[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RD[3]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RS[4]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RD[4]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RT[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RT[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RT[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RT[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IF_ID_RT[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF forwarding_decode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IF_ID_RS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_IF_ID_RT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_EX_MEM_RD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_forwardingA : std_logic;
SIGNAL ww_forwardingB : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IF_ID_RS[0]~input_o\ : std_logic;
SIGNAL \EX_MEM_RD[0]~input_o\ : std_logic;
SIGNAL \IF_ID_RS[1]~input_o\ : std_logic;
SIGNAL \EX_MEM_RD[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \IF_ID_RS[4]~input_o\ : std_logic;
SIGNAL \IF_ID_RS[3]~input_o\ : std_logic;
SIGNAL \EX_MEM_RD[3]~input_o\ : std_logic;
SIGNAL \EX_MEM_RD[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \IF_ID_RS[2]~input_o\ : std_logic;
SIGNAL \EX_MEM_RD[2]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \IF_ID_RT[1]~input_o\ : std_logic;
SIGNAL \IF_ID_RT[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \IF_ID_RT[4]~input_o\ : std_logic;
SIGNAL \IF_ID_RT[3]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \IF_ID_RT[2]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RT[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RS[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RD[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RS[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RT[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RD[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RS[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RD[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RS[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RD[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RS[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RD[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RT[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IF_ID_RT[0]~input_o\ : std_logic;

BEGIN

ww_IF_ID_RS <= IF_ID_RS;
ww_IF_ID_RT <= IF_ID_RT;
ww_EX_MEM_RD <= EX_MEM_RD;
forwardingA <= ww_forwardingA;
forwardingB <= ww_forwardingB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IF_ID_RT[1]~input_o\ <= NOT \IF_ID_RT[1]~input_o\;
\ALT_INV_IF_ID_RT[3]~input_o\ <= NOT \IF_ID_RT[3]~input_o\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_IF_ID_RS[2]~input_o\ <= NOT \IF_ID_RS[2]~input_o\;
\ALT_INV_EX_MEM_RD[2]~input_o\ <= NOT \EX_MEM_RD[2]~input_o\;
\ALT_INV_IF_ID_RS[0]~input_o\ <= NOT \IF_ID_RS[0]~input_o\;
\ALT_INV_IF_ID_RT[4]~input_o\ <= NOT \IF_ID_RT[4]~input_o\;
\ALT_INV_EX_MEM_RD[0]~input_o\ <= NOT \EX_MEM_RD[0]~input_o\;
\ALT_INV_IF_ID_RS[1]~input_o\ <= NOT \IF_ID_RS[1]~input_o\;
\ALT_INV_EX_MEM_RD[1]~input_o\ <= NOT \EX_MEM_RD[1]~input_o\;
\ALT_INV_IF_ID_RS[3]~input_o\ <= NOT \IF_ID_RS[3]~input_o\;
\ALT_INV_EX_MEM_RD[3]~input_o\ <= NOT \EX_MEM_RD[3]~input_o\;
\ALT_INV_IF_ID_RS[4]~input_o\ <= NOT \IF_ID_RS[4]~input_o\;
\ALT_INV_EX_MEM_RD[4]~input_o\ <= NOT \EX_MEM_RD[4]~input_o\;
\ALT_INV_IF_ID_RT[2]~input_o\ <= NOT \IF_ID_RT[2]~input_o\;
\ALT_INV_IF_ID_RT[0]~input_o\ <= NOT \IF_ID_RT[0]~input_o\;

-- Location: IOOBUF_X89_Y13_N22
\forwardingA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => ww_forwardingA);

-- Location: IOOBUF_X89_Y13_N56
\forwardingB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_forwardingB);

-- Location: IOIBUF_X89_Y16_N4
\IF_ID_RS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RS(0),
	o => \IF_ID_RS[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\EX_MEM_RD[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RD(0),
	o => \EX_MEM_RD[0]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\IF_ID_RS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RS(1),
	o => \IF_ID_RS[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\EX_MEM_RD[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RD(1),
	o => \EX_MEM_RD[1]~input_o\);

-- Location: LABCELL_X88_Y16_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \EX_MEM_RD[1]~input_o\ & ( (\IF_ID_RS[1]~input_o\ & (!\IF_ID_RS[0]~input_o\ $ (\EX_MEM_RD[0]~input_o\))) ) ) # ( !\EX_MEM_RD[1]~input_o\ & ( (!\IF_ID_RS[1]~input_o\ & (!\IF_ID_RS[0]~input_o\ $ (\EX_MEM_RD[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_RS[0]~input_o\,
	datac => \ALT_INV_EX_MEM_RD[0]~input_o\,
	datad => \ALT_INV_IF_ID_RS[1]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X89_Y13_N38
\IF_ID_RS[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RS(4),
	o => \IF_ID_RS[4]~input_o\);

-- Location: IOIBUF_X89_Y15_N55
\IF_ID_RS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RS(3),
	o => \IF_ID_RS[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\EX_MEM_RD[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RD(3),
	o => \EX_MEM_RD[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\EX_MEM_RD[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RD(4),
	o => \EX_MEM_RD[4]~input_o\);

-- Location: LABCELL_X88_Y16_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \EX_MEM_RD[4]~input_o\ & ( (\IF_ID_RS[4]~input_o\ & (!\IF_ID_RS[3]~input_o\ $ (\EX_MEM_RD[3]~input_o\))) ) ) # ( !\EX_MEM_RD[4]~input_o\ & ( (!\IF_ID_RS[4]~input_o\ & (!\IF_ID_RS[3]~input_o\ $ (\EX_MEM_RD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IF_ID_RS[4]~input_o\,
	datac => \ALT_INV_IF_ID_RS[3]~input_o\,
	datad => \ALT_INV_EX_MEM_RD[3]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X89_Y13_N4
\IF_ID_RS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RS(2),
	o => \IF_ID_RS[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\EX_MEM_RD[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RD(2),
	o => \EX_MEM_RD[2]~input_o\);

-- Location: LABCELL_X88_Y16_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \IF_ID_RS[2]~input_o\ & ( \EX_MEM_RD[2]~input_o\ & ( (\Equal0~0_combout\ & \Equal0~1_combout\) ) ) ) # ( !\IF_ID_RS[2]~input_o\ & ( !\EX_MEM_RD[2]~input_o\ & ( (\Equal0~0_combout\ & \Equal0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_IF_ID_RS[2]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[2]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X89_Y16_N21
\IF_ID_RT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RT(1),
	o => \IF_ID_RT[1]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\IF_ID_RT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RT(0),
	o => \IF_ID_RT[0]~input_o\);

-- Location: LABCELL_X88_Y16_N45
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \EX_MEM_RD[0]~input_o\ & ( (\IF_ID_RT[0]~input_o\ & (!\IF_ID_RT[1]~input_o\ $ (\EX_MEM_RD[1]~input_o\))) ) ) # ( !\EX_MEM_RD[0]~input_o\ & ( (!\IF_ID_RT[0]~input_o\ & (!\IF_ID_RT[1]~input_o\ $ (\EX_MEM_RD[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IF_ID_RT[1]~input_o\,
	datac => \ALT_INV_IF_ID_RT[0]~input_o\,
	datad => \ALT_INV_EX_MEM_RD[1]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X89_Y15_N4
\IF_ID_RT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RT(4),
	o => \IF_ID_RT[4]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\IF_ID_RT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RT(3),
	o => \IF_ID_RT[3]~input_o\);

-- Location: LABCELL_X88_Y16_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \EX_MEM_RD[4]~input_o\ & ( (\IF_ID_RT[4]~input_o\ & (!\IF_ID_RT[3]~input_o\ $ (\EX_MEM_RD[3]~input_o\))) ) ) # ( !\EX_MEM_RD[4]~input_o\ & ( (!\IF_ID_RT[4]~input_o\ & (!\IF_ID_RT[3]~input_o\ $ (\EX_MEM_RD[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IF_ID_RT[4]~input_o\,
	datac => \ALT_INV_IF_ID_RT[3]~input_o\,
	datad => \ALT_INV_EX_MEM_RD[3]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[4]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X89_Y15_N38
\IF_ID_RT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IF_ID_RT(2),
	o => \IF_ID_RT[2]~input_o\);

-- Location: LABCELL_X88_Y16_N51
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \IF_ID_RT[2]~input_o\ & ( \EX_MEM_RD[2]~input_o\ & ( (\Equal1~0_combout\ & \Equal1~1_combout\) ) ) ) # ( !\IF_ID_RT[2]~input_o\ & ( !\EX_MEM_RD[2]~input_o\ & ( (\Equal1~0_combout\ & \Equal1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datae => \ALT_INV_IF_ID_RT[2]~input_o\,
	dataf => \ALT_INV_EX_MEM_RD[2]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X7_Y4_N0
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


