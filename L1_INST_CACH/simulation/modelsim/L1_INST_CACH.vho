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

-- DATE "02/01/2024 17:43:23"

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

ENTITY 	L1_INST_CACH IS
    PORT (
	pc : IN std_logic_vector(31 DOWNTO 0);
	datain : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	inst : OUT std_logic_vector(31 DOWNTO 0)
	);
END L1_INST_CACH;

-- Design Ports Information
-- pc[0]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[5]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[8]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[9]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[12]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[13]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[14]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[16]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[17]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[18]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[19]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[20]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[22]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[23]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[24]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[25]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[26]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[27]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[28]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[30]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[31]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[3]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[5]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[8]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[10]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[11]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[12]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[13]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[15]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[16]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[17]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[18]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[19]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[20]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[21]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[22]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[24]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[25]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[26]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[27]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[28]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[29]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[30]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[31]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF L1_INST_CACH IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc[0]~input_o\ : std_logic;
SIGNAL \pc[1]~input_o\ : std_logic;
SIGNAL \pc[2]~input_o\ : std_logic;
SIGNAL \pc[3]~input_o\ : std_logic;
SIGNAL \pc[4]~input_o\ : std_logic;
SIGNAL \pc[5]~input_o\ : std_logic;
SIGNAL \pc[6]~input_o\ : std_logic;
SIGNAL \pc[7]~input_o\ : std_logic;
SIGNAL \pc[8]~input_o\ : std_logic;
SIGNAL \pc[9]~input_o\ : std_logic;
SIGNAL \pc[10]~input_o\ : std_logic;
SIGNAL \pc[11]~input_o\ : std_logic;
SIGNAL \pc[12]~input_o\ : std_logic;
SIGNAL \pc[13]~input_o\ : std_logic;
SIGNAL \pc[14]~input_o\ : std_logic;
SIGNAL \pc[15]~input_o\ : std_logic;
SIGNAL \pc[16]~input_o\ : std_logic;
SIGNAL \pc[17]~input_o\ : std_logic;
SIGNAL \pc[18]~input_o\ : std_logic;
SIGNAL \pc[19]~input_o\ : std_logic;
SIGNAL \pc[20]~input_o\ : std_logic;
SIGNAL \pc[21]~input_o\ : std_logic;
SIGNAL \pc[22]~input_o\ : std_logic;
SIGNAL \pc[23]~input_o\ : std_logic;
SIGNAL \pc[24]~input_o\ : std_logic;
SIGNAL \pc[25]~input_o\ : std_logic;
SIGNAL \pc[26]~input_o\ : std_logic;
SIGNAL \pc[27]~input_o\ : std_logic;
SIGNAL \pc[28]~input_o\ : std_logic;
SIGNAL \pc[29]~input_o\ : std_logic;
SIGNAL \pc[30]~input_o\ : std_logic;
SIGNAL \pc[31]~input_o\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_pc <= pc;
ww_datain <= datain;
ww_clk <= clk;
inst <= ww_inst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y0_N19
\inst[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(0));

-- Location: IOOBUF_X80_Y0_N53
\inst[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(1));

-- Location: IOOBUF_X89_Y20_N96
\inst[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(2));

-- Location: IOOBUF_X6_Y0_N36
\inst[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(3));

-- Location: IOOBUF_X89_Y4_N45
\inst[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(4));

-- Location: IOOBUF_X80_Y0_N36
\inst[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(5));

-- Location: IOOBUF_X89_Y4_N96
\inst[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(6));

-- Location: IOOBUF_X24_Y0_N19
\inst[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(7));

-- Location: IOOBUF_X89_Y15_N56
\inst[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(8));

-- Location: IOOBUF_X84_Y0_N2
\inst[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(9));

-- Location: IOOBUF_X22_Y0_N36
\inst[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(10));

-- Location: IOOBUF_X52_Y0_N53
\inst[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(11));

-- Location: IOOBUF_X18_Y0_N93
\inst[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(12));

-- Location: IOOBUF_X89_Y21_N39
\inst[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(13));

-- Location: IOOBUF_X12_Y0_N53
\inst[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(14));

-- Location: IOOBUF_X20_Y81_N53
\inst[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(15));

-- Location: IOOBUF_X12_Y81_N2
\inst[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(16));

-- Location: IOOBUF_X58_Y0_N93
\inst[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(17));

-- Location: IOOBUF_X89_Y20_N62
\inst[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(18));

-- Location: IOOBUF_X89_Y9_N5
\inst[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(19));

-- Location: IOOBUF_X68_Y0_N19
\inst[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(20));

-- Location: IOOBUF_X89_Y13_N22
\inst[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(21));

-- Location: IOOBUF_X32_Y81_N36
\inst[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(22));

-- Location: IOOBUF_X22_Y81_N36
\inst[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(23));

-- Location: IOOBUF_X24_Y81_N36
\inst[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(24));

-- Location: IOOBUF_X8_Y0_N53
\inst[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(25));

-- Location: IOOBUF_X10_Y0_N93
\inst[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(26));

-- Location: IOOBUF_X89_Y6_N56
\inst[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(27));

-- Location: IOOBUF_X26_Y81_N76
\inst[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(28));

-- Location: IOOBUF_X89_Y23_N22
\inst[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(29));

-- Location: IOOBUF_X89_Y9_N39
\inst[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(30));

-- Location: IOOBUF_X32_Y0_N2
\inst[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_inst(31));

-- Location: IOIBUF_X78_Y0_N1
\pc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(0),
	o => \pc[0]~input_o\);

-- Location: IOIBUF_X18_Y81_N75
\pc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(1),
	o => \pc[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\pc[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(2),
	o => \pc[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\pc[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(3),
	o => \pc[3]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\pc[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(4),
	o => \pc[4]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\pc[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(5),
	o => \pc[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\pc[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(6),
	o => \pc[6]~input_o\);

-- Location: IOIBUF_X22_Y81_N52
\pc[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(7),
	o => \pc[7]~input_o\);

-- Location: IOIBUF_X6_Y81_N1
\pc[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(8),
	o => \pc[8]~input_o\);

-- Location: IOIBUF_X4_Y81_N1
\pc[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(9),
	o => \pc[9]~input_o\);

-- Location: IOIBUF_X6_Y81_N35
\pc[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(10),
	o => \pc[10]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\pc[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(11),
	o => \pc[11]~input_o\);

-- Location: IOIBUF_X10_Y81_N92
\pc[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(12),
	o => \pc[12]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\pc[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(13),
	o => \pc[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\pc[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(14),
	o => \pc[14]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\pc[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(15),
	o => \pc[15]~input_o\);

-- Location: IOIBUF_X24_Y81_N1
\pc[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(16),
	o => \pc[16]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\pc[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(17),
	o => \pc[17]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\pc[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(18),
	o => \pc[18]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\pc[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(19),
	o => \pc[19]~input_o\);

-- Location: IOIBUF_X40_Y81_N18
\pc[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(20),
	o => \pc[20]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\pc[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(21),
	o => \pc[21]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\pc[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(22),
	o => \pc[22]~input_o\);

-- Location: IOIBUF_X20_Y81_N35
\pc[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(23),
	o => \pc[23]~input_o\);

-- Location: IOIBUF_X12_Y81_N18
\pc[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(24),
	o => \pc[24]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\pc[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(25),
	o => \pc[25]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\pc[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(26),
	o => \pc[26]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\pc[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(27),
	o => \pc[27]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\pc[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(28),
	o => \pc[28]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\pc[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(29),
	o => \pc[29]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\pc[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(30),
	o => \pc[30]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\pc[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(31),
	o => \pc[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\datain[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

-- Location: IOIBUF_X10_Y81_N58
\datain[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\datain[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\datain[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\datain[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\datain[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\datain[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\datain[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\datain[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(8),
	o => \datain[8]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\datain[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(9),
	o => \datain[9]~input_o\);

-- Location: IOIBUF_X14_Y81_N52
\datain[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(10),
	o => \datain[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\datain[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(11),
	o => \datain[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\datain[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(12),
	o => \datain[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\datain[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(13),
	o => \datain[13]~input_o\);

-- Location: IOIBUF_X16_Y81_N35
\datain[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(14),
	o => \datain[14]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\datain[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(15),
	o => \datain[15]~input_o\);

-- Location: IOIBUF_X20_Y81_N1
\datain[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(16),
	o => \datain[16]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\datain[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(17),
	o => \datain[17]~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\datain[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(18),
	o => \datain[18]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\datain[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(19),
	o => \datain[19]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\datain[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(20),
	o => \datain[20]~input_o\);

-- Location: IOIBUF_X12_Y81_N52
\datain[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(21),
	o => \datain[21]~input_o\);

-- Location: IOIBUF_X12_Y81_N35
\datain[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(22),
	o => \datain[22]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\datain[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(23),
	o => \datain[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\datain[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(24),
	o => \datain[24]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\datain[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(25),
	o => \datain[25]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\datain[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(26),
	o => \datain[26]~input_o\);

-- Location: IOIBUF_X24_Y81_N18
\datain[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(27),
	o => \datain[27]~input_o\);

-- Location: IOIBUF_X2_Y81_N41
\datain[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(28),
	o => \datain[28]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\datain[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(29),
	o => \datain[29]~input_o\);

-- Location: IOIBUF_X8_Y81_N52
\datain[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(30),
	o => \datain[30]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\datain[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(31),
	o => \datain[31]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X33_Y18_N0
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


