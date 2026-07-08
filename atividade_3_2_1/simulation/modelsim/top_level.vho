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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/08/2026 03:18:50"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 16);
	var_quociente : BUFFER std_logic_vector(15 DOWNTO 0);
	var_resto : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[0]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[2]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[4]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[6]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[8]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[9]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[11]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[12]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[13]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[14]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[3]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[5]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[7]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[8]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[9]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[11]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[12]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[13]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[14]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[15]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 16);
SIGNAL ww_var_quociente : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_var_resto : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \var_quociente[0]~output_o\ : std_logic;
SIGNAL \var_quociente[1]~output_o\ : std_logic;
SIGNAL \var_quociente[2]~output_o\ : std_logic;
SIGNAL \var_quociente[3]~output_o\ : std_logic;
SIGNAL \var_quociente[4]~output_o\ : std_logic;
SIGNAL \var_quociente[5]~output_o\ : std_logic;
SIGNAL \var_quociente[6]~output_o\ : std_logic;
SIGNAL \var_quociente[7]~output_o\ : std_logic;
SIGNAL \var_quociente[8]~output_o\ : std_logic;
SIGNAL \var_quociente[9]~output_o\ : std_logic;
SIGNAL \var_quociente[10]~output_o\ : std_logic;
SIGNAL \var_quociente[11]~output_o\ : std_logic;
SIGNAL \var_quociente[12]~output_o\ : std_logic;
SIGNAL \var_quociente[13]~output_o\ : std_logic;
SIGNAL \var_quociente[14]~output_o\ : std_logic;
SIGNAL \var_quociente[15]~output_o\ : std_logic;
SIGNAL \var_resto[0]~output_o\ : std_logic;
SIGNAL \var_resto[1]~output_o\ : std_logic;
SIGNAL \var_resto[2]~output_o\ : std_logic;
SIGNAL \var_resto[3]~output_o\ : std_logic;
SIGNAL \var_resto[4]~output_o\ : std_logic;
SIGNAL \var_resto[5]~output_o\ : std_logic;
SIGNAL \var_resto[6]~output_o\ : std_logic;
SIGNAL \var_resto[7]~output_o\ : std_logic;
SIGNAL \var_resto[8]~output_o\ : std_logic;
SIGNAL \var_resto[9]~output_o\ : std_logic;
SIGNAL \var_resto[10]~output_o\ : std_logic;
SIGNAL \var_resto[11]~output_o\ : std_logic;
SIGNAL \var_resto[12]~output_o\ : std_logic;
SIGNAL \var_resto[13]~output_o\ : std_logic;
SIGNAL \var_resto[14]~output_o\ : std_logic;
SIGNAL \var_resto[15]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_IDLE~q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_B~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_B~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_CHECK~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_CHECK~q\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~92_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|sel_escrita[1]~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_B[15]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~93_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[15]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~94_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[14]~feeder_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~90_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_B[14]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~86_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \po_endereco[1]~4_combout\ : std_logic;
SIGNAL \po_endereco[1]~3_combout\ : std_logic;
SIGNAL \po_endereco[1]~5_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[13]~feeder_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~84_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~81_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[12]~feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~78_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~75_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~68_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~66_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~62_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[9]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~60_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~56_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~54_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~50_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[7]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~38_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~15_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[6]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~17_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~18_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~21_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~23_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~22_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[2]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~25_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[1]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[1]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~9_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[0]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~3_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~7_combout\ : std_logic;
SIGNAL \po_endereco[2]~6_combout\ : std_logic;
SIGNAL \po_endereco[0]~7_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CONTROL|PE.IDLE~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.IDLE~q\ : std_logic;
SIGNAL \CONTROL|PE.WRITE~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.WRITE~q\ : std_logic;
SIGNAL \po_we~0_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[2]~5_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[3]~0_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[0]~7_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[1]~6_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~5_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[5]~1_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[7]~4_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[6]~2_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[4]~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~5\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~10_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~12_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~13_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~8_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~11\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~26_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~48_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~49_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~24_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~27\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~29\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~30_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[4]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~44_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~45_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~5_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~20_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~31\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~32_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~42_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~43_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg0|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~5_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~19_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~33\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~34_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~40_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~41_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~16_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~35\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~36_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~39_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~14_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~37\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~52_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~55_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~51_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~53\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~58_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~61_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~57_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~59\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~64_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~67_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~63_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~65\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~70_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[11]~feeder_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~72_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~73_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~5_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg4|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~69_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~71\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~76_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~79_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~5_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~74_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~77\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~82_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~85_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~80_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~83\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~88_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~91_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[14]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg4|q[14]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~87_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~89\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~95_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~97_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[15]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[3]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~1_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~3_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~5_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~7_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~9_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~11_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~13_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~15_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~17_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~19_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~21_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~23_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~25_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~27_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~29_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan0~30_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector5~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|sel_escrita[0]~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~1_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~3_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~5_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~7_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~9_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~11_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~13_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~15_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~17_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~19_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~21_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~23_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~25_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~27_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~29_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|LessThan1~30_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector10~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ : std_logic;
SIGNAL \po_endereco[0]~0_combout\ : std_logic;
SIGNAL \po_endereco[0]~1_combout\ : std_logic;
SIGNAL \po_endereco[0]~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~28_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~46_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~47_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg0|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~4_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~5_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~3_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~2_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector14~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector14~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_DONE~q\ : std_logic;
SIGNAL \reg3_resto[6]~feeder_combout\ : std_logic;
SIGNAL \reg3_resto[5]~feeder_combout\ : std_logic;
SIGNAL \CONV_R|bcd~2_combout\ : std_logic;
SIGNAL \CONV_R|bcd~1_combout\ : std_logic;
SIGNAL \CONV_R|bcd~0_combout\ : std_logic;
SIGNAL \CONV_R|bcd~4_combout\ : std_logic;
SIGNAL \CONV_R|bcd~3_combout\ : std_logic;
SIGNAL \CONV_R|bcd~5_combout\ : std_logic;
SIGNAL \CONV_R|bcd~8_combout\ : std_logic;
SIGNAL \reg3_resto[1]~feeder_combout\ : std_logic;
SIGNAL \CONV_R|bcd~7_combout\ : std_logic;
SIGNAL \CONV_R|LessThan5~1_combout\ : std_logic;
SIGNAL \CONV_R|bcd~6_combout\ : std_logic;
SIGNAL \display_data[4]~14_combout\ : std_logic;
SIGNAL \CONTROL|PE.READ~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.READ~q\ : std_logic;
SIGNAL \display_data[3]~13_combout\ : std_logic;
SIGNAL \display_data[3]~15_combout\ : std_logic;
SIGNAL \CONV_R|LessThan5~0_combout\ : std_logic;
SIGNAL \display_data[3]~16_combout\ : std_logic;
SIGNAL \display_data[3]~17_combout\ : std_logic;
SIGNAL \display_data[1]~8_combout\ : std_logic;
SIGNAL \display_data[1]~5_combout\ : std_logic;
SIGNAL \display_data[1]~4_combout\ : std_logic;
SIGNAL \display_data[2]~10_combout\ : std_logic;
SIGNAL \display_data[1]~3_combout\ : std_logic;
SIGNAL \display_data[2]~11_combout\ : std_logic;
SIGNAL \display_data[2]~12_combout\ : std_logic;
SIGNAL \display_data[0]~0_combout\ : std_logic;
SIGNAL \display_data[0]~1_combout\ : std_logic;
SIGNAL \display_data[0]~2_combout\ : std_logic;
SIGNAL \display_data[1]~6_combout\ : std_logic;
SIGNAL \display_data[1]~7_combout\ : std_logic;
SIGNAL \display_data[1]~9_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux0~0_combout\ : std_logic;
SIGNAL \CONV_R|LessThan0~0_combout\ : std_logic;
SIGNAL \CONV_R|LessThan4~0_combout\ : std_logic;
SIGNAL \CONV_R|bcd~10_combout\ : std_logic;
SIGNAL \CONV_R|bcd~11_combout\ : std_logic;
SIGNAL \CONV_R|bcd~9_combout\ : std_logic;
SIGNAL \CONV_R|Add6~1_combout\ : std_logic;
SIGNAL \display_data[7]~31_combout\ : std_logic;
SIGNAL \display_data[5]~68_combout\ : std_logic;
SIGNAL \display_data[5]~69_combout\ : std_logic;
SIGNAL \display_data[5]~23_combout\ : std_logic;
SIGNAL \display_data[7]~32_combout\ : std_logic;
SIGNAL \display_data[7]~33_combout\ : std_logic;
SIGNAL \display_data[7]~34_combout\ : std_logic;
SIGNAL \display_data[4]~18_combout\ : std_logic;
SIGNAL \display_data[4]~19_combout\ : std_logic;
SIGNAL \display_data[4]~20_combout\ : std_logic;
SIGNAL \display_data[4]~21_combout\ : std_logic;
SIGNAL \CONV_R|Add6~0_combout\ : std_logic;
SIGNAL \display_data[6]~27_combout\ : std_logic;
SIGNAL \display_data[6]~28_combout\ : std_logic;
SIGNAL \display_data[6]~29_combout\ : std_logic;
SIGNAL \display_data[6]~30_combout\ : std_logic;
SIGNAL \CONV_R|LessThan2~0_combout\ : std_logic;
SIGNAL \CONV_R|LessThan3~0_combout\ : std_logic;
SIGNAL \display_data[5]~22_combout\ : std_logic;
SIGNAL \display_data[5]~24_combout\ : std_logic;
SIGNAL \display_data[5]~25_combout\ : std_logic;
SIGNAL \display_data[5]~26_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux0~0_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~0_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~1_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~2_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~4_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~5_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~3_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~7_combout\ : std_logic;
SIGNAL \display_data[10]~41_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~6_combout\ : std_logic;
SIGNAL \CONV_Q|LessThan5~0_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~8_combout\ : std_logic;
SIGNAL \display_data[11]~38_combout\ : std_logic;
SIGNAL \display_data[10]~42_combout\ : std_logic;
SIGNAL \display_data[10]~43_combout\ : std_logic;
SIGNAL \display_data[10]~44_combout\ : std_logic;
SIGNAL \display_data[9]~37_combout\ : std_logic;
SIGNAL \display_data[9]~39_combout\ : std_logic;
SIGNAL \display_data[9]~40_combout\ : std_logic;
SIGNAL \display_data[8]~35_combout\ : std_logic;
SIGNAL \display_data[8]~36_combout\ : std_logic;
SIGNAL \display_data[11]~45_combout\ : std_logic;
SIGNAL \display_data[11]~46_combout\ : std_logic;
SIGNAL \display_data[11]~47_combout\ : std_logic;
SIGNAL \display_data[11]~48_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux0~0_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~13_combout\ : std_logic;
SIGNAL \display_data[14]~61_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~9_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~10_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~11_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~12_combout\ : std_logic;
SIGNAL \CONV_Q|bcd~14_combout\ : std_logic;
SIGNAL \display_data[14]~54_combout\ : std_logic;
SIGNAL \display_data[14]~55_combout\ : std_logic;
SIGNAL \display_data[14]~56_combout\ : std_logic;
SIGNAL \display_data[14]~57_combout\ : std_logic;
SIGNAL \display_data[14]~62_combout\ : std_logic;
SIGNAL \display_data[14]~63_combout\ : std_logic;
SIGNAL \display_data[14]~64_combout\ : std_logic;
SIGNAL \CONV_Q|LessThan2~0_combout\ : std_logic;
SIGNAL \CONV_Q|LessThan3~0_combout\ : std_logic;
SIGNAL \display_data[13]~53_combout\ : std_logic;
SIGNAL \display_data[13]~58_combout\ : std_logic;
SIGNAL \display_data[13]~59_combout\ : std_logic;
SIGNAL \display_data[13]~60_combout\ : std_logic;
SIGNAL \display_data[15]~65_combout\ : std_logic;
SIGNAL \display_data[15]~66_combout\ : std_logic;
SIGNAL \display_data[15]~67_combout\ : std_logic;
SIGNAL \display_data[12]~49_combout\ : std_logic;
SIGNAL \display_data[12]~50_combout\ : std_logic;
SIGNAL \display_data[12]~51_combout\ : std_logic;
SIGNAL \display_data[12]~52_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|led_erro_ba~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|led_erro_b0~0_combout\ : std_logic;
SIGNAL \reg2_quociente[9]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[10]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[12]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg6|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg5|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL reg3_resto : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL reg2_quociente : std_logic_vector(15 DOWNTO 0);
SIGNAL \HEX3_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX2_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX1_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX0_INST|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
var_quociente <= ww_var_quociente;
var_resto <= ww_var_resto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\HEX3_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX3_INST|Mux0~0_combout\;
\HEX2_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX2_INST|Mux0~0_combout\;
\HEX1_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX1_INST|Mux0~0_combout\;
\HEX0_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX0_INST|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y0_N16
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0_INST|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1_INST|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2_INST|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3_INST|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALGORITMO|U_PC|led_erro_ba~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALGORITMO|U_PC|led_erro_b0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\var_quociente[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(0),
	devoe => ww_devoe,
	o => \var_quociente[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\var_quociente[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(1),
	devoe => ww_devoe,
	o => \var_quociente[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\var_quociente[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(2),
	devoe => ww_devoe,
	o => \var_quociente[2]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\var_quociente[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(3),
	devoe => ww_devoe,
	o => \var_quociente[3]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\var_quociente[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(4),
	devoe => ww_devoe,
	o => \var_quociente[4]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\var_quociente[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(5),
	devoe => ww_devoe,
	o => \var_quociente[5]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\var_quociente[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(6),
	devoe => ww_devoe,
	o => \var_quociente[6]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\var_quociente[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(7),
	devoe => ww_devoe,
	o => \var_quociente[7]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\var_quociente[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(8),
	devoe => ww_devoe,
	o => \var_quociente[8]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\var_quociente[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(9),
	devoe => ww_devoe,
	o => \var_quociente[9]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\var_quociente[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(10),
	devoe => ww_devoe,
	o => \var_quociente[10]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\var_quociente[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(11),
	devoe => ww_devoe,
	o => \var_quociente[11]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\var_quociente[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(12),
	devoe => ww_devoe,
	o => \var_quociente[12]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\var_quociente[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(13),
	devoe => ww_devoe,
	o => \var_quociente[13]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\var_quociente[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(14),
	devoe => ww_devoe,
	o => \var_quociente[14]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\var_quociente[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg2_quociente(15),
	devoe => ww_devoe,
	o => \var_quociente[15]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\var_resto[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(0),
	devoe => ww_devoe,
	o => \var_resto[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\var_resto[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(1),
	devoe => ww_devoe,
	o => \var_resto[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\var_resto[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(2),
	devoe => ww_devoe,
	o => \var_resto[2]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\var_resto[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(3),
	devoe => ww_devoe,
	o => \var_resto[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\var_resto[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(4),
	devoe => ww_devoe,
	o => \var_resto[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\var_resto[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(5),
	devoe => ww_devoe,
	o => \var_resto[5]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\var_resto[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(6),
	devoe => ww_devoe,
	o => \var_resto[6]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\var_resto[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(7),
	devoe => ww_devoe,
	o => \var_resto[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\var_resto[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(8),
	devoe => ww_devoe,
	o => \var_resto[8]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\var_resto[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(9),
	devoe => ww_devoe,
	o => \var_resto[9]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\var_resto[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(10),
	devoe => ww_devoe,
	o => \var_resto[10]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\var_resto[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(11),
	devoe => ww_devoe,
	o => \var_resto[11]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\var_resto[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(12),
	devoe => ww_devoe,
	o => \var_resto[12]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\var_resto[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(13),
	devoe => ww_devoe,
	o => \var_resto[13]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\var_resto[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(14),
	devoe => ww_devoe,
	o => \var_resto[14]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\var_resto[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg3_resto(15),
	devoe => ww_devoe,
	o => \var_resto[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X100_Y16_N14
\ALGORITMO|U_PC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector0~0_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \ALGORITMO|U_PC|Selector0~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X100_Y16_N15
\ALGORITMO|U_PC|estado_atual.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector0~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X100_Y16_N22
\ALGORITMO|U_PC|proximo_estado.S_REQ_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \KEY[0]~input_o\,
	combout => \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\);

-- Location: FF_X100_Y16_N23
\ALGORITMO|U_PC|estado_atual.S_REQ_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\);

-- Location: FF_X100_Y16_N3
\ALGORITMO|U_PC|estado_atual.S_SAVE_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\);

-- Location: LCCOMB_X100_Y16_N30
\ALGORITMO|U_PC|estado_atual.S_REQ_B~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_REQ_B~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_REQ_B~feeder_combout\);

-- Location: FF_X100_Y16_N31
\ALGORITMO|U_PC|estado_atual.S_REQ_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_REQ_B~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\);

-- Location: LCCOMB_X100_Y16_N12
\ALGORITMO|U_PC|estado_atual.S_SAVE_B~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_SAVE_B~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~feeder_combout\);

-- Location: FF_X100_Y16_N13
\ALGORITMO|U_PC|estado_atual.S_SAVE_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\);

-- Location: LCCOMB_X100_Y17_N14
\ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\);

-- Location: FF_X100_Y17_N15
\ALGORITMO|U_PC|estado_atual.S_REQ_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\);

-- Location: FF_X100_Y17_N1
\ALGORITMO|U_PC|estado_atual.S_SAVE_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\);

-- Location: FF_X102_Y17_N19
\ALGORITMO|U_PC|estado_atual.S_WRITE_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\);

-- Location: LCCOMB_X100_Y16_N4
\ALGORITMO|U_PC|estado_atual.S_CHECK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_CHECK~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_CHECK~feeder_combout\);

-- Location: FF_X100_Y16_N5
\ALGORITMO|U_PC|estado_atual.S_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_CHECK~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\);

-- Location: LCCOMB_X102_Y13_N20
\ALGORITMO|U_PO|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~92_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ & (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_A\(15) & !\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_A\(15),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~92_combout\);

-- Location: LCCOMB_X101_Y15_N6
\ALGORITMO|U_PC|sel_escrita[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|sel_escrita[1]~1_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ & !\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\);

-- Location: LCCOMB_X102_Y13_N22
\ALGORITMO|U_PO|reg_B[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_B[15]~feeder_combout\ = \OPERATIVA|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux0~4_combout\,
	combout => \ALGORITMO|U_PO|reg_B[15]~feeder_combout\);

-- Location: FF_X102_Y13_N23
\ALGORITMO|U_PO|reg_B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_B[15]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(15));

-- Location: LCCOMB_X102_Y13_N18
\ALGORITMO|U_PO|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~93_combout\ = (\ALGORITMO|U_PO|reg_B\(15)) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(15),
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~93_combout\);

-- Location: LCCOMB_X103_Y13_N20
\ALGORITMO|U_PO|reg_R[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[15]~feeder_combout\ = \OPERATIVA|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux0~4_combout\,
	combout => \ALGORITMO|U_PO|reg_R[15]~feeder_combout\);

-- Location: FF_X103_Y13_N21
\ALGORITMO|U_PO|reg_R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[15]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(15));

-- Location: FF_X103_Y13_N3
\ALGORITMO|U_PO|reg_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux0~4_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(15));

-- Location: LCCOMB_X103_Y13_N2
\ALGORITMO|U_PO|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~94_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(15))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(15)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_R\(15),
	datac => \ALGORITMO|U_PO|reg_Q\(15),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~94_combout\);

-- Location: LCCOMB_X102_Y13_N12
\ALGORITMO|U_PO|reg_A[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[14]~feeder_combout\ = \OPERATIVA|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux1~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[14]~feeder_combout\);

-- Location: FF_X102_Y13_N13
\ALGORITMO|U_PO|reg_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[14]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(14));

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X102_Y13_N4
\ALGORITMO|U_PO|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~90_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|reg_A\(14) & ((!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(14),
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \SW[14]~input_o\,
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~90_combout\);

-- Location: LCCOMB_X102_Y13_N26
\ALGORITMO|U_PO|reg_B[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_B[14]~feeder_combout\ = \OPERATIVA|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux1~4_combout\,
	combout => \ALGORITMO|U_PO|reg_B[14]~feeder_combout\);

-- Location: FF_X102_Y13_N27
\ALGORITMO|U_PO|reg_B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_B[14]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(14));

-- Location: LCCOMB_X101_Y14_N6
\ALGORITMO|U_PO|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~86_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PO|reg_B\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(14),
	combout => \ALGORITMO|U_PO|Add0~86_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X100_Y16_N26
\po_endereco[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~4_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_REQ_A~q\ & (!\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_CHECK~q\ & !\ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	combout => \po_endereco[1]~4_combout\);

-- Location: LCCOMB_X100_Y16_N10
\po_endereco[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~3_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\ & (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_REQ_B~q\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \po_endereco[1]~3_combout\);

-- Location: LCCOMB_X100_Y16_N6
\po_endereco[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~5_combout\ = (\SW[16]~input_o\ & (((\po_endereco[1]~4_combout\ & \po_endereco[1]~3_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))) # (!\SW[16]~input_o\ & (((\po_endereco[1]~4_combout\ & \po_endereco[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \po_endereco[1]~4_combout\,
	datad => \po_endereco[1]~3_combout\,
	combout => \po_endereco[1]~5_combout\);

-- Location: LCCOMB_X100_Y17_N24
\ALGORITMO|U_PO|reg_A[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[13]~feeder_combout\ = \OPERATIVA|Mux2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux2~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[13]~feeder_combout\);

-- Location: FF_X100_Y17_N25
\ALGORITMO|U_PO|reg_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[13]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(13));

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X100_Y17_N18
\ALGORITMO|U_PO|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~84_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|reg_A\(13) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PO|reg_A\(13),
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \SW[13]~input_o\,
	combout => \ALGORITMO|U_PO|Add0~84_combout\);

-- Location: FF_X101_Y17_N11
\ALGORITMO|U_PO|reg_Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux2~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(13));

-- Location: FF_X101_Y17_N25
\ALGORITMO|U_PO|reg_R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux2~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(13));

-- Location: LCCOMB_X101_Y17_N24
\ALGORITMO|U_PO|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~81_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(13))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(13))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(13),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(13),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~81_combout\);

-- Location: LCCOMB_X102_Y13_N24
\ALGORITMO|U_PO|reg_A[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[12]~feeder_combout\ = \OPERATIVA|Mux3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux3~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[12]~feeder_combout\);

-- Location: FF_X102_Y13_N25
\ALGORITMO|U_PO|reg_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[12]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(12));

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X102_Y13_N10
\ALGORITMO|U_PO|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~78_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|reg_A\(12) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(12),
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \SW[12]~input_o\,
	combout => \ALGORITMO|U_PO|Add0~78_combout\);

-- Location: FF_X103_Y14_N9
\ALGORITMO|U_PO|reg_Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux3~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(12));

-- Location: FF_X103_Y14_N25
\ALGORITMO|U_PO|reg_R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux3~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(12));

-- Location: LCCOMB_X103_Y14_N24
\ALGORITMO|U_PO|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~75_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(12))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(12))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(12),
	datac => \ALGORITMO|U_PO|reg_R\(12),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~75_combout\);

-- Location: FF_X102_Y17_N13
\ALGORITMO|U_PO|reg_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux4~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(11));

-- Location: LCCOMB_X101_Y14_N28
\ALGORITMO|U_PO|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~68_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PO|reg_B\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(11),
	combout => \ALGORITMO|U_PO|Add0~68_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X103_Y17_N21
\ALGORITMO|U_PO|reg_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux5~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(10));

-- Location: LCCOMB_X103_Y14_N28
\ALGORITMO|U_PO|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~66_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|reg_A\(10) & !\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[10]~input_o\,
	datac => \ALGORITMO|U_PO|reg_A\(10),
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~66_combout\);

-- Location: FF_X102_Y17_N29
\ALGORITMO|U_PO|reg_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux5~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(10));

-- Location: LCCOMB_X102_Y17_N4
\ALGORITMO|U_PO|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~62_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(10)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(10),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~62_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X102_Y13_N14
\ALGORITMO|U_PO|reg_A[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[9]~feeder_combout\ = \OPERATIVA|Mux6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux6~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[9]~feeder_combout\);

-- Location: FF_X102_Y13_N15
\ALGORITMO|U_PO|reg_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[9]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(9));

-- Location: LCCOMB_X102_Y13_N28
\ALGORITMO|U_PO|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~60_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|reg_A\(9) & !\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALGORITMO|U_PO|reg_A\(9),
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~60_combout\);

-- Location: FF_X102_Y17_N27
\ALGORITMO|U_PO|reg_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux6~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(9));

-- Location: LCCOMB_X102_Y17_N16
\ALGORITMO|U_PO|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~56_combout\ = (\ALGORITMO|U_PO|reg_B\(9)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(9),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~56_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X103_Y17_N3
\ALGORITMO|U_PO|reg_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux7~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(8));

-- Location: LCCOMB_X103_Y15_N0
\ALGORITMO|U_PO|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~54_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & \ALGORITMO|U_PO|reg_A\(8))))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \ALGORITMO|U_PO|reg_A\(8),
	combout => \ALGORITMO|U_PO|Add0~54_combout\);

-- Location: FF_X102_Y17_N17
\ALGORITMO|U_PO|reg_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux7~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(8));

-- Location: LCCOMB_X102_Y17_N20
\ALGORITMO|U_PO|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~50_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PO|reg_B\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(8),
	combout => \ALGORITMO|U_PO|Add0~50_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X100_Y17_N12
\ALGORITMO|U_PO|reg_A[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[7]~feeder_combout\ = \OPERATIVA|Mux8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux8~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[7]~feeder_combout\);

-- Location: FF_X100_Y17_N13
\ALGORITMO|U_PO|reg_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[7]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(7));

-- Location: LCCOMB_X103_Y14_N14
\ALGORITMO|U_PO|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~38_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|reg_A\(7) & !\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[7]~input_o\,
	datac => \ALGORITMO|U_PO|reg_A\(7),
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~38_combout\);

-- Location: FF_X101_Y17_N23
\ALGORITMO|U_PO|reg_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux8~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(7));

-- Location: FF_X101_Y17_N13
\ALGORITMO|U_PO|reg_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux8~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(7));

-- Location: LCCOMB_X101_Y17_N12
\ALGORITMO|U_PO|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~15_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(7))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(7))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(7),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(7),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~15_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X100_Y17_N6
\ALGORITMO|U_PO|reg_A[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[6]~feeder_combout\ = \OPERATIVA|Mux9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux9~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[6]~feeder_combout\);

-- Location: FF_X100_Y17_N7
\ALGORITMO|U_PO|reg_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[6]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(6));

-- Location: FF_X101_Y17_N31
\ALGORITMO|U_PO|reg_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux9~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(6));

-- Location: FF_X101_Y17_N5
\ALGORITMO|U_PO|reg_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux9~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(6));

-- Location: LCCOMB_X101_Y17_N30
\ALGORITMO|U_PO|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~17_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(6))))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(6)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(6),
	datad => \ALGORITMO|U_PO|reg_Q\(6),
	combout => \ALGORITMO|U_PO|Add0~17_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X103_Y17_N1
\ALGORITMO|U_PO|reg_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(5));

-- Location: FF_X102_Y17_N31
\ALGORITMO|U_PO|reg_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(5));

-- Location: LCCOMB_X102_Y17_N0
\ALGORITMO|U_PO|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~18_combout\ = (\ALGORITMO|U_PO|reg_B\(5)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(5),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~18_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X101_Y17_N7
\ALGORITMO|U_PO|reg_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux11~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(4));

-- Location: FF_X101_Y17_N21
\ALGORITMO|U_PO|reg_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux11~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(4));

-- Location: LCCOMB_X101_Y17_N20
\ALGORITMO|U_PO|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~21_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(4))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(4))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(4),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(4),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~21_combout\);

-- Location: FF_X101_Y17_N17
\ALGORITMO|U_PO|reg_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux12~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(3));

-- Location: FF_X101_Y17_N3
\ALGORITMO|U_PO|reg_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux12~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(3));

-- Location: LCCOMB_X101_Y17_N2
\ALGORITMO|U_PO|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~23_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(3))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(3))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(3),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(3),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~23_combout\);

-- Location: LCCOMB_X102_Y17_N24
\ALGORITMO|U_PO|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~22_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(3)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(3),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~22_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X100_Y17_N20
\ALGORITMO|U_PO|reg_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[2]~feeder_combout\ = \OPERATIVA|Mux13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux13~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[2]~feeder_combout\);

-- Location: FF_X100_Y17_N21
\ALGORITMO|U_PO|reg_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[2]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(2));

-- Location: FF_X101_Y17_N27
\ALGORITMO|U_PO|reg_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux13~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(2));

-- Location: FF_X101_Y17_N9
\ALGORITMO|U_PO|reg_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux13~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(2));

-- Location: LCCOMB_X101_Y17_N8
\ALGORITMO|U_PO|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~25_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(2))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(2))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(2),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(2),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~25_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X100_Y17_N30
\ALGORITMO|U_PO|reg_A[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[1]~feeder_combout\ = \OPERATIVA|Mux14~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux14~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[1]~feeder_combout\);

-- Location: FF_X100_Y17_N31
\ALGORITMO|U_PO|reg_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[1]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(1));

-- Location: FF_X101_Y17_N29
\ALGORITMO|U_PO|reg_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux14~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(1));

-- Location: LCCOMB_X101_Y17_N18
\ALGORITMO|U_PO|reg_R[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[1]~feeder_combout\ = \OPERATIVA|Mux14~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux14~6_combout\,
	combout => \ALGORITMO|U_PO|reg_R[1]~feeder_combout\);

-- Location: FF_X101_Y17_N19
\ALGORITMO|U_PO|reg_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[1]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(1));

-- Location: LCCOMB_X102_Y17_N18
\ALGORITMO|U_PO|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~9_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(1))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(1))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(1),
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PO|reg_R\(1),
	combout => \ALGORITMO|U_PO|Add0~9_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X103_Y17_N13
\ALGORITMO|U_PO|reg_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(0));

-- Location: LCCOMB_X103_Y15_N10
\ALGORITMO|U_PO|reg_R[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[0]~feeder_combout\ = \OPERATIVA|Mux15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux15~6_combout\,
	combout => \ALGORITMO|U_PO|reg_R[0]~feeder_combout\);

-- Location: FF_X103_Y15_N11
\ALGORITMO|U_PO|reg_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[0]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(0));

-- Location: FF_X103_Y15_N25
\ALGORITMO|U_PO|reg_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(0));

-- Location: LCCOMB_X103_Y15_N24
\ALGORITMO|U_PO|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~1_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(0))))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(0)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(0),
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_Q\(0),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~1_combout\);

-- Location: LCCOMB_X102_Y15_N16
\ALGORITMO|U_PO|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~3_cout\ = CARRY((!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & !\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => VCC,
	cout => \ALGORITMO|U_PO|Add0~3_cout\);

-- Location: LCCOMB_X102_Y15_N18
\ALGORITMO|U_PO|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~4_combout\ = (\ALGORITMO|U_PO|Add0~0_combout\ & ((\ALGORITMO|U_PO|Add0~1_combout\ & (\ALGORITMO|U_PO|Add0~3_cout\ & VCC)) # (!\ALGORITMO|U_PO|Add0~1_combout\ & (!\ALGORITMO|U_PO|Add0~3_cout\)))) # (!\ALGORITMO|U_PO|Add0~0_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~1_combout\ & (!\ALGORITMO|U_PO|Add0~3_cout\)) # (!\ALGORITMO|U_PO|Add0~1_combout\ & ((\ALGORITMO|U_PO|Add0~3_cout\) # (GND)))))
-- \ALGORITMO|U_PO|Add0~5\ = CARRY((\ALGORITMO|U_PO|Add0~0_combout\ & (!\ALGORITMO|U_PO|Add0~1_combout\ & !\ALGORITMO|U_PO|Add0~3_cout\)) # (!\ALGORITMO|U_PO|Add0~0_combout\ & ((!\ALGORITMO|U_PO|Add0~3_cout\) # (!\ALGORITMO|U_PO|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~0_combout\,
	datab => \ALGORITMO|U_PO|Add0~1_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~3_cout\,
	combout => \ALGORITMO|U_PO|Add0~4_combout\,
	cout => \ALGORITMO|U_PO|Add0~5\);

-- Location: LCCOMB_X101_Y15_N2
\ALGORITMO|U_PO|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~6_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(0)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|reg_A\(0),
	datad => \ALGORITMO|U_PO|Add0~4_combout\,
	combout => \ALGORITMO|U_PO|Add0~6_combout\);

-- Location: LCCOMB_X101_Y15_N4
\ALGORITMO|U_PO|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~7_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~6_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~6_combout\,
	combout => \ALGORITMO|U_PO|Add0~7_combout\);

-- Location: LCCOMB_X101_Y16_N18
\po_endereco[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[2]~6_combout\ = (\SW[17]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \po_endereco[2]~6_combout\);

-- Location: LCCOMB_X100_Y16_N28
\po_endereco[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~7_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ & !\ALGORITMO|U_PC|estado_atual.S_INIT_R~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	combout => \po_endereco[0]~7_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X108_Y16_N0
\CONTROL|PE.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.IDLE~0_combout\ = (!\CONTROL|EA.IDLE~q\ & ((!\KEY[1]~input_o\) # (!\KEY[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \CONTROL|EA.IDLE~q\,
	datad => \KEY[1]~input_o\,
	combout => \CONTROL|PE.IDLE~0_combout\);

-- Location: FF_X108_Y16_N1
\CONTROL|EA.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CONTROL|PE.IDLE~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.IDLE~q\);

-- Location: LCCOMB_X108_Y16_N16
\CONTROL|PE.WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.WRITE~0_combout\ = (!\CONTROL|EA.IDLE~q\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL|EA.IDLE~q\,
	datac => \KEY[2]~input_o\,
	combout => \CONTROL|PE.WRITE~0_combout\);

-- Location: FF_X108_Y16_N17
\CONTROL|EA.WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CONTROL|PE.WRITE~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.WRITE~q\);

-- Location: LCCOMB_X101_Y16_N22
\po_we~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_we~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)) # (!\po_endereco[0]~7_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \po_endereco[0]~7_combout\,
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \CONTROL|EA.WRITE~q\,
	combout => \po_we~0_combout\);

-- Location: LCCOMB_X101_Y16_N10
\OPERATIVA|dec|enable[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[2]~5_combout\ = (!\po_endereco[0]~2_combout\ & (!\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & \po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[2]~5_combout\);

-- Location: FF_X101_Y15_N11
\OPERATIVA|reg2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(0));

-- Location: LCCOMB_X101_Y16_N4
\OPERATIVA|dec|enable[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[3]~0_combout\ = (\po_endereco[0]~2_combout\ & (!\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & \po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[3]~0_combout\);

-- Location: FF_X101_Y15_N9
\OPERATIVA|reg3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(0));

-- Location: LCCOMB_X101_Y16_N2
\OPERATIVA|dec|enable[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[0]~7_combout\ = (!\po_endereco[0]~2_combout\ & (!\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & !\po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[0]~7_combout\);

-- Location: FF_X100_Y15_N15
\OPERATIVA|reg0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(0));

-- Location: LCCOMB_X100_Y15_N28
\OPERATIVA|reg1|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg1|q[0]~feeder_combout\);

-- Location: LCCOMB_X101_Y16_N24
\OPERATIVA|dec|enable[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[1]~6_combout\ = (\po_endereco[0]~2_combout\ & (!\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & !\po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[1]~6_combout\);

-- Location: FF_X100_Y15_N29
\OPERATIVA|reg1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(0));

-- Location: LCCOMB_X100_Y15_N14
\OPERATIVA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~4_combout\ = (\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\) # ((\OPERATIVA|reg1|q\(0))))) # (!\po_endereco[0]~2_combout\ & (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg0|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg0|q\(0),
	datad => \OPERATIVA|reg1|q\(0),
	combout => \OPERATIVA|Mux15~4_combout\);

-- Location: LCCOMB_X101_Y15_N8
\OPERATIVA|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux15~4_combout\ & ((\OPERATIVA|reg3|q\(0)))) # (!\OPERATIVA|Mux15~4_combout\ & (\OPERATIVA|reg2|q\(0))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(0),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(0),
	datad => \OPERATIVA|Mux15~4_combout\,
	combout => \OPERATIVA|Mux15~5_combout\);

-- Location: LCCOMB_X102_Y16_N0
\OPERATIVA|reg5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg5|q[0]~feeder_combout\);

-- Location: LCCOMB_X101_Y16_N6
\OPERATIVA|dec|enable[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[5]~1_combout\ = (\po_endereco[0]~2_combout\ & (\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & !\po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[5]~1_combout\);

-- Location: FF_X102_Y16_N1
\OPERATIVA|reg5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(0));

-- Location: LCCOMB_X101_Y16_N16
\OPERATIVA|dec|enable[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[7]~4_combout\ = (\po_endereco[0]~2_combout\ & (\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & \po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[7]~4_combout\);

-- Location: FF_X102_Y16_N23
\OPERATIVA|reg7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(0));

-- Location: LCCOMB_X103_Y16_N20
\OPERATIVA|reg6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg6|q[0]~feeder_combout\);

-- Location: LCCOMB_X101_Y16_N28
\OPERATIVA|dec|enable[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[6]~2_combout\ = (!\po_endereco[0]~2_combout\ & (\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & \po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[6]~2_combout\);

-- Location: FF_X103_Y16_N21
\OPERATIVA|reg6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(0));

-- Location: LCCOMB_X101_Y16_N26
\OPERATIVA|dec|enable[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[4]~3_combout\ = (!\po_endereco[0]~2_combout\ & (\po_endereco[2]~6_combout\ & (\po_we~0_combout\ & !\po_endereco[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \po_we~0_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|dec|enable[4]~3_combout\);

-- Location: FF_X103_Y16_N27
\OPERATIVA|reg4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(0));

-- Location: LCCOMB_X103_Y16_N26
\OPERATIVA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(0)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(0) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(0),
	datac => \OPERATIVA|reg4|q\(0),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux15~2_combout\);

-- Location: LCCOMB_X102_Y16_N22
\OPERATIVA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux15~2_combout\ & ((\OPERATIVA|reg7|q\(0)))) # (!\OPERATIVA|Mux15~2_combout\ & (\OPERATIVA|reg5|q\(0))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(0),
	datac => \OPERATIVA|reg7|q\(0),
	datad => \OPERATIVA|Mux15~2_combout\,
	combout => \OPERATIVA|Mux15~3_combout\);

-- Location: LCCOMB_X103_Y15_N22
\OPERATIVA|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~6_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux15~5_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux15~3_combout\))))) # (!\SW[17]~input_o\ & 
-- (((\OPERATIVA|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \OPERATIVA|Mux15~5_combout\,
	datad => \OPERATIVA|Mux15~3_combout\,
	combout => \OPERATIVA|Mux15~6_combout\);

-- Location: FF_X102_Y17_N21
\ALGORITMO|U_PO|reg_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(0));

-- Location: LCCOMB_X102_Y17_N22
\ALGORITMO|U_PO|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~0_combout\ = ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\)) # (!\ALGORITMO|U_PO|reg_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(0),
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~0_combout\);

-- Location: LCCOMB_X102_Y15_N20
\ALGORITMO|U_PO|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~10_combout\ = ((\ALGORITMO|U_PO|Add0~8_combout\ $ (\ALGORITMO|U_PO|Add0~9_combout\ $ (\ALGORITMO|U_PO|Add0~5\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~11\ = CARRY((\ALGORITMO|U_PO|Add0~8_combout\ & (\ALGORITMO|U_PO|Add0~9_combout\ & !\ALGORITMO|U_PO|Add0~5\)) # (!\ALGORITMO|U_PO|Add0~8_combout\ & ((\ALGORITMO|U_PO|Add0~9_combout\) # (!\ALGORITMO|U_PO|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~8_combout\,
	datab => \ALGORITMO|U_PO|Add0~9_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~5\,
	combout => \ALGORITMO|U_PO|Add0~10_combout\,
	cout => \ALGORITMO|U_PO|Add0~11\);

-- Location: LCCOMB_X101_Y15_N28
\ALGORITMO|U_PO|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~12_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(1) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(1),
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|Add0~10_combout\,
	datad => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	combout => \ALGORITMO|U_PO|Add0~12_combout\);

-- Location: LCCOMB_X101_Y15_N0
\ALGORITMO|U_PO|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~13_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~12_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~12_combout\,
	combout => \ALGORITMO|U_PO|Add0~13_combout\);

-- Location: LCCOMB_X102_Y16_N24
\OPERATIVA|reg5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[1]~feeder_combout\ = \ALGORITMO|U_PO|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~13_combout\,
	combout => \OPERATIVA|reg5|q[1]~feeder_combout\);

-- Location: FF_X102_Y16_N25
\OPERATIVA|reg5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(1));

-- Location: FF_X102_Y16_N15
\OPERATIVA|reg7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(1));

-- Location: LCCOMB_X103_Y16_N16
\OPERATIVA|reg6|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[1]~feeder_combout\ = \ALGORITMO|U_PO|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~13_combout\,
	combout => \OPERATIVA|reg6|q[1]~feeder_combout\);

-- Location: FF_X103_Y16_N17
\OPERATIVA|reg6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(1));

-- Location: FF_X103_Y16_N19
\OPERATIVA|reg4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(1));

-- Location: LCCOMB_X103_Y16_N18
\OPERATIVA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(1)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(1) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(1),
	datac => \OPERATIVA|reg4|q\(1),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux14~2_combout\);

-- Location: LCCOMB_X102_Y16_N14
\OPERATIVA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux14~2_combout\ & ((\OPERATIVA|reg7|q\(1)))) # (!\OPERATIVA|Mux14~2_combout\ & (\OPERATIVA|reg5|q\(1))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(1),
	datac => \OPERATIVA|reg7|q\(1),
	datad => \OPERATIVA|Mux14~2_combout\,
	combout => \OPERATIVA|Mux14~3_combout\);

-- Location: FF_X101_Y15_N7
\OPERATIVA|reg2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(1));

-- Location: FF_X101_Y15_N13
\OPERATIVA|reg3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(1));

-- Location: FF_X100_Y15_N31
\OPERATIVA|reg0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(1));

-- Location: LCCOMB_X100_Y15_N4
\OPERATIVA|reg1|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[1]~feeder_combout\ = \ALGORITMO|U_PO|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~13_combout\,
	combout => \OPERATIVA|reg1|q[1]~feeder_combout\);

-- Location: FF_X100_Y15_N5
\OPERATIVA|reg1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(1));

-- Location: LCCOMB_X100_Y15_N30
\OPERATIVA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~4_combout\ = (\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\) # ((\OPERATIVA|reg1|q\(1))))) # (!\po_endereco[0]~2_combout\ & (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg0|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg0|q\(1),
	datad => \OPERATIVA|reg1|q\(1),
	combout => \OPERATIVA|Mux14~4_combout\);

-- Location: LCCOMB_X101_Y15_N12
\OPERATIVA|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux14~4_combout\ & ((\OPERATIVA|reg3|q\(1)))) # (!\OPERATIVA|Mux14~4_combout\ & (\OPERATIVA|reg2|q\(1))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(1),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(1),
	datad => \OPERATIVA|Mux14~4_combout\,
	combout => \OPERATIVA|Mux14~5_combout\);

-- Location: LCCOMB_X101_Y17_N28
\OPERATIVA|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux14~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux14~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux14~3_combout\,
	datad => \OPERATIVA|Mux14~5_combout\,
	combout => \OPERATIVA|Mux14~6_combout\);

-- Location: FF_X102_Y17_N5
\ALGORITMO|U_PO|reg_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux14~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(1));

-- Location: LCCOMB_X102_Y17_N26
\ALGORITMO|U_PO|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~8_combout\ = (\ALGORITMO|U_PO|reg_B\(1)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(1),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~8_combout\);

-- Location: LCCOMB_X102_Y15_N22
\ALGORITMO|U_PO|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~26_combout\ = (\ALGORITMO|U_PO|Add0~24_combout\ & ((\ALGORITMO|U_PO|Add0~25_combout\ & (!\ALGORITMO|U_PO|Add0~11\)) # (!\ALGORITMO|U_PO|Add0~25_combout\ & ((\ALGORITMO|U_PO|Add0~11\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~24_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~25_combout\ & (\ALGORITMO|U_PO|Add0~11\ & VCC)) # (!\ALGORITMO|U_PO|Add0~25_combout\ & (!\ALGORITMO|U_PO|Add0~11\))))
-- \ALGORITMO|U_PO|Add0~27\ = CARRY((\ALGORITMO|U_PO|Add0~24_combout\ & ((!\ALGORITMO|U_PO|Add0~11\) # (!\ALGORITMO|U_PO|Add0~25_combout\))) # (!\ALGORITMO|U_PO|Add0~24_combout\ & (!\ALGORITMO|U_PO|Add0~25_combout\ & !\ALGORITMO|U_PO|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~24_combout\,
	datab => \ALGORITMO|U_PO|Add0~25_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~11\,
	combout => \ALGORITMO|U_PO|Add0~26_combout\,
	cout => \ALGORITMO|U_PO|Add0~27\);

-- Location: LCCOMB_X101_Y15_N18
\ALGORITMO|U_PO|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~48_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(2)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|reg_A\(2),
	datad => \ALGORITMO|U_PO|Add0~26_combout\,
	combout => \ALGORITMO|U_PO|Add0~48_combout\);

-- Location: LCCOMB_X101_Y15_N14
\ALGORITMO|U_PO|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~49_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~48_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[2]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~48_combout\,
	combout => \ALGORITMO|U_PO|Add0~49_combout\);

-- Location: LCCOMB_X102_Y16_N12
\OPERATIVA|reg5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~49_combout\,
	combout => \OPERATIVA|reg5|q[2]~feeder_combout\);

-- Location: FF_X102_Y16_N13
\OPERATIVA|reg5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(2));

-- Location: FF_X102_Y16_N7
\OPERATIVA|reg7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~49_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(2));

-- Location: LCCOMB_X103_Y16_N0
\OPERATIVA|reg6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~49_combout\,
	combout => \OPERATIVA|reg6|q[2]~feeder_combout\);

-- Location: FF_X103_Y16_N1
\OPERATIVA|reg6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(2));

-- Location: FF_X103_Y16_N15
\OPERATIVA|reg4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~49_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(2));

-- Location: LCCOMB_X103_Y16_N14
\OPERATIVA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(2)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(2) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(2),
	datac => \OPERATIVA|reg4|q\(2),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux13~2_combout\);

-- Location: LCCOMB_X102_Y16_N6
\OPERATIVA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux13~2_combout\ & ((\OPERATIVA|reg7|q\(2)))) # (!\OPERATIVA|Mux13~2_combout\ & (\OPERATIVA|reg5|q\(2))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(2),
	datab => \po_endereco[0]~2_combout\,
	datac => \OPERATIVA|reg7|q\(2),
	datad => \OPERATIVA|Mux13~2_combout\,
	combout => \OPERATIVA|Mux13~3_combout\);

-- Location: LCCOMB_X101_Y15_N22
\OPERATIVA|reg2|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~49_combout\,
	combout => \OPERATIVA|reg2|q[2]~feeder_combout\);

-- Location: FF_X101_Y15_N23
\OPERATIVA|reg2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(2));

-- Location: FF_X101_Y15_N25
\OPERATIVA|reg3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~49_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(2));

-- Location: FF_X100_Y15_N23
\OPERATIVA|reg0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~49_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(2));

-- Location: LCCOMB_X100_Y15_N12
\OPERATIVA|reg1|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~49_combout\,
	combout => \OPERATIVA|reg1|q[2]~feeder_combout\);

-- Location: FF_X100_Y15_N13
\OPERATIVA|reg1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(2));

-- Location: LCCOMB_X100_Y15_N22
\OPERATIVA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~4_combout\ = (\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\) # ((\OPERATIVA|reg1|q\(2))))) # (!\po_endereco[0]~2_combout\ & (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg0|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg0|q\(2),
	datad => \OPERATIVA|reg1|q\(2),
	combout => \OPERATIVA|Mux13~4_combout\);

-- Location: LCCOMB_X101_Y15_N24
\OPERATIVA|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux13~4_combout\ & ((\OPERATIVA|reg3|q\(2)))) # (!\OPERATIVA|Mux13~4_combout\ & (\OPERATIVA|reg2|q\(2))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(2),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(2),
	datad => \OPERATIVA|Mux13~4_combout\,
	combout => \OPERATIVA|Mux13~5_combout\);

-- Location: LCCOMB_X101_Y17_N26
\OPERATIVA|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux13~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux13~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux13~3_combout\,
	datad => \OPERATIVA|Mux13~5_combout\,
	combout => \OPERATIVA|Mux13~6_combout\);

-- Location: FF_X102_Y17_N23
\ALGORITMO|U_PO|reg_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux13~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(2));

-- Location: LCCOMB_X102_Y17_N14
\ALGORITMO|U_PO|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~24_combout\ = (\ALGORITMO|U_PO|reg_B\(2)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(2),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~24_combout\);

-- Location: LCCOMB_X102_Y15_N24
\ALGORITMO|U_PO|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~28_combout\ = ((\ALGORITMO|U_PO|Add0~23_combout\ $ (\ALGORITMO|U_PO|Add0~22_combout\ $ (\ALGORITMO|U_PO|Add0~27\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~29\ = CARRY((\ALGORITMO|U_PO|Add0~23_combout\ & ((!\ALGORITMO|U_PO|Add0~27\) # (!\ALGORITMO|U_PO|Add0~22_combout\))) # (!\ALGORITMO|U_PO|Add0~23_combout\ & (!\ALGORITMO|U_PO|Add0~22_combout\ & !\ALGORITMO|U_PO|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~23_combout\,
	datab => \ALGORITMO|U_PO|Add0~22_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~27\,
	combout => \ALGORITMO|U_PO|Add0~28_combout\,
	cout => \ALGORITMO|U_PO|Add0~29\);

-- Location: LCCOMB_X102_Y15_N26
\ALGORITMO|U_PO|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~30_combout\ = (\ALGORITMO|U_PO|Add0~20_combout\ & ((\ALGORITMO|U_PO|Add0~21_combout\ & (!\ALGORITMO|U_PO|Add0~29\)) # (!\ALGORITMO|U_PO|Add0~21_combout\ & ((\ALGORITMO|U_PO|Add0~29\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~20_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~21_combout\ & (\ALGORITMO|U_PO|Add0~29\ & VCC)) # (!\ALGORITMO|U_PO|Add0~21_combout\ & (!\ALGORITMO|U_PO|Add0~29\))))
-- \ALGORITMO|U_PO|Add0~31\ = CARRY((\ALGORITMO|U_PO|Add0~20_combout\ & ((!\ALGORITMO|U_PO|Add0~29\) # (!\ALGORITMO|U_PO|Add0~21_combout\))) # (!\ALGORITMO|U_PO|Add0~20_combout\ & (!\ALGORITMO|U_PO|Add0~21_combout\ & !\ALGORITMO|U_PO|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~20_combout\,
	datab => \ALGORITMO|U_PO|Add0~21_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~29\,
	combout => \ALGORITMO|U_PO|Add0~30_combout\,
	cout => \ALGORITMO|U_PO|Add0~31\);

-- Location: LCCOMB_X100_Y17_N8
\ALGORITMO|U_PO|reg_A[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[4]~feeder_combout\ = \OPERATIVA|Mux11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux11~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[4]~feeder_combout\);

-- Location: FF_X100_Y17_N9
\ALGORITMO|U_PO|reg_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[4]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(4));

-- Location: LCCOMB_X102_Y15_N8
\ALGORITMO|U_PO|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~44_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & ((\ALGORITMO|U_PO|reg_A\(4))))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|Add0~30_combout\,
	datad => \ALGORITMO|U_PO|reg_A\(4),
	combout => \ALGORITMO|U_PO|Add0~44_combout\);

-- Location: LCCOMB_X102_Y15_N4
\ALGORITMO|U_PO|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~45_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~44_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \ALGORITMO|U_PO|Add0~44_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \ALGORITMO|U_PO|Add0~45_combout\);

-- Location: FF_X102_Y15_N19
\OPERATIVA|reg2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(4));

-- Location: FF_X101_Y15_N27
\OPERATIVA|reg3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(4));

-- Location: FF_X100_Y15_N11
\OPERATIVA|reg0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(4));

-- Location: LCCOMB_X100_Y15_N0
\OPERATIVA|reg1|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~45_combout\,
	combout => \OPERATIVA|reg1|q[4]~feeder_combout\);

-- Location: FF_X100_Y15_N1
\OPERATIVA|reg1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(4));

-- Location: LCCOMB_X100_Y15_N10
\OPERATIVA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~4_combout\ = (\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\) # ((\OPERATIVA|reg1|q\(4))))) # (!\po_endereco[0]~2_combout\ & (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg0|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg0|q\(4),
	datad => \OPERATIVA|reg1|q\(4),
	combout => \OPERATIVA|Mux11~4_combout\);

-- Location: LCCOMB_X101_Y15_N26
\OPERATIVA|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux11~4_combout\ & ((\OPERATIVA|reg3|q\(4)))) # (!\OPERATIVA|Mux11~4_combout\ & (\OPERATIVA|reg2|q\(4))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(4),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(4),
	datad => \OPERATIVA|Mux11~4_combout\,
	combout => \OPERATIVA|Mux11~5_combout\);

-- Location: LCCOMB_X102_Y16_N8
\OPERATIVA|reg5|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~45_combout\,
	combout => \OPERATIVA|reg5|q[4]~feeder_combout\);

-- Location: FF_X102_Y16_N9
\OPERATIVA|reg5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(4));

-- Location: FF_X102_Y16_N19
\OPERATIVA|reg7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(4));

-- Location: LCCOMB_X103_Y16_N4
\OPERATIVA|reg6|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~45_combout\,
	combout => \OPERATIVA|reg6|q[4]~feeder_combout\);

-- Location: FF_X103_Y16_N5
\OPERATIVA|reg6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(4));

-- Location: FF_X103_Y16_N23
\OPERATIVA|reg4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(4));

-- Location: LCCOMB_X103_Y16_N22
\OPERATIVA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(4)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(4) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(4),
	datac => \OPERATIVA|reg4|q\(4),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux11~2_combout\);

-- Location: LCCOMB_X102_Y16_N18
\OPERATIVA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux11~2_combout\ & ((\OPERATIVA|reg7|q\(4)))) # (!\OPERATIVA|Mux11~2_combout\ & (\OPERATIVA|reg5|q\(4))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(4),
	datac => \OPERATIVA|reg7|q\(4),
	datad => \OPERATIVA|Mux11~2_combout\,
	combout => \OPERATIVA|Mux11~3_combout\);

-- Location: LCCOMB_X101_Y17_N6
\OPERATIVA|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux11~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux11~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux11~5_combout\,
	datad => \OPERATIVA|Mux11~3_combout\,
	combout => \OPERATIVA|Mux11~6_combout\);

-- Location: FF_X102_Y17_N25
\ALGORITMO|U_PO|reg_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux11~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(4));

-- Location: LCCOMB_X102_Y17_N6
\ALGORITMO|U_PO|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~20_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(4)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(4),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~20_combout\);

-- Location: LCCOMB_X102_Y15_N28
\ALGORITMO|U_PO|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~32_combout\ = ((\ALGORITMO|U_PO|Add0~19_combout\ $ (\ALGORITMO|U_PO|Add0~18_combout\ $ (\ALGORITMO|U_PO|Add0~31\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~33\ = CARRY((\ALGORITMO|U_PO|Add0~19_combout\ & ((!\ALGORITMO|U_PO|Add0~31\) # (!\ALGORITMO|U_PO|Add0~18_combout\))) # (!\ALGORITMO|U_PO|Add0~19_combout\ & (!\ALGORITMO|U_PO|Add0~18_combout\ & !\ALGORITMO|U_PO|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~19_combout\,
	datab => \ALGORITMO|U_PO|Add0~18_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~31\,
	combout => \ALGORITMO|U_PO|Add0~32_combout\,
	cout => \ALGORITMO|U_PO|Add0~33\);

-- Location: LCCOMB_X102_Y15_N2
\ALGORITMO|U_PO|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~42_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(5) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(5),
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datad => \ALGORITMO|U_PO|Add0~32_combout\,
	combout => \ALGORITMO|U_PO|Add0~42_combout\);

-- Location: LCCOMB_X102_Y15_N14
\ALGORITMO|U_PO|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~43_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~42_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~42_combout\,
	combout => \ALGORITMO|U_PO|Add0~43_combout\);

-- Location: FF_X102_Y15_N27
\OPERATIVA|reg3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(5));

-- Location: FF_X102_Y15_N31
\OPERATIVA|reg2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(5));

-- Location: LCCOMB_X100_Y15_N16
\OPERATIVA|reg1|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg1|q[5]~feeder_combout\);

-- Location: FF_X100_Y15_N17
\OPERATIVA|reg1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(5));

-- Location: LCCOMB_X100_Y15_N26
\OPERATIVA|reg0|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg0|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg0|q[5]~feeder_combout\);

-- Location: FF_X100_Y15_N27
\OPERATIVA|reg0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg0|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(5));

-- Location: LCCOMB_X103_Y15_N18
\OPERATIVA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(5))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg1|q\(5),
	datab => \OPERATIVA|reg0|q\(5),
	datac => \po_endereco[1]~5_combout\,
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux10~4_combout\);

-- Location: LCCOMB_X103_Y15_N4
\OPERATIVA|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux10~4_combout\ & (\OPERATIVA|reg3|q\(5))) # (!\OPERATIVA|Mux10~4_combout\ & ((\OPERATIVA|reg2|q\(5)))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(5),
	datab => \OPERATIVA|reg2|q\(5),
	datac => \po_endereco[1]~5_combout\,
	datad => \OPERATIVA|Mux10~4_combout\,
	combout => \OPERATIVA|Mux10~5_combout\);

-- Location: LCCOMB_X102_Y18_N24
\OPERATIVA|reg5|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg5|q[5]~feeder_combout\);

-- Location: FF_X102_Y18_N25
\OPERATIVA|reg5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(5));

-- Location: FF_X102_Y18_N15
\OPERATIVA|reg7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(5));

-- Location: LCCOMB_X101_Y18_N24
\OPERATIVA|reg6|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg6|q[5]~feeder_combout\);

-- Location: FF_X101_Y18_N25
\OPERATIVA|reg6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(5));

-- Location: FF_X101_Y18_N15
\OPERATIVA|reg4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(5));

-- Location: LCCOMB_X101_Y18_N14
\OPERATIVA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(5)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(5) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(5),
	datac => \OPERATIVA|reg4|q\(5),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux10~2_combout\);

-- Location: LCCOMB_X102_Y18_N14
\OPERATIVA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux10~2_combout\ & ((\OPERATIVA|reg7|q\(5)))) # (!\OPERATIVA|Mux10~2_combout\ & (\OPERATIVA|reg5|q\(5))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(5),
	datac => \OPERATIVA|reg7|q\(5),
	datad => \OPERATIVA|Mux10~2_combout\,
	combout => \OPERATIVA|Mux10~3_combout\);

-- Location: LCCOMB_X103_Y15_N8
\OPERATIVA|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~6_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux10~5_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux10~3_combout\))))) # (!\SW[17]~input_o\ & 
-- (((\OPERATIVA|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \OPERATIVA|Mux10~5_combout\,
	datad => \OPERATIVA|Mux10~3_combout\,
	combout => \OPERATIVA|Mux10~6_combout\);

-- Location: FF_X103_Y15_N9
\ALGORITMO|U_PO|reg_R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux10~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(5));

-- Location: FF_X103_Y15_N7
\ALGORITMO|U_PO|reg_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(5));

-- Location: LCCOMB_X103_Y15_N6
\ALGORITMO|U_PO|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~19_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(5))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(5)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_R\(5),
	datac => \ALGORITMO|U_PO|reg_Q\(5),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~19_combout\);

-- Location: LCCOMB_X102_Y15_N30
\ALGORITMO|U_PO|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~34_combout\ = (\ALGORITMO|U_PO|Add0~16_combout\ & ((\ALGORITMO|U_PO|Add0~17_combout\ & (!\ALGORITMO|U_PO|Add0~33\)) # (!\ALGORITMO|U_PO|Add0~17_combout\ & ((\ALGORITMO|U_PO|Add0~33\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~16_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~17_combout\ & (\ALGORITMO|U_PO|Add0~33\ & VCC)) # (!\ALGORITMO|U_PO|Add0~17_combout\ & (!\ALGORITMO|U_PO|Add0~33\))))
-- \ALGORITMO|U_PO|Add0~35\ = CARRY((\ALGORITMO|U_PO|Add0~16_combout\ & ((!\ALGORITMO|U_PO|Add0~33\) # (!\ALGORITMO|U_PO|Add0~17_combout\))) # (!\ALGORITMO|U_PO|Add0~16_combout\ & (!\ALGORITMO|U_PO|Add0~17_combout\ & !\ALGORITMO|U_PO|Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~16_combout\,
	datab => \ALGORITMO|U_PO|Add0~17_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~33\,
	combout => \ALGORITMO|U_PO|Add0~34_combout\,
	cout => \ALGORITMO|U_PO|Add0~35\);

-- Location: LCCOMB_X102_Y15_N0
\ALGORITMO|U_PO|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~40_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(6) & ((!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PO|reg_A\(6),
	datac => \ALGORITMO|U_PO|Add0~34_combout\,
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~40_combout\);

-- Location: LCCOMB_X102_Y15_N12
\ALGORITMO|U_PO|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~41_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~40_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[6]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~40_combout\,
	combout => \ALGORITMO|U_PO|Add0~41_combout\);

-- Location: LCCOMB_X102_Y18_N0
\OPERATIVA|reg5|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~41_combout\,
	combout => \OPERATIVA|reg5|q[6]~feeder_combout\);

-- Location: FF_X102_Y18_N1
\OPERATIVA|reg5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(6));

-- Location: FF_X102_Y18_N3
\OPERATIVA|reg7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~41_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(6));

-- Location: LCCOMB_X103_Y16_N8
\OPERATIVA|reg6|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~41_combout\,
	combout => \OPERATIVA|reg6|q[6]~feeder_combout\);

-- Location: FF_X103_Y16_N9
\OPERATIVA|reg6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(6));

-- Location: FF_X103_Y16_N11
\OPERATIVA|reg4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~41_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(6));

-- Location: LCCOMB_X103_Y16_N10
\OPERATIVA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(6)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(6) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg6|q\(6),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg4|q\(6),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux9~2_combout\);

-- Location: LCCOMB_X102_Y18_N2
\OPERATIVA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux9~2_combout\ & ((\OPERATIVA|reg7|q\(6)))) # (!\OPERATIVA|Mux9~2_combout\ & (\OPERATIVA|reg5|q\(6))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(6),
	datac => \OPERATIVA|reg7|q\(6),
	datad => \OPERATIVA|Mux9~2_combout\,
	combout => \OPERATIVA|Mux9~3_combout\);

-- Location: FF_X102_Y15_N25
\OPERATIVA|reg3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~41_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(6));

-- Location: FF_X102_Y15_N29
\OPERATIVA|reg2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~41_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(6));

-- Location: FF_X100_Y15_N7
\OPERATIVA|reg0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~41_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(6));

-- Location: LCCOMB_X100_Y15_N24
\OPERATIVA|reg1|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~41_combout\,
	combout => \OPERATIVA|reg1|q[6]~feeder_combout\);

-- Location: FF_X100_Y15_N25
\OPERATIVA|reg1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(6));

-- Location: LCCOMB_X100_Y15_N6
\OPERATIVA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~4_combout\ = (\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\) # ((\OPERATIVA|reg1|q\(6))))) # (!\po_endereco[0]~2_combout\ & (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg0|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg0|q\(6),
	datad => \OPERATIVA|reg1|q\(6),
	combout => \OPERATIVA|Mux9~4_combout\);

-- Location: LCCOMB_X101_Y15_N16
\OPERATIVA|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~5_combout\ = (\OPERATIVA|Mux9~4_combout\ & ((\OPERATIVA|reg3|q\(6)) # ((!\po_endereco[1]~5_combout\)))) # (!\OPERATIVA|Mux9~4_combout\ & (((\OPERATIVA|reg2|q\(6) & \po_endereco[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(6),
	datab => \OPERATIVA|reg2|q\(6),
	datac => \OPERATIVA|Mux9~4_combout\,
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|Mux9~5_combout\);

-- Location: LCCOMB_X101_Y17_N4
\OPERATIVA|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux9~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux9~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux9~3_combout\,
	datad => \OPERATIVA|Mux9~5_combout\,
	combout => \OPERATIVA|Mux9~6_combout\);

-- Location: FF_X102_Y17_N1
\ALGORITMO|U_PO|reg_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux9~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(6));

-- Location: LCCOMB_X102_Y17_N2
\ALGORITMO|U_PO|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~16_combout\ = (\ALGORITMO|U_PO|reg_B\(6)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|reg_B\(6),
	datac => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~16_combout\);

-- Location: LCCOMB_X102_Y14_N0
\ALGORITMO|U_PO|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~36_combout\ = ((\ALGORITMO|U_PO|Add0~14_combout\ $ (\ALGORITMO|U_PO|Add0~15_combout\ $ (\ALGORITMO|U_PO|Add0~35\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~37\ = CARRY((\ALGORITMO|U_PO|Add0~14_combout\ & (\ALGORITMO|U_PO|Add0~15_combout\ & !\ALGORITMO|U_PO|Add0~35\)) # (!\ALGORITMO|U_PO|Add0~14_combout\ & ((\ALGORITMO|U_PO|Add0~15_combout\) # (!\ALGORITMO|U_PO|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~14_combout\,
	datab => \ALGORITMO|U_PO|Add0~15_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~35\,
	combout => \ALGORITMO|U_PO|Add0~36_combout\,
	cout => \ALGORITMO|U_PO|Add0~37\);

-- Location: LCCOMB_X102_Y14_N22
\ALGORITMO|U_PO|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~39_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~38_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~36_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~38_combout\,
	datad => \ALGORITMO|U_PO|Add0~36_combout\,
	combout => \ALGORITMO|U_PO|Add0~39_combout\);

-- Location: LCCOMB_X102_Y16_N4
\OPERATIVA|reg5|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~39_combout\,
	combout => \OPERATIVA|reg5|q[7]~feeder_combout\);

-- Location: FF_X102_Y16_N5
\OPERATIVA|reg5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(7));

-- Location: FF_X102_Y16_N3
\OPERATIVA|reg7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~39_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(7));

-- Location: LCCOMB_X103_Y16_N24
\OPERATIVA|reg6|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~39_combout\,
	combout => \OPERATIVA|reg6|q[7]~feeder_combout\);

-- Location: FF_X103_Y16_N25
\OPERATIVA|reg6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(7));

-- Location: FF_X103_Y16_N7
\OPERATIVA|reg4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~39_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(7));

-- Location: LCCOMB_X103_Y16_N6
\OPERATIVA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(7)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(7) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(7),
	datac => \OPERATIVA|reg4|q\(7),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux8~2_combout\);

-- Location: LCCOMB_X102_Y16_N2
\OPERATIVA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux8~2_combout\ & ((\OPERATIVA|reg7|q\(7)))) # (!\OPERATIVA|Mux8~2_combout\ & (\OPERATIVA|reg5|q\(7))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(7),
	datac => \OPERATIVA|reg7|q\(7),
	datad => \OPERATIVA|Mux8~2_combout\,
	combout => \OPERATIVA|Mux8~3_combout\);

-- Location: LCCOMB_X101_Y14_N12
\OPERATIVA|reg2|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~39_combout\,
	combout => \OPERATIVA|reg2|q[7]~feeder_combout\);

-- Location: FF_X101_Y14_N13
\OPERATIVA|reg2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(7));

-- Location: FF_X101_Y15_N31
\OPERATIVA|reg3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~39_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(7));

-- Location: LCCOMB_X100_Y15_N20
\OPERATIVA|reg1|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~39_combout\,
	combout => \OPERATIVA|reg1|q[7]~feeder_combout\);

-- Location: FF_X100_Y15_N21
\OPERATIVA|reg1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(7));

-- Location: FF_X100_Y15_N3
\OPERATIVA|reg0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~39_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(7));

-- Location: LCCOMB_X100_Y15_N2
\OPERATIVA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~4_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg1|q\(7)) # ((\po_endereco[1]~5_combout\)))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|reg0|q\(7) & !\po_endereco[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg1|q\(7),
	datac => \OPERATIVA|reg0|q\(7),
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|Mux8~4_combout\);

-- Location: LCCOMB_X101_Y15_N30
\OPERATIVA|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux8~4_combout\ & ((\OPERATIVA|reg3|q\(7)))) # (!\OPERATIVA|Mux8~4_combout\ & (\OPERATIVA|reg2|q\(7))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(7),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(7),
	datad => \OPERATIVA|Mux8~4_combout\,
	combout => \OPERATIVA|Mux8~5_combout\);

-- Location: LCCOMB_X101_Y17_N22
\OPERATIVA|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux8~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux8~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux8~3_combout\,
	datad => \OPERATIVA|Mux8~5_combout\,
	combout => \OPERATIVA|Mux8~6_combout\);

-- Location: FF_X99_Y17_N15
\ALGORITMO|U_PO|reg_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux8~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(7));

-- Location: LCCOMB_X102_Y17_N12
\ALGORITMO|U_PO|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~14_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PO|reg_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(7),
	combout => \ALGORITMO|U_PO|Add0~14_combout\);

-- Location: LCCOMB_X102_Y14_N2
\ALGORITMO|U_PO|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~52_combout\ = (\ALGORITMO|U_PO|Add0~51_combout\ & ((\ALGORITMO|U_PO|Add0~50_combout\ & (!\ALGORITMO|U_PO|Add0~37\)) # (!\ALGORITMO|U_PO|Add0~50_combout\ & (\ALGORITMO|U_PO|Add0~37\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~51_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~50_combout\ & ((\ALGORITMO|U_PO|Add0~37\) # (GND))) # (!\ALGORITMO|U_PO|Add0~50_combout\ & (!\ALGORITMO|U_PO|Add0~37\))))
-- \ALGORITMO|U_PO|Add0~53\ = CARRY((\ALGORITMO|U_PO|Add0~51_combout\ & (\ALGORITMO|U_PO|Add0~50_combout\ & !\ALGORITMO|U_PO|Add0~37\)) # (!\ALGORITMO|U_PO|Add0~51_combout\ & ((\ALGORITMO|U_PO|Add0~50_combout\) # (!\ALGORITMO|U_PO|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~51_combout\,
	datab => \ALGORITMO|U_PO|Add0~50_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~37\,
	combout => \ALGORITMO|U_PO|Add0~52_combout\,
	cout => \ALGORITMO|U_PO|Add0~53\);

-- Location: LCCOMB_X101_Y14_N16
\ALGORITMO|U_PO|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~55_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~54_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~52_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~54_combout\,
	datad => \ALGORITMO|U_PO|Add0~52_combout\,
	combout => \ALGORITMO|U_PO|Add0~55_combout\);

-- Location: LCCOMB_X102_Y16_N20
\OPERATIVA|reg5|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~55_combout\,
	combout => \OPERATIVA|reg5|q[8]~feeder_combout\);

-- Location: FF_X102_Y16_N21
\OPERATIVA|reg5|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(8));

-- Location: FF_X102_Y16_N11
\OPERATIVA|reg7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(8));

-- Location: FF_X101_Y16_N21
\OPERATIVA|reg6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(8));

-- Location: FF_X101_Y16_N15
\OPERATIVA|reg4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(8));

-- Location: LCCOMB_X101_Y16_N14
\OPERATIVA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~2_combout\ = (\po_endereco[0]~2_combout\ & (((\po_endereco[1]~5_combout\)))) # (!\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\ & (\OPERATIVA|reg6|q\(8))) # (!\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg4|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg6|q\(8),
	datac => \OPERATIVA|reg4|q\(8),
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|Mux7~2_combout\);

-- Location: LCCOMB_X102_Y16_N10
\OPERATIVA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux7~2_combout\ & ((\OPERATIVA|reg7|q\(8)))) # (!\OPERATIVA|Mux7~2_combout\ & (\OPERATIVA|reg5|q\(8))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(8),
	datac => \OPERATIVA|reg7|q\(8),
	datad => \OPERATIVA|Mux7~2_combout\,
	combout => \OPERATIVA|Mux7~3_combout\);

-- Location: LCCOMB_X101_Y14_N2
\OPERATIVA|reg2|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~55_combout\,
	combout => \OPERATIVA|reg2|q[8]~feeder_combout\);

-- Location: FF_X101_Y14_N3
\OPERATIVA|reg2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(8));

-- Location: FF_X101_Y14_N1
\OPERATIVA|reg3|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(8));

-- Location: LCCOMB_X100_Y14_N16
\OPERATIVA|reg1|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~55_combout\,
	combout => \OPERATIVA|reg1|q[8]~feeder_combout\);

-- Location: FF_X100_Y14_N17
\OPERATIVA|reg1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(8));

-- Location: FF_X100_Y14_N15
\OPERATIVA|reg0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(8));

-- Location: LCCOMB_X100_Y14_N14
\OPERATIVA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(8))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg1|q\(8),
	datac => \OPERATIVA|reg0|q\(8),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux7~4_combout\);

-- Location: LCCOMB_X101_Y14_N0
\OPERATIVA|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux7~4_combout\ & ((\OPERATIVA|reg3|q\(8)))) # (!\OPERATIVA|Mux7~4_combout\ & (\OPERATIVA|reg2|q\(8))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(8),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(8),
	datad => \OPERATIVA|Mux7~4_combout\,
	combout => \OPERATIVA|Mux7~5_combout\);

-- Location: LCCOMB_X103_Y15_N20
\OPERATIVA|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~6_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux7~5_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux7~3_combout\)))) # (!\SW[17]~input_o\ & 
-- (((\OPERATIVA|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \OPERATIVA|Mux7~3_combout\,
	datad => \OPERATIVA|Mux7~5_combout\,
	combout => \OPERATIVA|Mux7~6_combout\);

-- Location: FF_X103_Y15_N21
\ALGORITMO|U_PO|reg_Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux7~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(8));

-- Location: FF_X103_Y15_N13
\ALGORITMO|U_PO|reg_R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux7~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(8));

-- Location: LCCOMB_X103_Y15_N30
\ALGORITMO|U_PO|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~51_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(8))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(8))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(8),
	datac => \ALGORITMO|U_PO|reg_R\(8),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~51_combout\);

-- Location: LCCOMB_X102_Y14_N4
\ALGORITMO|U_PO|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~58_combout\ = ((\ALGORITMO|U_PO|Add0~57_combout\ $ (\ALGORITMO|U_PO|Add0~56_combout\ $ (\ALGORITMO|U_PO|Add0~53\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~59\ = CARRY((\ALGORITMO|U_PO|Add0~57_combout\ & ((!\ALGORITMO|U_PO|Add0~53\) # (!\ALGORITMO|U_PO|Add0~56_combout\))) # (!\ALGORITMO|U_PO|Add0~57_combout\ & (!\ALGORITMO|U_PO|Add0~56_combout\ & !\ALGORITMO|U_PO|Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~57_combout\,
	datab => \ALGORITMO|U_PO|Add0~56_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~53\,
	combout => \ALGORITMO|U_PO|Add0~58_combout\,
	cout => \ALGORITMO|U_PO|Add0~59\);

-- Location: LCCOMB_X102_Y14_N26
\ALGORITMO|U_PO|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~61_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~60_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~58_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~60_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PO|Add0~58_combout\,
	datad => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	combout => \ALGORITMO|U_PO|Add0~61_combout\);

-- Location: LCCOMB_X102_Y16_N16
\OPERATIVA|reg5|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~61_combout\,
	combout => \OPERATIVA|reg5|q[9]~feeder_combout\);

-- Location: FF_X102_Y16_N17
\OPERATIVA|reg5|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(9));

-- Location: FF_X102_Y16_N27
\OPERATIVA|reg7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~61_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(9));

-- Location: FF_X101_Y16_N19
\OPERATIVA|reg6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~61_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(9));

-- Location: FF_X101_Y16_N9
\OPERATIVA|reg4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~61_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(9));

-- Location: LCCOMB_X101_Y16_N8
\OPERATIVA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~2_combout\ = (\po_endereco[0]~2_combout\ & (((\po_endereco[1]~5_combout\)))) # (!\po_endereco[0]~2_combout\ & ((\po_endereco[1]~5_combout\ & (\OPERATIVA|reg6|q\(9))) # (!\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg4|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg6|q\(9),
	datac => \OPERATIVA|reg4|q\(9),
	datad => \po_endereco[1]~5_combout\,
	combout => \OPERATIVA|Mux6~2_combout\);

-- Location: LCCOMB_X102_Y16_N26
\OPERATIVA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux6~2_combout\ & ((\OPERATIVA|reg7|q\(9)))) # (!\OPERATIVA|Mux6~2_combout\ & (\OPERATIVA|reg5|q\(9))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(9),
	datac => \OPERATIVA|reg7|q\(9),
	datad => \OPERATIVA|Mux6~2_combout\,
	combout => \OPERATIVA|Mux6~3_combout\);

-- Location: LCCOMB_X99_Y14_N24
\OPERATIVA|reg2|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~61_combout\,
	combout => \OPERATIVA|reg2|q[9]~feeder_combout\);

-- Location: FF_X99_Y14_N25
\OPERATIVA|reg2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(9));

-- Location: FF_X99_Y14_N31
\OPERATIVA|reg3|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~61_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(9));

-- Location: LCCOMB_X100_Y14_N20
\OPERATIVA|reg1|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~61_combout\,
	combout => \OPERATIVA|reg1|q[9]~feeder_combout\);

-- Location: FF_X100_Y14_N21
\OPERATIVA|reg1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(9));

-- Location: FF_X100_Y14_N27
\OPERATIVA|reg0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~61_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(9));

-- Location: LCCOMB_X100_Y14_N26
\OPERATIVA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(9))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg1|q\(9),
	datac => \OPERATIVA|reg0|q\(9),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux6~4_combout\);

-- Location: LCCOMB_X99_Y14_N30
\OPERATIVA|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux6~4_combout\ & ((\OPERATIVA|reg3|q\(9)))) # (!\OPERATIVA|Mux6~4_combout\ & (\OPERATIVA|reg2|q\(9))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg2|q\(9),
	datac => \OPERATIVA|reg3|q\(9),
	datad => \OPERATIVA|Mux6~4_combout\,
	combout => \OPERATIVA|Mux6~5_combout\);

-- Location: LCCOMB_X103_Y14_N0
\OPERATIVA|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux6~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux6~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux6~3_combout\,
	datad => \OPERATIVA|Mux6~5_combout\,
	combout => \OPERATIVA|Mux6~6_combout\);

-- Location: FF_X103_Y14_N1
\ALGORITMO|U_PO|reg_Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux6~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(9));

-- Location: FF_X103_Y14_N5
\ALGORITMO|U_PO|reg_R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux6~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(9));

-- Location: LCCOMB_X103_Y14_N4
\ALGORITMO|U_PO|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~57_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(9))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(9))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(9),
	datac => \ALGORITMO|U_PO|reg_R\(9),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~57_combout\);

-- Location: LCCOMB_X102_Y14_N6
\ALGORITMO|U_PO|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~64_combout\ = (\ALGORITMO|U_PO|Add0~63_combout\ & ((\ALGORITMO|U_PO|Add0~62_combout\ & (!\ALGORITMO|U_PO|Add0~59\)) # (!\ALGORITMO|U_PO|Add0~62_combout\ & (\ALGORITMO|U_PO|Add0~59\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~63_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~62_combout\ & ((\ALGORITMO|U_PO|Add0~59\) # (GND))) # (!\ALGORITMO|U_PO|Add0~62_combout\ & (!\ALGORITMO|U_PO|Add0~59\))))
-- \ALGORITMO|U_PO|Add0~65\ = CARRY((\ALGORITMO|U_PO|Add0~63_combout\ & (\ALGORITMO|U_PO|Add0~62_combout\ & !\ALGORITMO|U_PO|Add0~59\)) # (!\ALGORITMO|U_PO|Add0~63_combout\ & ((\ALGORITMO|U_PO|Add0~62_combout\) # (!\ALGORITMO|U_PO|Add0~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~63_combout\,
	datab => \ALGORITMO|U_PO|Add0~62_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~59\,
	combout => \ALGORITMO|U_PO|Add0~64_combout\,
	cout => \ALGORITMO|U_PO|Add0~65\);

-- Location: LCCOMB_X101_Y14_N10
\ALGORITMO|U_PO|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~67_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~66_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~64_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~66_combout\,
	datad => \ALGORITMO|U_PO|Add0~64_combout\,
	combout => \ALGORITMO|U_PO|Add0~67_combout\);

-- Location: LCCOMB_X102_Y18_N10
\OPERATIVA|reg5|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~67_combout\,
	combout => \OPERATIVA|reg5|q[10]~feeder_combout\);

-- Location: FF_X102_Y18_N11
\OPERATIVA|reg5|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(10));

-- Location: FF_X102_Y18_N9
\OPERATIVA|reg7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~67_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(10));

-- Location: LCCOMB_X101_Y18_N0
\OPERATIVA|reg6|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~67_combout\,
	combout => \OPERATIVA|reg6|q[10]~feeder_combout\);

-- Location: FF_X101_Y18_N1
\OPERATIVA|reg6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(10));

-- Location: FF_X101_Y18_N23
\OPERATIVA|reg4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~67_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(10));

-- Location: LCCOMB_X101_Y18_N22
\OPERATIVA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(10)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(10) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(10),
	datac => \OPERATIVA|reg4|q\(10),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux5~2_combout\);

-- Location: LCCOMB_X102_Y18_N8
\OPERATIVA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux5~2_combout\ & ((\OPERATIVA|reg7|q\(10)))) # (!\OPERATIVA|Mux5~2_combout\ & (\OPERATIVA|reg5|q\(10))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(10),
	datac => \OPERATIVA|reg7|q\(10),
	datad => \OPERATIVA|Mux5~2_combout\,
	combout => \OPERATIVA|Mux5~3_combout\);

-- Location: FF_X101_Y14_N7
\OPERATIVA|reg2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~67_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(10));

-- Location: FF_X101_Y14_N25
\OPERATIVA|reg3|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~67_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(10));

-- Location: LCCOMB_X100_Y14_N4
\OPERATIVA|reg1|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~67_combout\,
	combout => \OPERATIVA|reg1|q[10]~feeder_combout\);

-- Location: FF_X100_Y14_N5
\OPERATIVA|reg1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(10));

-- Location: FF_X100_Y14_N23
\OPERATIVA|reg0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~67_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(10));

-- Location: LCCOMB_X100_Y14_N22
\OPERATIVA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(10))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg1|q\(10),
	datac => \OPERATIVA|reg0|q\(10),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux5~4_combout\);

-- Location: LCCOMB_X101_Y14_N24
\OPERATIVA|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux5~4_combout\ & ((\OPERATIVA|reg3|q\(10)))) # (!\OPERATIVA|Mux5~4_combout\ & (\OPERATIVA|reg2|q\(10))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(10),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(10),
	datad => \OPERATIVA|Mux5~4_combout\,
	combout => \OPERATIVA|Mux5~5_combout\);

-- Location: LCCOMB_X103_Y14_N30
\OPERATIVA|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux5~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux5~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux5~3_combout\,
	datad => \OPERATIVA|Mux5~5_combout\,
	combout => \OPERATIVA|Mux5~6_combout\);

-- Location: FF_X103_Y14_N31
\ALGORITMO|U_PO|reg_Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux5~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(10));

-- Location: FF_X103_Y14_N11
\ALGORITMO|U_PO|reg_R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux5~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(10));

-- Location: LCCOMB_X103_Y14_N10
\ALGORITMO|U_PO|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~63_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(10))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(10))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(10),
	datac => \ALGORITMO|U_PO|reg_R\(10),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~63_combout\);

-- Location: LCCOMB_X102_Y14_N8
\ALGORITMO|U_PO|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~70_combout\ = ((\ALGORITMO|U_PO|Add0~69_combout\ $ (\ALGORITMO|U_PO|Add0~68_combout\ $ (\ALGORITMO|U_PO|Add0~65\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~71\ = CARRY((\ALGORITMO|U_PO|Add0~69_combout\ & ((!\ALGORITMO|U_PO|Add0~65\) # (!\ALGORITMO|U_PO|Add0~68_combout\))) # (!\ALGORITMO|U_PO|Add0~69_combout\ & (!\ALGORITMO|U_PO|Add0~68_combout\ & !\ALGORITMO|U_PO|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~69_combout\,
	datab => \ALGORITMO|U_PO|Add0~68_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~65\,
	combout => \ALGORITMO|U_PO|Add0~70_combout\,
	cout => \ALGORITMO|U_PO|Add0~71\);

-- Location: LCCOMB_X100_Y17_N10
\ALGORITMO|U_PO|reg_A[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[11]~feeder_combout\ = \OPERATIVA|Mux4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux4~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[11]~feeder_combout\);

-- Location: FF_X100_Y17_N11
\ALGORITMO|U_PO|reg_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[11]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(11));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X103_Y14_N26
\ALGORITMO|U_PO|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~72_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|reg_A\(11) & ((!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PO|reg_A\(11),
	datac => \SW[11]~input_o\,
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \ALGORITMO|U_PO|Add0~72_combout\);

-- Location: LCCOMB_X102_Y14_N28
\ALGORITMO|U_PO|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~73_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~72_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~70_combout\)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~70_combout\,
	datad => \ALGORITMO|U_PO|Add0~72_combout\,
	combout => \ALGORITMO|U_PO|Add0~73_combout\);

-- Location: FF_X102_Y14_N11
\OPERATIVA|reg2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~73_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(11));

-- Location: FF_X101_Y14_N27
\OPERATIVA|reg3|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~73_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(11));

-- Location: LCCOMB_X100_Y14_N28
\OPERATIVA|reg1|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~73_combout\,
	combout => \OPERATIVA|reg1|q[11]~feeder_combout\);

-- Location: FF_X100_Y14_N29
\OPERATIVA|reg1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(11));

-- Location: FF_X100_Y14_N31
\OPERATIVA|reg0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~73_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(11));

-- Location: LCCOMB_X100_Y14_N30
\OPERATIVA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(11))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg1|q\(11),
	datac => \OPERATIVA|reg0|q\(11),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux4~4_combout\);

-- Location: LCCOMB_X101_Y14_N26
\OPERATIVA|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux4~4_combout\ & ((\OPERATIVA|reg3|q\(11)))) # (!\OPERATIVA|Mux4~4_combout\ & (\OPERATIVA|reg2|q\(11))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(11),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(11),
	datad => \OPERATIVA|Mux4~4_combout\,
	combout => \OPERATIVA|Mux4~5_combout\);

-- Location: LCCOMB_X102_Y18_N4
\OPERATIVA|reg7|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~73_combout\,
	combout => \OPERATIVA|reg7|q[11]~feeder_combout\);

-- Location: FF_X102_Y18_N5
\OPERATIVA|reg7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(11));

-- Location: LCCOMB_X102_Y18_N22
\OPERATIVA|reg5|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~73_combout\,
	combout => \OPERATIVA|reg5|q[11]~feeder_combout\);

-- Location: FF_X102_Y18_N23
\OPERATIVA|reg5|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(11));

-- Location: LCCOMB_X101_Y18_N18
\OPERATIVA|reg4|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg4|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~73_combout\,
	combout => \OPERATIVA|reg4|q[11]~feeder_combout\);

-- Location: FF_X101_Y18_N19
\OPERATIVA|reg4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg4|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(11));

-- Location: FF_X101_Y18_N9
\OPERATIVA|reg6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~73_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(11));

-- Location: LCCOMB_X101_Y18_N8
\OPERATIVA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~2_combout\ = (\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg6|q\(11)) # (\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (\OPERATIVA|reg4|q\(11) & ((!\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg4|q\(11),
	datac => \OPERATIVA|reg6|q\(11),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux4~2_combout\);

-- Location: LCCOMB_X101_Y18_N28
\OPERATIVA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~3_combout\ = (\OPERATIVA|Mux4~2_combout\ & ((\OPERATIVA|reg7|q\(11)) # ((!\po_endereco[0]~2_combout\)))) # (!\OPERATIVA|Mux4~2_combout\ & (((\OPERATIVA|reg5|q\(11) & \po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg7|q\(11),
	datab => \OPERATIVA|reg5|q\(11),
	datac => \OPERATIVA|Mux4~2_combout\,
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux4~3_combout\);

-- Location: LCCOMB_X101_Y17_N0
\OPERATIVA|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux4~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux4~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux4~5_combout\,
	datad => \OPERATIVA|Mux4~3_combout\,
	combout => \OPERATIVA|Mux4~6_combout\);

-- Location: FF_X101_Y17_N15
\ALGORITMO|U_PO|reg_R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux4~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(11));

-- Location: FF_X101_Y17_N1
\ALGORITMO|U_PO|reg_Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux4~6_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(11));

-- Location: LCCOMB_X101_Y17_N14
\ALGORITMO|U_PO|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~69_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(11))))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(11)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_R\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(11),
	datad => \ALGORITMO|U_PO|reg_Q\(11),
	combout => \ALGORITMO|U_PO|Add0~69_combout\);

-- Location: LCCOMB_X102_Y14_N10
\ALGORITMO|U_PO|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~76_combout\ = (\ALGORITMO|U_PO|Add0~74_combout\ & ((\ALGORITMO|U_PO|Add0~75_combout\ & (!\ALGORITMO|U_PO|Add0~71\)) # (!\ALGORITMO|U_PO|Add0~75_combout\ & ((\ALGORITMO|U_PO|Add0~71\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~74_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~75_combout\ & (\ALGORITMO|U_PO|Add0~71\ & VCC)) # (!\ALGORITMO|U_PO|Add0~75_combout\ & (!\ALGORITMO|U_PO|Add0~71\))))
-- \ALGORITMO|U_PO|Add0~77\ = CARRY((\ALGORITMO|U_PO|Add0~74_combout\ & ((!\ALGORITMO|U_PO|Add0~71\) # (!\ALGORITMO|U_PO|Add0~75_combout\))) # (!\ALGORITMO|U_PO|Add0~74_combout\ & (!\ALGORITMO|U_PO|Add0~75_combout\ & !\ALGORITMO|U_PO|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~74_combout\,
	datab => \ALGORITMO|U_PO|Add0~75_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~71\,
	combout => \ALGORITMO|U_PO|Add0~76_combout\,
	cout => \ALGORITMO|U_PO|Add0~77\);

-- Location: LCCOMB_X102_Y14_N18
\ALGORITMO|U_PO|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~79_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~78_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~76_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~78_combout\,
	datad => \ALGORITMO|U_PO|Add0~76_combout\,
	combout => \ALGORITMO|U_PO|Add0~79_combout\);

-- Location: LCCOMB_X101_Y14_N8
\OPERATIVA|reg3|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~79_combout\,
	combout => \OPERATIVA|reg3|q[12]~feeder_combout\);

-- Location: FF_X101_Y14_N9
\OPERATIVA|reg3|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(12));

-- Location: FF_X100_Y14_N9
\OPERATIVA|reg1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~79_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(12));

-- Location: LCCOMB_X99_Y14_N20
\OPERATIVA|reg2|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~79_combout\,
	combout => \OPERATIVA|reg2|q[12]~feeder_combout\);

-- Location: FF_X99_Y14_N21
\OPERATIVA|reg2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(12));

-- Location: FF_X100_Y14_N11
\OPERATIVA|reg0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~79_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(12));

-- Location: LCCOMB_X100_Y14_N10
\OPERATIVA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~4_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg2|q\(12)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg0|q\(12) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg2|q\(12),
	datac => \OPERATIVA|reg0|q\(12),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux3~4_combout\);

-- Location: LCCOMB_X100_Y14_N8
\OPERATIVA|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~5_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux3~4_combout\ & (\OPERATIVA|reg3|q\(12))) # (!\OPERATIVA|Mux3~4_combout\ & ((\OPERATIVA|reg1|q\(12)))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(12),
	datab => \po_endereco[0]~2_combout\,
	datac => \OPERATIVA|reg1|q\(12),
	datad => \OPERATIVA|Mux3~4_combout\,
	combout => \OPERATIVA|Mux3~5_combout\);

-- Location: LCCOMB_X101_Y18_N30
\OPERATIVA|reg6|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~79_combout\,
	combout => \OPERATIVA|reg6|q[12]~feeder_combout\);

-- Location: FF_X101_Y18_N31
\OPERATIVA|reg6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(12));

-- Location: FF_X102_Y18_N21
\OPERATIVA|reg7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~79_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(12));

-- Location: LCCOMB_X102_Y18_N6
\OPERATIVA|reg5|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~79_combout\,
	combout => \OPERATIVA|reg5|q[12]~feeder_combout\);

-- Location: FF_X102_Y18_N7
\OPERATIVA|reg5|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(12));

-- Location: FF_X101_Y18_N21
\OPERATIVA|reg4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~79_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(12));

-- Location: LCCOMB_X101_Y18_N20
\OPERATIVA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~2_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg5|q\(12))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg4|q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg5|q\(12),
	datac => \OPERATIVA|reg4|q\(12),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux3~2_combout\);

-- Location: LCCOMB_X102_Y18_N20
\OPERATIVA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~3_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux3~2_combout\ & ((\OPERATIVA|reg7|q\(12)))) # (!\OPERATIVA|Mux3~2_combout\ & (\OPERATIVA|reg6|q\(12))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(12),
	datac => \OPERATIVA|reg7|q\(12),
	datad => \OPERATIVA|Mux3~2_combout\,
	combout => \OPERATIVA|Mux3~3_combout\);

-- Location: LCCOMB_X103_Y14_N8
\OPERATIVA|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux3~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux3~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux3~5_combout\,
	datad => \OPERATIVA|Mux3~3_combout\,
	combout => \OPERATIVA|Mux3~6_combout\);

-- Location: FF_X102_Y17_N7
\ALGORITMO|U_PO|reg_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux3~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(12));

-- Location: LCCOMB_X102_Y17_N8
\ALGORITMO|U_PO|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~74_combout\ = (\ALGORITMO|U_PO|reg_B\(12)) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(12),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~74_combout\);

-- Location: LCCOMB_X102_Y14_N12
\ALGORITMO|U_PO|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~82_combout\ = ((\ALGORITMO|U_PO|Add0~80_combout\ $ (\ALGORITMO|U_PO|Add0~81_combout\ $ (\ALGORITMO|U_PO|Add0~77\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~83\ = CARRY((\ALGORITMO|U_PO|Add0~80_combout\ & (\ALGORITMO|U_PO|Add0~81_combout\ & !\ALGORITMO|U_PO|Add0~77\)) # (!\ALGORITMO|U_PO|Add0~80_combout\ & ((\ALGORITMO|U_PO|Add0~81_combout\) # (!\ALGORITMO|U_PO|Add0~77\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~80_combout\,
	datab => \ALGORITMO|U_PO|Add0~81_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~77\,
	combout => \ALGORITMO|U_PO|Add0~82_combout\,
	cout => \ALGORITMO|U_PO|Add0~83\);

-- Location: LCCOMB_X102_Y14_N24
\ALGORITMO|U_PO|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~85_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~84_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~82_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\ALGORITMO|U_PO|Add0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PO|Add0~84_combout\,
	datad => \ALGORITMO|U_PO|Add0~82_combout\,
	combout => \ALGORITMO|U_PO|Add0~85_combout\);

-- Location: LCCOMB_X102_Y18_N28
\OPERATIVA|reg7|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~85_combout\,
	combout => \OPERATIVA|reg7|q[13]~feeder_combout\);

-- Location: FF_X102_Y18_N29
\OPERATIVA|reg7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(13));

-- Location: FF_X101_Y18_N27
\OPERATIVA|reg6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~85_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(13));

-- Location: LCCOMB_X102_Y18_N30
\OPERATIVA|reg5|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~85_combout\,
	combout => \OPERATIVA|reg5|q[13]~feeder_combout\);

-- Location: FF_X102_Y18_N31
\OPERATIVA|reg5|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(13));

-- Location: FF_X101_Y18_N17
\OPERATIVA|reg4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~85_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(13));

-- Location: LCCOMB_X101_Y18_N16
\OPERATIVA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~2_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg5|q\(13))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg4|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg5|q\(13),
	datac => \OPERATIVA|reg4|q\(13),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux2~2_combout\);

-- Location: LCCOMB_X101_Y18_N26
\OPERATIVA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~3_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux2~2_combout\ & (\OPERATIVA|reg7|q\(13))) # (!\OPERATIVA|Mux2~2_combout\ & ((\OPERATIVA|reg6|q\(13)))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg7|q\(13),
	datac => \OPERATIVA|reg6|q\(13),
	datad => \OPERATIVA|Mux2~2_combout\,
	combout => \OPERATIVA|Mux2~3_combout\);

-- Location: LCCOMB_X101_Y14_N4
\OPERATIVA|reg3|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~85_combout\,
	combout => \OPERATIVA|reg3|q[13]~feeder_combout\);

-- Location: FF_X101_Y14_N5
\OPERATIVA|reg3|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(13));

-- Location: FF_X100_Y14_N25
\OPERATIVA|reg1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~85_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(13));

-- Location: LCCOMB_X101_Y14_N18
\OPERATIVA|reg2|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~85_combout\,
	combout => \OPERATIVA|reg2|q[13]~feeder_combout\);

-- Location: FF_X101_Y14_N19
\OPERATIVA|reg2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(13));

-- Location: FF_X100_Y14_N3
\OPERATIVA|reg0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~85_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(13));

-- Location: LCCOMB_X100_Y14_N2
\OPERATIVA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~4_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg2|q\(13)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg0|q\(13) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg2|q\(13),
	datac => \OPERATIVA|reg0|q\(13),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux2~4_combout\);

-- Location: LCCOMB_X100_Y14_N24
\OPERATIVA|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~5_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux2~4_combout\ & (\OPERATIVA|reg3|q\(13))) # (!\OPERATIVA|Mux2~4_combout\ & ((\OPERATIVA|reg1|q\(13)))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(13),
	datab => \po_endereco[0]~2_combout\,
	datac => \OPERATIVA|reg1|q\(13),
	datad => \OPERATIVA|Mux2~4_combout\,
	combout => \OPERATIVA|Mux2~5_combout\);

-- Location: LCCOMB_X101_Y17_N10
\OPERATIVA|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux2~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux2~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux2~3_combout\,
	datad => \OPERATIVA|Mux2~5_combout\,
	combout => \OPERATIVA|Mux2~6_combout\);

-- Location: FF_X99_Y17_N27
\ALGORITMO|U_PO|reg_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux2~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(13));

-- Location: LCCOMB_X102_Y17_N28
\ALGORITMO|U_PO|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~80_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PO|reg_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(13),
	combout => \ALGORITMO|U_PO|Add0~80_combout\);

-- Location: LCCOMB_X102_Y14_N14
\ALGORITMO|U_PO|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~88_combout\ = (\ALGORITMO|U_PO|Add0~87_combout\ & ((\ALGORITMO|U_PO|Add0~86_combout\ & (!\ALGORITMO|U_PO|Add0~83\)) # (!\ALGORITMO|U_PO|Add0~86_combout\ & (\ALGORITMO|U_PO|Add0~83\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~87_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~86_combout\ & ((\ALGORITMO|U_PO|Add0~83\) # (GND))) # (!\ALGORITMO|U_PO|Add0~86_combout\ & (!\ALGORITMO|U_PO|Add0~83\))))
-- \ALGORITMO|U_PO|Add0~89\ = CARRY((\ALGORITMO|U_PO|Add0~87_combout\ & (\ALGORITMO|U_PO|Add0~86_combout\ & !\ALGORITMO|U_PO|Add0~83\)) # (!\ALGORITMO|U_PO|Add0~87_combout\ & ((\ALGORITMO|U_PO|Add0~86_combout\) # (!\ALGORITMO|U_PO|Add0~83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~87_combout\,
	datab => \ALGORITMO|U_PO|Add0~86_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~83\,
	combout => \ALGORITMO|U_PO|Add0~88_combout\,
	cout => \ALGORITMO|U_PO|Add0~89\);

-- Location: LCCOMB_X102_Y14_N20
\ALGORITMO|U_PO|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~91_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|Add0~90_combout\)) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & ((\ALGORITMO|U_PO|Add0~88_combout\))))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|Add0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~90_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PO|Add0~88_combout\,
	datad => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	combout => \ALGORITMO|U_PO|Add0~91_combout\);

-- Location: FF_X102_Y14_N17
\OPERATIVA|reg3|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(14));

-- Location: FF_X100_Y14_N13
\OPERATIVA|reg1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(14));

-- Location: FF_X102_Y14_N21
\OPERATIVA|reg2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~91_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(14));

-- Location: FF_X100_Y14_N7
\OPERATIVA|reg0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(14));

-- Location: LCCOMB_X100_Y14_N6
\OPERATIVA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg2|q\(14)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg0|q\(14) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg2|q\(14),
	datac => \OPERATIVA|reg0|q\(14),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux1~2_combout\);

-- Location: LCCOMB_X100_Y14_N12
\OPERATIVA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux1~2_combout\ & (\OPERATIVA|reg3|q\(14))) # (!\OPERATIVA|Mux1~2_combout\ & ((\OPERATIVA|reg1|q\(14)))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(14),
	datab => \po_endereco[0]~2_combout\,
	datac => \OPERATIVA|reg1|q\(14),
	datad => \OPERATIVA|Mux1~2_combout\,
	combout => \OPERATIVA|Mux1~3_combout\);

-- Location: LCCOMB_X101_Y18_N4
\OPERATIVA|reg6|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[14]~feeder_combout\ = \ALGORITMO|U_PO|Add0~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~91_combout\,
	combout => \OPERATIVA|reg6|q[14]~feeder_combout\);

-- Location: FF_X101_Y18_N5
\OPERATIVA|reg6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[14]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(14));

-- Location: FF_X102_Y18_N17
\OPERATIVA|reg7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(14));

-- Location: LCCOMB_X101_Y18_N6
\OPERATIVA|reg4|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg4|q[14]~feeder_combout\ = \ALGORITMO|U_PO|Add0~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~91_combout\,
	combout => \OPERATIVA|reg4|q[14]~feeder_combout\);

-- Location: FF_X101_Y18_N7
\OPERATIVA|reg4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg4|q[14]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(14));

-- Location: FF_X102_Y18_N19
\OPERATIVA|reg5|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(14));

-- Location: LCCOMB_X102_Y18_N18
\OPERATIVA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~0_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg5|q\(14)))) # (!\po_endereco[0]~2_combout\ & (\OPERATIVA|reg4|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg4|q\(14),
	datac => \OPERATIVA|reg5|q\(14),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux1~0_combout\);

-- Location: LCCOMB_X102_Y18_N16
\OPERATIVA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~1_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux1~0_combout\ & ((\OPERATIVA|reg7|q\(14)))) # (!\OPERATIVA|Mux1~0_combout\ & (\OPERATIVA|reg6|q\(14))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(14),
	datac => \OPERATIVA|reg7|q\(14),
	datad => \OPERATIVA|Mux1~0_combout\,
	combout => \OPERATIVA|Mux1~1_combout\);

-- Location: LCCOMB_X103_Y14_N18
\OPERATIVA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux1~3_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux1~1_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux1~3_combout\,
	datad => \OPERATIVA|Mux1~1_combout\,
	combout => \OPERATIVA|Mux1~4_combout\);

-- Location: FF_X103_Y14_N19
\ALGORITMO|U_PO|reg_Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux1~4_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(14));

-- Location: FF_X103_Y14_N7
\ALGORITMO|U_PO|reg_R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux1~4_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(14));

-- Location: LCCOMB_X103_Y14_N6
\ALGORITMO|U_PO|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~87_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(14))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(14))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(14),
	datac => \ALGORITMO|U_PO|reg_R\(14),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~87_combout\);

-- Location: LCCOMB_X102_Y14_N16
\ALGORITMO|U_PO|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~95_combout\ = \ALGORITMO|U_PO|Add0~93_combout\ $ (\ALGORITMO|U_PO|Add0~89\ $ (\ALGORITMO|U_PO|Add0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|Add0~93_combout\,
	datad => \ALGORITMO|U_PO|Add0~94_combout\,
	cin => \ALGORITMO|U_PO|Add0~89\,
	combout => \ALGORITMO|U_PO|Add0~95_combout\);

-- Location: LCCOMB_X102_Y14_N30
\ALGORITMO|U_PO|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~97_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~92_combout\) # ((!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & \ALGORITMO|U_PO|Add0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~92_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~95_combout\,
	combout => \ALGORITMO|U_PO|Add0~97_combout\);

-- Location: FF_X102_Y14_N3
\OPERATIVA|reg2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~97_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(15));

-- Location: FF_X101_Y14_N15
\OPERATIVA|reg3|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~97_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(15));

-- Location: LCCOMB_X100_Y14_N0
\OPERATIVA|reg1|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[15]~feeder_combout\ = \ALGORITMO|U_PO|Add0~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~97_combout\,
	combout => \OPERATIVA|reg1|q[15]~feeder_combout\);

-- Location: FF_X100_Y14_N1
\OPERATIVA|reg1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[15]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(15));

-- Location: FF_X100_Y14_N19
\OPERATIVA|reg0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~97_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(15));

-- Location: LCCOMB_X100_Y14_N18
\OPERATIVA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~2_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & (\OPERATIVA|reg1|q\(15))) # (!\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg0|q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg1|q\(15),
	datac => \OPERATIVA|reg0|q\(15),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux0~2_combout\);

-- Location: LCCOMB_X101_Y14_N14
\OPERATIVA|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~3_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux0~2_combout\ & ((\OPERATIVA|reg3|q\(15)))) # (!\OPERATIVA|Mux0~2_combout\ & (\OPERATIVA|reg2|q\(15))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg2|q\(15),
	datab => \po_endereco[1]~5_combout\,
	datac => \OPERATIVA|reg3|q\(15),
	datad => \OPERATIVA|Mux0~2_combout\,
	combout => \OPERATIVA|Mux0~3_combout\);

-- Location: LCCOMB_X102_Y13_N16
\OPERATIVA|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~4_combout\ = (\OPERATIVA|Mux0~3_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \SW[17]~input_o\,
	datad => \OPERATIVA|Mux0~3_combout\,
	combout => \OPERATIVA|Mux0~4_combout\);

-- Location: FF_X102_Y13_N21
\ALGORITMO|U_PO|reg_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux0~4_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(15));

-- Location: LCCOMB_X100_Y17_N26
\ALGORITMO|U_PO|reg_A[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[3]~feeder_combout\ = \OPERATIVA|Mux12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux12~6_combout\,
	combout => \ALGORITMO|U_PO|reg_A[3]~feeder_combout\);

-- Location: FF_X100_Y17_N27
\ALGORITMO|U_PO|reg_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[3]~feeder_combout\,
	clrn => \KEY[3]~input_o\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(3));

-- Location: LCCOMB_X103_Y17_N0
\ALGORITMO|U_PO|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~1_cout\ = CARRY((!\ALGORITMO|U_PO|reg_A\(0) & \ALGORITMO|U_PO|reg_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(0),
	datab => \ALGORITMO|U_PO|reg_B\(0),
	datad => VCC,
	cout => \ALGORITMO|U_PO|LessThan0~1_cout\);

-- Location: LCCOMB_X103_Y17_N2
\ALGORITMO|U_PO|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~3_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(1) & ((!\ALGORITMO|U_PO|LessThan0~1_cout\) # (!\ALGORITMO|U_PO|reg_B\(1)))) # (!\ALGORITMO|U_PO|reg_A\(1) & (!\ALGORITMO|U_PO|reg_B\(1) & !\ALGORITMO|U_PO|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(1),
	datab => \ALGORITMO|U_PO|reg_B\(1),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~1_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~3_cout\);

-- Location: LCCOMB_X103_Y17_N4
\ALGORITMO|U_PO|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~5_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(2) & (\ALGORITMO|U_PO|reg_B\(2) & !\ALGORITMO|U_PO|LessThan0~3_cout\)) # (!\ALGORITMO|U_PO|reg_A\(2) & ((\ALGORITMO|U_PO|reg_B\(2)) # (!\ALGORITMO|U_PO|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(2),
	datab => \ALGORITMO|U_PO|reg_B\(2),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~3_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~5_cout\);

-- Location: LCCOMB_X103_Y17_N6
\ALGORITMO|U_PO|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~7_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(3) & (\ALGORITMO|U_PO|reg_A\(3) & !\ALGORITMO|U_PO|LessThan0~5_cout\)) # (!\ALGORITMO|U_PO|reg_B\(3) & ((\ALGORITMO|U_PO|reg_A\(3)) # (!\ALGORITMO|U_PO|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(3),
	datab => \ALGORITMO|U_PO|reg_A\(3),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~5_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~7_cout\);

-- Location: LCCOMB_X103_Y17_N8
\ALGORITMO|U_PO|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~9_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(4) & (\ALGORITMO|U_PO|reg_B\(4) & !\ALGORITMO|U_PO|LessThan0~7_cout\)) # (!\ALGORITMO|U_PO|reg_A\(4) & ((\ALGORITMO|U_PO|reg_B\(4)) # (!\ALGORITMO|U_PO|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(4),
	datab => \ALGORITMO|U_PO|reg_B\(4),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~7_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~9_cout\);

-- Location: LCCOMB_X103_Y17_N10
\ALGORITMO|U_PO|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~11_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(5) & (\ALGORITMO|U_PO|reg_A\(5) & !\ALGORITMO|U_PO|LessThan0~9_cout\)) # (!\ALGORITMO|U_PO|reg_B\(5) & ((\ALGORITMO|U_PO|reg_A\(5)) # (!\ALGORITMO|U_PO|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(5),
	datab => \ALGORITMO|U_PO|reg_A\(5),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~9_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~11_cout\);

-- Location: LCCOMB_X103_Y17_N12
\ALGORITMO|U_PO|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~13_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(6) & ((!\ALGORITMO|U_PO|LessThan0~11_cout\) # (!\ALGORITMO|U_PO|reg_A\(6)))) # (!\ALGORITMO|U_PO|reg_B\(6) & (!\ALGORITMO|U_PO|reg_A\(6) & !\ALGORITMO|U_PO|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(6),
	datab => \ALGORITMO|U_PO|reg_A\(6),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~11_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~13_cout\);

-- Location: LCCOMB_X103_Y17_N14
\ALGORITMO|U_PO|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~15_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(7) & ((!\ALGORITMO|U_PO|LessThan0~13_cout\) # (!\ALGORITMO|U_PO|reg_B\(7)))) # (!\ALGORITMO|U_PO|reg_A\(7) & (!\ALGORITMO|U_PO|reg_B\(7) & !\ALGORITMO|U_PO|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(7),
	datab => \ALGORITMO|U_PO|reg_B\(7),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~13_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~15_cout\);

-- Location: LCCOMB_X103_Y17_N16
\ALGORITMO|U_PO|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~17_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(8) & ((!\ALGORITMO|U_PO|LessThan0~15_cout\) # (!\ALGORITMO|U_PO|reg_A\(8)))) # (!\ALGORITMO|U_PO|reg_B\(8) & (!\ALGORITMO|U_PO|reg_A\(8) & !\ALGORITMO|U_PO|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(8),
	datab => \ALGORITMO|U_PO|reg_A\(8),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~15_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~17_cout\);

-- Location: LCCOMB_X103_Y17_N18
\ALGORITMO|U_PO|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~19_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(9) & ((!\ALGORITMO|U_PO|LessThan0~17_cout\) # (!\ALGORITMO|U_PO|reg_B\(9)))) # (!\ALGORITMO|U_PO|reg_A\(9) & (!\ALGORITMO|U_PO|reg_B\(9) & !\ALGORITMO|U_PO|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(9),
	datab => \ALGORITMO|U_PO|reg_B\(9),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~17_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~19_cout\);

-- Location: LCCOMB_X103_Y17_N20
\ALGORITMO|U_PO|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~21_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(10) & ((!\ALGORITMO|U_PO|LessThan0~19_cout\) # (!\ALGORITMO|U_PO|reg_A\(10)))) # (!\ALGORITMO|U_PO|reg_B\(10) & (!\ALGORITMO|U_PO|reg_A\(10) & !\ALGORITMO|U_PO|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(10),
	datab => \ALGORITMO|U_PO|reg_A\(10),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~19_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~21_cout\);

-- Location: LCCOMB_X103_Y17_N22
\ALGORITMO|U_PO|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~23_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(11) & (\ALGORITMO|U_PO|reg_A\(11) & !\ALGORITMO|U_PO|LessThan0~21_cout\)) # (!\ALGORITMO|U_PO|reg_B\(11) & ((\ALGORITMO|U_PO|reg_A\(11)) # (!\ALGORITMO|U_PO|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(11),
	datab => \ALGORITMO|U_PO|reg_A\(11),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~21_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~23_cout\);

-- Location: LCCOMB_X103_Y17_N24
\ALGORITMO|U_PO|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~25_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(12) & ((!\ALGORITMO|U_PO|LessThan0~23_cout\) # (!\ALGORITMO|U_PO|reg_A\(12)))) # (!\ALGORITMO|U_PO|reg_B\(12) & (!\ALGORITMO|U_PO|reg_A\(12) & !\ALGORITMO|U_PO|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(12),
	datab => \ALGORITMO|U_PO|reg_A\(12),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~23_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~25_cout\);

-- Location: LCCOMB_X103_Y17_N26
\ALGORITMO|U_PO|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~27_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(13) & ((!\ALGORITMO|U_PO|LessThan0~25_cout\) # (!\ALGORITMO|U_PO|reg_B\(13)))) # (!\ALGORITMO|U_PO|reg_A\(13) & (!\ALGORITMO|U_PO|reg_B\(13) & !\ALGORITMO|U_PO|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(13),
	datab => \ALGORITMO|U_PO|reg_B\(13),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~25_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~27_cout\);

-- Location: LCCOMB_X103_Y17_N28
\ALGORITMO|U_PO|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~29_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(14) & ((!\ALGORITMO|U_PO|LessThan0~27_cout\) # (!\ALGORITMO|U_PO|reg_A\(14)))) # (!\ALGORITMO|U_PO|reg_B\(14) & (!\ALGORITMO|U_PO|reg_A\(14) & !\ALGORITMO|U_PO|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(14),
	datab => \ALGORITMO|U_PO|reg_A\(14),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~27_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~29_cout\);

-- Location: LCCOMB_X103_Y17_N30
\ALGORITMO|U_PO|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~30_combout\ = (\ALGORITMO|U_PO|reg_A\(15) & (\ALGORITMO|U_PO|LessThan0~29_cout\ & \ALGORITMO|U_PO|reg_B\(15))) # (!\ALGORITMO|U_PO|reg_A\(15) & ((\ALGORITMO|U_PO|LessThan0~29_cout\) # (\ALGORITMO|U_PO|reg_B\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|reg_A\(15),
	datad => \ALGORITMO|U_PO|reg_B\(15),
	cin => \ALGORITMO|U_PO|LessThan0~29_cout\,
	combout => \ALGORITMO|U_PO|LessThan0~30_combout\);

-- Location: LCCOMB_X100_Y16_N20
\ALGORITMO|U_PC|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector5~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_CHECK~q\ & (!\ALGORITMO|U_PO|LessThan0~30_combout\ & !\ALGORITMO|U_PO|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\,
	datac => \ALGORITMO|U_PO|LessThan0~30_combout\,
	datad => \ALGORITMO|U_PO|Equal0~4_combout\,
	combout => \ALGORITMO|U_PC|Selector5~0_combout\);

-- Location: FF_X100_Y16_N21
\ALGORITMO|U_PC|estado_atual.S_INIT_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector5~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\);

-- Location: FF_X102_Y17_N3
\ALGORITMO|U_PC|estado_atual.S_INIT_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\);

-- Location: LCCOMB_X102_Y17_N10
\ALGORITMO|U_PC|sel_escrita[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|sel_escrita[0]~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\);

-- Location: FF_X102_Y17_N9
\ALGORITMO|U_PC|estado_atual.S_REQ_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\);

-- Location: FF_X102_Y17_N11
\ALGORITMO|U_PC|estado_atual.S_SAVE_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\);

-- Location: FF_X100_Y16_N1
\ALGORITMO|U_PC|estado_atual.S_COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\);

-- Location: LCCOMB_X99_Y17_N0
\ALGORITMO|U_PO|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~1_cout\ = CARRY((!\ALGORITMO|U_PO|reg_R\(0) & \ALGORITMO|U_PO|reg_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(0),
	datab => \ALGORITMO|U_PO|reg_B\(0),
	datad => VCC,
	cout => \ALGORITMO|U_PO|LessThan1~1_cout\);

-- Location: LCCOMB_X99_Y17_N2
\ALGORITMO|U_PO|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~3_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(1) & (\ALGORITMO|U_PO|reg_R\(1) & !\ALGORITMO|U_PO|LessThan1~1_cout\)) # (!\ALGORITMO|U_PO|reg_B\(1) & ((\ALGORITMO|U_PO|reg_R\(1)) # (!\ALGORITMO|U_PO|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(1),
	datab => \ALGORITMO|U_PO|reg_R\(1),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~1_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~3_cout\);

-- Location: LCCOMB_X99_Y17_N4
\ALGORITMO|U_PO|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~5_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(2) & ((!\ALGORITMO|U_PO|LessThan1~3_cout\) # (!\ALGORITMO|U_PO|reg_R\(2)))) # (!\ALGORITMO|U_PO|reg_B\(2) & (!\ALGORITMO|U_PO|reg_R\(2) & !\ALGORITMO|U_PO|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(2),
	datab => \ALGORITMO|U_PO|reg_R\(2),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~3_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~5_cout\);

-- Location: LCCOMB_X99_Y17_N6
\ALGORITMO|U_PO|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~7_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(3) & (\ALGORITMO|U_PO|reg_R\(3) & !\ALGORITMO|U_PO|LessThan1~5_cout\)) # (!\ALGORITMO|U_PO|reg_B\(3) & ((\ALGORITMO|U_PO|reg_R\(3)) # (!\ALGORITMO|U_PO|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(3),
	datab => \ALGORITMO|U_PO|reg_R\(3),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~5_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~7_cout\);

-- Location: LCCOMB_X99_Y17_N8
\ALGORITMO|U_PO|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~9_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(4) & (\ALGORITMO|U_PO|reg_B\(4) & !\ALGORITMO|U_PO|LessThan1~7_cout\)) # (!\ALGORITMO|U_PO|reg_R\(4) & ((\ALGORITMO|U_PO|reg_B\(4)) # (!\ALGORITMO|U_PO|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(4),
	datab => \ALGORITMO|U_PO|reg_B\(4),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~7_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~9_cout\);

-- Location: LCCOMB_X99_Y17_N10
\ALGORITMO|U_PO|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~11_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(5) & (\ALGORITMO|U_PO|reg_R\(5) & !\ALGORITMO|U_PO|LessThan1~9_cout\)) # (!\ALGORITMO|U_PO|reg_B\(5) & ((\ALGORITMO|U_PO|reg_R\(5)) # (!\ALGORITMO|U_PO|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(5),
	datab => \ALGORITMO|U_PO|reg_R\(5),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~9_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~11_cout\);

-- Location: LCCOMB_X99_Y17_N12
\ALGORITMO|U_PO|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~13_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(6) & ((!\ALGORITMO|U_PO|LessThan1~11_cout\) # (!\ALGORITMO|U_PO|reg_R\(6)))) # (!\ALGORITMO|U_PO|reg_B\(6) & (!\ALGORITMO|U_PO|reg_R\(6) & !\ALGORITMO|U_PO|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(6),
	datab => \ALGORITMO|U_PO|reg_R\(6),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~11_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~13_cout\);

-- Location: LCCOMB_X99_Y17_N14
\ALGORITMO|U_PO|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~15_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(7) & (\ALGORITMO|U_PO|reg_R\(7) & !\ALGORITMO|U_PO|LessThan1~13_cout\)) # (!\ALGORITMO|U_PO|reg_B\(7) & ((\ALGORITMO|U_PO|reg_R\(7)) # (!\ALGORITMO|U_PO|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(7),
	datab => \ALGORITMO|U_PO|reg_R\(7),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~13_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~15_cout\);

-- Location: LCCOMB_X99_Y17_N16
\ALGORITMO|U_PO|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~17_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(8) & ((!\ALGORITMO|U_PO|LessThan1~15_cout\) # (!\ALGORITMO|U_PO|reg_R\(8)))) # (!\ALGORITMO|U_PO|reg_B\(8) & (!\ALGORITMO|U_PO|reg_R\(8) & !\ALGORITMO|U_PO|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(8),
	datab => \ALGORITMO|U_PO|reg_R\(8),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~15_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~17_cout\);

-- Location: LCCOMB_X99_Y17_N18
\ALGORITMO|U_PO|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~19_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(9) & (\ALGORITMO|U_PO|reg_R\(9) & !\ALGORITMO|U_PO|LessThan1~17_cout\)) # (!\ALGORITMO|U_PO|reg_B\(9) & ((\ALGORITMO|U_PO|reg_R\(9)) # (!\ALGORITMO|U_PO|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(9),
	datab => \ALGORITMO|U_PO|reg_R\(9),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~17_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~19_cout\);

-- Location: LCCOMB_X99_Y17_N20
\ALGORITMO|U_PO|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~21_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(10) & (\ALGORITMO|U_PO|reg_B\(10) & !\ALGORITMO|U_PO|LessThan1~19_cout\)) # (!\ALGORITMO|U_PO|reg_R\(10) & ((\ALGORITMO|U_PO|reg_B\(10)) # (!\ALGORITMO|U_PO|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(10),
	datab => \ALGORITMO|U_PO|reg_B\(10),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~19_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~21_cout\);

-- Location: LCCOMB_X99_Y17_N22
\ALGORITMO|U_PO|LessThan1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~23_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(11) & (\ALGORITMO|U_PO|reg_R\(11) & !\ALGORITMO|U_PO|LessThan1~21_cout\)) # (!\ALGORITMO|U_PO|reg_B\(11) & ((\ALGORITMO|U_PO|reg_R\(11)) # (!\ALGORITMO|U_PO|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(11),
	datab => \ALGORITMO|U_PO|reg_R\(11),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~21_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~23_cout\);

-- Location: LCCOMB_X99_Y17_N24
\ALGORITMO|U_PO|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~25_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(12) & (\ALGORITMO|U_PO|reg_B\(12) & !\ALGORITMO|U_PO|LessThan1~23_cout\)) # (!\ALGORITMO|U_PO|reg_R\(12) & ((\ALGORITMO|U_PO|reg_B\(12)) # (!\ALGORITMO|U_PO|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(12),
	datab => \ALGORITMO|U_PO|reg_B\(12),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~23_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~25_cout\);

-- Location: LCCOMB_X99_Y17_N26
\ALGORITMO|U_PO|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~27_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(13) & (\ALGORITMO|U_PO|reg_R\(13) & !\ALGORITMO|U_PO|LessThan1~25_cout\)) # (!\ALGORITMO|U_PO|reg_B\(13) & ((\ALGORITMO|U_PO|reg_R\(13)) # (!\ALGORITMO|U_PO|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(13),
	datab => \ALGORITMO|U_PO|reg_R\(13),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~25_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~27_cout\);

-- Location: LCCOMB_X99_Y17_N28
\ALGORITMO|U_PO|LessThan1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~29_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(14) & (\ALGORITMO|U_PO|reg_B\(14) & !\ALGORITMO|U_PO|LessThan1~27_cout\)) # (!\ALGORITMO|U_PO|reg_R\(14) & ((\ALGORITMO|U_PO|reg_B\(14)) # (!\ALGORITMO|U_PO|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(14),
	datab => \ALGORITMO|U_PO|reg_B\(14),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~27_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~29_cout\);

-- Location: LCCOMB_X99_Y17_N30
\ALGORITMO|U_PO|LessThan1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~30_combout\ = (\ALGORITMO|U_PO|reg_B\(15) & ((\ALGORITMO|U_PO|LessThan1~29_cout\) # (!\ALGORITMO|U_PO|reg_R\(15)))) # (!\ALGORITMO|U_PO|reg_B\(15) & (\ALGORITMO|U_PO|LessThan1~29_cout\ & !\ALGORITMO|U_PO|reg_R\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|reg_B\(15),
	datad => \ALGORITMO|U_PO|reg_R\(15),
	cin => \ALGORITMO|U_PO|LessThan1~29_cout\,
	combout => \ALGORITMO|U_PO|LessThan1~30_combout\);

-- Location: LCCOMB_X100_Y16_N8
\ALGORITMO|U_PC|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector10~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ & !\ALGORITMO|U_PO|LessThan1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	datad => \ALGORITMO|U_PO|LessThan1~30_combout\,
	combout => \ALGORITMO|U_PC|Selector10~0_combout\);

-- Location: FF_X100_Y16_N9
\ALGORITMO|U_PC|estado_atual.S_WRITE_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector10~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\);

-- Location: LCCOMB_X100_Y16_N16
\po_endereco[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\) # ((\ALGORITMO|U_PC|estado_atual.S_REQ_B~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_R~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	combout => \po_endereco[0]~0_combout\);

-- Location: LCCOMB_X102_Y17_N30
\po_endereco[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~1_combout\ = (\ALGORITMO|U_PC|estado_atual.S_REQ_R~q\) # (\ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	combout => \po_endereco[0]~1_combout\);

-- Location: LCCOMB_X101_Y16_N12
\po_endereco[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~2_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\po_endereco[0]~0_combout\) # (\po_endereco[0]~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[15]~input_o\,
	datac => \po_endereco[0]~0_combout\,
	datad => \po_endereco[0]~1_combout\,
	combout => \po_endereco[0]~2_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X102_Y15_N10
\ALGORITMO|U_PO|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~46_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(3) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PO|reg_A\(3),
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \ALGORITMO|U_PO|Add0~28_combout\,
	combout => \ALGORITMO|U_PO|Add0~46_combout\);

-- Location: LCCOMB_X102_Y15_N6
\ALGORITMO|U_PO|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~47_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~46_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~46_combout\,
	combout => \ALGORITMO|U_PO|Add0~47_combout\);

-- Location: LCCOMB_X102_Y16_N28
\OPERATIVA|reg5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~47_combout\,
	combout => \OPERATIVA|reg5|q[3]~feeder_combout\);

-- Location: FF_X102_Y16_N29
\OPERATIVA|reg5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(3));

-- Location: FF_X102_Y16_N31
\OPERATIVA|reg7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~47_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(3));

-- Location: LCCOMB_X103_Y16_N28
\OPERATIVA|reg6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~47_combout\,
	combout => \OPERATIVA|reg6|q[3]~feeder_combout\);

-- Location: FF_X103_Y16_N29
\OPERATIVA|reg6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(3));

-- Location: FF_X103_Y16_N3
\OPERATIVA|reg4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~47_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(3));

-- Location: LCCOMB_X103_Y16_N2
\OPERATIVA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~2_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|reg6|q\(3)) # ((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|reg4|q\(3) & !\po_endereco[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg6|q\(3),
	datac => \OPERATIVA|reg4|q\(3),
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux12~2_combout\);

-- Location: LCCOMB_X102_Y16_N30
\OPERATIVA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~3_combout\ = (\po_endereco[0]~2_combout\ & ((\OPERATIVA|Mux12~2_combout\ & ((\OPERATIVA|reg7|q\(3)))) # (!\OPERATIVA|Mux12~2_combout\ & (\OPERATIVA|reg5|q\(3))))) # (!\po_endereco[0]~2_combout\ & (((\OPERATIVA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~2_combout\,
	datab => \OPERATIVA|reg5|q\(3),
	datac => \OPERATIVA|reg7|q\(3),
	datad => \OPERATIVA|Mux12~2_combout\,
	combout => \OPERATIVA|Mux12~3_combout\);

-- Location: LCCOMB_X99_Y15_N28
\OPERATIVA|reg2|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~47_combout\,
	combout => \OPERATIVA|reg2|q[3]~feeder_combout\);

-- Location: FF_X99_Y15_N29
\OPERATIVA|reg2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(3));

-- Location: FF_X99_Y15_N21
\OPERATIVA|reg3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~47_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(3));

-- Location: LCCOMB_X100_Y15_N18
\OPERATIVA|reg0|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg0|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~47_combout\,
	combout => \OPERATIVA|reg0|q[3]~feeder_combout\);

-- Location: FF_X100_Y15_N19
\OPERATIVA|reg0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg0|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(3));

-- Location: LCCOMB_X100_Y15_N8
\OPERATIVA|reg1|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~47_combout\,
	combout => \OPERATIVA|reg1|q[3]~feeder_combout\);

-- Location: FF_X100_Y15_N9
\OPERATIVA|reg1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(3));

-- Location: LCCOMB_X99_Y15_N18
\OPERATIVA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~4_combout\ = (\po_endereco[1]~5_combout\ & (((\po_endereco[0]~2_combout\)))) # (!\po_endereco[1]~5_combout\ & ((\po_endereco[0]~2_combout\ & ((\OPERATIVA|reg1|q\(3)))) # (!\po_endereco[0]~2_combout\ & (\OPERATIVA|reg0|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg0|q\(3),
	datab => \OPERATIVA|reg1|q\(3),
	datac => \po_endereco[1]~5_combout\,
	datad => \po_endereco[0]~2_combout\,
	combout => \OPERATIVA|Mux12~4_combout\);

-- Location: LCCOMB_X99_Y15_N20
\OPERATIVA|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~5_combout\ = (\po_endereco[1]~5_combout\ & ((\OPERATIVA|Mux12~4_combout\ & ((\OPERATIVA|reg3|q\(3)))) # (!\OPERATIVA|Mux12~4_combout\ & (\OPERATIVA|reg2|q\(3))))) # (!\po_endereco[1]~5_combout\ & (((\OPERATIVA|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~5_combout\,
	datab => \OPERATIVA|reg2|q\(3),
	datac => \OPERATIVA|reg3|q\(3),
	datad => \OPERATIVA|Mux12~4_combout\,
	combout => \OPERATIVA|Mux12~5_combout\);

-- Location: LCCOMB_X101_Y17_N16
\OPERATIVA|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~6_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux12~5_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux12~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux12~3_combout\,
	datad => \OPERATIVA|Mux12~5_combout\,
	combout => \OPERATIVA|Mux12~6_combout\);

-- Location: FF_X102_Y17_N15
\ALGORITMO|U_PO|reg_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux12~6_combout\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(3));

-- Location: LCCOMB_X100_Y17_N22
\ALGORITMO|U_PO|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~3_combout\ = (!\ALGORITMO|U_PO|reg_B\(3) & (!\ALGORITMO|U_PO|reg_B\(2) & (!\ALGORITMO|U_PO|reg_B\(1) & !\ALGORITMO|U_PO|reg_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(3),
	datab => \ALGORITMO|U_PO|reg_B\(2),
	datac => \ALGORITMO|U_PO|reg_B\(1),
	datad => \ALGORITMO|U_PO|reg_B\(0),
	combout => \ALGORITMO|U_PO|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y17_N2
\ALGORITMO|U_PO|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~1_combout\ = (!\ALGORITMO|U_PO|reg_B\(9) & (!\ALGORITMO|U_PO|reg_B\(10) & (!\ALGORITMO|U_PO|reg_B\(11) & !\ALGORITMO|U_PO|reg_B\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(9),
	datab => \ALGORITMO|U_PO|reg_B\(10),
	datac => \ALGORITMO|U_PO|reg_B\(11),
	datad => \ALGORITMO|U_PO|reg_B\(8),
	combout => \ALGORITMO|U_PO|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y17_N4
\ALGORITMO|U_PO|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~2_combout\ = (!\ALGORITMO|U_PO|reg_B\(4) & (!\ALGORITMO|U_PO|reg_B\(6) & (!\ALGORITMO|U_PO|reg_B\(7) & !\ALGORITMO|U_PO|reg_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(4),
	datab => \ALGORITMO|U_PO|reg_B\(6),
	datac => \ALGORITMO|U_PO|reg_B\(7),
	datad => \ALGORITMO|U_PO|reg_B\(5),
	combout => \ALGORITMO|U_PO|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y17_N16
\ALGORITMO|U_PO|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~0_combout\ = (!\ALGORITMO|U_PO|reg_B\(13) & (!\ALGORITMO|U_PO|reg_B\(12) & (!\ALGORITMO|U_PO|reg_B\(15) & !\ALGORITMO|U_PO|reg_B\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(13),
	datab => \ALGORITMO|U_PO|reg_B\(12),
	datac => \ALGORITMO|U_PO|reg_B\(15),
	datad => \ALGORITMO|U_PO|reg_B\(14),
	combout => \ALGORITMO|U_PO|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y17_N28
\ALGORITMO|U_PO|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~4_combout\ = (\ALGORITMO|U_PO|Equal0~3_combout\ & (\ALGORITMO|U_PO|Equal0~1_combout\ & (\ALGORITMO|U_PO|Equal0~2_combout\ & \ALGORITMO|U_PO|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Equal0~3_combout\,
	datab => \ALGORITMO|U_PO|Equal0~1_combout\,
	datac => \ALGORITMO|U_PO|Equal0~2_combout\,
	datad => \ALGORITMO|U_PO|Equal0~0_combout\,
	combout => \ALGORITMO|U_PO|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y16_N18
\ALGORITMO|U_PC|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector14~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ & \ALGORITMO|U_PO|LessThan1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	datad => \ALGORITMO|U_PO|LessThan1~30_combout\,
	combout => \ALGORITMO|U_PC|Selector14~0_combout\);

-- Location: LCCOMB_X100_Y16_N24
\ALGORITMO|U_PC|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector14~1_combout\ = (\ALGORITMO|U_PC|Selector14~0_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_CHECK~q\ & ((\ALGORITMO|U_PO|Equal0~4_combout\) # (\ALGORITMO|U_PO|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Equal0~4_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\,
	datac => \ALGORITMO|U_PO|LessThan0~30_combout\,
	datad => \ALGORITMO|U_PC|Selector14~0_combout\,
	combout => \ALGORITMO|U_PC|Selector14~1_combout\);

-- Location: FF_X100_Y16_N25
\ALGORITMO|U_PC|estado_atual.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector14~1_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_DONE~q\);

-- Location: FF_X106_Y15_N7
\reg3_resto[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~49_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(2));

-- Location: FF_X102_Y14_N9
\reg3_resto[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~39_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(7));

-- Location: LCCOMB_X106_Y15_N8
\reg3_resto[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3_resto[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~41_combout\,
	combout => \reg3_resto[6]~feeder_combout\);

-- Location: FF_X106_Y15_N9
\reg3_resto[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg3_resto[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(6));

-- Location: LCCOMB_X106_Y15_N14
\reg3_resto[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3_resto[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \reg3_resto[5]~feeder_combout\);

-- Location: FF_X106_Y15_N15
\reg3_resto[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg3_resto[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(5));

-- Location: FF_X102_Y15_N21
\reg3_resto[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~45_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(4));

-- Location: LCCOMB_X106_Y15_N30
\CONV_R|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~2_combout\ = (reg3_resto(7) & (!reg3_resto(5) & ((reg3_resto(6)) # (!reg3_resto(4))))) # (!reg3_resto(7) & (reg3_resto(5) & ((reg3_resto(4)) # (!reg3_resto(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(7),
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => reg3_resto(4),
	combout => \CONV_R|bcd~2_combout\);

-- Location: LCCOMB_X106_Y15_N20
\CONV_R|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~1_combout\ = (reg3_resto(6) & ((reg3_resto(7) & (!reg3_resto(5) & reg3_resto(4))) # (!reg3_resto(7) & (reg3_resto(5) & !reg3_resto(4))))) # (!reg3_resto(6) & (reg3_resto(4) $ (((reg3_resto(7) & !reg3_resto(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(7),
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => reg3_resto(4),
	combout => \CONV_R|bcd~1_combout\);

-- Location: FF_X106_Y15_N3
\reg3_resto[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~47_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(3));

-- Location: LCCOMB_X106_Y15_N16
\CONV_R|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~0_combout\ = (reg3_resto(6) & (!reg3_resto(4) & (reg3_resto(7) $ (!reg3_resto(5))))) # (!reg3_resto(6) & (reg3_resto(7) & (!reg3_resto(5) & reg3_resto(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(7),
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => reg3_resto(4),
	combout => \CONV_R|bcd~0_combout\);

-- Location: LCCOMB_X106_Y15_N0
\CONV_R|bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~4_combout\ = (\CONV_R|bcd~2_combout\ & (!reg3_resto(3) & ((\CONV_R|bcd~1_combout\) # (\CONV_R|bcd~0_combout\)))) # (!\CONV_R|bcd~2_combout\ & ((reg3_resto(3) $ (\CONV_R|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~2_combout\,
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|bcd~0_combout\,
	combout => \CONV_R|bcd~4_combout\);

-- Location: LCCOMB_X106_Y15_N12
\CONV_R|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~3_combout\ = (\CONV_R|bcd~2_combout\ & (!\CONV_R|bcd~1_combout\ & (!reg3_resto(3)))) # (!\CONV_R|bcd~2_combout\ & (\CONV_R|bcd~0_combout\ & ((\CONV_R|bcd~1_combout\) # (reg3_resto(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~2_combout\,
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|bcd~0_combout\,
	combout => \CONV_R|bcd~3_combout\);

-- Location: LCCOMB_X106_Y15_N22
\CONV_R|bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~5_combout\ = (\CONV_R|bcd~1_combout\ & ((reg3_resto(3)) # ((!\CONV_R|bcd~2_combout\ & !\CONV_R|bcd~0_combout\)))) # (!\CONV_R|bcd~1_combout\ & (((!reg3_resto(3) & \CONV_R|bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~2_combout\,
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|bcd~0_combout\,
	combout => \CONV_R|bcd~5_combout\);

-- Location: LCCOMB_X106_Y15_N28
\CONV_R|bcd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~8_combout\ = (reg3_resto(2) & (\CONV_R|bcd~4_combout\)) # (!reg3_resto(2) & ((\CONV_R|bcd~4_combout\ & (!\CONV_R|bcd~3_combout\ & !\CONV_R|bcd~5_combout\)) # (!\CONV_R|bcd~4_combout\ & (\CONV_R|bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(2),
	datab => \CONV_R|bcd~4_combout\,
	datac => \CONV_R|bcd~3_combout\,
	datad => \CONV_R|bcd~5_combout\,
	combout => \CONV_R|bcd~8_combout\);

-- Location: LCCOMB_X105_Y15_N28
\reg3_resto[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3_resto[1]~feeder_combout\ = \ALGORITMO|U_PO|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~13_combout\,
	combout => \reg3_resto[1]~feeder_combout\);

-- Location: FF_X105_Y15_N29
\reg3_resto[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg3_resto[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(1));

-- Location: LCCOMB_X107_Y15_N6
\CONV_R|bcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~7_combout\ = (\CONV_R|bcd~3_combout\ & (!reg3_resto(2))) # (!\CONV_R|bcd~3_combout\ & ((reg3_resto(2) & ((!\CONV_R|bcd~5_combout\))) # (!reg3_resto(2) & (\CONV_R|bcd~4_combout\ & \CONV_R|bcd~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~3_combout\,
	datab => reg3_resto(2),
	datac => \CONV_R|bcd~4_combout\,
	datad => \CONV_R|bcd~5_combout\,
	combout => \CONV_R|bcd~7_combout\);

-- Location: LCCOMB_X105_Y15_N26
\CONV_R|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan5~1_combout\ = (\CONV_R|bcd~8_combout\ & ((reg3_resto(1)) # (\CONV_R|bcd~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONV_R|bcd~8_combout\,
	datac => reg3_resto(1),
	datad => \CONV_R|bcd~7_combout\,
	combout => \CONV_R|LessThan5~1_combout\);

-- Location: LCCOMB_X107_Y15_N4
\CONV_R|bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~6_combout\ = (\CONV_R|bcd~5_combout\ & (((!reg3_resto(2) & !\CONV_R|bcd~4_combout\)))) # (!\CONV_R|bcd~5_combout\ & (\CONV_R|bcd~3_combout\ & ((reg3_resto(2)) # (\CONV_R|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~3_combout\,
	datab => reg3_resto(2),
	datac => \CONV_R|bcd~4_combout\,
	datad => \CONV_R|bcd~5_combout\,
	combout => \CONV_R|bcd~6_combout\);

-- Location: LCCOMB_X105_Y15_N12
\display_data[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~14_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\CONV_R|LessThan5~1_combout\) # ((\CONV_R|bcd~6_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan5~1_combout\,
	datab => \CONV_R|bcd~6_combout\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[4]~14_combout\);

-- Location: LCCOMB_X108_Y16_N10
\CONTROL|PE.READ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.READ~0_combout\ = (!\CONTROL|EA.IDLE~q\ & (\KEY[2]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL|EA.IDLE~q\,
	datac => \KEY[2]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \CONTROL|PE.READ~0_combout\);

-- Location: FF_X108_Y16_N11
\CONTROL|EA.READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CONTROL|PE.READ~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.READ~q\);

-- Location: LCCOMB_X103_Y15_N14
\display_data[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~13_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux12~3_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux12~5_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \OPERATIVA|Mux12~3_combout\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[3]~13_combout\);

-- Location: LCCOMB_X105_Y15_N10
\display_data[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~15_combout\ = (\display_data[4]~14_combout\ & (\SW[3]~input_o\ & ((!\ALGORITMO|U_PC|estado_atual.S_DONE~q\)))) # (!\display_data[4]~14_combout\ & (((\display_data[3]~13_combout\) # (\ALGORITMO|U_PC|estado_atual.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~14_combout\,
	datab => \SW[3]~input_o\,
	datac => \display_data[3]~13_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[3]~15_combout\);

-- Location: LCCOMB_X105_Y15_N30
\CONV_R|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan5~0_combout\ = (reg3_resto(1)) # (\CONV_R|bcd~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3_resto(1),
	datad => \CONV_R|bcd~7_combout\,
	combout => \CONV_R|LessThan5~0_combout\);

-- Location: LCCOMB_X105_Y15_N16
\display_data[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~16_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_R|bcd~8_combout\ $ (((!\display_data[3]~15_combout\ & \CONV_R|LessThan5~0_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\display_data[3]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~15_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_R|LessThan5~0_combout\,
	datad => \CONV_R|bcd~8_combout\,
	combout => \display_data[3]~16_combout\);

-- Location: LCCOMB_X105_Y15_N18
\display_data[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~17_combout\ = (\display_data[3]~16_combout\) # ((!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \ALGORITMO|U_PC|estado_atual.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \display_data[3]~16_combout\,
	combout => \display_data[3]~17_combout\);

-- Location: LCCOMB_X105_Y15_N20
\display_data[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~8_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\CONV_R|bcd~6_combout\) # ((\CONV_R|LessThan5~0_combout\ & \CONV_R|bcd~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan5~0_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_R|bcd~6_combout\,
	datad => \CONV_R|bcd~8_combout\,
	combout => \display_data[1]~8_combout\);

-- Location: LCCOMB_X108_Y15_N12
\display_data[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~5_combout\ = (\CONTROL|EA.IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\CONTROL|EA.WRITE~q\)))) # (!\CONTROL|EA.IDLE~q\ & 
-- (((\ALGORITMO|U_PC|estado_atual.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.WRITE~q\,
	datab => \CONTROL|EA.IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[1]~5_combout\);

-- Location: LCCOMB_X108_Y15_N18
\display_data[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\CONTROL|EA.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \display_data[1]~4_combout\);

-- Location: LCCOMB_X108_Y15_N10
\display_data[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[2]~10_combout\ = (\display_data[1]~5_combout\ & ((\display_data[1]~4_combout\) # ((\CONV_R|bcd~7_combout\)))) # (!\display_data[1]~5_combout\ & (!\display_data[1]~4_combout\ & ((\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[1]~5_combout\,
	datab => \display_data[1]~4_combout\,
	datac => \CONV_R|bcd~7_combout\,
	datad => \SW[17]~input_o\,
	combout => \display_data[2]~10_combout\);

-- Location: LCCOMB_X108_Y15_N20
\display_data[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~3_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & \CONTROL|EA.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \display_data[1]~3_combout\);

-- Location: LCCOMB_X108_Y15_N4
\display_data[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[2]~11_combout\ = (\display_data[2]~10_combout\ & (((\SW[2]~input_o\)) # (!\display_data[1]~3_combout\))) # (!\display_data[2]~10_combout\ & (\display_data[1]~3_combout\ & (\OPERATIVA|Mux13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[2]~10_combout\,
	datab => \display_data[1]~3_combout\,
	datac => \OPERATIVA|Mux13~6_combout\,
	datad => \SW[2]~input_o\,
	combout => \display_data[2]~11_combout\);

-- Location: LCCOMB_X105_Y15_N4
\display_data[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[2]~12_combout\ = (\display_data[1]~8_combout\ & (\CONV_R|bcd~7_combout\ $ ((!reg3_resto(1))))) # (!\display_data[1]~8_combout\ & (((\display_data[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~7_combout\,
	datab => \display_data[1]~8_combout\,
	datac => reg3_resto(1),
	datad => \display_data[2]~11_combout\,
	combout => \display_data[2]~12_combout\);

-- Location: LCCOMB_X103_Y15_N28
\display_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~0_combout\ = (!\CONTROL|EA.READ~q\ & ((\CONTROL|EA.WRITE~q\ & ((\SW[0]~input_o\))) # (!\CONTROL|EA.WRITE~q\ & (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \SW[15]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \display_data[0]~0_combout\);

-- Location: LCCOMB_X101_Y15_N10
\display_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~1_combout\ = (\display_data[0]~0_combout\) # ((\OPERATIVA|Mux15~6_combout\ & \CONTROL|EA.READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux15~6_combout\,
	datab => \CONTROL|EA.READ~q\,
	datad => \display_data[0]~0_combout\,
	combout => \display_data[0]~1_combout\);

-- Location: FF_X101_Y15_N21
\reg3_resto[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~7_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(0));

-- Location: LCCOMB_X101_Y15_N20
\display_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~2_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((reg3_resto(0))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\display_data[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \display_data[0]~1_combout\,
	datac => reg3_resto(0),
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[0]~2_combout\);

-- Location: LCCOMB_X108_Y15_N6
\display_data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~6_combout\ = (\display_data[1]~5_combout\ & (((reg3_resto(1) & !\display_data[1]~4_combout\)))) # (!\display_data[1]~5_combout\ & ((\SW[16]~input_o\) # ((\display_data[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[1]~5_combout\,
	datab => \SW[16]~input_o\,
	datac => reg3_resto(1),
	datad => \display_data[1]~4_combout\,
	combout => \display_data[1]~6_combout\);

-- Location: LCCOMB_X108_Y15_N28
\display_data[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~7_combout\ = (\display_data[1]~6_combout\ & (((\OPERATIVA|Mux14~6_combout\)) # (!\display_data[1]~3_combout\))) # (!\display_data[1]~6_combout\ & (\display_data[1]~3_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[1]~6_combout\,
	datab => \display_data[1]~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \OPERATIVA|Mux14~6_combout\,
	combout => \display_data[1]~7_combout\);

-- Location: LCCOMB_X105_Y15_N2
\display_data[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~9_combout\ = (\display_data[1]~8_combout\ & (!reg3_resto(1))) # (!\display_data[1]~8_combout\ & ((\display_data[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_data[1]~8_combout\,
	datac => reg3_resto(1),
	datad => \display_data[1]~7_combout\,
	combout => \display_data[1]~9_combout\);

-- Location: LCCOMB_X101_Y4_N16
\HEX0_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux6~0_combout\ = (\display_data[3]~17_combout\ & (\display_data[0]~2_combout\ & (\display_data[2]~12_combout\ $ (\display_data[1]~9_combout\)))) # (!\display_data[3]~17_combout\ & (!\display_data[1]~9_combout\ & (\display_data[2]~12_combout\ $ 
-- (\display_data[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux6~0_combout\);

-- Location: LCCOMB_X101_Y4_N18
\HEX0_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux5~0_combout\ = (\display_data[3]~17_combout\ & ((\display_data[0]~2_combout\ & ((\display_data[1]~9_combout\))) # (!\display_data[0]~2_combout\ & (\display_data[2]~12_combout\)))) # (!\display_data[3]~17_combout\ & 
-- (\display_data[2]~12_combout\ & (\display_data[0]~2_combout\ $ (\display_data[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y4_N12
\HEX0_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux4~0_combout\ = (\display_data[3]~17_combout\ & (\display_data[2]~12_combout\ & ((\display_data[1]~9_combout\) # (!\display_data[0]~2_combout\)))) # (!\display_data[3]~17_combout\ & (!\display_data[2]~12_combout\ & 
-- (!\display_data[0]~2_combout\ & \display_data[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux4~0_combout\);

-- Location: LCCOMB_X101_Y4_N26
\HEX0_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux3~0_combout\ = (\display_data[1]~9_combout\ & ((\display_data[2]~12_combout\ & ((\display_data[0]~2_combout\))) # (!\display_data[2]~12_combout\ & (\display_data[3]~17_combout\ & !\display_data[0]~2_combout\)))) # 
-- (!\display_data[1]~9_combout\ & (!\display_data[3]~17_combout\ & (\display_data[2]~12_combout\ $ (\display_data[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y4_N24
\HEX0_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux2~0_combout\ = (\display_data[1]~9_combout\ & (!\display_data[3]~17_combout\ & ((\display_data[0]~2_combout\)))) # (!\display_data[1]~9_combout\ & ((\display_data[2]~12_combout\ & (!\display_data[3]~17_combout\)) # 
-- (!\display_data[2]~12_combout\ & ((\display_data[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y4_N2
\HEX0_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux1~0_combout\ = (\display_data[2]~12_combout\ & (\display_data[0]~2_combout\ & (\display_data[3]~17_combout\ $ (\display_data[1]~9_combout\)))) # (!\display_data[2]~12_combout\ & (!\display_data[3]~17_combout\ & ((\display_data[0]~2_combout\) 
-- # (\display_data[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux1~0_combout\);

-- Location: LCCOMB_X101_Y4_N0
\HEX0_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux0~0_combout\ = (\display_data[0]~2_combout\ & ((\display_data[3]~17_combout\) # (\display_data[2]~12_combout\ $ (\display_data[1]~9_combout\)))) # (!\display_data[0]~2_combout\ & ((\display_data[1]~9_combout\) # (\display_data[3]~17_combout\ 
-- $ (\display_data[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[3]~17_combout\,
	datab => \display_data[2]~12_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \display_data[1]~9_combout\,
	combout => \HEX0_INST|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y15_N26
\CONV_R|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan0~0_combout\ = (reg3_resto(7) & ((reg3_resto(6)) # (reg3_resto(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => reg3_resto(7),
	combout => \CONV_R|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y15_N4
\CONV_R|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan4~0_combout\ = (reg3_resto(7) & ((reg3_resto(6) & (reg3_resto(5) & reg3_resto(4))) # (!reg3_resto(6) & (!reg3_resto(5))))) # (!reg3_resto(7) & (reg3_resto(6) & ((reg3_resto(5)) # (reg3_resto(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(7),
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => reg3_resto(4),
	combout => \CONV_R|LessThan4~0_combout\);

-- Location: LCCOMB_X106_Y15_N2
\CONV_R|bcd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~10_combout\ = \CONV_R|bcd~0_combout\ $ ((((!\CONV_R|bcd~1_combout\ & !reg3_resto(3))) # (!\CONV_R|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~2_combout\,
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|bcd~0_combout\,
	combout => \CONV_R|bcd~10_combout\);

-- Location: LCCOMB_X107_Y16_N12
\CONV_R|bcd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~11_combout\ = (\CONV_R|LessThan4~0_combout\ & ((!\CONV_R|bcd~10_combout\) # (!\CONV_R|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan0~0_combout\,
	datac => \CONV_R|LessThan4~0_combout\,
	datad => \CONV_R|bcd~10_combout\,
	combout => \CONV_R|bcd~11_combout\);

-- Location: LCCOMB_X107_Y15_N0
\CONV_R|bcd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|bcd~9_combout\ = \CONV_R|bcd~3_combout\ $ ((((!reg3_resto(2) & !\CONV_R|bcd~4_combout\)) # (!\CONV_R|bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~3_combout\,
	datab => reg3_resto(2),
	datac => \CONV_R|bcd~4_combout\,
	datad => \CONV_R|bcd~5_combout\,
	combout => \CONV_R|bcd~9_combout\);

-- Location: LCCOMB_X107_Y16_N8
\CONV_R|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|Add6~1_combout\ = ((\CONV_R|LessThan0~0_combout\ & (\CONV_R|LessThan4~0_combout\ & \CONV_R|bcd~10_combout\)) # (!\CONV_R|LessThan0~0_combout\ & ((!\CONV_R|bcd~10_combout\)))) # (!\CONV_R|bcd~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan0~0_combout\,
	datab => \CONV_R|bcd~9_combout\,
	datac => \CONV_R|LessThan4~0_combout\,
	datad => \CONV_R|bcd~10_combout\,
	combout => \CONV_R|Add6~1_combout\);

-- Location: LCCOMB_X105_Y16_N0
\display_data[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~31_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux8~3_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux8~5_combout\,
	datab => \CONTROL|EA.READ~q\,
	datac => \OPERATIVA|Mux8~3_combout\,
	datad => \po_endereco[2]~6_combout\,
	combout => \display_data[7]~31_combout\);

-- Location: LCCOMB_X106_Y15_N6
\display_data[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~68_combout\ = (reg3_resto(3) & (reg3_resto(5))) # (!reg3_resto(3) & ((reg3_resto(5) & ((reg3_resto(2)) # (reg3_resto(4)))) # (!reg3_resto(5) & ((!reg3_resto(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(3),
	datab => reg3_resto(5),
	datac => reg3_resto(2),
	datad => reg3_resto(4),
	combout => \display_data[5]~68_combout\);

-- Location: LCCOMB_X106_Y15_N18
\display_data[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~69_combout\ = (reg3_resto(6) & (\display_data[5]~68_combout\ & (reg3_resto(7) $ (reg3_resto(5))))) # (!reg3_resto(6) & (reg3_resto(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(7),
	datab => reg3_resto(6),
	datac => reg3_resto(5),
	datad => \display_data[5]~68_combout\,
	combout => \display_data[5]~69_combout\);

-- Location: LCCOMB_X107_Y16_N0
\display_data[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~23_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[5]~69_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONTROL|EA.WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL|EA.WRITE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[5]~69_combout\,
	combout => \display_data[5]~23_combout\);

-- Location: LCCOMB_X107_Y16_N10
\display_data[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~32_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[5]~23_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[5]~23_combout\ & (\SW[7]~input_o\)) # (!\display_data[5]~23_combout\ & 
-- ((\display_data[7]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \display_data[7]~31_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[5]~23_combout\,
	combout => \display_data[7]~32_combout\);

-- Location: LCCOMB_X107_Y16_N18
\display_data[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~33_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_R|bcd~11_combout\ $ (((\CONV_R|Add6~1_combout\ & !\display_data[7]~32_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~11_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_R|Add6~1_combout\,
	datad => \display_data[7]~32_combout\,
	combout => \display_data[7]~33_combout\);

-- Location: LCCOMB_X107_Y16_N16
\display_data[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~34_combout\ = (\display_data[7]~33_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[7]~33_combout\,
	combout => \display_data[7]~34_combout\);

-- Location: LCCOMB_X103_Y15_N16
\display_data[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~18_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux11~3_combout\)) # (!\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux11~3_combout\,
	datab => \OPERATIVA|Mux11~5_combout\,
	datac => \po_endereco[2]~6_combout\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[4]~18_combout\);

-- Location: LCCOMB_X105_Y15_N24
\display_data[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~19_combout\ = (\display_data[4]~14_combout\ & (((\SW[4]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\)))) # (!\display_data[4]~14_combout\ & ((\display_data[4]~18_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~14_combout\,
	datab => \display_data[4]~18_combout\,
	datac => \SW[4]~input_o\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[4]~19_combout\);

-- Location: LCCOMB_X105_Y15_N22
\display_data[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~20_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_R|bcd~6_combout\ $ (((\CONV_R|LessThan5~1_combout\ & !\display_data[4]~19_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan5~1_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_R|bcd~6_combout\,
	datad => \display_data[4]~19_combout\,
	combout => \display_data[4]~20_combout\);

-- Location: LCCOMB_X105_Y15_N0
\display_data[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~21_combout\ = (\display_data[4]~20_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~20_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[4]~21_combout\);

-- Location: LCCOMB_X107_Y16_N6
\CONV_R|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|Add6~0_combout\ = (\CONV_R|LessThan0~0_combout\ & ((!\CONV_R|bcd~10_combout\) # (!\CONV_R|LessThan4~0_combout\))) # (!\CONV_R|LessThan0~0_combout\ & ((\CONV_R|bcd~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan0~0_combout\,
	datac => \CONV_R|LessThan4~0_combout\,
	datad => \CONV_R|bcd~10_combout\,
	combout => \CONV_R|Add6~0_combout\);

-- Location: LCCOMB_X102_Y18_N12
\display_data[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~27_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux9~3_combout\)) # (!\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[2]~6_combout\,
	datab => \OPERATIVA|Mux9~3_combout\,
	datac => \CONTROL|EA.READ~q\,
	datad => \OPERATIVA|Mux9~5_combout\,
	combout => \display_data[6]~27_combout\);

-- Location: LCCOMB_X107_Y16_N24
\display_data[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~28_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[5]~23_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[5]~23_combout\ & (\SW[6]~input_o\)) # (!\display_data[5]~23_combout\ & 
-- ((\display_data[6]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \display_data[6]~27_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[5]~23_combout\,
	combout => \display_data[6]~28_combout\);

-- Location: LCCOMB_X107_Y16_N4
\display_data[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~29_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_R|Add6~0_combout\ $ (((\display_data[6]~28_combout\) # (!\CONV_R|bcd~9_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|Add6~0_combout\,
	datab => \CONV_R|bcd~9_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[6]~28_combout\,
	combout => \display_data[6]~29_combout\);

-- Location: LCCOMB_X107_Y16_N22
\display_data[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~30_combout\ = (\display_data[6]~29_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \display_data[6]~29_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[6]~30_combout\);

-- Location: LCCOMB_X106_Y15_N10
\CONV_R|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan2~0_combout\ = (\CONV_R|bcd~0_combout\) # ((\CONV_R|bcd~2_combout\ & ((\CONV_R|bcd~1_combout\) # (reg3_resto(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|bcd~2_combout\,
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|bcd~0_combout\,
	combout => \CONV_R|LessThan2~0_combout\);

-- Location: LCCOMB_X106_Y15_N24
\CONV_R|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_R|LessThan3~0_combout\ = (\CONV_R|bcd~1_combout\ & ((reg3_resto(2) & ((reg3_resto(3)) # (!\CONV_R|LessThan2~0_combout\))) # (!reg3_resto(2) & (reg3_resto(3) & !\CONV_R|LessThan2~0_combout\)))) # (!\CONV_R|bcd~1_combout\ & (((!reg3_resto(3) & 
-- \CONV_R|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(2),
	datab => \CONV_R|bcd~1_combout\,
	datac => reg3_resto(3),
	datad => \CONV_R|LessThan2~0_combout\,
	combout => \CONV_R|LessThan3~0_combout\);

-- Location: LCCOMB_X103_Y15_N26
\display_data[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~22_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux10~3_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \po_endereco[2]~6_combout\,
	datac => \OPERATIVA|Mux10~5_combout\,
	datad => \OPERATIVA|Mux10~3_combout\,
	combout => \display_data[5]~22_combout\);

-- Location: LCCOMB_X107_Y16_N2
\display_data[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~24_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[5]~23_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[5]~23_combout\ & ((\SW[5]~input_o\))) # (!\display_data[5]~23_combout\ & 
-- (\display_data[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[5]~22_combout\,
	datac => \SW[5]~input_o\,
	datad => \display_data[5]~23_combout\,
	combout => \display_data[5]~24_combout\);

-- Location: LCCOMB_X107_Y16_N20
\display_data[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~25_combout\ = \display_data[5]~24_combout\ $ (((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_R|LessThan3~0_combout\ $ (!\CONV_R|bcd~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_R|LessThan3~0_combout\,
	datab => \CONV_R|bcd~3_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[5]~24_combout\,
	combout => \display_data[5]~25_combout\);

-- Location: LCCOMB_X107_Y16_N14
\display_data[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~26_combout\ = (\display_data[5]~25_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[5]~25_combout\,
	combout => \display_data[5]~26_combout\);

-- Location: LCCOMB_X111_Y20_N16
\HEX1_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux6~0_combout\ = (\display_data[7]~34_combout\ & (\display_data[4]~21_combout\ & (\display_data[6]~30_combout\ $ (\display_data[5]~26_combout\)))) # (!\display_data[7]~34_combout\ & (!\display_data[5]~26_combout\ & 
-- (\display_data[4]~21_combout\ $ (\display_data[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y20_N10
\HEX1_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux5~0_combout\ = (\display_data[7]~34_combout\ & ((\display_data[4]~21_combout\ & ((\display_data[5]~26_combout\))) # (!\display_data[4]~21_combout\ & (\display_data[6]~30_combout\)))) # (!\display_data[7]~34_combout\ & 
-- (\display_data[6]~30_combout\ & (\display_data[4]~21_combout\ $ (\display_data[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y20_N20
\HEX1_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux4~0_combout\ = (\display_data[7]~34_combout\ & (\display_data[6]~30_combout\ & ((\display_data[5]~26_combout\) # (!\display_data[4]~21_combout\)))) # (!\display_data[7]~34_combout\ & (!\display_data[4]~21_combout\ & 
-- (!\display_data[6]~30_combout\ & \display_data[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y20_N14
\HEX1_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux3~0_combout\ = (\display_data[5]~26_combout\ & ((\display_data[4]~21_combout\ & ((\display_data[6]~30_combout\))) # (!\display_data[4]~21_combout\ & (\display_data[7]~34_combout\ & !\display_data[6]~30_combout\)))) # 
-- (!\display_data[5]~26_combout\ & (!\display_data[7]~34_combout\ & (\display_data[4]~21_combout\ $ (\display_data[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y20_N4
\HEX1_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux2~0_combout\ = (\display_data[5]~26_combout\ & (!\display_data[7]~34_combout\ & (\display_data[4]~21_combout\))) # (!\display_data[5]~26_combout\ & ((\display_data[6]~30_combout\ & (!\display_data[7]~34_combout\)) # 
-- (!\display_data[6]~30_combout\ & ((\display_data[4]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y20_N22
\HEX1_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux1~0_combout\ = (\display_data[4]~21_combout\ & (\display_data[7]~34_combout\ $ (((\display_data[5]~26_combout\) # (!\display_data[6]~30_combout\))))) # (!\display_data[4]~21_combout\ & (!\display_data[7]~34_combout\ & 
-- (!\display_data[6]~30_combout\ & \display_data[5]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y20_N12
\HEX1_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux0~0_combout\ = (\display_data[4]~21_combout\ & ((\display_data[7]~34_combout\) # (\display_data[6]~30_combout\ $ (\display_data[5]~26_combout\)))) # (!\display_data[4]~21_combout\ & ((\display_data[5]~26_combout\) # 
-- (\display_data[7]~34_combout\ $ (\display_data[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~34_combout\,
	datab => \display_data[4]~21_combout\,
	datac => \display_data[6]~30_combout\,
	datad => \display_data[5]~26_combout\,
	combout => \HEX1_INST|Mux0~0_combout\);

-- Location: FF_X102_Y15_N13
\reg2_quociente[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~41_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(6));

-- Location: FF_X102_Y15_N15
\reg2_quociente[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~43_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(5));

-- Location: FF_X102_Y15_N5
\reg2_quociente[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~45_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(4));

-- Location: FF_X102_Y14_N23
\reg2_quociente[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~39_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(7));

-- Location: LCCOMB_X106_Y14_N16
\CONV_Q|bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~0_combout\ = (reg2_quociente(6) & ((reg2_quociente(5) & (!reg2_quociente(4) & !reg2_quociente(7))) # (!reg2_quociente(5) & (reg2_quociente(4) & reg2_quociente(7))))) # (!reg2_quociente(6) & (reg2_quociente(4) $ (((!reg2_quociente(5) & 
-- reg2_quociente(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(6),
	datab => reg2_quociente(5),
	datac => reg2_quociente(4),
	datad => reg2_quociente(7),
	combout => \CONV_Q|bcd~0_combout\);

-- Location: LCCOMB_X106_Y14_N2
\CONV_Q|bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~1_combout\ = (reg2_quociente(6) & (!reg2_quociente(4) & (reg2_quociente(5) $ (!reg2_quociente(7))))) # (!reg2_quociente(6) & (!reg2_quociente(5) & (reg2_quociente(4) & reg2_quociente(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(6),
	datab => reg2_quociente(5),
	datac => reg2_quociente(4),
	datad => reg2_quociente(7),
	combout => \CONV_Q|bcd~1_combout\);

-- Location: FF_X102_Y15_N7
\reg2_quociente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~47_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(3));

-- Location: LCCOMB_X106_Y14_N0
\CONV_Q|bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~2_combout\ = (reg2_quociente(5) & (!reg2_quociente(7) & ((reg2_quociente(4)) # (!reg2_quociente(6))))) # (!reg2_quociente(5) & (reg2_quociente(7) & ((reg2_quociente(6)) # (!reg2_quociente(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(6),
	datab => reg2_quociente(5),
	datac => reg2_quociente(4),
	datad => reg2_quociente(7),
	combout => \CONV_Q|bcd~2_combout\);

-- Location: LCCOMB_X100_Y18_N22
\CONV_Q|bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~4_combout\ = (\CONV_Q|bcd~2_combout\ & (!\CONV_Q|bcd~0_combout\ & ((!reg2_quociente(3))))) # (!\CONV_Q|bcd~2_combout\ & (\CONV_Q|bcd~1_combout\ & ((\CONV_Q|bcd~0_combout\) # (reg2_quociente(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~0_combout\,
	datab => \CONV_Q|bcd~1_combout\,
	datac => reg2_quociente(3),
	datad => \CONV_Q|bcd~2_combout\,
	combout => \CONV_Q|bcd~4_combout\);

-- Location: LCCOMB_X100_Y18_N28
\CONV_Q|bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~5_combout\ = (\CONV_Q|bcd~0_combout\ & ((reg2_quociente(3)) # ((!\CONV_Q|bcd~1_combout\ & !\CONV_Q|bcd~2_combout\)))) # (!\CONV_Q|bcd~0_combout\ & (\CONV_Q|bcd~1_combout\ & (!reg2_quociente(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~0_combout\,
	datab => \CONV_Q|bcd~1_combout\,
	datac => reg2_quociente(3),
	datad => \CONV_Q|bcd~2_combout\,
	combout => \CONV_Q|bcd~5_combout\);

-- Location: LCCOMB_X100_Y18_N4
\CONV_Q|bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~3_combout\ = (\CONV_Q|bcd~1_combout\ & (((!reg2_quociente(3))))) # (!\CONV_Q|bcd~1_combout\ & ((reg2_quociente(3) & ((!\CONV_Q|bcd~2_combout\))) # (!reg2_quociente(3) & (\CONV_Q|bcd~0_combout\ & \CONV_Q|bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~0_combout\,
	datab => \CONV_Q|bcd~1_combout\,
	datac => reg2_quociente(3),
	datad => \CONV_Q|bcd~2_combout\,
	combout => \CONV_Q|bcd~3_combout\);

-- Location: FF_X101_Y15_N15
\reg2_quociente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~49_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(2));

-- Location: LCCOMB_X100_Y18_N0
\CONV_Q|bcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~7_combout\ = (\CONV_Q|bcd~4_combout\ & (((!reg2_quociente(2))))) # (!\CONV_Q|bcd~4_combout\ & ((\CONV_Q|bcd~5_combout\ & (\CONV_Q|bcd~3_combout\ & !reg2_quociente(2))) # (!\CONV_Q|bcd~5_combout\ & ((reg2_quociente(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~4_combout\,
	datab => \CONV_Q|bcd~5_combout\,
	datac => \CONV_Q|bcd~3_combout\,
	datad => reg2_quociente(2),
	combout => \CONV_Q|bcd~7_combout\);

-- Location: FF_X101_Y15_N1
\reg2_quociente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~13_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(1));

-- Location: LCCOMB_X103_Y14_N22
\display_data[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~41_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux5~3_combout\)) # (!\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \po_endereco[2]~6_combout\,
	datac => \OPERATIVA|Mux5~3_combout\,
	datad => \OPERATIVA|Mux5~5_combout\,
	combout => \display_data[10]~41_combout\);

-- Location: LCCOMB_X100_Y18_N18
\CONV_Q|bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~6_combout\ = (\CONV_Q|bcd~4_combout\ & ((\CONV_Q|bcd~3_combout\ $ (!reg2_quociente(2))))) # (!\CONV_Q|bcd~4_combout\ & (\CONV_Q|bcd~3_combout\ & ((reg2_quociente(2)) # (!\CONV_Q|bcd~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~4_combout\,
	datab => \CONV_Q|bcd~5_combout\,
	datac => \CONV_Q|bcd~3_combout\,
	datad => reg2_quociente(2),
	combout => \CONV_Q|bcd~6_combout\);

-- Location: LCCOMB_X101_Y16_N20
\CONV_Q|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|LessThan5~0_combout\ = (\CONV_Q|bcd~6_combout\ & ((\CONV_Q|bcd~7_combout\) # (reg2_quociente(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~7_combout\,
	datab => \CONV_Q|bcd~6_combout\,
	datad => reg2_quociente(1),
	combout => \CONV_Q|LessThan5~0_combout\);

-- Location: LCCOMB_X100_Y18_N6
\CONV_Q|bcd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~8_combout\ = (\CONV_Q|bcd~5_combout\ & (((!\CONV_Q|bcd~3_combout\ & !reg2_quociente(2))))) # (!\CONV_Q|bcd~5_combout\ & (\CONV_Q|bcd~4_combout\ & ((\CONV_Q|bcd~3_combout\) # (reg2_quociente(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~4_combout\,
	datab => \CONV_Q|bcd~5_combout\,
	datac => \CONV_Q|bcd~3_combout\,
	datad => reg2_quociente(2),
	combout => \CONV_Q|bcd~8_combout\);

-- Location: LCCOMB_X108_Y14_N24
\display_data[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~38_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\CONV_Q|LessThan5~0_combout\) # ((\CONV_Q|bcd~8_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|LessThan5~0_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_Q|bcd~8_combout\,
	datad => \CONTROL|EA.WRITE~q\,
	combout => \display_data[11]~38_combout\);

-- Location: LCCOMB_X108_Y14_N6
\display_data[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~42_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[11]~38_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[11]~38_combout\ & (\SW[10]~input_o\)) # (!\display_data[11]~38_combout\ & 
-- ((\display_data[10]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \display_data[10]~41_combout\,
	datad => \display_data[11]~38_combout\,
	combout => \display_data[10]~42_combout\);

-- Location: LCCOMB_X107_Y16_N26
\display_data[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~43_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_Q|bcd~7_combout\ $ (((!reg2_quociente(1) & !\display_data[10]~42_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[10]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~7_combout\,
	datab => reg2_quociente(1),
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[10]~42_combout\,
	combout => \display_data[10]~43_combout\);

-- Location: LCCOMB_X107_Y16_N28
\display_data[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~44_combout\ = (\display_data[10]~43_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~43_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[10]~44_combout\);

-- Location: LCCOMB_X103_Y14_N16
\display_data[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[9]~37_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux6~3_combout\)) # (!\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux6~3_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \CONTROL|EA.READ~q\,
	datad => \OPERATIVA|Mux6~5_combout\,
	combout => \display_data[9]~37_combout\);

-- Location: LCCOMB_X108_Y14_N22
\display_data[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[9]~39_combout\ = (\display_data[11]~38_combout\ & (((!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \SW[9]~input_o\)))) # (!\display_data[11]~38_combout\ & ((\display_data[9]~37_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[9]~37_combout\,
	datab => \display_data[11]~38_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \SW[9]~input_o\,
	combout => \display_data[9]~39_combout\);

-- Location: LCCOMB_X108_Y14_N8
\display_data[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[9]~40_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\display_data[9]~39_combout\ $ (((!reg2_quociente(1)))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[9]~39_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[9]~39_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => reg2_quociente(1),
	combout => \display_data[9]~40_combout\);

-- Location: FF_X101_Y15_N5
\reg2_quociente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~7_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(0));

-- Location: LCCOMB_X103_Y15_N12
\display_data[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[8]~35_combout\ = (\CONTROL|EA.READ~q\ & (((\OPERATIVA|Mux7~6_combout\)))) # (!\CONTROL|EA.READ~q\ & (\SW[8]~input_o\ & (\CONTROL|EA.WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \OPERATIVA|Mux7~6_combout\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[8]~35_combout\);

-- Location: LCCOMB_X103_Y15_N2
\display_data[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[8]~36_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (reg2_quociente(0))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & \display_data[8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(0),
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \display_data[8]~35_combout\,
	combout => \display_data[8]~36_combout\);

-- Location: LCCOMB_X101_Y16_N30
\display_data[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~45_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\CONV_Q|bcd~7_combout\) # ((reg2_quociente(1))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \CONV_Q|bcd~7_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => reg2_quociente(1),
	combout => \display_data[11]~45_combout\);

-- Location: LCCOMB_X101_Y14_N20
\display_data[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~46_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux4~3_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux4~5_combout\,
	datab => \OPERATIVA|Mux4~3_combout\,
	datac => \po_endereco[2]~6_combout\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[11]~46_combout\);

-- Location: LCCOMB_X101_Y14_N22
\display_data[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~47_combout\ = (\display_data[11]~45_combout\ & (((\display_data[11]~38_combout\)))) # (!\display_data[11]~45_combout\ & ((\display_data[11]~38_combout\ & (\SW[11]~input_o\)) # (!\display_data[11]~38_combout\ & 
-- ((\display_data[11]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \display_data[11]~45_combout\,
	datac => \display_data[11]~38_combout\,
	datad => \display_data[11]~46_combout\,
	combout => \display_data[11]~47_combout\);

-- Location: LCCOMB_X101_Y16_N0
\display_data[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~48_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_Q|bcd~6_combout\ $ (((\display_data[11]~47_combout\ & \display_data[11]~45_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[11]~47_combout\) # 
-- ((\display_data[11]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[11]~47_combout\,
	datac => \CONV_Q|bcd~6_combout\,
	datad => \display_data[11]~45_combout\,
	combout => \display_data[11]~48_combout\);

-- Location: LCCOMB_X114_Y22_N16
\HEX2_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux6~0_combout\ = (\display_data[10]~44_combout\ & (!\display_data[9]~40_combout\ & (\display_data[8]~36_combout\ $ (!\display_data[11]~48_combout\)))) # (!\display_data[10]~44_combout\ & (\display_data[8]~36_combout\ & 
-- (\display_data[9]~40_combout\ $ (!\display_data[11]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\HEX2_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux5~0_combout\ = (\display_data[9]~40_combout\ & ((\display_data[8]~36_combout\ & ((\display_data[11]~48_combout\))) # (!\display_data[8]~36_combout\ & (\display_data[10]~44_combout\)))) # (!\display_data[9]~40_combout\ & 
-- (\display_data[10]~44_combout\ & (\display_data[8]~36_combout\ $ (\display_data[11]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\HEX2_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux4~0_combout\ = (\display_data[10]~44_combout\ & (\display_data[11]~48_combout\ & ((\display_data[9]~40_combout\) # (!\display_data[8]~36_combout\)))) # (!\display_data[10]~44_combout\ & (\display_data[9]~40_combout\ & 
-- (!\display_data[8]~36_combout\ & !\display_data[11]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N10
\HEX2_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux3~0_combout\ = (\display_data[9]~40_combout\ & ((\display_data[10]~44_combout\ & (\display_data[8]~36_combout\)) # (!\display_data[10]~44_combout\ & (!\display_data[8]~36_combout\ & \display_data[11]~48_combout\)))) # 
-- (!\display_data[9]~40_combout\ & (!\display_data[11]~48_combout\ & (\display_data[10]~44_combout\ $ (\display_data[8]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\HEX2_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux2~0_combout\ = (\display_data[9]~40_combout\ & (((\display_data[8]~36_combout\ & !\display_data[11]~48_combout\)))) # (!\display_data[9]~40_combout\ & ((\display_data[10]~44_combout\ & ((!\display_data[11]~48_combout\))) # 
-- (!\display_data[10]~44_combout\ & (\display_data[8]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\HEX2_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux1~0_combout\ = (\display_data[10]~44_combout\ & (\display_data[8]~36_combout\ & (\display_data[9]~40_combout\ $ (\display_data[11]~48_combout\)))) # (!\display_data[10]~44_combout\ & (!\display_data[11]~48_combout\ & 
-- ((\display_data[9]~40_combout\) # (\display_data[8]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y22_N0
\HEX2_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux0~0_combout\ = (\display_data[8]~36_combout\ & ((\display_data[11]~48_combout\) # (\display_data[10]~44_combout\ $ (\display_data[9]~40_combout\)))) # (!\display_data[8]~36_combout\ & ((\display_data[9]~40_combout\) # 
-- (\display_data[10]~44_combout\ $ (\display_data[11]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[10]~44_combout\,
	datab => \display_data[9]~40_combout\,
	datac => \display_data[8]~36_combout\,
	datad => \display_data[11]~48_combout\,
	combout => \HEX2_INST|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y18_N24
\CONV_Q|bcd~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~13_combout\ = \CONV_Q|bcd~4_combout\ $ ((((!\CONV_Q|bcd~3_combout\ & !reg2_quociente(2))) # (!\CONV_Q|bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~4_combout\,
	datab => \CONV_Q|bcd~5_combout\,
	datac => \CONV_Q|bcd~3_combout\,
	datad => reg2_quociente(2),
	combout => \CONV_Q|bcd~13_combout\);

-- Location: LCCOMB_X103_Y14_N2
\display_data[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~61_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux1~1_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \po_endereco[2]~6_combout\,
	datac => \OPERATIVA|Mux1~3_combout\,
	datad => \OPERATIVA|Mux1~1_combout\,
	combout => \display_data[14]~61_combout\);

-- Location: LCCOMB_X106_Y14_N6
\CONV_Q|bcd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~9_combout\ = \CONV_Q|bcd~1_combout\ $ ((((!reg2_quociente(3) & !\CONV_Q|bcd~0_combout\)) # (!\CONV_Q|bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(3),
	datab => \CONV_Q|bcd~0_combout\,
	datac => \CONV_Q|bcd~1_combout\,
	datad => \CONV_Q|bcd~2_combout\,
	combout => \CONV_Q|bcd~9_combout\);

-- Location: LCCOMB_X106_Y14_N8
\CONV_Q|bcd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~10_combout\ = (reg2_quociente(7) & ((reg2_quociente(5)) # (reg2_quociente(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(5),
	datab => reg2_quociente(7),
	datac => reg2_quociente(6),
	combout => \CONV_Q|bcd~10_combout\);

-- Location: LCCOMB_X106_Y14_N18
\CONV_Q|bcd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~11_combout\ = (reg2_quociente(6) & ((reg2_quociente(5) & (!reg2_quociente(4) & reg2_quociente(7))) # (!reg2_quociente(5) & ((reg2_quociente(7)) # (!reg2_quociente(4)))))) # (!reg2_quociente(6) & ((reg2_quociente(5)) # ((!reg2_quociente(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(6),
	datab => reg2_quociente(5),
	datac => reg2_quociente(4),
	datad => reg2_quociente(7),
	combout => \CONV_Q|bcd~11_combout\);

-- Location: LCCOMB_X106_Y14_N28
\CONV_Q|bcd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~12_combout\ = (!\CONV_Q|bcd~11_combout\ & ((!\CONV_Q|bcd~10_combout\) # (!\CONV_Q|bcd~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~9_combout\,
	datac => \CONV_Q|bcd~10_combout\,
	datad => \CONV_Q|bcd~11_combout\,
	combout => \CONV_Q|bcd~12_combout\);

-- Location: LCCOMB_X106_Y14_N10
\CONV_Q|bcd~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|bcd~14_combout\ = (\CONV_Q|bcd~9_combout\ & ((\CONV_Q|bcd~11_combout\) # (!\CONV_Q|bcd~10_combout\))) # (!\CONV_Q|bcd~9_combout\ & (\CONV_Q|bcd~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~9_combout\,
	datac => \CONV_Q|bcd~10_combout\,
	datad => \CONV_Q|bcd~11_combout\,
	combout => \CONV_Q|bcd~14_combout\);

-- Location: LCCOMB_X106_Y14_N12
\display_data[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~54_combout\ = (\CONV_Q|bcd~12_combout\ & (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((!\CONV_Q|bcd~14_combout\) # (!\CONV_Q|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~13_combout\,
	datab => \CONV_Q|bcd~12_combout\,
	datac => \CONV_Q|bcd~14_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[14]~54_combout\);

-- Location: LCCOMB_X106_Y14_N26
\display_data[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~55_combout\ = (reg2_quociente(7) & ((reg2_quociente(6) & ((!reg2_quociente(4)) # (!reg2_quociente(5)))) # (!reg2_quociente(6) & (reg2_quociente(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(6),
	datab => reg2_quociente(5),
	datac => reg2_quociente(4),
	datad => reg2_quociente(7),
	combout => \display_data[14]~55_combout\);

-- Location: LCCOMB_X106_Y14_N20
\display_data[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~56_combout\ = (\display_data[14]~55_combout\ & \CONV_Q|bcd~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_data[14]~55_combout\,
	datad => \CONV_Q|bcd~9_combout\,
	combout => \display_data[14]~56_combout\);

-- Location: LCCOMB_X106_Y14_N14
\display_data[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~57_combout\ = (\display_data[14]~54_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\display_data[14]~56_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~54_combout\,
	datab => \display_data[14]~56_combout\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[14]~57_combout\);

-- Location: LCCOMB_X106_Y14_N24
\display_data[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~62_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[14]~57_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[14]~57_combout\ & ((\SW[14]~input_o\))) # (!\display_data[14]~57_combout\ & 
-- (\display_data[14]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[14]~61_combout\,
	datac => \display_data[14]~57_combout\,
	datad => \SW[14]~input_o\,
	combout => \display_data[14]~62_combout\);

-- Location: LCCOMB_X106_Y14_N30
\display_data[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~63_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_Q|bcd~14_combout\ $ (((\display_data[14]~62_combout\) # (!\CONV_Q|bcd~13_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[14]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~13_combout\,
	datab => \display_data[14]~62_combout\,
	datac => \CONV_Q|bcd~14_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[14]~63_combout\);

-- Location: LCCOMB_X108_Y14_N12
\display_data[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~64_combout\ = (\display_data[14]~63_combout\) # ((!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \ALGORITMO|U_PC|estado_atual.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \display_data[14]~63_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[14]~64_combout\);

-- Location: LCCOMB_X100_Y18_N16
\CONV_Q|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|LessThan2~0_combout\ = (\CONV_Q|bcd~1_combout\) # ((\CONV_Q|bcd~2_combout\ & ((\CONV_Q|bcd~0_combout\) # (reg2_quociente(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~0_combout\,
	datab => \CONV_Q|bcd~1_combout\,
	datac => reg2_quociente(3),
	datad => \CONV_Q|bcd~2_combout\,
	combout => \CONV_Q|LessThan2~0_combout\);

-- Location: LCCOMB_X100_Y18_N26
\CONV_Q|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONV_Q|LessThan3~0_combout\ = (\CONV_Q|bcd~0_combout\ & ((reg2_quociente(2) & ((reg2_quociente(3)) # (!\CONV_Q|LessThan2~0_combout\))) # (!reg2_quociente(2) & (reg2_quociente(3) & !\CONV_Q|LessThan2~0_combout\)))) # (!\CONV_Q|bcd~0_combout\ & 
-- (((!reg2_quociente(3) & \CONV_Q|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(2),
	datab => \CONV_Q|bcd~0_combout\,
	datac => reg2_quociente(3),
	datad => \CONV_Q|LessThan2~0_combout\,
	combout => \CONV_Q|LessThan3~0_combout\);

-- Location: LCCOMB_X101_Y18_N10
\display_data[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~53_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux2~3_combout\)) # (!\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux2~3_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \CONTROL|EA.READ~q\,
	datad => \OPERATIVA|Mux2~5_combout\,
	combout => \display_data[13]~53_combout\);

-- Location: LCCOMB_X100_Y18_N10
\display_data[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~58_combout\ = (\display_data[14]~57_combout\ & (((!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \SW[13]~input_o\)))) # (!\display_data[14]~57_combout\ & ((\display_data[13]~53_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[13]~53_combout\,
	datab => \display_data[14]~57_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \SW[13]~input_o\,
	combout => \display_data[13]~58_combout\);

-- Location: LCCOMB_X100_Y18_N8
\display_data[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~59_combout\ = \display_data[13]~58_combout\ $ (((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_Q|bcd~4_combout\ $ (!\CONV_Q|LessThan3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~4_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_Q|LessThan3~0_combout\,
	datad => \display_data[13]~58_combout\,
	combout => \display_data[13]~59_combout\);

-- Location: LCCOMB_X108_Y14_N14
\display_data[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~60_combout\ = (\display_data[13]~59_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \display_data[13]~59_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[13]~60_combout\);

-- Location: LCCOMB_X106_Y14_N4
\display_data[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[15]~65_combout\ = (\CONV_Q|bcd~14_combout\ & ((\CONV_Q|bcd~13_combout\ & ((\CONV_Q|bcd~12_combout\))) # (!\CONV_Q|bcd~13_combout\ & (\display_data[14]~56_combout\)))) # (!\CONV_Q|bcd~14_combout\ & (\display_data[14]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|bcd~14_combout\,
	datab => \display_data[14]~56_combout\,
	datac => \CONV_Q|bcd~13_combout\,
	datad => \CONV_Q|bcd~12_combout\,
	combout => \display_data[15]~65_combout\);

-- Location: LCCOMB_X103_Y14_N20
\display_data[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[15]~66_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # ((\CONTROL|EA.READ~q\ & (!\SW[17]~input_o\ & \OPERATIVA|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \SW[17]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \OPERATIVA|Mux0~3_combout\,
	combout => \display_data[15]~66_combout\);

-- Location: LCCOMB_X106_Y14_N22
\display_data[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[15]~67_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\display_data[15]~65_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[15]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \display_data[15]~65_combout\,
	datad => \display_data[15]~66_combout\,
	combout => \display_data[15]~67_combout\);

-- Location: LCCOMB_X103_Y14_N12
\display_data[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~49_combout\ = (\CONTROL|EA.READ~q\ & ((\po_endereco[2]~6_combout\ & ((\OPERATIVA|Mux3~3_combout\))) # (!\po_endereco[2]~6_combout\ & (\OPERATIVA|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux3~5_combout\,
	datab => \po_endereco[2]~6_combout\,
	datac => \CONTROL|EA.READ~q\,
	datad => \OPERATIVA|Mux3~3_combout\,
	combout => \display_data[12]~49_combout\);

-- Location: LCCOMB_X108_Y14_N16
\display_data[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~50_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((!\display_data[11]~38_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[11]~38_combout\ & ((\SW[12]~input_o\))) # (!\display_data[11]~38_combout\ & 
-- (\display_data[12]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[12]~49_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \SW[12]~input_o\,
	datad => \display_data[11]~38_combout\,
	combout => \display_data[12]~50_combout\);

-- Location: LCCOMB_X108_Y14_N10
\display_data[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~51_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\CONV_Q|bcd~8_combout\ $ (((\CONV_Q|LessThan5~0_combout\ & !\display_data[12]~50_combout\))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[12]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONV_Q|LessThan5~0_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \CONV_Q|bcd~8_combout\,
	datad => \display_data[12]~50_combout\,
	combout => \display_data[12]~51_combout\);

-- Location: LCCOMB_X108_Y14_N0
\display_data[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~52_combout\ = (\display_data[12]~51_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[12]~51_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[12]~52_combout\);

-- Location: LCCOMB_X108_Y14_N2
\HEX3_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux6~0_combout\ = (\display_data[14]~64_combout\ & (!\display_data[13]~60_combout\ & (\display_data[15]~67_combout\ $ (!\display_data[12]~52_combout\)))) # (!\display_data[14]~64_combout\ & (\display_data[12]~52_combout\ & 
-- (\display_data[13]~60_combout\ $ (!\display_data[15]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y14_N20
\HEX3_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux5~0_combout\ = (\display_data[13]~60_combout\ & ((\display_data[12]~52_combout\ & ((\display_data[15]~67_combout\))) # (!\display_data[12]~52_combout\ & (\display_data[14]~64_combout\)))) # (!\display_data[13]~60_combout\ & 
-- (\display_data[14]~64_combout\ & (\display_data[15]~67_combout\ $ (\display_data[12]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y14_N18
\HEX3_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux4~0_combout\ = (\display_data[14]~64_combout\ & (\display_data[15]~67_combout\ & ((\display_data[13]~60_combout\) # (!\display_data[12]~52_combout\)))) # (!\display_data[14]~64_combout\ & (\display_data[13]~60_combout\ & 
-- (!\display_data[15]~67_combout\ & !\display_data[12]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y14_N4
\HEX3_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux3~0_combout\ = (\display_data[13]~60_combout\ & ((\display_data[14]~64_combout\ & ((\display_data[12]~52_combout\))) # (!\display_data[14]~64_combout\ & (\display_data[15]~67_combout\ & !\display_data[12]~52_combout\)))) # 
-- (!\display_data[13]~60_combout\ & (!\display_data[15]~67_combout\ & (\display_data[14]~64_combout\ $ (\display_data[12]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y14_N26
\HEX3_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux2~0_combout\ = (\display_data[13]~60_combout\ & (((!\display_data[15]~67_combout\ & \display_data[12]~52_combout\)))) # (!\display_data[13]~60_combout\ & ((\display_data[14]~64_combout\ & (!\display_data[15]~67_combout\)) # 
-- (!\display_data[14]~64_combout\ & ((\display_data[12]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y14_N28
\HEX3_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux1~0_combout\ = (\display_data[14]~64_combout\ & (\display_data[12]~52_combout\ & (\display_data[13]~60_combout\ $ (\display_data[15]~67_combout\)))) # (!\display_data[14]~64_combout\ & (!\display_data[15]~67_combout\ & 
-- ((\display_data[13]~60_combout\) # (\display_data[12]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y14_N30
\HEX3_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux0~0_combout\ = (\display_data[12]~52_combout\ & ((\display_data[15]~67_combout\) # (\display_data[14]~64_combout\ $ (\display_data[13]~60_combout\)))) # (!\display_data[12]~52_combout\ & ((\display_data[13]~60_combout\) # 
-- (\display_data[14]~64_combout\ $ (\display_data[15]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[14]~64_combout\,
	datab => \display_data[13]~60_combout\,
	datac => \display_data[15]~67_combout\,
	datad => \display_data[12]~52_combout\,
	combout => \HEX3_INST|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y16_N0
\ALGORITMO|U_PC|led_erro_ba~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|led_erro_ba~0_combout\ = (\ALGORITMO|U_PO|LessThan0~30_combout\ & \ALGORITMO|U_PC|estado_atual.S_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|LessThan0~30_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \ALGORITMO|U_PC|led_erro_ba~0_combout\);

-- Location: LCCOMB_X100_Y16_N2
\ALGORITMO|U_PC|led_erro_b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|led_erro_b0~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \ALGORITMO|U_PO|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PO|Equal0~4_combout\,
	combout => \ALGORITMO|U_PC|led_erro_b0~0_combout\);

-- Location: FF_X101_Y14_N29
\reg2_quociente[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~55_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(8));

-- Location: LCCOMB_X99_Y14_N2
\reg2_quociente[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~61_combout\,
	combout => \reg2_quociente[9]~feeder_combout\);

-- Location: FF_X99_Y14_N3
\reg2_quociente[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(9));

-- Location: LCCOMB_X101_Y14_N30
\reg2_quociente[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~67_combout\,
	combout => \reg2_quociente[10]~feeder_combout\);

-- Location: FF_X101_Y14_N31
\reg2_quociente[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(10));

-- Location: FF_X102_Y14_N7
\reg2_quociente[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~73_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(11));

-- Location: LCCOMB_X99_Y14_N4
\reg2_quociente[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~79_combout\,
	combout => \reg2_quociente[12]~feeder_combout\);

-- Location: FF_X99_Y14_N5
\reg2_quociente[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(12));

-- Location: FF_X102_Y14_N13
\reg2_quociente[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~85_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(13));

-- Location: FF_X102_Y14_N5
\reg2_quociente[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(14));

-- Location: FF_X102_Y14_N1
\reg2_quociente[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~97_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(15));

-- Location: FF_X101_Y14_N17
\reg3_resto[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~55_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(8));

-- Location: FF_X102_Y14_N27
\reg3_resto[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~61_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(9));

-- Location: FF_X101_Y14_N11
\reg3_resto[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~67_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(10));

-- Location: FF_X102_Y14_N29
\reg3_resto[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~73_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(11));

-- Location: FF_X102_Y14_N19
\reg3_resto[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~79_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(12));

-- Location: FF_X102_Y14_N25
\reg3_resto[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~85_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(13));

-- Location: FF_X102_Y14_N15
\reg3_resto[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~91_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(14));

-- Location: FF_X102_Y14_N31
\reg3_resto[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~97_combout\,
	ena => \OPERATIVA|dec|enable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(15));

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_var_quociente(0) <= \var_quociente[0]~output_o\;

ww_var_quociente(1) <= \var_quociente[1]~output_o\;

ww_var_quociente(2) <= \var_quociente[2]~output_o\;

ww_var_quociente(3) <= \var_quociente[3]~output_o\;

ww_var_quociente(4) <= \var_quociente[4]~output_o\;

ww_var_quociente(5) <= \var_quociente[5]~output_o\;

ww_var_quociente(6) <= \var_quociente[6]~output_o\;

ww_var_quociente(7) <= \var_quociente[7]~output_o\;

ww_var_quociente(8) <= \var_quociente[8]~output_o\;

ww_var_quociente(9) <= \var_quociente[9]~output_o\;

ww_var_quociente(10) <= \var_quociente[10]~output_o\;

ww_var_quociente(11) <= \var_quociente[11]~output_o\;

ww_var_quociente(12) <= \var_quociente[12]~output_o\;

ww_var_quociente(13) <= \var_quociente[13]~output_o\;

ww_var_quociente(14) <= \var_quociente[14]~output_o\;

ww_var_quociente(15) <= \var_quociente[15]~output_o\;

ww_var_resto(0) <= \var_resto[0]~output_o\;

ww_var_resto(1) <= \var_resto[1]~output_o\;

ww_var_resto(2) <= \var_resto[2]~output_o\;

ww_var_resto(3) <= \var_resto[3]~output_o\;

ww_var_resto(4) <= \var_resto[4]~output_o\;

ww_var_resto(5) <= \var_resto[5]~output_o\;

ww_var_resto(6) <= \var_resto[6]~output_o\;

ww_var_resto(7) <= \var_resto[7]~output_o\;

ww_var_resto(8) <= \var_resto[8]~output_o\;

ww_var_resto(9) <= \var_resto[9]~output_o\;

ww_var_resto(10) <= \var_resto[10]~output_o\;

ww_var_resto(11) <= \var_resto[11]~output_o\;

ww_var_resto(12) <= \var_resto[12]~output_o\;

ww_var_resto(13) <= \var_resto[13]~output_o\;

ww_var_resto(14) <= \var_resto[14]~output_o\;

ww_var_resto(15) <= \var_resto[15]~output_o\;
END structure;


