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

-- DATE "02/01/2024 13:25:16"

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

ENTITY 	IP_CACH_RAM IS
    PORT (
	address : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(31 DOWNTO 0);
	wren : IN std_logic;
	q : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END IP_CACH_RAM;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[9]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[10]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[12]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[13]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[14]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[15]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[16]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[17]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[18]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[19]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[20]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[22]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[23]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[24]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[25]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[26]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[27]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[28]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[29]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[30]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[31]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[16]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[17]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[18]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[19]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[20]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[21]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[22]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[23]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[24]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[25]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[26]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[27]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[28]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[29]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[31]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF IP_CACH_RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[16]~input_o\ : std_logic;
SIGNAL \data[17]~input_o\ : std_logic;
SIGNAL \data[18]~input_o\ : std_logic;
SIGNAL \data[19]~input_o\ : std_logic;
SIGNAL \data[20]~input_o\ : std_logic;
SIGNAL \data[21]~input_o\ : std_logic;
SIGNAL \data[22]~input_o\ : std_logic;
SIGNAL \data[23]~input_o\ : std_logic;
SIGNAL \data[24]~input_o\ : std_logic;
SIGNAL \data[25]~input_o\ : std_logic;
SIGNAL \data[26]~input_o\ : std_logic;
SIGNAL \data[27]~input_o\ : std_logic;
SIGNAL \data[28]~input_o\ : std_logic;
SIGNAL \data[29]~input_o\ : std_logic;
SIGNAL \data[30]~input_o\ : std_logic;
SIGNAL \data[31]~input_o\ : std_logic;
SIGNAL \U1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_address <= address;
ww_clock <= clock;
ww_data <= data;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data[11]~input_o\ & \data[10]~input_o\ & \data[9]~input_o\ & \data[8]~input_o\ & \data[7]~input_o\ & \data[6]~input_o\ & 
\data[5]~input_o\ & \data[4]~input_o\ & \data[3]~input_o\ & \data[2]~input_o\ & \data[1]~input_o\ & \data[0]~input_o\);

\U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

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

\U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\data[31]~input_o\ & \data[30]~input_o\ & \data[29]~input_o\ & \data[28]~input_o\ & \data[27]~input_o\ & \data[26]~input_o\ & \data[25]~input_o\ & \data[24]~input_o\ & 
\data[23]~input_o\ & \data[22]~input_o\ & \data[21]~input_o\ & \data[20]~input_o\ & \data[19]~input_o\ & \data[18]~input_o\ & \data[17]~input_o\ & \data[16]~input_o\ & \data[15]~input_o\ & \data[14]~input_o\ & \data[13]~input_o\ & \data[12]~input_o\);

\U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

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

-- Location: IOOBUF_X2_Y0_N42
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X32_Y0_N19
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X32_Y0_N2
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X24_Y0_N36
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X22_Y0_N53
\q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_q(4));

-- Location: IOOBUF_X34_Y0_N42
\q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_q(5));

-- Location: IOOBUF_X34_Y0_N59
\q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_q(6));

-- Location: IOOBUF_X12_Y0_N36
\q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_q(7));

-- Location: IOOBUF_X28_Y0_N2
\q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_q(8));

-- Location: IOOBUF_X8_Y0_N36
\q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_q(9));

-- Location: IOOBUF_X28_Y0_N53
\q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_q(10));

-- Location: IOOBUF_X18_Y0_N93
\q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_q(11));

-- Location: IOOBUF_X32_Y0_N36
\q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_q(12));

-- Location: IOOBUF_X10_Y0_N59
\q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_q(13));

-- Location: IOOBUF_X24_Y0_N53
\q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_q(14));

-- Location: IOOBUF_X16_Y0_N36
\q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_q(15));

-- Location: IOOBUF_X32_Y0_N53
\q[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => ww_q(16));

-- Location: IOOBUF_X30_Y0_N36
\q[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => ww_q(17));

-- Location: IOOBUF_X10_Y0_N76
\q[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => ww_q(18));

-- Location: IOOBUF_X30_Y0_N19
\q[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => ww_q(19));

-- Location: IOOBUF_X30_Y0_N53
\q[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => ww_q(20));

-- Location: IOOBUF_X12_Y0_N2
\q[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => ww_q(21));

-- Location: IOOBUF_X12_Y0_N53
\q[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => ww_q(22));

-- Location: IOOBUF_X34_Y0_N93
\q[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => ww_q(23));

-- Location: IOOBUF_X18_Y0_N76
\q[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => ww_q(24));

-- Location: IOOBUF_X6_Y0_N2
\q[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => ww_q(25));

-- Location: IOOBUF_X4_Y0_N2
\q[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => ww_q(26));

-- Location: IOOBUF_X28_Y0_N19
\q[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => ww_q(27));

-- Location: IOOBUF_X26_Y0_N59
\q[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => ww_q(28));

-- Location: IOOBUF_X8_Y0_N53
\q[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => ww_q(29));

-- Location: IOOBUF_X10_Y0_N93
\q[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => ww_q(30));

-- Location: IOOBUF_X4_Y0_N36
\q[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => ww_q(31));

-- Location: IOIBUF_X4_Y0_N52
\wren~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X30_Y0_N1
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N41
\address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: M10K_X14_Y1_N0
\U1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_ip:U1|altsyncram:altsyncram_component|altsyncram_2104:auto_generated|ALTSYNCRAM",
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
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X12_Y0_N18
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(16),
	o => \data[16]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(17),
	o => \data[17]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(18),
	o => \data[18]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(19),
	o => \data[19]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(20),
	o => \data[20]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(21),
	o => \data[21]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(22),
	o => \data[22]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(23),
	o => \data[23]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(24),
	o => \data[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(25),
	o => \data[25]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(26),
	o => \data[26]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(27),
	o => \data[27]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(28),
	o => \data[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(29),
	o => \data[29]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(30),
	o => \data[30]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(31),
	o => \data[31]~input_o\);

-- Location: M10K_X14_Y1_N0
\U1|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_ip:U1|altsyncram:altsyncram_component|altsyncram_2104:auto_generated|ALTSYNCRAM",
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
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \clock~inputCLKENA0_outclk\,
	portadatain => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LABCELL_X79_Y18_N3
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


