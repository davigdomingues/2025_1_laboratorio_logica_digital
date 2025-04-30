-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/14/2025 22:05:56"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula07 IS
    PORT (
	Bout : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Bin : IN std_logic;
	D : OUT std_logic
	);
END aula07;

-- Design Ports Information
-- Bout	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bin	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Bout : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Bin : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \Bout~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Bin~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst|1~0_combout\ : std_logic;

BEGIN

Bout <= ww_Bout;
ww_A <= A;
ww_B <= B;
ww_Bin <= Bin;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\Bout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~0_combout\,
	devoe => ww_devoe,
	o => \Bout~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\D~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|1~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\Bin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bin,
	o => \Bin~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\B~input_o\ & ((\Bin~input_o\) # (!\A~input_o\))) # (!\B~input_o\ & (!\A~input_o\ & \Bin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \A~input_o\,
	datad => \Bin~input_o\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X8_Y1_N2
\inst|1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|1~0_combout\ = \B~input_o\ $ (\A~input_o\ $ (\Bin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datac => \A~input_o\,
	datad => \Bin~input_o\,
	combout => \inst|1~0_combout\);

ww_Bout <= \Bout~output_o\;

ww_D <= \D~output_o\;
END structure;


