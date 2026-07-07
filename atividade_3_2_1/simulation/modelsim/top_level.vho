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

-- DATE "07/07/2026 15:02:50"

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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 16);
	var_quociente : OUT std_logic_vector(15 DOWNTO 0);
	var_resto : OUT std_logic_vector(15 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[0]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[1]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[8]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[12]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[13]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[14]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_quociente[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[2]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[4]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[5]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[6]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[8]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[11]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[12]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[13]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[14]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- var_resto[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \KEY[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_IDLE~q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_CHECK~q\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \po_endereco[1]~0_combout\ : std_logic;
SIGNAL \po_endereco[1]~1_combout\ : std_logic;
SIGNAL \po_endereco[1]~2_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~48_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~50_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~96_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[15]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q[15]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~97_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~90_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~92_combout\ : std_logic;
SIGNAL \po_endereco[0]~4_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \po_endereco[0]~3_combout\ : std_logic;
SIGNAL \po_endereco[0]~5_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~83_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[13]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~82_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~84_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[12]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~80_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_B[12]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~76_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~71_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[10]~feeder_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~68_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~65_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[9]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~62_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~58_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[8]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~56_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~53_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[7]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~44_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q[6]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~39_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~32_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q[4]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~27_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~26_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~21_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~14_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~9_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~3_cout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~6_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~7_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[0]~feeder_combout\ : std_logic;
SIGNAL \po_we~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \CONTROL|PE.IDLE~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.IDLE~q\ : std_logic;
SIGNAL \CONTROL|PE.WRITE~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.WRITE~q\ : std_logic;
SIGNAL \po_we~1_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[0]~0_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[3]~4_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[2]~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg0|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[0]~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[1]~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[4]~5_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[5]~6_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[7]~9_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[0]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[6]~7_combout\ : std_logic;
SIGNAL \OPERATIVA|dec|enable[4]~8_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux15~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~5\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~10_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~12_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~13_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[1]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux14~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~8_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~11\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~16_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~18_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~19_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[2]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux13~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~15_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~17\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~22_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~24_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~25_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[3]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux12~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~20_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~23\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~29\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~34_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~36_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~37_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[5]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux10~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~33_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~35\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~40_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[6]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~42_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~43_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[6]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux9~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~38_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~41\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~46_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~49_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~51_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg4|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg0|q[7]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux8~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[7]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q[7]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~45_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~47\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~54_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~57_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[8]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux7~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~52_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~55\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~60_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~63_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg0|q[9]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux6~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~59_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~61\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~66_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~69_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~3_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[10]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux5~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~64_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~67\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~72_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[11]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~74_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~75_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[11]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux4~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~70_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~73\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~78_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~81_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[12]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux3~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q[12]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_R[12]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~77_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~79\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~86_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~88_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[13]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux2~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~85_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~87\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~93_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[14]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~89_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~95_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[14]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux1~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_B[14]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~91_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~94\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~98_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~100_combout\ : std_logic;
SIGNAL \OPERATIVA|reg2|q[15]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[15]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~1_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux0~2_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[15]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_A[4]~feeder_combout\ : std_logic;
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
SIGNAL \ALGORITMO|U_PC|sel_escrita[1]~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~28_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~30_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Add0~31_combout\ : std_logic;
SIGNAL \OPERATIVA|reg3|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg1|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~0_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~1_combout\ : std_logic;
SIGNAL \OPERATIVA|reg7|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg5|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|reg6|q[4]~feeder_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~2_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~3_combout\ : std_logic;
SIGNAL \OPERATIVA|Mux11~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~2_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~3_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|Equal0~4_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector14~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|Selector14~1_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|estado_atual.S_DONE~q\ : std_logic;
SIGNAL \display_data[0]~2_combout\ : std_logic;
SIGNAL \display_data[0]~1_combout\ : std_logic;
SIGNAL \display_data[1]~4_combout\ : std_logic;
SIGNAL \display_data[0]~0_combout\ : std_logic;
SIGNAL \display_data[0]~3_combout\ : std_logic;
SIGNAL \CONTROL|PE.READ~0_combout\ : std_logic;
SIGNAL \CONTROL|EA.READ~q\ : std_logic;
SIGNAL \display_data[3]~6_combout\ : std_logic;
SIGNAL \display_data[3]~7_combout\ : std_logic;
SIGNAL \reg3_resto[2]~feeder_combout\ : std_logic;
SIGNAL \display_data[2]~5_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX0_INST|Mux0~0_combout\ : std_logic;
SIGNAL \display_data[7]~16_combout\ : std_logic;
SIGNAL \display_data[7]~17_combout\ : std_logic;
SIGNAL \display_data[6]~14_combout\ : std_logic;
SIGNAL \display_data[6]~15_combout\ : std_logic;
SIGNAL \display_data[4]~9_combout\ : std_logic;
SIGNAL \display_data[4]~8_combout\ : std_logic;
SIGNAL \display_data[5]~12_combout\ : std_logic;
SIGNAL \display_data[5]~13_combout\ : std_logic;
SIGNAL \display_data[4]~10_combout\ : std_logic;
SIGNAL \display_data[4]~11_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX1_INST|Mux0~0_combout\ : std_logic;
SIGNAL \display_data[11]~24_combout\ : std_logic;
SIGNAL \display_data[11]~25_combout\ : std_logic;
SIGNAL \display_data[8]~18_combout\ : std_logic;
SIGNAL \display_data[8]~19_combout\ : std_logic;
SIGNAL \display_data[10]~22_combout\ : std_logic;
SIGNAL \display_data[10]~23_combout\ : std_logic;
SIGNAL \display_data[9]~20_combout\ : std_logic;
SIGNAL \display_data[9]~21_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX2_INST|Mux0~0_combout\ : std_logic;
SIGNAL \display_data[15]~32_combout\ : std_logic;
SIGNAL \display_data[15]~33_combout\ : std_logic;
SIGNAL \display_data[14]~30_combout\ : std_logic;
SIGNAL \display_data[14]~31_combout\ : std_logic;
SIGNAL \display_data[12]~26_combout\ : std_logic;
SIGNAL \display_data[12]~27_combout\ : std_logic;
SIGNAL \display_data[13]~28_combout\ : std_logic;
SIGNAL \display_data[13]~29_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux6~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux5~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux4~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux3~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux2~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux1~0_combout\ : std_logic;
SIGNAL \HEX3_INST|Mux0~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|led_erro_ba~0_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PC|led_erro_b0~0_combout\ : std_logic;
SIGNAL \reg2_quociente[8]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[9]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[12]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[13]~feeder_combout\ : std_logic;
SIGNAL \reg2_quociente[14]~feeder_combout\ : std_logic;
SIGNAL \ALGORITMO|U_PO|reg_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL reg2_quociente : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_R\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg5|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALGORITMO|U_PO|reg_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg4|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL reg3_resto : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg7|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \OPERATIVA|reg6|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL display_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \HEX1_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX0_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX3_INST|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \HEX2_INST|ALT_INV_Mux0~0_combout\ : std_logic;

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

\KEY[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[3]~input_o\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\HEX1_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX1_INST|Mux0~0_combout\;
\HEX0_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX0_INST|Mux0~0_combout\;
\HEX3_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX3_INST|Mux0~0_combout\;
\HEX2_INST|ALT_INV_Mux0~0_combout\ <= NOT \HEX2_INST|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X91_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X85_Y73_N23
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

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X105_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X115_Y62_N16
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

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X115_Y68_N16
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X115_Y69_N16
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

-- Location: IOOBUF_X87_Y73_N2
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X115_Y66_N23
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X115_Y66_N16
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

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X52_Y73_N15
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X82_Y67_N12
\ALGORITMO|U_PC|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector0~0_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \KEY[0]~input_o\,
	combout => \ALGORITMO|U_PC|Selector0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: CLKCTRL_G4
\KEY[3]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[3]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[3]~inputclkctrl_outclk\);

-- Location: FF_X82_Y67_N13
\ALGORITMO|U_PC|estado_atual.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector0~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\);

-- Location: IOIBUF_X69_Y73_N15
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X82_Y67_N4
\ALGORITMO|U_PC|proximo_estado.S_REQ_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \KEY[0]~input_o\,
	combout => \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\);

-- Location: FF_X82_Y67_N5
\ALGORITMO|U_PC|estado_atual.S_REQ_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|proximo_estado.S_REQ_A~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\);

-- Location: FF_X82_Y67_N15
\ALGORITMO|U_PC|estado_atual.S_SAVE_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\);

-- Location: FF_X83_Y67_N23
\ALGORITMO|U_PC|estado_atual.S_REQ_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\);

-- Location: FF_X83_Y67_N9
\ALGORITMO|U_PC|estado_atual.S_SAVE_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\);

-- Location: FF_X83_Y67_N1
\ALGORITMO|U_PC|estado_atual.S_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\);

-- Location: IOIBUF_X54_Y73_N8
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X82_Y67_N24
\po_endereco[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_REQ_A~q\ & (!\ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_REQ_A~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \po_endereco[1]~0_combout\);

-- Location: LCCOMB_X83_Y67_N0
\po_endereco[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~1_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_REQ_B~q\ & (!\ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\ & (!\ALGORITMO|U_PC|estado_atual.S_CHECK~q\ & !\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	combout => \po_endereco[1]~1_combout\);

-- Location: LCCOMB_X83_Y66_N16
\po_endereco[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[1]~2_combout\ = (\SW[16]~input_o\ & (((\po_endereco[1]~0_combout\ & \po_endereco[1]~1_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))) # (!\SW[16]~input_o\ & (((\po_endereco[1]~0_combout\ & \po_endereco[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \po_endereco[1]~0_combout\,
	datad => \po_endereco[1]~1_combout\,
	combout => \po_endereco[1]~2_combout\);

-- Location: LCCOMB_X83_Y65_N28
\ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\);

-- Location: FF_X83_Y65_N29
\ALGORITMO|U_PC|estado_atual.S_REQ_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\);

-- Location: LCCOMB_X83_Y65_N2
\ALGORITMO|U_PC|estado_atual.S_SAVE_Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~feeder_combout\ = \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PC|estado_atual.S_REQ_Q~q\,
	combout => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~feeder_combout\);

-- Location: FF_X83_Y65_N3
\ALGORITMO|U_PC|estado_atual.S_SAVE_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\);

-- Location: FF_X83_Y67_N19
\ALGORITMO|U_PC|estado_atual.S_WRITE_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\);

-- Location: LCCOMB_X84_Y66_N16
\ALGORITMO|U_PO|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~48_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \ALGORITMO|U_PO|Add0~48_combout\);

-- Location: LCCOMB_X86_Y67_N16
\ALGORITMO|U_PO|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~50_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (!\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ & !\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~50_combout\);

-- Location: FF_X84_Y65_N27
\ALGORITMO|U_PO|reg_B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux0~2_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(15));

-- Location: LCCOMB_X84_Y65_N18
\ALGORITMO|U_PO|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~96_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(15)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(15),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~96_combout\);

-- Location: LCCOMB_X86_Y65_N12
\ALGORITMO|U_PO|reg_R[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[15]~feeder_combout\ = \OPERATIVA|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux0~2_combout\,
	combout => \ALGORITMO|U_PO|reg_R[15]~feeder_combout\);

-- Location: FF_X86_Y65_N13
\ALGORITMO|U_PO|reg_R[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[15]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(15));

-- Location: LCCOMB_X85_Y68_N10
\ALGORITMO|U_PO|reg_Q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_Q[15]~feeder_combout\ = \OPERATIVA|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux0~2_combout\,
	combout => \ALGORITMO|U_PO|reg_Q[15]~feeder_combout\);

-- Location: FF_X85_Y68_N11
\ALGORITMO|U_PO|reg_Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_Q[15]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(15));

-- Location: LCCOMB_X86_Y65_N10
\ALGORITMO|U_PO|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~97_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(15))))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(15)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_R\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(15),
	datab => \ALGORITMO|U_PO|reg_Q\(15),
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~97_combout\);

-- Location: IOIBUF_X72_Y73_N15
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X81_Y66_N0
\ALGORITMO|U_PO|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~90_combout\ = (\SW[14]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \ALGORITMO|U_PO|Add0~90_combout\);

-- Location: FF_X85_Y68_N15
\ALGORITMO|U_PO|reg_Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux1~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(14));

-- Location: FF_X86_Y67_N19
\ALGORITMO|U_PO|reg_R[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux1~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(14));

-- Location: LCCOMB_X86_Y67_N18
\ALGORITMO|U_PO|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~92_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(14))) # (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(14))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(14),
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(14),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~92_combout\);

-- Location: LCCOMB_X83_Y67_N20
\po_endereco[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_REQ_R~q\) # ((\ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_R~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \po_endereco[0]~4_combout\);

-- Location: IOIBUF_X72_Y73_N22
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X83_Y67_N8
\po_endereco[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~3_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_REQ_B~q\) # ((\ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_REQ_B~q\,
	datab => \SW[15]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \po_endereco[0]~3_combout\);

-- Location: LCCOMB_X83_Y67_N30
\po_endereco[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_endereco[0]~5_combout\ = (\po_endereco[0]~4_combout\) # ((\po_endereco[0]~3_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \po_endereco[0]~4_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \po_endereco[0]~3_combout\,
	combout => \po_endereco[0]~5_combout\);

-- Location: IOIBUF_X109_Y73_N8
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X85_Y70_N20
\ALGORITMO|U_PO|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~83_combout\ = (\SW[13]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \ALGORITMO|U_PO|Add0~83_combout\);

-- Location: LCCOMB_X87_Y68_N6
\ALGORITMO|U_PO|reg_A[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[13]~feeder_combout\ = \OPERATIVA|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux2~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[13]~feeder_combout\);

-- Location: FF_X87_Y68_N7
\ALGORITMO|U_PO|reg_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[13]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(13));

-- Location: LCCOMB_X86_Y68_N28
\ALGORITMO|U_PO|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~82_combout\ = (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(13) & (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & \ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datab => \ALGORITMO|U_PO|reg_A\(13),
	datac => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \ALGORITMO|U_PO|Add0~82_combout\);

-- Location: FF_X85_Y67_N15
\ALGORITMO|U_PO|reg_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux2~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(13));

-- Location: LCCOMB_X84_Y66_N28
\ALGORITMO|U_PO|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~84_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PO|reg_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PO|reg_B\(13),
	combout => \ALGORITMO|U_PO|Add0~84_combout\);

-- Location: IOIBUF_X109_Y73_N1
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X85_Y65_N26
\ALGORITMO|U_PO|reg_A[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[12]~feeder_combout\ = \OPERATIVA|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux3~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[12]~feeder_combout\);

-- Location: FF_X85_Y65_N27
\ALGORITMO|U_PO|reg_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[12]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(12));

-- Location: LCCOMB_X86_Y67_N30
\ALGORITMO|U_PO|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~80_combout\ = (\SW[12]~input_o\ & (((\ALGORITMO|U_PO|reg_A\(12) & \ALGORITMO|U_PO|Add0~50_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))) # (!\SW[12]~input_o\ & (\ALGORITMO|U_PO|reg_A\(12) & 
-- ((\ALGORITMO|U_PO|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \ALGORITMO|U_PO|reg_A\(12),
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~50_combout\,
	combout => \ALGORITMO|U_PO|Add0~80_combout\);

-- Location: LCCOMB_X84_Y65_N10
\ALGORITMO|U_PO|reg_B[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_B[12]~feeder_combout\ = \OPERATIVA|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux3~4_combout\,
	combout => \ALGORITMO|U_PO|reg_B[12]~feeder_combout\);

-- Location: FF_X84_Y65_N11
\ALGORITMO|U_PO|reg_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_B[12]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(12));

-- Location: LCCOMB_X84_Y65_N16
\ALGORITMO|U_PO|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~76_combout\ = (\ALGORITMO|U_PO|reg_B\(12)) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(12),
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~76_combout\);

-- Location: FF_X85_Y68_N31
\ALGORITMO|U_PO|reg_Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux4~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(11));

-- Location: FF_X86_Y67_N7
\ALGORITMO|U_PO|reg_R[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux4~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(11));

-- Location: LCCOMB_X86_Y67_N6
\ALGORITMO|U_PO|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~71_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(11))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(11))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(11),
	datac => \ALGORITMO|U_PO|reg_R\(11),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~71_combout\);

-- Location: LCCOMB_X87_Y68_N14
\ALGORITMO|U_PO|reg_A[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[10]~feeder_combout\ = \OPERATIVA|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux5~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[10]~feeder_combout\);

-- Location: FF_X87_Y68_N15
\ALGORITMO|U_PO|reg_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[10]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(10));

-- Location: IOIBUF_X85_Y73_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X85_Y70_N8
\ALGORITMO|U_PO|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~68_combout\ = (\ALGORITMO|U_PO|reg_A\(10) & ((\ALGORITMO|U_PO|Add0~50_combout\) # ((\SW[10]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))) # (!\ALGORITMO|U_PO|reg_A\(10) & (\SW[10]~input_o\ & 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(10),
	datab => \SW[10]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~50_combout\,
	combout => \ALGORITMO|U_PO|Add0~68_combout\);

-- Location: FF_X84_Y67_N1
\ALGORITMO|U_PO|reg_R[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux5~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(10));

-- Location: FF_X85_Y68_N23
\ALGORITMO|U_PO|reg_Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux5~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(10));

-- Location: LCCOMB_X84_Y67_N0
\ALGORITMO|U_PO|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~65_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(10))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(10)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(10),
	datad => \ALGORITMO|U_PO|reg_Q\(10),
	combout => \ALGORITMO|U_PO|Add0~65_combout\);

-- Location: IOIBUF_X113_Y73_N1
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X87_Y68_N20
\ALGORITMO|U_PO|reg_A[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[9]~feeder_combout\ = \OPERATIVA|Mux6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux6~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[9]~feeder_combout\);

-- Location: FF_X87_Y68_N21
\ALGORITMO|U_PO|reg_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[9]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(9));

-- Location: LCCOMB_X85_Y70_N30
\ALGORITMO|U_PO|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~62_combout\ = (\SW[9]~input_o\ & (((\ALGORITMO|U_PO|reg_A\(9) & \ALGORITMO|U_PO|Add0~50_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))) # (!\SW[9]~input_o\ & (((\ALGORITMO|U_PO|reg_A\(9) & \ALGORITMO|U_PO|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PO|reg_A\(9),
	datad => \ALGORITMO|U_PO|Add0~50_combout\,
	combout => \ALGORITMO|U_PO|Add0~62_combout\);

-- Location: FF_X84_Y67_N5
\ALGORITMO|U_PO|reg_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux6~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(9));

-- Location: LCCOMB_X84_Y67_N4
\ALGORITMO|U_PO|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~58_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(9)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(9),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~58_combout\);

-- Location: LCCOMB_X87_Y68_N30
\ALGORITMO|U_PO|reg_A[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[8]~feeder_combout\ = \OPERATIVA|Mux7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux7~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[8]~feeder_combout\);

-- Location: FF_X87_Y68_N31
\ALGORITMO|U_PO|reg_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[8]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(8));

-- Location: IOIBUF_X85_Y73_N8
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X85_Y70_N16
\ALGORITMO|U_PO|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~56_combout\ = (\ALGORITMO|U_PO|reg_A\(8) & ((\ALGORITMO|U_PO|Add0~50_combout\) # ((\SW[8]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))) # (!\ALGORITMO|U_PO|reg_A\(8) & (\SW[8]~input_o\ & 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(8),
	datab => \SW[8]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~50_combout\,
	combout => \ALGORITMO|U_PO|Add0~56_combout\);

-- Location: FF_X84_Y67_N31
\ALGORITMO|U_PO|reg_R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux7~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(8));

-- Location: FF_X85_Y68_N21
\ALGORITMO|U_PO|reg_Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux7~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(8));

-- Location: LCCOMB_X84_Y67_N30
\ALGORITMO|U_PO|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~53_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(8))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(8)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(8),
	datad => \ALGORITMO|U_PO|reg_Q\(8),
	combout => \ALGORITMO|U_PO|Add0~53_combout\);

-- Location: LCCOMB_X85_Y65_N20
\ALGORITMO|U_PO|reg_A[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[7]~feeder_combout\ = \OPERATIVA|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux8~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[7]~feeder_combout\);

-- Location: FF_X85_Y65_N21
\ALGORITMO|U_PO|reg_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[7]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(7));

-- Location: IOIBUF_X60_Y73_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X84_Y65_N25
\ALGORITMO|U_PO|reg_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux8~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(7));

-- Location: LCCOMB_X84_Y65_N12
\ALGORITMO|U_PO|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~44_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(7)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(7),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~44_combout\);

-- Location: IOIBUF_X102_Y73_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X84_Y67_N29
\ALGORITMO|U_PO|reg_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux9~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(6));

-- Location: LCCOMB_X85_Y65_N0
\ALGORITMO|U_PO|reg_Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_Q[6]~feeder_combout\ = \OPERATIVA|Mux9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux9~4_combout\,
	combout => \ALGORITMO|U_PO|reg_Q[6]~feeder_combout\);

-- Location: FF_X85_Y65_N1
\ALGORITMO|U_PO|reg_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_Q[6]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(6));

-- Location: LCCOMB_X84_Y67_N28
\ALGORITMO|U_PO|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~39_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(6))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(6)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(6),
	datad => \ALGORITMO|U_PO|reg_Q\(6),
	combout => \ALGORITMO|U_PO|Add0~39_combout\);

-- Location: IOIBUF_X105_Y73_N1
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X87_Y67_N21
\ALGORITMO|U_PO|reg_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(5));

-- Location: FF_X85_Y67_N5
\ALGORITMO|U_PO|reg_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(5));

-- Location: LCCOMB_X84_Y67_N24
\ALGORITMO|U_PO|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~32_combout\ = (\ALGORITMO|U_PO|reg_B\(5)) # ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(5),
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~32_combout\);

-- Location: FF_X84_Y67_N11
\ALGORITMO|U_PO|reg_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux11~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(4));

-- Location: LCCOMB_X85_Y65_N2
\ALGORITMO|U_PO|reg_Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_Q[4]~feeder_combout\ = \OPERATIVA|Mux11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux11~4_combout\,
	combout => \ALGORITMO|U_PO|reg_Q[4]~feeder_combout\);

-- Location: FF_X85_Y65_N3
\ALGORITMO|U_PO|reg_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_Q[4]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(4));

-- Location: LCCOMB_X84_Y67_N10
\ALGORITMO|U_PO|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~27_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(4))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(4)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(4),
	datad => \ALGORITMO|U_PO|reg_Q\(4),
	combout => \ALGORITMO|U_PO|Add0~27_combout\);

-- Location: LCCOMB_X84_Y67_N18
\ALGORITMO|U_PO|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~26_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(4)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(4),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~26_combout\);

-- Location: IOIBUF_X111_Y73_N1
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X87_Y67_N5
\ALGORITMO|U_PO|reg_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux12~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(3));

-- Location: FF_X86_Y67_N21
\ALGORITMO|U_PO|reg_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux12~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(3));

-- Location: FF_X86_Y67_N9
\ALGORITMO|U_PO|reg_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux12~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(3));

-- Location: LCCOMB_X86_Y67_N8
\ALGORITMO|U_PO|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~21_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(3))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(3))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(3),
	datac => \ALGORITMO|U_PO|reg_R\(3),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~21_combout\);

-- Location: IOIBUF_X94_Y73_N1
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X88_Y67_N21
\ALGORITMO|U_PO|reg_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux13~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(2));

-- Location: FF_X84_Y67_N17
\ALGORITMO|U_PO|reg_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux13~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(2));

-- Location: LCCOMB_X84_Y67_N22
\ALGORITMO|U_PO|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~14_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(2)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(2),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~14_combout\);

-- Location: IOIBUF_X115_Y69_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X87_Y67_N13
\ALGORITMO|U_PO|reg_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux14~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(1));

-- Location: FF_X86_Y67_N1
\ALGORITMO|U_PO|reg_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux14~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(1));

-- Location: FF_X86_Y67_N15
\ALGORITMO|U_PO|reg_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux14~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(1));

-- Location: LCCOMB_X86_Y67_N14
\ALGORITMO|U_PO|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~9_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(1))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(1))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(1),
	datac => \ALGORITMO|U_PO|reg_R\(1),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~9_combout\);

-- Location: IOIBUF_X47_Y73_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X88_Y67_N23
\ALGORITMO|U_PO|reg_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(0));

-- Location: FF_X84_Y67_N7
\ALGORITMO|U_PO|reg_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(0));

-- Location: LCCOMB_X84_Y67_N20
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

-- Location: LCCOMB_X85_Y67_N16
\ALGORITMO|U_PO|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~3_cout\ = CARRY((!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & !\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => VCC,
	cout => \ALGORITMO|U_PO|Add0~3_cout\);

-- Location: LCCOMB_X85_Y67_N18
\ALGORITMO|U_PO|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~4_combout\ = (\ALGORITMO|U_PO|Add0~1_combout\ & ((\ALGORITMO|U_PO|Add0~0_combout\ & (\ALGORITMO|U_PO|Add0~3_cout\ & VCC)) # (!\ALGORITMO|U_PO|Add0~0_combout\ & (!\ALGORITMO|U_PO|Add0~3_cout\)))) # (!\ALGORITMO|U_PO|Add0~1_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~0_combout\ & (!\ALGORITMO|U_PO|Add0~3_cout\)) # (!\ALGORITMO|U_PO|Add0~0_combout\ & ((\ALGORITMO|U_PO|Add0~3_cout\) # (GND)))))
-- \ALGORITMO|U_PO|Add0~5\ = CARRY((\ALGORITMO|U_PO|Add0~1_combout\ & (!\ALGORITMO|U_PO|Add0~0_combout\ & !\ALGORITMO|U_PO|Add0~3_cout\)) # (!\ALGORITMO|U_PO|Add0~1_combout\ & ((!\ALGORITMO|U_PO|Add0~3_cout\) # (!\ALGORITMO|U_PO|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~1_combout\,
	datab => \ALGORITMO|U_PO|Add0~0_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~3_cout\,
	combout => \ALGORITMO|U_PO|Add0~4_combout\,
	cout => \ALGORITMO|U_PO|Add0~5\);

-- Location: LCCOMB_X81_Y66_N6
\ALGORITMO|U_PO|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~6_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(0) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(0),
	datab => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \ALGORITMO|U_PO|Add0~4_combout\,
	combout => \ALGORITMO|U_PO|Add0~6_combout\);

-- Location: LCCOMB_X81_Y66_N30
\ALGORITMO|U_PO|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~7_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~6_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \SW[0]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~6_combout\,
	combout => \ALGORITMO|U_PO|Add0~7_combout\);

-- Location: LCCOMB_X82_Y68_N6
\OPERATIVA|reg3|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg3|q[0]~feeder_combout\);

-- Location: LCCOMB_X83_Y67_N10
\po_we~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_we~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_R~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	combout => \po_we~0_combout\);

-- Location: IOIBUF_X58_Y73_N22
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X82_Y67_N0
\CONTROL|PE.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.IDLE~0_combout\ = (!\CONTROL|EA.IDLE~q\ & ((!\KEY[2]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \CONTROL|EA.IDLE~q\,
	datad => \KEY[2]~input_o\,
	combout => \CONTROL|PE.IDLE~0_combout\);

-- Location: FF_X82_Y67_N1
\CONTROL|EA.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CONTROL|PE.IDLE~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.IDLE~q\);

-- Location: LCCOMB_X82_Y67_N14
\CONTROL|PE.WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.WRITE~0_combout\ = (!\KEY[2]~input_o\ & !\CONTROL|EA.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \CONTROL|PE.WRITE~0_combout\);

-- Location: FF_X83_Y67_N13
\CONTROL|EA.WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CONTROL|PE.WRITE~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.WRITE~q\);

-- Location: LCCOMB_X83_Y67_N12
\po_we~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \po_we~1_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\po_we~0_combout\) # ((\ALGORITMO|U_PC|sel_escrita[0]~0_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \po_we~0_combout\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	combout => \po_we~1_combout\);

-- Location: LCCOMB_X83_Y67_N22
\OPERATIVA|dec|enable[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[0]~0_combout\ = (\po_we~1_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datad => \po_we~1_combout\,
	combout => \OPERATIVA|dec|enable[0]~0_combout\);

-- Location: LCCOMB_X84_Y68_N18
\OPERATIVA|dec|enable[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[3]~4_combout\ = (\po_endereco[1]~2_combout\ & (\po_endereco[0]~5_combout\ & \OPERATIVA|dec|enable[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \po_endereco[0]~5_combout\,
	datad => \OPERATIVA|dec|enable[0]~0_combout\,
	combout => \OPERATIVA|dec|enable[3]~4_combout\);

-- Location: FF_X82_Y68_N7
\OPERATIVA|reg3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(0));

-- Location: LCCOMB_X81_Y66_N28
\OPERATIVA|reg2|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg2|q[0]~feeder_combout\);

-- Location: LCCOMB_X84_Y66_N24
\OPERATIVA|dec|enable[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[2]~1_combout\ = (\po_endereco[1]~2_combout\ & (\OPERATIVA|dec|enable[0]~0_combout\ & !\po_endereco[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|dec|enable[0]~0_combout\,
	datad => \po_endereco[0]~5_combout\,
	combout => \OPERATIVA|dec|enable[2]~1_combout\);

-- Location: FF_X81_Y66_N29
\OPERATIVA|reg2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(0));

-- Location: LCCOMB_X82_Y67_N26
\OPERATIVA|reg0|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg0|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg0|q[0]~feeder_combout\);

-- Location: LCCOMB_X83_Y67_N18
\OPERATIVA|dec|enable[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[0]~3_combout\ = (!\po_endereco[0]~5_combout\ & (\OPERATIVA|dec|enable[0]~0_combout\ & !\po_endereco[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|dec|enable[0]~0_combout\,
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|dec|enable[0]~3_combout\);

-- Location: FF_X82_Y67_N27
\OPERATIVA|reg0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg0|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(0));

-- Location: LCCOMB_X82_Y68_N28
\OPERATIVA|reg1|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg1|q[0]~feeder_combout\);

-- Location: LCCOMB_X84_Y68_N24
\OPERATIVA|dec|enable[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[1]~2_combout\ = (!\po_endereco[1]~2_combout\ & (\po_endereco[0]~5_combout\ & \OPERATIVA|dec|enable[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \po_endereco[0]~5_combout\,
	datad => \OPERATIVA|dec|enable[0]~0_combout\,
	combout => \OPERATIVA|dec|enable[1]~2_combout\);

-- Location: FF_X82_Y68_N29
\OPERATIVA|reg1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(0));

-- Location: LCCOMB_X83_Y67_N16
\OPERATIVA|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~0_combout\ = (\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg1|q\(0)) # (\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (\OPERATIVA|reg0|q\(0) & ((!\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg0|q\(0),
	datab => \OPERATIVA|reg1|q\(0),
	datac => \po_endereco[0]~5_combout\,
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux15~0_combout\);

-- Location: LCCOMB_X83_Y67_N24
\OPERATIVA|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux15~0_combout\ & (\OPERATIVA|reg3|q\(0))) # (!\OPERATIVA|Mux15~0_combout\ & ((\OPERATIVA|reg2|q\(0)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(0),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(0),
	datad => \OPERATIVA|Mux15~0_combout\,
	combout => \OPERATIVA|Mux15~1_combout\);

-- Location: LCCOMB_X86_Y66_N0
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

-- Location: LCCOMB_X83_Y67_N26
\OPERATIVA|dec|enable[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[4]~5_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[17]~input_o\ & \po_we~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datad => \po_we~1_combout\,
	combout => \OPERATIVA|dec|enable[4]~5_combout\);

-- Location: LCCOMB_X87_Y66_N28
\OPERATIVA|dec|enable[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[5]~6_combout\ = (\po_endereco[0]~5_combout\ & (!\po_endereco[1]~2_combout\ & \OPERATIVA|dec|enable[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \po_endereco[1]~2_combout\,
	datad => \OPERATIVA|dec|enable[4]~5_combout\,
	combout => \OPERATIVA|dec|enable[5]~6_combout\);

-- Location: FF_X86_Y66_N1
\OPERATIVA|reg5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(0));

-- Location: LCCOMB_X86_Y66_N18
\OPERATIVA|dec|enable[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[7]~9_combout\ = (\po_endereco[0]~5_combout\ & (\OPERATIVA|dec|enable[4]~5_combout\ & \po_endereco[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|dec|enable[4]~5_combout\,
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|dec|enable[7]~9_combout\);

-- Location: FF_X86_Y66_N19
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
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(0));

-- Location: LCCOMB_X82_Y66_N4
\OPERATIVA|reg6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[0]~feeder_combout\ = \ALGORITMO|U_PO|Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~7_combout\,
	combout => \OPERATIVA|reg6|q[0]~feeder_combout\);

-- Location: LCCOMB_X84_Y66_N4
\OPERATIVA|dec|enable[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[6]~7_combout\ = (\po_endereco[1]~2_combout\ & (\OPERATIVA|dec|enable[4]~5_combout\ & !\po_endereco[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|dec|enable[4]~5_combout\,
	datad => \po_endereco[0]~5_combout\,
	combout => \OPERATIVA|dec|enable[6]~7_combout\);

-- Location: FF_X82_Y66_N5
\OPERATIVA|reg6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[0]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(0));

-- Location: LCCOMB_X83_Y66_N18
\OPERATIVA|dec|enable[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|dec|enable[4]~8_combout\ = (!\po_endereco[0]~5_combout\ & (!\po_endereco[1]~2_combout\ & \OPERATIVA|dec|enable[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \po_endereco[1]~2_combout\,
	datad => \OPERATIVA|dec|enable[4]~5_combout\,
	combout => \OPERATIVA|dec|enable[4]~8_combout\);

-- Location: FF_X82_Y66_N27
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
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(0));

-- Location: LCCOMB_X82_Y66_N26
\OPERATIVA|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(0))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(0),
	datac => \OPERATIVA|reg4|q\(0),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux15~2_combout\);

-- Location: LCCOMB_X86_Y67_N24
\OPERATIVA|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux15~2_combout\ & ((\OPERATIVA|reg7|q\(0)))) # (!\OPERATIVA|Mux15~2_combout\ & (\OPERATIVA|reg5|q\(0))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(0),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(0),
	datad => \OPERATIVA|Mux15~2_combout\,
	combout => \OPERATIVA|Mux15~3_combout\);

-- Location: LCCOMB_X86_Y67_N26
\OPERATIVA|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux15~4_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux15~1_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux15~3_combout\))))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OPERATIVA|Mux15~1_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \OPERATIVA|Mux15~3_combout\,
	combout => \OPERATIVA|Mux15~4_combout\);

-- Location: FF_X86_Y67_N27
\ALGORITMO|U_PO|reg_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux15~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(0));

-- Location: FF_X86_Y67_N5
\ALGORITMO|U_PO|reg_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux15~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(0));

-- Location: LCCOMB_X86_Y67_N4
\ALGORITMO|U_PO|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~1_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(0))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(0)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(0),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_Q\(0),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~1_combout\);

-- Location: LCCOMB_X85_Y67_N20
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

-- Location: LCCOMB_X86_Y68_N20
\ALGORITMO|U_PO|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~12_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(1)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datab => \ALGORITMO|U_PO|reg_A\(1),
	datac => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datad => \ALGORITMO|U_PO|Add0~10_combout\,
	combout => \ALGORITMO|U_PO|Add0~12_combout\);

-- Location: LCCOMB_X86_Y68_N12
\ALGORITMO|U_PO|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~13_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~12_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \SW[1]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~12_combout\,
	combout => \ALGORITMO|U_PO|Add0~13_combout\);

-- Location: FF_X87_Y66_N29
\OPERATIVA|reg5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(1));

-- Location: FF_X87_Y66_N7
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
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(1));

-- Location: LCCOMB_X82_Y66_N8
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

-- Location: FF_X82_Y66_N9
\OPERATIVA|reg6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(1));

-- Location: FF_X82_Y66_N11
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
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(1));

-- Location: LCCOMB_X82_Y66_N10
\OPERATIVA|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(1))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(1),
	datac => \OPERATIVA|reg4|q\(1),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux14~2_combout\);

-- Location: LCCOMB_X87_Y66_N6
\OPERATIVA|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux14~2_combout\ & ((\OPERATIVA|reg7|q\(1)))) # (!\OPERATIVA|Mux14~2_combout\ & (\OPERATIVA|reg5|q\(1))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg5|q\(1),
	datac => \OPERATIVA|reg7|q\(1),
	datad => \OPERATIVA|Mux14~2_combout\,
	combout => \OPERATIVA|Mux14~3_combout\);

-- Location: LCCOMB_X87_Y68_N24
\OPERATIVA|reg3|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[1]~feeder_combout\ = \ALGORITMO|U_PO|Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~13_combout\,
	combout => \OPERATIVA|reg3|q[1]~feeder_combout\);

-- Location: FF_X87_Y68_N25
\OPERATIVA|reg3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(1));

-- Location: FF_X86_Y68_N1
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
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(1));

-- Location: LCCOMB_X83_Y68_N4
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

-- Location: FF_X83_Y68_N5
\OPERATIVA|reg1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[1]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(1));

-- Location: FF_X86_Y68_N3
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
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(1));

-- Location: LCCOMB_X86_Y68_N2
\OPERATIVA|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(1)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(1) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg1|q\(1),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg0|q\(1),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux14~0_combout\);

-- Location: LCCOMB_X86_Y68_N0
\OPERATIVA|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux14~0_combout\ & (\OPERATIVA|reg3|q\(1))) # (!\OPERATIVA|Mux14~0_combout\ & ((\OPERATIVA|reg2|q\(1)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg3|q\(1),
	datac => \OPERATIVA|reg2|q\(1),
	datad => \OPERATIVA|Mux14~0_combout\,
	combout => \OPERATIVA|Mux14~1_combout\);

-- Location: LCCOMB_X86_Y67_N0
\OPERATIVA|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux14~4_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux14~1_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux14~3_combout\)))) # (!\SW[17]~input_o\ & 
-- (((\OPERATIVA|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \OPERATIVA|Mux14~3_combout\,
	datad => \OPERATIVA|Mux14~1_combout\,
	combout => \OPERATIVA|Mux14~4_combout\);

-- Location: FF_X87_Y67_N27
\ALGORITMO|U_PO|reg_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux14~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(1));

-- Location: LCCOMB_X84_Y67_N12
\ALGORITMO|U_PO|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~8_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(1)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(1),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~8_combout\);

-- Location: LCCOMB_X85_Y67_N22
\ALGORITMO|U_PO|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~16_combout\ = (\ALGORITMO|U_PO|Add0~15_combout\ & ((\ALGORITMO|U_PO|Add0~14_combout\ & (!\ALGORITMO|U_PO|Add0~11\)) # (!\ALGORITMO|U_PO|Add0~14_combout\ & (\ALGORITMO|U_PO|Add0~11\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~15_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~14_combout\ & ((\ALGORITMO|U_PO|Add0~11\) # (GND))) # (!\ALGORITMO|U_PO|Add0~14_combout\ & (!\ALGORITMO|U_PO|Add0~11\))))
-- \ALGORITMO|U_PO|Add0~17\ = CARRY((\ALGORITMO|U_PO|Add0~15_combout\ & (\ALGORITMO|U_PO|Add0~14_combout\ & !\ALGORITMO|U_PO|Add0~11\)) # (!\ALGORITMO|U_PO|Add0~15_combout\ & ((\ALGORITMO|U_PO|Add0~14_combout\) # (!\ALGORITMO|U_PO|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~15_combout\,
	datab => \ALGORITMO|U_PO|Add0~14_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~11\,
	combout => \ALGORITMO|U_PO|Add0~16_combout\,
	cout => \ALGORITMO|U_PO|Add0~17\);

-- Location: LCCOMB_X86_Y68_N6
\ALGORITMO|U_PO|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~18_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (\ALGORITMO|U_PO|reg_A\(2) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PO|reg_A\(2),
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \ALGORITMO|U_PO|Add0~16_combout\,
	combout => \ALGORITMO|U_PO|Add0~18_combout\);

-- Location: LCCOMB_X86_Y68_N4
\ALGORITMO|U_PO|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~19_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~18_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \SW[2]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~18_combout\,
	combout => \ALGORITMO|U_PO|Add0~19_combout\);

-- Location: LCCOMB_X87_Y66_N12
\OPERATIVA|reg5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~19_combout\,
	combout => \OPERATIVA|reg5|q[2]~feeder_combout\);

-- Location: FF_X87_Y66_N13
\OPERATIVA|reg5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(2));

-- Location: FF_X87_Y66_N15
\OPERATIVA|reg7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~19_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(2));

-- Location: LCCOMB_X82_Y66_N20
\OPERATIVA|reg6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~19_combout\,
	combout => \OPERATIVA|reg6|q[2]~feeder_combout\);

-- Location: FF_X82_Y66_N21
\OPERATIVA|reg6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(2));

-- Location: FF_X83_Y66_N27
\OPERATIVA|reg4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~19_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(2));

-- Location: LCCOMB_X83_Y66_N26
\OPERATIVA|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(2))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(2),
	datac => \OPERATIVA|reg4|q\(2),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux13~2_combout\);

-- Location: LCCOMB_X87_Y66_N14
\OPERATIVA|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux13~2_combout\ & ((\OPERATIVA|reg7|q\(2)))) # (!\OPERATIVA|Mux13~2_combout\ & (\OPERATIVA|reg5|q\(2))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg5|q\(2),
	datac => \OPERATIVA|reg7|q\(2),
	datad => \OPERATIVA|Mux13~2_combout\,
	combout => \OPERATIVA|Mux13~3_combout\);

-- Location: LCCOMB_X87_Y68_N22
\OPERATIVA|reg3|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~19_combout\,
	combout => \OPERATIVA|reg3|q[2]~feeder_combout\);

-- Location: FF_X87_Y68_N23
\OPERATIVA|reg3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(2));

-- Location: FF_X86_Y68_N17
\OPERATIVA|reg2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~19_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(2));

-- Location: LCCOMB_X84_Y68_N12
\OPERATIVA|reg1|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~19_combout\,
	combout => \OPERATIVA|reg1|q[2]~feeder_combout\);

-- Location: FF_X84_Y68_N13
\OPERATIVA|reg1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(2));

-- Location: FF_X86_Y68_N11
\OPERATIVA|reg0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~19_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(2));

-- Location: LCCOMB_X86_Y68_N10
\OPERATIVA|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(2)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(2) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(2),
	datac => \OPERATIVA|reg0|q\(2),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux13~0_combout\);

-- Location: LCCOMB_X86_Y68_N16
\OPERATIVA|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux13~0_combout\ & (\OPERATIVA|reg3|q\(2))) # (!\OPERATIVA|Mux13~0_combout\ & ((\OPERATIVA|reg2|q\(2)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg3|q\(2),
	datac => \OPERATIVA|reg2|q\(2),
	datad => \OPERATIVA|Mux13~0_combout\,
	combout => \OPERATIVA|Mux13~1_combout\);

-- Location: LCCOMB_X86_Y67_N22
\OPERATIVA|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux13~4_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux13~1_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux13~3_combout\)))) # (!\SW[17]~input_o\ & 
-- (((\OPERATIVA|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \OPERATIVA|Mux13~3_combout\,
	datad => \OPERATIVA|Mux13~1_combout\,
	combout => \OPERATIVA|Mux13~4_combout\);

-- Location: FF_X83_Y67_N29
\ALGORITMO|U_PO|reg_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux13~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(2));

-- Location: FF_X86_Y67_N23
\ALGORITMO|U_PO|reg_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux13~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(2));

-- Location: LCCOMB_X83_Y67_N28
\ALGORITMO|U_PO|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~15_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(2))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(2)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(2),
	datad => \ALGORITMO|U_PO|reg_Q\(2),
	combout => \ALGORITMO|U_PO|Add0~15_combout\);

-- Location: LCCOMB_X85_Y67_N24
\ALGORITMO|U_PO|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~22_combout\ = ((\ALGORITMO|U_PO|Add0~20_combout\ $ (\ALGORITMO|U_PO|Add0~21_combout\ $ (\ALGORITMO|U_PO|Add0~17\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~23\ = CARRY((\ALGORITMO|U_PO|Add0~20_combout\ & (\ALGORITMO|U_PO|Add0~21_combout\ & !\ALGORITMO|U_PO|Add0~17\)) # (!\ALGORITMO|U_PO|Add0~20_combout\ & ((\ALGORITMO|U_PO|Add0~21_combout\) # (!\ALGORITMO|U_PO|Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~20_combout\,
	datab => \ALGORITMO|U_PO|Add0~21_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~17\,
	combout => \ALGORITMO|U_PO|Add0~22_combout\,
	cout => \ALGORITMO|U_PO|Add0~23\);

-- Location: LCCOMB_X85_Y67_N0
\ALGORITMO|U_PO|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~24_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(3)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|reg_A\(3),
	datad => \ALGORITMO|U_PO|Add0~22_combout\,
	combout => \ALGORITMO|U_PO|Add0~24_combout\);

-- Location: LCCOMB_X85_Y67_N4
\ALGORITMO|U_PO|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~25_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~24_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~24_combout\,
	combout => \ALGORITMO|U_PO|Add0~25_combout\);

-- Location: LCCOMB_X85_Y69_N10
\OPERATIVA|reg3|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~25_combout\,
	combout => \OPERATIVA|reg3|q[3]~feeder_combout\);

-- Location: FF_X85_Y69_N11
\OPERATIVA|reg3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(3));

-- Location: FF_X84_Y69_N1
\OPERATIVA|reg2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(3));

-- Location: LCCOMB_X84_Y68_N14
\OPERATIVA|reg1|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~25_combout\,
	combout => \OPERATIVA|reg1|q[3]~feeder_combout\);

-- Location: FF_X84_Y68_N15
\OPERATIVA|reg1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(3));

-- Location: FF_X84_Y69_N31
\OPERATIVA|reg0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(3));

-- Location: LCCOMB_X84_Y69_N30
\OPERATIVA|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(3)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(3) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(3),
	datac => \OPERATIVA|reg0|q\(3),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux12~0_combout\);

-- Location: LCCOMB_X85_Y69_N8
\OPERATIVA|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux12~0_combout\ & (\OPERATIVA|reg3|q\(3))) # (!\OPERATIVA|Mux12~0_combout\ & ((\OPERATIVA|reg2|q\(3)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(3),
	datab => \OPERATIVA|reg2|q\(3),
	datac => \po_endereco[1]~2_combout\,
	datad => \OPERATIVA|Mux12~0_combout\,
	combout => \OPERATIVA|Mux12~1_combout\);

-- Location: LCCOMB_X87_Y66_N24
\OPERATIVA|reg5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~25_combout\,
	combout => \OPERATIVA|reg5|q[3]~feeder_combout\);

-- Location: FF_X87_Y66_N25
\OPERATIVA|reg5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(3));

-- Location: FF_X87_Y66_N3
\OPERATIVA|reg7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(3));

-- Location: LCCOMB_X82_Y66_N2
\OPERATIVA|reg6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[3]~feeder_combout\ = \ALGORITMO|U_PO|Add0~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~25_combout\,
	combout => \OPERATIVA|reg6|q[3]~feeder_combout\);

-- Location: FF_X82_Y66_N3
\OPERATIVA|reg6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[3]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(3));

-- Location: FF_X82_Y66_N17
\OPERATIVA|reg4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(3));

-- Location: LCCOMB_X82_Y66_N16
\OPERATIVA|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(3))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(3),
	datac => \OPERATIVA|reg4|q\(3),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux12~2_combout\);

-- Location: LCCOMB_X87_Y66_N2
\OPERATIVA|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux12~2_combout\ & ((\OPERATIVA|reg7|q\(3)))) # (!\OPERATIVA|Mux12~2_combout\ & (\OPERATIVA|reg5|q\(3))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg5|q\(3),
	datac => \OPERATIVA|reg7|q\(3),
	datad => \OPERATIVA|Mux12~2_combout\,
	combout => \OPERATIVA|Mux12~3_combout\);

-- Location: LCCOMB_X86_Y67_N20
\OPERATIVA|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux12~4_combout\ = (\SW[17]~input_o\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\OPERATIVA|Mux12~1_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\OPERATIVA|Mux12~3_combout\))))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \OPERATIVA|Mux12~1_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \OPERATIVA|Mux12~3_combout\,
	combout => \OPERATIVA|Mux12~4_combout\);

-- Location: FF_X85_Y67_N7
\ALGORITMO|U_PO|reg_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux12~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(3));

-- Location: LCCOMB_X85_Y67_N6
\ALGORITMO|U_PO|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~20_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(3)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(3),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~20_combout\);

-- Location: LCCOMB_X85_Y67_N26
\ALGORITMO|U_PO|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~28_combout\ = (\ALGORITMO|U_PO|Add0~27_combout\ & ((\ALGORITMO|U_PO|Add0~26_combout\ & (!\ALGORITMO|U_PO|Add0~23\)) # (!\ALGORITMO|U_PO|Add0~26_combout\ & (\ALGORITMO|U_PO|Add0~23\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~27_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~26_combout\ & ((\ALGORITMO|U_PO|Add0~23\) # (GND))) # (!\ALGORITMO|U_PO|Add0~26_combout\ & (!\ALGORITMO|U_PO|Add0~23\))))
-- \ALGORITMO|U_PO|Add0~29\ = CARRY((\ALGORITMO|U_PO|Add0~27_combout\ & (\ALGORITMO|U_PO|Add0~26_combout\ & !\ALGORITMO|U_PO|Add0~23\)) # (!\ALGORITMO|U_PO|Add0~27_combout\ & ((\ALGORITMO|U_PO|Add0~26_combout\) # (!\ALGORITMO|U_PO|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~27_combout\,
	datab => \ALGORITMO|U_PO|Add0~26_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~23\,
	combout => \ALGORITMO|U_PO|Add0~28_combout\,
	cout => \ALGORITMO|U_PO|Add0~29\);

-- Location: LCCOMB_X85_Y67_N28
\ALGORITMO|U_PO|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~34_combout\ = ((\ALGORITMO|U_PO|Add0~33_combout\ $ (\ALGORITMO|U_PO|Add0~32_combout\ $ (\ALGORITMO|U_PO|Add0~29\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~35\ = CARRY((\ALGORITMO|U_PO|Add0~33_combout\ & ((!\ALGORITMO|U_PO|Add0~29\) # (!\ALGORITMO|U_PO|Add0~32_combout\))) # (!\ALGORITMO|U_PO|Add0~33_combout\ & (!\ALGORITMO|U_PO|Add0~32_combout\ & !\ALGORITMO|U_PO|Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~33_combout\,
	datab => \ALGORITMO|U_PO|Add0~32_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~29\,
	combout => \ALGORITMO|U_PO|Add0~34_combout\,
	cout => \ALGORITMO|U_PO|Add0~35\);

-- Location: LCCOMB_X85_Y67_N12
\ALGORITMO|U_PO|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~36_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & (\ALGORITMO|U_PO|reg_A\(5)))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|reg_A\(5),
	datad => \ALGORITMO|U_PO|Add0~34_combout\,
	combout => \ALGORITMO|U_PO|Add0~36_combout\);

-- Location: LCCOMB_X85_Y67_N14
\ALGORITMO|U_PO|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~37_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~36_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~36_combout\,
	combout => \ALGORITMO|U_PO|Add0~37_combout\);

-- Location: LCCOMB_X84_Y68_N2
\OPERATIVA|reg3|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~37_combout\,
	combout => \OPERATIVA|reg3|q[5]~feeder_combout\);

-- Location: FF_X84_Y68_N3
\OPERATIVA|reg3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(5));

-- Location: FF_X84_Y69_N19
\OPERATIVA|reg2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(5));

-- Location: LCCOMB_X84_Y68_N0
\OPERATIVA|reg1|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~37_combout\,
	combout => \OPERATIVA|reg1|q[5]~feeder_combout\);

-- Location: FF_X84_Y68_N1
\OPERATIVA|reg1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(5));

-- Location: FF_X84_Y69_N29
\OPERATIVA|reg0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(5));

-- Location: LCCOMB_X84_Y69_N28
\OPERATIVA|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(5)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(5) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(5),
	datac => \OPERATIVA|reg0|q\(5),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux10~0_combout\);

-- Location: LCCOMB_X84_Y69_N18
\OPERATIVA|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux10~0_combout\ & (\OPERATIVA|reg3|q\(5))) # (!\OPERATIVA|Mux10~0_combout\ & ((\OPERATIVA|reg2|q\(5)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(5),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(5),
	datad => \OPERATIVA|Mux10~0_combout\,
	combout => \OPERATIVA|Mux10~1_combout\);

-- Location: LCCOMB_X86_Y66_N12
\OPERATIVA|reg5|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~37_combout\,
	combout => \OPERATIVA|reg5|q[5]~feeder_combout\);

-- Location: FF_X86_Y66_N13
\OPERATIVA|reg5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(5));

-- Location: FF_X86_Y66_N23
\OPERATIVA|reg7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(5));

-- Location: LCCOMB_X84_Y66_N6
\OPERATIVA|reg6|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[5]~feeder_combout\ = \ALGORITMO|U_PO|Add0~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~37_combout\,
	combout => \OPERATIVA|reg6|q[5]~feeder_combout\);

-- Location: FF_X84_Y66_N7
\OPERATIVA|reg6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[5]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(5));

-- Location: FF_X83_Y66_N7
\OPERATIVA|reg4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(5));

-- Location: LCCOMB_X83_Y66_N6
\OPERATIVA|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(5))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(5),
	datac => \OPERATIVA|reg4|q\(5),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux10~2_combout\);

-- Location: LCCOMB_X86_Y66_N22
\OPERATIVA|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux10~2_combout\ & ((\OPERATIVA|reg7|q\(5)))) # (!\OPERATIVA|Mux10~2_combout\ & (\OPERATIVA|reg5|q\(5))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(5),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(5),
	datad => \OPERATIVA|Mux10~2_combout\,
	combout => \OPERATIVA|Mux10~3_combout\);

-- Location: LCCOMB_X86_Y67_N10
\OPERATIVA|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux10~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux10~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux10~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux10~1_combout\,
	datad => \OPERATIVA|Mux10~3_combout\,
	combout => \OPERATIVA|Mux10~4_combout\);

-- Location: FF_X86_Y67_N11
\ALGORITMO|U_PO|reg_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux10~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(5));

-- Location: FF_X86_Y67_N3
\ALGORITMO|U_PO|reg_R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux10~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(5));

-- Location: LCCOMB_X86_Y67_N2
\ALGORITMO|U_PO|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~33_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(5))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(5))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_Q\(5),
	datab => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datac => \ALGORITMO|U_PO|reg_R\(5),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~33_combout\);

-- Location: LCCOMB_X85_Y67_N30
\ALGORITMO|U_PO|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~40_combout\ = (\ALGORITMO|U_PO|Add0~38_combout\ & ((\ALGORITMO|U_PO|Add0~39_combout\ & (!\ALGORITMO|U_PO|Add0~35\)) # (!\ALGORITMO|U_PO|Add0~39_combout\ & ((\ALGORITMO|U_PO|Add0~35\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~38_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~39_combout\ & (\ALGORITMO|U_PO|Add0~35\ & VCC)) # (!\ALGORITMO|U_PO|Add0~39_combout\ & (!\ALGORITMO|U_PO|Add0~35\))))
-- \ALGORITMO|U_PO|Add0~41\ = CARRY((\ALGORITMO|U_PO|Add0~38_combout\ & ((!\ALGORITMO|U_PO|Add0~35\) # (!\ALGORITMO|U_PO|Add0~39_combout\))) # (!\ALGORITMO|U_PO|Add0~38_combout\ & (!\ALGORITMO|U_PO|Add0~39_combout\ & !\ALGORITMO|U_PO|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~38_combout\,
	datab => \ALGORITMO|U_PO|Add0~39_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~35\,
	combout => \ALGORITMO|U_PO|Add0~40_combout\,
	cout => \ALGORITMO|U_PO|Add0~41\);

-- Location: LCCOMB_X85_Y65_N14
\ALGORITMO|U_PO|reg_A[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[6]~feeder_combout\ = \OPERATIVA|Mux9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux9~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[6]~feeder_combout\);

-- Location: FF_X85_Y65_N15
\ALGORITMO|U_PO|reg_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[6]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(6));

-- Location: LCCOMB_X85_Y67_N2
\ALGORITMO|U_PO|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~42_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & ((\ALGORITMO|U_PO|reg_A\(6))))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|Add0~40_combout\,
	datad => \ALGORITMO|U_PO|reg_A\(6),
	combout => \ALGORITMO|U_PO|Add0~42_combout\);

-- Location: LCCOMB_X85_Y67_N8
\ALGORITMO|U_PO|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~43_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~42_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~42_combout\,
	combout => \ALGORITMO|U_PO|Add0~43_combout\);

-- Location: LCCOMB_X87_Y66_N16
\OPERATIVA|reg5|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg5|q[6]~feeder_combout\);

-- Location: FF_X87_Y66_N17
\OPERATIVA|reg5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(6));

-- Location: LCCOMB_X86_Y66_N24
\OPERATIVA|reg7|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg7|q[6]~feeder_combout\);

-- Location: FF_X86_Y66_N25
\OPERATIVA|reg7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(6));

-- Location: LCCOMB_X82_Y66_N18
\OPERATIVA|reg6|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg6|q[6]~feeder_combout\);

-- Location: FF_X82_Y66_N19
\OPERATIVA|reg6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(6));

-- Location: FF_X82_Y66_N29
\OPERATIVA|reg4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(6));

-- Location: LCCOMB_X82_Y66_N28
\OPERATIVA|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(6))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(6),
	datac => \OPERATIVA|reg4|q\(6),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux9~2_combout\);

-- Location: LCCOMB_X82_Y66_N30
\OPERATIVA|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux9~2_combout\ & ((\OPERATIVA|reg7|q\(6)))) # (!\OPERATIVA|Mux9~2_combout\ & (\OPERATIVA|reg5|q\(6))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(6),
	datab => \OPERATIVA|reg7|q\(6),
	datac => \po_endereco[0]~5_combout\,
	datad => \OPERATIVA|Mux9~2_combout\,
	combout => \OPERATIVA|Mux9~3_combout\);

-- Location: LCCOMB_X84_Y68_N4
\OPERATIVA|reg3|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg3|q[6]~feeder_combout\);

-- Location: FF_X84_Y68_N5
\OPERATIVA|reg3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(6));

-- Location: FF_X84_Y69_N5
\OPERATIVA|reg2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(6));

-- Location: LCCOMB_X85_Y69_N6
\OPERATIVA|reg1|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[6]~feeder_combout\ = \ALGORITMO|U_PO|Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~43_combout\,
	combout => \OPERATIVA|reg1|q[6]~feeder_combout\);

-- Location: FF_X85_Y69_N7
\OPERATIVA|reg1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[6]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(6));

-- Location: FF_X84_Y69_N11
\OPERATIVA|reg0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(6));

-- Location: LCCOMB_X84_Y69_N10
\OPERATIVA|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(6)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(6) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(6),
	datac => \OPERATIVA|reg0|q\(6),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux9~0_combout\);

-- Location: LCCOMB_X84_Y69_N4
\OPERATIVA|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux9~0_combout\ & (\OPERATIVA|reg3|q\(6))) # (!\OPERATIVA|Mux9~0_combout\ & ((\OPERATIVA|reg2|q\(6)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(6),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(6),
	datad => \OPERATIVA|Mux9~0_combout\,
	combout => \OPERATIVA|Mux9~1_combout\);

-- Location: LCCOMB_X85_Y65_N6
\OPERATIVA|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux9~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux9~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux9~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux9~3_combout\,
	datad => \OPERATIVA|Mux9~1_combout\,
	combout => \OPERATIVA|Mux9~4_combout\);

-- Location: FF_X84_Y67_N21
\ALGORITMO|U_PO|reg_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux9~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(6));

-- Location: LCCOMB_X84_Y67_N16
\ALGORITMO|U_PO|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~38_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(6)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(6),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~38_combout\);

-- Location: LCCOMB_X85_Y66_N0
\ALGORITMO|U_PO|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~46_combout\ = ((\ALGORITMO|U_PO|Add0~45_combout\ $ (\ALGORITMO|U_PO|Add0~44_combout\ $ (\ALGORITMO|U_PO|Add0~41\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~47\ = CARRY((\ALGORITMO|U_PO|Add0~45_combout\ & ((!\ALGORITMO|U_PO|Add0~41\) # (!\ALGORITMO|U_PO|Add0~44_combout\))) # (!\ALGORITMO|U_PO|Add0~45_combout\ & (!\ALGORITMO|U_PO|Add0~44_combout\ & !\ALGORITMO|U_PO|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~45_combout\,
	datab => \ALGORITMO|U_PO|Add0~44_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~41\,
	combout => \ALGORITMO|U_PO|Add0~46_combout\,
	cout => \ALGORITMO|U_PO|Add0~47\);

-- Location: LCCOMB_X85_Y66_N18
\ALGORITMO|U_PO|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~49_combout\ = (\ALGORITMO|U_PO|Add0~48_combout\ & ((\ALGORITMO|U_PO|Add0~46_combout\) # ((\SW[7]~input_o\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))) # (!\ALGORITMO|U_PO|Add0~48_combout\ & (\SW[7]~input_o\ & 
-- (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \SW[7]~input_o\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~46_combout\,
	combout => \ALGORITMO|U_PO|Add0~49_combout\);

-- Location: LCCOMB_X85_Y66_N24
\ALGORITMO|U_PO|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~51_combout\ = (\ALGORITMO|U_PO|Add0~49_combout\) # ((\ALGORITMO|U_PO|reg_A\(7) & \ALGORITMO|U_PO|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(7),
	datab => \ALGORITMO|U_PO|Add0~50_combout\,
	datad => \ALGORITMO|U_PO|Add0~49_combout\,
	combout => \ALGORITMO|U_PO|Add0~51_combout\);

-- Location: LCCOMB_X86_Y66_N16
\OPERATIVA|reg7|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~51_combout\,
	combout => \OPERATIVA|reg7|q[7]~feeder_combout\);

-- Location: FF_X86_Y66_N17
\OPERATIVA|reg7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(7));

-- Location: LCCOMB_X86_Y66_N2
\OPERATIVA|reg5|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~51_combout\,
	combout => \OPERATIVA|reg5|q[7]~feeder_combout\);

-- Location: FF_X86_Y66_N3
\OPERATIVA|reg5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(7));

-- Location: LCCOMB_X82_Y66_N24
\OPERATIVA|reg4|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg4|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~51_combout\,
	combout => \OPERATIVA|reg4|q[7]~feeder_combout\);

-- Location: FF_X82_Y66_N25
\OPERATIVA|reg4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg4|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(7));

-- Location: FF_X84_Y66_N1
\OPERATIVA|reg6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~51_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(7));

-- Location: LCCOMB_X84_Y66_N0
\OPERATIVA|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~2_combout\ = (\po_endereco[1]~2_combout\ & (((\OPERATIVA|reg6|q\(7)) # (\po_endereco[0]~5_combout\)))) # (!\po_endereco[1]~2_combout\ & (\OPERATIVA|reg4|q\(7) & ((!\po_endereco[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg4|q\(7),
	datac => \OPERATIVA|reg6|q\(7),
	datad => \po_endereco[0]~5_combout\,
	combout => \OPERATIVA|Mux8~2_combout\);

-- Location: LCCOMB_X85_Y65_N8
\OPERATIVA|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux8~2_combout\ & (\OPERATIVA|reg7|q\(7))) # (!\OPERATIVA|Mux8~2_combout\ & ((\OPERATIVA|reg5|q\(7)))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg7|q\(7),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg5|q\(7),
	datad => \OPERATIVA|Mux8~2_combout\,
	combout => \OPERATIVA|Mux8~3_combout\);

-- Location: FF_X85_Y66_N15
\OPERATIVA|reg3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~51_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(7));

-- Location: FF_X85_Y68_N9
\OPERATIVA|reg2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~51_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(7));

-- Location: LCCOMB_X84_Y68_N6
\OPERATIVA|reg1|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~51_combout\,
	combout => \OPERATIVA|reg1|q[7]~feeder_combout\);

-- Location: FF_X84_Y68_N7
\OPERATIVA|reg1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(7));

-- Location: LCCOMB_X86_Y68_N8
\OPERATIVA|reg0|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg0|q[7]~feeder_combout\ = \ALGORITMO|U_PO|Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~51_combout\,
	combout => \OPERATIVA|reg0|q[7]~feeder_combout\);

-- Location: FF_X86_Y68_N9
\OPERATIVA|reg0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg0|q[7]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(7));

-- Location: LCCOMB_X85_Y68_N2
\OPERATIVA|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(7)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(7) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg1|q\(7),
	datab => \OPERATIVA|reg0|q\(7),
	datac => \po_endereco[0]~5_combout\,
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux8~0_combout\);

-- Location: LCCOMB_X85_Y68_N16
\OPERATIVA|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux8~0_combout\ & (\OPERATIVA|reg3|q\(7))) # (!\OPERATIVA|Mux8~0_combout\ & ((\OPERATIVA|reg2|q\(7)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(7),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(7),
	datad => \OPERATIVA|Mux8~0_combout\,
	combout => \OPERATIVA|Mux8~1_combout\);

-- Location: LCCOMB_X85_Y65_N10
\OPERATIVA|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux8~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux8~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux8~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux8~3_combout\,
	datad => \OPERATIVA|Mux8~1_combout\,
	combout => \OPERATIVA|Mux8~4_combout\);

-- Location: LCCOMB_X84_Y65_N22
\ALGORITMO|U_PO|reg_R[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[7]~feeder_combout\ = \OPERATIVA|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux8~4_combout\,
	combout => \ALGORITMO|U_PO|reg_R[7]~feeder_combout\);

-- Location: FF_X84_Y65_N23
\ALGORITMO|U_PO|reg_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[7]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(7));

-- Location: LCCOMB_X85_Y65_N30
\ALGORITMO|U_PO|reg_Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_Q[7]~feeder_combout\ = \OPERATIVA|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux8~4_combout\,
	combout => \ALGORITMO|U_PO|reg_Q[7]~feeder_combout\);

-- Location: FF_X85_Y65_N31
\ALGORITMO|U_PO|reg_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_Q[7]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(7));

-- Location: LCCOMB_X84_Y65_N2
\ALGORITMO|U_PO|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~45_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (((\ALGORITMO|U_PO|reg_Q\(7))))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_Q\(7)))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_R\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_R\(7),
	datac => \ALGORITMO|U_PO|reg_Q\(7),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~45_combout\);

-- Location: LCCOMB_X85_Y66_N2
\ALGORITMO|U_PO|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~54_combout\ = (\ALGORITMO|U_PO|Add0~52_combout\ & ((\ALGORITMO|U_PO|Add0~53_combout\ & (!\ALGORITMO|U_PO|Add0~47\)) # (!\ALGORITMO|U_PO|Add0~53_combout\ & ((\ALGORITMO|U_PO|Add0~47\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~52_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~53_combout\ & (\ALGORITMO|U_PO|Add0~47\ & VCC)) # (!\ALGORITMO|U_PO|Add0~53_combout\ & (!\ALGORITMO|U_PO|Add0~47\))))
-- \ALGORITMO|U_PO|Add0~55\ = CARRY((\ALGORITMO|U_PO|Add0~52_combout\ & ((!\ALGORITMO|U_PO|Add0~47\) # (!\ALGORITMO|U_PO|Add0~53_combout\))) # (!\ALGORITMO|U_PO|Add0~52_combout\ & (!\ALGORITMO|U_PO|Add0~53_combout\ & !\ALGORITMO|U_PO|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~52_combout\,
	datab => \ALGORITMO|U_PO|Add0~53_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~47\,
	combout => \ALGORITMO|U_PO|Add0~54_combout\,
	cout => \ALGORITMO|U_PO|Add0~55\);

-- Location: LCCOMB_X85_Y66_N26
\ALGORITMO|U_PO|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~57_combout\ = (\ALGORITMO|U_PO|Add0~56_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \ALGORITMO|U_PO|Add0~56_combout\,
	datad => \ALGORITMO|U_PO|Add0~54_combout\,
	combout => \ALGORITMO|U_PO|Add0~57_combout\);

-- Location: LCCOMB_X84_Y68_N30
\OPERATIVA|reg3|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~57_combout\,
	combout => \OPERATIVA|reg3|q[8]~feeder_combout\);

-- Location: FF_X84_Y68_N31
\OPERATIVA|reg3|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(8));

-- Location: FF_X85_Y68_N27
\OPERATIVA|reg2|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~57_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(8));

-- Location: LCCOMB_X84_Y68_N8
\OPERATIVA|reg1|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~57_combout\,
	combout => \OPERATIVA|reg1|q[8]~feeder_combout\);

-- Location: FF_X84_Y68_N9
\OPERATIVA|reg1|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(8));

-- Location: FF_X86_Y68_N23
\OPERATIVA|reg0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~57_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(8));

-- Location: LCCOMB_X86_Y68_N22
\OPERATIVA|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(8)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(8) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(8),
	datac => \OPERATIVA|reg0|q\(8),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux7~0_combout\);

-- Location: LCCOMB_X85_Y68_N26
\OPERATIVA|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux7~0_combout\ & (\OPERATIVA|reg3|q\(8))) # (!\OPERATIVA|Mux7~0_combout\ & ((\OPERATIVA|reg2|q\(8)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(8),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(8),
	datad => \OPERATIVA|Mux7~0_combout\,
	combout => \OPERATIVA|Mux7~1_combout\);

-- Location: LCCOMB_X86_Y66_N30
\OPERATIVA|reg5|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~57_combout\,
	combout => \OPERATIVA|reg5|q[8]~feeder_combout\);

-- Location: FF_X86_Y66_N31
\OPERATIVA|reg5|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(8));

-- Location: FF_X86_Y66_N5
\OPERATIVA|reg7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~57_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(8));

-- Location: LCCOMB_X84_Y66_N14
\OPERATIVA|reg6|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~57_combout\,
	combout => \OPERATIVA|reg6|q[8]~feeder_combout\);

-- Location: FF_X84_Y66_N15
\OPERATIVA|reg6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(8));

-- Location: FF_X83_Y66_N25
\OPERATIVA|reg4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~57_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(8));

-- Location: LCCOMB_X83_Y66_N24
\OPERATIVA|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(8))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(8),
	datac => \OPERATIVA|reg4|q\(8),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux7~2_combout\);

-- Location: LCCOMB_X86_Y66_N4
\OPERATIVA|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux7~2_combout\ & ((\OPERATIVA|reg7|q\(8)))) # (!\OPERATIVA|Mux7~2_combout\ & (\OPERATIVA|reg5|q\(8))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(8),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(8),
	datad => \OPERATIVA|Mux7~2_combout\,
	combout => \OPERATIVA|Mux7~3_combout\);

-- Location: LCCOMB_X85_Y68_N20
\OPERATIVA|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux7~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux7~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux7~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux7~1_combout\,
	datad => \OPERATIVA|Mux7~3_combout\,
	combout => \OPERATIVA|Mux7~4_combout\);

-- Location: FF_X84_Y67_N3
\ALGORITMO|U_PO|reg_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux7~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(8));

-- Location: LCCOMB_X84_Y67_N26
\ALGORITMO|U_PO|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~52_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(8)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(8),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~52_combout\);

-- Location: LCCOMB_X85_Y66_N4
\ALGORITMO|U_PO|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~60_combout\ = ((\ALGORITMO|U_PO|Add0~59_combout\ $ (\ALGORITMO|U_PO|Add0~58_combout\ $ (\ALGORITMO|U_PO|Add0~55\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~61\ = CARRY((\ALGORITMO|U_PO|Add0~59_combout\ & ((!\ALGORITMO|U_PO|Add0~55\) # (!\ALGORITMO|U_PO|Add0~58_combout\))) # (!\ALGORITMO|U_PO|Add0~59_combout\ & (!\ALGORITMO|U_PO|Add0~58_combout\ & !\ALGORITMO|U_PO|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~59_combout\,
	datab => \ALGORITMO|U_PO|Add0~58_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~55\,
	combout => \ALGORITMO|U_PO|Add0~60_combout\,
	cout => \ALGORITMO|U_PO|Add0~61\);

-- Location: LCCOMB_X84_Y66_N2
\ALGORITMO|U_PO|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~63_combout\ = (\ALGORITMO|U_PO|Add0~62_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|Add0~48_combout\,
	datac => \ALGORITMO|U_PO|Add0~62_combout\,
	datad => \ALGORITMO|U_PO|Add0~60_combout\,
	combout => \ALGORITMO|U_PO|Add0~63_combout\);

-- Location: LCCOMB_X87_Y66_N30
\OPERATIVA|reg5|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~63_combout\,
	combout => \OPERATIVA|reg5|q[9]~feeder_combout\);

-- Location: FF_X87_Y66_N31
\OPERATIVA|reg5|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(9));

-- Location: FF_X86_Y66_N27
\OPERATIVA|reg7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~63_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(9));

-- Location: LCCOMB_X84_Y66_N22
\OPERATIVA|reg6|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~63_combout\,
	combout => \OPERATIVA|reg6|q[9]~feeder_combout\);

-- Location: FF_X84_Y66_N23
\OPERATIVA|reg6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(9));

-- Location: FF_X83_Y66_N23
\OPERATIVA|reg4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~63_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(9));

-- Location: LCCOMB_X83_Y66_N22
\OPERATIVA|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(9))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(9),
	datac => \OPERATIVA|reg4|q\(9),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux6~2_combout\);

-- Location: LCCOMB_X86_Y66_N26
\OPERATIVA|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux6~2_combout\ & ((\OPERATIVA|reg7|q\(9)))) # (!\OPERATIVA|Mux6~2_combout\ & (\OPERATIVA|reg5|q\(9))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(9),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(9),
	datad => \OPERATIVA|Mux6~2_combout\,
	combout => \OPERATIVA|Mux6~3_combout\);

-- Location: FF_X84_Y66_N29
\OPERATIVA|reg3|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~63_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(9));

-- Location: FF_X85_Y68_N19
\OPERATIVA|reg2|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~63_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(9));

-- Location: LCCOMB_X84_Y68_N16
\OPERATIVA|reg1|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~63_combout\,
	combout => \OPERATIVA|reg1|q[9]~feeder_combout\);

-- Location: FF_X84_Y68_N17
\OPERATIVA|reg1|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(9));

-- Location: LCCOMB_X86_Y68_N18
\OPERATIVA|reg0|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg0|q[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~63_combout\,
	combout => \OPERATIVA|reg0|q[9]~feeder_combout\);

-- Location: FF_X86_Y68_N19
\OPERATIVA|reg0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg0|q[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(9));

-- Location: LCCOMB_X85_Y68_N24
\OPERATIVA|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(9)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(9) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg1|q\(9),
	datab => \OPERATIVA|reg0|q\(9),
	datac => \po_endereco[0]~5_combout\,
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y68_N18
\OPERATIVA|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux6~0_combout\ & (\OPERATIVA|reg3|q\(9))) # (!\OPERATIVA|Mux6~0_combout\ & ((\OPERATIVA|reg2|q\(9)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(9),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(9),
	datad => \OPERATIVA|Mux6~0_combout\,
	combout => \OPERATIVA|Mux6~1_combout\);

-- Location: LCCOMB_X85_Y68_N6
\OPERATIVA|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux6~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux6~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux6~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux6~3_combout\,
	datad => \OPERATIVA|Mux6~1_combout\,
	combout => \OPERATIVA|Mux6~4_combout\);

-- Location: FF_X85_Y68_N7
\ALGORITMO|U_PO|reg_Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux6~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(9));

-- Location: FF_X86_Y67_N13
\ALGORITMO|U_PO|reg_R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux6~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(9));

-- Location: LCCOMB_X86_Y67_N12
\ALGORITMO|U_PO|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~59_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(9))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(9))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(9),
	datac => \ALGORITMO|U_PO|reg_R\(9),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~59_combout\);

-- Location: LCCOMB_X85_Y66_N6
\ALGORITMO|U_PO|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~66_combout\ = (\ALGORITMO|U_PO|Add0~64_combout\ & ((\ALGORITMO|U_PO|Add0~65_combout\ & (!\ALGORITMO|U_PO|Add0~61\)) # (!\ALGORITMO|U_PO|Add0~65_combout\ & ((\ALGORITMO|U_PO|Add0~61\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~64_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~65_combout\ & (\ALGORITMO|U_PO|Add0~61\ & VCC)) # (!\ALGORITMO|U_PO|Add0~65_combout\ & (!\ALGORITMO|U_PO|Add0~61\))))
-- \ALGORITMO|U_PO|Add0~67\ = CARRY((\ALGORITMO|U_PO|Add0~64_combout\ & ((!\ALGORITMO|U_PO|Add0~61\) # (!\ALGORITMO|U_PO|Add0~65_combout\))) # (!\ALGORITMO|U_PO|Add0~64_combout\ & (!\ALGORITMO|U_PO|Add0~65_combout\ & !\ALGORITMO|U_PO|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~64_combout\,
	datab => \ALGORITMO|U_PO|Add0~65_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~61\,
	combout => \ALGORITMO|U_PO|Add0~66_combout\,
	cout => \ALGORITMO|U_PO|Add0~67\);

-- Location: LCCOMB_X84_Y66_N8
\ALGORITMO|U_PO|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~69_combout\ = (\ALGORITMO|U_PO|Add0~68_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|Add0~48_combout\,
	datac => \ALGORITMO|U_PO|Add0~68_combout\,
	datad => \ALGORITMO|U_PO|Add0~66_combout\,
	combout => \ALGORITMO|U_PO|Add0~69_combout\);

-- Location: LCCOMB_X87_Y66_N20
\OPERATIVA|reg5|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~69_combout\,
	combout => \OPERATIVA|reg5|q[10]~feeder_combout\);

-- Location: FF_X87_Y66_N21
\OPERATIVA|reg5|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(10));

-- Location: FF_X86_Y66_N9
\OPERATIVA|reg7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(10));

-- Location: LCCOMB_X84_Y66_N26
\OPERATIVA|reg6|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~69_combout\,
	combout => \OPERATIVA|reg6|q[10]~feeder_combout\);

-- Location: FF_X84_Y66_N27
\OPERATIVA|reg6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(10));

-- Location: FF_X83_Y66_N11
\OPERATIVA|reg4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(10));

-- Location: LCCOMB_X83_Y66_N10
\OPERATIVA|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(10))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(10),
	datac => \OPERATIVA|reg4|q\(10),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux5~2_combout\);

-- Location: LCCOMB_X86_Y66_N8
\OPERATIVA|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux5~2_combout\ & ((\OPERATIVA|reg7|q\(10)))) # (!\OPERATIVA|Mux5~2_combout\ & (\OPERATIVA|reg5|q\(10))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(10),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(10),
	datad => \OPERATIVA|Mux5~2_combout\,
	combout => \OPERATIVA|Mux5~3_combout\);

-- Location: FF_X84_Y66_N25
\OPERATIVA|reg3|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(10));

-- Location: FF_X85_Y68_N1
\OPERATIVA|reg2|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(10));

-- Location: LCCOMB_X83_Y68_N26
\OPERATIVA|reg1|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[10]~feeder_combout\ = \ALGORITMO|U_PO|Add0~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~69_combout\,
	combout => \OPERATIVA|reg1|q[10]~feeder_combout\);

-- Location: FF_X83_Y68_N27
\OPERATIVA|reg1|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[10]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(10));

-- Location: FF_X83_Y66_N1
\OPERATIVA|reg0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(10));

-- Location: LCCOMB_X83_Y66_N0
\OPERATIVA|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(10)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(10) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(10),
	datac => \OPERATIVA|reg0|q\(10),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y68_N0
\OPERATIVA|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux5~0_combout\ & (\OPERATIVA|reg3|q\(10))) # (!\OPERATIVA|Mux5~0_combout\ & ((\OPERATIVA|reg2|q\(10)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg3|q\(10),
	datac => \OPERATIVA|reg2|q\(10),
	datad => \OPERATIVA|Mux5~0_combout\,
	combout => \OPERATIVA|Mux5~1_combout\);

-- Location: LCCOMB_X85_Y68_N22
\OPERATIVA|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux5~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux5~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux5~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux5~3_combout\,
	datad => \OPERATIVA|Mux5~1_combout\,
	combout => \OPERATIVA|Mux5~4_combout\);

-- Location: FF_X84_Y67_N15
\ALGORITMO|U_PO|reg_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux5~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(10));

-- Location: LCCOMB_X84_Y67_N14
\ALGORITMO|U_PO|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~64_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(10)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(10),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~64_combout\);

-- Location: LCCOMB_X85_Y66_N8
\ALGORITMO|U_PO|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~72_combout\ = ((\ALGORITMO|U_PO|Add0~70_combout\ $ (\ALGORITMO|U_PO|Add0~71_combout\ $ (\ALGORITMO|U_PO|Add0~67\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~73\ = CARRY((\ALGORITMO|U_PO|Add0~70_combout\ & (\ALGORITMO|U_PO|Add0~71_combout\ & !\ALGORITMO|U_PO|Add0~67\)) # (!\ALGORITMO|U_PO|Add0~70_combout\ & ((\ALGORITMO|U_PO|Add0~71_combout\) # (!\ALGORITMO|U_PO|Add0~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~70_combout\,
	datab => \ALGORITMO|U_PO|Add0~71_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~67\,
	combout => \ALGORITMO|U_PO|Add0~72_combout\,
	cout => \ALGORITMO|U_PO|Add0~73\);

-- Location: IOIBUF_X89_Y73_N8
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X87_Y68_N28
\ALGORITMO|U_PO|reg_A[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[11]~feeder_combout\ = \OPERATIVA|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux4~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[11]~feeder_combout\);

-- Location: FF_X87_Y68_N29
\ALGORITMO|U_PO|reg_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[11]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(11));

-- Location: LCCOMB_X85_Y70_N6
\ALGORITMO|U_PO|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~74_combout\ = (\SW[11]~input_o\ & (((\ALGORITMO|U_PO|reg_A\(11) & \ALGORITMO|U_PO|Add0~50_combout\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))) # (!\SW[11]~input_o\ & (\ALGORITMO|U_PO|reg_A\(11) & 
-- ((\ALGORITMO|U_PO|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \ALGORITMO|U_PO|reg_A\(11),
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PO|Add0~50_combout\,
	combout => \ALGORITMO|U_PO|Add0~74_combout\);

-- Location: LCCOMB_X85_Y66_N30
\ALGORITMO|U_PO|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~75_combout\ = (\ALGORITMO|U_PO|Add0~74_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \ALGORITMO|U_PO|Add0~72_combout\,
	datad => \ALGORITMO|U_PO|Add0~74_combout\,
	combout => \ALGORITMO|U_PO|Add0~75_combout\);

-- Location: FF_X85_Y66_N5
\OPERATIVA|reg3|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(11));

-- Location: FF_X85_Y68_N5
\OPERATIVA|reg2|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(11));

-- Location: LCCOMB_X84_Y68_N22
\OPERATIVA|reg1|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~75_combout\,
	combout => \OPERATIVA|reg1|q[11]~feeder_combout\);

-- Location: FF_X84_Y68_N23
\OPERATIVA|reg1|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(11));

-- Location: FF_X83_Y66_N5
\OPERATIVA|reg0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(11));

-- Location: LCCOMB_X83_Y66_N4
\OPERATIVA|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(11)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(11) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(11),
	datac => \OPERATIVA|reg0|q\(11),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y68_N4
\OPERATIVA|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux4~0_combout\ & (\OPERATIVA|reg3|q\(11))) # (!\OPERATIVA|Mux4~0_combout\ & ((\OPERATIVA|reg2|q\(11)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg3|q\(11),
	datac => \OPERATIVA|reg2|q\(11),
	datad => \OPERATIVA|Mux4~0_combout\,
	combout => \OPERATIVA|Mux4~1_combout\);

-- Location: LCCOMB_X86_Y66_N6
\OPERATIVA|reg5|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~75_combout\,
	combout => \OPERATIVA|reg5|q[11]~feeder_combout\);

-- Location: FF_X86_Y66_N7
\OPERATIVA|reg5|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(11));

-- Location: FF_X86_Y66_N21
\OPERATIVA|reg7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(11));

-- Location: LCCOMB_X84_Y66_N12
\OPERATIVA|reg6|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[11]~feeder_combout\ = \ALGORITMO|U_PO|Add0~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~75_combout\,
	combout => \OPERATIVA|reg6|q[11]~feeder_combout\);

-- Location: FF_X84_Y66_N13
\OPERATIVA|reg6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[11]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(11));

-- Location: FF_X83_Y66_N3
\OPERATIVA|reg4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(11));

-- Location: LCCOMB_X83_Y66_N2
\OPERATIVA|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(11))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(11),
	datac => \OPERATIVA|reg4|q\(11),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux4~2_combout\);

-- Location: LCCOMB_X86_Y66_N20
\OPERATIVA|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux4~2_combout\ & ((\OPERATIVA|reg7|q\(11)))) # (!\OPERATIVA|Mux4~2_combout\ & (\OPERATIVA|reg5|q\(11))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg5|q\(11),
	datab => \po_endereco[0]~5_combout\,
	datac => \OPERATIVA|reg7|q\(11),
	datad => \OPERATIVA|Mux4~2_combout\,
	combout => \OPERATIVA|Mux4~3_combout\);

-- Location: LCCOMB_X85_Y68_N30
\OPERATIVA|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux4~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux4~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux4~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux4~1_combout\,
	datad => \OPERATIVA|Mux4~3_combout\,
	combout => \OPERATIVA|Mux4~4_combout\);

-- Location: FF_X84_Y67_N9
\ALGORITMO|U_PO|reg_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux4~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(11));

-- Location: LCCOMB_X84_Y67_N8
\ALGORITMO|U_PO|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~70_combout\ = (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(11)) # (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	datac => \ALGORITMO|U_PO|reg_B\(11),
	datad => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~70_combout\);

-- Location: LCCOMB_X85_Y66_N10
\ALGORITMO|U_PO|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~78_combout\ = (\ALGORITMO|U_PO|Add0~77_combout\ & ((\ALGORITMO|U_PO|Add0~76_combout\ & (!\ALGORITMO|U_PO|Add0~73\)) # (!\ALGORITMO|U_PO|Add0~76_combout\ & (\ALGORITMO|U_PO|Add0~73\ & VCC)))) # (!\ALGORITMO|U_PO|Add0~77_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~76_combout\ & ((\ALGORITMO|U_PO|Add0~73\) # (GND))) # (!\ALGORITMO|U_PO|Add0~76_combout\ & (!\ALGORITMO|U_PO|Add0~73\))))
-- \ALGORITMO|U_PO|Add0~79\ = CARRY((\ALGORITMO|U_PO|Add0~77_combout\ & (\ALGORITMO|U_PO|Add0~76_combout\ & !\ALGORITMO|U_PO|Add0~73\)) # (!\ALGORITMO|U_PO|Add0~77_combout\ & ((\ALGORITMO|U_PO|Add0~76_combout\) # (!\ALGORITMO|U_PO|Add0~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~77_combout\,
	datab => \ALGORITMO|U_PO|Add0~76_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~73\,
	combout => \ALGORITMO|U_PO|Add0~78_combout\,
	cout => \ALGORITMO|U_PO|Add0~79\);

-- Location: LCCOMB_X84_Y66_N30
\ALGORITMO|U_PO|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~81_combout\ = (\ALGORITMO|U_PO|Add0~80_combout\) # ((\ALGORITMO|U_PO|Add0~78_combout\ & \ALGORITMO|U_PO|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|Add0~80_combout\,
	datac => \ALGORITMO|U_PO|Add0~78_combout\,
	datad => \ALGORITMO|U_PO|Add0~48_combout\,
	combout => \ALGORITMO|U_PO|Add0~81_combout\);

-- Location: LCCOMB_X84_Y68_N20
\OPERATIVA|reg1|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~81_combout\,
	combout => \OPERATIVA|reg1|q[12]~feeder_combout\);

-- Location: FF_X84_Y68_N21
\OPERATIVA|reg1|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(12));

-- Location: FF_X84_Y66_N19
\OPERATIVA|reg3|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(12));

-- Location: FF_X83_Y66_N9
\OPERATIVA|reg0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(12));

-- Location: LCCOMB_X81_Y66_N16
\OPERATIVA|reg2|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~81_combout\,
	combout => \OPERATIVA|reg2|q[12]~feeder_combout\);

-- Location: FF_X81_Y66_N17
\OPERATIVA|reg2|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(12));

-- Location: LCCOMB_X83_Y66_N8
\OPERATIVA|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~0_combout\ = (\po_endereco[0]~5_combout\ & (\po_endereco[1]~2_combout\)) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg2|q\(12)))) # (!\po_endereco[1]~2_combout\ & (\OPERATIVA|reg0|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg0|q\(12),
	datad => \OPERATIVA|reg2|q\(12),
	combout => \OPERATIVA|Mux3~0_combout\);

-- Location: LCCOMB_X84_Y66_N18
\OPERATIVA|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~1_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux3~0_combout\ & ((\OPERATIVA|reg3|q\(12)))) # (!\OPERATIVA|Mux3~0_combout\ & (\OPERATIVA|reg1|q\(12))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(12),
	datac => \OPERATIVA|reg3|q\(12),
	datad => \OPERATIVA|Mux3~0_combout\,
	combout => \OPERATIVA|Mux3~1_combout\);

-- Location: FF_X84_Y66_N5
\OPERATIVA|reg6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(12));

-- Location: FF_X87_Y66_N9
\OPERATIVA|reg7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(12));

-- Location: FF_X83_Y66_N19
\OPERATIVA|reg4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(12));

-- Location: FF_X87_Y66_N19
\OPERATIVA|reg5|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~81_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(12));

-- Location: LCCOMB_X87_Y66_N18
\OPERATIVA|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~2_combout\ = (\po_endereco[1]~2_combout\ & (((\po_endereco[0]~5_combout\)))) # (!\po_endereco[1]~2_combout\ & ((\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg5|q\(12)))) # (!\po_endereco[0]~5_combout\ & (\OPERATIVA|reg4|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg4|q\(12),
	datac => \OPERATIVA|reg5|q\(12),
	datad => \po_endereco[0]~5_combout\,
	combout => \OPERATIVA|Mux3~2_combout\);

-- Location: LCCOMB_X87_Y66_N8
\OPERATIVA|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~3_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux3~2_combout\ & ((\OPERATIVA|reg7|q\(12)))) # (!\OPERATIVA|Mux3~2_combout\ & (\OPERATIVA|reg6|q\(12))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg6|q\(12),
	datac => \OPERATIVA|reg7|q\(12),
	datad => \OPERATIVA|Mux3~2_combout\,
	combout => \OPERATIVA|Mux3~3_combout\);

-- Location: LCCOMB_X85_Y65_N4
\OPERATIVA|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux3~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux3~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux3~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux3~1_combout\,
	datad => \OPERATIVA|Mux3~3_combout\,
	combout => \OPERATIVA|Mux3~4_combout\);

-- Location: LCCOMB_X85_Y65_N12
\ALGORITMO|U_PO|reg_Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_Q[12]~feeder_combout\ = \OPERATIVA|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux3~4_combout\,
	combout => \ALGORITMO|U_PO|reg_Q[12]~feeder_combout\);

-- Location: FF_X85_Y65_N13
\ALGORITMO|U_PO|reg_Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_Q[12]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(12));

-- Location: LCCOMB_X84_Y65_N0
\ALGORITMO|U_PO|reg_R[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_R[12]~feeder_combout\ = \OPERATIVA|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux3~4_combout\,
	combout => \ALGORITMO|U_PO|reg_R[12]~feeder_combout\);

-- Location: FF_X84_Y65_N1
\ALGORITMO|U_PO|reg_R[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_R[12]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(12));

-- Location: LCCOMB_X84_Y65_N14
\ALGORITMO|U_PO|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~77_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(12))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(12))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(12),
	datac => \ALGORITMO|U_PO|reg_R\(12),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~77_combout\);

-- Location: LCCOMB_X85_Y66_N12
\ALGORITMO|U_PO|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~86_combout\ = ((\ALGORITMO|U_PO|Add0~85_combout\ $ (\ALGORITMO|U_PO|Add0~84_combout\ $ (\ALGORITMO|U_PO|Add0~79\)))) # (GND)
-- \ALGORITMO|U_PO|Add0~87\ = CARRY((\ALGORITMO|U_PO|Add0~85_combout\ & ((!\ALGORITMO|U_PO|Add0~79\) # (!\ALGORITMO|U_PO|Add0~84_combout\))) # (!\ALGORITMO|U_PO|Add0~85_combout\ & (!\ALGORITMO|U_PO|Add0~84_combout\ & !\ALGORITMO|U_PO|Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~85_combout\,
	datab => \ALGORITMO|U_PO|Add0~84_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~79\,
	combout => \ALGORITMO|U_PO|Add0~86_combout\,
	cout => \ALGORITMO|U_PO|Add0~87\);

-- Location: LCCOMB_X85_Y66_N20
\ALGORITMO|U_PO|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~88_combout\ = (\ALGORITMO|U_PO|Add0~83_combout\) # ((\ALGORITMO|U_PO|Add0~82_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \ALGORITMO|U_PO|Add0~83_combout\,
	datac => \ALGORITMO|U_PO|Add0~82_combout\,
	datad => \ALGORITMO|U_PO|Add0~86_combout\,
	combout => \ALGORITMO|U_PO|Add0~88_combout\);

-- Location: FF_X84_Y68_N25
\OPERATIVA|reg3|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(13));

-- Location: FF_X84_Y68_N27
\OPERATIVA|reg1|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(13));

-- Location: FF_X85_Y66_N27
\OPERATIVA|reg2|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(13));

-- Location: FF_X83_Y66_N21
\OPERATIVA|reg0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(13));

-- Location: LCCOMB_X83_Y66_N20
\OPERATIVA|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~0_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg2|q\(13))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg0|q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg2|q\(13),
	datac => \OPERATIVA|reg0|q\(13),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y68_N26
\OPERATIVA|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~1_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux2~0_combout\ & (\OPERATIVA|reg3|q\(13))) # (!\OPERATIVA|Mux2~0_combout\ & ((\OPERATIVA|reg1|q\(13)))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg3|q\(13),
	datac => \OPERATIVA|reg1|q\(13),
	datad => \OPERATIVA|Mux2~0_combout\,
	combout => \OPERATIVA|Mux2~1_combout\);

-- Location: LCCOMB_X86_Y66_N28
\OPERATIVA|reg7|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~88_combout\,
	combout => \OPERATIVA|reg7|q[13]~feeder_combout\);

-- Location: FF_X86_Y66_N29
\OPERATIVA|reg7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(13));

-- Location: FF_X84_Y66_N11
\OPERATIVA|reg6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(13));

-- Location: FF_X83_Y66_N31
\OPERATIVA|reg4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~88_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(13));

-- Location: LCCOMB_X86_Y66_N14
\OPERATIVA|reg5|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~88_combout\,
	combout => \OPERATIVA|reg5|q[13]~feeder_combout\);

-- Location: FF_X86_Y66_N15
\OPERATIVA|reg5|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(13));

-- Location: LCCOMB_X83_Y66_N30
\OPERATIVA|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~2_combout\ = (\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\) # ((\OPERATIVA|reg5|q\(13))))) # (!\po_endereco[0]~5_combout\ & (!\po_endereco[1]~2_combout\ & (\OPERATIVA|reg4|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg4|q\(13),
	datad => \OPERATIVA|reg5|q\(13),
	combout => \OPERATIVA|Mux2~2_combout\);

-- Location: LCCOMB_X84_Y66_N10
\OPERATIVA|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~3_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux2~2_combout\ & (\OPERATIVA|reg7|q\(13))) # (!\OPERATIVA|Mux2~2_combout\ & ((\OPERATIVA|reg6|q\(13)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg7|q\(13),
	datac => \OPERATIVA|reg6|q\(13),
	datad => \OPERATIVA|Mux2~2_combout\,
	combout => \OPERATIVA|Mux2~3_combout\);

-- Location: LCCOMB_X85_Y68_N28
\OPERATIVA|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux2~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux2~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux2~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux2~1_combout\,
	datad => \OPERATIVA|Mux2~3_combout\,
	combout => \OPERATIVA|Mux2~4_combout\);

-- Location: FF_X85_Y68_N29
\ALGORITMO|U_PO|reg_Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|Mux2~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_Q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_Q\(13));

-- Location: FF_X86_Y67_N29
\ALGORITMO|U_PO|reg_R[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux2~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_R\(13));

-- Location: LCCOMB_X86_Y67_N28
\ALGORITMO|U_PO|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~85_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(13))) # (!\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\ & ((\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & (\ALGORITMO|U_PO|reg_Q\(13))) # 
-- (!\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\ & ((\ALGORITMO|U_PO|reg_R\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_Q\(13),
	datac => \ALGORITMO|U_PO|reg_R\(13),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~85_combout\);

-- Location: LCCOMB_X85_Y66_N14
\ALGORITMO|U_PO|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~93_combout\ = (\ALGORITMO|U_PO|Add0~91_combout\ & ((\ALGORITMO|U_PO|Add0~92_combout\ & (!\ALGORITMO|U_PO|Add0~87\)) # (!\ALGORITMO|U_PO|Add0~92_combout\ & ((\ALGORITMO|U_PO|Add0~87\) # (GND))))) # (!\ALGORITMO|U_PO|Add0~91_combout\ & 
-- ((\ALGORITMO|U_PO|Add0~92_combout\ & (\ALGORITMO|U_PO|Add0~87\ & VCC)) # (!\ALGORITMO|U_PO|Add0~92_combout\ & (!\ALGORITMO|U_PO|Add0~87\))))
-- \ALGORITMO|U_PO|Add0~94\ = CARRY((\ALGORITMO|U_PO|Add0~91_combout\ & ((!\ALGORITMO|U_PO|Add0~87\) # (!\ALGORITMO|U_PO|Add0~92_combout\))) # (!\ALGORITMO|U_PO|Add0~91_combout\ & (!\ALGORITMO|U_PO|Add0~92_combout\ & !\ALGORITMO|U_PO|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~91_combout\,
	datab => \ALGORITMO|U_PO|Add0~92_combout\,
	datad => VCC,
	cin => \ALGORITMO|U_PO|Add0~87\,
	combout => \ALGORITMO|U_PO|Add0~93_combout\,
	cout => \ALGORITMO|U_PO|Add0~94\);

-- Location: LCCOMB_X87_Y68_N12
\ALGORITMO|U_PO|reg_A[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[14]~feeder_combout\ = \OPERATIVA|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPERATIVA|Mux1~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[14]~feeder_combout\);

-- Location: FF_X87_Y68_N13
\ALGORITMO|U_PO|reg_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[14]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(14));

-- Location: LCCOMB_X87_Y68_N8
\ALGORITMO|U_PO|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~89_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PO|reg_A\(14) & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & \ALGORITMO|U_PC|sel_escrita[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PO|reg_A\(14),
	datac => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datad => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	combout => \ALGORITMO|U_PO|Add0~89_combout\);

-- Location: LCCOMB_X85_Y66_N22
\ALGORITMO|U_PO|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~95_combout\ = (\ALGORITMO|U_PO|Add0~90_combout\) # ((\ALGORITMO|U_PO|Add0~89_combout\) # ((\ALGORITMO|U_PO|Add0~48_combout\ & \ALGORITMO|U_PO|Add0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \ALGORITMO|U_PO|Add0~90_combout\,
	datac => \ALGORITMO|U_PO|Add0~93_combout\,
	datad => \ALGORITMO|U_PO|Add0~89_combout\,
	combout => \ALGORITMO|U_PO|Add0~95_combout\);

-- Location: FF_X84_Y66_N17
\OPERATIVA|reg6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(14));

-- Location: FF_X86_Y66_N11
\OPERATIVA|reg7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(14));

-- Location: LCCOMB_X87_Y66_N10
\OPERATIVA|reg5|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[14]~feeder_combout\ = \ALGORITMO|U_PO|Add0~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~95_combout\,
	combout => \OPERATIVA|reg5|q[14]~feeder_combout\);

-- Location: FF_X87_Y66_N11
\OPERATIVA|reg5|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[14]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(14));

-- Location: FF_X83_Y66_N15
\OPERATIVA|reg4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(14));

-- Location: LCCOMB_X83_Y66_N14
\OPERATIVA|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~2_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg5|q\(14)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg4|q\(14) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg5|q\(14),
	datac => \OPERATIVA|reg4|q\(14),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux1~2_combout\);

-- Location: LCCOMB_X86_Y66_N10
\OPERATIVA|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~3_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux1~2_combout\ & ((\OPERATIVA|reg7|q\(14)))) # (!\OPERATIVA|Mux1~2_combout\ & (\OPERATIVA|reg6|q\(14))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg6|q\(14),
	datac => \OPERATIVA|reg7|q\(14),
	datad => \OPERATIVA|Mux1~2_combout\,
	combout => \OPERATIVA|Mux1~3_combout\);

-- Location: FF_X85_Y66_N31
\OPERATIVA|reg3|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(14));

-- Location: FF_X84_Y68_N11
\OPERATIVA|reg1|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(14));

-- Location: FF_X85_Y66_N25
\OPERATIVA|reg2|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(14));

-- Location: FF_X83_Y66_N29
\OPERATIVA|reg0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~95_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(14));

-- Location: LCCOMB_X83_Y66_N28
\OPERATIVA|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~0_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg2|q\(14))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg0|q\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg2|q\(14),
	datac => \OPERATIVA|reg0|q\(14),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux1~0_combout\);

-- Location: LCCOMB_X84_Y68_N10
\OPERATIVA|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~1_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux1~0_combout\ & (\OPERATIVA|reg3|q\(14))) # (!\OPERATIVA|Mux1~0_combout\ & ((\OPERATIVA|reg1|q\(14)))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg3|q\(14),
	datac => \OPERATIVA|reg1|q\(14),
	datad => \OPERATIVA|Mux1~0_combout\,
	combout => \OPERATIVA|Mux1~1_combout\);

-- Location: LCCOMB_X85_Y68_N14
\OPERATIVA|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux1~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux1~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & (\OPERATIVA|Mux1~3_combout\)) # (!\SW[17]~input_o\ & 
-- ((\OPERATIVA|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux1~3_combout\,
	datad => \OPERATIVA|Mux1~1_combout\,
	combout => \OPERATIVA|Mux1~4_combout\);

-- Location: LCCOMB_X84_Y65_N4
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

-- Location: FF_X84_Y65_N5
\ALGORITMO|U_PO|reg_B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_B[14]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(14));

-- Location: LCCOMB_X84_Y65_N8
\ALGORITMO|U_PO|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~91_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # ((\ALGORITMO|U_PO|reg_B\(14)) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datab => \ALGORITMO|U_PO|reg_B\(14),
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PO|Add0~91_combout\);

-- Location: LCCOMB_X85_Y66_N16
\ALGORITMO|U_PO|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~98_combout\ = \ALGORITMO|U_PO|Add0~96_combout\ $ (\ALGORITMO|U_PO|Add0~94\ $ (\ALGORITMO|U_PO|Add0~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PO|Add0~96_combout\,
	datad => \ALGORITMO|U_PO|Add0~97_combout\,
	cin => \ALGORITMO|U_PO|Add0~94\,
	combout => \ALGORITMO|U_PO|Add0~98_combout\);

-- Location: LCCOMB_X85_Y66_N28
\ALGORITMO|U_PO|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~100_combout\ = (\ALGORITMO|U_PO|Add0~48_combout\ & ((\ALGORITMO|U_PO|Add0~98_combout\) # ((\ALGORITMO|U_PO|Add0~50_combout\ & \ALGORITMO|U_PO|reg_A\(15))))) # (!\ALGORITMO|U_PO|Add0~48_combout\ & (\ALGORITMO|U_PO|Add0~50_combout\ & 
-- (\ALGORITMO|U_PO|reg_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Add0~48_combout\,
	datab => \ALGORITMO|U_PO|Add0~50_combout\,
	datac => \ALGORITMO|U_PO|reg_A\(15),
	datad => \ALGORITMO|U_PO|Add0~98_combout\,
	combout => \ALGORITMO|U_PO|Add0~100_combout\);

-- Location: FF_X84_Y68_N19
\OPERATIVA|reg3|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~100_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(15));

-- Location: LCCOMB_X86_Y68_N30
\OPERATIVA|reg2|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg2|q[15]~feeder_combout\ = \ALGORITMO|U_PO|Add0~100_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~100_combout\,
	combout => \OPERATIVA|reg2|q[15]~feeder_combout\);

-- Location: FF_X86_Y68_N31
\OPERATIVA|reg2|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg2|q[15]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(15));

-- Location: LCCOMB_X84_Y68_N28
\OPERATIVA|reg1|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[15]~feeder_combout\ = \ALGORITMO|U_PO|Add0~100_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~100_combout\,
	combout => \OPERATIVA|reg1|q[15]~feeder_combout\);

-- Location: FF_X84_Y68_N29
\OPERATIVA|reg1|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[15]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(15));

-- Location: FF_X86_Y68_N25
\OPERATIVA|reg0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~100_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(15));

-- Location: LCCOMB_X86_Y68_N24
\OPERATIVA|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(15)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(15) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(15),
	datac => \OPERATIVA|reg0|q\(15),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y68_N12
\OPERATIVA|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux0~0_combout\ & (\OPERATIVA|reg3|q\(15))) # (!\OPERATIVA|Mux0~0_combout\ & ((\OPERATIVA|reg2|q\(15)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[1]~2_combout\,
	datab => \OPERATIVA|reg3|q\(15),
	datac => \OPERATIVA|reg2|q\(15),
	datad => \OPERATIVA|Mux0~0_combout\,
	combout => \OPERATIVA|Mux0~1_combout\);

-- Location: LCCOMB_X85_Y68_N8
\OPERATIVA|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux0~2_combout\ = (\OPERATIVA|Mux0~1_combout\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (!\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datad => \OPERATIVA|Mux0~1_combout\,
	combout => \OPERATIVA|Mux0~2_combout\);

-- Location: LCCOMB_X87_Y68_N18
\ALGORITMO|U_PO|reg_A[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[15]~feeder_combout\ = \OPERATIVA|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux0~2_combout\,
	combout => \ALGORITMO|U_PO|reg_A[15]~feeder_combout\);

-- Location: FF_X87_Y68_N19
\ALGORITMO|U_PO|reg_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[15]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(15));

-- Location: LCCOMB_X85_Y65_N16
\ALGORITMO|U_PO|reg_A[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|reg_A[4]~feeder_combout\ = \OPERATIVA|Mux11~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \OPERATIVA|Mux11~4_combout\,
	combout => \ALGORITMO|U_PO|reg_A[4]~feeder_combout\);

-- Location: FF_X85_Y65_N17
\ALGORITMO|U_PO|reg_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|reg_A[4]~feeder_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_A~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_A\(4));

-- Location: LCCOMB_X88_Y67_N0
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

-- Location: LCCOMB_X88_Y67_N2
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

-- Location: LCCOMB_X88_Y67_N4
\ALGORITMO|U_PO|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~5_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(2) & ((!\ALGORITMO|U_PO|LessThan0~3_cout\) # (!\ALGORITMO|U_PO|reg_A\(2)))) # (!\ALGORITMO|U_PO|reg_B\(2) & (!\ALGORITMO|U_PO|reg_A\(2) & !\ALGORITMO|U_PO|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(2),
	datab => \ALGORITMO|U_PO|reg_A\(2),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~3_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~5_cout\);

-- Location: LCCOMB_X88_Y67_N6
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

-- Location: LCCOMB_X88_Y67_N8
\ALGORITMO|U_PO|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~9_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(4) & ((!\ALGORITMO|U_PO|LessThan0~7_cout\) # (!\ALGORITMO|U_PO|reg_A\(4)))) # (!\ALGORITMO|U_PO|reg_B\(4) & (!\ALGORITMO|U_PO|reg_A\(4) & !\ALGORITMO|U_PO|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(4),
	datab => \ALGORITMO|U_PO|reg_A\(4),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~7_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~9_cout\);

-- Location: LCCOMB_X88_Y67_N10
\ALGORITMO|U_PO|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~11_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(5) & ((!\ALGORITMO|U_PO|LessThan0~9_cout\) # (!\ALGORITMO|U_PO|reg_B\(5)))) # (!\ALGORITMO|U_PO|reg_A\(5) & (!\ALGORITMO|U_PO|reg_B\(5) & !\ALGORITMO|U_PO|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(5),
	datab => \ALGORITMO|U_PO|reg_B\(5),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~9_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~11_cout\);

-- Location: LCCOMB_X88_Y67_N12
\ALGORITMO|U_PO|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~13_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(6) & (\ALGORITMO|U_PO|reg_B\(6) & !\ALGORITMO|U_PO|LessThan0~11_cout\)) # (!\ALGORITMO|U_PO|reg_A\(6) & ((\ALGORITMO|U_PO|reg_B\(6)) # (!\ALGORITMO|U_PO|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(6),
	datab => \ALGORITMO|U_PO|reg_B\(6),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~11_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~13_cout\);

-- Location: LCCOMB_X88_Y67_N14
\ALGORITMO|U_PO|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~15_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(7) & (\ALGORITMO|U_PO|reg_A\(7) & !\ALGORITMO|U_PO|LessThan0~13_cout\)) # (!\ALGORITMO|U_PO|reg_B\(7) & ((\ALGORITMO|U_PO|reg_A\(7)) # (!\ALGORITMO|U_PO|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(7),
	datab => \ALGORITMO|U_PO|reg_A\(7),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~13_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~15_cout\);

-- Location: LCCOMB_X88_Y67_N16
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

-- Location: LCCOMB_X88_Y67_N18
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

-- Location: LCCOMB_X88_Y67_N20
\ALGORITMO|U_PO|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~21_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(10) & (\ALGORITMO|U_PO|reg_B\(10) & !\ALGORITMO|U_PO|LessThan0~19_cout\)) # (!\ALGORITMO|U_PO|reg_A\(10) & ((\ALGORITMO|U_PO|reg_B\(10)) # (!\ALGORITMO|U_PO|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(10),
	datab => \ALGORITMO|U_PO|reg_B\(10),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~19_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~21_cout\);

-- Location: LCCOMB_X88_Y67_N22
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

-- Location: LCCOMB_X88_Y67_N24
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

-- Location: LCCOMB_X88_Y67_N26
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

-- Location: LCCOMB_X88_Y67_N28
\ALGORITMO|U_PO|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan0~29_cout\ = CARRY((\ALGORITMO|U_PO|reg_A\(14) & (\ALGORITMO|U_PO|reg_B\(14) & !\ALGORITMO|U_PO|LessThan0~27_cout\)) # (!\ALGORITMO|U_PO|reg_A\(14) & ((\ALGORITMO|U_PO|reg_B\(14)) # (!\ALGORITMO|U_PO|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_A\(14),
	datab => \ALGORITMO|U_PO|reg_B\(14),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan0~27_cout\,
	cout => \ALGORITMO|U_PO|LessThan0~29_cout\);

-- Location: LCCOMB_X88_Y67_N30
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

-- Location: LCCOMB_X83_Y67_N14
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

-- Location: FF_X83_Y67_N15
\ALGORITMO|U_PC|estado_atual.S_INIT_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector5~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\);

-- Location: FF_X83_Y67_N7
\ALGORITMO|U_PC|estado_atual.S_INIT_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_INIT_R~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\);

-- Location: LCCOMB_X83_Y67_N4
\ALGORITMO|U_PC|sel_escrita[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|sel_escrita[0]~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\) # (\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_INIT_Q~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\);

-- Location: FF_X83_Y67_N27
\ALGORITMO|U_PC|estado_atual.S_REQ_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\);

-- Location: FF_X83_Y67_N5
\ALGORITMO|U_PC|estado_atual.S_SAVE_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_REQ_R~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\);

-- Location: FF_X83_Y67_N11
\ALGORITMO|U_PC|estado_atual.S_COMPARE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PC|estado_atual.S_SAVE_R~q\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\);

-- Location: LCCOMB_X87_Y67_N0
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

-- Location: LCCOMB_X87_Y67_N2
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

-- Location: LCCOMB_X87_Y67_N4
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

-- Location: LCCOMB_X87_Y67_N6
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

-- Location: LCCOMB_X87_Y67_N8
\ALGORITMO|U_PO|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~9_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(4) & ((!\ALGORITMO|U_PO|LessThan1~7_cout\) # (!\ALGORITMO|U_PO|reg_R\(4)))) # (!\ALGORITMO|U_PO|reg_B\(4) & (!\ALGORITMO|U_PO|reg_R\(4) & !\ALGORITMO|U_PO|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(4),
	datab => \ALGORITMO|U_PO|reg_R\(4),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~7_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~9_cout\);

-- Location: LCCOMB_X87_Y67_N10
\ALGORITMO|U_PO|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~11_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(5) & ((!\ALGORITMO|U_PO|LessThan1~9_cout\) # (!\ALGORITMO|U_PO|reg_B\(5)))) # (!\ALGORITMO|U_PO|reg_R\(5) & (!\ALGORITMO|U_PO|reg_B\(5) & !\ALGORITMO|U_PO|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(5),
	datab => \ALGORITMO|U_PO|reg_B\(5),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~9_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~11_cout\);

-- Location: LCCOMB_X87_Y67_N12
\ALGORITMO|U_PO|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~13_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(6) & (\ALGORITMO|U_PO|reg_B\(6) & !\ALGORITMO|U_PO|LessThan1~11_cout\)) # (!\ALGORITMO|U_PO|reg_R\(6) & ((\ALGORITMO|U_PO|reg_B\(6)) # (!\ALGORITMO|U_PO|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(6),
	datab => \ALGORITMO|U_PO|reg_B\(6),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~11_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~13_cout\);

-- Location: LCCOMB_X87_Y67_N14
\ALGORITMO|U_PO|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~15_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(7) & ((!\ALGORITMO|U_PO|LessThan1~13_cout\) # (!\ALGORITMO|U_PO|reg_B\(7)))) # (!\ALGORITMO|U_PO|reg_R\(7) & (!\ALGORITMO|U_PO|reg_B\(7) & !\ALGORITMO|U_PO|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(7),
	datab => \ALGORITMO|U_PO|reg_B\(7),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~13_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~15_cout\);

-- Location: LCCOMB_X87_Y67_N16
\ALGORITMO|U_PO|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~17_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(8) & (\ALGORITMO|U_PO|reg_B\(8) & !\ALGORITMO|U_PO|LessThan1~15_cout\)) # (!\ALGORITMO|U_PO|reg_R\(8) & ((\ALGORITMO|U_PO|reg_B\(8)) # (!\ALGORITMO|U_PO|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(8),
	datab => \ALGORITMO|U_PO|reg_B\(8),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~15_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~17_cout\);

-- Location: LCCOMB_X87_Y67_N18
\ALGORITMO|U_PO|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~19_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(9) & ((!\ALGORITMO|U_PO|LessThan1~17_cout\) # (!\ALGORITMO|U_PO|reg_B\(9)))) # (!\ALGORITMO|U_PO|reg_R\(9) & (!\ALGORITMO|U_PO|reg_B\(9) & !\ALGORITMO|U_PO|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(9),
	datab => \ALGORITMO|U_PO|reg_B\(9),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~17_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~19_cout\);

-- Location: LCCOMB_X87_Y67_N20
\ALGORITMO|U_PO|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~21_cout\ = CARRY((\ALGORITMO|U_PO|reg_B\(10) & ((!\ALGORITMO|U_PO|LessThan1~19_cout\) # (!\ALGORITMO|U_PO|reg_R\(10)))) # (!\ALGORITMO|U_PO|reg_B\(10) & (!\ALGORITMO|U_PO|reg_R\(10) & !\ALGORITMO|U_PO|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(10),
	datab => \ALGORITMO|U_PO|reg_R\(10),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~19_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~21_cout\);

-- Location: LCCOMB_X87_Y67_N22
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

-- Location: LCCOMB_X87_Y67_N24
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

-- Location: LCCOMB_X87_Y67_N26
\ALGORITMO|U_PO|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|LessThan1~27_cout\ = CARRY((\ALGORITMO|U_PO|reg_R\(13) & ((!\ALGORITMO|U_PO|LessThan1~25_cout\) # (!\ALGORITMO|U_PO|reg_B\(13)))) # (!\ALGORITMO|U_PO|reg_R\(13) & (!\ALGORITMO|U_PO|reg_B\(13) & !\ALGORITMO|U_PO|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_R\(13),
	datab => \ALGORITMO|U_PO|reg_B\(13),
	datad => VCC,
	cin => \ALGORITMO|U_PO|LessThan1~25_cout\,
	cout => \ALGORITMO|U_PO|LessThan1~27_cout\);

-- Location: LCCOMB_X87_Y67_N28
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

-- Location: LCCOMB_X87_Y67_N30
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

-- Location: LCCOMB_X83_Y67_N2
\ALGORITMO|U_PC|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector10~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ & !\ALGORITMO|U_PO|LessThan1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	datad => \ALGORITMO|U_PO|LessThan1~30_combout\,
	combout => \ALGORITMO|U_PC|Selector10~0_combout\);

-- Location: FF_X83_Y67_N3
\ALGORITMO|U_PC|estado_atual.S_WRITE_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector10~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\);

-- Location: LCCOMB_X83_Y67_N6
\ALGORITMO|U_PC|sel_escrita[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|sel_escrita[1]~1_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\ & !\ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_WRITE_R~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_WRITE_Q~q\,
	combout => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\);

-- Location: LCCOMB_X85_Y67_N10
\ALGORITMO|U_PO|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~30_combout\ = (\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (!\ALGORITMO|U_PC|sel_escrita[0]~0_combout\ & ((\ALGORITMO|U_PO|reg_A\(4))))) # (!\ALGORITMO|U_PC|sel_escrita[1]~1_combout\ & (((\ALGORITMO|U_PO|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|sel_escrita[1]~1_combout\,
	datab => \ALGORITMO|U_PC|sel_escrita[0]~0_combout\,
	datac => \ALGORITMO|U_PO|Add0~28_combout\,
	datad => \ALGORITMO|U_PO|reg_A\(4),
	combout => \ALGORITMO|U_PO|Add0~30_combout\);

-- Location: LCCOMB_X84_Y69_N12
\ALGORITMO|U_PO|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Add0~31_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\ALGORITMO|U_PO|Add0~30_combout\))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[4]~input_o\,
	datad => \ALGORITMO|U_PO|Add0~30_combout\,
	combout => \ALGORITMO|U_PO|Add0~31_combout\);

-- Location: LCCOMB_X83_Y69_N22
\OPERATIVA|reg3|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg3|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~31_combout\,
	combout => \OPERATIVA|reg3|q[4]~feeder_combout\);

-- Location: FF_X83_Y69_N23
\OPERATIVA|reg3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg3|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg3|q\(4));

-- Location: FF_X84_Y69_N21
\OPERATIVA|reg2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~31_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg2|q\(4));

-- Location: LCCOMB_X83_Y69_N4
\OPERATIVA|reg1|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg1|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~31_combout\,
	combout => \OPERATIVA|reg1|q[4]~feeder_combout\);

-- Location: FF_X83_Y69_N5
\OPERATIVA|reg1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg1|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg1|q\(4));

-- Location: FF_X84_Y69_N3
\OPERATIVA|reg0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~31_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg0|q\(4));

-- Location: LCCOMB_X84_Y69_N2
\OPERATIVA|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~0_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|reg1|q\(4)) # ((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|reg0|q\(4) & !\po_endereco[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg1|q\(4),
	datac => \OPERATIVA|reg0|q\(4),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux11~0_combout\);

-- Location: LCCOMB_X84_Y69_N20
\OPERATIVA|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~1_combout\ = (\po_endereco[1]~2_combout\ & ((\OPERATIVA|Mux11~0_combout\ & (\OPERATIVA|reg3|q\(4))) # (!\OPERATIVA|Mux11~0_combout\ & ((\OPERATIVA|reg2|q\(4)))))) # (!\po_endereco[1]~2_combout\ & (((\OPERATIVA|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|reg3|q\(4),
	datab => \po_endereco[1]~2_combout\,
	datac => \OPERATIVA|reg2|q\(4),
	datad => \OPERATIVA|Mux11~0_combout\,
	combout => \OPERATIVA|Mux11~1_combout\);

-- Location: LCCOMB_X83_Y65_N24
\OPERATIVA|reg7|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg7|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~31_combout\,
	combout => \OPERATIVA|reg7|q[4]~feeder_combout\);

-- Location: FF_X83_Y65_N25
\OPERATIVA|reg7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg7|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg7|q\(4));

-- Location: LCCOMB_X86_Y69_N22
\OPERATIVA|reg5|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg5|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~31_combout\,
	combout => \OPERATIVA|reg5|q[4]~feeder_combout\);

-- Location: FF_X86_Y69_N23
\OPERATIVA|reg5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg5|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg5|q\(4));

-- Location: LCCOMB_X84_Y66_N20
\OPERATIVA|reg6|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|reg6|q[4]~feeder_combout\ = \ALGORITMO|U_PO|Add0~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~31_combout\,
	combout => \OPERATIVA|reg6|q[4]~feeder_combout\);

-- Location: FF_X84_Y66_N21
\OPERATIVA|reg6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OPERATIVA|reg6|q[4]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg6|q\(4));

-- Location: FF_X83_Y66_N13
\OPERATIVA|reg4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~31_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OPERATIVA|reg4|q\(4));

-- Location: LCCOMB_X83_Y66_N12
\OPERATIVA|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~2_combout\ = (\po_endereco[0]~5_combout\ & (((\po_endereco[1]~2_combout\)))) # (!\po_endereco[0]~5_combout\ & ((\po_endereco[1]~2_combout\ & (\OPERATIVA|reg6|q\(4))) # (!\po_endereco[1]~2_combout\ & ((\OPERATIVA|reg4|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg6|q\(4),
	datac => \OPERATIVA|reg4|q\(4),
	datad => \po_endereco[1]~2_combout\,
	combout => \OPERATIVA|Mux11~2_combout\);

-- Location: LCCOMB_X84_Y65_N28
\OPERATIVA|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~3_combout\ = (\po_endereco[0]~5_combout\ & ((\OPERATIVA|Mux11~2_combout\ & (\OPERATIVA|reg7|q\(4))) # (!\OPERATIVA|Mux11~2_combout\ & ((\OPERATIVA|reg5|q\(4)))))) # (!\po_endereco[0]~5_combout\ & (((\OPERATIVA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \po_endereco[0]~5_combout\,
	datab => \OPERATIVA|reg7|q\(4),
	datac => \OPERATIVA|reg5|q\(4),
	datad => \OPERATIVA|Mux11~2_combout\,
	combout => \OPERATIVA|Mux11~3_combout\);

-- Location: LCCOMB_X85_Y65_N24
\OPERATIVA|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OPERATIVA|Mux11~4_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (((\OPERATIVA|Mux11~1_combout\)))) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\SW[17]~input_o\ & ((\OPERATIVA|Mux11~3_combout\))) # (!\SW[17]~input_o\ & 
-- (\OPERATIVA|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \SW[17]~input_o\,
	datac => \OPERATIVA|Mux11~1_combout\,
	datad => \OPERATIVA|Mux11~3_combout\,
	combout => \OPERATIVA|Mux11~4_combout\);

-- Location: FF_X84_Y67_N19
\ALGORITMO|U_PO|reg_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \OPERATIVA|Mux11~4_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALGORITMO|U_PC|estado_atual.S_SAVE_B~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PO|reg_B\(4));

-- Location: LCCOMB_X84_Y65_N24
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

-- Location: LCCOMB_X84_Y67_N6
\ALGORITMO|U_PO|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~3_combout\ = (!\ALGORITMO|U_PO|reg_B\(1) & (!\ALGORITMO|U_PO|reg_B\(3) & (!\ALGORITMO|U_PO|reg_B\(0) & !\ALGORITMO|U_PO|reg_B\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(1),
	datab => \ALGORITMO|U_PO|reg_B\(3),
	datac => \ALGORITMO|U_PO|reg_B\(0),
	datad => \ALGORITMO|U_PO|reg_B\(2),
	combout => \ALGORITMO|U_PO|Equal0~3_combout\);

-- Location: LCCOMB_X84_Y65_N26
\ALGORITMO|U_PO|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~0_combout\ = (!\ALGORITMO|U_PO|reg_B\(12) & (!\ALGORITMO|U_PO|reg_B\(14) & (!\ALGORITMO|U_PO|reg_B\(15) & !\ALGORITMO|U_PO|reg_B\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(12),
	datab => \ALGORITMO|U_PO|reg_B\(14),
	datac => \ALGORITMO|U_PO|reg_B\(15),
	datad => \ALGORITMO|U_PO|reg_B\(13),
	combout => \ALGORITMO|U_PO|Equal0~0_combout\);

-- Location: LCCOMB_X84_Y67_N2
\ALGORITMO|U_PO|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~1_combout\ = (!\ALGORITMO|U_PO|reg_B\(11) & (!\ALGORITMO|U_PO|reg_B\(9) & (!\ALGORITMO|U_PO|reg_B\(8) & !\ALGORITMO|U_PO|reg_B\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|reg_B\(11),
	datab => \ALGORITMO|U_PO|reg_B\(9),
	datac => \ALGORITMO|U_PO|reg_B\(8),
	datad => \ALGORITMO|U_PO|reg_B\(10),
	combout => \ALGORITMO|U_PO|Equal0~1_combout\);

-- Location: LCCOMB_X84_Y65_N30
\ALGORITMO|U_PO|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PO|Equal0~4_combout\ = (\ALGORITMO|U_PO|Equal0~2_combout\ & (\ALGORITMO|U_PO|Equal0~3_combout\ & (\ALGORITMO|U_PO|Equal0~0_combout\ & \ALGORITMO|U_PO|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Equal0~2_combout\,
	datab => \ALGORITMO|U_PO|Equal0~3_combout\,
	datac => \ALGORITMO|U_PO|Equal0~0_combout\,
	datad => \ALGORITMO|U_PO|Equal0~1_combout\,
	combout => \ALGORITMO|U_PO|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y67_N8
\ALGORITMO|U_PC|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector14~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_COMPARE~q\ & \ALGORITMO|U_PO|LessThan1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_COMPARE~q\,
	datad => \ALGORITMO|U_PO|LessThan1~30_combout\,
	combout => \ALGORITMO|U_PC|Selector14~0_combout\);

-- Location: LCCOMB_X82_Y67_N10
\ALGORITMO|U_PC|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|Selector14~1_combout\ = (\ALGORITMO|U_PC|Selector14~0_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_CHECK~q\ & ((\ALGORITMO|U_PO|Equal0~4_combout\) # (\ALGORITMO|U_PO|LessThan0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PO|Equal0~4_combout\,
	datab => \ALGORITMO|U_PC|estado_atual.S_CHECK~q\,
	datac => \ALGORITMO|U_PC|Selector14~0_combout\,
	datad => \ALGORITMO|U_PO|LessThan0~30_combout\,
	combout => \ALGORITMO|U_PC|Selector14~1_combout\);

-- Location: FF_X82_Y67_N11
\ALGORITMO|U_PC|estado_atual.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PC|Selector14~1_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALGORITMO|U_PC|estado_atual.S_DONE~q\);

-- Location: LCCOMB_X83_Y68_N24
\display_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~2_combout\ = (\CONTROL|EA.IDLE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (\ALGORITMO|U_PC|estado_atual.S_DONE~q\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\CONTROL|EA.WRITE~q\))))) # (!\CONTROL|EA.IDLE~q\ & 
-- (\ALGORITMO|U_PC|estado_atual.S_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \CONTROL|EA.IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \CONTROL|EA.WRITE~q\,
	combout => \display_data[0]~2_combout\);

-- Location: LCCOMB_X83_Y68_N18
\display_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~1_combout\ = (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\)) # (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & ((\CONTROL|EA.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \display_data[0]~1_combout\);

-- Location: FF_X83_Y68_N31
\reg3_resto[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~13_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(1));

-- Location: LCCOMB_X83_Y68_N30
\display_data[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[1]~4_combout\ = (\display_data[0]~2_combout\ & (!\display_data[0]~1_combout\ & (reg3_resto(1)))) # (!\display_data[0]~2_combout\ & ((\display_data[0]~1_combout\) # ((\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[0]~2_combout\,
	datab => \display_data[0]~1_combout\,
	datac => reg3_resto(1),
	datad => \SW[16]~input_o\,
	combout => \display_data[1]~4_combout\);

-- Location: LCCOMB_X83_Y68_N0
\display_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~0_combout\ = (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & \CONTROL|EA.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \display_data[0]~0_combout\);

-- Location: LCCOMB_X86_Y69_N12
\display_data[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- display_data(1) = (\display_data[1]~4_combout\ & ((\OPERATIVA|Mux14~4_combout\) # ((!\display_data[0]~0_combout\)))) # (!\display_data[1]~4_combout\ & (((\display_data[0]~0_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[1]~4_combout\,
	datab => \OPERATIVA|Mux14~4_combout\,
	datac => \display_data[0]~0_combout\,
	datad => \SW[1]~input_o\,
	combout => display_data(1));

-- Location: FF_X82_Y68_N25
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
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(0));

-- Location: LCCOMB_X82_Y68_N24
\display_data[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[0]~3_combout\ = (\display_data[0]~2_combout\ & (((reg3_resto(0)) # (\display_data[0]~1_combout\)))) # (!\display_data[0]~2_combout\ & (\SW[15]~input_o\ & ((!\display_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \display_data[0]~2_combout\,
	datac => reg3_resto(0),
	datad => \display_data[0]~1_combout\,
	combout => \display_data[0]~3_combout\);

-- Location: LCCOMB_X83_Y68_N22
\display_data[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- display_data(0) = (\display_data[0]~3_combout\ & ((\SW[0]~input_o\) # ((!\display_data[0]~0_combout\)))) # (!\display_data[0]~3_combout\ & (((\OPERATIVA|Mux15~4_combout\ & \display_data[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \display_data[0]~3_combout\,
	datac => \OPERATIVA|Mux15~4_combout\,
	datad => \display_data[0]~0_combout\,
	combout => display_data(0));

-- Location: LCCOMB_X82_Y67_N22
\CONTROL|PE.READ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROL|PE.READ~0_combout\ = (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & !\CONTROL|EA.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \CONTROL|EA.IDLE~q\,
	combout => \CONTROL|PE.READ~0_combout\);

-- Location: FF_X82_Y67_N23
\CONTROL|EA.READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CONTROL|PE.READ~0_combout\,
	clrn => \KEY[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL|EA.READ~q\);

-- Location: LCCOMB_X85_Y69_N18
\display_data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~6_combout\ = (\CONTROL|EA.READ~q\ & (\OPERATIVA|Mux12~4_combout\)) # (!\CONTROL|EA.READ~q\ & (((\CONTROL|EA.WRITE~q\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux12~4_combout\,
	datab => \CONTROL|EA.READ~q\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \SW[3]~input_o\,
	combout => \display_data[3]~6_combout\);

-- Location: FF_X85_Y69_N25
\reg3_resto[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(3));

-- Location: LCCOMB_X85_Y69_N24
\display_data[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[3]~7_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((reg3_resto(3))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[3]~6_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[3]~6_combout\,
	datac => reg3_resto(3),
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[3]~7_combout\);

-- Location: LCCOMB_X87_Y68_N0
\reg3_resto[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg3_resto[2]~feeder_combout\ = \ALGORITMO|U_PO|Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~19_combout\,
	combout => \reg3_resto[2]~feeder_combout\);

-- Location: FF_X87_Y68_N1
\reg3_resto[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg3_resto[2]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(2));

-- Location: LCCOMB_X83_Y68_N28
\display_data[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[2]~5_combout\ = (\display_data[0]~1_combout\ & (((\display_data[0]~2_combout\)))) # (!\display_data[0]~1_combout\ & ((\display_data[0]~2_combout\ & (reg3_resto(2))) # (!\display_data[0]~2_combout\ & ((\SW[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg3_resto(2),
	datab => \display_data[0]~1_combout\,
	datac => \display_data[0]~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \display_data[2]~5_combout\);

-- Location: LCCOMB_X86_Y69_N10
\display_data[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- display_data(2) = (\display_data[0]~0_combout\ & ((\display_data[2]~5_combout\ & ((\SW[2]~input_o\))) # (!\display_data[2]~5_combout\ & (\OPERATIVA|Mux13~4_combout\)))) # (!\display_data[0]~0_combout\ & (\display_data[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[0]~0_combout\,
	datab => \display_data[2]~5_combout\,
	datac => \OPERATIVA|Mux13~4_combout\,
	datad => \SW[2]~input_o\,
	combout => display_data(2));

-- Location: LCCOMB_X86_Y69_N4
\HEX0_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux6~0_combout\ = (\display_data[3]~7_combout\ & (display_data(0) & (display_data(1) $ (display_data(2))))) # (!\display_data[3]~7_combout\ & (!display_data(1) & (display_data(0) $ (display_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y69_N2
\HEX0_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux5~0_combout\ = (display_data(1) & ((display_data(0) & (\display_data[3]~7_combout\)) # (!display_data(0) & ((display_data(2)))))) # (!display_data(1) & (display_data(2) & (display_data(0) $ (\display_data[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y69_N0
\HEX0_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux4~0_combout\ = (\display_data[3]~7_combout\ & (display_data(2) & ((display_data(1)) # (!display_data(0))))) # (!\display_data[3]~7_combout\ & (display_data(1) & (!display_data(0) & !display_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y69_N6
\HEX0_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux3~0_combout\ = (display_data(1) & ((display_data(0) & ((display_data(2)))) # (!display_data(0) & (\display_data[3]~7_combout\ & !display_data(2))))) # (!display_data(1) & (!\display_data[3]~7_combout\ & (display_data(0) $ 
-- (display_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y69_N28
\HEX0_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux2~0_combout\ = (display_data(1) & (display_data(0) & (!\display_data[3]~7_combout\))) # (!display_data(1) & ((display_data(2) & ((!\display_data[3]~7_combout\))) # (!display_data(2) & (display_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y69_N18
\HEX0_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux1~0_combout\ = (display_data(1) & (!\display_data[3]~7_combout\ & ((display_data(0)) # (!display_data(2))))) # (!display_data(1) & (display_data(0) & (\display_data[3]~7_combout\ $ (!display_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y69_N24
\HEX0_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0_INST|Mux0~0_combout\ = (display_data(0) & ((\display_data[3]~7_combout\) # (display_data(1) $ (display_data(2))))) # (!display_data(0) & ((display_data(1)) # (\display_data[3]~7_combout\ $ (display_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display_data(1),
	datab => display_data(0),
	datac => \display_data[3]~7_combout\,
	datad => display_data(2),
	combout => \HEX0_INST|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y67_N28
\display_data[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~16_combout\ = (\CONTROL|EA.READ~q\ & (((\OPERATIVA|Mux8~4_combout\)))) # (!\CONTROL|EA.READ~q\ & (\SW[7]~input_o\ & ((\CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \OPERATIVA|Mux8~4_combout\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[7]~16_combout\);

-- Location: FF_X85_Y66_N13
\reg3_resto[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~51_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(7));

-- Location: LCCOMB_X82_Y67_N18
\display_data[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[7]~17_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((reg3_resto(7))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # ((\display_data[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \display_data[7]~16_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => reg3_resto(7),
	combout => \display_data[7]~17_combout\);

-- Location: LCCOMB_X85_Y69_N0
\display_data[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~14_combout\ = (\CONTROL|EA.READ~q\ & (\OPERATIVA|Mux9~4_combout\)) # (!\CONTROL|EA.READ~q\ & (((\CONTROL|EA.WRITE~q\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux9~4_combout\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \CONTROL|EA.READ~q\,
	datad => \SW[6]~input_o\,
	combout => \display_data[6]~14_combout\);

-- Location: FF_X85_Y69_N17
\reg3_resto[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~43_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(6));

-- Location: LCCOMB_X85_Y69_N16
\display_data[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[6]~15_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((reg3_resto(6))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\display_data[6]~14_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[6]~14_combout\,
	datac => reg3_resto(6),
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[6]~15_combout\);

-- Location: FF_X85_Y69_N15
\reg3_resto[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(5));

-- Location: LCCOMB_X85_Y70_N10
\display_data[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~9_combout\ = (\CONTROL|EA.READ~q\ & (!\ALGORITMO|U_PC|estado_atual.S_IDLE~q\ & !\ALGORITMO|U_PC|estado_atual.S_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[4]~9_combout\);

-- Location: LCCOMB_X85_Y70_N12
\display_data[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~8_combout\ = (!\CONTROL|EA.READ~q\ & (\CONTROL|EA.WRITE~q\ & (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & !\ALGORITMO|U_PC|estado_atual.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	combout => \display_data[4]~8_combout\);

-- Location: LCCOMB_X84_Y69_N14
\display_data[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~12_combout\ = (\display_data[4]~9_combout\ & ((\OPERATIVA|Mux10~4_combout\) # ((\SW[5]~input_o\ & \display_data[4]~8_combout\)))) # (!\display_data[4]~9_combout\ & (((\SW[5]~input_o\ & \display_data[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~9_combout\,
	datab => \OPERATIVA|Mux10~4_combout\,
	datac => \SW[5]~input_o\,
	datad => \display_data[4]~8_combout\,
	combout => \display_data[5]~12_combout\);

-- Location: LCCOMB_X85_Y69_N14
\display_data[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[5]~13_combout\ = (\display_data[5]~12_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg3_resto(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => reg3_resto(5),
	datad => \display_data[5]~12_combout\,
	combout => \display_data[5]~13_combout\);

-- Location: FF_X85_Y69_N29
\reg3_resto[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~31_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(4));

-- Location: LCCOMB_X84_Y69_N8
\display_data[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~10_combout\ = (\SW[4]~input_o\ & ((\display_data[4]~8_combout\) # ((\OPERATIVA|Mux11~4_combout\ & \display_data[4]~9_combout\)))) # (!\SW[4]~input_o\ & (\OPERATIVA|Mux11~4_combout\ & (\display_data[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \OPERATIVA|Mux11~4_combout\,
	datac => \display_data[4]~9_combout\,
	datad => \display_data[4]~8_combout\,
	combout => \display_data[4]~10_combout\);

-- Location: LCCOMB_X85_Y69_N28
\display_data[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[4]~11_combout\ = (\display_data[4]~10_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg3_resto(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => reg3_resto(4),
	datad => \display_data[4]~10_combout\,
	combout => \display_data[4]~11_combout\);

-- Location: LCCOMB_X85_Y69_N22
\HEX1_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux6~0_combout\ = (\display_data[7]~17_combout\ & (\display_data[4]~11_combout\ & (\display_data[6]~15_combout\ $ (\display_data[5]~13_combout\)))) # (!\display_data[7]~17_combout\ & (!\display_data[5]~13_combout\ & 
-- (\display_data[6]~15_combout\ $ (\display_data[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y69_N20
\HEX1_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux5~0_combout\ = (\display_data[7]~17_combout\ & ((\display_data[4]~11_combout\ & ((\display_data[5]~13_combout\))) # (!\display_data[4]~11_combout\ & (\display_data[6]~15_combout\)))) # (!\display_data[7]~17_combout\ & 
-- (\display_data[6]~15_combout\ & (\display_data[5]~13_combout\ $ (\display_data[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y69_N26
\HEX1_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux4~0_combout\ = (\display_data[7]~17_combout\ & (\display_data[6]~15_combout\ & ((\display_data[5]~13_combout\) # (!\display_data[4]~11_combout\)))) # (!\display_data[7]~17_combout\ & (!\display_data[6]~15_combout\ & 
-- (\display_data[5]~13_combout\ & !\display_data[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y69_N12
\HEX1_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux3~0_combout\ = (\display_data[5]~13_combout\ & ((\display_data[6]~15_combout\ & ((\display_data[4]~11_combout\))) # (!\display_data[6]~15_combout\ & (\display_data[7]~17_combout\ & !\display_data[4]~11_combout\)))) # 
-- (!\display_data[5]~13_combout\ & (!\display_data[7]~17_combout\ & (\display_data[6]~15_combout\ $ (\display_data[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y69_N2
\HEX1_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux2~0_combout\ = (\display_data[5]~13_combout\ & (!\display_data[7]~17_combout\ & ((\display_data[4]~11_combout\)))) # (!\display_data[5]~13_combout\ & ((\display_data[6]~15_combout\ & (!\display_data[7]~17_combout\)) # 
-- (!\display_data[6]~15_combout\ & ((\display_data[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y69_N4
\HEX1_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux1~0_combout\ = (\display_data[6]~15_combout\ & (\display_data[4]~11_combout\ & (\display_data[7]~17_combout\ $ (\display_data[5]~13_combout\)))) # (!\display_data[6]~15_combout\ & (!\display_data[7]~17_combout\ & 
-- ((\display_data[5]~13_combout\) # (\display_data[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y69_N30
\HEX1_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX1_INST|Mux0~0_combout\ = (\display_data[4]~11_combout\ & ((\display_data[7]~17_combout\) # (\display_data[6]~15_combout\ $ (\display_data[5]~13_combout\)))) # (!\display_data[4]~11_combout\ & ((\display_data[5]~13_combout\) # 
-- (\display_data[7]~17_combout\ $ (\display_data[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[7]~17_combout\,
	datab => \display_data[6]~15_combout\,
	datac => \display_data[5]~13_combout\,
	datad => \display_data[4]~11_combout\,
	combout => \HEX1_INST|Mux0~0_combout\);

-- Location: FF_X85_Y67_N19
\reg2_quociente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~25_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(3));

-- Location: LCCOMB_X85_Y70_N24
\display_data[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~24_combout\ = (\CONTROL|EA.READ~q\ & (((\OPERATIVA|Mux4~4_combout\)))) # (!\CONTROL|EA.READ~q\ & (\CONTROL|EA.WRITE~q\ & (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \SW[11]~input_o\,
	datad => \OPERATIVA|Mux4~4_combout\,
	combout => \display_data[11]~24_combout\);

-- Location: LCCOMB_X85_Y70_N2
\display_data[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[11]~25_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (reg2_quociente(3))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # (\display_data[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => reg2_quociente(3),
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \display_data[11]~24_combout\,
	combout => \display_data[11]~25_combout\);

-- Location: LCCOMB_X84_Y69_N16
\display_data[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[8]~18_combout\ = (\display_data[4]~9_combout\ & ((\OPERATIVA|Mux7~4_combout\) # ((\SW[8]~input_o\ & \display_data[4]~8_combout\)))) # (!\display_data[4]~9_combout\ & (\SW[8]~input_o\ & ((\display_data[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~9_combout\,
	datab => \SW[8]~input_o\,
	datac => \OPERATIVA|Mux7~4_combout\,
	datad => \display_data[4]~8_combout\,
	combout => \display_data[8]~18_combout\);

-- Location: FF_X81_Y66_N31
\reg2_quociente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~7_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(0));

-- Location: LCCOMB_X84_Y69_N0
\display_data[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[8]~19_combout\ = (\display_data[8]~18_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg2_quociente(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datab => \display_data[8]~18_combout\,
	datad => reg2_quociente(0),
	combout => \display_data[8]~19_combout\);

-- Location: LCCOMB_X84_Y69_N26
\display_data[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~22_combout\ = (\OPERATIVA|Mux5~4_combout\ & ((\display_data[4]~9_combout\) # ((\display_data[4]~8_combout\ & \SW[10]~input_o\)))) # (!\OPERATIVA|Mux5~4_combout\ & (\display_data[4]~8_combout\ & ((\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux5~4_combout\,
	datab => \display_data[4]~8_combout\,
	datac => \display_data[4]~9_combout\,
	datad => \SW[10]~input_o\,
	combout => \display_data[10]~22_combout\);

-- Location: FF_X86_Y68_N5
\reg2_quociente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~19_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(2));

-- Location: LCCOMB_X84_Y69_N24
\display_data[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[10]~23_combout\ = (\display_data[10]~22_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg2_quociente(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => \display_data[10]~22_combout\,
	datad => reg2_quociente(2),
	combout => \display_data[10]~23_combout\);

-- Location: FF_X86_Y68_N13
\reg2_quociente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~13_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(1));

-- Location: LCCOMB_X85_Y70_N4
\display_data[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[9]~20_combout\ = (\CONTROL|EA.READ~q\ & (((\OPERATIVA|Mux6~4_combout\)))) # (!\CONTROL|EA.READ~q\ & (\CONTROL|EA.WRITE~q\ & (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \CONTROL|EA.WRITE~q\,
	datac => \SW[9]~input_o\,
	datad => \OPERATIVA|Mux6~4_combout\,
	combout => \display_data[9]~20_combout\);

-- Location: LCCOMB_X85_Y70_N18
\display_data[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[9]~21_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (reg2_quociente(1))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((\display_data[9]~20_combout\) # (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg2_quociente(1),
	datab => \display_data[9]~20_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datad => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	combout => \display_data[9]~21_combout\);

-- Location: LCCOMB_X84_Y70_N0
\HEX2_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux6~0_combout\ = (\display_data[11]~25_combout\ & (\display_data[8]~19_combout\ & (\display_data[10]~23_combout\ $ (\display_data[9]~21_combout\)))) # (!\display_data[11]~25_combout\ & (!\display_data[9]~21_combout\ & 
-- (\display_data[8]~19_combout\ $ (\display_data[10]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux6~0_combout\);

-- Location: LCCOMB_X84_Y70_N2
\HEX2_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux5~0_combout\ = (\display_data[11]~25_combout\ & ((\display_data[8]~19_combout\ & ((\display_data[9]~21_combout\))) # (!\display_data[8]~19_combout\ & (\display_data[10]~23_combout\)))) # (!\display_data[11]~25_combout\ & 
-- (\display_data[10]~23_combout\ & (\display_data[8]~19_combout\ $ (\display_data[9]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux5~0_combout\);

-- Location: LCCOMB_X84_Y70_N20
\HEX2_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux4~0_combout\ = (\display_data[11]~25_combout\ & (\display_data[10]~23_combout\ & ((\display_data[9]~21_combout\) # (!\display_data[8]~19_combout\)))) # (!\display_data[11]~25_combout\ & (!\display_data[8]~19_combout\ & 
-- (!\display_data[10]~23_combout\ & \display_data[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux4~0_combout\);

-- Location: LCCOMB_X84_Y70_N22
\HEX2_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux3~0_combout\ = (\display_data[9]~21_combout\ & ((\display_data[8]~19_combout\ & ((\display_data[10]~23_combout\))) # (!\display_data[8]~19_combout\ & (\display_data[11]~25_combout\ & !\display_data[10]~23_combout\)))) # 
-- (!\display_data[9]~21_combout\ & (!\display_data[11]~25_combout\ & (\display_data[8]~19_combout\ $ (\display_data[10]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux3~0_combout\);

-- Location: LCCOMB_X84_Y70_N12
\HEX2_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux2~0_combout\ = (\display_data[9]~21_combout\ & (!\display_data[11]~25_combout\ & (\display_data[8]~19_combout\))) # (!\display_data[9]~21_combout\ & ((\display_data[10]~23_combout\ & (!\display_data[11]~25_combout\)) # 
-- (!\display_data[10]~23_combout\ & ((\display_data[8]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux2~0_combout\);

-- Location: LCCOMB_X84_Y70_N10
\HEX2_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux1~0_combout\ = (\display_data[8]~19_combout\ & (\display_data[11]~25_combout\ $ (((\display_data[9]~21_combout\) # (!\display_data[10]~23_combout\))))) # (!\display_data[8]~19_combout\ & (!\display_data[11]~25_combout\ & 
-- (!\display_data[10]~23_combout\ & \display_data[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux1~0_combout\);

-- Location: LCCOMB_X84_Y70_N8
\HEX2_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2_INST|Mux0~0_combout\ = (\display_data[8]~19_combout\ & ((\display_data[11]~25_combout\) # (\display_data[10]~23_combout\ $ (\display_data[9]~21_combout\)))) # (!\display_data[8]~19_combout\ & ((\display_data[9]~21_combout\) # 
-- (\display_data[11]~25_combout\ $ (\display_data[10]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[11]~25_combout\,
	datab => \display_data[8]~19_combout\,
	datac => \display_data[10]~23_combout\,
	datad => \display_data[9]~21_combout\,
	combout => \HEX2_INST|Mux0~0_combout\);

-- Location: FF_X85_Y66_N11
\reg2_quociente[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~51_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(7));

-- Location: LCCOMB_X85_Y70_N0
\display_data[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[15]~32_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((reg2_quociente(7)))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (\ALGORITMO|U_PC|estado_atual.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => reg2_quociente(7),
	combout => \display_data[15]~32_combout\);

-- Location: LCCOMB_X85_Y70_N14
\display_data[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[15]~33_combout\ = (\display_data[15]~32_combout\) # ((\CONTROL|EA.READ~q\ & (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \OPERATIVA|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL|EA.READ~q\,
	datab => \display_data[15]~32_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \OPERATIVA|Mux0~2_combout\,
	combout => \display_data[15]~33_combout\);

-- Location: FF_X85_Y67_N9
\reg2_quociente[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~43_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(6));

-- Location: LCCOMB_X82_Y67_N16
\display_data[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~30_combout\ = (\CONTROL|EA.READ~q\ & (\OPERATIVA|Mux1~4_combout\)) # (!\CONTROL|EA.READ~q\ & (((\SW[14]~input_o\ & \CONTROL|EA.WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux1~4_combout\,
	datab => \SW[14]~input_o\,
	datac => \CONTROL|EA.WRITE~q\,
	datad => \CONTROL|EA.READ~q\,
	combout => \display_data[14]~30_combout\);

-- Location: LCCOMB_X82_Y67_N2
\display_data[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[14]~31_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & (((reg2_quociente(6))))) # (!\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & ((\ALGORITMO|U_PC|estado_atual.S_IDLE~q\) # ((\display_data[14]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALGORITMO|U_PC|estado_atual.S_IDLE~q\,
	datab => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datac => reg2_quociente(6),
	datad => \display_data[14]~30_combout\,
	combout => \display_data[14]~31_combout\);

-- Location: LCCOMB_X84_Y69_N22
\display_data[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~26_combout\ = (\OPERATIVA|Mux3~4_combout\ & ((\display_data[4]~9_combout\) # ((\SW[12]~input_o\ & \display_data[4]~8_combout\)))) # (!\OPERATIVA|Mux3~4_combout\ & (\SW[12]~input_o\ & ((\display_data[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPERATIVA|Mux3~4_combout\,
	datab => \SW[12]~input_o\,
	datac => \display_data[4]~9_combout\,
	datad => \display_data[4]~8_combout\,
	combout => \display_data[12]~26_combout\);

-- Location: FF_X84_Y69_N13
\reg2_quociente[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~31_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(4));

-- Location: LCCOMB_X84_Y69_N6
\display_data[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[12]~27_combout\ = (\display_data[12]~26_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg2_quociente(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[12]~26_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => reg2_quociente(4),
	combout => \display_data[12]~27_combout\);

-- Location: LCCOMB_X85_Y70_N28
\display_data[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~28_combout\ = (\display_data[4]~9_combout\ & ((\OPERATIVA|Mux2~4_combout\) # ((\display_data[4]~8_combout\ & \SW[13]~input_o\)))) # (!\display_data[4]~9_combout\ & (\display_data[4]~8_combout\ & ((\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[4]~9_combout\,
	datab => \display_data[4]~8_combout\,
	datac => \OPERATIVA|Mux2~4_combout\,
	datad => \SW[13]~input_o\,
	combout => \display_data[13]~28_combout\);

-- Location: FF_X85_Y67_N23
\reg2_quociente[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~37_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(5));

-- Location: LCCOMB_X85_Y70_N22
\display_data[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_data[13]~29_combout\ = (\display_data[13]~28_combout\) # ((\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & reg2_quociente(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_data[13]~28_combout\,
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => reg2_quociente(5),
	combout => \display_data[13]~29_combout\);

-- Location: LCCOMB_X67_Y70_N24
\HEX3_INST|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux6~0_combout\ = (\display_data[15]~33_combout\ & (\display_data[12]~27_combout\ & (\display_data[14]~31_combout\ $ (\display_data[13]~29_combout\)))) # (!\display_data[15]~33_combout\ & (!\display_data[13]~29_combout\ & 
-- (\display_data[14]~31_combout\ $ (\display_data[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y70_N10
\HEX3_INST|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux5~0_combout\ = (\display_data[15]~33_combout\ & ((\display_data[12]~27_combout\ & ((\display_data[13]~29_combout\))) # (!\display_data[12]~27_combout\ & (\display_data[14]~31_combout\)))) # (!\display_data[15]~33_combout\ & 
-- (\display_data[14]~31_combout\ & (\display_data[12]~27_combout\ $ (\display_data[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y70_N0
\HEX3_INST|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux4~0_combout\ = (\display_data[15]~33_combout\ & (\display_data[14]~31_combout\ & ((\display_data[13]~29_combout\) # (!\display_data[12]~27_combout\)))) # (!\display_data[15]~33_combout\ & (!\display_data[14]~31_combout\ & 
-- (!\display_data[12]~27_combout\ & \display_data[13]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y70_N2
\HEX3_INST|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux3~0_combout\ = (\display_data[13]~29_combout\ & ((\display_data[14]~31_combout\ & ((\display_data[12]~27_combout\))) # (!\display_data[14]~31_combout\ & (\display_data[15]~33_combout\ & !\display_data[12]~27_combout\)))) # 
-- (!\display_data[13]~29_combout\ & (!\display_data[15]~33_combout\ & (\display_data[14]~31_combout\ $ (\display_data[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y70_N4
\HEX3_INST|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux2~0_combout\ = (\display_data[13]~29_combout\ & (!\display_data[15]~33_combout\ & ((\display_data[12]~27_combout\)))) # (!\display_data[13]~29_combout\ & ((\display_data[14]~31_combout\ & (!\display_data[15]~33_combout\)) # 
-- (!\display_data[14]~31_combout\ & ((\display_data[12]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y70_N6
\HEX3_INST|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux1~0_combout\ = (\display_data[14]~31_combout\ & (\display_data[12]~27_combout\ & (\display_data[15]~33_combout\ $ (\display_data[13]~29_combout\)))) # (!\display_data[14]~31_combout\ & (!\display_data[15]~33_combout\ & 
-- ((\display_data[12]~27_combout\) # (\display_data[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y70_N12
\HEX3_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3_INST|Mux0~0_combout\ = (\display_data[12]~27_combout\ & ((\display_data[15]~33_combout\) # (\display_data[14]~31_combout\ $ (\display_data[13]~29_combout\)))) # (!\display_data[12]~27_combout\ & ((\display_data[13]~29_combout\) # 
-- (\display_data[15]~33_combout\ $ (\display_data[14]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_data[15]~33_combout\,
	datab => \display_data[14]~31_combout\,
	datac => \display_data[12]~27_combout\,
	datad => \display_data[13]~29_combout\,
	combout => \HEX3_INST|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y67_N20
\ALGORITMO|U_PC|led_erro_ba~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|led_erro_ba~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \ALGORITMO|U_PO|LessThan0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PO|LessThan0~30_combout\,
	combout => \ALGORITMO|U_PC|led_erro_ba~0_combout\);

-- Location: LCCOMB_X82_Y67_N30
\ALGORITMO|U_PC|led_erro_b0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALGORITMO|U_PC|led_erro_b0~0_combout\ = (\ALGORITMO|U_PC|estado_atual.S_DONE~q\ & \ALGORITMO|U_PO|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PC|estado_atual.S_DONE~q\,
	datad => \ALGORITMO|U_PO|Equal0~4_combout\,
	combout => \ALGORITMO|U_PC|led_erro_b0~0_combout\);

-- Location: LCCOMB_X86_Y68_N14
\reg2_quociente[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[8]~feeder_combout\ = \ALGORITMO|U_PO|Add0~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~57_combout\,
	combout => \reg2_quociente[8]~feeder_combout\);

-- Location: FF_X86_Y68_N15
\reg2_quociente[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[8]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(8));

-- Location: LCCOMB_X81_Y66_N22
\reg2_quociente[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[9]~feeder_combout\ = \ALGORITMO|U_PO|Add0~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALGORITMO|U_PO|Add0~63_combout\,
	combout => \reg2_quociente[9]~feeder_combout\);

-- Location: FF_X81_Y66_N23
\reg2_quociente[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[9]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(9));

-- Location: FF_X85_Y66_N3
\reg2_quociente[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~69_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(10));

-- Location: FF_X85_Y66_N7
\reg2_quociente[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(11));

-- Location: LCCOMB_X81_Y66_N20
\reg2_quociente[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[12]~feeder_combout\ = \ALGORITMO|U_PO|Add0~81_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~81_combout\,
	combout => \reg2_quociente[12]~feeder_combout\);

-- Location: FF_X81_Y66_N21
\reg2_quociente[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[12]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(12));

-- Location: LCCOMB_X81_Y66_N18
\reg2_quociente[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[13]~feeder_combout\ = \ALGORITMO|U_PO|Add0~88_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~88_combout\,
	combout => \reg2_quociente[13]~feeder_combout\);

-- Location: FF_X81_Y66_N19
\reg2_quociente[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[13]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(13));

-- Location: LCCOMB_X81_Y66_N24
\reg2_quociente[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2_quociente[14]~feeder_combout\ = \ALGORITMO|U_PO|Add0~95_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALGORITMO|U_PO|Add0~95_combout\,
	combout => \reg2_quociente[14]~feeder_combout\);

-- Location: FF_X81_Y66_N25
\reg2_quociente[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reg2_quociente[14]~feeder_combout\,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(14));

-- Location: FF_X85_Y66_N9
\reg2_quociente[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~100_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2_quociente(15));

-- Location: FF_X85_Y66_N17
\reg3_resto[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~57_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(8));

-- Location: FF_X84_Y66_N3
\reg3_resto[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~63_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(9));

-- Location: FF_X84_Y66_N9
\reg3_resto[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~69_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(10));

-- Location: FF_X85_Y66_N1
\reg3_resto[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ALGORITMO|U_PO|Add0~75_combout\,
	sload => VCC,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(11));

-- Location: FF_X84_Y66_N31
\reg3_resto[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~81_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(12));

-- Location: FF_X85_Y66_N21
\reg3_resto[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~88_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(13));

-- Location: FF_X85_Y66_N23
\reg3_resto[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~95_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3_resto(14));

-- Location: FF_X85_Y66_N29
\reg3_resto[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALGORITMO|U_PO|Add0~100_combout\,
	ena => \OPERATIVA|dec|enable[3]~4_combout\,
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


