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

-- DATE "11/27/2023 20:33:46"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	PC_COUNTER IS
    PORT (
	pc_write : IN std_logic;
	clk : IN std_logic;
	pc : IN std_logic_vector(31 DOWNTO 0);
	new_pc : OUT std_logic_vector(31 DOWNTO 0)
	);
END PC_COUNTER;

-- Design Ports Information
-- new_pc[0]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[7]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[8]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[9]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[10]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[11]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[12]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[13]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[16]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[17]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[18]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[20]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[21]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[22]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[23]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[24]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[25]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[26]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[27]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[28]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[29]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[30]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- new_pc[31]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_write	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[10]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[11]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[12]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[13]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[14]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[16]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[17]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[18]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[19]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[20]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[21]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[22]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[23]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[24]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[25]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[26]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[27]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[28]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[29]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[30]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[31]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC_COUNTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pc_write : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_new_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pc[0]~input_o\ : std_logic;
SIGNAL \pc_write~input_o\ : std_logic;
SIGNAL \new_pc[0]~reg0_q\ : std_logic;
SIGNAL \pc[1]~input_o\ : std_logic;
SIGNAL \new_pc[1]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[1]~reg0_q\ : std_logic;
SIGNAL \pc[2]~input_o\ : std_logic;
SIGNAL \new_pc[2]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[2]~reg0_q\ : std_logic;
SIGNAL \pc[3]~input_o\ : std_logic;
SIGNAL \new_pc[3]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[3]~reg0_q\ : std_logic;
SIGNAL \pc[4]~input_o\ : std_logic;
SIGNAL \new_pc[4]~reg0_q\ : std_logic;
SIGNAL \pc[5]~input_o\ : std_logic;
SIGNAL \new_pc[5]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[5]~reg0_q\ : std_logic;
SIGNAL \pc[6]~input_o\ : std_logic;
SIGNAL \new_pc[6]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[6]~reg0_q\ : std_logic;
SIGNAL \pc[7]~input_o\ : std_logic;
SIGNAL \new_pc[7]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[7]~reg0_q\ : std_logic;
SIGNAL \pc[8]~input_o\ : std_logic;
SIGNAL \new_pc[8]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[8]~reg0_q\ : std_logic;
SIGNAL \pc[9]~input_o\ : std_logic;
SIGNAL \new_pc[9]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[9]~reg0_q\ : std_logic;
SIGNAL \pc[10]~input_o\ : std_logic;
SIGNAL \new_pc[10]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[10]~reg0_q\ : std_logic;
SIGNAL \pc[11]~input_o\ : std_logic;
SIGNAL \new_pc[11]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[11]~reg0_q\ : std_logic;
SIGNAL \pc[12]~input_o\ : std_logic;
SIGNAL \new_pc[12]~reg0_q\ : std_logic;
SIGNAL \pc[13]~input_o\ : std_logic;
SIGNAL \new_pc[13]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[13]~reg0_q\ : std_logic;
SIGNAL \pc[14]~input_o\ : std_logic;
SIGNAL \new_pc[14]~reg0_q\ : std_logic;
SIGNAL \pc[15]~input_o\ : std_logic;
SIGNAL \new_pc[15]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[15]~reg0_q\ : std_logic;
SIGNAL \pc[16]~input_o\ : std_logic;
SIGNAL \new_pc[16]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[16]~reg0_q\ : std_logic;
SIGNAL \pc[17]~input_o\ : std_logic;
SIGNAL \new_pc[17]~reg0_q\ : std_logic;
SIGNAL \pc[18]~input_o\ : std_logic;
SIGNAL \new_pc[18]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[18]~reg0_q\ : std_logic;
SIGNAL \pc[19]~input_o\ : std_logic;
SIGNAL \new_pc[19]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[19]~reg0_q\ : std_logic;
SIGNAL \pc[20]~input_o\ : std_logic;
SIGNAL \new_pc[20]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[20]~reg0_q\ : std_logic;
SIGNAL \pc[21]~input_o\ : std_logic;
SIGNAL \new_pc[21]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[21]~reg0_q\ : std_logic;
SIGNAL \pc[22]~input_o\ : std_logic;
SIGNAL \new_pc[22]~reg0_q\ : std_logic;
SIGNAL \pc[23]~input_o\ : std_logic;
SIGNAL \new_pc[23]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[23]~reg0_q\ : std_logic;
SIGNAL \pc[24]~input_o\ : std_logic;
SIGNAL \new_pc[24]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[24]~reg0_q\ : std_logic;
SIGNAL \pc[25]~input_o\ : std_logic;
SIGNAL \new_pc[25]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[25]~reg0_q\ : std_logic;
SIGNAL \pc[26]~input_o\ : std_logic;
SIGNAL \new_pc[26]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[26]~reg0_q\ : std_logic;
SIGNAL \pc[27]~input_o\ : std_logic;
SIGNAL \new_pc[27]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[27]~reg0_q\ : std_logic;
SIGNAL \pc[28]~input_o\ : std_logic;
SIGNAL \new_pc[28]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[28]~reg0_q\ : std_logic;
SIGNAL \pc[29]~input_o\ : std_logic;
SIGNAL \new_pc[29]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[29]~reg0_q\ : std_logic;
SIGNAL \pc[30]~input_o\ : std_logic;
SIGNAL \new_pc[30]~reg0feeder_combout\ : std_logic;
SIGNAL \new_pc[30]~reg0_q\ : std_logic;
SIGNAL \pc[31]~input_o\ : std_logic;
SIGNAL \new_pc[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_pc[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pc_write~input_o\ : std_logic;

BEGIN

ww_pc_write <= pc_write;
ww_clk <= clk;
ww_pc <= pc;
new_pc <= ww_new_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pc[30]~input_o\ <= NOT \pc[30]~input_o\;
\ALT_INV_pc[29]~input_o\ <= NOT \pc[29]~input_o\;
\ALT_INV_pc[28]~input_o\ <= NOT \pc[28]~input_o\;
\ALT_INV_pc[27]~input_o\ <= NOT \pc[27]~input_o\;
\ALT_INV_pc[26]~input_o\ <= NOT \pc[26]~input_o\;
\ALT_INV_pc[25]~input_o\ <= NOT \pc[25]~input_o\;
\ALT_INV_pc[24]~input_o\ <= NOT \pc[24]~input_o\;
\ALT_INV_pc[23]~input_o\ <= NOT \pc[23]~input_o\;
\ALT_INV_pc[21]~input_o\ <= NOT \pc[21]~input_o\;
\ALT_INV_pc[20]~input_o\ <= NOT \pc[20]~input_o\;
\ALT_INV_pc[19]~input_o\ <= NOT \pc[19]~input_o\;
\ALT_INV_pc[18]~input_o\ <= NOT \pc[18]~input_o\;
\ALT_INV_pc[16]~input_o\ <= NOT \pc[16]~input_o\;
\ALT_INV_pc[15]~input_o\ <= NOT \pc[15]~input_o\;
\ALT_INV_pc[13]~input_o\ <= NOT \pc[13]~input_o\;
\ALT_INV_pc[11]~input_o\ <= NOT \pc[11]~input_o\;
\ALT_INV_pc[10]~input_o\ <= NOT \pc[10]~input_o\;
\ALT_INV_pc[9]~input_o\ <= NOT \pc[9]~input_o\;
\ALT_INV_pc[8]~input_o\ <= NOT \pc[8]~input_o\;
\ALT_INV_pc[7]~input_o\ <= NOT \pc[7]~input_o\;
\ALT_INV_pc[6]~input_o\ <= NOT \pc[6]~input_o\;
\ALT_INV_pc[5]~input_o\ <= NOT \pc[5]~input_o\;
\ALT_INV_pc[3]~input_o\ <= NOT \pc[3]~input_o\;
\ALT_INV_pc[2]~input_o\ <= NOT \pc[2]~input_o\;
\ALT_INV_pc[1]~input_o\ <= NOT \pc[1]~input_o\;
\ALT_INV_pc_write~input_o\ <= NOT \pc_write~input_o\;

-- Location: IOOBUF_X28_Y0_N53
\new_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(0));

-- Location: IOOBUF_X14_Y0_N36
\new_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(1));

-- Location: IOOBUF_X6_Y0_N19
\new_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(2));

-- Location: IOOBUF_X2_Y0_N59
\new_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(3));

-- Location: IOOBUF_X20_Y0_N19
\new_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(4));

-- Location: IOOBUF_X12_Y0_N53
\new_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(5));

-- Location: IOOBUF_X18_Y0_N76
\new_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(6));

-- Location: IOOBUF_X10_Y0_N59
\new_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(7));

-- Location: IOOBUF_X6_Y0_N2
\new_pc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(8));

-- Location: IOOBUF_X8_Y0_N19
\new_pc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(9));

-- Location: IOOBUF_X20_Y0_N53
\new_pc[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(10));

-- Location: IOOBUF_X32_Y0_N2
\new_pc[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(11));

-- Location: IOOBUF_X24_Y0_N36
\new_pc[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(12));

-- Location: IOOBUF_X20_Y0_N36
\new_pc[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(13));

-- Location: IOOBUF_X32_Y0_N53
\new_pc[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(14));

-- Location: IOOBUF_X16_Y0_N2
\new_pc[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(15));

-- Location: IOOBUF_X2_Y0_N76
\new_pc[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(16));

-- Location: IOOBUF_X22_Y0_N19
\new_pc[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(17));

-- Location: IOOBUF_X32_Y0_N19
\new_pc[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(18));

-- Location: IOOBUF_X20_Y0_N2
\new_pc[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(19));

-- Location: IOOBUF_X32_Y0_N36
\new_pc[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(20));

-- Location: IOOBUF_X14_Y0_N53
\new_pc[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(21));

-- Location: IOOBUF_X10_Y0_N76
\new_pc[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(22));

-- Location: IOOBUF_X28_Y0_N2
\new_pc[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(23));

-- Location: IOOBUF_X24_Y0_N53
\new_pc[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(24));

-- Location: IOOBUF_X22_Y0_N53
\new_pc[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(25));

-- Location: IOOBUF_X12_Y0_N19
\new_pc[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(26));

-- Location: IOOBUF_X8_Y0_N2
\new_pc[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(27));

-- Location: IOOBUF_X10_Y0_N42
\new_pc[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(28));

-- Location: IOOBUF_X18_Y0_N59
\new_pc[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(29));

-- Location: IOOBUF_X12_Y0_N36
\new_pc[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(30));

-- Location: IOOBUF_X14_Y0_N19
\new_pc[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \new_pc[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_new_pc(31));

-- Location: IOIBUF_X89_Y25_N21
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

-- Location: IOIBUF_X24_Y0_N1
\pc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(0),
	o => \pc[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\pc_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_write,
	o => \pc_write~input_o\);

-- Location: FF_X25_Y1_N1
\new_pc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[0]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N18
\pc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(1),
	o => \pc[1]~input_o\);

-- Location: LABCELL_X16_Y1_N33
\new_pc[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[1]~reg0feeder_combout\ = ( \pc[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[1]~input_o\,
	combout => \new_pc[1]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N35
\new_pc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[1]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[1]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N52
\pc[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(2),
	o => \pc[2]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\new_pc[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[2]~reg0feeder_combout\ = ( \pc[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[2]~input_o\,
	combout => \new_pc[2]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N1
\new_pc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[2]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[2]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N92
\pc[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(3),
	o => \pc[3]~input_o\);

-- Location: MLABCELL_X6_Y1_N6
\new_pc[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[3]~reg0feeder_combout\ = ( \pc[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[3]~input_o\,
	combout => \new_pc[3]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N7
\new_pc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[3]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[3]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N92
\pc[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(4),
	o => \pc[4]~input_o\);

-- Location: FF_X25_Y1_N37
\new_pc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[4]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N1
\pc[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(5),
	o => \pc[5]~input_o\);

-- Location: LABCELL_X12_Y1_N3
\new_pc[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[5]~reg0feeder_combout\ = ( \pc[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[5]~input_o\,
	combout => \new_pc[5]~reg0feeder_combout\);

-- Location: FF_X12_Y1_N4
\new_pc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[5]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[5]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N41
\pc[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(6),
	o => \pc[6]~input_o\);

-- Location: LABCELL_X18_Y1_N3
\new_pc[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[6]~reg0feeder_combout\ = ( \pc[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[6]~input_o\,
	combout => \new_pc[6]~reg0feeder_combout\);

-- Location: FF_X18_Y1_N4
\new_pc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[6]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[6]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N52
\pc[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(7),
	o => \pc[7]~input_o\);

-- Location: LABCELL_X7_Y1_N3
\new_pc[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[7]~reg0feeder_combout\ = ( \pc[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[7]~input_o\,
	combout => \new_pc[7]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N4
\new_pc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[7]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[7]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N18
\pc[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(8),
	o => \pc[8]~input_o\);

-- Location: MLABCELL_X6_Y1_N45
\new_pc[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[8]~reg0feeder_combout\ = ( \pc[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[8]~input_o\,
	combout => \new_pc[8]~reg0feeder_combout\);

-- Location: FF_X6_Y1_N46
\new_pc[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[8]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[8]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N1
\pc[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(9),
	o => \pc[9]~input_o\);

-- Location: LABCELL_X7_Y1_N6
\new_pc[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[9]~reg0feeder_combout\ = ( \pc[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[9]~input_o\,
	combout => \new_pc[9]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N7
\new_pc[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[9]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[9]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N1
\pc[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(10),
	o => \pc[10]~input_o\);

-- Location: LABCELL_X22_Y1_N33
\new_pc[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[10]~reg0feeder_combout\ = ( \pc[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[10]~input_o\,
	combout => \new_pc[10]~reg0feeder_combout\);

-- Location: FF_X22_Y1_N35
\new_pc[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[10]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[10]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N58
\pc[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(11),
	o => \pc[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N45
\new_pc[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[11]~reg0feeder_combout\ = ( \pc[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[11]~input_o\,
	combout => \new_pc[11]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N46
\new_pc[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[11]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[11]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N18
\pc[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(12),
	o => \pc[12]~input_o\);

-- Location: FF_X25_Y1_N53
\new_pc[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[12]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[12]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N75
\pc[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(13),
	o => \pc[13]~input_o\);

-- Location: MLABCELL_X25_Y1_N27
\new_pc[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[13]~reg0feeder_combout\ = ( \pc[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[13]~input_o\,
	combout => \new_pc[13]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N29
\new_pc[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[13]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[13]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N35
\pc[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(14),
	o => \pc[14]~input_o\);

-- Location: FF_X25_Y1_N35
\new_pc[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[14]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[14]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N52
\pc[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(15),
	o => \pc[15]~input_o\);

-- Location: LABCELL_X16_Y1_N6
\new_pc[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[15]~reg0feeder_combout\ = ( \pc[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[15]~input_o\,
	combout => \new_pc[15]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N7
\new_pc[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[15]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[15]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N52
\pc[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(16),
	o => \pc[16]~input_o\);

-- Location: LABCELL_X7_Y1_N45
\new_pc[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[16]~reg0feeder_combout\ = ( \pc[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[16]~input_o\,
	combout => \new_pc[16]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N47
\new_pc[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[16]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[16]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N18
\pc[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(17),
	o => \pc[17]~input_o\);

-- Location: FF_X25_Y1_N7
\new_pc[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[17]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[17]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N35
\pc[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(18),
	o => \pc[18]~input_o\);

-- Location: MLABCELL_X25_Y1_N15
\new_pc[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[18]~reg0feeder_combout\ = ( \pc[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[18]~input_o\,
	combout => \new_pc[18]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N16
\new_pc[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[18]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[18]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N92
\pc[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(19),
	o => \pc[19]~input_o\);

-- Location: MLABCELL_X25_Y1_N9
\new_pc[19]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[19]~reg0feeder_combout\ = ( \pc[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[19]~input_o\,
	combout => \new_pc[19]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N10
\new_pc[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[19]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[19]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N18
\pc[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(20),
	o => \pc[20]~input_o\);

-- Location: MLABCELL_X25_Y1_N21
\new_pc[20]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[20]~reg0feeder_combout\ = ( \pc[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[20]~input_o\,
	combout => \new_pc[20]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N22
\new_pc[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[20]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[20]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N92
\pc[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(21),
	o => \pc[21]~input_o\);

-- Location: LABCELL_X16_Y1_N12
\new_pc[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[21]~reg0feeder_combout\ = ( \pc[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[21]~input_o\,
	combout => \new_pc[21]~reg0feeder_combout\);

-- Location: FF_X16_Y1_N13
\new_pc[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[21]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[21]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N41
\pc[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(22),
	o => \pc[22]~input_o\);

-- Location: FF_X7_Y1_N19
\new_pc[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[22]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[22]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N35
\pc[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(23),
	o => \pc[23]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\new_pc[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[23]~reg0feeder_combout\ = ( \pc[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[23]~input_o\,
	combout => \new_pc[23]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N31
\new_pc[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[23]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[23]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\pc[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(24),
	o => \pc[24]~input_o\);

-- Location: MLABCELL_X25_Y1_N39
\new_pc[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[24]~reg0feeder_combout\ = ( \pc[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[24]~input_o\,
	combout => \new_pc[24]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N41
\new_pc[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[24]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[24]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N52
\pc[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(25),
	o => \pc[25]~input_o\);

-- Location: MLABCELL_X25_Y1_N54
\new_pc[25]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[25]~reg0feeder_combout\ = ( \pc[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[25]~input_o\,
	combout => \new_pc[25]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N56
\new_pc[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[25]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[25]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N35
\pc[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(26),
	o => \pc[26]~input_o\);

-- Location: LABCELL_X7_Y1_N24
\new_pc[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[26]~reg0feeder_combout\ = ( \pc[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[26]~input_o\,
	combout => \new_pc[26]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N25
\new_pc[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[26]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[26]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N35
\pc[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(27),
	o => \pc[27]~input_o\);

-- Location: LABCELL_X7_Y1_N33
\new_pc[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[27]~reg0feeder_combout\ = ( \pc[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[27]~input_o\,
	combout => \new_pc[27]~reg0feeder_combout\);

-- Location: FF_X7_Y1_N34
\new_pc[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[27]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[27]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N35
\pc[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(28),
	o => \pc[28]~input_o\);

-- Location: LABCELL_X10_Y1_N33
\new_pc[28]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[28]~reg0feeder_combout\ = ( \pc[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[28]~input_o\,
	combout => \new_pc[28]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N34
\new_pc[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[28]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[28]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N41
\pc[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(29),
	o => \pc[29]~input_o\);

-- Location: MLABCELL_X25_Y1_N48
\new_pc[29]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[29]~reg0feeder_combout\ = ( \pc[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[29]~input_o\,
	combout => \new_pc[29]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N49
\new_pc[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[29]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[29]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N92
\pc[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(30),
	o => \pc[30]~input_o\);

-- Location: LABCELL_X10_Y1_N6
\new_pc[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \new_pc[30]~reg0feeder_combout\ = ( \pc[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_pc[30]~input_o\,
	combout => \new_pc[30]~reg0feeder_combout\);

-- Location: FF_X10_Y1_N7
\new_pc[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \new_pc[30]~reg0feeder_combout\,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[30]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N35
\pc[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc(31),
	o => \pc[31]~input_o\);

-- Location: FF_X16_Y1_N53
\new_pc[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \pc[31]~input_o\,
	sload => VCC,
	ena => \ALT_INV_pc_write~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \new_pc[31]~reg0_q\);

-- Location: LABCELL_X50_Y5_N3
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


