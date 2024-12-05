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
-- Generated on "11/15/2023 16:31:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_DECODER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_DECODER_vhd_vec_tst IS
END ALU_DECODER_vhd_vec_tst;
ARCHITECTURE ALU_DECODER_arch OF ALU_DECODER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL F : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL FUNCT : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT ALU_DECODER
	PORT (
	ALUOP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	F : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	FUNCT : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU_DECODER
	PORT MAP (
-- list connections between master ports and signals
	ALUOP => ALUOP,
	F => F,
	FUNCT => FUNCT
	);
-- ALUOP[1]
t_prcs_ALUOP_1: PROCESS
BEGIN
LOOP
	ALUOP(1) <= '0';
	WAIT FOR 20000 ps;
	ALUOP(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ALUOP_1;
-- ALUOP[0]
t_prcs_ALUOP_0: PROCESS
BEGIN
LOOP
	ALUOP(0) <= '0';
	WAIT FOR 10000 ps;
	ALUOP(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ALUOP_0;
-- FUNCT[5]
t_prcs_FUNCT_5: PROCESS
BEGIN
	FUNCT(5) <= '0';
WAIT;
END PROCESS t_prcs_FUNCT_5;
-- FUNCT[4]
t_prcs_FUNCT_4: PROCESS
BEGIN
	FUNCT(4) <= '0';
WAIT;
END PROCESS t_prcs_FUNCT_4;
-- FUNCT[3]
t_prcs_FUNCT_3: PROCESS
BEGIN
	FUNCT(3) <= '0';
WAIT;
END PROCESS t_prcs_FUNCT_3;
-- FUNCT[2]
t_prcs_FUNCT_2: PROCESS
BEGIN
	FUNCT(2) <= '0';
WAIT;
END PROCESS t_prcs_FUNCT_2;
-- FUNCT[1]
t_prcs_FUNCT_1: PROCESS
BEGIN
	FUNCT(1) <= '1';
WAIT;
END PROCESS t_prcs_FUNCT_1;
-- FUNCT[0]
t_prcs_FUNCT_0: PROCESS
BEGIN
	FUNCT(0) <= '1';
WAIT;
END PROCESS t_prcs_FUNCT_0;
END ALU_DECODER_arch;
