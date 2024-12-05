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

-- DATE "11/17/2023 22:01:40"

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

ENTITY 	EX_FORWARDING1 IS
    PORT (
	EX_MEM_RegisterRd : IN std_logic_vector(4 DOWNTO 0);
	MEM_WB_RegisterRd : IN std_logic_vector(4 DOWNTO 0);
	ID_EX_RegisterRs : IN std_logic_vector(4 DOWNTO 0);
	ID_EX_RegisterRt : IN std_logic_vector(4 DOWNTO 0);
	EX_MEM_RegWrite : IN std_logic;
	MEM_WB_RegWrite : IN std_logic;
	ForwardA : OUT std_logic_vector(1 DOWNTO 0);
	ForwardB : OUT std_logic_vector(1 DOWNTO 0)
	);
END EX_FORWARDING1;

-- Design Ports Information
-- ForwardA[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardA[1]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardB[0]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ForwardB[1]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRs[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegisterRd[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegisterRd[0]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRs[0]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegisterRd[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRs[1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegisterRd[2]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRs[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegisterRd[3]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRs[3]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegisterRd[4]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegWrite	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegisterRd[0]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegisterRd[1]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegisterRd[2]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_RegisterRd[3]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_RegWrite	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRt[4]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRt[0]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRt[1]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRt[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID_EX_RegisterRt[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EX_FORWARDING1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_EX_MEM_RegisterRd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_MEM_WB_RegisterRd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ID_EX_RegisterRs : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ID_EX_RegisterRt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_EX_MEM_RegWrite : std_logic;
SIGNAL ww_MEM_WB_RegWrite : std_logic;
SIGNAL ww_ForwardA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ForwardB : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MEM_WB_RegisterRd[4]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRs[3]~input_o\ : std_logic;
SIGNAL \EX_MEM_RegisterRd[3]~input_o\ : std_logic;
SIGNAL \EX_MEM_RegisterRd[4]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRs[4]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \EX_MEM_RegisterRd[1]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRs[2]~input_o\ : std_logic;
SIGNAL \EX_MEM_RegisterRd[0]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRs[0]~input_o\ : std_logic;
SIGNAL \EX_MEM_RegisterRd[2]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRs[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \MEM_WB_RegisterRd[1]~input_o\ : std_logic;
SIGNAL \MEM_WB_RegWrite~input_o\ : std_logic;
SIGNAL \MEM_WB_RegisterRd[0]~input_o\ : std_logic;
SIGNAL \ForwardA~0_combout\ : std_logic;
SIGNAL \MEM_WB_RegisterRd[2]~input_o\ : std_logic;
SIGNAL \MEM_WB_RegisterRd[3]~input_o\ : std_logic;
SIGNAL \ForwardA~1_combout\ : std_logic;
SIGNAL \ForwardA~2_combout\ : std_logic;
SIGNAL \EX_MEM_RegWrite~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ID_EX_RegisterRt[3]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRt[2]~input_o\ : std_logic;
SIGNAL \ForwardB~1_combout\ : std_logic;
SIGNAL \ID_EX_RegisterRt[0]~input_o\ : std_logic;
SIGNAL \ID_EX_RegisterRt[1]~input_o\ : std_logic;
SIGNAL \ForwardB~0_combout\ : std_logic;
SIGNAL \ID_EX_RegisterRt[4]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \ForwardB~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ForwardA~0_combout\ : std_logic;
SIGNAL \ALT_INV_ForwardA~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_ForwardB~0_combout\ : std_logic;
SIGNAL \ALT_INV_ForwardB~1_combout\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegisterRd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRs[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegisterRd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRs[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegisterRd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRs[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegisterRd[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRt[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRt[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRt[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRt[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRt[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegWrite~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegisterRd[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegisterRd[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegisterRd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegisterRd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_RegWrite~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegisterRd[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRs[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_RegisterRd[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ID_EX_RegisterRs[2]~input_o\ : std_logic;

BEGIN

ww_EX_MEM_RegisterRd <= EX_MEM_RegisterRd;
ww_MEM_WB_RegisterRd <= MEM_WB_RegisterRd;
ww_ID_EX_RegisterRs <= ID_EX_RegisterRs;
ww_ID_EX_RegisterRt <= ID_EX_RegisterRt;
ww_EX_MEM_RegWrite <= EX_MEM_RegWrite;
ww_MEM_WB_RegWrite <= MEM_WB_RegWrite;
ForwardA <= ww_ForwardA;
ForwardB <= ww_ForwardB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_ForwardA~0_combout\ <= NOT \ForwardA~0_combout\;
\ALT_INV_ForwardA~1_combout\ <= NOT \ForwardA~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_ForwardB~0_combout\ <= NOT \ForwardB~0_combout\;
\ALT_INV_ForwardB~1_combout\ <= NOT \ForwardB~1_combout\;
\ALT_INV_EX_MEM_RegisterRd[0]~input_o\ <= NOT \EX_MEM_RegisterRd[0]~input_o\;
\ALT_INV_ID_EX_RegisterRs[0]~input_o\ <= NOT \ID_EX_RegisterRs[0]~input_o\;
\ALT_INV_EX_MEM_RegisterRd[1]~input_o\ <= NOT \EX_MEM_RegisterRd[1]~input_o\;
\ALT_INV_ID_EX_RegisterRs[1]~input_o\ <= NOT \ID_EX_RegisterRs[1]~input_o\;
\ALT_INV_EX_MEM_RegisterRd[2]~input_o\ <= NOT \EX_MEM_RegisterRd[2]~input_o\;
\ALT_INV_ID_EX_RegisterRs[4]~input_o\ <= NOT \ID_EX_RegisterRs[4]~input_o\;
\ALT_INV_MEM_WB_RegisterRd[4]~input_o\ <= NOT \MEM_WB_RegisterRd[4]~input_o\;
\ALT_INV_ID_EX_RegisterRt[3]~input_o\ <= NOT \ID_EX_RegisterRt[3]~input_o\;
\ALT_INV_ID_EX_RegisterRt[2]~input_o\ <= NOT \ID_EX_RegisterRt[2]~input_o\;
\ALT_INV_ID_EX_RegisterRt[1]~input_o\ <= NOT \ID_EX_RegisterRt[1]~input_o\;
\ALT_INV_ID_EX_RegisterRt[0]~input_o\ <= NOT \ID_EX_RegisterRt[0]~input_o\;
\ALT_INV_ID_EX_RegisterRt[4]~input_o\ <= NOT \ID_EX_RegisterRt[4]~input_o\;
\ALT_INV_EX_MEM_RegWrite~input_o\ <= NOT \EX_MEM_RegWrite~input_o\;
\ALT_INV_MEM_WB_RegisterRd[3]~input_o\ <= NOT \MEM_WB_RegisterRd[3]~input_o\;
\ALT_INV_MEM_WB_RegisterRd[2]~input_o\ <= NOT \MEM_WB_RegisterRd[2]~input_o\;
\ALT_INV_MEM_WB_RegisterRd[1]~input_o\ <= NOT \MEM_WB_RegisterRd[1]~input_o\;
\ALT_INV_MEM_WB_RegisterRd[0]~input_o\ <= NOT \MEM_WB_RegisterRd[0]~input_o\;
\ALT_INV_MEM_WB_RegWrite~input_o\ <= NOT \MEM_WB_RegWrite~input_o\;
\ALT_INV_EX_MEM_RegisterRd[4]~input_o\ <= NOT \EX_MEM_RegisterRd[4]~input_o\;
\ALT_INV_ID_EX_RegisterRs[3]~input_o\ <= NOT \ID_EX_RegisterRs[3]~input_o\;
\ALT_INV_EX_MEM_RegisterRd[3]~input_o\ <= NOT \EX_MEM_RegisterRd[3]~input_o\;
\ALT_INV_ID_EX_RegisterRs[2]~input_o\ <= NOT \ID_EX_RegisterRs[2]~input_o\;

-- Location: IOOBUF_X60_Y0_N19
\ForwardA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ForwardA~2_combout\,
	devoe => ww_devoe,
	o => ww_ForwardA(0));

-- Location: IOOBUF_X72_Y0_N36
\ForwardA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => ww_ForwardA(1));

-- Location: IOOBUF_X72_Y0_N53
\ForwardB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ForwardB~2_combout\,
	devoe => ww_devoe,
	o => ww_ForwardB(0));

-- Location: IOOBUF_X62_Y0_N19
\ForwardB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~1_combout\,
	devoe => ww_devoe,
	o => ww_ForwardB(1));

-- Location: IOIBUF_X66_Y0_N41
\MEM_WB_RegisterRd[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegisterRd(4),
	o => \MEM_WB_RegisterRd[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\ID_EX_RegisterRs[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRs(3),
	o => \ID_EX_RegisterRs[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\EX_MEM_RegisterRd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegisterRd(3),
	o => \EX_MEM_RegisterRd[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\EX_MEM_RegisterRd[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegisterRd(4),
	o => \EX_MEM_RegisterRd[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\ID_EX_RegisterRs[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRs(4),
	o => \ID_EX_RegisterRs[4]~input_o\);

-- Location: LABCELL_X66_Y1_N9
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \ID_EX_RegisterRs[4]~input_o\ & ( (\EX_MEM_RegisterRd[4]~input_o\ & (!\ID_EX_RegisterRs[3]~input_o\ $ (\EX_MEM_RegisterRd[3]~input_o\))) ) ) # ( !\ID_EX_RegisterRs[4]~input_o\ & ( (!\EX_MEM_RegisterRd[4]~input_o\ & 
-- (!\ID_EX_RegisterRs[3]~input_o\ $ (\EX_MEM_RegisterRd[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ID_EX_RegisterRs[3]~input_o\,
	datac => \ALT_INV_EX_MEM_RegisterRd[3]~input_o\,
	datad => \ALT_INV_EX_MEM_RegisterRd[4]~input_o\,
	dataf => \ALT_INV_ID_EX_RegisterRs[4]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X68_Y0_N18
\EX_MEM_RegisterRd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegisterRd(1),
	o => \EX_MEM_RegisterRd[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\ID_EX_RegisterRs[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRs(2),
	o => \ID_EX_RegisterRs[2]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\EX_MEM_RegisterRd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegisterRd(0),
	o => \EX_MEM_RegisterRd[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\ID_EX_RegisterRs[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRs(0),
	o => \ID_EX_RegisterRs[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\EX_MEM_RegisterRd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegisterRd(2),
	o => \EX_MEM_RegisterRd[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\ID_EX_RegisterRs[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRs(1),
	o => \ID_EX_RegisterRs[1]~input_o\);

-- Location: LABCELL_X66_Y1_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \EX_MEM_RegisterRd[2]~input_o\ & ( \ID_EX_RegisterRs[1]~input_o\ & ( (\EX_MEM_RegisterRd[1]~input_o\ & (\ID_EX_RegisterRs[2]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRs[0]~input_o\)))) ) ) ) # ( 
-- !\EX_MEM_RegisterRd[2]~input_o\ & ( \ID_EX_RegisterRs[1]~input_o\ & ( (\EX_MEM_RegisterRd[1]~input_o\ & (!\ID_EX_RegisterRs[2]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRs[0]~input_o\)))) ) ) ) # ( \EX_MEM_RegisterRd[2]~input_o\ & ( 
-- !\ID_EX_RegisterRs[1]~input_o\ & ( (!\EX_MEM_RegisterRd[1]~input_o\ & (\ID_EX_RegisterRs[2]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRs[0]~input_o\)))) ) ) ) # ( !\EX_MEM_RegisterRd[2]~input_o\ & ( !\ID_EX_RegisterRs[1]~input_o\ & ( 
-- (!\EX_MEM_RegisterRd[1]~input_o\ & (!\ID_EX_RegisterRs[2]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRs[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EX_MEM_RegisterRd[1]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRs[2]~input_o\,
	datac => \ALT_INV_EX_MEM_RegisterRd[0]~input_o\,
	datad => \ALT_INV_ID_EX_RegisterRs[0]~input_o\,
	datae => \ALT_INV_EX_MEM_RegisterRd[2]~input_o\,
	dataf => \ALT_INV_ID_EX_RegisterRs[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X60_Y0_N35
\MEM_WB_RegisterRd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegisterRd(1),
	o => \MEM_WB_RegisterRd[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\MEM_WB_RegWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegWrite,
	o => \MEM_WB_RegWrite~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\MEM_WB_RegisterRd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegisterRd(0),
	o => \MEM_WB_RegisterRd[0]~input_o\);

-- Location: LABCELL_X66_Y1_N45
\ForwardA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardA~0_combout\ = ( \MEM_WB_RegisterRd[0]~input_o\ & ( (\ID_EX_RegisterRs[0]~input_o\ & (\MEM_WB_RegWrite~input_o\ & (!\MEM_WB_RegisterRd[1]~input_o\ $ (\ID_EX_RegisterRs[1]~input_o\)))) ) ) # ( !\MEM_WB_RegisterRd[0]~input_o\ & ( 
-- (!\ID_EX_RegisterRs[0]~input_o\ & (\MEM_WB_RegWrite~input_o\ & (!\MEM_WB_RegisterRd[1]~input_o\ $ (\ID_EX_RegisterRs[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MEM_WB_RegisterRd[1]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRs[0]~input_o\,
	datac => \ALT_INV_MEM_WB_RegWrite~input_o\,
	datad => \ALT_INV_ID_EX_RegisterRs[1]~input_o\,
	dataf => \ALT_INV_MEM_WB_RegisterRd[0]~input_o\,
	combout => \ForwardA~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\MEM_WB_RegisterRd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegisterRd(2),
	o => \MEM_WB_RegisterRd[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\MEM_WB_RegisterRd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_RegisterRd(3),
	o => \MEM_WB_RegisterRd[3]~input_o\);

-- Location: LABCELL_X66_Y1_N6
\ForwardA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardA~1_combout\ = ( \MEM_WB_RegisterRd[3]~input_o\ & ( (\ID_EX_RegisterRs[3]~input_o\ & (!\ID_EX_RegisterRs[2]~input_o\ $ (\MEM_WB_RegisterRd[2]~input_o\))) ) ) # ( !\MEM_WB_RegisterRd[3]~input_o\ & ( (!\ID_EX_RegisterRs[3]~input_o\ & 
-- (!\ID_EX_RegisterRs[2]~input_o\ $ (\MEM_WB_RegisterRd[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ID_EX_RegisterRs[3]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRs[2]~input_o\,
	datac => \ALT_INV_MEM_WB_RegisterRd[2]~input_o\,
	dataf => \ALT_INV_MEM_WB_RegisterRd[3]~input_o\,
	combout => \ForwardA~1_combout\);

-- Location: LABCELL_X66_Y1_N48
\ForwardA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardA~2_combout\ = ( \ForwardA~0_combout\ & ( \ForwardA~1_combout\ & ( (!\Equal0~1_combout\ & (!\MEM_WB_RegisterRd[4]~input_o\ $ ((\ID_EX_RegisterRs[4]~input_o\)))) # (\Equal0~1_combout\ & (!\Equal0~0_combout\ & (!\MEM_WB_RegisterRd[4]~input_o\ $ 
-- (\ID_EX_RegisterRs[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MEM_WB_RegisterRd[4]~input_o\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_ID_EX_RegisterRs[4]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_ForwardA~0_combout\,
	dataf => \ALT_INV_ForwardA~1_combout\,
	combout => \ForwardA~2_combout\);

-- Location: IOIBUF_X68_Y0_N1
\EX_MEM_RegWrite~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_RegWrite,
	o => \EX_MEM_RegWrite~input_o\);

-- Location: LABCELL_X66_Y1_N42
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \Equal0~0_combout\ & ( (\EX_MEM_RegWrite~input_o\ & \Equal0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_EX_MEM_RegWrite~input_o\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X64_Y0_N18
\ID_EX_RegisterRt[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRt(3),
	o => \ID_EX_RegisterRt[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\ID_EX_RegisterRt[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRt(2),
	o => \ID_EX_RegisterRt[2]~input_o\);

-- Location: LABCELL_X66_Y1_N0
\ForwardB~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardB~1_combout\ = ( \MEM_WB_RegisterRd[2]~input_o\ & ( (\ID_EX_RegisterRt[2]~input_o\ & (!\ID_EX_RegisterRt[3]~input_o\ $ (\MEM_WB_RegisterRd[3]~input_o\))) ) ) # ( !\MEM_WB_RegisterRd[2]~input_o\ & ( (!\ID_EX_RegisterRt[2]~input_o\ & 
-- (!\ID_EX_RegisterRt[3]~input_o\ $ (\MEM_WB_RegisterRd[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ID_EX_RegisterRt[3]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRt[2]~input_o\,
	datac => \ALT_INV_MEM_WB_RegisterRd[3]~input_o\,
	dataf => \ALT_INV_MEM_WB_RegisterRd[2]~input_o\,
	combout => \ForwardB~1_combout\);

-- Location: IOIBUF_X66_Y0_N75
\ID_EX_RegisterRt[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRt(0),
	o => \ID_EX_RegisterRt[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\ID_EX_RegisterRt[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRt(1),
	o => \ID_EX_RegisterRt[1]~input_o\);

-- Location: LABCELL_X66_Y1_N39
\ForwardB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardB~0_combout\ = ( \MEM_WB_RegisterRd[0]~input_o\ & ( (\ID_EX_RegisterRt[0]~input_o\ & (\MEM_WB_RegWrite~input_o\ & (!\MEM_WB_RegisterRd[1]~input_o\ $ (\ID_EX_RegisterRt[1]~input_o\)))) ) ) # ( !\MEM_WB_RegisterRd[0]~input_o\ & ( 
-- (!\ID_EX_RegisterRt[0]~input_o\ & (\MEM_WB_RegWrite~input_o\ & (!\MEM_WB_RegisterRd[1]~input_o\ $ (\ID_EX_RegisterRt[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010000000000001000010000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MEM_WB_RegisterRd[1]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRt[0]~input_o\,
	datac => \ALT_INV_ID_EX_RegisterRt[1]~input_o\,
	datad => \ALT_INV_MEM_WB_RegWrite~input_o\,
	dataf => \ALT_INV_MEM_WB_RegisterRd[0]~input_o\,
	combout => \ForwardB~0_combout\);

-- Location: IOIBUF_X62_Y0_N52
\ID_EX_RegisterRt[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID_EX_RegisterRt(4),
	o => \ID_EX_RegisterRt[4]~input_o\);

-- Location: LABCELL_X66_Y1_N3
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( \EX_MEM_RegisterRd[3]~input_o\ & ( (\ID_EX_RegisterRt[3]~input_o\ & (!\EX_MEM_RegisterRd[4]~input_o\ $ (\ID_EX_RegisterRt[4]~input_o\))) ) ) # ( !\EX_MEM_RegisterRd[3]~input_o\ & ( (!\ID_EX_RegisterRt[3]~input_o\ & 
-- (!\EX_MEM_RegisterRd[4]~input_o\ $ (\ID_EX_RegisterRt[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ID_EX_RegisterRt[3]~input_o\,
	datac => \ALT_INV_EX_MEM_RegisterRd[4]~input_o\,
	datad => \ALT_INV_ID_EX_RegisterRt[4]~input_o\,
	dataf => \ALT_INV_EX_MEM_RegisterRd[3]~input_o\,
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X66_Y1_N24
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \EX_MEM_RegisterRd[2]~input_o\ & ( \ID_EX_RegisterRt[2]~input_o\ & ( (!\EX_MEM_RegisterRd[1]~input_o\ & (!\ID_EX_RegisterRt[1]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRt[0]~input_o\)))) # 
-- (\EX_MEM_RegisterRd[1]~input_o\ & (\ID_EX_RegisterRt[1]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRt[0]~input_o\)))) ) ) ) # ( !\EX_MEM_RegisterRd[2]~input_o\ & ( !\ID_EX_RegisterRt[2]~input_o\ & ( (!\EX_MEM_RegisterRd[1]~input_o\ & 
-- (!\ID_EX_RegisterRt[1]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRt[0]~input_o\)))) # (\EX_MEM_RegisterRd[1]~input_o\ & (\ID_EX_RegisterRt[1]~input_o\ & (!\EX_MEM_RegisterRd[0]~input_o\ $ (\ID_EX_RegisterRt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EX_MEM_RegisterRd[1]~input_o\,
	datab => \ALT_INV_ID_EX_RegisterRt[1]~input_o\,
	datac => \ALT_INV_EX_MEM_RegisterRd[0]~input_o\,
	datad => \ALT_INV_ID_EX_RegisterRt[0]~input_o\,
	datae => \ALT_INV_EX_MEM_RegisterRd[2]~input_o\,
	dataf => \ALT_INV_ID_EX_RegisterRt[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X66_Y1_N12
\ForwardB~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ForwardB~2_combout\ = ( !\Equal2~1_combout\ & ( \Equal2~0_combout\ & ( (\ForwardB~1_combout\ & (\ForwardB~0_combout\ & (!\MEM_WB_RegisterRd[4]~input_o\ $ (\ID_EX_RegisterRt[4]~input_o\)))) ) ) ) # ( \Equal2~1_combout\ & ( !\Equal2~0_combout\ & ( 
-- (\ForwardB~1_combout\ & (\ForwardB~0_combout\ & (!\MEM_WB_RegisterRd[4]~input_o\ $ (\ID_EX_RegisterRt[4]~input_o\)))) ) ) ) # ( !\Equal2~1_combout\ & ( !\Equal2~0_combout\ & ( (\ForwardB~1_combout\ & (\ForwardB~0_combout\ & 
-- (!\MEM_WB_RegisterRd[4]~input_o\ $ (\ID_EX_RegisterRt[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000100000000000100010000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ForwardB~1_combout\,
	datab => \ALT_INV_ForwardB~0_combout\,
	datac => \ALT_INV_MEM_WB_RegisterRd[4]~input_o\,
	datad => \ALT_INV_ID_EX_RegisterRt[4]~input_o\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \ForwardB~2_combout\);

-- Location: LABCELL_X66_Y1_N36
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \EX_MEM_RegWrite~input_o\ & ( (\Equal2~0_combout\ & \Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_EX_MEM_RegWrite~input_o\,
	combout => \process_0~1_combout\);

-- Location: LABCELL_X46_Y57_N0
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


