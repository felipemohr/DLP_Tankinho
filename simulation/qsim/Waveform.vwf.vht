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
-- Generated on "05/18/2022 15:18:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DLP_Tankinho
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DLP_Tankinho_vhd_vec_tst IS
END DLP_Tankinho_vhd_vec_tst;
ARCHITECTURE DLP_Tankinho_arch OF DLP_Tankinho_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALNBP : STD_LOGIC;
SIGNAL ALNBP_CLK : STD_LOGIC;
SIGNAL ASNBP : STD_LOGIC;
SIGNAL BH : STD_LOGIC;
SIGNAL NT_DISPLAY : STD_LOGIC_VECTOR(0 TO 7);
SIGNAL SNAT : STD_LOGIC;
SIGNAL SNBP : STD_LOGIC;
SIGNAL SNBT : STD_LOGIC;
COMPONENT DLP_Tankinho
	PORT (
	ALNBP : OUT STD_LOGIC;
	ALNBP_CLK : IN STD_LOGIC;
	ASNBP : OUT STD_LOGIC;
	BH : OUT STD_LOGIC;
	NT_DISPLAY : OUT STD_LOGIC_VECTOR(0 TO 7);
	SNAT : IN STD_LOGIC;
	SNBP : IN STD_LOGIC;
	SNBT : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DLP_Tankinho
	PORT MAP (
-- list connections between master ports and signals
	ALNBP => ALNBP,
	ALNBP_CLK => ALNBP_CLK,
	ASNBP => ASNBP,
	BH => BH,
	NT_DISPLAY => NT_DISPLAY,
	SNAT => SNAT,
	SNBP => SNBP,
	SNBT => SNBT
	);

-- ALNBP_CLK
t_prcs_ALNBP_CLK: PROCESS
BEGIN
	ALNBP_CLK <= '0';
WAIT;
END PROCESS t_prcs_ALNBP_CLK;

-- SNAT
t_prcs_SNAT: PROCESS
BEGIN
	SNAT <= '0';
WAIT;
END PROCESS t_prcs_SNAT;

-- SNBP
t_prcs_SNBP: PROCESS
BEGIN
	SNBP <= '0';
WAIT;
END PROCESS t_prcs_SNBP;

-- SNBT
t_prcs_SNBT: PROCESS
BEGIN
	SNBT <= '1';
	WAIT FOR 60000 ps;
	SNBT <= '0';
WAIT;
END PROCESS t_prcs_SNBT;
END DLP_Tankinho_arch;
