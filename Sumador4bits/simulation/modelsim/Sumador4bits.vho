-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "02/19/2024 16:02:46"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sumador4bits IS
    PORT (
	A4 : IN std_logic_vector(3 DOWNTO 0);
	B4 : IN std_logic_vector(3 DOWNTO 0);
	CarryIn4 : IN std_logic;
	Sum4 : BUFFER std_logic_vector(4 DOWNTO 0);
	SumHex4 : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Sumador4bits;

-- Design Ports Information
-- Sum4[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum4[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum4[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum4[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum4[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[3]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[5]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[8]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SumHex4[9]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4[0]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CarryIn4	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4[3]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sumador4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CarryIn4 : std_logic;
SIGNAL ww_Sum4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SumHex4 : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CarryIn4~input_o\ : std_logic;
SIGNAL \B4[0]~input_o\ : std_logic;
SIGNAL \A4[0]~input_o\ : std_logic;
SIGNAL \SC1|Sum~combout\ : std_logic;
SIGNAL \B4[1]~input_o\ : std_logic;
SIGNAL \A4[1]~input_o\ : std_logic;
SIGNAL \SC2|Sum~combout\ : std_logic;
SIGNAL \A4[2]~input_o\ : std_logic;
SIGNAL \SC2|CarryOut~0_combout\ : std_logic;
SIGNAL \B4[2]~input_o\ : std_logic;
SIGNAL \SC3|Sum~combout\ : std_logic;
SIGNAL \B4[3]~input_o\ : std_logic;
SIGNAL \A4[3]~input_o\ : std_logic;
SIGNAL \SC4|Sum~combout\ : std_logic;
SIGNAL \SC4|CarryOut~0_combout\ : std_logic;
SIGNAL \conv|Ram0~0_combout\ : std_logic;
SIGNAL \conv|Ram0~1_combout\ : std_logic;
SIGNAL \conv|Ram0~2_combout\ : std_logic;
SIGNAL \conv|Ram0~3_combout\ : std_logic;
SIGNAL \conv|Ram0~4_combout\ : std_logic;
SIGNAL \conv|Ram0~5_combout\ : std_logic;
SIGNAL \conv|Ram0~6_combout\ : std_logic;
SIGNAL \ALT_INV_A4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_CarryIn4~input_o\ : std_logic;
SIGNAL \ALT_INV_B4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A4[0]~input_o\ : std_logic;
SIGNAL \conv|ALT_INV_Ram0~6_combout\ : std_logic;
SIGNAL \SC4|ALT_INV_CarryOut~0_combout\ : std_logic;
SIGNAL \SC4|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \SC3|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \SC2|ALT_INV_CarryOut~0_combout\ : std_logic;
SIGNAL \SC2|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \SC1|ALT_INV_Sum~combout\ : std_logic;

BEGIN

ww_A4 <= A4;
ww_B4 <= B4;
ww_CarryIn4 <= CarryIn4;
Sum4 <= ww_Sum4;
SumHex4 <= ww_SumHex4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A4[1]~input_o\ <= NOT \A4[1]~input_o\;
\ALT_INV_B4[1]~input_o\ <= NOT \B4[1]~input_o\;
\ALT_INV_A4[2]~input_o\ <= NOT \A4[2]~input_o\;
\ALT_INV_B4[2]~input_o\ <= NOT \B4[2]~input_o\;
\ALT_INV_A4[3]~input_o\ <= NOT \A4[3]~input_o\;
\ALT_INV_B4[3]~input_o\ <= NOT \B4[3]~input_o\;
\ALT_INV_CarryIn4~input_o\ <= NOT \CarryIn4~input_o\;
\ALT_INV_B4[0]~input_o\ <= NOT \B4[0]~input_o\;
\ALT_INV_A4[0]~input_o\ <= NOT \A4[0]~input_o\;
\conv|ALT_INV_Ram0~6_combout\ <= NOT \conv|Ram0~6_combout\;
\SC4|ALT_INV_CarryOut~0_combout\ <= NOT \SC4|CarryOut~0_combout\;
\SC4|ALT_INV_Sum~combout\ <= NOT \SC4|Sum~combout\;
\SC3|ALT_INV_Sum~combout\ <= NOT \SC3|Sum~combout\;
\SC2|ALT_INV_CarryOut~0_combout\ <= NOT \SC2|CarryOut~0_combout\;
\SC2|ALT_INV_Sum~combout\ <= NOT \SC2|Sum~combout\;
\SC1|ALT_INV_Sum~combout\ <= NOT \SC1|Sum~combout\;

-- Location: IOOBUF_X89_Y15_N56
\Sum4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC1|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum4(0));

-- Location: IOOBUF_X89_Y20_N79
\Sum4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC2|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum4(1));

-- Location: IOOBUF_X89_Y16_N5
\Sum4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC3|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum4(2));

-- Location: IOOBUF_X89_Y20_N96
\Sum4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC4|Sum~combout\,
	devoe => ww_devoe,
	o => ww_Sum4(3));

-- Location: IOOBUF_X89_Y25_N22
\Sum4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC4|CarryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_Sum4(4));

-- Location: IOOBUF_X89_Y23_N56
\SumHex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~0_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(0));

-- Location: IOOBUF_X89_Y23_N39
\SumHex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~1_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(1));

-- Location: IOOBUF_X89_Y21_N39
\SumHex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~2_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(2));

-- Location: IOOBUF_X89_Y16_N22
\SumHex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~3_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(3));

-- Location: IOOBUF_X89_Y23_N22
\SumHex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~4_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(4));

-- Location: IOOBUF_X89_Y15_N22
\SumHex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|Ram0~5_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(5));

-- Location: IOOBUF_X89_Y15_N5
\SumHex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \conv|ALT_INV_Ram0~6_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(6));

-- Location: IOOBUF_X56_Y0_N53
\SumHex4[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SumHex4(7));

-- Location: IOOBUF_X89_Y25_N39
\SumHex4[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC4|ALT_INV_CarryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(8));

-- Location: IOOBUF_X89_Y25_N5
\SumHex4[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SC4|ALT_INV_CarryOut~0_combout\,
	devoe => ww_devoe,
	o => ww_SumHex4(9));

-- Location: IOIBUF_X89_Y21_N55
\CarryIn4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CarryIn4,
	o => \CarryIn4~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\B4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4(0),
	o => \B4[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\A4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4(0),
	o => \A4[0]~input_o\);

-- Location: LABCELL_X88_Y20_N0
\SC1|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC1|Sum~combout\ = ( \B4[0]~input_o\ & ( \A4[0]~input_o\ & ( \CarryIn4~input_o\ ) ) ) # ( !\B4[0]~input_o\ & ( \A4[0]~input_o\ & ( !\CarryIn4~input_o\ ) ) ) # ( \B4[0]~input_o\ & ( !\A4[0]~input_o\ & ( !\CarryIn4~input_o\ ) ) ) # ( !\B4[0]~input_o\ & ( 
-- !\A4[0]~input_o\ & ( \CarryIn4~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CarryIn4~input_o\,
	datae => \ALT_INV_B4[0]~input_o\,
	dataf => \ALT_INV_A4[0]~input_o\,
	combout => \SC1|Sum~combout\);

-- Location: IOIBUF_X89_Y20_N44
\B4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4(1),
	o => \B4[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\A4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4(1),
	o => \A4[1]~input_o\);

-- Location: LABCELL_X88_Y20_N9
\SC2|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC2|Sum~combout\ = ( \B4[0]~input_o\ & ( \A4[0]~input_o\ & ( !\B4[1]~input_o\ $ (\A4[1]~input_o\) ) ) ) # ( !\B4[0]~input_o\ & ( \A4[0]~input_o\ & ( !\B4[1]~input_o\ $ (!\A4[1]~input_o\ $ (\CarryIn4~input_o\)) ) ) ) # ( \B4[0]~input_o\ & ( 
-- !\A4[0]~input_o\ & ( !\B4[1]~input_o\ $ (!\A4[1]~input_o\ $ (\CarryIn4~input_o\)) ) ) ) # ( !\B4[0]~input_o\ & ( !\A4[0]~input_o\ & ( !\B4[1]~input_o\ $ (!\A4[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110101010010101011010101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B4[1]~input_o\,
	datac => \ALT_INV_A4[1]~input_o\,
	datad => \ALT_INV_CarryIn4~input_o\,
	datae => \ALT_INV_B4[0]~input_o\,
	dataf => \ALT_INV_A4[0]~input_o\,
	combout => \SC2|Sum~combout\);

-- Location: IOIBUF_X89_Y20_N61
\A4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4(2),
	o => \A4[2]~input_o\);

-- Location: LABCELL_X88_Y20_N12
\SC2|CarryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC2|CarryOut~0_combout\ = ( \B4[0]~input_o\ & ( \A4[0]~input_o\ & ( (\B4[1]~input_o\) # (\A4[1]~input_o\) ) ) ) # ( !\B4[0]~input_o\ & ( \A4[0]~input_o\ & ( (!\CarryIn4~input_o\ & (\A4[1]~input_o\ & \B4[1]~input_o\)) # (\CarryIn4~input_o\ & 
-- ((\B4[1]~input_o\) # (\A4[1]~input_o\))) ) ) ) # ( \B4[0]~input_o\ & ( !\A4[0]~input_o\ & ( (!\CarryIn4~input_o\ & (\A4[1]~input_o\ & \B4[1]~input_o\)) # (\CarryIn4~input_o\ & ((\B4[1]~input_o\) # (\A4[1]~input_o\))) ) ) ) # ( !\B4[0]~input_o\ & ( 
-- !\A4[0]~input_o\ & ( (\A4[1]~input_o\ & \B4[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000101110001011100010111000101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CarryIn4~input_o\,
	datab => \ALT_INV_A4[1]~input_o\,
	datac => \ALT_INV_B4[1]~input_o\,
	datae => \ALT_INV_B4[0]~input_o\,
	dataf => \ALT_INV_A4[0]~input_o\,
	combout => \SC2|CarryOut~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\B4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4(2),
	o => \B4[2]~input_o\);

-- Location: LABCELL_X88_Y20_N51
\SC3|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC3|Sum~combout\ = ( \B4[2]~input_o\ & ( !\A4[2]~input_o\ $ (\SC2|CarryOut~0_combout\) ) ) # ( !\B4[2]~input_o\ & ( !\A4[2]~input_o\ $ (!\SC2|CarryOut~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A4[2]~input_o\,
	datac => \SC2|ALT_INV_CarryOut~0_combout\,
	dataf => \ALT_INV_B4[2]~input_o\,
	combout => \SC3|Sum~combout\);

-- Location: IOIBUF_X89_Y21_N4
\B4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4(3),
	o => \B4[3]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\A4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4(3),
	o => \A4[3]~input_o\);

-- Location: LABCELL_X88_Y20_N54
\SC4|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC4|Sum~combout\ = ( \A4[3]~input_o\ & ( \B4[2]~input_o\ & ( !\B4[3]~input_o\ $ (((\A4[2]~input_o\) # (\SC2|CarryOut~0_combout\))) ) ) ) # ( !\A4[3]~input_o\ & ( \B4[2]~input_o\ & ( !\B4[3]~input_o\ $ (((!\SC2|CarryOut~0_combout\ & !\A4[2]~input_o\))) ) 
-- ) ) # ( \A4[3]~input_o\ & ( !\B4[2]~input_o\ & ( !\B4[3]~input_o\ $ (((\SC2|CarryOut~0_combout\ & \A4[2]~input_o\))) ) ) ) # ( !\A4[3]~input_o\ & ( !\B4[2]~input_o\ & ( !\B4[3]~input_o\ $ (((!\SC2|CarryOut~0_combout\) # (!\A4[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110101010011010100101101010011010101001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B4[3]~input_o\,
	datab => \SC2|ALT_INV_CarryOut~0_combout\,
	datac => \ALT_INV_A4[2]~input_o\,
	datae => \ALT_INV_A4[3]~input_o\,
	dataf => \ALT_INV_B4[2]~input_o\,
	combout => \SC4|Sum~combout\);

-- Location: LABCELL_X88_Y20_N33
\SC4|CarryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SC4|CarryOut~0_combout\ = ( \A4[3]~input_o\ & ( \B4[2]~input_o\ & ( ((\B4[3]~input_o\) # (\SC2|CarryOut~0_combout\)) # (\A4[2]~input_o\) ) ) ) # ( !\A4[3]~input_o\ & ( \B4[2]~input_o\ & ( (\B4[3]~input_o\ & ((\SC2|CarryOut~0_combout\) # 
-- (\A4[2]~input_o\))) ) ) ) # ( \A4[3]~input_o\ & ( !\B4[2]~input_o\ & ( ((\A4[2]~input_o\ & \SC2|CarryOut~0_combout\)) # (\B4[3]~input_o\) ) ) ) # ( !\A4[3]~input_o\ & ( !\B4[2]~input_o\ & ( (\A4[2]~input_o\ & (\SC2|CarryOut~0_combout\ & \B4[3]~input_o\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001011111111100000000010111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A4[2]~input_o\,
	datac => \SC2|ALT_INV_CarryOut~0_combout\,
	datad => \ALT_INV_B4[3]~input_o\,
	datae => \ALT_INV_A4[3]~input_o\,
	dataf => \ALT_INV_B4[2]~input_o\,
	combout => \SC4|CarryOut~0_combout\);

-- Location: LABCELL_X88_Y20_N36
\conv|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~0_combout\ = ( \SC3|Sum~combout\ & ( (!\SC2|Sum~combout\ & (!\SC1|Sum~combout\ $ (\SC4|Sum~combout\))) ) ) # ( !\SC3|Sum~combout\ & ( (\SC1|Sum~combout\ & (!\SC2|Sum~combout\ $ (\SC4|Sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000110000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SC1|ALT_INV_Sum~combout\,
	datab => \SC2|ALT_INV_Sum~combout\,
	datac => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~0_combout\);

-- Location: LABCELL_X88_Y20_N39
\conv|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~1_combout\ = ( \SC3|Sum~combout\ & ( (!\SC1|Sum~combout\ & ((\SC4|Sum~combout\) # (\SC2|Sum~combout\))) # (\SC1|Sum~combout\ & (!\SC2|Sum~combout\ $ (\SC4|Sum~combout\))) ) ) # ( !\SC3|Sum~combout\ & ( (\SC1|Sum~combout\ & (\SC2|Sum~combout\ & 
-- \SC4|Sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SC1|ALT_INV_Sum~combout\,
	datab => \SC2|ALT_INV_Sum~combout\,
	datad => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~1_combout\);

-- Location: LABCELL_X88_Y20_N42
\conv|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~2_combout\ = ( \SC3|Sum~combout\ & ( (\SC4|Sum~combout\ & ((!\SC1|Sum~combout\) # (\SC2|Sum~combout\))) ) ) # ( !\SC3|Sum~combout\ & ( (!\SC1|Sum~combout\ & (\SC2|Sum~combout\ & !\SC4|Sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SC1|ALT_INV_Sum~combout\,
	datab => \SC2|ALT_INV_Sum~combout\,
	datac => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~2_combout\);

-- Location: LABCELL_X88_Y20_N45
\conv|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~3_combout\ = ( \SC3|Sum~combout\ & ( (!\SC1|Sum~combout\ & (!\SC2|Sum~combout\ & !\SC4|Sum~combout\)) # (\SC1|Sum~combout\ & (\SC2|Sum~combout\)) ) ) # ( !\SC3|Sum~combout\ & ( (!\SC1|Sum~combout\ & (\SC2|Sum~combout\ & \SC4|Sum~combout\)) # 
-- (\SC1|Sum~combout\ & (!\SC2|Sum~combout\ & !\SC4|Sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000100010010001000010001010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SC1|ALT_INV_Sum~combout\,
	datab => \SC2|ALT_INV_Sum~combout\,
	datad => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~3_combout\);

-- Location: LABCELL_X88_Y20_N18
\conv|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~4_combout\ = ( \SC3|Sum~combout\ & ( (!\SC4|Sum~combout\ & ((!\SC2|Sum~combout\) # (\SC1|Sum~combout\))) ) ) # ( !\SC3|Sum~combout\ & ( (\SC1|Sum~combout\ & ((!\SC2|Sum~combout\) # (!\SC4|Sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SC2|ALT_INV_Sum~combout\,
	datac => \SC1|ALT_INV_Sum~combout\,
	datad => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~4_combout\);

-- Location: LABCELL_X88_Y20_N21
\conv|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~5_combout\ = ( \SC3|Sum~combout\ & ( (\SC1|Sum~combout\ & (!\SC2|Sum~combout\ $ (!\SC4|Sum~combout\))) ) ) # ( !\SC3|Sum~combout\ & ( (!\SC4|Sum~combout\ & ((\SC2|Sum~combout\) # (\SC1|Sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SC1|ALT_INV_Sum~combout\,
	datab => \SC2|ALT_INV_Sum~combout\,
	datad => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~5_combout\);

-- Location: LABCELL_X88_Y20_N24
\conv|Ram0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \conv|Ram0~6_combout\ = ( \SC4|Sum~combout\ & ( \SC3|Sum~combout\ & ( (\SC1|Sum~combout\) # (\SC2|Sum~combout\) ) ) ) # ( !\SC4|Sum~combout\ & ( \SC3|Sum~combout\ & ( (!\SC2|Sum~combout\) # (!\SC1|Sum~combout\) ) ) ) # ( \SC4|Sum~combout\ & ( 
-- !\SC3|Sum~combout\ ) ) # ( !\SC4|Sum~combout\ & ( !\SC3|Sum~combout\ & ( \SC2|Sum~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111100111111000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SC2|ALT_INV_Sum~combout\,
	datac => \SC1|ALT_INV_Sum~combout\,
	datae => \SC4|ALT_INV_Sum~combout\,
	dataf => \SC3|ALT_INV_Sum~combout\,
	combout => \conv|Ram0~6_combout\);

-- Location: LABCELL_X7_Y4_N0
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


