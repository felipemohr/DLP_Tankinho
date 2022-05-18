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

-- DATE "05/18/2022 15:18:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	DLP_Tankinho IS
    PORT (
	SNBP : IN std_logic;
	SNBT : IN std_logic;
	SNAT : IN std_logic;
	ALNBP_CLK : IN std_logic;
	BH : OUT std_logic;
	ASNBP : OUT std_logic;
	ALNBP : OUT std_logic;
	NT_DISPLAY : OUT std_logic_vector(0 TO 7)
	);
END DLP_Tankinho;

-- Design Ports Information
-- BH	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ASNBP	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALNBP	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NT_DISPLAY[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SNBP	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SNBT	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SNAT	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALNBP_CLK	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DLP_Tankinho IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SNBP : std_logic;
SIGNAL ww_SNBT : std_logic;
SIGNAL ww_SNAT : std_logic;
SIGNAL ww_ALNBP_CLK : std_logic;
SIGNAL ww_BH : std_logic;
SIGNAL ww_ASNBP : std_logic;
SIGNAL ww_ALNBP : std_logic;
SIGNAL ww_NT_DISPLAY : std_logic_vector(0 TO 7);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SNBP~input_o\ : std_logic;
SIGNAL \SNBT~input_o\ : std_logic;
SIGNAL \SNAT~input_o\ : std_logic;
SIGNAL \contator_process~0_combout\ : std_logic;
SIGNAL \ASNBP$latch~combout\ : std_logic;
SIGNAL \ALNBP_CLK~input_o\ : std_logic;
SIGNAL \ALNBP~0_combout\ : std_logic;
SIGNAL \ALNBP$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALNBP_CLK~input_o\ : std_logic;
SIGNAL \ALT_INV_SNAT~input_o\ : std_logic;
SIGNAL \ALT_INV_SNBT~input_o\ : std_logic;
SIGNAL \ALT_INV_SNBP~input_o\ : std_logic;
SIGNAL \ALT_INV_ALNBP$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ASNBP$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALNBP~0_combout\ : std_logic;
SIGNAL \ALT_INV_contator_process~0_combout\ : std_logic;

BEGIN

ww_SNBP <= SNBP;
ww_SNBT <= SNBT;
ww_SNAT <= SNAT;
ww_ALNBP_CLK <= ALNBP_CLK;
BH <= ww_BH;
ASNBP <= ww_ASNBP;
ALNBP <= ww_ALNBP;
NT_DISPLAY <= ww_NT_DISPLAY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ALNBP_CLK~input_o\ <= NOT \ALNBP_CLK~input_o\;
\ALT_INV_SNAT~input_o\ <= NOT \SNAT~input_o\;
\ALT_INV_SNBT~input_o\ <= NOT \SNBT~input_o\;
\ALT_INV_SNBP~input_o\ <= NOT \SNBP~input_o\;
\ALT_INV_ALNBP$latch~combout\ <= NOT \ALNBP$latch~combout\;
\ALT_INV_ASNBP$latch~combout\ <= NOT \ASNBP$latch~combout\;
\ALT_INV_ALNBP~0_combout\ <= NOT \ALNBP~0_combout\;
\ALT_INV_contator_process~0_combout\ <= NOT \contator_process~0_combout\;

-- Location: IOOBUF_X54_Y81_N53
\BH~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_BH);

-- Location: IOOBUF_X89_Y37_N22
\ASNBP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ASNBP$latch~combout\,
	devoe => ww_devoe,
	o => ww_ASNBP);

-- Location: IOOBUF_X89_Y38_N5
\ALNBP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALNBP$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALNBP);

-- Location: IOOBUF_X89_Y36_N39
\NT_DISPLAY[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(7));

-- Location: IOOBUF_X54_Y81_N19
\NT_DISPLAY[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(6));

-- Location: IOOBUF_X66_Y0_N93
\NT_DISPLAY[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(5));

-- Location: IOOBUF_X78_Y81_N36
\NT_DISPLAY[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(4));

-- Location: IOOBUF_X68_Y81_N2
\NT_DISPLAY[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(3));

-- Location: IOOBUF_X84_Y81_N19
\NT_DISPLAY[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(2));

-- Location: IOOBUF_X4_Y0_N19
\NT_DISPLAY[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(1));

-- Location: IOOBUF_X68_Y81_N19
\NT_DISPLAY[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_NT_DISPLAY(0));

-- Location: IOIBUF_X89_Y37_N4
\SNBP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SNBP,
	o => \SNBP~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\SNBT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SNBT,
	o => \SNBT~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\SNAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SNAT,
	o => \SNAT~input_o\);

-- Location: LABCELL_X88_Y37_N48
\contator_process~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \contator_process~0_combout\ = ( !\SNAT~input_o\ & ( \SNBT~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SNBT~input_o\,
	dataf => \ALT_INV_SNAT~input_o\,
	combout => \contator_process~0_combout\);

-- Location: LABCELL_X88_Y37_N39
\ASNBP$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ASNBP$latch~combout\ = ( \contator_process~0_combout\ & ( \ASNBP$latch~combout\ & ( \SNBP~input_o\ ) ) ) # ( !\contator_process~0_combout\ & ( \ASNBP$latch~combout\ ) ) # ( \contator_process~0_combout\ & ( !\ASNBP$latch~combout\ & ( \SNBP~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SNBP~input_o\,
	datae => \ALT_INV_contator_process~0_combout\,
	dataf => \ALT_INV_ASNBP$latch~combout\,
	combout => \ASNBP$latch~combout\);

-- Location: IOIBUF_X89_Y37_N55
\ALNBP_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALNBP_CLK,
	o => \ALNBP_CLK~input_o\);

-- Location: LABCELL_X88_Y37_N51
\ALNBP~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALNBP~0_combout\ = (\SNBP~input_o\ & \ALNBP_CLK~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SNBP~input_o\,
	datad => \ALT_INV_ALNBP_CLK~input_o\,
	combout => \ALNBP~0_combout\);

-- Location: LABCELL_X88_Y37_N42
\ALNBP$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALNBP$latch~combout\ = ( \contator_process~0_combout\ & ( \ALNBP$latch~combout\ & ( \ALNBP~0_combout\ ) ) ) # ( !\contator_process~0_combout\ & ( \ALNBP$latch~combout\ ) ) # ( \contator_process~0_combout\ & ( !\ALNBP$latch~combout\ & ( \ALNBP~0_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALNBP~0_combout\,
	datae => \ALT_INV_contator_process~0_combout\,
	dataf => \ALT_INV_ALNBP$latch~combout\,
	combout => \ALNBP$latch~combout\);

-- Location: LABCELL_X60_Y40_N3
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


