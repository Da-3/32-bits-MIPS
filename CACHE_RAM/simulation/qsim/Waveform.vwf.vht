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
-- Generated on "02/01/2024 12:10:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CACHE_RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CACHE_RAM_vhd_vec_tst IS
END CACHE_RAM_vhd_vec_tst;
ARCHITECTURE CACHE_RAM_arch OF CACHE_RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ce : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL re : STD_LOGIC;
SIGNAL we : STD_LOGIC;
COMPONENT CACHE_RAM
	PORT (
	ce : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	re : IN STD_LOGIC;
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CACHE_RAM
	PORT MAP (
-- list connections between master ports and signals
	ce => ce,
	data_in => data_in,
	data_out => data_out,
	pc => pc,
	re => re,
	we => we
	);

-- ce
t_prcs_ce: PROCESS
BEGIN
	ce <= '1';
WAIT;
END PROCESS t_prcs_ce;
-- data_in[31]
t_prcs_data_in_31: PROCESS
BEGIN
	data_in(31) <= '0';
WAIT;
END PROCESS t_prcs_data_in_31;
-- data_in[30]
t_prcs_data_in_30: PROCESS
BEGIN
	data_in(30) <= '0';
WAIT;
END PROCESS t_prcs_data_in_30;
-- data_in[29]
t_prcs_data_in_29: PROCESS
BEGIN
	data_in(29) <= '0';
WAIT;
END PROCESS t_prcs_data_in_29;
-- data_in[28]
t_prcs_data_in_28: PROCESS
BEGIN
	data_in(28) <= '0';
WAIT;
END PROCESS t_prcs_data_in_28;
-- data_in[27]
t_prcs_data_in_27: PROCESS
BEGIN
	data_in(27) <= '0';
WAIT;
END PROCESS t_prcs_data_in_27;
-- data_in[26]
t_prcs_data_in_26: PROCESS
BEGIN
	data_in(26) <= '0';
WAIT;
END PROCESS t_prcs_data_in_26;
-- data_in[25]
t_prcs_data_in_25: PROCESS
BEGIN
	data_in(25) <= '0';
WAIT;
END PROCESS t_prcs_data_in_25;
-- data_in[24]
t_prcs_data_in_24: PROCESS
BEGIN
	data_in(24) <= '0';
WAIT;
END PROCESS t_prcs_data_in_24;
-- data_in[23]
t_prcs_data_in_23: PROCESS
BEGIN
	data_in(23) <= '0';
WAIT;
END PROCESS t_prcs_data_in_23;
-- data_in[22]
t_prcs_data_in_22: PROCESS
BEGIN
	data_in(22) <= '0';
WAIT;
END PROCESS t_prcs_data_in_22;
-- data_in[21]
t_prcs_data_in_21: PROCESS
BEGIN
	data_in(21) <= '0';
WAIT;
END PROCESS t_prcs_data_in_21;
-- data_in[20]
t_prcs_data_in_20: PROCESS
BEGIN
	data_in(20) <= '0';
WAIT;
END PROCESS t_prcs_data_in_20;
-- data_in[19]
t_prcs_data_in_19: PROCESS
BEGIN
	data_in(19) <= '0';
WAIT;
END PROCESS t_prcs_data_in_19;
-- data_in[18]
t_prcs_data_in_18: PROCESS
BEGIN
	data_in(18) <= '0';
WAIT;
END PROCESS t_prcs_data_in_18;
-- data_in[17]
t_prcs_data_in_17: PROCESS
BEGIN
	data_in(17) <= '0';
WAIT;
END PROCESS t_prcs_data_in_17;
-- data_in[16]
t_prcs_data_in_16: PROCESS
BEGIN
	data_in(16) <= '0';
WAIT;
END PROCESS t_prcs_data_in_16;
-- data_in[15]
t_prcs_data_in_15: PROCESS
BEGIN
	data_in(15) <= '0';
WAIT;
END PROCESS t_prcs_data_in_15;
-- data_in[14]
t_prcs_data_in_14: PROCESS
BEGIN
	data_in(14) <= '0';
WAIT;
END PROCESS t_prcs_data_in_14;
-- data_in[13]
t_prcs_data_in_13: PROCESS
BEGIN
	data_in(13) <= '0';
WAIT;
END PROCESS t_prcs_data_in_13;
-- data_in[12]
t_prcs_data_in_12: PROCESS
BEGIN
	data_in(12) <= '0';
WAIT;
END PROCESS t_prcs_data_in_12;
-- data_in[11]
t_prcs_data_in_11: PROCESS
BEGIN
	data_in(11) <= '0';
WAIT;
END PROCESS t_prcs_data_in_11;
-- data_in[10]
t_prcs_data_in_10: PROCESS
BEGIN
	data_in(10) <= '0';
WAIT;
END PROCESS t_prcs_data_in_10;
-- data_in[9]
t_prcs_data_in_9: PROCESS
BEGIN
	data_in(9) <= '0';
WAIT;
END PROCESS t_prcs_data_in_9;
-- data_in[8]
t_prcs_data_in_8: PROCESS
BEGIN
	data_in(8) <= '0';
WAIT;
END PROCESS t_prcs_data_in_8;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
	WAIT FOR 580000 ps;
	data_in(6) <= '1';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
	WAIT FOR 260000 ps;
	data_in(5) <= '1';
	WAIT FOR 320000 ps;
	data_in(5) <= '0';
	WAIT FOR 320000 ps;
	data_in(5) <= '1';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		data_in(4) <= '1';
		WAIT FOR 160000 ps;
		data_in(4) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	data_in(4) <= '1';
	WAIT FOR 160000 ps;
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		data_in(3) <= '1';
		WAIT FOR 80000 ps;
		data_in(3) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	data_in(3) <= '1';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 12
	LOOP
		data_in(2) <= '0';
		WAIT FOR 40000 ps;
		data_in(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
LOOP
	data_in(1) <= '1';
	WAIT FOR 20000 ps;
	data_in(1) <= '0';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
LOOP
	data_in(0) <= '0';
	WAIT FOR 10000 ps;
	data_in(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_0;
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
	pc(4) <= '0';
	WAIT FOR 160000 ps;
	pc(4) <= '1';
	WAIT FOR 160000 ps;
	FOR i IN 1 TO 2
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
	pc(3) <= '0';
	WAIT FOR 100000 ps;
	pc(3) <= '1';
	WAIT FOR 60000 ps;
	pc(3) <= '0';
	WAIT FOR 80000 ps;
	pc(3) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 4
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
	pc(2) <= '0';
	WAIT FOR 40000 ps;
	pc(2) <= '1';
	WAIT FOR 10000 ps;
	pc(2) <= '0';
	WAIT FOR 40000 ps;
	pc(2) <= '1';
	WAIT FOR 10000 ps;
	pc(2) <= '0';
	WAIT FOR 20000 ps;
	pc(2) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 10
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
	pc(1) <= '0';
	WAIT FOR 20000 ps;
	pc(1) <= '1';
	WAIT FOR 20000 ps;
	pc(1) <= '0';
	WAIT FOR 30000 ps;
	pc(1) <= '1';
	WAIT FOR 20000 ps;
	pc(1) <= '0';
	WAIT FOR 10000 ps;
	pc(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 22
	LOOP
		pc(1) <= '0';
		WAIT FOR 20000 ps;
		pc(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_pc_1;
-- pc[0]
t_prcs_pc_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		pc(0) <= '0';
		WAIT FOR 10000 ps;
		pc(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	pc(0) <= '0';
	WAIT FOR 20000 ps;
	pc(0) <= '1';
	WAIT FOR 10000 ps;
	pc(0) <= '0';
	WAIT FOR 10000 ps;
	pc(0) <= '1';
	WAIT FOR 10000 ps;
	pc(0) <= '0';
	WAIT FOR 20000 ps;
	pc(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 44
	LOOP
		pc(0) <= '0';
		WAIT FOR 10000 ps;
		pc(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_pc_0;

-- re
t_prcs_re: PROCESS
BEGIN
	re <= '0';
	WAIT FOR 50000 ps;
	re <= '1';
	WAIT FOR 50000 ps;
	re <= '0';
	WAIT FOR 5000 ps;
	re <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 89
	LOOP
		re <= '0';
		WAIT FOR 5000 ps;
		re <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_re;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '1';
	WAIT FOR 50000 ps;
	we <= '0';
	WAIT FOR 50000 ps;
	we <= '1';
WAIT;
END PROCESS t_prcs_we;
END CACHE_RAM_arch;
