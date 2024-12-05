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
-- Generated on "02/01/2024 16:32:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          L1_INST_CACH
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY L1_INST_CACH_vhd_vec_tst IS
END L1_INST_CACH_vhd_vec_tst;
ARCHITECTURE L1_INST_CACH_arch OF L1_INST_CACH_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inst : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT L1_INST_CACH
	PORT (
	clk : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	inst : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : L1_INST_CACH
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	datain => datain,
	inst => inst,
	pc => pc
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
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
	WAIT FOR 960000 ps;
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
	pc(4) <= '0';
	WAIT FOR 160000 ps;
	pc(4) <= '1';
	WAIT FOR 160000 ps;
	pc(4) <= '0';
	WAIT FOR 160000 ps;
	pc(4) <= '1';
	WAIT FOR 160000 ps;
	pc(4) <= '0';
WAIT;
END PROCESS t_prcs_pc_4;
-- pc[3]
t_prcs_pc_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		pc(3) <= '0';
		WAIT FOR 80000 ps;
		pc(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	FOR i IN 1 TO 2
	LOOP
		pc(3) <= '0';
		WAIT FOR 80000 ps;
		pc(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	pc(3) <= '0';
	WAIT FOR 80000 ps;
	pc(3) <= '1';
	WAIT FOR 80000 ps;
	pc(3) <= '0';
	WAIT FOR 80000 ps;
	pc(3) <= '1';
	WAIT FOR 80000 ps;
	pc(3) <= '0';
WAIT;
END PROCESS t_prcs_pc_3;
-- pc[2]
t_prcs_pc_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		pc(2) <= '0';
		WAIT FOR 40000 ps;
		pc(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	FOR i IN 1 TO 4
	LOOP
		pc(2) <= '0';
		WAIT FOR 40000 ps;
		pc(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	pc(2) <= '0';
	WAIT FOR 40000 ps;
	pc(2) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 3
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
	FOR i IN 1 TO 8
	LOOP
		pc(1) <= '0';
		WAIT FOR 20000 ps;
		pc(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	FOR i IN 1 TO 8
	LOOP
		pc(1) <= '0';
		WAIT FOR 20000 ps;
		pc(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	pc(1) <= '0';
	WAIT FOR 20000 ps;
	pc(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 8
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
	FOR i IN 1 TO 16
	LOOP
		pc(0) <= '0';
		WAIT FOR 10000 ps;
		pc(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	FOR i IN 1 TO 16
	LOOP
		pc(0) <= '0';
		WAIT FOR 10000 ps;
		pc(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	pc(0) <= '0';
	WAIT FOR 10000 ps;
	pc(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 17
	LOOP
		pc(0) <= '0';
		WAIT FOR 10000 ps;
		pc(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_pc_0;
-- datain[31]
t_prcs_datain_31: PROCESS
BEGIN
	datain(31) <= '0';
WAIT;
END PROCESS t_prcs_datain_31;
-- datain[30]
t_prcs_datain_30: PROCESS
BEGIN
	datain(30) <= '0';
WAIT;
END PROCESS t_prcs_datain_30;
-- datain[29]
t_prcs_datain_29: PROCESS
BEGIN
	datain(29) <= '0';
WAIT;
END PROCESS t_prcs_datain_29;
-- datain[28]
t_prcs_datain_28: PROCESS
BEGIN
	datain(28) <= '0';
WAIT;
END PROCESS t_prcs_datain_28;
-- datain[27]
t_prcs_datain_27: PROCESS
BEGIN
	datain(27) <= '0';
WAIT;
END PROCESS t_prcs_datain_27;
-- datain[26]
t_prcs_datain_26: PROCESS
BEGIN
	datain(26) <= '0';
WAIT;
END PROCESS t_prcs_datain_26;
-- datain[25]
t_prcs_datain_25: PROCESS
BEGIN
	datain(25) <= '0';
WAIT;
END PROCESS t_prcs_datain_25;
-- datain[24]
t_prcs_datain_24: PROCESS
BEGIN
	datain(24) <= '0';
WAIT;
END PROCESS t_prcs_datain_24;
-- datain[23]
t_prcs_datain_23: PROCESS
BEGIN
	datain(23) <= '0';
WAIT;
END PROCESS t_prcs_datain_23;
-- datain[22]
t_prcs_datain_22: PROCESS
BEGIN
	datain(22) <= '0';
WAIT;
END PROCESS t_prcs_datain_22;
-- datain[21]
t_prcs_datain_21: PROCESS
BEGIN
	datain(21) <= '0';
WAIT;
END PROCESS t_prcs_datain_21;
-- datain[20]
t_prcs_datain_20: PROCESS
BEGIN
	datain(20) <= '0';
WAIT;
END PROCESS t_prcs_datain_20;
-- datain[19]
t_prcs_datain_19: PROCESS
BEGIN
	datain(19) <= '0';
WAIT;
END PROCESS t_prcs_datain_19;
-- datain[18]
t_prcs_datain_18: PROCESS
BEGIN
	datain(18) <= '0';
WAIT;
END PROCESS t_prcs_datain_18;
-- datain[17]
t_prcs_datain_17: PROCESS
BEGIN
	datain(17) <= '0';
WAIT;
END PROCESS t_prcs_datain_17;
-- datain[16]
t_prcs_datain_16: PROCESS
BEGIN
	datain(16) <= '0';
WAIT;
END PROCESS t_prcs_datain_16;
-- datain[15]
t_prcs_datain_15: PROCESS
BEGIN
	datain(15) <= '0';
WAIT;
END PROCESS t_prcs_datain_15;
-- datain[14]
t_prcs_datain_14: PROCESS
BEGIN
	datain(14) <= '0';
WAIT;
END PROCESS t_prcs_datain_14;
-- datain[13]
t_prcs_datain_13: PROCESS
BEGIN
	datain(13) <= '0';
WAIT;
END PROCESS t_prcs_datain_13;
-- datain[12]
t_prcs_datain_12: PROCESS
BEGIN
	datain(12) <= '0';
WAIT;
END PROCESS t_prcs_datain_12;
-- datain[11]
t_prcs_datain_11: PROCESS
BEGIN
	datain(11) <= '0';
WAIT;
END PROCESS t_prcs_datain_11;
-- datain[10]
t_prcs_datain_10: PROCESS
BEGIN
	datain(10) <= '0';
WAIT;
END PROCESS t_prcs_datain_10;
-- datain[9]
t_prcs_datain_9: PROCESS
BEGIN
	datain(9) <= '0';
WAIT;
END PROCESS t_prcs_datain_9;
-- datain[8]
t_prcs_datain_8: PROCESS
BEGIN
	datain(8) <= '0';
WAIT;
END PROCESS t_prcs_datain_8;
-- datain[7]
t_prcs_datain_7: PROCESS
BEGIN
	datain(7) <= '0';
	WAIT FOR 280000 ps;
	datain(7) <= '1';
WAIT;
END PROCESS t_prcs_datain_7;
-- datain[6]
t_prcs_datain_6: PROCESS
BEGIN
	datain(6) <= '1';
	WAIT FOR 280000 ps;
	datain(6) <= '0';
	WAIT FOR 640000 ps;
	datain(6) <= '1';
WAIT;
END PROCESS t_prcs_datain_6;
-- datain[5]
t_prcs_datain_5: PROCESS
BEGIN
	datain(5) <= '1';
	WAIT FOR 280000 ps;
	datain(5) <= '0';
	WAIT FOR 320000 ps;
	datain(5) <= '1';
	WAIT FOR 320000 ps;
	datain(5) <= '0';
WAIT;
END PROCESS t_prcs_datain_5;
-- datain[4]
t_prcs_datain_4: PROCESS
BEGIN
	datain(4) <= '0';
	WAIT FOR 120000 ps;
	FOR i IN 1 TO 2
	LOOP
		datain(4) <= '1';
		WAIT FOR 160000 ps;
		datain(4) <= '0';
		WAIT FOR 160000 ps;
	END LOOP;
	datain(4) <= '1';
	WAIT FOR 160000 ps;
	datain(4) <= '0';
WAIT;
END PROCESS t_prcs_datain_4;
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 6
	LOOP
		datain(3) <= '1';
		WAIT FOR 80000 ps;
		datain(3) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		datain(2) <= '1';
		WAIT FOR 40000 ps;
		datain(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	datain(2) <= '1';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
LOOP
	datain(1) <= '0';
	WAIT FOR 20000 ps;
	datain(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
LOOP
	datain(0) <= '0';
	WAIT FOR 10000 ps;
	datain(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_datain_0;
END L1_INST_CACH_arch;
