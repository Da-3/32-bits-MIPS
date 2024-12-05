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

-- DATE "11/15/2023 15:41:40"

-- 
-- Device: Altera 5CSEMA6F31C6 Package FBGA896
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

ENTITY 	ALU_MIPS1 IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	f : IN std_logic_vector(2 DOWNTO 0);
	s : OUT std_logic_vector(31 DOWNTO 0);
	z : OUT std_logic
	);
END ALU_MIPS1;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[16]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[17]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[18]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[19]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[20]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[21]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[22]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[23]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[24]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[25]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[27]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[28]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[29]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[30]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[31]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_MIPS1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \f[1]~input_o\ : std_logic;
SIGNAL \f[0]~input_o\ : std_logic;
SIGNAL \f[2]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~127\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_f[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_f[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_f[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_f <= f;
s <= ww_s;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_f[0]~input_o\ <= NOT \f[0]~input_o\;
\ALT_INV_f[2]~input_o\ <= NOT \f[2]~input_o\;
\ALT_INV_f[1]~input_o\ <= NOT \f[1]~input_o\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;

-- Location: IOOBUF_X10_Y0_N42
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X10_Y0_N93
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~2_combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X54_Y0_N53
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~2_combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X60_Y0_N2
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~2_combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X66_Y0_N93
\s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~2_combout\,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X52_Y0_N19
\s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X52_Y0_N36
\s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~2_combout\,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X8_Y0_N2
\s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~2_combout\,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X14_Y0_N36
\s[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~2_combout\,
	devoe => ww_devoe,
	o => ww_s(8));

-- Location: IOOBUF_X12_Y0_N53
\s[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~2_combout\,
	devoe => ww_devoe,
	o => ww_s(9));

-- Location: IOOBUF_X16_Y0_N19
\s[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~2_combout\,
	devoe => ww_devoe,
	o => ww_s(10));

-- Location: IOOBUF_X62_Y0_N53
\s[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~2_combout\,
	devoe => ww_devoe,
	o => ww_s(11));

-- Location: IOOBUF_X64_Y0_N53
\s[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~2_combout\,
	devoe => ww_devoe,
	o => ww_s(12));

-- Location: IOOBUF_X52_Y0_N53
\s[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~2_combout\,
	devoe => ww_devoe,
	o => ww_s(13));

-- Location: IOOBUF_X34_Y0_N93
\s[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~2_combout\,
	devoe => ww_devoe,
	o => ww_s(14));

-- Location: IOOBUF_X62_Y0_N19
\s[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~2_combout\,
	devoe => ww_devoe,
	o => ww_s(15));

-- Location: IOOBUF_X38_Y0_N53
\s[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~2_combout\,
	devoe => ww_devoe,
	o => ww_s(16));

-- Location: IOOBUF_X22_Y0_N2
\s[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~2_combout\,
	devoe => ww_devoe,
	o => ww_s(17));

-- Location: IOOBUF_X20_Y0_N36
\s[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~2_combout\,
	devoe => ww_devoe,
	o => ww_s(18));

-- Location: IOOBUF_X50_Y0_N59
\s[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_s(19));

-- Location: IOOBUF_X56_Y0_N2
\s[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_s(20));

-- Location: IOOBUF_X12_Y0_N19
\s[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_s(21));

-- Location: IOOBUF_X14_Y0_N19
\s[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => ww_s(22));

-- Location: IOOBUF_X20_Y0_N19
\s[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => ww_s(23));

-- Location: IOOBUF_X18_Y0_N42
\s[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => ww_s(24));

-- Location: IOOBUF_X22_Y0_N36
\s[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => ww_s(25));

-- Location: IOOBUF_X20_Y0_N2
\s[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_s(26));

-- Location: IOOBUF_X6_Y0_N2
\s[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => ww_s(27));

-- Location: IOOBUF_X18_Y0_N76
\s[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => ww_s(28));

-- Location: IOOBUF_X16_Y0_N53
\s[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_s(29));

-- Location: IOOBUF_X18_Y0_N59
\s[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_s(30));

-- Location: IOOBUF_X12_Y0_N2
\s[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => ww_s(31));

-- Location: IOOBUF_X14_Y0_N2
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~15_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOIBUF_X62_Y0_N1
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X27_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\A[0]~input_o\ $ (!\B[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\B[0]~input_o\) # (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: MLABCELL_X28_Y3_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X28_Y0_N35
\f[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(1),
	o => \f[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\f[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(0),
	o => \f[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\f[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(2),
	o => \f[2]~input_o\);

-- Location: LABCELL_X24_Y3_N30
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \f[2]~input_o\ & ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & !\f[1]~input_o\) ) ) ) # ( !\f[2]~input_o\ & ( \A[0]~input_o\ & ( (!\f[1]~input_o\ & (((\f[0]~input_o\) # (\B[0]~input_o\)))) # (\f[1]~input_o\ & (\Add0~1_sumout\)) ) ) ) # ( 
-- \f[2]~input_o\ & ( !\A[0]~input_o\ & ( (!\f[1]~input_o\ & ((!\B[0]~input_o\) # (!\f[0]~input_o\))) ) ) ) # ( !\f[2]~input_o\ & ( !\A[0]~input_o\ & ( (!\f[1]~input_o\ & (((\B[0]~input_o\ & \f[0]~input_o\)))) # (\f[1]~input_o\ & (\Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101111100001100000000110101111101011100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_f[0]~input_o\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: IOIBUF_X70_Y0_N35
\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X27_Y3_N3
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~10\ = CARRY(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~11\ = SHARE((\A[1]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X27_Y3_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\A[2]~input_o\ $ (\B[2]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\A[2]~input_o\ $ (\B[2]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((\A[2]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X27_Y3_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\A[3]~input_o\ $ (\B[3]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((\A[3]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X27_Y3_N12
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\A[4]~input_o\ $ (\B[4]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X27_Y3_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X27_Y3_N18
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((\A[6]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X27_Y3_N21
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\B[7]~input_o\ $ (\A[7]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\B[7]~input_o\ $ (\A[7]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X27_Y3_N24
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\A[8]~input_o\ $ (\B[8]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\A[8]~input_o\ $ (\B[8]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((\A[8]~input_o\ & !\B[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X27_Y3_N27
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\A[9]~input_o\ $ (\B[9]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\A[9]~input_o\ $ (\B[9]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((\A[9]~input_o\ & !\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X27_Y3_N30
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\A[10]~input_o\ $ (\B[10]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\A[10]~input_o\ $ (\B[10]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\A[10]~input_o\ & !\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X27_Y3_N33
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\B[11]~input_o\ $ (\A[11]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\B[11]~input_o\ $ (\A[11]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((!\B[11]~input_o\ & \A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X27_Y3_N36
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\A[12]~input_o\ $ (\B[12]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\A[12]~input_o\ $ (\B[12]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((\A[12]~input_o\ & !\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X27_Y3_N39
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((!\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X27_Y3_N42
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\A[14]~input_o\ $ (\B[14]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( !\A[14]~input_o\ $ (\B[14]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~63\ = SHARE((\A[14]~input_o\ & !\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\,
	shareout => \Add1~63\);

-- Location: LABCELL_X27_Y3_N45
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( !\A[15]~input_o\ $ (\B[15]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( !\A[15]~input_o\ $ (\B[15]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~67\ = SHARE((\A[15]~input_o\ & !\B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	cin => \Add1~62\,
	sharein => \Add1~63\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\,
	shareout => \Add1~67\);

-- Location: LABCELL_X27_Y3_N48
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( !\B[16]~input_o\ $ (\A[16]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( !\B[16]~input_o\ $ (\A[16]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~71\ = SHARE((!\B[16]~input_o\ & \A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	cin => \Add1~66\,
	sharein => \Add1~67\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\,
	shareout => \Add1~71\);

-- Location: LABCELL_X27_Y3_N51
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( !\B[17]~input_o\ $ (\A[17]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( !\B[17]~input_o\ $ (\A[17]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~75\ = SHARE((!\B[17]~input_o\ & \A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	cin => \Add1~70\,
	sharein => \Add1~71\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\,
	shareout => \Add1~75\);

-- Location: LABCELL_X27_Y3_N54
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( !\A[18]~input_o\ $ (\B[18]~input_o\) ) + ( \Add1~75\ ) + ( \Add1~74\ ))
-- \Add1~78\ = CARRY(( !\A[18]~input_o\ $ (\B[18]~input_o\) ) + ( \Add1~75\ ) + ( \Add1~74\ ))
-- \Add1~79\ = SHARE((\A[18]~input_o\ & !\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	cin => \Add1~74\,
	sharein => \Add1~75\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\,
	shareout => \Add1~79\);

-- Location: LABCELL_X27_Y3_N57
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( !\B[19]~input_o\ $ (\A[19]~input_o\) ) + ( \Add1~79\ ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( !\B[19]~input_o\ $ (\A[19]~input_o\) ) + ( \Add1~79\ ) + ( \Add1~78\ ))
-- \Add1~83\ = SHARE((!\B[19]~input_o\ & \A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	cin => \Add1~78\,
	sharein => \Add1~79\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\,
	shareout => \Add1~83\);

-- Location: LABCELL_X27_Y2_N0
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( !\B[20]~input_o\ $ (\A[20]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( !\B[20]~input_o\ $ (\A[20]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~87\ = SHARE((!\B[20]~input_o\ & \A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	cin => \Add1~82\,
	sharein => \Add1~83\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\,
	shareout => \Add1~87\);

-- Location: LABCELL_X27_Y2_N3
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( !\A[21]~input_o\ $ (\B[21]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( !\A[21]~input_o\ $ (\B[21]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~91\ = SHARE((\A[21]~input_o\ & !\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	cin => \Add1~86\,
	sharein => \Add1~87\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\,
	shareout => \Add1~91\);

-- Location: LABCELL_X27_Y2_N6
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( !\A[22]~input_o\ $ (\B[22]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( !\A[22]~input_o\ $ (\B[22]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~95\ = SHARE((\A[22]~input_o\ & !\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	cin => \Add1~90\,
	sharein => \Add1~91\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\,
	shareout => \Add1~95\);

-- Location: LABCELL_X27_Y2_N9
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( !\A[23]~input_o\ $ (\B[23]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( !\A[23]~input_o\ $ (\B[23]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~99\ = SHARE((\A[23]~input_o\ & !\B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	cin => \Add1~94\,
	sharein => \Add1~95\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\,
	shareout => \Add1~99\);

-- Location: LABCELL_X27_Y2_N12
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( !\A[24]~input_o\ $ (\B[24]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( !\A[24]~input_o\ $ (\B[24]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~103\ = SHARE((\A[24]~input_o\ & !\B[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[24]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	cin => \Add1~98\,
	sharein => \Add1~99\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\,
	shareout => \Add1~103\);

-- Location: LABCELL_X27_Y2_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( !\A[25]~input_o\ $ (\B[25]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( !\A[25]~input_o\ $ (\B[25]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~107\ = SHARE((\A[25]~input_o\ & !\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	cin => \Add1~102\,
	sharein => \Add1~103\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\,
	shareout => \Add1~107\);

-- Location: LABCELL_X27_Y2_N18
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( !\A[26]~input_o\ $ (\B[26]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( !\A[26]~input_o\ $ (\B[26]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~111\ = SHARE((\A[26]~input_o\ & !\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	cin => \Add1~106\,
	sharein => \Add1~107\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\,
	shareout => \Add1~111\);

-- Location: LABCELL_X27_Y2_N21
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( !\B[27]~input_o\ $ (\A[27]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( !\B[27]~input_o\ $ (\A[27]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~115\ = SHARE((!\B[27]~input_o\ & \A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_A[27]~input_o\,
	cin => \Add1~110\,
	sharein => \Add1~111\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\,
	shareout => \Add1~115\);

-- Location: LABCELL_X27_Y2_N24
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( !\B[28]~input_o\ $ (\A[28]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( !\B[28]~input_o\ $ (\A[28]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~119\ = SHARE((!\B[28]~input_o\ & \A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	cin => \Add1~114\,
	sharein => \Add1~115\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\,
	shareout => \Add1~119\);

-- Location: LABCELL_X27_Y2_N27
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( !\B[29]~input_o\ $ (\A[29]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( !\B[29]~input_o\ $ (\A[29]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~123\ = SHARE((!\B[29]~input_o\ & \A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	cin => \Add1~118\,
	sharein => \Add1~119\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\,
	shareout => \Add1~123\);

-- Location: LABCELL_X27_Y2_N30
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( !\A[30]~input_o\ $ (\B[30]~input_o\) ) + ( \Add1~123\ ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( !\A[30]~input_o\ $ (\B[30]~input_o\) ) + ( \Add1~123\ ) + ( \Add1~122\ ))
-- \Add1~127\ = SHARE((\A[30]~input_o\ & !\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	cin => \Add1~122\,
	sharein => \Add1~123\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\,
	shareout => \Add1~127\);

-- Location: LABCELL_X27_Y2_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\B[31]~input_o\ $ (\A[31]~input_o\) ) + ( \Add1~127\ ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	cin => \Add1~126\,
	sharein => \Add1~127\,
	sumout => \Add1~5_sumout\);

-- Location: LABCELL_X24_Y3_N36
\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ( \f[2]~input_o\ & ( \f[1]~input_o\ & ( ((!\f[0]~input_o\ & (\Add1~1_sumout\)) # (\f[0]~input_o\ & ((\Add1~5_sumout\)))) # (\Mux31~0_combout\) ) ) ) # ( !\f[2]~input_o\ & ( \f[1]~input_o\ & ( \Mux31~0_combout\ ) ) ) # ( \f[2]~input_o\ 
-- & ( !\f[1]~input_o\ & ( \Mux31~0_combout\ ) ) ) # ( !\f[2]~input_o\ & ( !\f[1]~input_o\ & ( \Mux31~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	datab => \ALT_INV_Mux31~0_combout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_f[0]~input_o\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: MLABCELL_X25_Y3_N33
\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & \Add1~9_sumout\) ) ) # ( !\f[1]~input_o\ & ( (!\B[1]~input_o\) # ((!\f[0]~input_o\ & !\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: MLABCELL_X28_Y3_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X25_Y3_N30
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \A[1]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\B[1]~input_o\)) # (\f[1]~input_o\ & ((\Add0~5_sumout\))))) # (\f[0]~input_o\ & ((!\B[1]~input_o\) # ((!\f[1]~input_o\)))) ) ) # ( !\A[1]~input_o\ & ( (!\f[0]~input_o\ & 
-- (((\f[1]~input_o\ & \Add0~5_sumout\)))) # (\f[0]~input_o\ & (\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101101110100011111100111010001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X25_Y3_N39
\Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \f[2]~input_o\ & ( \Mux30~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_f[2]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: MLABCELL_X25_Y3_N45
\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & \Add1~13_sumout\) ) ) # ( !\f[1]~input_o\ & ( (!\B[2]~input_o\) # ((!\f[0]~input_o\ & !\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111000111110001111100000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: MLABCELL_X28_Y3_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X25_Y3_N42
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \B[2]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\A[2]~input_o\)) # (\f[1]~input_o\ & ((\Add0~9_sumout\))))) # (\f[0]~input_o\ & ((!\A[2]~input_o\) # ((!\f[1]~input_o\)))) ) ) # ( !\B[2]~input_o\ & ( (!\f[0]~input_o\ & 
-- (((\f[1]~input_o\ & \Add0~9_sumout\)))) # (\f[0]~input_o\ & (\A[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101101110100011111100111010001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X25_Y3_N48
\Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \Mux29~0_combout\ & ( (!\f[2]~input_o\) # (\Mux29~1_combout\) ) ) # ( !\Mux29~0_combout\ & ( (\f[2]~input_o\ & \Mux29~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux29~1_combout\,
	dataf => \ALT_INV_Mux29~0_combout\,
	combout => \Mux29~2_combout\);

-- Location: LABCELL_X29_Y3_N36
\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \Add1~17_sumout\ & ( (!\f[1]~input_o\ & ((!\B[3]~input_o\) # ((!\f[0]~input_o\ & !\A[3]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\)) ) ) # ( !\Add1~17_sumout\ & ( (!\f[1]~input_o\ & ((!\B[3]~input_o\) # ((!\f[0]~input_o\ & 
-- !\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101010001010000011101100111001001110110011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \Mux28~1_combout\);

-- Location: MLABCELL_X28_Y3_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X29_Y3_N33
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \B[3]~input_o\ & ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & (\Add0~13_sumout\)) # (\f[0]~input_o\ & ((!\A[3]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & (\Add0~13_sumout\)) # (\f[0]~input_o\ & 
-- ((\A[3]~input_o\))) ) ) ) # ( \B[3]~input_o\ & ( !\f[1]~input_o\ & ( (\A[3]~input_o\) # (\f[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\f[1]~input_o\ & ( (\f[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011111111100001010010111110101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X29_Y3_N45
\Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux28~0_combout\ & ( (!\f[2]~input_o\) # (\Mux28~1_combout\) ) ) # ( !\Mux28~0_combout\ & ( (\f[2]~input_o\ & \Mux28~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux28~1_combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X29_Y3_N42
\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \A[4]~input_o\ & ( (!\f[1]~input_o\ & (!\B[4]~input_o\)) # (\f[1]~input_o\ & (((!\f[0]~input_o\ & \Add1~21_sumout\)))) ) ) # ( !\A[4]~input_o\ & ( (!\f[1]~input_o\ & ((!\B[4]~input_o\) # ((!\f[0]~input_o\)))) # (\f[1]~input_o\ & 
-- (((!\f[0]~input_o\ & \Add1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011111000101010001111100010001000110110001000100011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_f[0]~input_o\,
	datad => \ALT_INV_Add1~21_sumout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X28_Y3_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X29_Y3_N39
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \A[4]~input_o\ & ( (!\f[1]~input_o\ & (((\B[4]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & ((\Add0~17_sumout\))) # (\f[0]~input_o\ & (!\B[4]~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & ((\Add0~17_sumout\)))) # (\f[0]~input_o\ & (((\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100111010011111100011101001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X29_Y3_N51
\Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \f[2]~input_o\ & ( \Mux27~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux27~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~1_combout\,
	datab => \ALT_INV_Mux27~0_combout\,
	dataf => \ALT_INV_f[2]~input_o\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X28_Y3_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \A[5]~input_o\ ) + ( \B[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \A[5]~input_o\ ) + ( \B[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X30_Y3_N9
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \B[5]~input_o\ & ( (!\f[1]~input_o\ & (((\A[5]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & ((\Add0~21_sumout\))) # (\f[0]~input_o\ & (!\A[5]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & ((\Add0~21_sumout\)))) # (\f[0]~input_o\ & (((\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100111010011111100011101001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X30_Y3_N12
\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \B[5]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((!\A[5]~input_o\))) # (\f[1]~input_o\ & (\Add1~25_sumout\)))) ) ) # ( !\B[5]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~25_sumout\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X30_Y3_N18
\Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux26~1_combout\ & ( (\Mux26~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux26~1_combout\ & ( (!\f[2]~input_o\ & \Mux26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => \ALT_INV_Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LABCELL_X30_Y3_N24
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \B[6]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((!\A[6]~input_o\))) # (\f[1]~input_o\ & (\Add1~29_sumout\)))) ) ) # ( !\B[6]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X28_Y3_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X30_Y3_N15
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \B[6]~input_o\ & ( (!\f[1]~input_o\ & (((\A[6]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & ((\Add0~25_sumout\))) # (\f[0]~input_o\ & (!\A[6]~input_o\)))) ) ) # ( !\B[6]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & ((\Add0~25_sumout\)))) # (\f[0]~input_o\ & (((\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011100111010011111100011101001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X30_Y3_N33
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \f[2]~input_o\ & ( \Mux25~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux25~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~1_combout\,
	datab => \ALT_INV_Mux25~0_combout\,
	dataf => \ALT_INV_f[2]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X28_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X24_Y3_N45
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \A[7]~input_o\ & ( \B[7]~input_o\ & ( (!\f[1]~input_o\) # ((\Add0~29_sumout\ & !\f[0]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \B[7]~input_o\ & ( ((\f[1]~input_o\ & \Add0~29_sumout\)) # (\f[0]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\B[7]~input_o\ & ( ((\f[1]~input_o\ & \Add0~29_sumout\)) # (\f[0]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( !\B[7]~input_o\ & ( (\f[1]~input_o\ & (\Add0~29_sumout\ & !\f[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111100011111000111111011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_f[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X24_Y3_N18
\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \B[7]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[7]~input_o\)) # (\f[1]~input_o\ & ((\Add1~33_sumout\))))) ) ) # ( !\B[7]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~33_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111100111100001111110010000000100011001000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_Add1~33_sumout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LABCELL_X24_Y3_N21
\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Mux24~1_combout\ & ( (\f[2]~input_o\) # (\Mux24~0_combout\) ) ) # ( !\Mux24~1_combout\ & ( (\Mux24~0_combout\ & !\f[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux24~0_combout\,
	datad => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LABCELL_X24_Y3_N27
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \B[8]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((!\A[8]~input_o\))) # (\f[1]~input_o\ & (\Add1~37_sumout\)))) ) ) # ( !\B[8]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~37_sumout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: MLABCELL_X28_Y3_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X24_Y3_N24
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \B[8]~input_o\ & ( (!\f[1]~input_o\ & (((\A[8]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & (\Add0~33_sumout\)) # (\f[0]~input_o\ & ((!\A[8]~input_o\))))) ) ) # ( !\B[8]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & (\Add0~33_sumout\))) # (\f[0]~input_o\ & (((\A[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011100110111101011100011011110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X24_Y3_N3
\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \Mux23~0_combout\ & ( (!\f[2]~input_o\) # (\Mux23~1_combout\) ) ) # ( !\Mux23~0_combout\ & ( (\Mux23~1_combout\ & \f[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~2_combout\);

-- Location: LABCELL_X24_Y3_N12
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \Add1~41_sumout\ & ( (!\f[1]~input_o\ & ((!\B[9]~input_o\) # ((!\f[0]~input_o\ & !\A[9]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\)) ) ) # ( !\Add1~41_sumout\ & ( (!\f[1]~input_o\ & ((!\B[9]~input_o\) # ((!\f[0]~input_o\ & 
-- !\A[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100000101010001010000011101100111001001110110011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_Add1~41_sumout\,
	combout => \Mux22~1_combout\);

-- Location: MLABCELL_X28_Y3_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \B[9]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \B[9]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X24_Y3_N9
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & (((\Add0~37_sumout\)))) # (\f[0]~input_o\ & (!\B[9]~input_o\ $ ((!\A[9]~input_o\)))) ) ) # ( !\f[1]~input_o\ & ( (!\B[9]~input_o\ & (\f[0]~input_o\ & \A[9]~input_o\)) # (\B[9]~input_o\ & 
-- ((\A[9]~input_o\) # (\f[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010010110111100001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X24_Y3_N51
\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Mux22~0_combout\ & ( (!\f[2]~input_o\) # (\Mux22~1_combout\) ) ) # ( !\Mux22~0_combout\ & ( (\f[2]~input_o\ & \Mux22~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux22~1_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux22~2_combout\);

-- Location: MLABCELL_X28_Y3_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \B[10]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \B[10]~input_o\ ) + ( \A[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X24_Y3_N54
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Add0~41_sumout\ & ( \B[10]~input_o\ & ( (!\f[1]~input_o\ & ((\f[0]~input_o\) # (\A[10]~input_o\))) # (\f[1]~input_o\ & ((!\A[10]~input_o\) # (!\f[0]~input_o\))) ) ) ) # ( !\Add0~41_sumout\ & ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & 
-- ((\f[0]~input_o\))) # (\A[10]~input_o\ & (!\f[1]~input_o\)) ) ) ) # ( \Add0~41_sumout\ & ( !\B[10]~input_o\ & ( (!\f[0]~input_o\ & (\f[1]~input_o\)) # (\f[0]~input_o\ & ((\A[10]~input_o\))) ) ) ) # ( !\Add0~41_sumout\ & ( !\B[10]~input_o\ & ( 
-- (\A[10]~input_o\ & \f[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010011001100100010111011100111011111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_f[0]~input_o\,
	datae => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X24_Y3_N15
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \B[10]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[10]~input_o\)) # (\f[1]~input_o\ & ((\Add1~45_sumout\))))) ) ) # ( !\B[10]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011101110101010101110111010000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_Add1~45_sumout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X24_Y3_N6
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux21~1_combout\ & ( (\Mux21~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux21~1_combout\ & ( (!\f[2]~input_o\ & \Mux21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_Mux21~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: MLABCELL_X28_Y3_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X25_Y3_N51
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \Add0~45_sumout\ & ( (!\f[0]~input_o\ & (((\A[11]~input_o\ & \B[11]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\A[11]~input_o\ & (\B[11]~input_o\)) # (\A[11]~input_o\ & ((!\B[11]~input_o\) # (!\f[1]~input_o\))))) ) ) # ( 
-- !\Add0~45_sumout\ & ( (!\A[11]~input_o\ & (\B[11]~input_o\ & ((\f[0]~input_o\)))) # (\A[11]~input_o\ & ((!\B[11]~input_o\ & ((\f[0]~input_o\))) # (\B[11]~input_o\ & (!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110110000100000111011000011111011101100001111101110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_f[0]~input_o\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X25_Y3_N24
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & \Add1~49_sumout\) ) ) # ( !\f[1]~input_o\ & ( (!\B[11]~input_o\) # ((!\A[11]~input_o\ & !\f[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_f[0]~input_o\,
	datad => \ALT_INV_Add1~49_sumout\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: MLABCELL_X25_Y3_N27
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux20~1_combout\ & ( (\Mux20~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux20~1_combout\ & ( (!\f[2]~input_o\ & \Mux20~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X29_Y3_N24
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & \Add1~53_sumout\) ) ) # ( !\f[1]~input_o\ & ( (!\B[12]~input_o\) # ((!\f[0]~input_o\ & !\A[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111011101100110000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_Add1~53_sumout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X28_Y3_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \A[12]~input_o\ ) + ( \B[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \A[12]~input_o\ ) + ( \B[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X29_Y3_N27
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & (((\Add0~49_sumout\)))) # (\f[0]~input_o\ & (!\B[12]~input_o\ $ (((!\A[12]~input_o\))))) ) ) # ( !\f[1]~input_o\ & ( (!\f[0]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)) # (\f[0]~input_o\ & 
-- ((\A[12]~input_o\) # (\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100011011010011100001101101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X29_Y3_N0
\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~0_combout\ & ( \f[2]~input_o\ & ( \Mux19~1_combout\ ) ) ) # ( !\Mux19~0_combout\ & ( \f[2]~input_o\ & ( \Mux19~1_combout\ ) ) ) # ( \Mux19~0_combout\ & ( !\f[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux19~1_combout\,
	datae => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_f[2]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: MLABCELL_X28_Y3_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X29_Y3_N9
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Add0~53_sumout\ & ( (!\f[0]~input_o\ & (((\B[13]~input_o\ & \A[13]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\B[13]~input_o\ & (\A[13]~input_o\)) # (\B[13]~input_o\ & ((!\A[13]~input_o\) # (!\f[1]~input_o\))))) ) ) # ( 
-- !\Add0~53_sumout\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & ((\f[0]~input_o\)))) # (\B[13]~input_o\ & ((!\A[13]~input_o\ & ((\f[0]~input_o\))) # (\A[13]~input_o\ & (!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110110000100000111011000011111011101100001111101110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_f[0]~input_o\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X29_Y3_N6
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \f[1]~input_o\ & ( (!\f[0]~input_o\ & \Add1~57_sumout\) ) ) # ( !\f[1]~input_o\ & ( (!\B[13]~input_o\) # ((!\A[13]~input_o\ & !\f[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_f[0]~input_o\,
	datad => \ALT_INV_Add1~57_sumout\,
	dataf => \ALT_INV_f[1]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X29_Y3_N15
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Mux18~1_combout\ & ( (\Mux18~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux18~1_combout\ & ( (!\f[2]~input_o\ & \Mux18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X29_Y3_N18
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \B[14]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[14]~input_o\)) # (\f[1]~input_o\ & ((\Add1~61_sumout\))))) ) ) # ( !\B[14]~input_o\ & ( (!\f[1]~input_o\) # ((\Add1~61_sumout\ & !\f[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101010001101000000001000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_Add1~61_sumout\,
	datad => \ALT_INV_f[0]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X28_Y3_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \B[14]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \B[14]~input_o\ ) + ( \A[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X29_Y3_N21
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \B[14]~input_o\ & ( (!\f[1]~input_o\ & (((\f[0]~input_o\)) # (\A[14]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & ((\Add0~57_sumout\))) # (\f[0]~input_o\ & (!\A[14]~input_o\)))) ) ) # ( !\B[14]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & ((\Add0~57_sumout\)))) # (\f[0]~input_o\ & (((\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001100100111111011100010011111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_f[0]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X29_Y3_N12
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (!\f[2]~input_o\ & ((\Mux17~0_combout\))) # (\f[2]~input_o\ & (\Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux17~1_combout\,
	datad => \ALT_INV_Mux17~0_combout\,
	combout => \Mux17~2_combout\);

-- Location: LABCELL_X30_Y3_N21
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \f[0]~input_o\ & ( (!\f[1]~input_o\ & !\B[15]~input_o\) ) ) # ( !\f[0]~input_o\ & ( (!\f[1]~input_o\ & (((!\A[15]~input_o\) # (!\B[15]~input_o\)))) # (\f[1]~input_o\ & (\Add1~65_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110110001101110111011000110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_Add1~65_sumout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_f[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: MLABCELL_X28_Y3_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \B[15]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \B[15]~input_o\ ) + ( \A[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X30_Y3_N36
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \Add0~61_sumout\ & ( (!\f[0]~input_o\ & (((\B[15]~input_o\ & \A[15]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\B[15]~input_o\ & ((\A[15]~input_o\))) # (\B[15]~input_o\ & ((!\f[1]~input_o\) # (!\A[15]~input_o\))))) ) ) # 
-- ( !\Add0~61_sumout\ & ( (!\B[15]~input_o\ & (((\f[0]~input_o\ & \A[15]~input_o\)))) # (\B[15]~input_o\ & ((!\A[15]~input_o\ & ((\f[0]~input_o\))) # (\A[15]~input_o\ & (!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111010000000110011101001000111011111100100011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X30_Y3_N42
\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!\f[2]~input_o\ & ((\Mux16~0_combout\))) # (\f[2]~input_o\ & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux16~1_combout\,
	datad => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: MLABCELL_X28_Y3_N48
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \A[16]~input_o\ ) + ( \B[16]~input_o\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \A[16]~input_o\ ) + ( \B[16]~input_o\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X30_Y3_N39
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \B[16]~input_o\ & ( (!\f[1]~input_o\ & (((\A[16]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & (\Add0~65_sumout\)) # (\f[0]~input_o\ & ((!\A[16]~input_o\))))) ) ) # ( !\B[16]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & (\Add0~65_sumout\))) # (\f[0]~input_o\ & (((\A[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011100110111101011100011011110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X30_Y3_N6
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \B[16]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((!\A[16]~input_o\))) # (\f[1]~input_o\ & (\Add1~69_sumout\)))) ) ) # ( !\B[16]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~69_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~69_sumout\,
	datad => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_B[16]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X30_Y3_N45
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Mux15~1_combout\ & ( (\Mux15~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux15~1_combout\ & ( (!\f[2]~input_o\ & \Mux15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: MLABCELL_X25_Y3_N3
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \B[17]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[17]~input_o\)) # (\f[1]~input_o\ & ((\Add1~73_sumout\))))) ) ) # ( !\B[17]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~73_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101010001000000010101000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_Add1~73_sumout\,
	datad => \ALT_INV_f[1]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X28_Y3_N51
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \B[17]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \B[17]~input_o\ ) + ( \A[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_B[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: MLABCELL_X25_Y3_N0
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \B[17]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\A[17]~input_o\)) # (\f[1]~input_o\ & ((\Add0~69_sumout\))))) # (\f[0]~input_o\ & ((!\A[17]~input_o\) # ((!\f[1]~input_o\)))) ) ) # ( !\B[17]~input_o\ & ( (!\f[0]~input_o\ & 
-- (((\f[1]~input_o\ & \Add0~69_sumout\)))) # (\f[0]~input_o\ & (\A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101101110100011111100111010001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	datac => \ALT_INV_f[1]~input_o\,
	datad => \ALT_INV_Add0~69_sumout\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X25_Y3_N9
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \f[2]~input_o\ & ( \Mux14~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_f[2]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X25_Y3_N15
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \B[18]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[18]~input_o\)) # (\f[1]~input_o\ & ((\Add1~77_sumout\))))) ) ) # ( !\B[18]~input_o\ & ( (!\f[1]~input_o\) # ((\Add1~77_sumout\ & !\f[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101010001101000000001000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_Add1~77_sumout\,
	datad => \ALT_INV_f[0]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X28_Y3_N54
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \B[18]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \B[18]~input_o\ ) + ( \A[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[18]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: MLABCELL_X25_Y3_N12
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \B[18]~input_o\ & ( (!\f[1]~input_o\ & (((\f[0]~input_o\)) # (\A[18]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & ((\Add0~73_sumout\))) # (\f[0]~input_o\ & (!\A[18]~input_o\)))) ) ) # ( !\B[18]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & ((\Add0~73_sumout\)))) # (\f[0]~input_o\ & (((\A[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001100101110011111100010111001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_f[0]~input_o\,
	datad => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X25_Y3_N6
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~0_combout\ & ( (!\f[2]~input_o\) # (\Mux13~1_combout\) ) ) # ( !\Mux13~0_combout\ & ( (\Mux13~1_combout\ & \f[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux13~1_combout\,
	datac => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X28_Y3_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \A[19]~input_o\ ) + ( \B[19]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \A[19]~input_o\ ) + ( \B[19]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[19]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X30_Y3_N0
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\f[2]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (((\A[19]~input_o\ & \B[19]~input_o\)))) # (\f[1]~input_o\ & (\Add0~77_sumout\)))) # (\f[0]~input_o\ & (((!\A[19]~input_o\ & ((\B[19]~input_o\))) # (\A[19]~input_o\ & 
-- ((!\f[1]~input_o\) # (!\B[19]~input_o\)))))) ) ) # ( \f[2]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[19]~input_o\) # ((!\f[0]~input_o\ & !\A[19]~input_o\))))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & (\Add1~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000110111101011101010111000110111101011101000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~81_sumout\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	datag => \ALT_INV_Add0~77_sumout\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X28_Y2_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \B[20]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \B[20]~input_o\ ) + ( \A[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X28_Y2_N42
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( !\f[2]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\B[20]~input_o\ & ((\A[20]~input_o\)))) # (\f[1]~input_o\ & (((\Add0~81_sumout\)))))) # (\f[0]~input_o\ & ((!\B[20]~input_o\ & (((\A[20]~input_o\)))) # (\B[20]~input_o\ & 
-- ((!\f[1]~input_o\) # ((!\A[20]~input_o\)))))) ) ) # ( \f[2]~input_o\ & ( (!\f[1]~input_o\ & ((!\B[20]~input_o\) # (((!\f[0]~input_o\ & !\A[20]~input_o\))))) # (\f[1]~input_o\ & (((\Add1~85_sumout\ & (!\f[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100110011101011111000100000100111111011101000110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_Add1~85_sumout\,
	datad => \ALT_INV_f[0]~input_o\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	datag => \ALT_INV_Add0~81_sumout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X28_Y2_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \B[21]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \B[21]~input_o\ ) + ( \A[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: MLABCELL_X28_Y2_N36
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( !\f[2]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\B[21]~input_o\ & ((\A[21]~input_o\)))) # (\f[1]~input_o\ & (((\Add0~85_sumout\)))))) # (\f[0]~input_o\ & ((!\B[21]~input_o\ & (((\A[21]~input_o\)))) # (\B[21]~input_o\ & 
-- (((!\A[21]~input_o\) # (!\f[1]~input_o\)))))) ) ) # ( \f[2]~input_o\ & ( (!\f[1]~input_o\ & ((!\B[21]~input_o\) # ((!\f[0]~input_o\ & ((!\A[21]~input_o\)))))) # (\f[1]~input_o\ & (((!\f[0]~input_o\ & (\Add1~89_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000101110111111011101010101000011101001011100000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~89_sumout\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_f[1]~input_o\,
	datag => \ALT_INV_Add0~85_sumout\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X28_Y2_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \B[22]~input_o\ ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \B[22]~input_o\ ) + ( \A[22]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X25_Y2_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Add0~89_sumout\ & ( (!\f[0]~input_o\ & (((\A[22]~input_o\ & \B[22]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\A[22]~input_o\ & ((\B[22]~input_o\))) # (\A[22]~input_o\ & ((!\f[1]~input_o\) # (!\B[22]~input_o\))))) ) ) # ( 
-- !\Add0~89_sumout\ & ( (!\A[22]~input_o\ & (((\f[0]~input_o\ & \B[22]~input_o\)))) # (\A[22]~input_o\ & ((!\B[22]~input_o\ & ((\f[0]~input_o\))) # (\B[22]~input_o\ & (!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100101110000000110010111001010011011111100101001101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_f[0]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_Add0~89_sumout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X25_Y2_N33
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \f[0]~input_o\ & ( (!\f[1]~input_o\ & !\B[22]~input_o\) ) ) # ( !\f[0]~input_o\ & ( (!\f[1]~input_o\ & ((!\A[22]~input_o\) # ((!\B[22]~input_o\)))) # (\f[1]~input_o\ & (((\Add1~93_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011111101101010001111110110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[22]~input_o\,
	datad => \ALT_INV_Add1~93_sumout\,
	dataf => \ALT_INV_f[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X25_Y2_N39
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~1_combout\ & ( (\Mux9~0_combout\) # (\f[2]~input_o\) ) ) # ( !\Mux9~1_combout\ & ( (!\f[2]~input_o\ & \Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X25_Y2_N42
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \f[0]~input_o\ & ( (!\f[1]~input_o\ & !\B[23]~input_o\) ) ) # ( !\f[0]~input_o\ & ( (!\f[1]~input_o\ & ((!\A[23]~input_o\) # ((!\B[23]~input_o\)))) # (\f[1]~input_o\ & (((\Add1~97_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110001101101011111000110110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_Add1~97_sumout\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_f[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X28_Y2_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \B[23]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \B[23]~input_o\ ) + ( \A[23]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: MLABCELL_X25_Y2_N45
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \f[0]~input_o\ & ( (!\A[23]~input_o\ & ((\B[23]~input_o\))) # (\A[23]~input_o\ & ((!\f[1]~input_o\) # (!\B[23]~input_o\))) ) ) # ( !\f[0]~input_o\ & ( (!\f[1]~input_o\ & (\A[23]~input_o\ & ((\B[23]~input_o\)))) # (\f[1]~input_o\ & 
-- (((\Add0~93_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100110011111011100011001111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	datac => \ALT_INV_Add0~93_sumout\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_f[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X25_Y2_N36
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\f[2]~input_o\ & ((\Mux8~0_combout\))) # (\f[2]~input_o\ & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datab => \ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X27_Y2_N45
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \A[24]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[24]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & (\Add1~101_sumout\))) ) ) # ( !\A[24]~input_o\ & ( (!\f[1]~input_o\ & ((!\f[0]~input_o\) # ((!\B[24]~input_o\)))) # (\f[1]~input_o\ 
-- & (!\f[0]~input_o\ & (\Add1~101_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010001100101011101000110010101110000001001010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~101_sumout\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X28_Y2_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \B[24]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \B[24]~input_o\ ) + ( \A[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X27_Y2_N36
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Add0~97_sumout\ & ( (!\f[0]~input_o\ & (((\A[24]~input_o\ & \B[24]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\A[24]~input_o\ & ((\B[24]~input_o\))) # (\A[24]~input_o\ & ((!\f[1]~input_o\) # (!\B[24]~input_o\))))) ) ) # ( 
-- !\Add0~97_sumout\ & ( (!\A[24]~input_o\ & (((\f[0]~input_o\ & \B[24]~input_o\)))) # (\A[24]~input_o\ & ((!\B[24]~input_o\ & ((\f[0]~input_o\))) # (\B[24]~input_o\ & (!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111010000000110011101001000111011111100100011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X24_Y2_N33
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \f[2]~input_o\ & ( \Mux7~0_combout\ & ( \Mux7~1_combout\ ) ) ) # ( !\f[2]~input_o\ & ( \Mux7~0_combout\ ) ) # ( \f[2]~input_o\ & ( !\Mux7~0_combout\ & ( \Mux7~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux7~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X27_Y2_N51
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \A[25]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[25]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & (\Add1~105_sumout\))) ) ) # ( !\A[25]~input_o\ & ( (!\f[1]~input_o\ & ((!\f[0]~input_o\) # ((!\B[25]~input_o\)))) # (\f[1]~input_o\ 
-- & (!\f[0]~input_o\ & (\Add1~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010001100101011101000110010101110000001001010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~105_sumout\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X28_Y2_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \B[25]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \B[25]~input_o\ ) + ( \A[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: MLABCELL_X28_Y2_N48
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Add0~101_sumout\ & ( (!\f[0]~input_o\ & (((\A[25]~input_o\ & \B[25]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\A[25]~input_o\ & ((\B[25]~input_o\))) # (\A[25]~input_o\ & ((!\f[1]~input_o\) # (!\B[25]~input_o\))))) ) ) # 
-- ( !\Add0~101_sumout\ & ( (!\A[25]~input_o\ & (\f[0]~input_o\ & ((\B[25]~input_o\)))) # (\A[25]~input_o\ & ((!\B[25]~input_o\ & (\f[0]~input_o\)) # (\B[25]~input_o\ & ((!\f[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011100000001010101110000100111011111100010011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_f[1]~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X24_Y2_N6
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \f[2]~input_o\ & ( \Mux6~0_combout\ & ( \Mux6~1_combout\ ) ) ) # ( !\f[2]~input_o\ & ( \Mux6~0_combout\ ) ) # ( \f[2]~input_o\ & ( !\Mux6~0_combout\ & ( \Mux6~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux6~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X28_Y2_N18
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \B[26]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \B[26]~input_o\ ) + ( \A[26]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: MLABCELL_X28_Y2_N51
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Add0~105_sumout\ & ( (!\f[0]~input_o\ & (((\B[26]~input_o\ & \A[26]~input_o\)) # (\f[1]~input_o\))) # (\f[0]~input_o\ & ((!\B[26]~input_o\ & ((\A[26]~input_o\))) # (\B[26]~input_o\ & ((!\f[1]~input_o\) # (!\A[26]~input_o\))))) ) ) # 
-- ( !\Add0~105_sumout\ & ( (!\B[26]~input_o\ & (\f[0]~input_o\ & ((\A[26]~input_o\)))) # (\B[26]~input_o\ & ((!\A[26]~input_o\ & (\f[0]~input_o\)) # (\A[26]~input_o\ & ((!\f[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011100000001010101110000100111011111100010011101111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_f[1]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_Add0~105_sumout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X27_Y2_N39
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \A[26]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[26]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & (\Add1~109_sumout\))) ) ) # ( !\A[26]~input_o\ & ( (!\f[1]~input_o\ & ((!\f[0]~input_o\) # ((!\B[26]~input_o\)))) # (\f[1]~input_o\ 
-- & (!\f[0]~input_o\ & (\Add1~109_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010001100101011101000110010101110000001001010111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~109_sumout\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X24_Y2_N42
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \f[2]~input_o\ & ( \Mux5~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X28_Y2_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \A[27]~input_o\ ) + ( \B[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( \A[27]~input_o\ ) + ( \B[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X27_Y2_N48
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \A[27]~input_o\ & ( (!\f[1]~input_o\ & (((\B[27]~input_o\)) # (\f[0]~input_o\))) # (\f[1]~input_o\ & ((!\f[0]~input_o\ & (\Add0~109_sumout\)) # (\f[0]~input_o\ & ((!\B[27]~input_o\))))) ) ) # ( !\A[27]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & (\Add0~109_sumout\))) # (\f[0]~input_o\ & (((\B[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011100110111101011100011011110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X27_Y2_N57
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \A[27]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[27]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & ((\Add1~113_sumout\)))) ) ) # ( !\A[27]~input_o\ & ( (!\f[1]~input_o\ & ((!\f[0]~input_o\) # ((!\B[27]~input_o\)))) # 
-- (\f[1]~input_o\ & (!\f[0]~input_o\ & ((\Add1~113_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011101100101010001110110010100000111001001010000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_Add1~113_sumout\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X24_Y2_N21
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \f[2]~input_o\ & ( \Mux4~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X25_Y2_N48
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \B[28]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (!\A[28]~input_o\)) # (\f[1]~input_o\ & ((\Add1~117_sumout\))))) ) ) # ( !\B[28]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~117_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010111111110000101010001000000010101000100000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_Add1~117_sumout\,
	datad => \ALT_INV_f[1]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X28_Y2_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \B[28]~input_o\ ) + ( \A[28]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \B[28]~input_o\ ) + ( \A[28]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: MLABCELL_X25_Y2_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \B[28]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\A[28]~input_o\)) # (\f[1]~input_o\ & ((\Add0~113_sumout\))))) # (\f[0]~input_o\ & ((!\A[28]~input_o\) # ((!\f[1]~input_o\)))) ) ) # ( !\B[28]~input_o\ & ( (!\f[0]~input_o\ & 
-- (((\Add0~113_sumout\ & \f[1]~input_o\)))) # (\f[0]~input_o\ & (\A[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101101110111010011100111011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_Add0~113_sumout\,
	datad => \ALT_INV_f[1]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X25_Y2_N54
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \f[2]~input_o\ & ( \Mux3~0_combout\ & ( \Mux3~1_combout\ ) ) ) # ( !\f[2]~input_o\ & ( \Mux3~0_combout\ ) ) # ( \f[2]~input_o\ & ( !\Mux3~0_combout\ & ( \Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux3~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X28_Y2_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \B[29]~input_o\ ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \B[29]~input_o\ ) + ( \A[29]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_B[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: MLABCELL_X25_Y2_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A[29]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & (\B[29]~input_o\)) # (\f[1]~input_o\ & ((\Add0~117_sumout\))))) # (\f[0]~input_o\ & ((!\B[29]~input_o\) # ((!\f[1]~input_o\)))) ) ) # ( !\A[29]~input_o\ & ( (!\f[0]~input_o\ & 
-- (((\Add0~117_sumout\ & \f[1]~input_o\)))) # (\f[0]~input_o\ & (\B[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101101110111010011100111011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_Add0~117_sumout\,
	datad => \ALT_INV_f[1]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X25_Y2_N3
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A[29]~input_o\ & ( (!\f[1]~input_o\ & (((!\B[29]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\ & ((\Add1~121_sumout\)))) ) ) # ( !\A[29]~input_o\ & ( (!\f[0]~input_o\ & (((!\f[1]~input_o\) # (\Add1~121_sumout\)))) # 
-- (\f[0]~input_o\ & (!\B[29]~input_o\ & ((!\f[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001010111011100000101011001100000010101100110000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	datac => \ALT_INV_Add1~121_sumout\,
	datad => \ALT_INV_f[1]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X25_Y2_N6
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \f[2]~input_o\ & ( \Mux2~1_combout\ ) ) # ( !\f[2]~input_o\ & ( \Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X27_Y2_N54
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Add1~125_sumout\ & ( (!\f[1]~input_o\ & ((!\B[30]~input_o\) # ((!\f[0]~input_o\ & !\A[30]~input_o\)))) # (\f[1]~input_o\ & (!\f[0]~input_o\)) ) ) # ( !\Add1~125_sumout\ & ( (!\f[1]~input_o\ & ((!\B[30]~input_o\) # ((!\f[0]~input_o\ & 
-- !\A[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000101010101000000011101110110001001110111011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_Add1~125_sumout\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X28_Y2_N30
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \B[30]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \B[30]~input_o\ ) + ( \A[30]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: MLABCELL_X28_Y2_N57
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[30]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((\B[30]~input_o\))) # (\f[1]~input_o\ & (\Add0~121_sumout\)))) # (\f[0]~input_o\ & ((!\f[1]~input_o\) # ((!\B[30]~input_o\)))) ) ) # ( !\A[30]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & (\Add0~121_sumout\))) # (\f[0]~input_o\ & (((\B[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011101010111110011100101011111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_f[1]~input_o\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X24_Y2_N57
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\f[2]~input_o\ & ((\Mux1~0_combout\))) # (\f[2]~input_o\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X27_Y2_N42
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \B[31]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((!\A[31]~input_o\))) # (\f[1]~input_o\ & (\Add1~5_sumout\)))) ) ) # ( !\B[31]~input_o\ & ( (!\f[1]~input_o\) # ((!\f[0]~input_o\ & \Add1~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[1]~input_o\,
	datab => \ALT_INV_f[0]~input_o\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X28_Y2_N33
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \B[31]~input_o\ ) + ( \A[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: MLABCELL_X28_Y2_N54
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \B[31]~input_o\ & ( (!\f[0]~input_o\ & ((!\f[1]~input_o\ & ((\A[31]~input_o\))) # (\f[1]~input_o\ & (\Add0~125_sumout\)))) # (\f[0]~input_o\ & ((!\f[1]~input_o\) # ((!\A[31]~input_o\)))) ) ) # ( !\B[31]~input_o\ & ( (!\f[0]~input_o\ & 
-- (\f[1]~input_o\ & (\Add0~125_sumout\))) # (\f[0]~input_o\ & (((\A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011101010111110011100101011111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[0]~input_o\,
	datab => \ALT_INV_f[1]~input_o\,
	datac => \ALT_INV_Add0~125_sumout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X24_Y2_N0
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \f[2]~input_o\ & ( \Mux0~0_combout\ & ( \Mux0~1_combout\ ) ) ) # ( !\f[2]~input_o\ & ( \Mux0~0_combout\ ) ) # ( \f[2]~input_o\ & ( !\Mux0~0_combout\ & ( \Mux0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X24_Y2_N54
\Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Mux0~0_combout\ & ( (\f[2]~input_o\ & (!\Mux10~0_combout\ & (!\Mux31~1_combout\ & !\Mux0~1_combout\))) ) ) # ( !\Mux0~0_combout\ & ( (!\Mux10~0_combout\ & (!\Mux31~1_combout\ & ((!\f[2]~input_o\) # (!\Mux0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Mux31~1_combout\,
	datad => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \Equal0~14_combout\);

-- Location: LABCELL_X30_Y3_N30
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Mux26~1_combout\ & ( (!\Mux25~0_combout\ & (!\f[2]~input_o\ & !\Mux26~0_combout\)) ) ) # ( !\Mux26~1_combout\ & ( (!\f[2]~input_o\ & (((!\Mux25~0_combout\ & !\Mux26~0_combout\)))) # (\f[2]~input_o\ & (!\Mux25~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101000001010110010100000101011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~1_combout\,
	datab => \ALT_INV_Mux25~0_combout\,
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => \ALT_INV_Mux26~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X30_Y3_N48
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Mux16~0_combout\ & ( \Mux15~1_combout\ & ( (!\f[2]~input_o\ & (\Equal0~6_combout\ & !\Mux15~0_combout\)) ) ) ) # ( \Mux16~0_combout\ & ( !\Mux15~1_combout\ & ( (\f[2]~input_o\ & (\Equal0~6_combout\ & !\Mux16~1_combout\)) ) ) ) # ( 
-- !\Mux16~0_combout\ & ( !\Mux15~1_combout\ & ( (\Equal0~6_combout\ & ((!\f[2]~input_o\ & ((!\Mux15~0_combout\))) # (\f[2]~input_o\ & (!\Mux16~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000000100000001000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datab => \ALT_INV_Equal0~6_combout\,
	datac => \ALT_INV_Mux16~1_combout\,
	datad => \ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_Mux16~0_combout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X24_Y2_N12
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \f[2]~input_o\ & ( \Equal0~7_combout\ & ( (!\Mux5~1_combout\ & !\Mux4~1_combout\) ) ) ) # ( !\f[2]~input_o\ & ( \Equal0~7_combout\ & ( (!\Mux4~0_combout\ & !\Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~1_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LABCELL_X24_Y3_N48
\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Mux21~1_combout\ & ( (!\f[2]~input_o\ & (!\Mux21~0_combout\ & !\Mux22~0_combout\)) ) ) # ( !\Mux21~1_combout\ & ( (!\f[2]~input_o\ & (((!\Mux21~0_combout\ & !\Mux22~0_combout\)))) # (\f[2]~input_o\ & (!\Mux22~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010001000100111001000100010010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datab => \ALT_INV_Mux22~1_combout\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_Mux22~0_combout\,
	dataf => \ALT_INV_Mux21~1_combout\,
	combout => \Equal0~12_combout\);

-- Location: LABCELL_X24_Y2_N48
\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( !\Mux12~0_combout\ & ( \Equal0~12_combout\ & ( (!\Mux11~0_combout\ & ((!\f[2]~input_o\ & (!\Mux1~0_combout\)) # (\f[2]~input_o\ & ((!\Mux1~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux1~1_combout\,
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux11~0_combout\,
	datae => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X24_Y3_N0
\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \Mux23~0_combout\ & ( (\f[2]~input_o\ & (!\Mux23~1_combout\ & !\Mux24~1_combout\)) ) ) # ( !\Mux23~0_combout\ & ( (!\f[2]~input_o\ & (((!\Mux24~0_combout\)))) # (\f[2]~input_o\ & (!\Mux23~1_combout\ & (!\Mux24~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111010100100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_f[2]~input_o\,
	datab => \ALT_INV_Mux23~1_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \ALT_INV_Mux24~0_combout\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Equal0~9_combout\);

-- Location: MLABCELL_X25_Y3_N54
\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \f[2]~input_o\ & ( \Mux13~0_combout\ & ( (\Equal0~9_combout\ & (!\Mux14~1_combout\ & !\Mux13~1_combout\)) ) ) ) # ( \f[2]~input_o\ & ( !\Mux13~0_combout\ & ( (\Equal0~9_combout\ & (!\Mux14~1_combout\ & !\Mux13~1_combout\)) ) ) ) # 
-- ( !\f[2]~input_o\ & ( !\Mux13~0_combout\ & ( (!\Mux14~0_combout\ & \Equal0~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001100000000000000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~0_combout\,
	datab => \ALT_INV_Equal0~9_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_Mux13~1_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \Equal0~10_combout\);

-- Location: MLABCELL_X25_Y2_N18
\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( !\Mux2~1_combout\ & ( \Mux3~0_combout\ & ( (\Equal0~10_combout\ & (!\Mux3~1_combout\ & \f[2]~input_o\)) ) ) ) # ( \Mux2~1_combout\ & ( !\Mux3~0_combout\ & ( (!\Mux2~0_combout\ & (\Equal0~10_combout\ & !\f[2]~input_o\)) ) ) ) # ( 
-- !\Mux2~1_combout\ & ( !\Mux3~0_combout\ & ( (\Equal0~10_combout\ & ((!\f[2]~input_o\ & (!\Mux2~0_combout\)) # (\f[2]~input_o\ & ((!\Mux3~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110000001000100000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Mux3~1_combout\,
	datad => \ALT_INV_f[2]~input_o\,
	datae => \ALT_INV_Mux2~1_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \Equal0~11_combout\);

-- Location: LABCELL_X29_Y3_N48
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Mux28~0_combout\ & ( (!\Mux27~1_combout\ & (!\Mux28~1_combout\ & \f[2]~input_o\)) ) ) # ( !\Mux28~0_combout\ & ( (!\f[2]~input_o\ & (((!\Mux27~0_combout\)))) # (\f[2]~input_o\ & (!\Mux27~1_combout\ & ((!\Mux28~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010100000110011001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~1_combout\,
	datab => \ALT_INV_Mux27~0_combout\,
	datac => \ALT_INV_Mux28~1_combout\,
	datad => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X29_Y3_N54
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Mux17~0_combout\ & ( \Mux18~1_combout\ & ( (!\f[2]~input_o\ & (\Equal0~3_combout\ & !\Mux18~0_combout\)) ) ) ) # ( \Mux17~0_combout\ & ( !\Mux18~1_combout\ & ( (!\Mux17~1_combout\ & (\f[2]~input_o\ & \Equal0~3_combout\)) ) ) ) # ( 
-- !\Mux17~0_combout\ & ( !\Mux18~1_combout\ & ( (\Equal0~3_combout\ & ((!\f[2]~input_o\ & ((!\Mux18~0_combout\))) # (\f[2]~input_o\ & (!\Mux17~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000010000000100000001000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~1_combout\,
	datab => \ALT_INV_f[2]~input_o\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Mux18~0_combout\,
	datae => \ALT_INV_Mux17~0_combout\,
	dataf => \ALT_INV_Mux18~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X24_Y2_N36
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \f[2]~input_o\ & ( \Equal0~4_combout\ & ( (!\Mux7~1_combout\ & !\Mux6~1_combout\) ) ) ) # ( !\f[2]~input_o\ & ( \Equal0~4_combout\ & ( (!\Mux7~0_combout\ & !\Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_Mux7~1_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X25_Y3_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Mux29~0_combout\ & ( (!\Mux30~1_combout\ & (\f[2]~input_o\ & !\Mux29~1_combout\)) ) ) # ( !\Mux29~0_combout\ & ( (!\f[2]~input_o\ & (((!\Mux30~0_combout\)))) # (\f[2]~input_o\ & (!\Mux30~1_combout\ & ((!\Mux29~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011000000110010101100000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_f[2]~input_o\,
	datad => \ALT_INV_Mux29~1_combout\,
	dataf => \ALT_INV_Mux29~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X25_Y3_N18
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( \Mux19~0_combout\ & ( (!\Mux20~1_combout\ & (!\Mux19~1_combout\ & \f[2]~input_o\)) ) ) ) # ( \Equal0~0_combout\ & ( !\Mux19~0_combout\ & ( (!\f[2]~input_o\ & (((!\Mux20~0_combout\)))) # (\f[2]~input_o\ & 
-- (!\Mux20~1_combout\ & ((!\Mux19~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001010000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_Mux19~1_combout\,
	datad => \ALT_INV_f[2]~input_o\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Mux19~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X25_Y2_N12
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \f[2]~input_o\ & ( \Mux9~0_combout\ & ( (\Equal0~1_combout\ & (!\Mux8~1_combout\ & !\Mux9~1_combout\)) ) ) ) # ( \f[2]~input_o\ & ( !\Mux9~0_combout\ & ( (\Equal0~1_combout\ & (!\Mux8~1_combout\ & !\Mux9~1_combout\)) ) ) ) # ( 
-- !\f[2]~input_o\ & ( !\Mux9~0_combout\ & ( (\Equal0~1_combout\ & !\Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010000000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Mux8~1_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_f[2]~input_o\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X24_Y2_N24
\Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( \Equal0~5_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~14_combout\ & (\Equal0~8_combout\ & (\Equal0~13_combout\ & \Equal0~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~14_combout\,
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \ALT_INV_Equal0~13_combout\,
	datad => \ALT_INV_Equal0~11_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~15_combout\);

-- Location: LABCELL_X7_Y44_N0
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


