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

-- DATE "11/23/2023 17:04:56"

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

ENTITY 	ETAGE_EXECUTE IS
    PORT (
	ALU_SRC : IN std_logic;
	REG_DEST : IN std_logic;
	MEM_WB_REG_WRITE : IN std_logic;
	EX_MEM_REG_WRITE : IN std_logic;
	ALUOP : IN std_logic_vector(1 DOWNTO 0);
	RD_ADDR : IN std_logic_vector(4 DOWNTO 0);
	RT_ADDR : IN std_logic_vector(4 DOWNTO 0);
	RS_ADDR : IN std_logic_vector(4 DOWNTO 0);
	RD_WB : IN std_logic_vector(4 DOWNTO 0);
	RD_MEM : IN std_logic_vector(4 DOWNTO 0);
	RS_RT_WB : IN std_logic_vector(31 DOWNTO 0);
	RS_RT_MEM : IN std_logic_vector(31 DOWNTO 0);
	RT_ID : IN std_logic_vector(31 DOWNTO 0);
	RS_ID : IN std_logic_vector(31 DOWNTO 0);
	SIGN_EXTENDED : IN std_logic_vector(31 DOWNTO 0);
	FUNCT : IN std_logic_vector(5 DOWNTO 0);
	MUX_S : BUFFER std_logic_vector(4 DOWNTO 0);
	RT_SW : BUFFER std_logic_vector(31 DOWNTO 0);
	S_ALU : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END ETAGE_EXECUTE;

-- Design Ports Information
-- FUNCT[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_S[0]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_S[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_S[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_S[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_S[4]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[1]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[3]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[6]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[7]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[9]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[10]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[11]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[12]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[13]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[14]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[16]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[17]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[18]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[19]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[20]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[21]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[22]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[23]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[24]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[25]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[26]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[27]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[28]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[29]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[30]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_SW[31]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[2]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[3]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[6]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[8]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[13]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[14]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[15]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[16]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[17]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[18]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[19]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[20]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[21]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[22]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[23]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[24]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[25]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[26]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[27]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[28]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[29]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[30]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_ALU[31]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_DEST	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_ADDR[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ADDR[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_ADDR[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ADDR[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_ADDR[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ADDR[2]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_ADDR[3]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ADDR[3]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_ADDR[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ADDR[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_MEM_REG_WRITE	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_MEM[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_MEM[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_MEM[2]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_MEM[3]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_MEM[4]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_WB[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_WB_REG_WRITE	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_WB[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_WB[1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_WB[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_WB[3]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[6]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[7]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[7]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[9]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[10]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[10]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[11]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[12]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[12]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[12]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[13]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[13]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[13]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[14]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[14]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[15]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[15]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[15]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[16]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[16]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[17]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[17]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[17]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[18]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[18]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[19]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[19]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[19]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[20]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[20]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[20]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[21]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[21]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[21]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[22]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[22]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[22]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[23]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[23]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[24]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[24]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[24]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[25]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[25]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[25]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[26]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[26]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[26]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[27]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[27]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[27]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[28]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[28]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[28]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[29]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[29]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[29]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[30]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[30]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[30]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_ID[31]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_WB[31]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_RT_MEM[31]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SRC	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ADDR[2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ADDR[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ADDR[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ADDR[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ADDR[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[0]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[5]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[6]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[7]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[7]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[10]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[10]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[11]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[12]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[13]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[13]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[14]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[14]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[15]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[15]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[16]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[16]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[17]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[17]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[18]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[18]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[19]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[19]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[20]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[20]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[21]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[21]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[22]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[22]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[23]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[23]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[24]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[24]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[25]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[25]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[26]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[26]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[27]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[27]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[28]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[28]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[29]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[29]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[30]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[30]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_ID[31]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGN_EXTENDED[31]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[1]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[2]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FUNCT[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ETAGE_EXECUTE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALU_SRC : std_logic;
SIGNAL ww_REG_DEST : std_logic;
SIGNAL ww_MEM_WB_REG_WRITE : std_logic;
SIGNAL ww_EX_MEM_REG_WRITE : std_logic;
SIGNAL ww_ALUOP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RD_ADDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RT_ADDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RS_ADDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RD_WB : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RD_MEM : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RS_RT_WB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_RT_MEM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_ID : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_ID : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SIGN_EXTENDED : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FUNCT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_MUX_S : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RT_SW : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_S_ALU : std_logic_vector(31 DOWNTO 0);
SIGNAL \FUNCT[3]~input_o\ : std_logic;
SIGNAL \FUNCT[4]~input_o\ : std_logic;
SIGNAL \FUNCT[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \RT_ADDR[0]~input_o\ : std_logic;
SIGNAL \RD_ADDR[0]~input_o\ : std_logic;
SIGNAL \REG_DEST~input_o\ : std_logic;
SIGNAL \MUX21_ADDR|s[0]~0_combout\ : std_logic;
SIGNAL \RD_ADDR[1]~input_o\ : std_logic;
SIGNAL \RT_ADDR[1]~input_o\ : std_logic;
SIGNAL \MUX21_ADDR|s[1]~1_combout\ : std_logic;
SIGNAL \RT_ADDR[2]~input_o\ : std_logic;
SIGNAL \RD_ADDR[2]~input_o\ : std_logic;
SIGNAL \MUX21_ADDR|s[2]~2_combout\ : std_logic;
SIGNAL \RD_ADDR[3]~input_o\ : std_logic;
SIGNAL \RT_ADDR[3]~input_o\ : std_logic;
SIGNAL \MUX21_ADDR|s[3]~3_combout\ : std_logic;
SIGNAL \RD_ADDR[4]~input_o\ : std_logic;
SIGNAL \RT_ADDR[4]~input_o\ : std_logic;
SIGNAL \MUX21_ADDR|s[4]~4_combout\ : std_logic;
SIGNAL \RS_RT_MEM[0]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[0]~input_o\ : std_logic;
SIGNAL \RT_ID[0]~input_o\ : std_logic;
SIGNAL \RD_MEM[4]~input_o\ : std_logic;
SIGNAL \RD_MEM[3]~input_o\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal2~1_combout\ : std_logic;
SIGNAL \RD_WB[2]~input_o\ : std_logic;
SIGNAL \RD_WB[3]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux31~1_combout\ : std_logic;
SIGNAL \RD_MEM[0]~input_o\ : std_logic;
SIGNAL \RD_MEM[2]~input_o\ : std_logic;
SIGNAL \RD_MEM[1]~input_o\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal2~0_combout\ : std_logic;
SIGNAL \RD_WB[0]~input_o\ : std_logic;
SIGNAL \MEM_WB_REG_WRITE~input_o\ : std_logic;
SIGNAL \RD_WB[1]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux31~0_combout\ : std_logic;
SIGNAL \RD_WB[4]~input_o\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal3~0_combout\ : std_logic;
SIGNAL \MUX31_B|Mux31~3_combout\ : std_logic;
SIGNAL \EX_MEM_REG_WRITE~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux31~2_combout\ : std_logic;
SIGNAL \MUX31_B|Mux31~4_combout\ : std_logic;
SIGNAL \RT_ID[1]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[1]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[1]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux30~0_combout\ : std_logic;
SIGNAL \RT_ID[2]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[2]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[2]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux29~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[3]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[3]~input_o\ : std_logic;
SIGNAL \RT_ID[3]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux28~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[4]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[4]~input_o\ : std_logic;
SIGNAL \RT_ID[4]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux27~0_combout\ : std_logic;
SIGNAL \RT_ID[5]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[5]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[5]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux26~0_combout\ : std_logic;
SIGNAL \RT_ID[6]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[6]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[6]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux25~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[7]~input_o\ : std_logic;
SIGNAL \RT_ID[7]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[7]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux24~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[8]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[8]~input_o\ : std_logic;
SIGNAL \RT_ID[8]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux23~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[9]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[9]~input_o\ : std_logic;
SIGNAL \RT_ID[9]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux22~0_combout\ : std_logic;
SIGNAL \RT_ID[10]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[10]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[10]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux21~0_combout\ : std_logic;
SIGNAL \RT_ID[11]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[11]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[11]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux20~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[12]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[12]~input_o\ : std_logic;
SIGNAL \RT_ID[12]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux19~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[13]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[13]~input_o\ : std_logic;
SIGNAL \RT_ID[13]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux18~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[14]~input_o\ : std_logic;
SIGNAL \RT_ID[14]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[14]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux17~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[15]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[15]~input_o\ : std_logic;
SIGNAL \RT_ID[15]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux16~0_combout\ : std_logic;
SIGNAL \RT_ID[16]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[16]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[16]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux15~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[17]~input_o\ : std_logic;
SIGNAL \RT_ID[17]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[17]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux14~0_combout\ : std_logic;
SIGNAL \RT_ID[18]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[18]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[18]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux13~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[19]~input_o\ : std_logic;
SIGNAL \RT_ID[19]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[19]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux12~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[20]~input_o\ : std_logic;
SIGNAL \RT_ID[20]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[20]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux11~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[21]~input_o\ : std_logic;
SIGNAL \RT_ID[21]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[21]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux10~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[22]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[22]~input_o\ : std_logic;
SIGNAL \RT_ID[22]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux9~0_combout\ : std_logic;
SIGNAL \RT_ID[23]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[23]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[23]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux8~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[24]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[24]~input_o\ : std_logic;
SIGNAL \RT_ID[24]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux7~0_combout\ : std_logic;
SIGNAL \RT_ID[25]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[25]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[25]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux6~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[26]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[26]~input_o\ : std_logic;
SIGNAL \RT_ID[26]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux5~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[27]~input_o\ : std_logic;
SIGNAL \RT_ID[27]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[27]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux4~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[28]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[28]~input_o\ : std_logic;
SIGNAL \RT_ID[28]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux3~0_combout\ : std_logic;
SIGNAL \RS_RT_WB[29]~input_o\ : std_logic;
SIGNAL \RS_RT_MEM[29]~input_o\ : std_logic;
SIGNAL \RT_ID[29]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux2~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[30]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[30]~input_o\ : std_logic;
SIGNAL \RT_ID[30]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux1~0_combout\ : std_logic;
SIGNAL \RS_RT_MEM[31]~input_o\ : std_logic;
SIGNAL \RT_ID[31]~input_o\ : std_logic;
SIGNAL \RS_RT_WB[31]~input_o\ : std_logic;
SIGNAL \MUX31_B|Mux0~0_combout\ : std_logic;
SIGNAL \FUNCT[2]~input_o\ : std_logic;
SIGNAL \ALUOP[1]~input_o\ : std_logic;
SIGNAL \ALUOP[0]~input_o\ : std_logic;
SIGNAL \ALU_DECOD|Equal0~2_combout\ : std_logic;
SIGNAL \ALU_DECOD|Equal0~0_combout\ : std_logic;
SIGNAL \ALU_DECOD|Equal0~1_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[0]~input_o\ : std_logic;
SIGNAL \ALU_SRC~input_o\ : std_logic;
SIGNAL \RS_ADDR[0]~input_o\ : std_logic;
SIGNAL \RS_ADDR[1]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux2~0_combout\ : std_logic;
SIGNAL \RS_ADDR[3]~input_o\ : std_logic;
SIGNAL \RS_ADDR[4]~input_o\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal0~1_combout\ : std_logic;
SIGNAL \RS_ADDR[2]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux2~1_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal1~0_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|Equal0~0_combout\ : std_logic;
SIGNAL \MUX31_A|Mux2~3_combout\ : std_logic;
SIGNAL \MUX31_A|Mux2~2_combout\ : std_logic;
SIGNAL \RS_ID[0]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux31~0_combout\ : std_logic;
SIGNAL \FUNCT[0]~input_o\ : std_logic;
SIGNAL \ALU|Mux31~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[31]~input_o\ : std_logic;
SIGNAL \RS_ID[31]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux0~0_combout\ : std_logic;
SIGNAL \RS_ID[30]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux1~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[30]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[29]~input_o\ : std_logic;
SIGNAL \RS_ID[29]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux2~4_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[28]~input_o\ : std_logic;
SIGNAL \RS_ID[28]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux3~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[27]~input_o\ : std_logic;
SIGNAL \RS_ID[27]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux4~0_combout\ : std_logic;
SIGNAL \RS_ID[26]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux5~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[26]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[25]~input_o\ : std_logic;
SIGNAL \RS_ID[25]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux6~0_combout\ : std_logic;
SIGNAL \RS_ID[24]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux7~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[24]~input_o\ : std_logic;
SIGNAL \RS_ID[23]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux8~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[23]~input_o\ : std_logic;
SIGNAL \RS_ID[22]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux9~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[22]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[21]~input_o\ : std_logic;
SIGNAL \RS_ID[21]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux10~0_combout\ : std_logic;
SIGNAL \RS_ID[20]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux11~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[20]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[19]~input_o\ : std_logic;
SIGNAL \RS_ID[19]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux12~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[18]~input_o\ : std_logic;
SIGNAL \RS_ID[18]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux13~0_combout\ : std_logic;
SIGNAL \RS_ID[17]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux14~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[17]~input_o\ : std_logic;
SIGNAL \RS_ID[16]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux15~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[16]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[15]~input_o\ : std_logic;
SIGNAL \RS_ID[15]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux16~0_combout\ : std_logic;
SIGNAL \RS_ID[14]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux17~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[14]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[13]~input_o\ : std_logic;
SIGNAL \RS_ID[13]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux18~0_combout\ : std_logic;
SIGNAL \RS_ID[12]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux19~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[12]~input_o\ : std_logic;
SIGNAL \RS_ID[11]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux20~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[11]~input_o\ : std_logic;
SIGNAL \RS_ID[10]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux21~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[10]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[9]~input_o\ : std_logic;
SIGNAL \RS_ID[9]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux22~0_combout\ : std_logic;
SIGNAL \RS_ID[8]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux23~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[8]~input_o\ : std_logic;
SIGNAL \RS_ID[7]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux24~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[7]~input_o\ : std_logic;
SIGNAL \RS_ID[6]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux25~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[6]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[5]~input_o\ : std_logic;
SIGNAL \RS_ID[5]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux26~0_combout\ : std_logic;
SIGNAL \RS_ID[4]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux27~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[4]~input_o\ : std_logic;
SIGNAL \SIGN_EXTENDED[3]~input_o\ : std_logic;
SIGNAL \RS_ID[3]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux28~0_combout\ : std_logic;
SIGNAL \RS_ID[2]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux29~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[2]~input_o\ : std_logic;
SIGNAL \RS_ID[1]~input_o\ : std_logic;
SIGNAL \MUX31_A|Mux30~0_combout\ : std_logic;
SIGNAL \SIGN_EXTENDED[1]~input_o\ : std_logic;
SIGNAL \ALU|Add1~130_cout\ : std_logic;
SIGNAL \ALU|Add1~2\ : std_logic;
SIGNAL \ALU|Add1~10\ : std_logic;
SIGNAL \ALU|Add1~14\ : std_logic;
SIGNAL \ALU|Add1~18\ : std_logic;
SIGNAL \ALU|Add1~22\ : std_logic;
SIGNAL \ALU|Add1~26\ : std_logic;
SIGNAL \ALU|Add1~30\ : std_logic;
SIGNAL \ALU|Add1~34\ : std_logic;
SIGNAL \ALU|Add1~38\ : std_logic;
SIGNAL \ALU|Add1~42\ : std_logic;
SIGNAL \ALU|Add1~46\ : std_logic;
SIGNAL \ALU|Add1~50\ : std_logic;
SIGNAL \ALU|Add1~54\ : std_logic;
SIGNAL \ALU|Add1~58\ : std_logic;
SIGNAL \ALU|Add1~62\ : std_logic;
SIGNAL \ALU|Add1~66\ : std_logic;
SIGNAL \ALU|Add1~70\ : std_logic;
SIGNAL \ALU|Add1~74\ : std_logic;
SIGNAL \ALU|Add1~78\ : std_logic;
SIGNAL \ALU|Add1~82\ : std_logic;
SIGNAL \ALU|Add1~86\ : std_logic;
SIGNAL \ALU|Add1~90\ : std_logic;
SIGNAL \ALU|Add1~94\ : std_logic;
SIGNAL \ALU|Add1~98\ : std_logic;
SIGNAL \ALU|Add1~102\ : std_logic;
SIGNAL \ALU|Add1~106\ : std_logic;
SIGNAL \ALU|Add1~110\ : std_logic;
SIGNAL \ALU|Add1~114\ : std_logic;
SIGNAL \ALU|Add1~118\ : std_logic;
SIGNAL \ALU|Add1~122\ : std_logic;
SIGNAL \ALU|Add1~126\ : std_logic;
SIGNAL \ALU|Add1~5_sumout\ : std_logic;
SIGNAL \FUNCT[1]~input_o\ : std_logic;
SIGNAL \ALU|Add0~1_sumout\ : std_logic;
SIGNAL \ALU|Add1~1_sumout\ : std_logic;
SIGNAL \ALU|Mux31~1_combout\ : std_logic;
SIGNAL \ALU|Add1~9_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[1]~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2\ : std_logic;
SIGNAL \ALU|Add0~5_sumout\ : std_logic;
SIGNAL \ALU|Mux30~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[2]~1_combout\ : std_logic;
SIGNAL \ALU|Add1~13_sumout\ : std_logic;
SIGNAL \ALU|Add0~6\ : std_logic;
SIGNAL \ALU|Add0~9_sumout\ : std_logic;
SIGNAL \ALU|Mux29~0_combout\ : std_logic;
SIGNAL \ALU|Add1~17_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[3]~2_combout\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~13_sumout\ : std_logic;
SIGNAL \ALU|Mux28~0_combout\ : std_logic;
SIGNAL \ALU|Add1~21_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[4]~3_combout\ : std_logic;
SIGNAL \ALU|Add0~14\ : std_logic;
SIGNAL \ALU|Add0~17_sumout\ : std_logic;
SIGNAL \ALU|Mux27~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[5]~4_combout\ : std_logic;
SIGNAL \ALU|Add1~25_sumout\ : std_logic;
SIGNAL \ALU|Add0~18\ : std_logic;
SIGNAL \ALU|Add0~21_sumout\ : std_logic;
SIGNAL \ALU|Mux26~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[6]~5_combout\ : std_logic;
SIGNAL \ALU|Add1~29_sumout\ : std_logic;
SIGNAL \ALU|Add0~22\ : std_logic;
SIGNAL \ALU|Add0~25_sumout\ : std_logic;
SIGNAL \ALU|Mux25~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[7]~6_combout\ : std_logic;
SIGNAL \ALU|Add1~33_sumout\ : std_logic;
SIGNAL \ALU|Add0~26\ : std_logic;
SIGNAL \ALU|Add0~29_sumout\ : std_logic;
SIGNAL \ALU|Mux24~0_combout\ : std_logic;
SIGNAL \ALU|Add1~37_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[8]~7_combout\ : std_logic;
SIGNAL \ALU|Add0~30\ : std_logic;
SIGNAL \ALU|Add0~33_sumout\ : std_logic;
SIGNAL \ALU|Mux23~0_combout\ : std_logic;
SIGNAL \ALU|Add1~41_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[9]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~34\ : std_logic;
SIGNAL \ALU|Add0~37_sumout\ : std_logic;
SIGNAL \ALU|Mux22~0_combout\ : std_logic;
SIGNAL \ALU|Add1~45_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[10]~9_combout\ : std_logic;
SIGNAL \ALU|Add0~38\ : std_logic;
SIGNAL \ALU|Add0~41_sumout\ : std_logic;
SIGNAL \ALU|Mux21~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[11]~10_combout\ : std_logic;
SIGNAL \ALU|Add1~49_sumout\ : std_logic;
SIGNAL \ALU|Add0~42\ : std_logic;
SIGNAL \ALU|Add0~45_sumout\ : std_logic;
SIGNAL \ALU|Mux20~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[12]~11_combout\ : std_logic;
SIGNAL \ALU|Add1~53_sumout\ : std_logic;
SIGNAL \ALU|Add0~46\ : std_logic;
SIGNAL \ALU|Add0~49_sumout\ : std_logic;
SIGNAL \ALU|Mux19~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[13]~12_combout\ : std_logic;
SIGNAL \ALU|Add1~57_sumout\ : std_logic;
SIGNAL \ALU|Add0~50\ : std_logic;
SIGNAL \ALU|Add0~53_sumout\ : std_logic;
SIGNAL \ALU|Mux18~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[14]~13_combout\ : std_logic;
SIGNAL \ALU|Add1~61_sumout\ : std_logic;
SIGNAL \ALU|Add0~54\ : std_logic;
SIGNAL \ALU|Add0~57_sumout\ : std_logic;
SIGNAL \ALU|Mux17~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[15]~14_combout\ : std_logic;
SIGNAL \ALU|Add1~65_sumout\ : std_logic;
SIGNAL \ALU|Add0~58\ : std_logic;
SIGNAL \ALU|Add0~61_sumout\ : std_logic;
SIGNAL \ALU|Mux16~0_combout\ : std_logic;
SIGNAL \ALU|Add1~69_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[16]~15_combout\ : std_logic;
SIGNAL \ALU|Add0~62\ : std_logic;
SIGNAL \ALU|Add0~65_sumout\ : std_logic;
SIGNAL \ALU|Mux15~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[17]~16_combout\ : std_logic;
SIGNAL \ALU|Add1~73_sumout\ : std_logic;
SIGNAL \ALU|Add0~66\ : std_logic;
SIGNAL \ALU|Add0~69_sumout\ : std_logic;
SIGNAL \ALU|Mux14~0_combout\ : std_logic;
SIGNAL \ALU|Add1~77_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[18]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~70\ : std_logic;
SIGNAL \ALU|Add0~73_sumout\ : std_logic;
SIGNAL \ALU|Mux13~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[19]~18_combout\ : std_logic;
SIGNAL \ALU|Add1~81_sumout\ : std_logic;
SIGNAL \ALU|Add0~74\ : std_logic;
SIGNAL \ALU|Add0~77_sumout\ : std_logic;
SIGNAL \ALU|Mux12~0_combout\ : std_logic;
SIGNAL \ALU|Add1~85_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[20]~19_combout\ : std_logic;
SIGNAL \ALU|Add0~78\ : std_logic;
SIGNAL \ALU|Add0~81_sumout\ : std_logic;
SIGNAL \ALU|Mux11~0_combout\ : std_logic;
SIGNAL \ALU|Add1~89_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[21]~20_combout\ : std_logic;
SIGNAL \ALU|Add0~82\ : std_logic;
SIGNAL \ALU|Add0~85_sumout\ : std_logic;
SIGNAL \ALU|Mux10~0_combout\ : std_logic;
SIGNAL \ALU|Add1~93_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[22]~21_combout\ : std_logic;
SIGNAL \ALU|Add0~86\ : std_logic;
SIGNAL \ALU|Add0~89_sumout\ : std_logic;
SIGNAL \ALU|Mux9~0_combout\ : std_logic;
SIGNAL \ALU|Add1~97_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[23]~22_combout\ : std_logic;
SIGNAL \ALU|Add0~90\ : std_logic;
SIGNAL \ALU|Add0~93_sumout\ : std_logic;
SIGNAL \ALU|Mux8~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[24]~23_combout\ : std_logic;
SIGNAL \ALU|Add1~101_sumout\ : std_logic;
SIGNAL \ALU|Add0~94\ : std_logic;
SIGNAL \ALU|Add0~97_sumout\ : std_logic;
SIGNAL \ALU|Mux7~0_combout\ : std_logic;
SIGNAL \ALU|Add1~105_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[25]~24_combout\ : std_logic;
SIGNAL \ALU|Add0~98\ : std_logic;
SIGNAL \ALU|Add0~101_sumout\ : std_logic;
SIGNAL \ALU|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|Add1~109_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[26]~25_combout\ : std_logic;
SIGNAL \ALU|Add0~102\ : std_logic;
SIGNAL \ALU|Add0~105_sumout\ : std_logic;
SIGNAL \ALU|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|Add1~113_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[27]~26_combout\ : std_logic;
SIGNAL \ALU|Add0~106\ : std_logic;
SIGNAL \ALU|Add0~109_sumout\ : std_logic;
SIGNAL \ALU|Mux4~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[28]~27_combout\ : std_logic;
SIGNAL \ALU|Add1~117_sumout\ : std_logic;
SIGNAL \ALU|Add0~110\ : std_logic;
SIGNAL \ALU|Add0~113_sumout\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Add1~121_sumout\ : std_logic;
SIGNAL \MUX21_DATA|s[29]~28_combout\ : std_logic;
SIGNAL \ALU|Add0~114\ : std_logic;
SIGNAL \ALU|Add0~117_sumout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[30]~29_combout\ : std_logic;
SIGNAL \ALU|Add1~125_sumout\ : std_logic;
SIGNAL \ALU|Add0~118\ : std_logic;
SIGNAL \ALU|Add0~121_sumout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|s[31]~30_combout\ : std_logic;
SIGNAL \ALU|Add0~122\ : std_logic;
SIGNAL \ALU|Add0~125_sumout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU_DECOD|F\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_FUNCT[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FUNCT[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOP[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOP[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_FUNCT[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SIGN_EXTENDED[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ADDR[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ADDR[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ADDR[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ADDR[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_ID[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_SRC~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_MEM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RS_RT_WB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_WB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_WB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_WB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_WB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_MEM_WB_REG_WRITE~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_WB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_MEM[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_MEM[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_MEM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_MEM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_MEM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EX_MEM_REG_WRITE~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ID[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ADDR[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_ADDR[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ADDR[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_ADDR[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_ADDR[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ADDR[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_ADDR[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RT_ADDR[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RD_ADDR[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_REG_DEST~input_o\ : std_logic;
SIGNAL \ALU_DECOD|ALT_INV_F\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALU_DECOD|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALU_DECOD|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALU_DECOD|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[31]~30_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[30]~29_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[29]~28_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[28]~27_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[27]~26_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[26]~25_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[25]~24_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[24]~23_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[23]~22_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[22]~21_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[21]~20_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[20]~19_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[19]~18_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[18]~17_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[17]~16_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[16]~15_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[15]~14_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[14]~13_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[13]~12_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[12]~11_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[11]~10_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[10]~9_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[9]~8_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[8]~7_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[7]~6_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[6]~5_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[5]~4_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[4]~3_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[3]~2_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[2]~1_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \MUX21_DATA|ALT_INV_s[1]~0_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX31_A|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \MUX31_B|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \EX_FORWARDING1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALU|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_ALU_SRC <= ALU_SRC;
ww_REG_DEST <= REG_DEST;
ww_MEM_WB_REG_WRITE <= MEM_WB_REG_WRITE;
ww_EX_MEM_REG_WRITE <= EX_MEM_REG_WRITE;
ww_ALUOP <= ALUOP;
ww_RD_ADDR <= RD_ADDR;
ww_RT_ADDR <= RT_ADDR;
ww_RS_ADDR <= RS_ADDR;
ww_RD_WB <= RD_WB;
ww_RD_MEM <= RD_MEM;
ww_RS_RT_WB <= RS_RT_WB;
ww_RS_RT_MEM <= RS_RT_MEM;
ww_RT_ID <= RT_ID;
ww_RS_ID <= RS_ID;
ww_SIGN_EXTENDED <= SIGN_EXTENDED;
ww_FUNCT <= FUNCT;
MUX_S <= ww_MUX_S;
RT_SW <= ww_RT_SW;
S_ALU <= ww_S_ALU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_FUNCT[0]~input_o\ <= NOT \FUNCT[0]~input_o\;
\ALT_INV_FUNCT[2]~input_o\ <= NOT \FUNCT[2]~input_o\;
\ALT_INV_ALUOP[1]~input_o\ <= NOT \ALUOP[1]~input_o\;
\ALT_INV_ALUOP[0]~input_o\ <= NOT \ALUOP[0]~input_o\;
\ALT_INV_FUNCT[1]~input_o\ <= NOT \FUNCT[1]~input_o\;
\ALT_INV_SIGN_EXTENDED[31]~input_o\ <= NOT \SIGN_EXTENDED[31]~input_o\;
\ALT_INV_RS_ID[31]~input_o\ <= NOT \RS_ID[31]~input_o\;
\ALT_INV_SIGN_EXTENDED[30]~input_o\ <= NOT \SIGN_EXTENDED[30]~input_o\;
\ALT_INV_RS_ID[30]~input_o\ <= NOT \RS_ID[30]~input_o\;
\ALT_INV_SIGN_EXTENDED[29]~input_o\ <= NOT \SIGN_EXTENDED[29]~input_o\;
\ALT_INV_RS_ID[29]~input_o\ <= NOT \RS_ID[29]~input_o\;
\ALT_INV_SIGN_EXTENDED[28]~input_o\ <= NOT \SIGN_EXTENDED[28]~input_o\;
\ALT_INV_RS_ID[28]~input_o\ <= NOT \RS_ID[28]~input_o\;
\ALT_INV_SIGN_EXTENDED[27]~input_o\ <= NOT \SIGN_EXTENDED[27]~input_o\;
\ALT_INV_RS_ID[27]~input_o\ <= NOT \RS_ID[27]~input_o\;
\ALT_INV_SIGN_EXTENDED[26]~input_o\ <= NOT \SIGN_EXTENDED[26]~input_o\;
\ALT_INV_RS_ID[26]~input_o\ <= NOT \RS_ID[26]~input_o\;
\ALT_INV_SIGN_EXTENDED[25]~input_o\ <= NOT \SIGN_EXTENDED[25]~input_o\;
\ALT_INV_RS_ID[25]~input_o\ <= NOT \RS_ID[25]~input_o\;
\ALT_INV_SIGN_EXTENDED[24]~input_o\ <= NOT \SIGN_EXTENDED[24]~input_o\;
\ALT_INV_RS_ID[24]~input_o\ <= NOT \RS_ID[24]~input_o\;
\ALT_INV_SIGN_EXTENDED[23]~input_o\ <= NOT \SIGN_EXTENDED[23]~input_o\;
\ALT_INV_RS_ID[23]~input_o\ <= NOT \RS_ID[23]~input_o\;
\ALT_INV_SIGN_EXTENDED[22]~input_o\ <= NOT \SIGN_EXTENDED[22]~input_o\;
\ALT_INV_RS_ID[22]~input_o\ <= NOT \RS_ID[22]~input_o\;
\ALT_INV_SIGN_EXTENDED[21]~input_o\ <= NOT \SIGN_EXTENDED[21]~input_o\;
\ALT_INV_RS_ID[21]~input_o\ <= NOT \RS_ID[21]~input_o\;
\ALT_INV_SIGN_EXTENDED[20]~input_o\ <= NOT \SIGN_EXTENDED[20]~input_o\;
\ALT_INV_RS_ID[20]~input_o\ <= NOT \RS_ID[20]~input_o\;
\ALT_INV_SIGN_EXTENDED[19]~input_o\ <= NOT \SIGN_EXTENDED[19]~input_o\;
\ALT_INV_RS_ID[19]~input_o\ <= NOT \RS_ID[19]~input_o\;
\ALT_INV_SIGN_EXTENDED[18]~input_o\ <= NOT \SIGN_EXTENDED[18]~input_o\;
\ALT_INV_RS_ID[18]~input_o\ <= NOT \RS_ID[18]~input_o\;
\ALT_INV_SIGN_EXTENDED[17]~input_o\ <= NOT \SIGN_EXTENDED[17]~input_o\;
\ALT_INV_RS_ID[17]~input_o\ <= NOT \RS_ID[17]~input_o\;
\ALT_INV_SIGN_EXTENDED[16]~input_o\ <= NOT \SIGN_EXTENDED[16]~input_o\;
\ALT_INV_RS_ID[16]~input_o\ <= NOT \RS_ID[16]~input_o\;
\ALT_INV_SIGN_EXTENDED[15]~input_o\ <= NOT \SIGN_EXTENDED[15]~input_o\;
\ALT_INV_RS_ID[15]~input_o\ <= NOT \RS_ID[15]~input_o\;
\ALT_INV_SIGN_EXTENDED[14]~input_o\ <= NOT \SIGN_EXTENDED[14]~input_o\;
\ALT_INV_RS_ID[14]~input_o\ <= NOT \RS_ID[14]~input_o\;
\ALT_INV_SIGN_EXTENDED[13]~input_o\ <= NOT \SIGN_EXTENDED[13]~input_o\;
\ALT_INV_RS_ID[13]~input_o\ <= NOT \RS_ID[13]~input_o\;
\ALT_INV_SIGN_EXTENDED[12]~input_o\ <= NOT \SIGN_EXTENDED[12]~input_o\;
\ALT_INV_RS_ID[12]~input_o\ <= NOT \RS_ID[12]~input_o\;
\ALT_INV_SIGN_EXTENDED[11]~input_o\ <= NOT \SIGN_EXTENDED[11]~input_o\;
\ALT_INV_RS_ID[11]~input_o\ <= NOT \RS_ID[11]~input_o\;
\ALT_INV_SIGN_EXTENDED[10]~input_o\ <= NOT \SIGN_EXTENDED[10]~input_o\;
\ALT_INV_RS_ID[10]~input_o\ <= NOT \RS_ID[10]~input_o\;
\ALT_INV_SIGN_EXTENDED[9]~input_o\ <= NOT \SIGN_EXTENDED[9]~input_o\;
\ALT_INV_RS_ID[9]~input_o\ <= NOT \RS_ID[9]~input_o\;
\ALT_INV_SIGN_EXTENDED[8]~input_o\ <= NOT \SIGN_EXTENDED[8]~input_o\;
\ALT_INV_RS_ID[8]~input_o\ <= NOT \RS_ID[8]~input_o\;
\ALT_INV_SIGN_EXTENDED[7]~input_o\ <= NOT \SIGN_EXTENDED[7]~input_o\;
\ALT_INV_RS_ID[7]~input_o\ <= NOT \RS_ID[7]~input_o\;
\ALT_INV_SIGN_EXTENDED[6]~input_o\ <= NOT \SIGN_EXTENDED[6]~input_o\;
\ALT_INV_RS_ID[6]~input_o\ <= NOT \RS_ID[6]~input_o\;
\ALT_INV_SIGN_EXTENDED[5]~input_o\ <= NOT \SIGN_EXTENDED[5]~input_o\;
\ALT_INV_RS_ID[5]~input_o\ <= NOT \RS_ID[5]~input_o\;
\ALT_INV_SIGN_EXTENDED[4]~input_o\ <= NOT \SIGN_EXTENDED[4]~input_o\;
\ALT_INV_RS_ID[4]~input_o\ <= NOT \RS_ID[4]~input_o\;
\ALT_INV_SIGN_EXTENDED[3]~input_o\ <= NOT \SIGN_EXTENDED[3]~input_o\;
\ALT_INV_RS_ID[3]~input_o\ <= NOT \RS_ID[3]~input_o\;
\ALT_INV_SIGN_EXTENDED[2]~input_o\ <= NOT \SIGN_EXTENDED[2]~input_o\;
\ALT_INV_RS_ID[2]~input_o\ <= NOT \RS_ID[2]~input_o\;
\ALT_INV_SIGN_EXTENDED[1]~input_o\ <= NOT \SIGN_EXTENDED[1]~input_o\;
\ALT_INV_RS_ID[1]~input_o\ <= NOT \RS_ID[1]~input_o\;
\ALT_INV_SIGN_EXTENDED[0]~input_o\ <= NOT \SIGN_EXTENDED[0]~input_o\;
\ALT_INV_RS_ADDR[4]~input_o\ <= NOT \RS_ADDR[4]~input_o\;
\ALT_INV_RS_ADDR[3]~input_o\ <= NOT \RS_ADDR[3]~input_o\;
\ALT_INV_RS_ADDR[1]~input_o\ <= NOT \RS_ADDR[1]~input_o\;
\ALT_INV_RS_ADDR[0]~input_o\ <= NOT \RS_ADDR[0]~input_o\;
\ALT_INV_RS_ADDR[2]~input_o\ <= NOT \RS_ADDR[2]~input_o\;
\ALT_INV_RS_ID[0]~input_o\ <= NOT \RS_ID[0]~input_o\;
\ALT_INV_ALU_SRC~input_o\ <= NOT \ALU_SRC~input_o\;
\ALT_INV_RS_RT_MEM[31]~input_o\ <= NOT \RS_RT_MEM[31]~input_o\;
\ALT_INV_RS_RT_WB[31]~input_o\ <= NOT \RS_RT_WB[31]~input_o\;
\ALT_INV_RT_ID[31]~input_o\ <= NOT \RT_ID[31]~input_o\;
\ALT_INV_RS_RT_MEM[30]~input_o\ <= NOT \RS_RT_MEM[30]~input_o\;
\ALT_INV_RS_RT_WB[30]~input_o\ <= NOT \RS_RT_WB[30]~input_o\;
\ALT_INV_RT_ID[30]~input_o\ <= NOT \RT_ID[30]~input_o\;
\ALT_INV_RS_RT_MEM[29]~input_o\ <= NOT \RS_RT_MEM[29]~input_o\;
\ALT_INV_RS_RT_WB[29]~input_o\ <= NOT \RS_RT_WB[29]~input_o\;
\ALT_INV_RT_ID[29]~input_o\ <= NOT \RT_ID[29]~input_o\;
\ALT_INV_RS_RT_MEM[28]~input_o\ <= NOT \RS_RT_MEM[28]~input_o\;
\ALT_INV_RS_RT_WB[28]~input_o\ <= NOT \RS_RT_WB[28]~input_o\;
\ALT_INV_RT_ID[28]~input_o\ <= NOT \RT_ID[28]~input_o\;
\ALT_INV_RS_RT_MEM[27]~input_o\ <= NOT \RS_RT_MEM[27]~input_o\;
\ALT_INV_RS_RT_WB[27]~input_o\ <= NOT \RS_RT_WB[27]~input_o\;
\ALT_INV_RT_ID[27]~input_o\ <= NOT \RT_ID[27]~input_o\;
\ALT_INV_RS_RT_MEM[26]~input_o\ <= NOT \RS_RT_MEM[26]~input_o\;
\ALT_INV_RS_RT_WB[26]~input_o\ <= NOT \RS_RT_WB[26]~input_o\;
\ALT_INV_RT_ID[26]~input_o\ <= NOT \RT_ID[26]~input_o\;
\ALT_INV_RS_RT_MEM[25]~input_o\ <= NOT \RS_RT_MEM[25]~input_o\;
\ALT_INV_RS_RT_WB[25]~input_o\ <= NOT \RS_RT_WB[25]~input_o\;
\ALT_INV_RT_ID[25]~input_o\ <= NOT \RT_ID[25]~input_o\;
\ALT_INV_RS_RT_MEM[24]~input_o\ <= NOT \RS_RT_MEM[24]~input_o\;
\ALT_INV_RS_RT_WB[24]~input_o\ <= NOT \RS_RT_WB[24]~input_o\;
\ALT_INV_RT_ID[24]~input_o\ <= NOT \RT_ID[24]~input_o\;
\ALT_INV_RS_RT_MEM[23]~input_o\ <= NOT \RS_RT_MEM[23]~input_o\;
\ALT_INV_RS_RT_WB[23]~input_o\ <= NOT \RS_RT_WB[23]~input_o\;
\ALT_INV_RT_ID[23]~input_o\ <= NOT \RT_ID[23]~input_o\;
\ALT_INV_RS_RT_MEM[22]~input_o\ <= NOT \RS_RT_MEM[22]~input_o\;
\ALT_INV_RS_RT_WB[22]~input_o\ <= NOT \RS_RT_WB[22]~input_o\;
\ALT_INV_RT_ID[22]~input_o\ <= NOT \RT_ID[22]~input_o\;
\ALT_INV_RS_RT_MEM[21]~input_o\ <= NOT \RS_RT_MEM[21]~input_o\;
\ALT_INV_RS_RT_WB[21]~input_o\ <= NOT \RS_RT_WB[21]~input_o\;
\ALT_INV_RT_ID[21]~input_o\ <= NOT \RT_ID[21]~input_o\;
\ALT_INV_RS_RT_MEM[20]~input_o\ <= NOT \RS_RT_MEM[20]~input_o\;
\ALT_INV_RS_RT_WB[20]~input_o\ <= NOT \RS_RT_WB[20]~input_o\;
\ALT_INV_RT_ID[20]~input_o\ <= NOT \RT_ID[20]~input_o\;
\ALT_INV_RS_RT_MEM[19]~input_o\ <= NOT \RS_RT_MEM[19]~input_o\;
\ALT_INV_RS_RT_WB[19]~input_o\ <= NOT \RS_RT_WB[19]~input_o\;
\ALT_INV_RT_ID[19]~input_o\ <= NOT \RT_ID[19]~input_o\;
\ALT_INV_RS_RT_MEM[18]~input_o\ <= NOT \RS_RT_MEM[18]~input_o\;
\ALT_INV_RS_RT_WB[18]~input_o\ <= NOT \RS_RT_WB[18]~input_o\;
\ALT_INV_RT_ID[18]~input_o\ <= NOT \RT_ID[18]~input_o\;
\ALT_INV_RS_RT_MEM[17]~input_o\ <= NOT \RS_RT_MEM[17]~input_o\;
\ALT_INV_RS_RT_WB[17]~input_o\ <= NOT \RS_RT_WB[17]~input_o\;
\ALT_INV_RT_ID[17]~input_o\ <= NOT \RT_ID[17]~input_o\;
\ALT_INV_RS_RT_MEM[16]~input_o\ <= NOT \RS_RT_MEM[16]~input_o\;
\ALT_INV_RS_RT_WB[16]~input_o\ <= NOT \RS_RT_WB[16]~input_o\;
\ALT_INV_RT_ID[16]~input_o\ <= NOT \RT_ID[16]~input_o\;
\ALT_INV_RS_RT_MEM[15]~input_o\ <= NOT \RS_RT_MEM[15]~input_o\;
\ALT_INV_RS_RT_WB[15]~input_o\ <= NOT \RS_RT_WB[15]~input_o\;
\ALT_INV_RT_ID[15]~input_o\ <= NOT \RT_ID[15]~input_o\;
\ALT_INV_RS_RT_MEM[14]~input_o\ <= NOT \RS_RT_MEM[14]~input_o\;
\ALT_INV_RS_RT_WB[14]~input_o\ <= NOT \RS_RT_WB[14]~input_o\;
\ALT_INV_RT_ID[14]~input_o\ <= NOT \RT_ID[14]~input_o\;
\ALT_INV_RS_RT_MEM[13]~input_o\ <= NOT \RS_RT_MEM[13]~input_o\;
\ALT_INV_RS_RT_WB[13]~input_o\ <= NOT \RS_RT_WB[13]~input_o\;
\ALT_INV_RT_ID[13]~input_o\ <= NOT \RT_ID[13]~input_o\;
\ALT_INV_RS_RT_MEM[12]~input_o\ <= NOT \RS_RT_MEM[12]~input_o\;
\ALT_INV_RS_RT_WB[12]~input_o\ <= NOT \RS_RT_WB[12]~input_o\;
\ALT_INV_RT_ID[12]~input_o\ <= NOT \RT_ID[12]~input_o\;
\ALT_INV_RS_RT_MEM[11]~input_o\ <= NOT \RS_RT_MEM[11]~input_o\;
\ALT_INV_RS_RT_WB[11]~input_o\ <= NOT \RS_RT_WB[11]~input_o\;
\ALT_INV_RT_ID[11]~input_o\ <= NOT \RT_ID[11]~input_o\;
\ALT_INV_RS_RT_MEM[10]~input_o\ <= NOT \RS_RT_MEM[10]~input_o\;
\ALT_INV_RS_RT_WB[10]~input_o\ <= NOT \RS_RT_WB[10]~input_o\;
\ALT_INV_RT_ID[10]~input_o\ <= NOT \RT_ID[10]~input_o\;
\ALT_INV_RS_RT_MEM[9]~input_o\ <= NOT \RS_RT_MEM[9]~input_o\;
\ALT_INV_RS_RT_WB[9]~input_o\ <= NOT \RS_RT_WB[9]~input_o\;
\ALT_INV_RT_ID[9]~input_o\ <= NOT \RT_ID[9]~input_o\;
\ALT_INV_RS_RT_MEM[8]~input_o\ <= NOT \RS_RT_MEM[8]~input_o\;
\ALT_INV_RS_RT_WB[8]~input_o\ <= NOT \RS_RT_WB[8]~input_o\;
\ALT_INV_RT_ID[8]~input_o\ <= NOT \RT_ID[8]~input_o\;
\ALT_INV_RS_RT_MEM[7]~input_o\ <= NOT \RS_RT_MEM[7]~input_o\;
\ALT_INV_RS_RT_WB[7]~input_o\ <= NOT \RS_RT_WB[7]~input_o\;
\ALT_INV_RT_ID[7]~input_o\ <= NOT \RT_ID[7]~input_o\;
\ALT_INV_RS_RT_MEM[6]~input_o\ <= NOT \RS_RT_MEM[6]~input_o\;
\ALT_INV_RS_RT_WB[6]~input_o\ <= NOT \RS_RT_WB[6]~input_o\;
\ALT_INV_RT_ID[6]~input_o\ <= NOT \RT_ID[6]~input_o\;
\ALT_INV_RS_RT_MEM[5]~input_o\ <= NOT \RS_RT_MEM[5]~input_o\;
\ALT_INV_RS_RT_WB[5]~input_o\ <= NOT \RS_RT_WB[5]~input_o\;
\ALT_INV_RT_ID[5]~input_o\ <= NOT \RT_ID[5]~input_o\;
\ALT_INV_RS_RT_MEM[4]~input_o\ <= NOT \RS_RT_MEM[4]~input_o\;
\ALT_INV_RS_RT_WB[4]~input_o\ <= NOT \RS_RT_WB[4]~input_o\;
\ALT_INV_RT_ID[4]~input_o\ <= NOT \RT_ID[4]~input_o\;
\ALT_INV_RS_RT_MEM[3]~input_o\ <= NOT \RS_RT_MEM[3]~input_o\;
\ALT_INV_RS_RT_WB[3]~input_o\ <= NOT \RS_RT_WB[3]~input_o\;
\ALT_INV_RT_ID[3]~input_o\ <= NOT \RT_ID[3]~input_o\;
\ALT_INV_RS_RT_MEM[2]~input_o\ <= NOT \RS_RT_MEM[2]~input_o\;
\ALT_INV_RS_RT_WB[2]~input_o\ <= NOT \RS_RT_WB[2]~input_o\;
\ALT_INV_RT_ID[2]~input_o\ <= NOT \RT_ID[2]~input_o\;
\ALT_INV_RS_RT_MEM[1]~input_o\ <= NOT \RS_RT_MEM[1]~input_o\;
\ALT_INV_RS_RT_WB[1]~input_o\ <= NOT \RS_RT_WB[1]~input_o\;
\ALT_INV_RT_ID[1]~input_o\ <= NOT \RT_ID[1]~input_o\;
\ALT_INV_RS_RT_MEM[0]~input_o\ <= NOT \RS_RT_MEM[0]~input_o\;
\ALT_INV_RS_RT_WB[0]~input_o\ <= NOT \RS_RT_WB[0]~input_o\;
\ALT_INV_RD_WB[3]~input_o\ <= NOT \RD_WB[3]~input_o\;
\ALT_INV_RD_WB[2]~input_o\ <= NOT \RD_WB[2]~input_o\;
\ALT_INV_RD_WB[1]~input_o\ <= NOT \RD_WB[1]~input_o\;
\ALT_INV_RD_WB[0]~input_o\ <= NOT \RD_WB[0]~input_o\;
\ALT_INV_MEM_WB_REG_WRITE~input_o\ <= NOT \MEM_WB_REG_WRITE~input_o\;
\ALT_INV_RD_WB[4]~input_o\ <= NOT \RD_WB[4]~input_o\;
\ALT_INV_RD_MEM[4]~input_o\ <= NOT \RD_MEM[4]~input_o\;
\ALT_INV_RD_MEM[3]~input_o\ <= NOT \RD_MEM[3]~input_o\;
\ALT_INV_RD_MEM[2]~input_o\ <= NOT \RD_MEM[2]~input_o\;
\ALT_INV_RD_MEM[1]~input_o\ <= NOT \RD_MEM[1]~input_o\;
\ALT_INV_RD_MEM[0]~input_o\ <= NOT \RD_MEM[0]~input_o\;
\ALT_INV_EX_MEM_REG_WRITE~input_o\ <= NOT \EX_MEM_REG_WRITE~input_o\;
\ALT_INV_RT_ID[0]~input_o\ <= NOT \RT_ID[0]~input_o\;
\ALT_INV_RT_ADDR[4]~input_o\ <= NOT \RT_ADDR[4]~input_o\;
\ALT_INV_RD_ADDR[4]~input_o\ <= NOT \RD_ADDR[4]~input_o\;
\ALT_INV_RT_ADDR[3]~input_o\ <= NOT \RT_ADDR[3]~input_o\;
\ALT_INV_RD_ADDR[3]~input_o\ <= NOT \RD_ADDR[3]~input_o\;
\ALT_INV_RT_ADDR[2]~input_o\ <= NOT \RT_ADDR[2]~input_o\;
\ALT_INV_RD_ADDR[2]~input_o\ <= NOT \RD_ADDR[2]~input_o\;
\ALT_INV_RT_ADDR[1]~input_o\ <= NOT \RT_ADDR[1]~input_o\;
\ALT_INV_RD_ADDR[1]~input_o\ <= NOT \RD_ADDR[1]~input_o\;
\ALT_INV_RT_ADDR[0]~input_o\ <= NOT \RT_ADDR[0]~input_o\;
\ALT_INV_RD_ADDR[0]~input_o\ <= NOT \RD_ADDR[0]~input_o\;
\ALT_INV_REG_DEST~input_o\ <= NOT \REG_DEST~input_o\;
\ALU_DECOD|ALT_INV_F\(0) <= NOT \ALU_DECOD|F\(0);
\ALU_DECOD|ALT_INV_F\(2) <= NOT \ALU_DECOD|F\(2);
\ALU_DECOD|ALT_INV_F\(1) <= NOT \ALU_DECOD|F\(1);
\ALU_DECOD|ALT_INV_Equal0~2_combout\ <= NOT \ALU_DECOD|Equal0~2_combout\;
\ALU_DECOD|ALT_INV_Equal0~1_combout\ <= NOT \ALU_DECOD|Equal0~1_combout\;
\ALU_DECOD|ALT_INV_Equal0~0_combout\ <= NOT \ALU_DECOD|Equal0~0_combout\;
\MUX21_DATA|ALT_INV_s[31]~30_combout\ <= NOT \MUX21_DATA|s[31]~30_combout\;
\MUX31_A|ALT_INV_Mux0~0_combout\ <= NOT \MUX31_A|Mux0~0_combout\;
\MUX21_DATA|ALT_INV_s[30]~29_combout\ <= NOT \MUX21_DATA|s[30]~29_combout\;
\MUX31_A|ALT_INV_Mux1~0_combout\ <= NOT \MUX31_A|Mux1~0_combout\;
\MUX21_DATA|ALT_INV_s[29]~28_combout\ <= NOT \MUX21_DATA|s[29]~28_combout\;
\MUX31_A|ALT_INV_Mux2~4_combout\ <= NOT \MUX31_A|Mux2~4_combout\;
\MUX21_DATA|ALT_INV_s[28]~27_combout\ <= NOT \MUX21_DATA|s[28]~27_combout\;
\MUX31_A|ALT_INV_Mux3~0_combout\ <= NOT \MUX31_A|Mux3~0_combout\;
\MUX21_DATA|ALT_INV_s[27]~26_combout\ <= NOT \MUX21_DATA|s[27]~26_combout\;
\MUX31_A|ALT_INV_Mux4~0_combout\ <= NOT \MUX31_A|Mux4~0_combout\;
\MUX21_DATA|ALT_INV_s[26]~25_combout\ <= NOT \MUX21_DATA|s[26]~25_combout\;
\MUX31_A|ALT_INV_Mux5~0_combout\ <= NOT \MUX31_A|Mux5~0_combout\;
\MUX21_DATA|ALT_INV_s[25]~24_combout\ <= NOT \MUX21_DATA|s[25]~24_combout\;
\MUX31_A|ALT_INV_Mux6~0_combout\ <= NOT \MUX31_A|Mux6~0_combout\;
\MUX21_DATA|ALT_INV_s[24]~23_combout\ <= NOT \MUX21_DATA|s[24]~23_combout\;
\MUX31_A|ALT_INV_Mux7~0_combout\ <= NOT \MUX31_A|Mux7~0_combout\;
\MUX21_DATA|ALT_INV_s[23]~22_combout\ <= NOT \MUX21_DATA|s[23]~22_combout\;
\MUX31_A|ALT_INV_Mux8~0_combout\ <= NOT \MUX31_A|Mux8~0_combout\;
\MUX21_DATA|ALT_INV_s[22]~21_combout\ <= NOT \MUX21_DATA|s[22]~21_combout\;
\MUX31_A|ALT_INV_Mux9~0_combout\ <= NOT \MUX31_A|Mux9~0_combout\;
\MUX21_DATA|ALT_INV_s[21]~20_combout\ <= NOT \MUX21_DATA|s[21]~20_combout\;
\MUX31_A|ALT_INV_Mux10~0_combout\ <= NOT \MUX31_A|Mux10~0_combout\;
\MUX21_DATA|ALT_INV_s[20]~19_combout\ <= NOT \MUX21_DATA|s[20]~19_combout\;
\MUX31_A|ALT_INV_Mux11~0_combout\ <= NOT \MUX31_A|Mux11~0_combout\;
\MUX21_DATA|ALT_INV_s[19]~18_combout\ <= NOT \MUX21_DATA|s[19]~18_combout\;
\MUX31_A|ALT_INV_Mux12~0_combout\ <= NOT \MUX31_A|Mux12~0_combout\;
\MUX21_DATA|ALT_INV_s[18]~17_combout\ <= NOT \MUX21_DATA|s[18]~17_combout\;
\MUX31_A|ALT_INV_Mux13~0_combout\ <= NOT \MUX31_A|Mux13~0_combout\;
\MUX21_DATA|ALT_INV_s[17]~16_combout\ <= NOT \MUX21_DATA|s[17]~16_combout\;
\MUX31_A|ALT_INV_Mux14~0_combout\ <= NOT \MUX31_A|Mux14~0_combout\;
\MUX21_DATA|ALT_INV_s[16]~15_combout\ <= NOT \MUX21_DATA|s[16]~15_combout\;
\MUX31_A|ALT_INV_Mux15~0_combout\ <= NOT \MUX31_A|Mux15~0_combout\;
\MUX21_DATA|ALT_INV_s[15]~14_combout\ <= NOT \MUX21_DATA|s[15]~14_combout\;
\MUX31_A|ALT_INV_Mux16~0_combout\ <= NOT \MUX31_A|Mux16~0_combout\;
\MUX21_DATA|ALT_INV_s[14]~13_combout\ <= NOT \MUX21_DATA|s[14]~13_combout\;
\MUX31_A|ALT_INV_Mux17~0_combout\ <= NOT \MUX31_A|Mux17~0_combout\;
\MUX21_DATA|ALT_INV_s[13]~12_combout\ <= NOT \MUX21_DATA|s[13]~12_combout\;
\MUX31_A|ALT_INV_Mux18~0_combout\ <= NOT \MUX31_A|Mux18~0_combout\;
\MUX21_DATA|ALT_INV_s[12]~11_combout\ <= NOT \MUX21_DATA|s[12]~11_combout\;
\MUX31_A|ALT_INV_Mux19~0_combout\ <= NOT \MUX31_A|Mux19~0_combout\;
\MUX21_DATA|ALT_INV_s[11]~10_combout\ <= NOT \MUX21_DATA|s[11]~10_combout\;
\MUX31_A|ALT_INV_Mux20~0_combout\ <= NOT \MUX31_A|Mux20~0_combout\;
\MUX21_DATA|ALT_INV_s[10]~9_combout\ <= NOT \MUX21_DATA|s[10]~9_combout\;
\MUX31_A|ALT_INV_Mux21~0_combout\ <= NOT \MUX31_A|Mux21~0_combout\;
\MUX21_DATA|ALT_INV_s[9]~8_combout\ <= NOT \MUX21_DATA|s[9]~8_combout\;
\MUX31_A|ALT_INV_Mux22~0_combout\ <= NOT \MUX31_A|Mux22~0_combout\;
\MUX21_DATA|ALT_INV_s[8]~7_combout\ <= NOT \MUX21_DATA|s[8]~7_combout\;
\MUX31_A|ALT_INV_Mux23~0_combout\ <= NOT \MUX31_A|Mux23~0_combout\;
\MUX21_DATA|ALT_INV_s[7]~6_combout\ <= NOT \MUX21_DATA|s[7]~6_combout\;
\MUX31_A|ALT_INV_Mux24~0_combout\ <= NOT \MUX31_A|Mux24~0_combout\;
\MUX21_DATA|ALT_INV_s[6]~5_combout\ <= NOT \MUX21_DATA|s[6]~5_combout\;
\MUX31_A|ALT_INV_Mux25~0_combout\ <= NOT \MUX31_A|Mux25~0_combout\;
\MUX21_DATA|ALT_INV_s[5]~4_combout\ <= NOT \MUX21_DATA|s[5]~4_combout\;
\MUX31_A|ALT_INV_Mux26~0_combout\ <= NOT \MUX31_A|Mux26~0_combout\;
\MUX21_DATA|ALT_INV_s[4]~3_combout\ <= NOT \MUX21_DATA|s[4]~3_combout\;
\MUX31_A|ALT_INV_Mux27~0_combout\ <= NOT \MUX31_A|Mux27~0_combout\;
\MUX21_DATA|ALT_INV_s[3]~2_combout\ <= NOT \MUX21_DATA|s[3]~2_combout\;
\MUX31_A|ALT_INV_Mux28~0_combout\ <= NOT \MUX31_A|Mux28~0_combout\;
\MUX21_DATA|ALT_INV_s[2]~1_combout\ <= NOT \MUX21_DATA|s[2]~1_combout\;
\MUX31_A|ALT_INV_Mux29~0_combout\ <= NOT \MUX31_A|Mux29~0_combout\;
\MUX21_DATA|ALT_INV_s[1]~0_combout\ <= NOT \MUX21_DATA|s[1]~0_combout\;
\MUX31_A|ALT_INV_Mux30~0_combout\ <= NOT \MUX31_A|Mux30~0_combout\;
\ALU|ALT_INV_Mux31~0_combout\ <= NOT \ALU|Mux31~0_combout\;
\MUX31_A|ALT_INV_Mux31~0_combout\ <= NOT \MUX31_A|Mux31~0_combout\;
\MUX31_A|ALT_INV_Mux2~3_combout\ <= NOT \MUX31_A|Mux2~3_combout\;
\MUX31_A|ALT_INV_Mux2~2_combout\ <= NOT \MUX31_A|Mux2~2_combout\;
\MUX31_A|ALT_INV_Mux2~1_combout\ <= NOT \MUX31_A|Mux2~1_combout\;
\EX_FORWARDING1|ALT_INV_Equal1~0_combout\ <= NOT \EX_FORWARDING1|Equal1~0_combout\;
\MUX31_A|ALT_INV_Mux2~0_combout\ <= NOT \MUX31_A|Mux2~0_combout\;
\EX_FORWARDING1|ALT_INV_Equal0~1_combout\ <= NOT \EX_FORWARDING1|Equal0~1_combout\;
\EX_FORWARDING1|ALT_INV_Equal0~0_combout\ <= NOT \EX_FORWARDING1|Equal0~0_combout\;
\MUX31_B|ALT_INV_Mux0~0_combout\ <= NOT \MUX31_B|Mux0~0_combout\;
\MUX31_B|ALT_INV_Mux1~0_combout\ <= NOT \MUX31_B|Mux1~0_combout\;
\MUX31_B|ALT_INV_Mux2~0_combout\ <= NOT \MUX31_B|Mux2~0_combout\;
\MUX31_B|ALT_INV_Mux3~0_combout\ <= NOT \MUX31_B|Mux3~0_combout\;
\MUX31_B|ALT_INV_Mux4~0_combout\ <= NOT \MUX31_B|Mux4~0_combout\;
\MUX31_B|ALT_INV_Mux5~0_combout\ <= NOT \MUX31_B|Mux5~0_combout\;
\MUX31_B|ALT_INV_Mux6~0_combout\ <= NOT \MUX31_B|Mux6~0_combout\;
\MUX31_B|ALT_INV_Mux7~0_combout\ <= NOT \MUX31_B|Mux7~0_combout\;
\MUX31_B|ALT_INV_Mux8~0_combout\ <= NOT \MUX31_B|Mux8~0_combout\;
\MUX31_B|ALT_INV_Mux9~0_combout\ <= NOT \MUX31_B|Mux9~0_combout\;
\MUX31_B|ALT_INV_Mux10~0_combout\ <= NOT \MUX31_B|Mux10~0_combout\;
\MUX31_B|ALT_INV_Mux11~0_combout\ <= NOT \MUX31_B|Mux11~0_combout\;
\MUX31_B|ALT_INV_Mux12~0_combout\ <= NOT \MUX31_B|Mux12~0_combout\;
\MUX31_B|ALT_INV_Mux13~0_combout\ <= NOT \MUX31_B|Mux13~0_combout\;
\MUX31_B|ALT_INV_Mux14~0_combout\ <= NOT \MUX31_B|Mux14~0_combout\;
\MUX31_B|ALT_INV_Mux15~0_combout\ <= NOT \MUX31_B|Mux15~0_combout\;
\MUX31_B|ALT_INV_Mux16~0_combout\ <= NOT \MUX31_B|Mux16~0_combout\;
\MUX31_B|ALT_INV_Mux17~0_combout\ <= NOT \MUX31_B|Mux17~0_combout\;
\MUX31_B|ALT_INV_Mux18~0_combout\ <= NOT \MUX31_B|Mux18~0_combout\;
\MUX31_B|ALT_INV_Mux19~0_combout\ <= NOT \MUX31_B|Mux19~0_combout\;
\MUX31_B|ALT_INV_Mux20~0_combout\ <= NOT \MUX31_B|Mux20~0_combout\;
\MUX31_B|ALT_INV_Mux21~0_combout\ <= NOT \MUX31_B|Mux21~0_combout\;
\MUX31_B|ALT_INV_Mux22~0_combout\ <= NOT \MUX31_B|Mux22~0_combout\;
\MUX31_B|ALT_INV_Mux23~0_combout\ <= NOT \MUX31_B|Mux23~0_combout\;
\MUX31_B|ALT_INV_Mux24~0_combout\ <= NOT \MUX31_B|Mux24~0_combout\;
\MUX31_B|ALT_INV_Mux25~0_combout\ <= NOT \MUX31_B|Mux25~0_combout\;
\MUX31_B|ALT_INV_Mux26~0_combout\ <= NOT \MUX31_B|Mux26~0_combout\;
\MUX31_B|ALT_INV_Mux27~0_combout\ <= NOT \MUX31_B|Mux27~0_combout\;
\MUX31_B|ALT_INV_Mux28~0_combout\ <= NOT \MUX31_B|Mux28~0_combout\;
\MUX31_B|ALT_INV_Mux29~0_combout\ <= NOT \MUX31_B|Mux29~0_combout\;
\MUX31_B|ALT_INV_Mux30~0_combout\ <= NOT \MUX31_B|Mux30~0_combout\;
\MUX31_B|ALT_INV_Mux31~4_combout\ <= NOT \MUX31_B|Mux31~4_combout\;
\MUX31_B|ALT_INV_Mux31~3_combout\ <= NOT \MUX31_B|Mux31~3_combout\;
\MUX31_B|ALT_INV_Mux31~2_combout\ <= NOT \MUX31_B|Mux31~2_combout\;
\MUX31_B|ALT_INV_Mux31~1_combout\ <= NOT \MUX31_B|Mux31~1_combout\;
\MUX31_B|ALT_INV_Mux31~0_combout\ <= NOT \MUX31_B|Mux31~0_combout\;
\EX_FORWARDING1|ALT_INV_Equal3~0_combout\ <= NOT \EX_FORWARDING1|Equal3~0_combout\;
\EX_FORWARDING1|ALT_INV_Equal2~1_combout\ <= NOT \EX_FORWARDING1|Equal2~1_combout\;
\EX_FORWARDING1|ALT_INV_Equal2~0_combout\ <= NOT \EX_FORWARDING1|Equal2~0_combout\;
\ALU|ALT_INV_Add0~125_sumout\ <= NOT \ALU|Add0~125_sumout\;
\ALU|ALT_INV_Add1~125_sumout\ <= NOT \ALU|Add1~125_sumout\;
\ALU|ALT_INV_Add0~121_sumout\ <= NOT \ALU|Add0~121_sumout\;
\ALU|ALT_INV_Add1~121_sumout\ <= NOT \ALU|Add1~121_sumout\;
\ALU|ALT_INV_Add0~117_sumout\ <= NOT \ALU|Add0~117_sumout\;
\ALU|ALT_INV_Add1~117_sumout\ <= NOT \ALU|Add1~117_sumout\;
\ALU|ALT_INV_Add0~113_sumout\ <= NOT \ALU|Add0~113_sumout\;
\ALU|ALT_INV_Add1~113_sumout\ <= NOT \ALU|Add1~113_sumout\;
\ALU|ALT_INV_Add0~109_sumout\ <= NOT \ALU|Add0~109_sumout\;
\ALU|ALT_INV_Add1~109_sumout\ <= NOT \ALU|Add1~109_sumout\;
\ALU|ALT_INV_Add0~105_sumout\ <= NOT \ALU|Add0~105_sumout\;
\ALU|ALT_INV_Add1~105_sumout\ <= NOT \ALU|Add1~105_sumout\;
\ALU|ALT_INV_Add0~101_sumout\ <= NOT \ALU|Add0~101_sumout\;
\ALU|ALT_INV_Add1~101_sumout\ <= NOT \ALU|Add1~101_sumout\;
\ALU|ALT_INV_Add0~97_sumout\ <= NOT \ALU|Add0~97_sumout\;
\ALU|ALT_INV_Add1~97_sumout\ <= NOT \ALU|Add1~97_sumout\;
\ALU|ALT_INV_Add0~93_sumout\ <= NOT \ALU|Add0~93_sumout\;
\ALU|ALT_INV_Add1~93_sumout\ <= NOT \ALU|Add1~93_sumout\;
\ALU|ALT_INV_Add0~89_sumout\ <= NOT \ALU|Add0~89_sumout\;
\ALU|ALT_INV_Add1~89_sumout\ <= NOT \ALU|Add1~89_sumout\;
\ALU|ALT_INV_Add0~85_sumout\ <= NOT \ALU|Add0~85_sumout\;
\ALU|ALT_INV_Add1~85_sumout\ <= NOT \ALU|Add1~85_sumout\;
\ALU|ALT_INV_Add0~81_sumout\ <= NOT \ALU|Add0~81_sumout\;
\ALU|ALT_INV_Add1~81_sumout\ <= NOT \ALU|Add1~81_sumout\;
\ALU|ALT_INV_Add0~77_sumout\ <= NOT \ALU|Add0~77_sumout\;
\ALU|ALT_INV_Add1~77_sumout\ <= NOT \ALU|Add1~77_sumout\;
\ALU|ALT_INV_Add0~73_sumout\ <= NOT \ALU|Add0~73_sumout\;
\ALU|ALT_INV_Add1~73_sumout\ <= NOT \ALU|Add1~73_sumout\;
\ALU|ALT_INV_Add0~69_sumout\ <= NOT \ALU|Add0~69_sumout\;
\ALU|ALT_INV_Add1~69_sumout\ <= NOT \ALU|Add1~69_sumout\;
\ALU|ALT_INV_Add0~65_sumout\ <= NOT \ALU|Add0~65_sumout\;
\ALU|ALT_INV_Add1~65_sumout\ <= NOT \ALU|Add1~65_sumout\;
\ALU|ALT_INV_Add0~61_sumout\ <= NOT \ALU|Add0~61_sumout\;
\ALU|ALT_INV_Add1~61_sumout\ <= NOT \ALU|Add1~61_sumout\;
\ALU|ALT_INV_Add0~57_sumout\ <= NOT \ALU|Add0~57_sumout\;
\ALU|ALT_INV_Add1~57_sumout\ <= NOT \ALU|Add1~57_sumout\;
\ALU|ALT_INV_Add0~53_sumout\ <= NOT \ALU|Add0~53_sumout\;
\ALU|ALT_INV_Add1~53_sumout\ <= NOT \ALU|Add1~53_sumout\;
\ALU|ALT_INV_Add0~49_sumout\ <= NOT \ALU|Add0~49_sumout\;
\ALU|ALT_INV_Add1~49_sumout\ <= NOT \ALU|Add1~49_sumout\;
\ALU|ALT_INV_Add0~45_sumout\ <= NOT \ALU|Add0~45_sumout\;
\ALU|ALT_INV_Add1~45_sumout\ <= NOT \ALU|Add1~45_sumout\;
\ALU|ALT_INV_Add0~41_sumout\ <= NOT \ALU|Add0~41_sumout\;
\ALU|ALT_INV_Add1~41_sumout\ <= NOT \ALU|Add1~41_sumout\;
\ALU|ALT_INV_Add0~37_sumout\ <= NOT \ALU|Add0~37_sumout\;
\ALU|ALT_INV_Add1~37_sumout\ <= NOT \ALU|Add1~37_sumout\;
\ALU|ALT_INV_Add0~33_sumout\ <= NOT \ALU|Add0~33_sumout\;
\ALU|ALT_INV_Add1~33_sumout\ <= NOT \ALU|Add1~33_sumout\;
\ALU|ALT_INV_Add0~29_sumout\ <= NOT \ALU|Add0~29_sumout\;
\ALU|ALT_INV_Add1~29_sumout\ <= NOT \ALU|Add1~29_sumout\;
\ALU|ALT_INV_Add0~25_sumout\ <= NOT \ALU|Add0~25_sumout\;
\ALU|ALT_INV_Add1~25_sumout\ <= NOT \ALU|Add1~25_sumout\;
\ALU|ALT_INV_Add0~21_sumout\ <= NOT \ALU|Add0~21_sumout\;
\ALU|ALT_INV_Add1~21_sumout\ <= NOT \ALU|Add1~21_sumout\;
\ALU|ALT_INV_Add0~17_sumout\ <= NOT \ALU|Add0~17_sumout\;
\ALU|ALT_INV_Add1~17_sumout\ <= NOT \ALU|Add1~17_sumout\;
\ALU|ALT_INV_Add0~13_sumout\ <= NOT \ALU|Add0~13_sumout\;
\ALU|ALT_INV_Add1~13_sumout\ <= NOT \ALU|Add1~13_sumout\;
\ALU|ALT_INV_Add0~9_sumout\ <= NOT \ALU|Add0~9_sumout\;
\ALU|ALT_INV_Add1~9_sumout\ <= NOT \ALU|Add1~9_sumout\;
\ALU|ALT_INV_Add0~5_sumout\ <= NOT \ALU|Add0~5_sumout\;
\ALU|ALT_INV_Add0~1_sumout\ <= NOT \ALU|Add0~1_sumout\;
\ALU|ALT_INV_Add1~5_sumout\ <= NOT \ALU|Add1~5_sumout\;
\ALU|ALT_INV_Add1~1_sumout\ <= NOT \ALU|Add1~1_sumout\;

-- Location: IOOBUF_X4_Y0_N2
\MUX_S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX21_ADDR|s[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_MUX_S(0));

-- Location: IOOBUF_X2_Y0_N93
\MUX_S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX21_ADDR|s[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_MUX_S(1));

-- Location: IOOBUF_X4_Y0_N36
\MUX_S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX21_ADDR|s[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_MUX_S(2));

-- Location: IOOBUF_X2_Y0_N59
\MUX_S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX21_ADDR|s[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_MUX_S(3));

-- Location: IOOBUF_X6_Y0_N53
\MUX_S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX21_ADDR|s[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_MUX_S(4));

-- Location: IOOBUF_X89_Y9_N39
\RT_SW[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux31~4_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(0));

-- Location: IOOBUF_X34_Y0_N93
\RT_SW[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(1));

-- Location: IOOBUF_X50_Y0_N59
\RT_SW[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(2));

-- Location: IOOBUF_X89_Y9_N56
\RT_SW[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(3));

-- Location: IOOBUF_X89_Y15_N22
\RT_SW[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(4));

-- Location: IOOBUF_X32_Y0_N19
\RT_SW[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(5));

-- Location: IOOBUF_X89_Y15_N39
\RT_SW[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(6));

-- Location: IOOBUF_X89_Y15_N5
\RT_SW[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(7));

-- Location: IOOBUF_X18_Y81_N42
\RT_SW[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(8));

-- Location: IOOBUF_X89_Y25_N5
\RT_SW[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(9));

-- Location: IOOBUF_X24_Y0_N19
\RT_SW[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(10));

-- Location: IOOBUF_X26_Y0_N76
\RT_SW[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(11));

-- Location: IOOBUF_X34_Y0_N76
\RT_SW[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(12));

-- Location: IOOBUF_X24_Y0_N2
\RT_SW[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(13));

-- Location: IOOBUF_X4_Y0_N53
\RT_SW[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(14));

-- Location: IOOBUF_X56_Y0_N19
\RT_SW[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(15));

-- Location: IOOBUF_X24_Y0_N53
\RT_SW[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(16));

-- Location: IOOBUF_X89_Y8_N56
\RT_SW[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(17));

-- Location: IOOBUF_X89_Y8_N22
\RT_SW[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(18));

-- Location: IOOBUF_X89_Y16_N22
\RT_SW[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(19));

-- Location: IOOBUF_X70_Y0_N36
\RT_SW[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(20));

-- Location: IOOBUF_X68_Y0_N19
\RT_SW[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(21));

-- Location: IOOBUF_X60_Y0_N53
\RT_SW[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(22));

-- Location: IOOBUF_X64_Y0_N53
\RT_SW[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(23));

-- Location: IOOBUF_X60_Y0_N2
\RT_SW[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(24));

-- Location: IOOBUF_X62_Y0_N2
\RT_SW[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(25));

-- Location: IOOBUF_X68_Y0_N36
\RT_SW[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(26));

-- Location: IOOBUF_X82_Y0_N93
\RT_SW[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(27));

-- Location: IOOBUF_X66_Y0_N59
\RT_SW[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(28));

-- Location: IOOBUF_X84_Y0_N2
\RT_SW[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(29));

-- Location: IOOBUF_X62_Y0_N19
\RT_SW[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(30));

-- Location: IOOBUF_X66_Y0_N42
\RT_SW[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX31_B|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_SW(31));

-- Location: IOOBUF_X28_Y81_N2
\S_ALU[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux31~1_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(0));

-- Location: IOOBUF_X28_Y81_N53
\S_ALU[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(1));

-- Location: IOOBUF_X34_Y0_N59
\S_ALU[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(2));

-- Location: IOOBUF_X40_Y0_N36
\S_ALU[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(3));

-- Location: IOOBUF_X40_Y81_N19
\S_ALU[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(4));

-- Location: IOOBUF_X89_Y21_N5
\S_ALU[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(5));

-- Location: IOOBUF_X36_Y0_N36
\S_ALU[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(6));

-- Location: IOOBUF_X34_Y81_N42
\S_ALU[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(7));

-- Location: IOOBUF_X89_Y13_N22
\S_ALU[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(8));

-- Location: IOOBUF_X18_Y81_N76
\S_ALU[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(9));

-- Location: IOOBUF_X26_Y81_N93
\S_ALU[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(10));

-- Location: IOOBUF_X28_Y81_N36
\S_ALU[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(11));

-- Location: IOOBUF_X20_Y81_N19
\S_ALU[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(12));

-- Location: IOOBUF_X26_Y81_N42
\S_ALU[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(13));

-- Location: IOOBUF_X89_Y20_N45
\S_ALU[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(14));

-- Location: IOOBUF_X50_Y0_N76
\S_ALU[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(15));

-- Location: IOOBUF_X58_Y0_N59
\S_ALU[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(16));

-- Location: IOOBUF_X52_Y0_N19
\S_ALU[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(17));

-- Location: IOOBUF_X24_Y81_N36
\S_ALU[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(18));

-- Location: IOOBUF_X89_Y4_N96
\S_ALU[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(19));

-- Location: IOOBUF_X56_Y0_N2
\S_ALU[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(20));

-- Location: IOOBUF_X30_Y81_N19
\S_ALU[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(21));

-- Location: IOOBUF_X70_Y0_N19
\S_ALU[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(22));

-- Location: IOOBUF_X84_Y0_N53
\S_ALU[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(23));

-- Location: IOOBUF_X89_Y23_N22
\S_ALU[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(24));

-- Location: IOOBUF_X88_Y0_N3
\S_ALU[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(25));

-- Location: IOOBUF_X89_Y6_N39
\S_ALU[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(26));

-- Location: IOOBUF_X88_Y0_N54
\S_ALU[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(27));

-- Location: IOOBUF_X89_Y15_N56
\S_ALU[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(28));

-- Location: IOOBUF_X58_Y0_N93
\S_ALU[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(29));

-- Location: IOOBUF_X89_Y11_N79
\S_ALU[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(30));

-- Location: IOOBUF_X89_Y21_N39
\S_ALU[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S_ALU(31));

-- Location: IOIBUF_X8_Y0_N1
\RT_ADDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ADDR(0),
	o => \RT_ADDR[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\RD_ADDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_ADDR(0),
	o => \RD_ADDR[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\REG_DEST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG_DEST,
	o => \REG_DEST~input_o\);

-- Location: LABCELL_X7_Y1_N48
\MUX21_ADDR|s[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_ADDR|s[0]~0_combout\ = ( \REG_DEST~input_o\ & ( \RD_ADDR[0]~input_o\ ) ) # ( !\REG_DEST~input_o\ & ( \RT_ADDR[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[0]~input_o\,
	datac => \ALT_INV_RD_ADDR[0]~input_o\,
	datae => \ALT_INV_REG_DEST~input_o\,
	combout => \MUX21_ADDR|s[0]~0_combout\);

-- Location: IOIBUF_X4_Y0_N18
\RD_ADDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_ADDR(1),
	o => \RD_ADDR[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\RT_ADDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ADDR(1),
	o => \RT_ADDR[1]~input_o\);

-- Location: LABCELL_X7_Y1_N33
\MUX21_ADDR|s[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_ADDR|s[1]~1_combout\ = ( \REG_DEST~input_o\ & ( \RT_ADDR[1]~input_o\ & ( \RD_ADDR[1]~input_o\ ) ) ) # ( !\REG_DEST~input_o\ & ( \RT_ADDR[1]~input_o\ ) ) # ( \REG_DEST~input_o\ & ( !\RT_ADDR[1]~input_o\ & ( \RD_ADDR[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RD_ADDR[1]~input_o\,
	datae => \ALT_INV_REG_DEST~input_o\,
	dataf => \ALT_INV_RT_ADDR[1]~input_o\,
	combout => \MUX21_ADDR|s[1]~1_combout\);

-- Location: IOIBUF_X10_Y0_N41
\RT_ADDR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ADDR(2),
	o => \RT_ADDR[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\RD_ADDR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_ADDR(2),
	o => \RD_ADDR[2]~input_o\);

-- Location: LABCELL_X7_Y1_N27
\MUX21_ADDR|s[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_ADDR|s[2]~2_combout\ = ( \RD_ADDR[2]~input_o\ & ( (\REG_DEST~input_o\) # (\RT_ADDR[2]~input_o\) ) ) # ( !\RD_ADDR[2]~input_o\ & ( (\RT_ADDR[2]~input_o\ & !\REG_DEST~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[2]~input_o\,
	datac => \ALT_INV_REG_DEST~input_o\,
	datae => \ALT_INV_RD_ADDR[2]~input_o\,
	combout => \MUX21_ADDR|s[2]~2_combout\);

-- Location: IOIBUF_X6_Y0_N35
\RD_ADDR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_ADDR(3),
	o => \RD_ADDR[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\RT_ADDR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ADDR(3),
	o => \RT_ADDR[3]~input_o\);

-- Location: LABCELL_X7_Y1_N18
\MUX21_ADDR|s[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_ADDR|s[3]~3_combout\ = ( \REG_DEST~input_o\ & ( \RT_ADDR[3]~input_o\ & ( \RD_ADDR[3]~input_o\ ) ) ) # ( !\REG_DEST~input_o\ & ( \RT_ADDR[3]~input_o\ ) ) # ( \REG_DEST~input_o\ & ( !\RT_ADDR[3]~input_o\ & ( \RD_ADDR[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RD_ADDR[3]~input_o\,
	datae => \ALT_INV_REG_DEST~input_o\,
	dataf => \ALT_INV_RT_ADDR[3]~input_o\,
	combout => \MUX21_ADDR|s[3]~3_combout\);

-- Location: IOIBUF_X6_Y0_N1
\RD_ADDR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_ADDR(4),
	o => \RD_ADDR[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\RT_ADDR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ADDR(4),
	o => \RT_ADDR[4]~input_o\);

-- Location: LABCELL_X7_Y1_N12
\MUX21_ADDR|s[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_ADDR|s[4]~4_combout\ = ( \REG_DEST~input_o\ & ( \RT_ADDR[4]~input_o\ & ( \RD_ADDR[4]~input_o\ ) ) ) # ( !\REG_DEST~input_o\ & ( \RT_ADDR[4]~input_o\ ) ) # ( \REG_DEST~input_o\ & ( !\RT_ADDR[4]~input_o\ & ( \RD_ADDR[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RD_ADDR[4]~input_o\,
	datae => \ALT_INV_REG_DEST~input_o\,
	dataf => \ALT_INV_RT_ADDR[4]~input_o\,
	combout => \MUX21_ADDR|s[4]~4_combout\);

-- Location: IOIBUF_X36_Y81_N1
\RS_RT_MEM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(0),
	o => \RS_RT_MEM[0]~input_o\);

-- Location: IOIBUF_X30_Y81_N52
\RS_RT_WB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(0),
	o => \RS_RT_WB[0]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\RT_ID[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(0),
	o => \RT_ID[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\RD_MEM[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_MEM(4),
	o => \RD_MEM[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\RD_MEM[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_MEM(3),
	o => \RD_MEM[3]~input_o\);

-- Location: MLABCELL_X15_Y1_N33
\EX_FORWARDING1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal2~1_combout\ = ( \RD_MEM[3]~input_o\ & ( (\RT_ADDR[3]~input_o\ & (!\RT_ADDR[4]~input_o\ $ (\RD_MEM[4]~input_o\))) ) ) # ( !\RD_MEM[3]~input_o\ & ( (!\RT_ADDR[3]~input_o\ & (!\RT_ADDR[4]~input_o\ $ (\RD_MEM[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[3]~input_o\,
	datac => \ALT_INV_RT_ADDR[4]~input_o\,
	datad => \ALT_INV_RD_MEM[4]~input_o\,
	dataf => \ALT_INV_RD_MEM[3]~input_o\,
	combout => \EX_FORWARDING1|Equal2~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\RD_WB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_WB(2),
	o => \RD_WB[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\RD_WB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_WB(3),
	o => \RD_WB[3]~input_o\);

-- Location: MLABCELL_X15_Y1_N30
\MUX31_B|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux31~1_combout\ = ( \RD_WB[3]~input_o\ & ( (\RT_ADDR[3]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_WB[2]~input_o\))) ) ) # ( !\RD_WB[3]~input_o\ & ( (!\RT_ADDR[3]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_WB[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[3]~input_o\,
	datac => \ALT_INV_RT_ADDR[2]~input_o\,
	datad => \ALT_INV_RD_WB[2]~input_o\,
	dataf => \ALT_INV_RD_WB[3]~input_o\,
	combout => \MUX31_B|Mux31~1_combout\);

-- Location: IOIBUF_X12_Y81_N35
\RD_MEM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_MEM(0),
	o => \RD_MEM[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\RD_MEM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_MEM(2),
	o => \RD_MEM[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\RD_MEM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_MEM(1),
	o => \RD_MEM[1]~input_o\);

-- Location: MLABCELL_X15_Y1_N24
\EX_FORWARDING1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal2~0_combout\ = ( \RT_ADDR[1]~input_o\ & ( \RT_ADDR[0]~input_o\ & ( (\RD_MEM[0]~input_o\ & (\RD_MEM[1]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) ) ) ) # ( !\RT_ADDR[1]~input_o\ & ( \RT_ADDR[0]~input_o\ & ( 
-- (\RD_MEM[0]~input_o\ & (!\RD_MEM[1]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) ) ) ) # ( \RT_ADDR[1]~input_o\ & ( !\RT_ADDR[0]~input_o\ & ( (!\RD_MEM[0]~input_o\ & (\RD_MEM[1]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) 
-- ) ) ) # ( !\RT_ADDR[1]~input_o\ & ( !\RT_ADDR[0]~input_o\ & ( (!\RD_MEM[0]~input_o\ & (!\RD_MEM[1]~input_o\ & (!\RT_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[2]~input_o\,
	datab => \ALT_INV_RD_MEM[0]~input_o\,
	datac => \ALT_INV_RD_MEM[2]~input_o\,
	datad => \ALT_INV_RD_MEM[1]~input_o\,
	datae => \ALT_INV_RT_ADDR[1]~input_o\,
	dataf => \ALT_INV_RT_ADDR[0]~input_o\,
	combout => \EX_FORWARDING1|Equal2~0_combout\);

-- Location: IOIBUF_X12_Y0_N52
\RD_WB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_WB(0),
	o => \RD_WB[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\MEM_WB_REG_WRITE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_WB_REG_WRITE,
	o => \MEM_WB_REG_WRITE~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\RD_WB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_WB(1),
	o => \RD_WB[1]~input_o\);

-- Location: MLABCELL_X15_Y1_N9
\MUX31_B|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux31~0_combout\ = ( \MEM_WB_REG_WRITE~input_o\ & ( \RD_WB[1]~input_o\ & ( (\RT_ADDR[1]~input_o\ & (!\RT_ADDR[0]~input_o\ $ (\RD_WB[0]~input_o\))) ) ) ) # ( \MEM_WB_REG_WRITE~input_o\ & ( !\RD_WB[1]~input_o\ & ( (!\RT_ADDR[1]~input_o\ & 
-- (!\RT_ADDR[0]~input_o\ $ (\RD_WB[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001001000010000000000000000000010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ADDR[0]~input_o\,
	datab => \ALT_INV_RT_ADDR[1]~input_o\,
	datac => \ALT_INV_RD_WB[0]~input_o\,
	datae => \ALT_INV_MEM_WB_REG_WRITE~input_o\,
	dataf => \ALT_INV_RD_WB[1]~input_o\,
	combout => \MUX31_B|Mux31~0_combout\);

-- Location: IOIBUF_X18_Y0_N75
\RD_WB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_WB(4),
	o => \RD_WB[4]~input_o\);

-- Location: MLABCELL_X15_Y1_N51
\EX_FORWARDING1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal3~0_combout\ = !\RT_ADDR[4]~input_o\ $ (!\RD_WB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RT_ADDR[4]~input_o\,
	datad => \ALT_INV_RD_WB[4]~input_o\,
	combout => \EX_FORWARDING1|Equal3~0_combout\);

-- Location: MLABCELL_X15_Y1_N48
\MUX31_B|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux31~3_combout\ = ( !\EX_FORWARDING1|Equal3~0_combout\ & ( (\MUX31_B|Mux31~1_combout\ & (\MUX31_B|Mux31~0_combout\ & ((!\EX_FORWARDING1|Equal2~1_combout\) # (!\EX_FORWARDING1|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EX_FORWARDING1|ALT_INV_Equal2~1_combout\,
	datab => \MUX31_B|ALT_INV_Mux31~1_combout\,
	datac => \EX_FORWARDING1|ALT_INV_Equal2~0_combout\,
	datad => \MUX31_B|ALT_INV_Mux31~0_combout\,
	dataf => \EX_FORWARDING1|ALT_INV_Equal3~0_combout\,
	combout => \MUX31_B|Mux31~3_combout\);

-- Location: IOIBUF_X16_Y0_N52
\EX_MEM_REG_WRITE~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EX_MEM_REG_WRITE,
	o => \EX_MEM_REG_WRITE~input_o\);

-- Location: MLABCELL_X15_Y1_N0
\MUX31_B|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux31~2_combout\ = ( \EX_MEM_REG_WRITE~input_o\ & ( \EX_FORWARDING1|Equal2~0_combout\ & ( ((\MUX31_B|Mux31~0_combout\ & (!\EX_FORWARDING1|Equal3~0_combout\ & \MUX31_B|Mux31~1_combout\))) # (\EX_FORWARDING1|Equal2~1_combout\) ) ) ) # ( 
-- !\EX_MEM_REG_WRITE~input_o\ & ( \EX_FORWARDING1|Equal2~0_combout\ & ( (!\EX_FORWARDING1|Equal2~1_combout\ & (\MUX31_B|Mux31~0_combout\ & (!\EX_FORWARDING1|Equal3~0_combout\ & \MUX31_B|Mux31~1_combout\))) ) ) ) # ( \EX_MEM_REG_WRITE~input_o\ & ( 
-- !\EX_FORWARDING1|Equal2~0_combout\ & ( (\MUX31_B|Mux31~0_combout\ & (!\EX_FORWARDING1|Equal3~0_combout\ & \MUX31_B|Mux31~1_combout\)) ) ) ) # ( !\EX_MEM_REG_WRITE~input_o\ & ( !\EX_FORWARDING1|Equal2~0_combout\ & ( (\MUX31_B|Mux31~0_combout\ & 
-- (!\EX_FORWARDING1|Equal3~0_combout\ & \MUX31_B|Mux31~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001000000101010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EX_FORWARDING1|ALT_INV_Equal2~1_combout\,
	datab => \MUX31_B|ALT_INV_Mux31~0_combout\,
	datac => \EX_FORWARDING1|ALT_INV_Equal3~0_combout\,
	datad => \MUX31_B|ALT_INV_Mux31~1_combout\,
	datae => \ALT_INV_EX_MEM_REG_WRITE~input_o\,
	dataf => \EX_FORWARDING1|ALT_INV_Equal2~0_combout\,
	combout => \MUX31_B|Mux31~2_combout\);

-- Location: LABCELL_X57_Y9_N39
\MUX31_B|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux31~4_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( (!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[0]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[0]~input_o\))) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010011001100001111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[0]~input_o\,
	datab => \ALT_INV_RS_RT_WB[0]~input_o\,
	datac => \ALT_INV_RT_ID[0]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux31~4_combout\);

-- Location: IOIBUF_X24_Y81_N1
\RT_ID[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(1),
	o => \RT_ID[1]~input_o\);

-- Location: IOIBUF_X16_Y81_N18
\RS_RT_MEM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(1),
	o => \RS_RT_MEM[1]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\RS_RT_WB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(1),
	o => \RS_RT_WB[1]~input_o\);

-- Location: LABCELL_X31_Y13_N39
\MUX31_B|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux30~0_combout\ = ( \RS_RT_MEM[1]~input_o\ & ( \RS_RT_WB[1]~input_o\ & ( (\RT_ID[1]~input_o\) # (\MUX31_B|Mux31~2_combout\) ) ) ) # ( !\RS_RT_MEM[1]~input_o\ & ( \RS_RT_WB[1]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[1]~input_o\))) # 
-- (\MUX31_B|Mux31~2_combout\ & (\MUX31_B|Mux31~3_combout\)) ) ) ) # ( \RS_RT_MEM[1]~input_o\ & ( !\RS_RT_WB[1]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[1]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (!\MUX31_B|Mux31~3_combout\)) ) ) ) # ( 
-- !\RS_RT_MEM[1]~input_o\ & ( !\RS_RT_WB[1]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & \RT_ID[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001011100010111000011101000111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datab => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datac => \ALT_INV_RT_ID[1]~input_o\,
	datae => \ALT_INV_RS_RT_MEM[1]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[1]~input_o\,
	combout => \MUX31_B|Mux30~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\RT_ID[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(2),
	o => \RT_ID[2]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\RS_RT_MEM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(2),
	o => \RS_RT_MEM[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\RS_RT_WB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(2),
	o => \RS_RT_WB[2]~input_o\);

-- Location: MLABCELL_X39_Y1_N33
\MUX31_B|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux29~0_combout\ = ( \RS_RT_WB[2]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & (\RT_ID[2]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & (((\MUX31_B|Mux31~3_combout\) # (\RS_RT_MEM[2]~input_o\)))) ) ) # ( !\RS_RT_WB[2]~input_o\ & ( 
-- (!\MUX31_B|Mux31~2_combout\ & (\RT_ID[2]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & (((\RS_RT_MEM[2]~input_o\ & !\MUX31_B|Mux31~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100010001001110010001000100111011101110010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RT_ID[2]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[2]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RS_RT_WB[2]~input_o\,
	combout => \MUX31_B|Mux29~0_combout\);

-- Location: IOIBUF_X30_Y81_N35
\RS_RT_WB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(3),
	o => \RS_RT_WB[3]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\RS_RT_MEM[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(3),
	o => \RS_RT_MEM[3]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\RT_ID[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(3),
	o => \RT_ID[3]~input_o\);

-- Location: LABCELL_X57_Y9_N57
\MUX31_B|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux28~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RT_ID[3]~input_o\ & ( (!\MUX31_B|Mux31~3_combout\ & ((\RS_RT_MEM[3]~input_o\))) # (\MUX31_B|Mux31~3_combout\ & (\RS_RT_WB[3]~input_o\)) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( 
-- \RT_ID[3]~input_o\ ) ) # ( \MUX31_B|Mux31~2_combout\ & ( !\RT_ID[3]~input_o\ & ( (!\MUX31_B|Mux31~3_combout\ & ((\RS_RT_MEM[3]~input_o\))) # (\MUX31_B|Mux31~3_combout\ & (\RS_RT_WB[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011111010111111111111111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[3]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datad => \ALT_INV_RS_RT_MEM[3]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RT_ID[3]~input_o\,
	combout => \MUX31_B|Mux28~0_combout\);

-- Location: IOIBUF_X40_Y81_N52
\RS_RT_MEM[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(4),
	o => \RS_RT_MEM[4]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\RS_RT_WB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(4),
	o => \RS_RT_WB[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\RT_ID[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(4),
	o => \RT_ID[4]~input_o\);

-- Location: LABCELL_X57_Y9_N51
\MUX31_B|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux27~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RT_ID[4]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_WB[4]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RT_ID[4]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # 
-- (\RS_RT_MEM[4]~input_o\) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RT_ID[4]~input_o\ & ( (\RS_RT_WB[4]~input_o\ & \MUX31_B|Mux31~2_combout\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\RT_ID[4]~input_o\ & ( (\RS_RT_MEM[4]~input_o\ & 
-- \MUX31_B|Mux31~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000111111111111010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[4]~input_o\,
	datac => \ALT_INV_RS_RT_WB[4]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RT_ID[4]~input_o\,
	combout => \MUX31_B|Mux27~0_combout\);

-- Location: IOIBUF_X26_Y81_N75
\RT_ID[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(5),
	o => \RT_ID[5]~input_o\);

-- Location: IOIBUF_X22_Y81_N18
\RS_RT_MEM[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(5),
	o => \RS_RT_MEM[5]~input_o\);

-- Location: IOIBUF_X18_Y81_N58
\RS_RT_WB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(5),
	o => \RS_RT_WB[5]~input_o\);

-- Location: LABCELL_X31_Y13_N57
\MUX31_B|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux26~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \MUX31_B|Mux31~3_combout\ & ( \RS_RT_WB[5]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \MUX31_B|Mux31~3_combout\ & ( \RT_ID[5]~input_o\ ) ) ) # ( \MUX31_B|Mux31~2_combout\ & ( 
-- !\MUX31_B|Mux31~3_combout\ & ( \RS_RT_MEM[5]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( !\MUX31_B|Mux31~3_combout\ & ( \RT_ID[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ID[5]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[5]~input_o\,
	datac => \ALT_INV_RS_RT_WB[5]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \MUX31_B|ALT_INV_Mux31~3_combout\,
	combout => \MUX31_B|Mux26~0_combout\);

-- Location: IOIBUF_X22_Y81_N52
\RT_ID[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(6),
	o => \RT_ID[6]~input_o\);

-- Location: IOIBUF_X24_Y81_N52
\RS_RT_MEM[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(6),
	o => \RS_RT_MEM[6]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\RS_RT_WB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(6),
	o => \RS_RT_WB[6]~input_o\);

-- Location: LABCELL_X31_Y13_N15
\MUX31_B|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux25~0_combout\ = ( \RS_RT_MEM[6]~input_o\ & ( \RS_RT_WB[6]~input_o\ & ( (\RT_ID[6]~input_o\) # (\MUX31_B|Mux31~2_combout\) ) ) ) # ( !\RS_RT_MEM[6]~input_o\ & ( \RS_RT_WB[6]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[6]~input_o\))) # 
-- (\MUX31_B|Mux31~2_combout\ & (\MUX31_B|Mux31~3_combout\)) ) ) ) # ( \RS_RT_MEM[6]~input_o\ & ( !\RS_RT_WB[6]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[6]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (!\MUX31_B|Mux31~3_combout\)) ) ) ) # ( 
-- !\RS_RT_MEM[6]~input_o\ & ( !\RS_RT_WB[6]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & \RT_ID[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001011100010111000011101000111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datab => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datac => \ALT_INV_RT_ID[6]~input_o\,
	datae => \ALT_INV_RS_RT_MEM[6]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[6]~input_o\,
	combout => \MUX31_B|Mux25~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\RS_RT_WB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(7),
	o => \RS_RT_WB[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\RT_ID[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(7),
	o => \RT_ID[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\RS_RT_MEM[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(7),
	o => \RS_RT_MEM[7]~input_o\);

-- Location: MLABCELL_X39_Y1_N27
\MUX31_B|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux24~0_combout\ = ( \RS_RT_MEM[7]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & (((\RT_ID[7]~input_o\)))) # (\MUX31_B|Mux31~2_combout\ & (((!\MUX31_B|Mux31~3_combout\)) # (\RS_RT_WB[7]~input_o\))) ) ) # ( !\RS_RT_MEM[7]~input_o\ & ( 
-- (!\MUX31_B|Mux31~2_combout\ & (((\RT_ID[7]~input_o\)))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_WB[7]~input_o\ & ((\MUX31_B|Mux31~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011000010100001101101011111000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RS_RT_WB[7]~input_o\,
	datac => \ALT_INV_RT_ID[7]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RS_RT_MEM[7]~input_o\,
	combout => \MUX31_B|Mux24~0_combout\);

-- Location: IOIBUF_X20_Y81_N35
\RS_RT_MEM[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(8),
	o => \RS_RT_MEM[8]~input_o\);

-- Location: IOIBUF_X14_Y81_N1
\RS_RT_WB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(8),
	o => \RS_RT_WB[8]~input_o\);

-- Location: IOIBUF_X16_Y81_N1
\RT_ID[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(8),
	o => \RT_ID[8]~input_o\);

-- Location: LABCELL_X31_Y13_N33
\MUX31_B|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux23~0_combout\ = ( \RT_ID[8]~input_o\ & ( \MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_WB[8]~input_o\) ) ) ) # ( !\RT_ID[8]~input_o\ & ( \MUX31_B|Mux31~3_combout\ & ( (\MUX31_B|Mux31~2_combout\ & \RS_RT_WB[8]~input_o\) ) 
-- ) ) # ( \RT_ID[8]~input_o\ & ( !\MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_MEM[8]~input_o\) ) ) ) # ( !\RT_ID[8]~input_o\ & ( !\MUX31_B|Mux31~3_combout\ & ( (\MUX31_B|Mux31~2_combout\ & \RS_RT_MEM[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datac => \ALT_INV_RS_RT_MEM[8]~input_o\,
	datad => \ALT_INV_RS_RT_WB[8]~input_o\,
	datae => \ALT_INV_RT_ID[8]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux31~3_combout\,
	combout => \MUX31_B|Mux23~0_combout\);

-- Location: IOIBUF_X24_Y81_N18
\RS_RT_WB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(9),
	o => \RS_RT_WB[9]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\RS_RT_MEM[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(9),
	o => \RS_RT_MEM[9]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\RT_ID[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(9),
	o => \RT_ID[9]~input_o\);

-- Location: LABCELL_X57_Y9_N9
\MUX31_B|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux22~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[9]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_WB[9]~input_o\)) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\ & 
-- ((\RT_ID[9]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_MEM[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[9]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[9]~input_o\,
	datac => \ALT_INV_RT_ID[9]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \MUX31_B|ALT_INV_Mux31~3_combout\,
	combout => \MUX31_B|Mux22~0_combout\);

-- Location: IOIBUF_X22_Y0_N18
\RT_ID[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(10),
	o => \RT_ID[10]~input_o\);

-- Location: IOIBUF_X20_Y0_N35
\RS_RT_MEM[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(10),
	o => \RS_RT_MEM[10]~input_o\);

-- Location: IOIBUF_X20_Y0_N18
\RS_RT_WB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(10),
	o => \RS_RT_WB[10]~input_o\);

-- Location: LABCELL_X22_Y1_N39
\MUX31_B|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux21~0_combout\ = ( \RS_RT_MEM[10]~input_o\ & ( \RS_RT_WB[10]~input_o\ & ( (\RT_ID[10]~input_o\) # (\MUX31_B|Mux31~2_combout\) ) ) ) # ( !\RS_RT_MEM[10]~input_o\ & ( \RS_RT_WB[10]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & 
-- ((\RT_ID[10]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (\MUX31_B|Mux31~3_combout\)) ) ) ) # ( \RS_RT_MEM[10]~input_o\ & ( !\RS_RT_WB[10]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[10]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & 
-- (!\MUX31_B|Mux31~3_combout\)) ) ) ) # ( !\RS_RT_MEM[10]~input_o\ & ( !\RS_RT_WB[10]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & \RT_ID[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010011100100111000011011000110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datac => \ALT_INV_RT_ID[10]~input_o\,
	datae => \ALT_INV_RS_RT_MEM[10]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[10]~input_o\,
	combout => \MUX31_B|Mux21~0_combout\);

-- Location: IOIBUF_X18_Y0_N41
\RT_ID[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(11),
	o => \RT_ID[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\RS_RT_MEM[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(11),
	o => \RS_RT_MEM[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\RS_RT_WB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(11),
	o => \RS_RT_WB[11]~input_o\);

-- Location: LABCELL_X22_Y1_N9
\MUX31_B|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux20~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RS_RT_WB[11]~input_o\ & ( (\MUX31_B|Mux31~2_combout\) # (\RT_ID[11]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RS_RT_WB[11]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & 
-- (\RT_ID[11]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & ((\RS_RT_MEM[11]~input_o\))) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RS_RT_WB[11]~input_o\ & ( (\RT_ID[11]~input_o\ & !\MUX31_B|Mux31~2_combout\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( 
-- !\RS_RT_WB[11]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & (\RT_ID[11]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & ((\RS_RT_MEM[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010000000001010101001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ID[11]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[11]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RS_RT_WB[11]~input_o\,
	combout => \MUX31_B|Mux20~0_combout\);

-- Location: IOIBUF_X28_Y0_N35
\RS_RT_MEM[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(12),
	o => \RS_RT_MEM[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\RS_RT_WB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(12),
	o => \RS_RT_WB[12]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\RT_ID[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(12),
	o => \RT_ID[12]~input_o\);

-- Location: LABCELL_X33_Y2_N39
\MUX31_B|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux19~0_combout\ = ( \RT_ID[12]~input_o\ & ( \MUX31_B|Mux31~2_combout\ & ( (!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[12]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[12]~input_o\))) ) ) ) # ( !\RT_ID[12]~input_o\ & ( 
-- \MUX31_B|Mux31~2_combout\ & ( (!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[12]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[12]~input_o\))) ) ) ) # ( \RT_ID[12]~input_o\ & ( !\MUX31_B|Mux31~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datab => \ALT_INV_RS_RT_MEM[12]~input_o\,
	datac => \ALT_INV_RS_RT_WB[12]~input_o\,
	datae => \ALT_INV_RT_ID[12]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux19~0_combout\);

-- Location: IOIBUF_X22_Y0_N52
\RS_RT_WB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(13),
	o => \RS_RT_WB[13]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\RS_RT_MEM[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(13),
	o => \RS_RT_MEM[13]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\RT_ID[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(13),
	o => \RT_ID[13]~input_o\);

-- Location: LABCELL_X22_Y1_N27
\MUX31_B|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux18~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RT_ID[13]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_WB[13]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RT_ID[13]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # 
-- (\RS_RT_MEM[13]~input_o\) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RT_ID[13]~input_o\ & ( (\RS_RT_WB[13]~input_o\ & \MUX31_B|Mux31~2_combout\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\RT_ID[13]~input_o\ & ( (\RS_RT_MEM[13]~input_o\ & 
-- \MUX31_B|Mux31~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000101010111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[13]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[13]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RT_ID[13]~input_o\,
	combout => \MUX31_B|Mux18~0_combout\);

-- Location: IOIBUF_X30_Y0_N52
\RS_RT_WB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(14),
	o => \RS_RT_WB[14]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\RT_ID[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(14),
	o => \RT_ID[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\RS_RT_MEM[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(14),
	o => \RS_RT_MEM[14]~input_o\);

-- Location: LABCELL_X33_Y2_N30
\MUX31_B|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux17~0_combout\ = ( \RT_ID[14]~input_o\ & ( \RS_RT_MEM[14]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # ((!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[14]~input_o\)) ) ) ) # ( !\RT_ID[14]~input_o\ & ( \RS_RT_MEM[14]~input_o\ & ( 
-- (\MUX31_B|Mux31~2_combout\ & ((!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[14]~input_o\))) ) ) ) # ( \RT_ID[14]~input_o\ & ( !\RS_RT_MEM[14]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # ((\RS_RT_WB[14]~input_o\ & \MUX31_B|Mux31~3_combout\)) ) ) ) # ( 
-- !\RT_ID[14]~input_o\ & ( !\RS_RT_MEM[14]~input_o\ & ( (\MUX31_B|Mux31~2_combout\ & (\RS_RT_WB[14]~input_o\ & \MUX31_B|Mux31~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001101010111010101101010001010100011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RS_RT_WB[14]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \ALT_INV_RT_ID[14]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[14]~input_o\,
	combout => \MUX31_B|Mux17~0_combout\);

-- Location: IOIBUF_X52_Y0_N35
\RS_RT_WB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(15),
	o => \RS_RT_WB[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\RS_RT_MEM[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(15),
	o => \RS_RT_MEM[15]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\RT_ID[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(15),
	o => \RT_ID[15]~input_o\);

-- Location: LABCELL_X55_Y2_N51
\MUX31_B|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux16~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RT_ID[15]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_WB[15]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RT_ID[15]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # 
-- (\RS_RT_MEM[15]~input_o\) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RT_ID[15]~input_o\ & ( (\MUX31_B|Mux31~2_combout\ & \RS_RT_WB[15]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\RT_ID[15]~input_o\ & ( (\MUX31_B|Mux31~2_combout\ & 
-- \RS_RT_MEM[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100010001000110101111101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RS_RT_WB[15]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[15]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RT_ID[15]~input_o\,
	combout => \MUX31_B|Mux16~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\RT_ID[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(16),
	o => \RT_ID[16]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\RS_RT_MEM[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(16),
	o => \RS_RT_MEM[16]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\RS_RT_WB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(16),
	o => \RS_RT_WB[16]~input_o\);

-- Location: MLABCELL_X28_Y1_N39
\MUX31_B|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux15~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RS_RT_WB[16]~input_o\ & ( (\RT_ID[16]~input_o\) # (\MUX31_B|Mux31~2_combout\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RS_RT_WB[16]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & 
-- (\RT_ID[16]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & ((\RS_RT_MEM[16]~input_o\))) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RS_RT_WB[16]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & \RT_ID[16]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( 
-- !\RS_RT_WB[16]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & (\RT_ID[16]~input_o\)) # (\MUX31_B|Mux31~2_combout\ & ((\RS_RT_MEM[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001000100010001000100111001001110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RT_ID[16]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[16]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RS_RT_WB[16]~input_o\,
	combout => \MUX31_B|Mux15~0_combout\);

-- Location: IOIBUF_X89_Y16_N55
\RS_RT_WB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(17),
	o => \RS_RT_WB[17]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\RT_ID[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(17),
	o => \RT_ID[17]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\RS_RT_MEM[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(17),
	o => \RS_RT_MEM[17]~input_o\);

-- Location: MLABCELL_X65_Y8_N6
\MUX31_B|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux14~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_MEM[17]~input_o\ & ( (!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[17]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RS_RT_MEM[17]~input_o\ & ( \RT_ID[17]~input_o\ ) ) ) # ( 
-- \MUX31_B|Mux31~2_combout\ & ( !\RS_RT_MEM[17]~input_o\ & ( (\RS_RT_WB[17]~input_o\ & \MUX31_B|Mux31~3_combout\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( !\RS_RT_MEM[17]~input_o\ & ( \RT_ID[17]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010000010100110011001100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[17]~input_o\,
	datab => \ALT_INV_RT_ID[17]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RS_RT_MEM[17]~input_o\,
	combout => \MUX31_B|Mux14~0_combout\);

-- Location: IOIBUF_X89_Y11_N95
\RT_ID[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(18),
	o => \RT_ID[18]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\RS_RT_MEM[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(18),
	o => \RS_RT_MEM[18]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\RS_RT_WB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(18),
	o => \RS_RT_WB[18]~input_o\);

-- Location: MLABCELL_X65_Y8_N36
\MUX31_B|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux13~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[18]~input_o\ & ( (\MUX31_B|Mux31~3_combout\) # (\RS_RT_MEM[18]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[18]~input_o\ & ( \RT_ID[18]~input_o\ ) ) ) # ( 
-- \MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[18]~input_o\ & ( (\RS_RT_MEM[18]~input_o\ & !\MUX31_B|Mux31~3_combout\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[18]~input_o\ & ( \RT_ID[18]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100000011000001010101010101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ID[18]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[18]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[18]~input_o\,
	combout => \MUX31_B|Mux13~0_combout\);

-- Location: IOIBUF_X58_Y0_N75
\RS_RT_MEM[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(19),
	o => \RS_RT_MEM[19]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\RT_ID[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(19),
	o => \RT_ID[19]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\RS_RT_WB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(19),
	o => \RS_RT_WB[19]~input_o\);

-- Location: MLABCELL_X65_Y8_N54
\MUX31_B|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux12~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[19]~input_o\ & ( (\MUX31_B|Mux31~3_combout\) # (\RS_RT_MEM[19]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[19]~input_o\ & ( \RT_ID[19]~input_o\ ) ) ) # ( 
-- \MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[19]~input_o\ & ( (\RS_RT_MEM[19]~input_o\ & !\MUX31_B|Mux31~3_combout\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[19]~input_o\ & ( \RT_ID[19]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010100000101000000110011001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[19]~input_o\,
	datab => \ALT_INV_RT_ID[19]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[19]~input_o\,
	combout => \MUX31_B|Mux12~0_combout\);

-- Location: IOIBUF_X86_Y0_N18
\RS_RT_MEM[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(20),
	o => \RS_RT_MEM[20]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\RT_ID[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(20),
	o => \RT_ID[20]~input_o\);

-- Location: IOIBUF_X80_Y0_N1
\RS_RT_WB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(20),
	o => \RS_RT_WB[20]~input_o\);

-- Location: LABCELL_X68_Y2_N24
\MUX31_B|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux11~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[20]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_MEM[20]~input_o\ ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( 
-- !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[20]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[20]~input_o\,
	datab => \ALT_INV_RT_ID[20]~input_o\,
	datac => \ALT_INV_RS_RT_WB[20]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux11~0_combout\);

-- Location: IOIBUF_X68_Y0_N52
\RS_RT_WB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(21),
	o => \RS_RT_WB[21]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\RT_ID[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(21),
	o => \RT_ID[21]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\RS_RT_MEM[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(21),
	o => \RS_RT_MEM[21]~input_o\);

-- Location: LABCELL_X68_Y2_N42
\MUX31_B|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux10~0_combout\ = ( \RT_ID[21]~input_o\ & ( \RS_RT_MEM[21]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # ((!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[21]~input_o\)) ) ) ) # ( !\RT_ID[21]~input_o\ & ( \RS_RT_MEM[21]~input_o\ & ( 
-- (\MUX31_B|Mux31~2_combout\ & ((!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[21]~input_o\))) ) ) ) # ( \RT_ID[21]~input_o\ & ( !\RS_RT_MEM[21]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # ((\RS_RT_WB[21]~input_o\ & \MUX31_B|Mux31~3_combout\)) ) ) ) # ( 
-- !\RT_ID[21]~input_o\ & ( !\RS_RT_MEM[21]~input_o\ & ( (\MUX31_B|Mux31~2_combout\ & (\RS_RT_WB[21]~input_o\ & \MUX31_B|Mux31~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001101010101011101101010101000100011111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RS_RT_WB[21]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \ALT_INV_RT_ID[21]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[21]~input_o\,
	combout => \MUX31_B|Mux10~0_combout\);

-- Location: IOIBUF_X54_Y0_N35
\RS_RT_MEM[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(22),
	o => \RS_RT_MEM[22]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\RS_RT_WB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(22),
	o => \RS_RT_WB[22]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\RT_ID[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(22),
	o => \RT_ID[22]~input_o\);

-- Location: LABCELL_X60_Y2_N39
\MUX31_B|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux9~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RT_ID[22]~input_o\ & ( (!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[22]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[22]~input_o\))) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( 
-- \RT_ID[22]~input_o\ ) ) # ( \MUX31_B|Mux31~2_combout\ & ( !\RT_ID[22]~input_o\ & ( (!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[22]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110010011111111111111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datab => \ALT_INV_RS_RT_MEM[22]~input_o\,
	datac => \ALT_INV_RS_RT_WB[22]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RT_ID[22]~input_o\,
	combout => \MUX31_B|Mux9~0_combout\);

-- Location: IOIBUF_X66_Y0_N92
\RT_ID[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(23),
	o => \RT_ID[23]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\RS_RT_MEM[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(23),
	o => \RS_RT_MEM[23]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\RS_RT_WB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(23),
	o => \RS_RT_WB[23]~input_o\);

-- Location: LABCELL_X66_Y4_N42
\MUX31_B|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux8~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[23]~input_o\ & ( (\MUX31_B|Mux31~3_combout\) # (\RS_RT_MEM[23]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[23]~input_o\ & ( \RT_ID[23]~input_o\ ) ) ) # ( 
-- \MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[23]~input_o\ & ( (\RS_RT_MEM[23]~input_o\ & !\MUX31_B|Mux31~3_combout\) ) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( !\RS_RT_WB[23]~input_o\ & ( \RT_ID[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110000000001010101010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ID[23]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[23]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[23]~input_o\,
	combout => \MUX31_B|Mux8~0_combout\);

-- Location: IOIBUF_X89_Y6_N55
\RS_RT_WB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(24),
	o => \RS_RT_WB[24]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\RS_RT_MEM[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(24),
	o => \RS_RT_MEM[24]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\RT_ID[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(24),
	o => \RT_ID[24]~input_o\);

-- Location: LABCELL_X66_Y4_N27
\MUX31_B|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux7~0_combout\ = ( \RS_RT_MEM[24]~input_o\ & ( \RT_ID[24]~input_o\ & ( ((!\MUX31_B|Mux31~3_combout\) # (!\MUX31_B|Mux31~2_combout\)) # (\RS_RT_WB[24]~input_o\) ) ) ) # ( !\RS_RT_MEM[24]~input_o\ & ( \RT_ID[24]~input_o\ & ( 
-- (!\MUX31_B|Mux31~2_combout\) # ((\RS_RT_WB[24]~input_o\ & \MUX31_B|Mux31~3_combout\)) ) ) ) # ( \RS_RT_MEM[24]~input_o\ & ( !\RT_ID[24]~input_o\ & ( (\MUX31_B|Mux31~2_combout\ & ((!\MUX31_B|Mux31~3_combout\) # (\RS_RT_WB[24]~input_o\))) ) ) ) # ( 
-- !\RS_RT_MEM[24]~input_o\ & ( !\RT_ID[24]~input_o\ & ( (\RS_RT_WB[24]~input_o\ & (\MUX31_B|Mux31~3_combout\ & \MUX31_B|Mux31~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001111001111111111000000111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RS_RT_WB[24]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datad => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datae => \ALT_INV_RS_RT_MEM[24]~input_o\,
	dataf => \ALT_INV_RT_ID[24]~input_o\,
	combout => \MUX31_B|Mux7~0_combout\);

-- Location: IOIBUF_X76_Y0_N18
\RT_ID[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(25),
	o => \RT_ID[25]~input_o\);

-- Location: IOIBUF_X16_Y81_N52
\RS_RT_WB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(25),
	o => \RS_RT_WB[25]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\RS_RT_MEM[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(25),
	o => \RS_RT_MEM[25]~input_o\);

-- Location: LABCELL_X66_Y4_N18
\MUX31_B|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux6~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( (!\MUX31_B|Mux31~3_combout\ & ((\RS_RT_MEM[25]~input_o\))) # (\MUX31_B|Mux31~3_combout\ & (\RS_RT_WB[25]~input_o\)) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110011001101010101010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RT_ID[25]~input_o\,
	datab => \ALT_INV_RS_RT_WB[25]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[25]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux6~0_combout\);

-- Location: IOIBUF_X76_Y0_N1
\RS_RT_WB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(26),
	o => \RS_RT_WB[26]~input_o\);

-- Location: IOIBUF_X74_Y0_N58
\RS_RT_MEM[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(26),
	o => \RS_RT_MEM[26]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\RT_ID[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(26),
	o => \RT_ID[26]~input_o\);

-- Location: LABCELL_X68_Y2_N0
\MUX31_B|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux5~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \RT_ID[26]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # (\RS_RT_WB[26]~input_o\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \RT_ID[26]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # 
-- (\RS_RT_MEM[26]~input_o\) ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( !\RT_ID[26]~input_o\ & ( (\RS_RT_WB[26]~input_o\ & \MUX31_B|Mux31~2_combout\) ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\RT_ID[26]~input_o\ & ( (\RS_RT_MEM[26]~input_o\ & 
-- \MUX31_B|Mux31~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000001010000010111110011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[26]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[26]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RT_ID[26]~input_o\,
	combout => \MUX31_B|Mux5~0_combout\);

-- Location: IOIBUF_X82_Y0_N75
\RS_RT_MEM[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(27),
	o => \RS_RT_MEM[27]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\RT_ID[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(27),
	o => \RT_ID[27]~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\RS_RT_WB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(27),
	o => \RS_RT_WB[27]~input_o\);

-- Location: LABCELL_X68_Y2_N54
\MUX31_B|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux4~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_WB[27]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( \MUX31_B|Mux31~2_combout\ & ( \RS_RT_MEM[27]~input_o\ ) ) ) # ( \MUX31_B|Mux31~3_combout\ & ( 
-- !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[27]~input_o\ ) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[27]~input_o\,
	datab => \ALT_INV_RT_ID[27]~input_o\,
	datac => \ALT_INV_RS_RT_WB[27]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux4~0_combout\);

-- Location: IOIBUF_X86_Y0_N1
\RS_RT_MEM[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(28),
	o => \RS_RT_MEM[28]~input_o\);

-- Location: IOIBUF_X78_Y0_N1
\RS_RT_WB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(28),
	o => \RS_RT_WB[28]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\RT_ID[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(28),
	o => \RT_ID[28]~input_o\);

-- Location: LABCELL_X68_Y2_N36
\MUX31_B|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux3~0_combout\ = ( \RT_ID[28]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\) # ((!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[28]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[28]~input_o\)))) ) ) # ( !\RT_ID[28]~input_o\ & ( 
-- (\MUX31_B|Mux31~2_combout\ & ((!\MUX31_B|Mux31~3_combout\ & (\RS_RT_MEM[28]~input_o\)) # (\MUX31_B|Mux31~3_combout\ & ((\RS_RT_WB[28]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001010000001111110101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[28]~input_o\,
	datab => \ALT_INV_RS_RT_WB[28]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \ALT_INV_RT_ID[28]~input_o\,
	combout => \MUX31_B|Mux3~0_combout\);

-- Location: IOIBUF_X70_Y0_N52
\RS_RT_WB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(29),
	o => \RS_RT_WB[29]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\RS_RT_MEM[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(29),
	o => \RS_RT_MEM[29]~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\RT_ID[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(29),
	o => \RT_ID[29]~input_o\);

-- Location: LABCELL_X68_Y2_N30
\MUX31_B|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux2~0_combout\ = ( \MUX31_B|Mux31~2_combout\ & ( (!\MUX31_B|Mux31~3_combout\ & ((\RS_RT_MEM[29]~input_o\))) # (\MUX31_B|Mux31~3_combout\ & (\RS_RT_WB[29]~input_o\)) ) ) # ( !\MUX31_B|Mux31~2_combout\ & ( \RT_ID[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[29]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[29]~input_o\,
	datac => \ALT_INV_RT_ID[29]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux31~3_combout\,
	dataf => \MUX31_B|ALT_INV_Mux31~2_combout\,
	combout => \MUX31_B|Mux2~0_combout\);

-- Location: IOIBUF_X88_Y0_N36
\RS_RT_MEM[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(30),
	o => \RS_RT_MEM[30]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\RS_RT_WB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(30),
	o => \RS_RT_WB[30]~input_o\);

-- Location: IOIBUF_X18_Y81_N92
\RT_ID[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(30),
	o => \RT_ID[30]~input_o\);

-- Location: LABCELL_X66_Y4_N0
\MUX31_B|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux1~0_combout\ = ( \MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\ & ((\RT_ID[30]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_WB[30]~input_o\)) ) ) # ( !\MUX31_B|Mux31~3_combout\ & ( (!\MUX31_B|Mux31~2_combout\ & 
-- ((\RT_ID[30]~input_o\))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_MEM[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[30]~input_o\,
	datab => \ALT_INV_RS_RT_WB[30]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datad => \ALT_INV_RT_ID[30]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux31~3_combout\,
	combout => \MUX31_B|Mux1~0_combout\);

-- Location: IOIBUF_X68_Y0_N1
\RS_RT_MEM[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_MEM(31),
	o => \RS_RT_MEM[31]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\RT_ID[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RT_ID(31),
	o => \RT_ID[31]~input_o\);

-- Location: IOIBUF_X78_Y0_N52
\RS_RT_WB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_RT_WB(31),
	o => \RS_RT_WB[31]~input_o\);

-- Location: LABCELL_X66_Y4_N33
\MUX31_B|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_B|Mux0~0_combout\ = ( \RS_RT_WB[31]~input_o\ & ( (!\MUX31_B|Mux31~2_combout\ & (((\RT_ID[31]~input_o\)))) # (\MUX31_B|Mux31~2_combout\ & (((\MUX31_B|Mux31~3_combout\)) # (\RS_RT_MEM[31]~input_o\))) ) ) # ( !\RS_RT_WB[31]~input_o\ & ( 
-- (!\MUX31_B|Mux31~2_combout\ & (((\RT_ID[31]~input_o\)))) # (\MUX31_B|Mux31~2_combout\ & (\RS_RT_MEM[31]~input_o\ & (!\MUX31_B|Mux31~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000100001011101000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~2_combout\,
	datab => \ALT_INV_RS_RT_MEM[31]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~3_combout\,
	datad => \ALT_INV_RT_ID[31]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[31]~input_o\,
	combout => \MUX31_B|Mux0~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\FUNCT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(2),
	o => \FUNCT[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\ALUOP[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOP(1),
	o => \ALUOP[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\ALUOP[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOP(0),
	o => \ALUOP[0]~input_o\);

-- Location: MLABCELL_X39_Y1_N18
\ALU_DECOD|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|Equal0~2_combout\ = ( \ALUOP[0]~input_o\ & ( !\ALUOP[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUOP[1]~input_o\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \ALU_DECOD|Equal0~2_combout\);

-- Location: MLABCELL_X39_Y1_N57
\ALU_DECOD|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|Equal0~0_combout\ = ( \ALUOP[1]~input_o\ & ( !\ALUOP[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALUOP[0]~input_o\,
	dataf => \ALT_INV_ALUOP[1]~input_o\,
	combout => \ALU_DECOD|Equal0~0_combout\);

-- Location: MLABCELL_X39_Y1_N9
\ALU_DECOD|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|Equal0~1_combout\ = ( \ALUOP[0]~input_o\ ) # ( !\ALUOP[0]~input_o\ & ( \ALUOP[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUOP[1]~input_o\,
	dataf => \ALT_INV_ALUOP[0]~input_o\,
	combout => \ALU_DECOD|Equal0~1_combout\);

-- Location: MLABCELL_X39_Y1_N45
\ALU_DECOD|F[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|F\(2) = ( \ALU_DECOD|Equal0~0_combout\ & ( \ALU_DECOD|Equal0~1_combout\ & ( (\ALU_DECOD|Equal0~2_combout\) # (\FUNCT[2]~input_o\) ) ) ) # ( !\ALU_DECOD|Equal0~0_combout\ & ( \ALU_DECOD|Equal0~1_combout\ & ( (\ALU_DECOD|F\(2)) # 
-- (\ALU_DECOD|Equal0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FUNCT[2]~input_o\,
	datab => \ALU_DECOD|ALT_INV_Equal0~2_combout\,
	datac => \ALU_DECOD|ALT_INV_F\(2),
	datae => \ALU_DECOD|ALT_INV_Equal0~0_combout\,
	dataf => \ALU_DECOD|ALT_INV_Equal0~1_combout\,
	combout => \ALU_DECOD|F\(2));

-- Location: IOIBUF_X89_Y25_N38
\SIGN_EXTENDED[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(0),
	o => \SIGN_EXTENDED[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\ALU_SRC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_SRC,
	o => \ALU_SRC~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\RS_ADDR[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ADDR(0),
	o => \RS_ADDR[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\RS_ADDR[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ADDR(1),
	o => \RS_ADDR[1]~input_o\);

-- Location: MLABCELL_X15_Y1_N18
\MUX31_A|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux2~0_combout\ = ( \MEM_WB_REG_WRITE~input_o\ & ( \RD_WB[1]~input_o\ & ( (\RS_ADDR[1]~input_o\ & (!\RS_ADDR[0]~input_o\ $ (\RD_WB[0]~input_o\))) ) ) ) # ( \MEM_WB_REG_WRITE~input_o\ & ( !\RD_WB[1]~input_o\ & ( (!\RS_ADDR[1]~input_o\ & 
-- (!\RS_ADDR[0]~input_o\ $ (\RD_WB[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100001001000000000000000000000000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ADDR[0]~input_o\,
	datab => \ALT_INV_RD_WB[0]~input_o\,
	datac => \ALT_INV_RS_ADDR[1]~input_o\,
	datae => \ALT_INV_MEM_WB_REG_WRITE~input_o\,
	dataf => \ALT_INV_RD_WB[1]~input_o\,
	combout => \MUX31_A|Mux2~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\RS_ADDR[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ADDR(3),
	o => \RS_ADDR[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\RS_ADDR[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ADDR(4),
	o => \RS_ADDR[4]~input_o\);

-- Location: MLABCELL_X15_Y1_N15
\EX_FORWARDING1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal0~1_combout\ = ( \RD_MEM[3]~input_o\ & ( (\RS_ADDR[3]~input_o\ & (!\RS_ADDR[4]~input_o\ $ (\RD_MEM[4]~input_o\))) ) ) # ( !\RD_MEM[3]~input_o\ & ( (!\RS_ADDR[3]~input_o\ & (!\RS_ADDR[4]~input_o\ $ (\RD_MEM[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ADDR[3]~input_o\,
	datac => \ALT_INV_RS_ADDR[4]~input_o\,
	datad => \ALT_INV_RD_MEM[4]~input_o\,
	dataf => \ALT_INV_RD_MEM[3]~input_o\,
	combout => \EX_FORWARDING1|Equal0~1_combout\);

-- Location: IOIBUF_X10_Y0_N75
\RS_ADDR[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ADDR(2),
	o => \RS_ADDR[2]~input_o\);

-- Location: MLABCELL_X15_Y1_N12
\MUX31_A|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux2~1_combout\ = (!\RS_ADDR[3]~input_o\ & (!\RD_WB[3]~input_o\ & (!\RS_ADDR[2]~input_o\ $ (\RD_WB[2]~input_o\)))) # (\RS_ADDR[3]~input_o\ & (\RD_WB[3]~input_o\ & (!\RS_ADDR[2]~input_o\ $ (\RD_WB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ADDR[3]~input_o\,
	datab => \ALT_INV_RS_ADDR[2]~input_o\,
	datac => \ALT_INV_RD_WB[3]~input_o\,
	datad => \ALT_INV_RD_WB[2]~input_o\,
	combout => \MUX31_A|Mux2~1_combout\);

-- Location: MLABCELL_X15_Y1_N39
\EX_FORWARDING1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal1~0_combout\ = !\RS_ADDR[4]~input_o\ $ (!\RD_WB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RS_ADDR[4]~input_o\,
	datad => \ALT_INV_RD_WB[4]~input_o\,
	combout => \EX_FORWARDING1|Equal1~0_combout\);

-- Location: MLABCELL_X15_Y1_N42
\EX_FORWARDING1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \EX_FORWARDING1|Equal0~0_combout\ = ( \RS_ADDR[1]~input_o\ & ( \RD_MEM[1]~input_o\ & ( (!\RS_ADDR[0]~input_o\ & (!\RD_MEM[0]~input_o\ & (!\RS_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) # (\RS_ADDR[0]~input_o\ & (\RD_MEM[0]~input_o\ & 
-- (!\RS_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) ) ) ) # ( !\RS_ADDR[1]~input_o\ & ( !\RD_MEM[1]~input_o\ & ( (!\RS_ADDR[0]~input_o\ & (!\RD_MEM[0]~input_o\ & (!\RS_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) # (\RS_ADDR[0]~input_o\ & 
-- (\RD_MEM[0]~input_o\ & (!\RS_ADDR[2]~input_o\ $ (\RD_MEM[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ADDR[0]~input_o\,
	datab => \ALT_INV_RS_ADDR[2]~input_o\,
	datac => \ALT_INV_RD_MEM[2]~input_o\,
	datad => \ALT_INV_RD_MEM[0]~input_o\,
	datae => \ALT_INV_RS_ADDR[1]~input_o\,
	dataf => \ALT_INV_RD_MEM[1]~input_o\,
	combout => \EX_FORWARDING1|Equal0~0_combout\);

-- Location: MLABCELL_X15_Y1_N36
\MUX31_A|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux2~3_combout\ = ( \EX_FORWARDING1|Equal0~0_combout\ & ( (\MUX31_A|Mux2~0_combout\ & (!\EX_FORWARDING1|Equal0~1_combout\ & (\MUX31_A|Mux2~1_combout\ & !\EX_FORWARDING1|Equal1~0_combout\))) ) ) # ( !\EX_FORWARDING1|Equal0~0_combout\ & ( 
-- (\MUX31_A|Mux2~0_combout\ & (\MUX31_A|Mux2~1_combout\ & !\EX_FORWARDING1|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~0_combout\,
	datab => \EX_FORWARDING1|ALT_INV_Equal0~1_combout\,
	datac => \MUX31_A|ALT_INV_Mux2~1_combout\,
	datad => \EX_FORWARDING1|ALT_INV_Equal1~0_combout\,
	dataf => \EX_FORWARDING1|ALT_INV_Equal0~0_combout\,
	combout => \MUX31_A|Mux2~3_combout\);

-- Location: MLABCELL_X15_Y1_N54
\MUX31_A|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux2~2_combout\ = ( \EX_FORWARDING1|Equal1~0_combout\ & ( \MUX31_A|Mux2~1_combout\ & ( (\EX_FORWARDING1|Equal0~1_combout\ & (\EX_MEM_REG_WRITE~input_o\ & \EX_FORWARDING1|Equal0~0_combout\)) ) ) ) # ( !\EX_FORWARDING1|Equal1~0_combout\ & ( 
-- \MUX31_A|Mux2~1_combout\ & ( (!\EX_FORWARDING1|Equal0~1_combout\ & (\MUX31_A|Mux2~0_combout\)) # (\EX_FORWARDING1|Equal0~1_combout\ & ((!\EX_FORWARDING1|Equal0~0_combout\ & (\MUX31_A|Mux2~0_combout\)) # (\EX_FORWARDING1|Equal0~0_combout\ & 
-- ((\EX_MEM_REG_WRITE~input_o\))))) ) ) ) # ( \EX_FORWARDING1|Equal1~0_combout\ & ( !\MUX31_A|Mux2~1_combout\ & ( (\EX_FORWARDING1|Equal0~1_combout\ & (\EX_MEM_REG_WRITE~input_o\ & \EX_FORWARDING1|Equal0~0_combout\)) ) ) ) # ( 
-- !\EX_FORWARDING1|Equal1~0_combout\ & ( !\MUX31_A|Mux2~1_combout\ & ( (\EX_FORWARDING1|Equal0~1_combout\ & (\EX_MEM_REG_WRITE~input_o\ & \EX_FORWARDING1|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001101010101010001110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~0_combout\,
	datab => \EX_FORWARDING1|ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_EX_MEM_REG_WRITE~input_o\,
	datad => \EX_FORWARDING1|ALT_INV_Equal0~0_combout\,
	datae => \EX_FORWARDING1|ALT_INV_Equal1~0_combout\,
	dataf => \MUX31_A|ALT_INV_Mux2~1_combout\,
	combout => \MUX31_A|Mux2~2_combout\);

-- Location: IOIBUF_X89_Y13_N38
\RS_ID[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(0),
	o => \RS_ID[0]~input_o\);

-- Location: LABCELL_X57_Y9_N24
\MUX31_A|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux31~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_ID[0]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[0]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[0]~input_o\))) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[0]~input_o\ ) 
-- ) # ( \MUX31_A|Mux2~2_combout\ & ( !\RS_ID[0]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[0]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100110101001111111111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[0]~input_o\,
	datab => \ALT_INV_RS_RT_WB[0]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_ID[0]~input_o\,
	combout => \MUX31_A|Mux31~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\FUNCT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(0),
	o => \FUNCT[0]~input_o\);

-- Location: MLABCELL_X39_Y1_N51
\ALU_DECOD|F[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|F\(0) = ( \ALUOP[0]~input_o\ & ( \ALU_DECOD|F\(0) & ( \ALUOP[1]~input_o\ ) ) ) # ( !\ALUOP[0]~input_o\ & ( \ALU_DECOD|F\(0) & ( (\ALUOP[1]~input_o\ & \FUNCT[0]~input_o\) ) ) ) # ( !\ALUOP[0]~input_o\ & ( !\ALU_DECOD|F\(0) & ( 
-- (\ALUOP[1]~input_o\ & \FUNCT[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOP[1]~input_o\,
	datac => \ALT_INV_FUNCT[0]~input_o\,
	datae => \ALT_INV_ALUOP[0]~input_o\,
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	combout => \ALU_DECOD|F\(0));

-- Location: LABCELL_X62_Y9_N6
\ALU|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux31~0_combout\ = ( \MUX31_A|Mux31~0_combout\ & ( \ALU_DECOD|F\(0) & ( (!\ALU_DECOD|F\(2)) # ((!\ALU_SRC~input_o\ & (!\SIGN_EXTENDED[0]~input_o\)) # (\ALU_SRC~input_o\ & ((!\MUX31_B|Mux31~4_combout\)))) ) ) ) # ( !\MUX31_A|Mux31~0_combout\ & ( 
-- \ALU_DECOD|F\(0) & ( !\ALU_DECOD|F\(2) $ (((!\ALU_SRC~input_o\ & (!\SIGN_EXTENDED[0]~input_o\)) # (\ALU_SRC~input_o\ & ((!\MUX31_B|Mux31~4_combout\))))) ) ) ) # ( \MUX31_A|Mux31~0_combout\ & ( !\ALU_DECOD|F\(0) & ( !\ALU_DECOD|F\(2) $ 
-- (((!\ALU_SRC~input_o\ & (!\SIGN_EXTENDED[0]~input_o\)) # (\ALU_SRC~input_o\ & ((!\MUX31_B|Mux31~4_combout\))))) ) ) ) # ( !\MUX31_A|Mux31~0_combout\ & ( !\ALU_DECOD|F\(0) & ( \ALU_DECOD|F\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010100111010110001010011101011001111111110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SIGN_EXTENDED[0]~input_o\,
	datab => \MUX31_B|ALT_INV_Mux31~4_combout\,
	datac => \ALT_INV_ALU_SRC~input_o\,
	datad => \ALU_DECOD|ALT_INV_F\(2),
	datae => \MUX31_A|ALT_INV_Mux31~0_combout\,
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	combout => \ALU|Mux31~0_combout\);

-- Location: IOIBUF_X64_Y0_N35
\SIGN_EXTENDED[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(31),
	o => \SIGN_EXTENDED[31]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\RS_ID[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(31),
	o => \RS_ID[31]~input_o\);

-- Location: LABCELL_X66_Y4_N6
\MUX31_A|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux0~0_combout\ = ( \RS_RT_MEM[31]~input_o\ & ( \RS_RT_WB[31]~input_o\ & ( (\RS_ID[31]~input_o\) # (\MUX31_A|Mux2~2_combout\) ) ) ) # ( !\RS_RT_MEM[31]~input_o\ & ( \RS_RT_WB[31]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[31]~input_o\)) # 
-- (\MUX31_A|Mux2~2_combout\ & ((\MUX31_A|Mux2~3_combout\))) ) ) ) # ( \RS_RT_MEM[31]~input_o\ & ( !\RS_RT_WB[31]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[31]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\))) ) ) ) # ( 
-- !\RS_RT_MEM[31]~input_o\ & ( !\RS_RT_WB[31]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & \RS_ID[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110000110000001100001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_ID[31]~input_o\,
	datad => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_RT_MEM[31]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[31]~input_o\,
	combout => \MUX31_A|Mux0~0_combout\);

-- Location: IOIBUF_X66_Y0_N75
\RS_ID[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(30),
	o => \RS_ID[30]~input_o\);

-- Location: LABCELL_X66_Y4_N3
\MUX31_A|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux1~0_combout\ = ( \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[30]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[30]~input_o\)) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & 
-- ((\RS_ID[30]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_MEM[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[30]~input_o\,
	datab => \ALT_INV_RS_RT_WB[30]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datad => \ALT_INV_RS_ID[30]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~3_combout\,
	combout => \MUX31_A|Mux1~0_combout\);

-- Location: IOIBUF_X62_Y0_N35
\SIGN_EXTENDED[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(30),
	o => \SIGN_EXTENDED[30]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\SIGN_EXTENDED[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(29),
	o => \SIGN_EXTENDED[29]~input_o\);

-- Location: IOIBUF_X80_Y0_N52
\RS_ID[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(29),
	o => \RS_ID[29]~input_o\);

-- Location: LABCELL_X68_Y2_N33
\MUX31_A|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux2~4_combout\ = ( \RS_ID[29]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((!\MUX31_A|Mux2~3_combout\ & ((\RS_RT_MEM[29]~input_o\))) # (\MUX31_A|Mux2~3_combout\ & (\RS_RT_WB[29]~input_o\))) ) ) # ( !\RS_ID[29]~input_o\ & ( 
-- (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\ & ((\RS_RT_MEM[29]~input_o\))) # (\MUX31_A|Mux2~3_combout\ & (\RS_RT_WB[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010111110011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[29]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[29]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datad => \MUX31_A|ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_RS_ID[29]~input_o\,
	combout => \MUX31_A|Mux2~4_combout\);

-- Location: IOIBUF_X64_Y0_N1
\SIGN_EXTENDED[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(28),
	o => \SIGN_EXTENDED[28]~input_o\);

-- Location: IOIBUF_X76_Y0_N35
\RS_ID[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(28),
	o => \RS_ID[28]~input_o\);

-- Location: LABCELL_X68_Y2_N39
\MUX31_A|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux3~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( (!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[28]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[28]~input_o\))) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[28]~input_o\,
	datab => \ALT_INV_RS_RT_WB[28]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datad => \ALT_INV_RS_ID[28]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~2_combout\,
	combout => \MUX31_A|Mux3~0_combout\);

-- Location: IOIBUF_X30_Y81_N1
\SIGN_EXTENDED[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(27),
	o => \SIGN_EXTENDED[27]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\RS_ID[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(27),
	o => \RS_ID[27]~input_o\);

-- Location: LABCELL_X68_Y2_N9
\MUX31_A|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux4~0_combout\ = ( \RS_RT_MEM[27]~input_o\ & ( \RS_RT_WB[27]~input_o\ & ( (\MUX31_A|Mux2~2_combout\) # (\RS_ID[27]~input_o\) ) ) ) # ( !\RS_RT_MEM[27]~input_o\ & ( \RS_RT_WB[27]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[27]~input_o\)) # 
-- (\MUX31_A|Mux2~2_combout\ & ((\MUX31_A|Mux2~3_combout\))) ) ) ) # ( \RS_RT_MEM[27]~input_o\ & ( !\RS_RT_WB[27]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[27]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\))) ) ) ) # ( 
-- !\RS_RT_MEM[27]~input_o\ & ( !\RS_RT_WB[27]~input_o\ & ( (\RS_ID[27]~input_o\ & !\MUX31_A|Mux2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111000101110001010011010100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ID[27]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_RS_RT_MEM[27]~input_o\,
	dataf => \ALT_INV_RS_RT_WB[27]~input_o\,
	combout => \MUX31_A|Mux4~0_combout\);

-- Location: IOIBUF_X76_Y0_N52
\RS_ID[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(26),
	o => \RS_ID[26]~input_o\);

-- Location: LABCELL_X68_Y2_N15
\MUX31_A|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux5~0_combout\ = ( \RS_RT_MEM[26]~input_o\ & ( \MUX31_A|Mux2~2_combout\ & ( (!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[26]~input_o\) ) ) ) # ( !\RS_RT_MEM[26]~input_o\ & ( \MUX31_A|Mux2~2_combout\ & ( (\RS_RT_WB[26]~input_o\ & 
-- \MUX31_A|Mux2~3_combout\) ) ) ) # ( \RS_RT_MEM[26]~input_o\ & ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[26]~input_o\ ) ) ) # ( !\RS_RT_MEM[26]~input_o\ & ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[26]~input_o\,
	datab => \ALT_INV_RS_ID[26]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_RT_MEM[26]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~2_combout\,
	combout => \MUX31_A|Mux5~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\SIGN_EXTENDED[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(26),
	o => \SIGN_EXTENDED[26]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\SIGN_EXTENDED[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(25),
	o => \SIGN_EXTENDED[25]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\RS_ID[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(25),
	o => \RS_ID[25]~input_o\);

-- Location: LABCELL_X66_Y4_N15
\MUX31_A|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux6~0_combout\ = ( \RS_ID[25]~input_o\ & ( \MUX31_A|Mux2~2_combout\ & ( (!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[25]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[25]~input_o\))) ) ) ) # ( !\RS_ID[25]~input_o\ & ( \MUX31_A|Mux2~2_combout\ 
-- & ( (!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[25]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[25]~input_o\))) ) ) ) # ( \RS_ID[25]~input_o\ & ( !\MUX31_A|Mux2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[25]~input_o\,
	datab => \ALT_INV_RS_RT_WB[25]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_ID[25]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~2_combout\,
	combout => \MUX31_A|Mux6~0_combout\);

-- Location: IOIBUF_X64_Y0_N18
\RS_ID[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(24),
	o => \RS_ID[24]~input_o\);

-- Location: LABCELL_X66_Y4_N54
\MUX31_A|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux7~0_combout\ = ( \RS_RT_WB[24]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (((\RS_ID[24]~input_o\)))) # (\MUX31_A|Mux2~2_combout\ & (((\MUX31_A|Mux2~3_combout\)) # (\RS_RT_MEM[24]~input_o\))) ) ) # ( !\RS_RT_WB[24]~input_o\ & ( 
-- (!\MUX31_A|Mux2~2_combout\ & (((\RS_ID[24]~input_o\)))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_MEM[24]~input_o\ & (!\MUX31_A|Mux2~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110100010000001111011101110000111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[24]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datac => \ALT_INV_RS_ID[24]~input_o\,
	datad => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[24]~input_o\,
	combout => \MUX31_A|Mux7~0_combout\);

-- Location: IOIBUF_X58_Y0_N41
\SIGN_EXTENDED[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(24),
	o => \SIGN_EXTENDED[24]~input_o\);

-- Location: IOIBUF_X88_Y0_N19
\RS_ID[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(23),
	o => \RS_ID[23]~input_o\);

-- Location: LABCELL_X66_Y4_N39
\MUX31_A|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux8~0_combout\ = ( \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[23]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[23]~input_o\)) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & 
-- ((\RS_ID[23]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_MEM[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[23]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[23]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datad => \ALT_INV_RS_ID[23]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~3_combout\,
	combout => \MUX31_A|Mux8~0_combout\);

-- Location: IOIBUF_X89_Y4_N61
\SIGN_EXTENDED[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(23),
	o => \SIGN_EXTENDED[23]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\RS_ID[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(22),
	o => \RS_ID[22]~input_o\);

-- Location: LABCELL_X60_Y2_N42
\MUX31_A|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux9~0_combout\ = ( \RS_RT_WB[22]~input_o\ & ( \RS_RT_MEM[22]~input_o\ & ( (\RS_ID[22]~input_o\) # (\MUX31_A|Mux2~2_combout\) ) ) ) # ( !\RS_RT_WB[22]~input_o\ & ( \RS_RT_MEM[22]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[22]~input_o\))) 
-- # (\MUX31_A|Mux2~2_combout\ & (!\MUX31_A|Mux2~3_combout\)) ) ) ) # ( \RS_RT_WB[22]~input_o\ & ( !\RS_RT_MEM[22]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[22]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\MUX31_A|Mux2~3_combout\)) ) ) ) # ( 
-- !\RS_RT_WB[22]~input_o\ & ( !\RS_RT_MEM[22]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & \RS_ID[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000111010001110100101110001011100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_ID[22]~input_o\,
	datae => \ALT_INV_RS_RT_WB[22]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[22]~input_o\,
	combout => \MUX31_A|Mux9~0_combout\);

-- Location: IOIBUF_X62_Y0_N52
\SIGN_EXTENDED[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(22),
	o => \SIGN_EXTENDED[22]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\SIGN_EXTENDED[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(21),
	o => \SIGN_EXTENDED[21]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\RS_ID[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(21),
	o => \RS_ID[21]~input_o\);

-- Location: LABCELL_X68_Y2_N21
\MUX31_A|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux10~0_combout\ = ( \RS_RT_WB[21]~input_o\ & ( \MUX31_A|Mux2~2_combout\ & ( (\MUX31_A|Mux2~3_combout\) # (\RS_RT_MEM[21]~input_o\) ) ) ) # ( !\RS_RT_WB[21]~input_o\ & ( \MUX31_A|Mux2~2_combout\ & ( (\RS_RT_MEM[21]~input_o\ & 
-- !\MUX31_A|Mux2~3_combout\) ) ) ) # ( \RS_RT_WB[21]~input_o\ & ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[21]~input_o\ ) ) ) # ( !\RS_RT_WB[21]~input_o\ & ( !\MUX31_A|Mux2~2_combout\ & ( \RS_ID[21]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[21]~input_o\,
	datab => \ALT_INV_RS_ID[21]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_RT_WB[21]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~2_combout\,
	combout => \MUX31_A|Mux10~0_combout\);

-- Location: IOIBUF_X80_Y0_N18
\RS_ID[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(20),
	o => \RS_ID[20]~input_o\);

-- Location: LABCELL_X68_Y2_N51
\MUX31_A|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux11~0_combout\ = ( \RS_ID[20]~input_o\ & ( \RS_RT_MEM[20]~input_o\ & ( ((!\MUX31_A|Mux2~3_combout\) # (!\MUX31_A|Mux2~2_combout\)) # (\RS_RT_WB[20]~input_o\) ) ) ) # ( !\RS_ID[20]~input_o\ & ( \RS_RT_MEM[20]~input_o\ & ( 
-- (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[20]~input_o\))) ) ) ) # ( \RS_ID[20]~input_o\ & ( !\RS_RT_MEM[20]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((\RS_RT_WB[20]~input_o\ & \MUX31_A|Mux2~3_combout\)) ) ) ) # ( 
-- !\RS_ID[20]~input_o\ & ( !\RS_RT_MEM[20]~input_o\ & ( (\RS_RT_WB[20]~input_o\ & (\MUX31_A|Mux2~3_combout\ & \MUX31_A|Mux2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111100011111000100001101000011011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[20]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_RS_ID[20]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[20]~input_o\,
	combout => \MUX31_A|Mux11~0_combout\);

-- Location: IOIBUF_X89_Y20_N61
\SIGN_EXTENDED[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(20),
	o => \SIGN_EXTENDED[20]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\SIGN_EXTENDED[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(19),
	o => \SIGN_EXTENDED[19]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\RS_ID[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(19),
	o => \RS_ID[19]~input_o\);

-- Location: MLABCELL_X65_Y8_N51
\MUX31_A|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux12~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[19]~input_o\ & ( (\MUX31_A|Mux2~3_combout\) # (\RS_RT_MEM[19]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[19]~input_o\ & ( \RS_ID[19]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[19]~input_o\ & ( (\RS_RT_MEM[19]~input_o\ & !\MUX31_A|Mux2~3_combout\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[19]~input_o\ & ( \RS_ID[19]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010100000101000000110011001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_MEM[19]~input_o\,
	datab => \ALT_INV_RS_ID[19]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[19]~input_o\,
	combout => \MUX31_A|Mux12~0_combout\);

-- Location: IOIBUF_X54_Y0_N52
\SIGN_EXTENDED[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(18),
	o => \SIGN_EXTENDED[18]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\RS_ID[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(18),
	o => \RS_ID[18]~input_o\);

-- Location: MLABCELL_X65_Y8_N33
\MUX31_A|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux13~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[18]~input_o\ & ( (\MUX31_A|Mux2~3_combout\) # (\RS_RT_MEM[18]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[18]~input_o\ & ( \RS_ID[18]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[18]~input_o\ & ( (\RS_RT_MEM[18]~input_o\ & !\MUX31_A|Mux2~3_combout\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[18]~input_o\ & ( \RS_ID[18]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100000011000001010101010101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ID[18]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[18]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[18]~input_o\,
	combout => \MUX31_A|Mux13~0_combout\);

-- Location: IOIBUF_X36_Y81_N35
\RS_ID[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(17),
	o => \RS_ID[17]~input_o\);

-- Location: MLABCELL_X65_Y8_N3
\MUX31_A|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux14~0_combout\ = ( \RS_RT_WB[17]~input_o\ & ( \RS_RT_MEM[17]~input_o\ & ( (\RS_ID[17]~input_o\) # (\MUX31_A|Mux2~2_combout\) ) ) ) # ( !\RS_RT_WB[17]~input_o\ & ( \RS_RT_MEM[17]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[17]~input_o\))) 
-- # (\MUX31_A|Mux2~2_combout\ & (!\MUX31_A|Mux2~3_combout\)) ) ) ) # ( \RS_RT_WB[17]~input_o\ & ( !\RS_RT_MEM[17]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[17]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\MUX31_A|Mux2~3_combout\)) ) ) ) # ( 
-- !\RS_RT_WB[17]~input_o\ & ( !\RS_RT_MEM[17]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & \RS_ID[17]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000111100111100110000111111000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datad => \ALT_INV_RS_ID[17]~input_o\,
	datae => \ALT_INV_RS_RT_WB[17]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[17]~input_o\,
	combout => \MUX31_A|Mux14~0_combout\);

-- Location: IOIBUF_X14_Y81_N18
\SIGN_EXTENDED[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(17),
	o => \SIGN_EXTENDED[17]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\RS_ID[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(16),
	o => \RS_ID[16]~input_o\);

-- Location: MLABCELL_X28_Y1_N42
\MUX31_A|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux15~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[16]~input_o\ & ( (\RS_RT_MEM[16]~input_o\) # (\MUX31_A|Mux2~3_combout\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[16]~input_o\ & ( \RS_ID[16]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[16]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\ & \RS_RT_MEM[16]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[16]~input_o\ & ( \RS_ID[16]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001000100010001000001111000011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_RT_MEM[16]~input_o\,
	datac => \ALT_INV_RS_ID[16]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[16]~input_o\,
	combout => \MUX31_A|Mux15~0_combout\);

-- Location: IOIBUF_X16_Y81_N35
\SIGN_EXTENDED[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(16),
	o => \SIGN_EXTENDED[16]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\SIGN_EXTENDED[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(15),
	o => \SIGN_EXTENDED[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\RS_ID[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(15),
	o => \RS_ID[15]~input_o\);

-- Location: LABCELL_X55_Y2_N6
\MUX31_A|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux16~0_combout\ = ( \MUX31_A|Mux2~3_combout\ & ( \RS_RT_WB[15]~input_o\ & ( (\MUX31_A|Mux2~2_combout\) # (\RS_ID[15]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( \RS_RT_WB[15]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[15]~input_o\)) 
-- # (\MUX31_A|Mux2~2_combout\ & ((\RS_RT_MEM[15]~input_o\))) ) ) ) # ( \MUX31_A|Mux2~3_combout\ & ( !\RS_RT_WB[15]~input_o\ & ( (\RS_ID[15]~input_o\ & !\MUX31_A|Mux2~2_combout\) ) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( !\RS_RT_WB[15]~input_o\ & ( 
-- (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[15]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & ((\RS_RT_MEM[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100000101000001010011010100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ID[15]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[15]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datae => \MUX31_A|ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_RS_RT_WB[15]~input_o\,
	combout => \MUX31_A|Mux16~0_combout\);

-- Location: IOIBUF_X30_Y0_N18
\RS_ID[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(14),
	o => \RS_ID[14]~input_o\);

-- Location: LABCELL_X33_Y2_N9
\MUX31_A|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux17~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[14]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[14]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[14]~input_o\ & ( \RS_ID[14]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[14]~input_o\ & ( (\MUX31_A|Mux2~3_combout\ & \RS_RT_WB[14]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[14]~input_o\ & ( \RS_ID[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000100010001000100001111000011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_RT_WB[14]~input_o\,
	datac => \ALT_INV_RS_ID[14]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_MEM[14]~input_o\,
	combout => \MUX31_A|Mux17~0_combout\);

-- Location: IOIBUF_X32_Y81_N18
\SIGN_EXTENDED[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(14),
	o => \SIGN_EXTENDED[14]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\SIGN_EXTENDED[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(13),
	o => \SIGN_EXTENDED[13]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\RS_ID[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(13),
	o => \RS_ID[13]~input_o\);

-- Location: LABCELL_X22_Y1_N42
\MUX31_A|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux18~0_combout\ = ( \RS_RT_MEM[13]~input_o\ & ( \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[13]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[13]~input_o\)) ) ) ) # ( !\RS_RT_MEM[13]~input_o\ & ( 
-- \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[13]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[13]~input_o\)) ) ) ) # ( \RS_RT_MEM[13]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (\RS_ID[13]~input_o\) # 
-- (\MUX31_A|Mux2~2_combout\) ) ) ) # ( !\RS_RT_MEM[13]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & \RS_ID[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[13]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_ID[13]~input_o\,
	datae => \ALT_INV_RS_RT_MEM[13]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~3_combout\,
	combout => \MUX31_A|Mux18~0_combout\);

-- Location: IOIBUF_X32_Y0_N52
\RS_ID[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(12),
	o => \RS_ID[12]~input_o\);

-- Location: LABCELL_X33_Y2_N12
\MUX31_A|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux19~0_combout\ = ( \RS_ID[12]~input_o\ & ( \RS_RT_MEM[12]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[12]~input_o\)) ) ) ) # ( !\RS_ID[12]~input_o\ & ( \RS_RT_MEM[12]~input_o\ & ( 
-- (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[12]~input_o\))) ) ) ) # ( \RS_ID[12]~input_o\ & ( !\RS_RT_MEM[12]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((\RS_RT_WB[12]~input_o\ & \MUX31_A|Mux2~3_combout\)) ) ) ) # ( 
-- !\RS_ID[12]~input_o\ & ( !\RS_RT_MEM[12]~input_o\ & ( (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[12]~input_o\ & \MUX31_A|Mux2~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001101010111010101101010001010100011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datab => \ALT_INV_RS_RT_WB[12]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_ID[12]~input_o\,
	dataf => \ALT_INV_RS_RT_MEM[12]~input_o\,
	combout => \MUX31_A|Mux19~0_combout\);

-- Location: IOIBUF_X38_Y81_N1
\SIGN_EXTENDED[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(12),
	o => \SIGN_EXTENDED[12]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\RS_ID[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(11),
	o => \RS_ID[11]~input_o\);

-- Location: LABCELL_X22_Y1_N12
\MUX31_A|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux20~0_combout\ = ( \RS_RT_MEM[11]~input_o\ & ( \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[11]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & ((\RS_RT_WB[11]~input_o\))) ) ) ) # ( !\RS_RT_MEM[11]~input_o\ & ( 
-- \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[11]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & ((\RS_RT_WB[11]~input_o\))) ) ) ) # ( \RS_RT_MEM[11]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (\MUX31_A|Mux2~2_combout\) # 
-- (\RS_ID[11]~input_o\) ) ) ) # ( !\RS_RT_MEM[11]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (\RS_ID[11]~input_o\ & !\MUX31_A|Mux2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ID[11]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_RT_WB[11]~input_o\,
	datae => \ALT_INV_RS_RT_MEM[11]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~3_combout\,
	combout => \MUX31_A|Mux20~0_combout\);

-- Location: IOIBUF_X89_Y8_N38
\SIGN_EXTENDED[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(11),
	o => \SIGN_EXTENDED[11]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\RS_ID[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(10),
	o => \RS_ID[10]~input_o\);

-- Location: LABCELL_X22_Y1_N30
\MUX31_A|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux21~0_combout\ = ( \RS_RT_MEM[10]~input_o\ & ( \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[10]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[10]~input_o\)) ) ) ) # ( !\RS_RT_MEM[10]~input_o\ & ( 
-- \MUX31_A|Mux2~3_combout\ & ( (!\MUX31_A|Mux2~2_combout\ & ((\RS_ID[10]~input_o\))) # (\MUX31_A|Mux2~2_combout\ & (\RS_RT_WB[10]~input_o\)) ) ) ) # ( \RS_RT_MEM[10]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (\MUX31_A|Mux2~2_combout\) # 
-- (\RS_ID[10]~input_o\) ) ) ) # ( !\RS_RT_MEM[10]~input_o\ & ( !\MUX31_A|Mux2~3_combout\ & ( (\RS_ID[10]~input_o\ & !\MUX31_A|Mux2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RS_RT_WB[10]~input_o\,
	datac => \ALT_INV_RS_ID[10]~input_o\,
	datad => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datae => \ALT_INV_RS_RT_MEM[10]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~3_combout\,
	combout => \MUX31_A|Mux21~0_combout\);

-- Location: IOIBUF_X20_Y81_N52
\SIGN_EXTENDED[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(10),
	o => \SIGN_EXTENDED[10]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\SIGN_EXTENDED[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(9),
	o => \SIGN_EXTENDED[9]~input_o\);

-- Location: IOIBUF_X38_Y81_N35
\RS_ID[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(9),
	o => \RS_ID[9]~input_o\);

-- Location: LABCELL_X57_Y9_N6
\MUX31_A|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux22~0_combout\ = ( \RS_ID[9]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((!\MUX31_A|Mux2~3_combout\ & ((\RS_RT_MEM[9]~input_o\))) # (\MUX31_A|Mux2~3_combout\ & (\RS_RT_WB[9]~input_o\))) ) ) # ( !\RS_ID[9]~input_o\ & ( (\MUX31_A|Mux2~2_combout\ 
-- & ((!\MUX31_A|Mux2~3_combout\ & ((\RS_RT_MEM[9]~input_o\))) # (\MUX31_A|Mux2~3_combout\ & (\RS_RT_WB[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000011010111111111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[9]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[9]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datad => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_ID[9]~input_o\,
	combout => \MUX31_A|Mux22~0_combout\);

-- Location: IOIBUF_X20_Y81_N1
\RS_ID[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(8),
	o => \RS_ID[8]~input_o\);

-- Location: LABCELL_X31_Y13_N6
\MUX31_A|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux23~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[8]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[8]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[8]~input_o\ & ( \RS_ID[8]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[8]~input_o\ & ( (\MUX31_A|Mux2~3_combout\ & \RS_RT_WB[8]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[8]~input_o\ & ( \RS_ID[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010000010100110011001100111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_ID[8]~input_o\,
	datac => \ALT_INV_RS_RT_WB[8]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_MEM[8]~input_o\,
	combout => \MUX31_A|Mux23~0_combout\);

-- Location: IOIBUF_X89_Y9_N21
\SIGN_EXTENDED[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(8),
	o => \SIGN_EXTENDED[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\RS_ID[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(7),
	o => \RS_ID[7]~input_o\);

-- Location: MLABCELL_X39_Y1_N6
\MUX31_A|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux24~0_combout\ = ( \RS_ID[7]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # ((!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[7]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[7]~input_o\)))) ) ) # ( !\RS_ID[7]~input_o\ & ( (\MUX31_A|Mux2~2_combout\ 
-- & ((!\MUX31_A|Mux2~3_combout\ & (\RS_RT_MEM[7]~input_o\)) # (\MUX31_A|Mux2~3_combout\ & ((\RS_RT_WB[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_RT_MEM[7]~input_o\,
	datad => \ALT_INV_RS_RT_WB[7]~input_o\,
	dataf => \ALT_INV_RS_ID[7]~input_o\,
	combout => \MUX31_A|Mux24~0_combout\);

-- Location: IOIBUF_X89_Y13_N55
\SIGN_EXTENDED[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(7),
	o => \SIGN_EXTENDED[7]~input_o\);

-- Location: IOIBUF_X22_Y81_N35
\RS_ID[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(6),
	o => \RS_ID[6]~input_o\);

-- Location: LABCELL_X31_Y13_N24
\MUX31_A|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux25~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[6]~input_o\ & ( (\RS_RT_MEM[6]~input_o\) # (\MUX31_A|Mux2~3_combout\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[6]~input_o\ & ( \RS_ID[6]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[6]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\ & \RS_RT_MEM[6]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[6]~input_o\ & ( \RS_ID[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000010100000101000110011001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_ID[6]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[6]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[6]~input_o\,
	combout => \MUX31_A|Mux25~0_combout\);

-- Location: IOIBUF_X89_Y13_N4
\SIGN_EXTENDED[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(6),
	o => \SIGN_EXTENDED[6]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\SIGN_EXTENDED[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(5),
	o => \SIGN_EXTENDED[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\RS_ID[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(5),
	o => \RS_ID[5]~input_o\);

-- Location: LABCELL_X31_Y13_N18
\MUX31_A|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux26~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[5]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[5]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_MEM[5]~input_o\ & ( \RS_ID[5]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[5]~input_o\ & ( (\MUX31_A|Mux2~3_combout\ & \RS_RT_WB[5]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_MEM[5]~input_o\ & ( \RS_ID[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000100010001000100001111000011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_RT_WB[5]~input_o\,
	datac => \ALT_INV_RS_ID[5]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_MEM[5]~input_o\,
	combout => \MUX31_A|Mux26~0_combout\);

-- Location: IOIBUF_X52_Y0_N52
\RS_ID[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(4),
	o => \RS_ID[4]~input_o\);

-- Location: LABCELL_X57_Y9_N0
\MUX31_A|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux27~0_combout\ = ( \MUX31_A|Mux2~3_combout\ & ( \RS_ID[4]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # (\RS_RT_WB[4]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( \RS_ID[4]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) # (\RS_RT_MEM[4]~input_o\) ) 
-- ) ) # ( \MUX31_A|Mux2~3_combout\ & ( !\RS_ID[4]~input_o\ & ( (\RS_RT_WB[4]~input_o\ & \MUX31_A|Mux2~2_combout\) ) ) ) # ( !\MUX31_A|Mux2~3_combout\ & ( !\RS_ID[4]~input_o\ & ( (\MUX31_A|Mux2~2_combout\ & \RS_RT_MEM[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100010001000111001111110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[4]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \ALT_INV_RS_RT_MEM[4]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_RS_ID[4]~input_o\,
	combout => \MUX31_A|Mux27~0_combout\);

-- Location: IOIBUF_X89_Y4_N44
\SIGN_EXTENDED[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(4),
	o => \SIGN_EXTENDED[4]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\SIGN_EXTENDED[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(3),
	o => \SIGN_EXTENDED[3]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\RS_ID[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(3),
	o => \RS_ID[3]~input_o\);

-- Location: LABCELL_X57_Y9_N18
\MUX31_A|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux28~0_combout\ = ( \RS_RT_MEM[3]~input_o\ & ( \RS_ID[3]~input_o\ & ( ((!\MUX31_A|Mux2~2_combout\) # (!\MUX31_A|Mux2~3_combout\)) # (\RS_RT_WB[3]~input_o\) ) ) ) # ( !\RS_RT_MEM[3]~input_o\ & ( \RS_ID[3]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\) 
-- # ((\RS_RT_WB[3]~input_o\ & \MUX31_A|Mux2~3_combout\)) ) ) ) # ( \RS_RT_MEM[3]~input_o\ & ( !\RS_ID[3]~input_o\ & ( (\MUX31_A|Mux2~2_combout\ & ((!\MUX31_A|Mux2~3_combout\) # (\RS_RT_WB[3]~input_o\))) ) ) ) # ( !\RS_RT_MEM[3]~input_o\ & ( 
-- !\RS_ID[3]~input_o\ & ( (\RS_RT_WB[3]~input_o\ & (\MUX31_A|Mux2~2_combout\ & \MUX31_A|Mux2~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001100010011000111001101110011011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_RT_WB[3]~input_o\,
	datab => \MUX31_A|ALT_INV_Mux2~2_combout\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datae => \ALT_INV_RS_RT_MEM[3]~input_o\,
	dataf => \ALT_INV_RS_ID[3]~input_o\,
	combout => \MUX31_A|Mux28~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\RS_ID[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(2),
	o => \RS_ID[2]~input_o\);

-- Location: MLABCELL_X39_Y1_N54
\MUX31_A|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux29~0_combout\ = ( \RS_RT_WB[2]~input_o\ & ( (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[2]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & (((\MUX31_A|Mux2~3_combout\) # (\RS_RT_MEM[2]~input_o\)))) ) ) # ( !\RS_RT_WB[2]~input_o\ & ( 
-- (!\MUX31_A|Mux2~2_combout\ & (\RS_ID[2]~input_o\)) # (\MUX31_A|Mux2~2_combout\ & (((\RS_RT_MEM[2]~input_o\ & !\MUX31_A|Mux2~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110000010101010011000001010101001111110101010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RS_ID[2]~input_o\,
	datab => \ALT_INV_RS_RT_MEM[2]~input_o\,
	datac => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datad => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[2]~input_o\,
	combout => \MUX31_A|Mux29~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\SIGN_EXTENDED[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(2),
	o => \SIGN_EXTENDED[2]~input_o\);

-- Location: IOIBUF_X14_Y81_N52
\RS_ID[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_ID(1),
	o => \RS_ID[1]~input_o\);

-- Location: LABCELL_X31_Y13_N48
\MUX31_A|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX31_A|Mux30~0_combout\ = ( \MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[1]~input_o\ & ( (\RS_RT_MEM[1]~input_o\) # (\MUX31_A|Mux2~3_combout\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( \RS_RT_WB[1]~input_o\ & ( \RS_ID[1]~input_o\ ) ) ) # ( 
-- \MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[1]~input_o\ & ( (!\MUX31_A|Mux2~3_combout\ & \RS_RT_MEM[1]~input_o\) ) ) ) # ( !\MUX31_A|Mux2~2_combout\ & ( !\RS_RT_WB[1]~input_o\ & ( \RS_ID[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000010100000101000110011001100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_RS_ID[1]~input_o\,
	datac => \ALT_INV_RS_RT_MEM[1]~input_o\,
	datae => \MUX31_A|ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_RS_RT_WB[1]~input_o\,
	combout => \MUX31_A|Mux30~0_combout\);

-- Location: IOIBUF_X89_Y25_N21
\SIGN_EXTENDED[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGN_EXTENDED(1),
	o => \SIGN_EXTENDED[1]~input_o\);

-- Location: LABCELL_X62_Y9_N30
\ALU|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ALU|Add1~130_cout\);

-- Location: LABCELL_X62_Y9_N33
\ALU|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~1_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[0]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux31~4_combout\)) ) + ( \MUX31_A|Mux31~0_combout\ ) + ( \ALU|Add1~130_cout\ ))
-- \ALU|Add1~2\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[0]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux31~4_combout\)) ) + ( \MUX31_A|Mux31~0_combout\ ) + ( \ALU|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux31~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux31~4_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[0]~input_o\,
	cin => \ALU|Add1~130_cout\,
	sumout => \ALU|Add1~1_sumout\,
	cout => \ALU|Add1~2\);

-- Location: LABCELL_X62_Y9_N36
\ALU|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~9_sumout\ = SUM(( \MUX31_A|Mux30~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[1]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux30~0_combout\)) ) + ( \ALU|Add1~2\ ))
-- \ALU|Add1~10\ = CARRY(( \MUX31_A|Mux30~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[1]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux30~0_combout\)) ) + ( \ALU|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux30~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[1]~input_o\,
	cin => \ALU|Add1~2\,
	sumout => \ALU|Add1~9_sumout\,
	cout => \ALU|Add1~10\);

-- Location: LABCELL_X62_Y9_N39
\ALU|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~13_sumout\ = SUM(( \MUX31_A|Mux29~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[2]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux29~0_combout\)) ) + ( \ALU|Add1~10\ ))
-- \ALU|Add1~14\ = CARRY(( \MUX31_A|Mux29~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[2]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux29~0_combout\)) ) + ( \ALU|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_A|ALT_INV_Mux29~0_combout\,
	datac => \MUX31_B|ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[2]~input_o\,
	cin => \ALU|Add1~10\,
	sumout => \ALU|Add1~13_sumout\,
	cout => \ALU|Add1~14\);

-- Location: LABCELL_X62_Y9_N42
\ALU|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~17_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[3]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux28~0_combout\)) ) + ( \MUX31_A|Mux28~0_combout\ ) + ( \ALU|Add1~14\ ))
-- \ALU|Add1~18\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[3]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux28~0_combout\)) ) + ( \MUX31_A|Mux28~0_combout\ ) + ( \ALU|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux28~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[3]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux28~0_combout\,
	cin => \ALU|Add1~14\,
	sumout => \ALU|Add1~17_sumout\,
	cout => \ALU|Add1~18\);

-- Location: LABCELL_X62_Y9_N45
\ALU|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~21_sumout\ = SUM(( \MUX31_A|Mux27~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[4]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux27~0_combout\)) ) + ( \ALU|Add1~18\ ))
-- \ALU|Add1~22\ = CARRY(( \MUX31_A|Mux27~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[4]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux27~0_combout\)) ) + ( \ALU|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux27~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux27~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[4]~input_o\,
	cin => \ALU|Add1~18\,
	sumout => \ALU|Add1~21_sumout\,
	cout => \ALU|Add1~22\);

-- Location: LABCELL_X62_Y9_N48
\ALU|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~25_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[5]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux26~0_combout\)) ) + ( \MUX31_A|Mux26~0_combout\ ) + ( \ALU|Add1~22\ ))
-- \ALU|Add1~26\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[5]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux26~0_combout\)) ) + ( \MUX31_A|Mux26~0_combout\ ) + ( \ALU|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[5]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux26~0_combout\,
	cin => \ALU|Add1~22\,
	sumout => \ALU|Add1~25_sumout\,
	cout => \ALU|Add1~26\);

-- Location: LABCELL_X62_Y9_N51
\ALU|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~29_sumout\ = SUM(( \MUX31_A|Mux25~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[6]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux25~0_combout\)) ) + ( \ALU|Add1~26\ ))
-- \ALU|Add1~30\ = CARRY(( \MUX31_A|Mux25~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[6]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux25~0_combout\)) ) + ( \ALU|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux25~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[6]~input_o\,
	cin => \ALU|Add1~26\,
	sumout => \ALU|Add1~29_sumout\,
	cout => \ALU|Add1~30\);

-- Location: LABCELL_X62_Y9_N54
\ALU|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~33_sumout\ = SUM(( \MUX31_A|Mux24~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[7]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux24~0_combout\)) ) + ( \ALU|Add1~30\ ))
-- \ALU|Add1~34\ = CARRY(( \MUX31_A|Mux24~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[7]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux24~0_combout\)) ) + ( \ALU|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_A|ALT_INV_Mux24~0_combout\,
	datac => \MUX31_B|ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[7]~input_o\,
	cin => \ALU|Add1~30\,
	sumout => \ALU|Add1~33_sumout\,
	cout => \ALU|Add1~34\);

-- Location: LABCELL_X62_Y9_N57
\ALU|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~37_sumout\ = SUM(( \MUX31_A|Mux23~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[8]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux23~0_combout\)) ) + ( \ALU|Add1~34\ ))
-- \ALU|Add1~38\ = CARRY(( \MUX31_A|Mux23~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[8]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux23~0_combout\)) ) + ( \ALU|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux23~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[8]~input_o\,
	cin => \ALU|Add1~34\,
	sumout => \ALU|Add1~37_sumout\,
	cout => \ALU|Add1~38\);

-- Location: LABCELL_X62_Y8_N30
\ALU|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~41_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[9]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux22~0_combout\)) ) + ( \MUX31_A|Mux22~0_combout\ ) + ( \ALU|Add1~38\ ))
-- \ALU|Add1~42\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[9]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux22~0_combout\)) ) + ( \MUX31_A|Mux22~0_combout\ ) + ( \ALU|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[9]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux22~0_combout\,
	cin => \ALU|Add1~38\,
	sumout => \ALU|Add1~41_sumout\,
	cout => \ALU|Add1~42\);

-- Location: LABCELL_X62_Y8_N33
\ALU|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~45_sumout\ = SUM(( \MUX31_A|Mux21~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[10]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux21~0_combout\)) ) + ( \ALU|Add1~42\ ))
-- \ALU|Add1~46\ = CARRY(( \MUX31_A|Mux21~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[10]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux21~0_combout\)) ) + ( \ALU|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011101100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux21~0_combout\,
	datac => \MUX31_A|ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[10]~input_o\,
	cin => \ALU|Add1~42\,
	sumout => \ALU|Add1~45_sumout\,
	cout => \ALU|Add1~46\);

-- Location: LABCELL_X62_Y8_N36
\ALU|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~49_sumout\ = SUM(( \MUX31_A|Mux20~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[11]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux20~0_combout\)) ) + ( \ALU|Add1~46\ ))
-- \ALU|Add1~50\ = CARRY(( \MUX31_A|Mux20~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[11]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux20~0_combout\)) ) + ( \ALU|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux20~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[11]~input_o\,
	cin => \ALU|Add1~46\,
	sumout => \ALU|Add1~49_sumout\,
	cout => \ALU|Add1~50\);

-- Location: LABCELL_X62_Y8_N39
\ALU|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~53_sumout\ = SUM(( \MUX31_A|Mux19~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[12]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux19~0_combout\)) ) + ( \ALU|Add1~50\ ))
-- \ALU|Add1~54\ = CARRY(( \MUX31_A|Mux19~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[12]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux19~0_combout\)) ) + ( \ALU|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100011011101100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux19~0_combout\,
	datac => \MUX31_A|ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[12]~input_o\,
	cin => \ALU|Add1~50\,
	sumout => \ALU|Add1~53_sumout\,
	cout => \ALU|Add1~54\);

-- Location: LABCELL_X62_Y8_N42
\ALU|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~57_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[13]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux18~0_combout\)) ) + ( \MUX31_A|Mux18~0_combout\ ) + ( \ALU|Add1~54\ ))
-- \ALU|Add1~58\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[13]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux18~0_combout\)) ) + ( \MUX31_A|Mux18~0_combout\ ) + ( \ALU|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[13]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux18~0_combout\,
	cin => \ALU|Add1~54\,
	sumout => \ALU|Add1~57_sumout\,
	cout => \ALU|Add1~58\);

-- Location: LABCELL_X62_Y8_N45
\ALU|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~61_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[14]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux17~0_combout\)) ) + ( \MUX31_A|Mux17~0_combout\ ) + ( \ALU|Add1~58\ ))
-- \ALU|Add1~62\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[14]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux17~0_combout\)) ) + ( \MUX31_A|Mux17~0_combout\ ) + ( \ALU|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux17~0_combout\,
	datac => \MUX31_A|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[14]~input_o\,
	cin => \ALU|Add1~58\,
	sumout => \ALU|Add1~61_sumout\,
	cout => \ALU|Add1~62\);

-- Location: LABCELL_X62_Y8_N48
\ALU|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~65_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[15]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux16~0_combout\)) ) + ( \MUX31_A|Mux16~0_combout\ ) + ( \ALU|Add1~62\ ))
-- \ALU|Add1~66\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[15]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux16~0_combout\)) ) + ( \MUX31_A|Mux16~0_combout\ ) + ( \ALU|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux16~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[15]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux16~0_combout\,
	cin => \ALU|Add1~62\,
	sumout => \ALU|Add1~65_sumout\,
	cout => \ALU|Add1~66\);

-- Location: LABCELL_X62_Y8_N51
\ALU|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~69_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[16]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux15~0_combout\)) ) + ( \MUX31_A|Mux15~0_combout\ ) + ( \ALU|Add1~66\ ))
-- \ALU|Add1~70\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[16]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux15~0_combout\)) ) + ( \MUX31_A|Mux15~0_combout\ ) + ( \ALU|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux15~0_combout\,
	datac => \MUX31_A|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[16]~input_o\,
	cin => \ALU|Add1~66\,
	sumout => \ALU|Add1~69_sumout\,
	cout => \ALU|Add1~70\);

-- Location: LABCELL_X62_Y8_N54
\ALU|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~73_sumout\ = SUM(( \MUX31_A|Mux14~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[17]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux14~0_combout\)) ) + ( \ALU|Add1~70\ ))
-- \ALU|Add1~74\ = CARRY(( \MUX31_A|Mux14~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[17]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux14~0_combout\)) ) + ( \ALU|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111100111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux14~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[17]~input_o\,
	cin => \ALU|Add1~70\,
	sumout => \ALU|Add1~73_sumout\,
	cout => \ALU|Add1~74\);

-- Location: LABCELL_X62_Y8_N57
\ALU|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~77_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[18]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux13~0_combout\)) ) + ( \MUX31_A|Mux13~0_combout\ ) + ( \ALU|Add1~74\ ))
-- \ALU|Add1~78\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[18]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux13~0_combout\)) ) + ( \MUX31_A|Mux13~0_combout\ ) + ( \ALU|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110001011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux13~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[18]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux13~0_combout\,
	cin => \ALU|Add1~74\,
	sumout => \ALU|Add1~77_sumout\,
	cout => \ALU|Add1~78\);

-- Location: LABCELL_X62_Y7_N0
\ALU|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~81_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[19]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux12~0_combout\)) ) + ( \MUX31_A|Mux12~0_combout\ ) + ( \ALU|Add1~78\ ))
-- \ALU|Add1~82\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[19]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux12~0_combout\)) ) + ( \MUX31_A|Mux12~0_combout\ ) + ( \ALU|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_SIGN_EXTENDED[19]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux12~0_combout\,
	cin => \ALU|Add1~78\,
	sumout => \ALU|Add1~81_sumout\,
	cout => \ALU|Add1~82\);

-- Location: LABCELL_X62_Y7_N3
\ALU|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~85_sumout\ = SUM(( \MUX31_A|Mux11~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[20]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux11~0_combout\)) ) + ( \ALU|Add1~82\ ))
-- \ALU|Add1~86\ = CARRY(( \MUX31_A|Mux11~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[20]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux11~0_combout\)) ) + ( \ALU|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux11~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[20]~input_o\,
	cin => \ALU|Add1~82\,
	sumout => \ALU|Add1~85_sumout\,
	cout => \ALU|Add1~86\);

-- Location: LABCELL_X62_Y7_N6
\ALU|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~89_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[21]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux10~0_combout\)) ) + ( \MUX31_A|Mux10~0_combout\ ) + ( \ALU|Add1~86\ ))
-- \ALU|Add1~90\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[21]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux10~0_combout\)) ) + ( \MUX31_A|Mux10~0_combout\ ) + ( \ALU|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_SIGN_EXTENDED[21]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux10~0_combout\,
	cin => \ALU|Add1~86\,
	sumout => \ALU|Add1~89_sumout\,
	cout => \ALU|Add1~90\);

-- Location: LABCELL_X62_Y7_N9
\ALU|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~93_sumout\ = SUM(( \MUX31_A|Mux9~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[22]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux9~0_combout\)) ) + ( \ALU|Add1~90\ ))
-- \ALU|Add1~94\ = CARRY(( \MUX31_A|Mux9~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[22]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux9~0_combout\)) ) + ( \ALU|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux9~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[22]~input_o\,
	cin => \ALU|Add1~90\,
	sumout => \ALU|Add1~93_sumout\,
	cout => \ALU|Add1~94\);

-- Location: LABCELL_X62_Y7_N12
\ALU|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~97_sumout\ = SUM(( \MUX31_A|Mux8~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[23]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux8~0_combout\)) ) + ( \ALU|Add1~94\ ))
-- \ALU|Add1~98\ = CARRY(( \MUX31_A|Mux8~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[23]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux8~0_combout\)) ) + ( \ALU|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux8~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[23]~input_o\,
	cin => \ALU|Add1~94\,
	sumout => \ALU|Add1~97_sumout\,
	cout => \ALU|Add1~98\);

-- Location: LABCELL_X62_Y7_N15
\ALU|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~101_sumout\ = SUM(( \MUX31_A|Mux7~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[24]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux7~0_combout\)) ) + ( \ALU|Add1~98\ ))
-- \ALU|Add1~102\ = CARRY(( \MUX31_A|Mux7~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[24]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux7~0_combout\)) ) + ( \ALU|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux7~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[24]~input_o\,
	cin => \ALU|Add1~98\,
	sumout => \ALU|Add1~101_sumout\,
	cout => \ALU|Add1~102\);

-- Location: LABCELL_X62_Y7_N18
\ALU|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~105_sumout\ = SUM(( (!\ALU_SRC~input_o\ & (!\SIGN_EXTENDED[25]~input_o\)) # (\ALU_SRC~input_o\ & ((!\MUX31_B|Mux6~0_combout\))) ) + ( \MUX31_A|Mux6~0_combout\ ) + ( \ALU|Add1~102\ ))
-- \ALU|Add1~106\ = CARRY(( (!\ALU_SRC~input_o\ & (!\SIGN_EXTENDED[25]~input_o\)) # (\ALU_SRC~input_o\ & ((!\MUX31_B|Mux6~0_combout\))) ) + ( \MUX31_A|Mux6~0_combout\ ) + ( \ALU|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101100011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \ALT_INV_SIGN_EXTENDED[25]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux6~0_combout\,
	dataf => \MUX31_A|ALT_INV_Mux6~0_combout\,
	cin => \ALU|Add1~102\,
	sumout => \ALU|Add1~105_sumout\,
	cout => \ALU|Add1~106\);

-- Location: LABCELL_X62_Y7_N21
\ALU|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~109_sumout\ = SUM(( \MUX31_A|Mux5~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[26]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux5~0_combout\)) ) + ( \ALU|Add1~106\ ))
-- \ALU|Add1~110\ = CARRY(( \MUX31_A|Mux5~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[26]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux5~0_combout\)) ) + ( \ALU|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux5~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[26]~input_o\,
	cin => \ALU|Add1~106\,
	sumout => \ALU|Add1~109_sumout\,
	cout => \ALU|Add1~110\);

-- Location: LABCELL_X62_Y7_N24
\ALU|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~113_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[27]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux4~0_combout\)) ) + ( \MUX31_A|Mux4~0_combout\ ) + ( \ALU|Add1~110\ ))
-- \ALU|Add1~114\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[27]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux4~0_combout\)) ) + ( \MUX31_A|Mux4~0_combout\ ) + ( \ALU|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[27]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux4~0_combout\,
	cin => \ALU|Add1~110\,
	sumout => \ALU|Add1~113_sumout\,
	cout => \ALU|Add1~114\);

-- Location: LABCELL_X62_Y7_N27
\ALU|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~117_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[28]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux3~0_combout\)) ) + ( \MUX31_A|Mux3~0_combout\ ) + ( \ALU|Add1~114\ ))
-- \ALU|Add1~118\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[28]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux3~0_combout\)) ) + ( \MUX31_A|Mux3~0_combout\ ) + ( \ALU|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[28]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux3~0_combout\,
	cin => \ALU|Add1~114\,
	sumout => \ALU|Add1~117_sumout\,
	cout => \ALU|Add1~118\);

-- Location: LABCELL_X62_Y7_N30
\ALU|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~121_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[29]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux2~0_combout\)) ) + ( \MUX31_A|Mux2~4_combout\ ) + ( \ALU|Add1~118\ ))
-- \ALU|Add1~122\ = CARRY(( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[29]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux2~0_combout\)) ) + ( \MUX31_A|Mux2~4_combout\ ) + ( \ALU|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[29]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux2~4_combout\,
	cin => \ALU|Add1~118\,
	sumout => \ALU|Add1~121_sumout\,
	cout => \ALU|Add1~122\);

-- Location: LABCELL_X62_Y7_N33
\ALU|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~125_sumout\ = SUM(( \MUX31_A|Mux1~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[30]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux1~0_combout\)) ) + ( \ALU|Add1~122\ ))
-- \ALU|Add1~126\ = CARRY(( \MUX31_A|Mux1~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[30]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux1~0_combout\)) ) + ( \ALU|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux1~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[30]~input_o\,
	cin => \ALU|Add1~122\,
	sumout => \ALU|Add1~125_sumout\,
	cout => \ALU|Add1~126\);

-- Location: LABCELL_X62_Y7_N36
\ALU|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add1~5_sumout\ = SUM(( \MUX31_A|Mux0~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((!\SIGN_EXTENDED[31]~input_o\))) # (\ALU_SRC~input_o\ & (!\MUX31_B|Mux0~0_combout\)) ) + ( \ALU|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101010011010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_SIGN_EXTENDED[31]~input_o\,
	datac => \ALT_INV_ALU_SRC~input_o\,
	datad => \MUX31_A|ALT_INV_Mux0~0_combout\,
	cin => \ALU|Add1~126\,
	sumout => \ALU|Add1~5_sumout\);

-- Location: IOIBUF_X38_Y0_N18
\FUNCT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(1),
	o => \FUNCT[1]~input_o\);

-- Location: MLABCELL_X39_Y1_N12
\ALU_DECOD|F[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_DECOD|F\(1) = ( \ALUOP[0]~input_o\ & ( \ALU_DECOD|F\(1) ) ) # ( !\ALUOP[0]~input_o\ & ( \ALU_DECOD|F\(1) & ( (!\ALUOP[1]~input_o\) # (\FUNCT[1]~input_o\) ) ) ) # ( \ALUOP[0]~input_o\ & ( !\ALU_DECOD|F\(1) & ( !\ALUOP[1]~input_o\ ) ) ) # ( 
-- !\ALUOP[0]~input_o\ & ( !\ALU_DECOD|F\(1) & ( (!\ALUOP[1]~input_o\) # (\FUNCT[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111100001111000011110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FUNCT[1]~input_o\,
	datac => \ALT_INV_ALUOP[1]~input_o\,
	datae => \ALT_INV_ALUOP[0]~input_o\,
	dataf => \ALU_DECOD|ALT_INV_F\(1),
	combout => \ALU_DECOD|F\(1));

-- Location: LABCELL_X63_Y9_N30
\ALU|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~1_sumout\ = SUM(( \MUX31_A|Mux31~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[0]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux31~4_combout\)) ) + ( !VCC ))
-- \ALU|Add0~2\ = CARRY(( \MUX31_A|Mux31~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[0]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux31~4_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101110001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux31~4_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[0]~input_o\,
	datad => \MUX31_A|ALT_INV_Mux31~0_combout\,
	cin => GND,
	sumout => \ALU|Add0~1_sumout\,
	cout => \ALU|Add0~2\);

-- Location: LABCELL_X40_Y4_N39
\ALU|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux31~1_combout\ = ( !\ALU_DECOD|F\(0) & ( (!\ALU_DECOD|F\(1) & (((\ALU|Mux31~0_combout\)))) # (\ALU_DECOD|F\(1) & ((!\ALU_DECOD|F\(2) & (((\ALU|Add0~1_sumout\)))) # (\ALU_DECOD|F\(2) & (((\ALU|Add1~1_sumout\)))))) ) ) # ( \ALU_DECOD|F\(0) & ( 
-- (!\ALU_DECOD|F\(1) & (((\ALU|Mux31~0_combout\)))) # (\ALU_DECOD|F\(1) & ((!\ALU_DECOD|F\(2) & (((\ALU|Add0~1_sumout\)))) # (\ALU_DECOD|F\(2) & (((\ALU|Add1~5_sumout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100000101001100110000010100110011101011110011001110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(2),
	datab => \ALU|ALT_INV_Mux31~0_combout\,
	datac => \ALU|ALT_INV_Add1~5_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(0),
	dataf => \ALU|ALT_INV_Add0~1_sumout\,
	datag => \ALU|ALT_INV_Add1~1_sumout\,
	combout => \ALU|Mux31~1_combout\);

-- Location: LABCELL_X62_Y9_N3
\MUX21_DATA|s[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[1]~0_combout\ = (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[1]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[1]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux30~0_combout\,
	combout => \MUX21_DATA|s[1]~0_combout\);

-- Location: LABCELL_X63_Y9_N33
\ALU|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_sumout\ = SUM(( \MUX31_A|Mux30~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[1]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux30~0_combout\)) ) + ( \ALU|Add0~2\ ))
-- \ALU|Add0~6\ = CARRY(( \MUX31_A|Mux30~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[1]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux30~0_combout\)) ) + ( \ALU|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux30~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[1]~input_o\,
	cin => \ALU|Add0~2\,
	sumout => \ALU|Add0~5_sumout\,
	cout => \ALU|Add0~6\);

-- Location: LABCELL_X57_Y9_N30
\ALU|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux30~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux30~0_combout\ & ((\MUX21_DATA|s[1]~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~5_sumout\)))))) # (\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux30~0_combout\ 
-- & (((\MUX21_DATA|s[1]~0_combout\)))) # (\MUX31_A|Mux30~0_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX21_DATA|s[1]~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[1]~0_combout\) # ((!\MUX31_A|Mux30~0_combout\ & 
-- !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~9_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101110011111100110001000111111011101000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux30~0_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~9_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[1]~0_combout\,
	datag => \ALU|ALT_INV_Add0~5_sumout\,
	combout => \ALU|Mux30~0_combout\);

-- Location: LABCELL_X62_Y9_N21
\MUX21_DATA|s[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[2]~1_combout\ = ( \SIGN_EXTENDED[2]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux29~0_combout\) ) ) # ( !\SIGN_EXTENDED[2]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux29~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[2]~input_o\,
	combout => \MUX21_DATA|s[2]~1_combout\);

-- Location: LABCELL_X63_Y9_N36
\ALU|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_sumout\ = SUM(( \MUX31_A|Mux29~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[2]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux29~0_combout\)) ) + ( \ALU|Add0~6\ ))
-- \ALU|Add0~10\ = CARRY(( \MUX31_A|Mux29~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[2]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux29~0_combout\)) ) + ( \ALU|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux29~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[2]~input_o\,
	cin => \ALU|Add0~6\,
	sumout => \ALU|Add0~9_sumout\,
	cout => \ALU|Add0~10\);

-- Location: MLABCELL_X52_Y9_N48
\ALU|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux29~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[2]~1_combout\ & ((\MUX31_A|Mux29~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~9_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[2]~1_combout\ & (((\MUX31_A|Mux29~0_combout\)))) # (\MUX21_DATA|s[2]~1_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux29~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[2]~1_combout\) # 
-- (((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux29~0_combout\))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~13_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011101011111000100000100111111011101000110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \MUX21_DATA|ALT_INV_s[2]~1_combout\,
	datac => \ALU|ALT_INV_Add1~13_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux29~0_combout\,
	datag => \ALU|ALT_INV_Add0~9_sumout\,
	combout => \ALU|Mux29~0_combout\);

-- Location: LABCELL_X62_Y9_N27
\MUX21_DATA|s[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[3]~2_combout\ = (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[3]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[3]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux28~0_combout\,
	combout => \MUX21_DATA|s[3]~2_combout\);

-- Location: LABCELL_X63_Y9_N39
\ALU|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~13_sumout\ = SUM(( \MUX31_A|Mux28~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[3]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux28~0_combout\)) ) + ( \ALU|Add0~10\ ))
-- \ALU|Add0~14\ = CARRY(( \MUX31_A|Mux28~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[3]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux28~0_combout\)) ) + ( \ALU|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux28~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux28~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[3]~input_o\,
	cin => \ALU|Add0~10\,
	sumout => \ALU|Add0~13_sumout\,
	cout => \ALU|Add0~14\);

-- Location: MLABCELL_X52_Y9_N6
\ALU|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux28~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux28~0_combout\ & ((\MUX21_DATA|s[3]~2_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~13_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX31_A|Mux28~0_combout\ & (((\MUX21_DATA|s[3]~2_combout\)))) # (\MUX31_A|Mux28~0_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX21_DATA|s[3]~2_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[3]~2_combout\) # 
-- ((!\MUX31_A|Mux28~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~17_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011101011111010101000100111111011101000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \MUX31_A|ALT_INV_Mux28~0_combout\,
	datac => \ALU|ALT_INV_Add1~17_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[3]~2_combout\,
	datag => \ALU|ALT_INV_Add0~13_sumout\,
	combout => \ALU|Mux28~0_combout\);

-- Location: LABCELL_X57_Y9_N42
\MUX21_DATA|s[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[4]~3_combout\ = ( \ALU_SRC~input_o\ & ( \SIGN_EXTENDED[4]~input_o\ & ( \MUX31_B|Mux27~0_combout\ ) ) ) # ( !\ALU_SRC~input_o\ & ( \SIGN_EXTENDED[4]~input_o\ ) ) # ( \ALU_SRC~input_o\ & ( !\SIGN_EXTENDED[4]~input_o\ & ( 
-- \MUX31_B|Mux27~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX31_B|ALT_INV_Mux27~0_combout\,
	datae => \ALT_INV_ALU_SRC~input_o\,
	dataf => \ALT_INV_SIGN_EXTENDED[4]~input_o\,
	combout => \MUX21_DATA|s[4]~3_combout\);

-- Location: LABCELL_X63_Y9_N42
\ALU|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~17_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[4]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux27~0_combout\)) ) + ( \MUX31_A|Mux27~0_combout\ ) + ( \ALU|Add0~14\ ))
-- \ALU|Add0~18\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[4]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux27~0_combout\)) ) + ( \MUX31_A|Mux27~0_combout\ ) + ( \ALU|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux27~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[4]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux27~0_combout\,
	cin => \ALU|Add0~14\,
	sumout => \ALU|Add0~17_sumout\,
	cout => \ALU|Add0~18\);

-- Location: LABCELL_X57_Y9_N12
\ALU|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux27~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux27~0_combout\ & ((\MUX21_DATA|s[4]~3_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~17_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX31_A|Mux27~0_combout\ & (((\MUX21_DATA|s[4]~3_combout\)))) # (\MUX31_A|Mux27~0_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX21_DATA|s[4]~3_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[4]~3_combout\) # 
-- ((!\MUX31_A|Mux27~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~21_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101110011111100110001000111111011101000101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux27~0_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~21_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[4]~3_combout\,
	datag => \ALU|ALT_INV_Add0~17_sumout\,
	combout => \ALU|Mux27~0_combout\);

-- Location: LABCELL_X62_Y9_N24
\MUX21_DATA|s[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[5]~4_combout\ = (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[5]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[5]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux26~0_combout\,
	combout => \MUX21_DATA|s[5]~4_combout\);

-- Location: LABCELL_X63_Y9_N45
\ALU|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~21_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[5]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux26~0_combout\)) ) + ( \MUX31_A|Mux26~0_combout\ ) + ( \ALU|Add0~18\ ))
-- \ALU|Add0~22\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[5]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux26~0_combout\)) ) + ( \MUX31_A|Mux26~0_combout\ ) + ( \ALU|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[5]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux26~0_combout\,
	cin => \ALU|Add0~18\,
	sumout => \ALU|Add0~21_sumout\,
	cout => \ALU|Add0~22\);

-- Location: LABCELL_X62_Y9_N12
\ALU|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux26~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[5]~4_combout\ & (\MUX31_A|Mux26~0_combout\))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~21_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[5]~4_combout\ & (\MUX31_A|Mux26~0_combout\)) # (\MUX21_DATA|s[5]~4_combout\ & ((!\MUX31_A|Mux26~0_combout\) # ((!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[5]~4_combout\) # 
-- ((!\MUX31_A|Mux26~0_combout\ & ((!\ALU_DECOD|F\(0))))))) # (\ALU_DECOD|F\(1) & ((((\ALU|Add1~25_sumout\ & !\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111111011100000111101110111011001101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[5]~4_combout\,
	datab => \MUX31_A|ALT_INV_Mux26~0_combout\,
	datac => \ALU|ALT_INV_Add1~25_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~21_sumout\,
	combout => \ALU|Mux26~0_combout\);

-- Location: LABCELL_X62_Y9_N0
\MUX21_DATA|s[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[6]~5_combout\ = ( \SIGN_EXTENDED[6]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux25~0_combout\) ) ) # ( !\SIGN_EXTENDED[6]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datad => \MUX31_B|ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[6]~input_o\,
	combout => \MUX21_DATA|s[6]~5_combout\);

-- Location: LABCELL_X63_Y9_N48
\ALU|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~25_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[6]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux25~0_combout\)) ) + ( \MUX31_A|Mux25~0_combout\ ) + ( \ALU|Add0~22\ ))
-- \ALU|Add0~26\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[6]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux25~0_combout\)) ) + ( \MUX31_A|Mux25~0_combout\ ) + ( \ALU|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux25~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[6]~input_o\,
	cin => \ALU|Add0~22\,
	sumout => \ALU|Add0~25_sumout\,
	cout => \ALU|Add0~26\);

-- Location: MLABCELL_X39_Y1_N36
\ALU|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux25~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux25~0_combout\ & (\MUX21_DATA|s[6]~5_combout\))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~25_sumout\)))))) # (\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux25~0_combout\ 
-- & (\MUX21_DATA|s[6]~5_combout\)) # (\MUX31_A|Mux25~0_combout\ & ((!\MUX21_DATA|s[6]~5_combout\) # ((!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[6]~5_combout\) # ((!\MUX31_A|Mux25~0_combout\ & 
-- ((!\ALU_DECOD|F\(0))))))) # (\ALU_DECOD|F\(1) & ((((\ALU|Add1~29_sumout\ & !\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111111011100000111101110111011001101100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux25~0_combout\,
	datab => \MUX21_DATA|ALT_INV_s[6]~5_combout\,
	datac => \ALU|ALT_INV_Add1~29_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~25_sumout\,
	combout => \ALU|Mux25~0_combout\);

-- Location: LABCELL_X62_Y9_N18
\MUX21_DATA|s[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[7]~6_combout\ = ( \SIGN_EXTENDED[7]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux24~0_combout\) ) ) # ( !\SIGN_EXTENDED[7]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux24~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[7]~input_o\,
	combout => \MUX21_DATA|s[7]~6_combout\);

-- Location: LABCELL_X63_Y9_N51
\ALU|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~29_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[7]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux24~0_combout\)) ) + ( \MUX31_A|Mux24~0_combout\ ) + ( \ALU|Add0~26\ ))
-- \ALU|Add0~30\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[7]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux24~0_combout\)) ) + ( \MUX31_A|Mux24~0_combout\ ) + ( \ALU|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[7]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux24~0_combout\,
	cin => \ALU|Add0~26\,
	sumout => \ALU|Add0~29_sumout\,
	cout => \ALU|Add0~30\);

-- Location: MLABCELL_X52_Y9_N15
\ALU|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux24~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux24~0_combout\ & (\MUX21_DATA|s[7]~6_combout\))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~29_sumout\)))))) # (\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux24~0_combout\ 
-- & (\MUX21_DATA|s[7]~6_combout\)) # (\MUX31_A|Mux24~0_combout\ & ((!\MUX21_DATA|s[7]~6_combout\) # ((!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[7]~6_combout\) # ((!\MUX31_A|Mux24~0_combout\ & 
-- ((!\ALU_DECOD|F\(0))))))) # (\ALU_DECOD|F\(1) & ((((\ALU|Add1~33_sumout\ & !\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111111011100000111101110111011001101100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux24~0_combout\,
	datab => \MUX21_DATA|ALT_INV_s[7]~6_combout\,
	datac => \ALU|ALT_INV_Add1~33_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~29_sumout\,
	combout => \ALU|Mux24~0_combout\);

-- Location: LABCELL_X63_Y9_N27
\MUX21_DATA|s[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[8]~7_combout\ = ( \SIGN_EXTENDED[8]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux23~0_combout\) ) ) # ( !\SIGN_EXTENDED[8]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[8]~input_o\,
	combout => \MUX21_DATA|s[8]~7_combout\);

-- Location: LABCELL_X63_Y9_N54
\ALU|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~33_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[8]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux23~0_combout\)) ) + ( \MUX31_A|Mux23~0_combout\ ) + ( \ALU|Add0~30\ ))
-- \ALU|Add0~34\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[8]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux23~0_combout\)) ) + ( \MUX31_A|Mux23~0_combout\ ) + ( \ALU|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux23~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[8]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux23~0_combout\,
	cin => \ALU|Add0~30\,
	sumout => \ALU|Add0~33_sumout\,
	cout => \ALU|Add0~34\);

-- Location: LABCELL_X63_Y9_N18
\ALU|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux23~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[8]~7_combout\ & \MUX31_A|Mux23~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~33_sumout\)))) # (\ALU_DECOD|F\(0) & (((!\MUX21_DATA|s[8]~7_combout\ 
-- & ((\MUX31_A|Mux23~0_combout\))) # (\MUX21_DATA|s[8]~7_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux23~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[8]~7_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux23~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101000101001010111110011101100111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~37_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[8]~7_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux23~0_combout\,
	datag => \ALU|ALT_INV_Add0~33_sumout\,
	combout => \ALU|Mux23~0_combout\);

-- Location: LABCELL_X63_Y9_N24
\MUX21_DATA|s[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[9]~8_combout\ = ( \MUX31_B|Mux22~0_combout\ & ( (\SIGN_EXTENDED[9]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux22~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[9]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux22~0_combout\,
	combout => \MUX21_DATA|s[9]~8_combout\);

-- Location: LABCELL_X63_Y9_N57
\ALU|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~37_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[9]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux22~0_combout\)) ) + ( \MUX31_A|Mux22~0_combout\ ) + ( \ALU|Add0~34\ ))
-- \ALU|Add0~38\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[9]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux22~0_combout\)) ) + ( \MUX31_A|Mux22~0_combout\ ) + ( \ALU|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[9]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux22~0_combout\,
	cin => \ALU|Add0~34\,
	sumout => \ALU|Add0~37_sumout\,
	cout => \ALU|Add0~38\);

-- Location: LABCELL_X63_Y9_N12
\ALU|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux22~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX31_A|Mux22~0_combout\ & \MUX21_DATA|s[9]~8_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~37_sumout\)))) # (\ALU_DECOD|F\(0) & (((!\MUX31_A|Mux22~0_combout\ & 
-- ((\MUX21_DATA|s[9]~8_combout\))) # (\MUX31_A|Mux22~0_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[9]~8_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[9]~8_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux22~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101100111001010111110011101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~41_sumout\,
	datad => \MUX31_A|ALT_INV_Mux22~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[9]~8_combout\,
	datag => \ALU|ALT_INV_Add0~37_sumout\,
	combout => \ALU|Mux22~0_combout\);

-- Location: LABCELL_X62_Y8_N3
\MUX21_DATA|s[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[10]~9_combout\ = ( \MUX31_B|Mux21~0_combout\ & ( \ALU_SRC~input_o\ ) ) # ( \MUX31_B|Mux21~0_combout\ & ( !\ALU_SRC~input_o\ & ( \SIGN_EXTENDED[10]~input_o\ ) ) ) # ( !\MUX31_B|Mux21~0_combout\ & ( !\ALU_SRC~input_o\ & ( 
-- \SIGN_EXTENDED[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SIGN_EXTENDED[10]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_ALU_SRC~input_o\,
	combout => \MUX21_DATA|s[10]~9_combout\);

-- Location: LABCELL_X63_Y8_N30
\ALU|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~41_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[10]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux21~0_combout\)) ) + ( \MUX31_A|Mux21~0_combout\ ) + ( \ALU|Add0~38\ ))
-- \ALU|Add0~42\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[10]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux21~0_combout\)) ) + ( \MUX31_A|Mux21~0_combout\ ) + ( \ALU|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[10]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux21~0_combout\,
	cin => \ALU|Add0~38\,
	sumout => \ALU|Add0~41_sumout\,
	cout => \ALU|Add0~42\);

-- Location: LABCELL_X61_Y8_N12
\ALU|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux21~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[10]~9_combout\ & \MUX31_A|Mux21~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~41_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[10]~9_combout\ & ((\MUX31_A|Mux21~0_combout\))) # (\MUX21_DATA|s[10]~9_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux21~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[10]~9_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux21~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101000101001010111110011101100111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~45_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[10]~9_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux21~0_combout\,
	datag => \ALU|ALT_INV_Add0~41_sumout\,
	combout => \ALU|Mux21~0_combout\);

-- Location: LABCELL_X63_Y8_N24
\MUX21_DATA|s[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[11]~10_combout\ = ( \MUX31_B|Mux20~0_combout\ & ( (\SIGN_EXTENDED[11]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux20~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[11]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux20~0_combout\,
	combout => \MUX21_DATA|s[11]~10_combout\);

-- Location: LABCELL_X63_Y8_N33
\ALU|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~45_sumout\ = SUM(( \MUX31_A|Mux20~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[11]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux20~0_combout\)) ) + ( \ALU|Add0~42\ ))
-- \ALU|Add0~46\ = CARRY(( \MUX31_A|Mux20~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[11]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux20~0_combout\)) ) + ( \ALU|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux20~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[11]~input_o\,
	cin => \ALU|Add0~42\,
	sumout => \ALU|Add0~45_sumout\,
	cout => \ALU|Add0~46\);

-- Location: LABCELL_X63_Y8_N18
\ALU|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux20~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[11]~10_combout\ & (\MUX31_A|Mux20~0_combout\))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~45_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[11]~10_combout\ & (\MUX31_A|Mux20~0_combout\)) # (\MUX21_DATA|s[11]~10_combout\ & ((!\MUX31_A|Mux20~0_combout\) # ((!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[11]~10_combout\) # 
-- ((!\MUX31_A|Mux20~0_combout\ & ((!\ALU_DECOD|F\(0))))))) # (\ALU_DECOD|F\(1) & ((((\ALU|Add1~49_sumout\ & !\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111111011100000111101110111011001101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[11]~10_combout\,
	datab => \MUX31_A|ALT_INV_Mux20~0_combout\,
	datac => \ALU|ALT_INV_Add1~49_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~45_sumout\,
	combout => \ALU|Mux20~0_combout\);

-- Location: LABCELL_X62_Y8_N6
\MUX21_DATA|s[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[12]~11_combout\ = ( \MUX31_B|Mux19~0_combout\ & ( (\SIGN_EXTENDED[12]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux19~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[12]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux19~0_combout\,
	combout => \MUX21_DATA|s[12]~11_combout\);

-- Location: LABCELL_X63_Y8_N36
\ALU|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~49_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[12]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux19~0_combout\)) ) + ( \MUX31_A|Mux19~0_combout\ ) + ( \ALU|Add0~46\ ))
-- \ALU|Add0~50\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[12]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux19~0_combout\)) ) + ( \MUX31_A|Mux19~0_combout\ ) + ( \ALU|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux19~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[12]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux19~0_combout\,
	cin => \ALU|Add0~46\,
	sumout => \ALU|Add0~49_sumout\,
	cout => \ALU|Add0~50\);

-- Location: LABCELL_X61_Y8_N42
\ALU|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux19~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[12]~11_combout\ & ((\MUX31_A|Mux19~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~49_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[12]~11_combout\ & (((\MUX31_A|Mux19~0_combout\)))) # (\MUX21_DATA|s[12]~11_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux19~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[12]~11_combout\) # 
-- (((!\MUX31_A|Mux19~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~53_sumout\ & ((!\ALU_DECOD|F\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101000111110011111000101101010101111011101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[12]~11_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~53_sumout\,
	datad => \MUX31_A|ALT_INV_Mux19~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~49_sumout\,
	combout => \ALU|Mux19~0_combout\);

-- Location: LABCELL_X62_Y8_N15
\MUX21_DATA|s[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[13]~12_combout\ = ( \MUX31_B|Mux18~0_combout\ & ( (\SIGN_EXTENDED[13]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux18~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datad => \ALT_INV_SIGN_EXTENDED[13]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux18~0_combout\,
	combout => \MUX21_DATA|s[13]~12_combout\);

-- Location: LABCELL_X63_Y8_N39
\ALU|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~53_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[13]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux18~0_combout\)) ) + ( \MUX31_A|Mux18~0_combout\ ) + ( \ALU|Add0~50\ ))
-- \ALU|Add0~54\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[13]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux18~0_combout\)) ) + ( \MUX31_A|Mux18~0_combout\ ) + ( \ALU|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux18~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[13]~input_o\,
	cin => \ALU|Add0~50\,
	sumout => \ALU|Add0~53_sumout\,
	cout => \ALU|Add0~54\);

-- Location: LABCELL_X61_Y8_N24
\ALU|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux18~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[13]~12_combout\ & ((\MUX31_A|Mux18~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~53_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[13]~12_combout\ & (((\MUX31_A|Mux18~0_combout\)))) # (\MUX21_DATA|s[13]~12_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux18~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[13]~12_combout\) # 
-- (((!\MUX31_A|Mux18~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~57_sumout\ & ((!\ALU_DECOD|F\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101000111110011111000101101010101111011101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[13]~12_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~57_sumout\,
	datad => \MUX31_A|ALT_INV_Mux18~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~53_sumout\,
	combout => \ALU|Mux18~0_combout\);

-- Location: LABCELL_X62_Y8_N9
\MUX21_DATA|s[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[14]~13_combout\ = (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[14]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[14]~input_o\,
	combout => \MUX21_DATA|s[14]~13_combout\);

-- Location: LABCELL_X63_Y8_N42
\ALU|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~57_sumout\ = SUM(( \MUX31_A|Mux17~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[14]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux17~0_combout\)) ) + ( \ALU|Add0~54\ ))
-- \ALU|Add0~58\ = CARRY(( \MUX31_A|Mux17~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[14]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux17~0_combout\)) ) + ( \ALU|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[14]~input_o\,
	cin => \ALU|Add0~54\,
	sumout => \ALU|Add0~57_sumout\,
	cout => \ALU|Add0~58\);

-- Location: LABCELL_X61_Y8_N30
\ALU|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux17~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[14]~13_combout\ & ((\MUX31_A|Mux17~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~57_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[14]~13_combout\ & (((\MUX31_A|Mux17~0_combout\)))) # (\MUX21_DATA|s[14]~13_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux17~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[14]~13_combout\) # 
-- (((!\MUX31_A|Mux17~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~61_sumout\ & ((!\ALU_DECOD|F\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101000111110011111000101101010101111011101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[14]~13_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~61_sumout\,
	datad => \MUX31_A|ALT_INV_Mux17~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~57_sumout\,
	combout => \ALU|Mux17~0_combout\);

-- Location: LABCELL_X62_Y8_N21
\MUX21_DATA|s[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[15]~14_combout\ = ( \MUX31_B|Mux16~0_combout\ & ( (\SIGN_EXTENDED[15]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux16~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[15]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux16~0_combout\,
	combout => \MUX21_DATA|s[15]~14_combout\);

-- Location: LABCELL_X63_Y8_N45
\ALU|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~61_sumout\ = SUM(( \MUX31_A|Mux16~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[15]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux16~0_combout\)) ) + ( \ALU|Add0~58\ ))
-- \ALU|Add0~62\ = CARRY(( \MUX31_A|Mux16~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[15]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux16~0_combout\)) ) + ( \ALU|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux16~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[15]~input_o\,
	cin => \ALU|Add0~58\,
	sumout => \ALU|Add0~61_sumout\,
	cout => \ALU|Add0~62\);

-- Location: LABCELL_X61_Y8_N51
\ALU|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux16~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[15]~14_combout\ & ((\MUX31_A|Mux16~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~61_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[15]~14_combout\ & (((\MUX31_A|Mux16~0_combout\)))) # (\MUX21_DATA|s[15]~14_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux16~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[15]~14_combout\) # 
-- (((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux16~0_combout\))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~65_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001101010101110011111000100001000111111011101000101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX21_DATA|ALT_INV_s[15]~14_combout\,
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~65_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux16~0_combout\,
	datag => \ALU|ALT_INV_Add0~61_sumout\,
	combout => \ALU|Mux16~0_combout\);

-- Location: LABCELL_X62_Y8_N18
\MUX21_DATA|s[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[16]~15_combout\ = ( \MUX31_B|Mux15~0_combout\ & ( (\SIGN_EXTENDED[16]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux15~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[16]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux15~0_combout\,
	combout => \MUX21_DATA|s[16]~15_combout\);

-- Location: LABCELL_X63_Y8_N48
\ALU|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~65_sumout\ = SUM(( \MUX31_A|Mux15~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[16]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux15~0_combout\)) ) + ( \ALU|Add0~62\ ))
-- \ALU|Add0~66\ = CARRY(( \MUX31_A|Mux15~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[16]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux15~0_combout\)) ) + ( \ALU|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux15~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[16]~input_o\,
	cin => \ALU|Add0~62\,
	sumout => \ALU|Add0~65_sumout\,
	cout => \ALU|Add0~66\);

-- Location: LABCELL_X63_Y8_N15
\ALU|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux15~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux15~0_combout\ & ((\MUX21_DATA|s[16]~15_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~65_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX31_A|Mux15~0_combout\ & (((\MUX21_DATA|s[16]~15_combout\)))) # (\MUX31_A|Mux15~0_combout\ & (((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[16]~15_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[16]~15_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux15~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~69_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011111111110000101001110111010011101000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX31_A|ALT_INV_Mux15~0_combout\,
	datac => \ALU|ALT_INV_Add1~69_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[16]~15_combout\,
	datag => \ALU|ALT_INV_Add0~65_sumout\,
	combout => \ALU|Mux15~0_combout\);

-- Location: LABCELL_X62_Y8_N12
\MUX21_DATA|s[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[17]~16_combout\ = ( \SIGN_EXTENDED[17]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux14~0_combout\) ) ) # ( !\SIGN_EXTENDED[17]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux14~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[17]~input_o\,
	combout => \MUX21_DATA|s[17]~16_combout\);

-- Location: LABCELL_X63_Y8_N51
\ALU|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~69_sumout\ = SUM(( \MUX31_A|Mux14~0_combout\ ) + ( (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[17]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux14~0_combout\))) ) + ( \ALU|Add0~66\ ))
-- \ALU|Add0~70\ = CARRY(( \MUX31_A|Mux14~0_combout\ ) + ( (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[17]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux14~0_combout\))) ) + ( \ALU|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001011100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SIGN_EXTENDED[17]~input_o\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux14~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux14~0_combout\,
	cin => \ALU|Add0~66\,
	sumout => \ALU|Add0~69_sumout\,
	cout => \ALU|Add0~70\);

-- Location: LABCELL_X61_Y8_N54
\ALU|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux14~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[17]~16_combout\ & ((\MUX31_A|Mux14~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~69_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[17]~16_combout\ & (((\MUX31_A|Mux14~0_combout\)))) # (\MUX21_DATA|s[17]~16_combout\ & (((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux14~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[17]~16_combout\) # 
-- ((!\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux14~0_combout\)))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~73_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011111011100000101001110111010011101100110000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX21_DATA|ALT_INV_s[17]~16_combout\,
	datac => \ALU|ALT_INV_Add1~73_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux14~0_combout\,
	datag => \ALU|ALT_INV_Add0~69_sumout\,
	combout => \ALU|Mux14~0_combout\);

-- Location: LABCELL_X62_Y8_N24
\MUX21_DATA|s[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[18]~17_combout\ = ( \ALU_SRC~input_o\ & ( \MUX31_B|Mux13~0_combout\ ) ) # ( !\ALU_SRC~input_o\ & ( \SIGN_EXTENDED[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SIGN_EXTENDED[18]~input_o\,
	datac => \MUX31_B|ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_ALU_SRC~input_o\,
	combout => \MUX21_DATA|s[18]~17_combout\);

-- Location: LABCELL_X63_Y8_N54
\ALU|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~73_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[18]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux13~0_combout\)) ) + ( \MUX31_A|Mux13~0_combout\ ) + ( \ALU|Add0~70\ ))
-- \ALU|Add0~74\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[18]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux13~0_combout\)) ) + ( \MUX31_A|Mux13~0_combout\ ) + ( \ALU|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[18]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux13~0_combout\,
	cin => \ALU|Add0~70\,
	sumout => \ALU|Add0~73_sumout\,
	cout => \ALU|Add0~74\);

-- Location: LABCELL_X61_Y8_N39
\ALU|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux13~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX31_A|Mux13~0_combout\ & \MUX21_DATA|s[18]~17_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~73_sumout\)))) # (\ALU_DECOD|F\(0) & (((!\MUX31_A|Mux13~0_combout\ 
-- & ((\MUX21_DATA|s[18]~17_combout\))) # (\MUX31_A|Mux13~0_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[18]~17_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[18]~17_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux13~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~77_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101100111001010111110011101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~77_sumout\,
	datad => \MUX31_A|ALT_INV_Mux13~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[18]~17_combout\,
	datag => \ALU|ALT_INV_Add0~73_sumout\,
	combout => \ALU|Mux13~0_combout\);

-- Location: MLABCELL_X65_Y8_N42
\MUX21_DATA|s[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[19]~18_combout\ = ( \MUX31_B|Mux12~0_combout\ & ( (\ALU_SRC~input_o\) # (\SIGN_EXTENDED[19]~input_o\) ) ) # ( !\MUX31_B|Mux12~0_combout\ & ( (\SIGN_EXTENDED[19]~input_o\ & !\ALU_SRC~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SIGN_EXTENDED[19]~input_o\,
	datac => \ALT_INV_ALU_SRC~input_o\,
	datae => \MUX31_B|ALT_INV_Mux12~0_combout\,
	combout => \MUX21_DATA|s[19]~18_combout\);

-- Location: LABCELL_X63_Y8_N57
\ALU|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~77_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[19]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux12~0_combout\)) ) + ( \MUX31_A|Mux12~0_combout\ ) + ( \ALU|Add0~74\ ))
-- \ALU|Add0~78\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[19]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux12~0_combout\)) ) + ( \MUX31_A|Mux12~0_combout\ ) + ( \ALU|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[19]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux12~0_combout\,
	cin => \ALU|Add0~74\,
	sumout => \ALU|Add0~77_sumout\,
	cout => \ALU|Add0~78\);

-- Location: MLABCELL_X65_Y8_N24
\ALU|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux12~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[19]~18_combout\ & ((\MUX31_A|Mux12~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~77_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[19]~18_combout\ & (((\MUX31_A|Mux12~0_combout\)))) # (\MUX21_DATA|s[19]~18_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux12~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[19]~18_combout\) # 
-- (((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux12~0_combout\))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~81_sumout\ & (!\ALU_DECOD|F\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011101011111000100000100111111011101000110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \MUX21_DATA|ALT_INV_s[19]~18_combout\,
	datac => \ALU|ALT_INV_Add1~81_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(0),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux12~0_combout\,
	datag => \ALU|ALT_INV_Add0~77_sumout\,
	combout => \ALU|Mux12~0_combout\);

-- Location: MLABCELL_X65_Y7_N51
\MUX21_DATA|s[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[20]~19_combout\ = ( \ALU_SRC~input_o\ & ( \SIGN_EXTENDED[20]~input_o\ & ( \MUX31_B|Mux11~0_combout\ ) ) ) # ( !\ALU_SRC~input_o\ & ( \SIGN_EXTENDED[20]~input_o\ ) ) # ( \ALU_SRC~input_o\ & ( !\SIGN_EXTENDED[20]~input_o\ & ( 
-- \MUX31_B|Mux11~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_ALU_SRC~input_o\,
	dataf => \ALT_INV_SIGN_EXTENDED[20]~input_o\,
	combout => \MUX21_DATA|s[20]~19_combout\);

-- Location: LABCELL_X63_Y7_N0
\ALU|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~81_sumout\ = SUM(( \MUX31_A|Mux11~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[20]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux11~0_combout\)) ) + ( \ALU|Add0~78\ ))
-- \ALU|Add0~82\ = CARRY(( \MUX31_A|Mux11~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[20]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux11~0_combout\)) ) + ( \ALU|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux11~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[20]~input_o\,
	cin => \ALU|Add0~78\,
	sumout => \ALU|Add0~81_sumout\,
	cout => \ALU|Add0~82\);

-- Location: MLABCELL_X65_Y7_N18
\ALU|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux11~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX31_A|Mux11~0_combout\ & \MUX21_DATA|s[20]~19_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~81_sumout\)))) # (\ALU_DECOD|F\(0) & (((!\MUX31_A|Mux11~0_combout\ 
-- & ((\MUX21_DATA|s[20]~19_combout\))) # (\MUX31_A|Mux11~0_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[20]~19_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[20]~19_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux11~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101100111001010111110011101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~85_sumout\,
	datad => \MUX31_A|ALT_INV_Mux11~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[20]~19_combout\,
	datag => \ALU|ALT_INV_Add0~81_sumout\,
	combout => \ALU|Mux11~0_combout\);

-- Location: MLABCELL_X65_Y7_N9
\MUX21_DATA|s[21]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[21]~20_combout\ = ( \MUX31_B|Mux10~0_combout\ & ( (\SIGN_EXTENDED[21]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux10~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[21]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux10~0_combout\,
	combout => \MUX21_DATA|s[21]~20_combout\);

-- Location: LABCELL_X63_Y7_N3
\ALU|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~85_sumout\ = SUM(( \MUX31_A|Mux10~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[21]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux10~0_combout\)) ) + ( \ALU|Add0~82\ ))
-- \ALU|Add0~86\ = CARRY(( \MUX31_A|Mux10~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[21]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux10~0_combout\)) ) + ( \ALU|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[21]~input_o\,
	cin => \ALU|Add0~82\,
	sumout => \ALU|Add0~85_sumout\,
	cout => \ALU|Add0~86\);

-- Location: MLABCELL_X65_Y7_N12
\ALU|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux10~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux10~0_combout\ & ((\MUX21_DATA|s[21]~20_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~85_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX31_A|Mux10~0_combout\ & (((\MUX21_DATA|s[21]~20_combout\)))) # (\MUX31_A|Mux10~0_combout\ & (((!\MUX21_DATA|s[21]~20_combout\) # (!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[21]~20_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux10~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~89_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000101110111111111111000100000011011010011100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX31_A|ALT_INV_Mux10~0_combout\,
	datac => \ALU|ALT_INV_Add1~89_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[21]~20_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(1),
	datag => \ALU|ALT_INV_Add0~85_sumout\,
	combout => \ALU|Mux10~0_combout\);

-- Location: MLABCELL_X65_Y7_N24
\MUX21_DATA|s[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[22]~21_combout\ = ( \SIGN_EXTENDED[22]~input_o\ & ( \MUX31_B|Mux9~0_combout\ ) ) # ( !\SIGN_EXTENDED[22]~input_o\ & ( \MUX31_B|Mux9~0_combout\ & ( \ALU_SRC~input_o\ ) ) ) # ( \SIGN_EXTENDED[22]~input_o\ & ( !\MUX31_B|Mux9~0_combout\ & ( 
-- !\ALU_SRC~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_SRC~input_o\,
	datae => \ALT_INV_SIGN_EXTENDED[22]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux9~0_combout\,
	combout => \MUX21_DATA|s[22]~21_combout\);

-- Location: LABCELL_X63_Y7_N6
\ALU|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~89_sumout\ = SUM(( \MUX31_A|Mux9~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[22]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux9~0_combout\)) ) + ( \ALU|Add0~86\ ))
-- \ALU|Add0~90\ = CARRY(( \MUX31_A|Mux9~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[22]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux9~0_combout\)) ) + ( \ALU|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux9~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[22]~input_o\,
	cin => \ALU|Add0~86\,
	sumout => \ALU|Add0~89_sumout\,
	cout => \ALU|Add0~90\);

-- Location: MLABCELL_X65_Y7_N42
\ALU|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux9~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX31_A|Mux9~0_combout\ & ((\MUX21_DATA|s[22]~21_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~89_sumout\)))))) # (\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux9~0_combout\ 
-- & (((\MUX21_DATA|s[22]~21_combout\)))) # (\MUX31_A|Mux9~0_combout\ & (((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[22]~21_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[22]~21_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux9~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~93_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011111111110000101001110111010011101000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX31_A|ALT_INV_Mux9~0_combout\,
	datac => \ALU|ALT_INV_Add1~93_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[22]~21_combout\,
	datag => \ALU|ALT_INV_Add0~89_sumout\,
	combout => \ALU|Mux9~0_combout\);

-- Location: LABCELL_X64_Y7_N54
\MUX21_DATA|s[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[23]~22_combout\ = ( \SIGN_EXTENDED[23]~input_o\ & ( (!\ALU_SRC~input_o\) # (\MUX31_B|Mux8~0_combout\) ) ) # ( !\SIGN_EXTENDED[23]~input_o\ & ( (\ALU_SRC~input_o\ & \MUX31_B|Mux8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_SIGN_EXTENDED[23]~input_o\,
	combout => \MUX21_DATA|s[23]~22_combout\);

-- Location: LABCELL_X63_Y7_N9
\ALU|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~93_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[23]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux8~0_combout\)) ) + ( \MUX31_A|Mux8~0_combout\ ) + ( \ALU|Add0~90\ ))
-- \ALU|Add0~94\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[23]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux8~0_combout\)) ) + ( \MUX31_A|Mux8~0_combout\ ) + ( \ALU|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux8~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[23]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux8~0_combout\,
	cin => \ALU|Add0~90\,
	sumout => \ALU|Add0~93_sumout\,
	cout => \ALU|Add0~94\);

-- Location: LABCELL_X64_Y7_N24
\ALU|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux8~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[23]~22_combout\ & \MUX31_A|Mux8~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~93_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[23]~22_combout\ & ((\MUX31_A|Mux8~0_combout\))) # (\MUX21_DATA|s[23]~22_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux8~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[23]~22_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux8~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111101011101000110000110111101011101010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \ALU_DECOD|ALT_INV_F\(0),
	datac => \ALU|ALT_INV_Add1~97_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[23]~22_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux8~0_combout\,
	datag => \ALU|ALT_INV_Add0~93_sumout\,
	combout => \ALU|Mux8~0_combout\);

-- Location: LABCELL_X64_Y7_N48
\MUX21_DATA|s[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[24]~23_combout\ = ( \MUX31_B|Mux7~0_combout\ & ( \SIGN_EXTENDED[24]~input_o\ ) ) # ( !\MUX31_B|Mux7~0_combout\ & ( \SIGN_EXTENDED[24]~input_o\ & ( !\ALU_SRC~input_o\ ) ) ) # ( \MUX31_B|Mux7~0_combout\ & ( !\SIGN_EXTENDED[24]~input_o\ & ( 
-- \ALU_SRC~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datae => \MUX31_B|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[24]~input_o\,
	combout => \MUX21_DATA|s[24]~23_combout\);

-- Location: LABCELL_X63_Y7_N12
\ALU|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~97_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[24]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux7~0_combout\)) ) + ( \MUX31_A|Mux7~0_combout\ ) + ( \ALU|Add0~94\ ))
-- \ALU|Add0~98\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[24]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux7~0_combout\)) ) + ( \MUX31_A|Mux7~0_combout\ ) + ( \ALU|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[24]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux7~0_combout\,
	cin => \ALU|Add0~94\,
	sumout => \ALU|Add0~97_sumout\,
	cout => \ALU|Add0~98\);

-- Location: LABCELL_X64_Y7_N30
\ALU|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux7~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[24]~23_combout\ & ((\MUX31_A|Mux7~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~97_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[24]~23_combout\ & (((\MUX31_A|Mux7~0_combout\)))) # (\MUX21_DATA|s[24]~23_combout\ & ((!\ALU_DECOD|F\(1)) # ((!\MUX31_A|Mux7~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[24]~23_combout\) # 
-- (((!\MUX31_A|Mux7~0_combout\ & !\ALU_DECOD|F\(0)))))) # (\ALU_DECOD|F\(1) & (((\ALU|Add1~101_sumout\ & ((!\ALU_DECOD|F\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100100111101011111000110100110011111011101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \MUX21_DATA|ALT_INV_s[24]~23_combout\,
	datac => \ALU|ALT_INV_Add1~101_sumout\,
	datad => \MUX31_A|ALT_INV_Mux7~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(0),
	datag => \ALU|ALT_INV_Add0~97_sumout\,
	combout => \ALU|Mux7~0_combout\);

-- Location: LABCELL_X66_Y4_N30
\MUX21_DATA|s[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[25]~24_combout\ = ( \ALU_SRC~input_o\ & ( \MUX31_B|Mux6~0_combout\ ) ) # ( !\ALU_SRC~input_o\ & ( \SIGN_EXTENDED[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SIGN_EXTENDED[25]~input_o\,
	datad => \MUX31_B|ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_ALU_SRC~input_o\,
	combout => \MUX21_DATA|s[25]~24_combout\);

-- Location: LABCELL_X63_Y7_N15
\ALU|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~101_sumout\ = SUM(( (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[25]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux6~0_combout\))) ) + ( \MUX31_A|Mux6~0_combout\ ) + ( \ALU|Add0~98\ ))
-- \ALU|Add0~102\ = CARRY(( (!\ALU_SRC~input_o\ & (\SIGN_EXTENDED[25]~input_o\)) # (\ALU_SRC~input_o\ & ((\MUX31_B|Mux6~0_combout\))) ) + ( \MUX31_A|Mux6~0_combout\ ) + ( \ALU|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SIGN_EXTENDED[25]~input_o\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux6~0_combout\,
	dataf => \MUX31_A|ALT_INV_Mux6~0_combout\,
	cin => \ALU|Add0~98\,
	sumout => \ALU|Add0~101_sumout\,
	cout => \ALU|Add0~102\);

-- Location: LABCELL_X66_Y4_N48
\ALU|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux6~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[25]~24_combout\ & \MUX31_A|Mux6~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~101_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[25]~24_combout\ & ((\MUX31_A|Mux6~0_combout\))) # (\MUX21_DATA|s[25]~24_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux6~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[25]~24_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux6~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101000101001010111110011101100111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~105_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[25]~24_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux6~0_combout\,
	datag => \ALU|ALT_INV_Add0~101_sumout\,
	combout => \ALU|Mux6~0_combout\);

-- Location: MLABCELL_X65_Y7_N54
\MUX21_DATA|s[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[26]~25_combout\ = (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[26]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datab => \MUX31_B|ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_SIGN_EXTENDED[26]~input_o\,
	combout => \MUX21_DATA|s[26]~25_combout\);

-- Location: LABCELL_X63_Y7_N18
\ALU|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~105_sumout\ = SUM(( \MUX31_A|Mux5~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[26]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux5~0_combout\)) ) + ( \ALU|Add0~102\ ))
-- \ALU|Add0~106\ = CARRY(( \MUX31_A|Mux5~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[26]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux5~0_combout\)) ) + ( \ALU|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux5~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[26]~input_o\,
	cin => \ALU|Add0~102\,
	sumout => \ALU|Add0~105_sumout\,
	cout => \ALU|Add0~106\);

-- Location: MLABCELL_X65_Y7_N0
\ALU|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux5~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[26]~25_combout\ & \MUX31_A|Mux5~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~105_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[26]~25_combout\ & ((\MUX31_A|Mux5~0_combout\))) # (\MUX21_DATA|s[26]~25_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux5~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[26]~25_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux5~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~109_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001001010111110011101000101001010111110011101100111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \ALU_DECOD|ALT_INV_F\(1),
	datac => \ALU|ALT_INV_Add1~109_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[26]~25_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux5~0_combout\,
	datag => \ALU|ALT_INV_Add0~105_sumout\,
	combout => \ALU|Mux5~0_combout\);

-- Location: LABCELL_X63_Y7_N39
\MUX21_DATA|s[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[27]~26_combout\ = ( \SIGN_EXTENDED[27]~input_o\ & ( \MUX31_B|Mux4~0_combout\ ) ) # ( !\SIGN_EXTENDED[27]~input_o\ & ( \MUX31_B|Mux4~0_combout\ & ( \ALU_SRC~input_o\ ) ) ) # ( \SIGN_EXTENDED[27]~input_o\ & ( !\MUX31_B|Mux4~0_combout\ & ( 
-- !\ALU_SRC~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_SRC~input_o\,
	datae => \ALT_INV_SIGN_EXTENDED[27]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux4~0_combout\,
	combout => \MUX21_DATA|s[27]~26_combout\);

-- Location: LABCELL_X63_Y7_N21
\ALU|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~109_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[27]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux4~0_combout\)) ) + ( \MUX31_A|Mux4~0_combout\ ) + ( \ALU|Add0~106\ ))
-- \ALU|Add0~110\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[27]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux4~0_combout\)) ) + ( \MUX31_A|Mux4~0_combout\ ) + ( \ALU|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[27]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux4~0_combout\,
	cin => \ALU|Add0~106\,
	sumout => \ALU|Add0~109_sumout\,
	cout => \ALU|Add0~110\);

-- Location: LABCELL_X64_Y7_N0
\ALU|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux4~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[27]~26_combout\ & \MUX31_A|Mux4~0_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~109_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[27]~26_combout\ & ((\MUX31_A|Mux4~0_combout\))) # (\MUX21_DATA|s[27]~26_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux4~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[27]~26_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux4~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~113_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111101011101000110000110111101011101010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \ALU_DECOD|ALT_INV_F\(0),
	datac => \ALU|ALT_INV_Add1~113_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[27]~26_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux4~0_combout\,
	datag => \ALU|ALT_INV_Add0~109_sumout\,
	combout => \ALU|Mux4~0_combout\);

-- Location: MLABCELL_X65_Y7_N57
\MUX21_DATA|s[28]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[28]~27_combout\ = ( \MUX31_B|Mux3~0_combout\ & ( (\SIGN_EXTENDED[28]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux3~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[28]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux3~0_combout\,
	combout => \MUX21_DATA|s[28]~27_combout\);

-- Location: LABCELL_X63_Y7_N24
\ALU|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~113_sumout\ = SUM(( \MUX31_A|Mux3~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[28]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux3~0_combout\)) ) + ( \ALU|Add0~110\ ))
-- \ALU|Add0~114\ = CARRY(( \MUX31_A|Mux3~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[28]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux3~0_combout\)) ) + ( \ALU|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux3~0_combout\,
	datad => \MUX31_A|ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[28]~input_o\,
	cin => \ALU|Add0~110\,
	sumout => \ALU|Add0~113_sumout\,
	cout => \ALU|Add0~114\);

-- Location: MLABCELL_X65_Y7_N30
\ALU|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[28]~27_combout\ & ((\MUX31_A|Mux3~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~113_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[28]~27_combout\ & (((\MUX31_A|Mux3~0_combout\)))) # (\MUX21_DATA|s[28]~27_combout\ & (((!\MUX31_A|Mux3~0_combout\) # (!\ALU_DECOD|F\(1))))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[28]~27_combout\) # 
-- ((!\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux3~0_combout\)))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~117_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000101110111111011101100110000011011010011100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX21_DATA|ALT_INV_s[28]~27_combout\,
	datac => \ALU|ALT_INV_Add1~117_sumout\,
	datad => \MUX31_A|ALT_INV_Mux3~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \ALU_DECOD|ALT_INV_F\(1),
	datag => \ALU|ALT_INV_Add0~113_sumout\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LABCELL_X63_Y7_N54
\MUX21_DATA|s[29]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[29]~28_combout\ = ( \MUX31_B|Mux2~0_combout\ & ( (\SIGN_EXTENDED[29]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux2~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \ALT_INV_SIGN_EXTENDED[29]~input_o\,
	datae => \MUX31_B|ALT_INV_Mux2~0_combout\,
	combout => \MUX21_DATA|s[29]~28_combout\);

-- Location: LABCELL_X63_Y7_N27
\ALU|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~117_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[29]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux2~0_combout\)) ) + ( \MUX31_A|Mux2~4_combout\ ) + ( \ALU|Add0~114\ ))
-- \ALU|Add0~118\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[29]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux2~0_combout\)) ) + ( \MUX31_A|Mux2~4_combout\ ) + ( \ALU|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_A|ALT_INV_Mux2~4_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[29]~input_o\,
	cin => \ALU|Add0~114\,
	sumout => \ALU|Add0~117_sumout\,
	cout => \ALU|Add0~118\);

-- Location: LABCELL_X64_Y7_N6
\ALU|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX21_DATA|s[29]~28_combout\ & \MUX31_A|Mux2~4_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~117_sumout\)))) # (\ALU_DECOD|F\(0) & 
-- (((!\MUX21_DATA|s[29]~28_combout\ & ((\MUX31_A|Mux2~4_combout\))) # (\MUX21_DATA|s[29]~28_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux2~4_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[29]~28_combout\) # 
-- ((!\ALU_DECOD|F\(0) & !\MUX31_A|Mux2~4_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~121_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111101011101000110000110111101011101010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \ALU_DECOD|ALT_INV_F\(0),
	datac => \ALU|ALT_INV_Add1~121_sumout\,
	datad => \MUX21_DATA|ALT_INV_s[29]~28_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux2~4_combout\,
	datag => \ALU|ALT_INV_Add0~117_sumout\,
	combout => \ALU|Mux2~0_combout\);

-- Location: MLABCELL_X65_Y7_N6
\MUX21_DATA|s[30]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[30]~29_combout\ = ( \MUX31_B|Mux1~0_combout\ & ( (\SIGN_EXTENDED[30]~input_o\) # (\ALU_SRC~input_o\) ) ) # ( !\MUX31_B|Mux1~0_combout\ & ( (!\ALU_SRC~input_o\ & \SIGN_EXTENDED[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_SRC~input_o\,
	datad => \ALT_INV_SIGN_EXTENDED[30]~input_o\,
	dataf => \MUX31_B|ALT_INV_Mux1~0_combout\,
	combout => \MUX21_DATA|s[30]~29_combout\);

-- Location: LABCELL_X63_Y7_N30
\ALU|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~121_sumout\ = SUM(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[30]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux1~0_combout\)) ) + ( \MUX31_A|Mux1~0_combout\ ) + ( \ALU|Add0~118\ ))
-- \ALU|Add0~122\ = CARRY(( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[30]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux1~0_combout\)) ) + ( \MUX31_A|Mux1~0_combout\ ) + ( \ALU|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_B|ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_SIGN_EXTENDED[30]~input_o\,
	dataf => \MUX31_A|ALT_INV_Mux1~0_combout\,
	cin => \ALU|Add0~118\,
	sumout => \ALU|Add0~121_sumout\,
	cout => \ALU|Add0~122\);

-- Location: MLABCELL_X65_Y7_N36
\ALU|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (\MUX21_DATA|s[30]~29_combout\ & ((\MUX31_A|Mux1~0_combout\)))) # (\ALU_DECOD|F\(1) & (((\ALU|Add0~121_sumout\)))))) # (\ALU_DECOD|F\(0) & 
-- ((!\MUX21_DATA|s[30]~29_combout\ & (((\MUX31_A|Mux1~0_combout\)))) # (\MUX21_DATA|s[30]~29_combout\ & (((!\ALU_DECOD|F\(1)) # (!\MUX31_A|Mux1~0_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & ((!\MUX21_DATA|s[30]~29_combout\) # 
-- ((!\ALU_DECOD|F\(0) & ((!\MUX31_A|Mux1~0_combout\)))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (((\ALU|Add1~125_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100011011111011100000101001110111010011101100110000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(0),
	datab => \MUX21_DATA|ALT_INV_s[30]~29_combout\,
	datac => \ALU|ALT_INV_Add1~125_sumout\,
	datad => \ALU_DECOD|ALT_INV_F\(1),
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX31_A|ALT_INV_Mux1~0_combout\,
	datag => \ALU|ALT_INV_Add0~121_sumout\,
	combout => \ALU|Mux1~0_combout\);

-- Location: LABCELL_X64_Y7_N42
\MUX21_DATA|s[31]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX21_DATA|s[31]~30_combout\ = ( \MUX31_B|Mux0~0_combout\ & ( \SIGN_EXTENDED[31]~input_o\ ) ) # ( !\MUX31_B|Mux0~0_combout\ & ( \SIGN_EXTENDED[31]~input_o\ & ( !\ALU_SRC~input_o\ ) ) ) # ( \MUX31_B|Mux0~0_combout\ & ( !\SIGN_EXTENDED[31]~input_o\ & ( 
-- \ALU_SRC~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_SRC~input_o\,
	datae => \MUX31_B|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[31]~input_o\,
	combout => \MUX21_DATA|s[31]~30_combout\);

-- Location: LABCELL_X63_Y7_N33
\ALU|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Add0~125_sumout\ = SUM(( \MUX31_A|Mux0~0_combout\ ) + ( (!\ALU_SRC~input_o\ & ((\SIGN_EXTENDED[31]~input_o\))) # (\ALU_SRC~input_o\ & (\MUX31_B|Mux0~0_combout\)) ) + ( \ALU|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX31_B|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_ALU_SRC~input_o\,
	datac => \MUX31_A|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_SIGN_EXTENDED[31]~input_o\,
	cin => \ALU|Add0~122\,
	sumout => \ALU|Add0~125_sumout\);

-- Location: LABCELL_X64_Y7_N36
\ALU|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = ( !\ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(0) & ((!\ALU_DECOD|F\(1) & (((\MUX31_A|Mux0~0_combout\ & \MUX21_DATA|s[31]~30_combout\)))) # (\ALU_DECOD|F\(1) & (\ALU|Add0~125_sumout\)))) # (\ALU_DECOD|F\(0) & (((!\MUX31_A|Mux0~0_combout\ & 
-- ((\MUX21_DATA|s[31]~30_combout\))) # (\MUX31_A|Mux0~0_combout\ & ((!\ALU_DECOD|F\(1)) # (!\MUX21_DATA|s[31]~30_combout\)))))) ) ) # ( \ALU_DECOD|F\(2) & ( (!\ALU_DECOD|F\(1) & (((!\MUX21_DATA|s[31]~30_combout\) # ((!\ALU_DECOD|F\(0) & 
-- !\MUX31_A|Mux0~0_combout\))))) # (\ALU_DECOD|F\(1) & (!\ALU_DECOD|F\(0) & (\ALU|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111101011101010111000110111101011101000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_DECOD|ALT_INV_F\(1),
	datab => \ALU_DECOD|ALT_INV_F\(0),
	datac => \ALU|ALT_INV_Add1~5_sumout\,
	datad => \MUX31_A|ALT_INV_Mux0~0_combout\,
	datae => \ALU_DECOD|ALT_INV_F\(2),
	dataf => \MUX21_DATA|ALT_INV_s[31]~30_combout\,
	datag => \ALU|ALT_INV_Add0~125_sumout\,
	combout => \ALU|Mux0~0_combout\);

-- Location: IOIBUF_X12_Y81_N52
\FUNCT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(3),
	o => \FUNCT[3]~input_o\);

-- Location: IOIBUF_X22_Y81_N1
\FUNCT[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(4),
	o => \FUNCT[4]~input_o\);

-- Location: IOIBUF_X14_Y81_N35
\FUNCT[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FUNCT(5),
	o => \FUNCT[5]~input_o\);

-- Location: MLABCELL_X47_Y13_N0
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


