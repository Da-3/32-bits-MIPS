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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/11/2023 23:20:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DIRECT_MAP_ARRAY
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DIRECT_MAP_ARRAY_vhd_vec_tst IS
END DIRECT_MAP_ARRAY_vhd_vec_tst;
ARCHITECTURE DIRECT_MAP_ARRAY_arch OF DIRECT_MAP_ARRAY_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL hit : STD_LOGIC;
SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL tag_out : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL valid_out : STD_LOGIC;
COMPONENT DIRECT_MAP_ARRAY
	PORT (
	data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	hit : IN STD_LOGIC;
	pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	tag_out : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
	valid_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DIRECT_MAP_ARRAY
	PORT MAP (
-- list connections between master ports and signals
	data_in => data_in,
	data_out => data_out,
	hit => hit,
	pc => pc,
	tag_out => tag_out,
	valid_out => valid_out
	);
-- pc[31]
t_prcs_pc_31: PROCESS
BEGIN
	pc(31) <= '0';
WAIT;
END PROCESS t_prcs_pc_31;
-- pc[30]
t_prcs_pc_30: PROCESS
BEGIN
	pc(30) <= '0';
WAIT;
END PROCESS t_prcs_pc_30;
-- pc[29]
t_prcs_pc_29: PROCESS
BEGIN
	pc(29) <= '0';
WAIT;
END PROCESS t_prcs_pc_29;
-- pc[28]
t_prcs_pc_28: PROCESS
BEGIN
	pc(28) <= '0';
WAIT;
END PROCESS t_prcs_pc_28;
-- pc[27]
t_prcs_pc_27: PROCESS
BEGIN
	pc(27) <= '0';
WAIT;
END PROCESS t_prcs_pc_27;
-- pc[26]
t_prcs_pc_26: PROCESS
BEGIN
	pc(26) <= '0';
WAIT;
END PROCESS t_prcs_pc_26;
-- pc[25]
t_prcs_pc_25: PROCESS
BEGIN
	pc(25) <= '0';
WAIT;
END PROCESS t_prcs_pc_25;
-- pc[24]
t_prcs_pc_24: PROCESS
BEGIN
	pc(24) <= '0';
WAIT;
END PROCESS t_prcs_pc_24;
-- pc[23]
t_prcs_pc_23: PROCESS
BEGIN
	pc(23) <= '0';
WAIT;
END PROCESS t_prcs_pc_23;
-- pc[22]
t_prcs_pc_22: PROCESS
BEGIN
	pc(22) <= '0';
WAIT;
END PROCESS t_prcs_pc_22;
-- pc[21]
t_prcs_pc_21: PROCESS
BEGIN
	pc(21) <= '0';
WAIT;
END PROCESS t_prcs_pc_21;
-- pc[20]
t_prcs_pc_20: PROCESS
BEGIN
	pc(20) <= '0';
WAIT;
END PROCESS t_prcs_pc_20;
-- pc[19]
t_prcs_pc_19: PROCESS
BEGIN
	pc(19) <= '0';
WAIT;
END PROCESS t_prcs_pc_19;
-- pc[18]
t_prcs_pc_18: PROCESS
BEGIN
	pc(18) <= '0';
WAIT;
END PROCESS t_prcs_pc_18;
-- pc[17]
t_prcs_pc_17: PROCESS
BEGIN
	pc(17) <= '0';
WAIT;
END PROCESS t_prcs_pc_17;
-- pc[16]
t_prcs_pc_16: PROCESS
BEGIN
	pc(16) <= '0';
WAIT;
END PROCESS t_prcs_pc_16;
-- pc[15]
t_prcs_pc_15: PROCESS
BEGIN
	pc(15) <= '0';
WAIT;
END PROCESS t_prcs_pc_15;
-- pc[14]
t_prcs_pc_14: PROCESS
BEGIN
	pc(14) <= '0';
WAIT;
END PROCESS t_prcs_pc_14;
-- pc[13]
t_prcs_pc_13: PROCESS
BEGIN
	pc(13) <= '0';
WAIT;
END PROCESS t_prcs_pc_13;
-- pc[12]
t_prcs_pc_12: PROCESS
BEGIN
	pc(12) <= '0';
WAIT;
END PROCESS t_prcs_pc_12;
-- pc[11]
t_prcs_pc_11: PROCESS
BEGIN
	pc(11) <= '0';
WAIT;
END PROCESS t_prcs_pc_11;
-- pc[10]
t_prcs_pc_10: PROCESS
BEGIN
	pc(10) <= '0';
WAIT;
END PROCESS t_prcs_pc_10;
-- pc[9]
t_prcs_pc_9: PROCESS
BEGIN
	pc(9) <= '0';
WAIT;
END PROCESS t_prcs_pc_9;
-- pc[8]
t_prcs_pc_8: PROCESS
BEGIN
	pc(8) <= '0';
WAIT;
END PROCESS t_prcs_pc_8;
-- pc[7]
t_prcs_pc_7: PROCESS
BEGIN
	pc(7) <= '0';
WAIT;
END PROCESS t_prcs_pc_7;
-- pc[6]
t_prcs_pc_6: PROCESS
BEGIN
	pc(6) <= '0';
	WAIT FOR 640000 ps;
	pc(6) <= '1';
WAIT;
END PROCESS t_prcs_pc_6;
-- pc[5]
t_prcs_pc_5: PROCESS
BEGIN
	pc(5) <= '0';
	WAIT FOR 320000 ps;
	pc(5) <= '1';
	WAIT FOR 320000 ps;
	pc(5) <= '0';
	WAIT FOR 320000 ps;
	pc(5) <= '1';
WAIT;
END PROCESS t_prcs_pc_5;
-- pc[4]
t_prcs_pc_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		pc(4) <= '0';
		WAIT FOR 160000 ps;
		pc(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	pc(4) <= '0';
WAIT;
END PROCESS t_prcs_pc_4;
-- pc[3]
t_prcs_pc_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		pc(3) <= '0';
		WAIT FOR 80000 ps;
		pc(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	pc(3) <= '0';
WAIT;
END PROCESS t_prcs_pc_3;
-- pc[2]
t_prcs_pc_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		pc(2) <= '0';
		WAIT FOR 40000 ps;
		pc(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	pc(2) <= '0';
WAIT;
END PROCESS t_prcs_pc_2;
-- pc[1]
t_prcs_pc_1: PROCESS
BEGIN
LOOP
	pc(1) <= '0';
	WAIT FOR 20000 ps;
	pc(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pc_1;
-- pc[0]
t_prcs_pc_0: PROCESS
BEGIN
LOOP
	pc(0) <= '0';
	WAIT FOR 10000 ps;
	pc(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pc_0;
END DIRECT_MAP_ARRAY_arch;
