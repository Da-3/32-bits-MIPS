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
-- Generated on "11/17/2023 19:34:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EX_FORWORDING
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EX_FORWORDING_vhd_vec_tst IS
END EX_FORWORDING_vhd_vec_tst;
ARCHITECTURE EX_FORWORDING_arch OF EX_FORWORDING_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EX_MEM_RegisterRd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL EX_MEM_RegWrite : STD_LOGIC;
SIGNAL ForwardA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ForwardB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ID_EX_RegisterRs : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL ID_EX_RegisterRt : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL MEM_WB_RegisterRd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL MEM_WB_RegWrite : STD_LOGIC;
COMPONENT EX_FORWORDING
	PORT (
	EX_MEM_RegisterRd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	EX_MEM_RegWrite : IN STD_LOGIC;
	ForwardA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ForwardB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ID_EX_RegisterRs : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	ID_EX_RegisterRt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	MEM_WB_RegisterRd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	MEM_WB_RegWrite : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : EX_FORWORDING
	PORT MAP (
-- list connections between master ports and signals
	EX_MEM_RegisterRd => EX_MEM_RegisterRd,
	EX_MEM_RegWrite => EX_MEM_RegWrite,
	ForwardA => ForwardA,
	ForwardB => ForwardB,
	ID_EX_RegisterRs => ID_EX_RegisterRs,
	ID_EX_RegisterRt => ID_EX_RegisterRt,
	MEM_WB_RegisterRd => MEM_WB_RegisterRd,
	MEM_WB_RegWrite => MEM_WB_RegWrite
	);
-- EX_MEM_RegisterRd[4]
t_prcs_EX_MEM_RegisterRd_4: PROCESS
BEGIN
	EX_MEM_RegisterRd(4) <= '0';
WAIT;
END PROCESS t_prcs_EX_MEM_RegisterRd_4;
-- EX_MEM_RegisterRd[3]
t_prcs_EX_MEM_RegisterRd_3: PROCESS
BEGIN
	EX_MEM_RegisterRd(3) <= '0';
WAIT;
END PROCESS t_prcs_EX_MEM_RegisterRd_3;
-- EX_MEM_RegisterRd[2]
t_prcs_EX_MEM_RegisterRd_2: PROCESS
BEGIN
	EX_MEM_RegisterRd(2) <= '1';
WAIT;
END PROCESS t_prcs_EX_MEM_RegisterRd_2;
-- EX_MEM_RegisterRd[1]
t_prcs_EX_MEM_RegisterRd_1: PROCESS
BEGIN
	EX_MEM_RegisterRd(1) <= '0';
WAIT;
END PROCESS t_prcs_EX_MEM_RegisterRd_1;
-- EX_MEM_RegisterRd[0]
t_prcs_EX_MEM_RegisterRd_0: PROCESS
BEGIN
	EX_MEM_RegisterRd(0) <= '0';
WAIT;
END PROCESS t_prcs_EX_MEM_RegisterRd_0;

-- EX_MEM_RegWrite
t_prcs_EX_MEM_RegWrite: PROCESS
BEGIN
	EX_MEM_RegWrite <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		EX_MEM_RegWrite <= '0';
		WAIT FOR 10000 ps;
		EX_MEM_RegWrite <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	EX_MEM_RegWrite <= '0';
WAIT;
END PROCESS t_prcs_EX_MEM_RegWrite;
-- ID_EX_RegisterRs[4]
t_prcs_ID_EX_RegisterRs_4: PROCESS
BEGIN
	ID_EX_RegisterRs(4) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRs_4;
-- ID_EX_RegisterRs[3]
t_prcs_ID_EX_RegisterRs_3: PROCESS
BEGIN
	ID_EX_RegisterRs(3) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRs_3;
-- ID_EX_RegisterRs[2]
t_prcs_ID_EX_RegisterRs_2: PROCESS
BEGIN
	ID_EX_RegisterRs(2) <= '1';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRs_2;
-- ID_EX_RegisterRs[1]
t_prcs_ID_EX_RegisterRs_1: PROCESS
BEGIN
	ID_EX_RegisterRs(1) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRs_1;
-- ID_EX_RegisterRs[0]
t_prcs_ID_EX_RegisterRs_0: PROCESS
BEGIN
	ID_EX_RegisterRs(0) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRs_0;
-- ID_EX_RegisterRt[4]
t_prcs_ID_EX_RegisterRt_4: PROCESS
BEGIN
	ID_EX_RegisterRt(4) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRt_4;
-- ID_EX_RegisterRt[3]
t_prcs_ID_EX_RegisterRt_3: PROCESS
BEGIN
	ID_EX_RegisterRt(3) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRt_3;
-- ID_EX_RegisterRt[2]
t_prcs_ID_EX_RegisterRt_2: PROCESS
BEGIN
	ID_EX_RegisterRt(2) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRt_2;
-- ID_EX_RegisterRt[1]
t_prcs_ID_EX_RegisterRt_1: PROCESS
BEGIN
	ID_EX_RegisterRt(1) <= '1';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRt_1;
-- ID_EX_RegisterRt[0]
t_prcs_ID_EX_RegisterRt_0: PROCESS
BEGIN
	ID_EX_RegisterRt(0) <= '0';
WAIT;
END PROCESS t_prcs_ID_EX_RegisterRt_0;
-- MEM_WB_RegisterRd[4]
t_prcs_MEM_WB_RegisterRd_4: PROCESS
BEGIN
	MEM_WB_RegisterRd(4) <= '0';
WAIT;
END PROCESS t_prcs_MEM_WB_RegisterRd_4;
-- MEM_WB_RegisterRd[3]
t_prcs_MEM_WB_RegisterRd_3: PROCESS
BEGIN
	MEM_WB_RegisterRd(3) <= '0';
WAIT;
END PROCESS t_prcs_MEM_WB_RegisterRd_3;
-- MEM_WB_RegisterRd[2]
t_prcs_MEM_WB_RegisterRd_2: PROCESS
BEGIN
	MEM_WB_RegisterRd(2) <= '0';
WAIT;
END PROCESS t_prcs_MEM_WB_RegisterRd_2;
-- MEM_WB_RegisterRd[1]
t_prcs_MEM_WB_RegisterRd_1: PROCESS
BEGIN
	MEM_WB_RegisterRd(1) <= '1';
WAIT;
END PROCESS t_prcs_MEM_WB_RegisterRd_1;
-- MEM_WB_RegisterRd[0]
t_prcs_MEM_WB_RegisterRd_0: PROCESS
BEGIN
	MEM_WB_RegisterRd(0) <= '0';
WAIT;
END PROCESS t_prcs_MEM_WB_RegisterRd_0;

-- MEM_WB_RegWrite
t_prcs_MEM_WB_RegWrite: PROCESS
BEGIN
	MEM_WB_RegWrite <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		MEM_WB_RegWrite <= '0';
		WAIT FOR 10000 ps;
		MEM_WB_RegWrite <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	MEM_WB_RegWrite <= '0';
WAIT;
END PROCESS t_prcs_MEM_WB_RegWrite;
END EX_FORWORDING_arch;
