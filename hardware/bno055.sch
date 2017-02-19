EESchema Schematic File Version 2
LIBS:blupoi-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:antenna
LIBS:crystal_small_smd
LIBS:nrf52832
LIBS:bno055
LIBS:ics43432
LIBS:tps63001
LIBS:vusb
LIBS:vin
LIBS:apa102
LIBS:fdn340p
LIBS:vbat
LIBS:mcp73831
LIBS:cp2102-gmr
LIBS:nuf2221
LIBS:bq24075
LIBS:max16054
LIBS:micro_b_usb
LIBS:sip32408
LIBS:switches
LIBS:blupoi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6950 2800 2    60   Input ~ 0
I2C_SCL
Text HLabel 6950 2900 2    60   Output ~ 0
I2C_SDA
$Comp
L R_Small R2
U 1 1 5794AA60
P 4200 2500
F 0 "R2" V 4004 2500 50  0000 C CNN
F 1 "10k" V 4095 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4200 2500 50  0001 C CNN
F 3 "" H 4200 2500 50  0000 C CNN
	1    4200 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5794AB94
P 3950 4550
F 0 "#PWR011" H 3950 4300 50  0001 C CNN
F 1 "GND" H 3955 4377 50  0000 C CNN
F 2 "" H 3950 4550 50  0000 C CNN
F 3 "" H 3950 4550 50  0000 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 5794AC39
P 4200 3800
F 0 "C16" H 4000 3850 50  0000 C CNN
F 1 "100nF" H 4000 3750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4200 3800 50  0001 C CNN
F 3 "" H 4200 3800 50  0000 C CNN
	1    4200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2350 3950 3650
Wire Wire Line
	4300 2500 4450 2500
Connection ~ 3950 2800
Wire Wire Line
	4350 4050 4350 4550
Wire Wire Line
	4350 4150 4450 4150
Connection ~ 4350 4150
Connection ~ 4350 4250
Wire Wire Line
	4350 4350 4450 4350
Wire Wire Line
	3950 3650 4450 3650
Connection ~ 4350 4350
Connection ~ 4350 4450
Wire Wire Line
	4350 4250 4450 4250
$Comp
L C_Small C13
U 1 1 5794B6BE
P 2550 3750
F 0 "C13" H 2350 3800 50  0000 L CNN
F 1 "6.8nF" H 2250 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2550 3750 50  0001 C CNN
F 3 "" H 2550 3750 50  0000 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 5794B1F1
P 2950 3750
F 0 "C14" H 3050 3700 50  0000 L CNN
F 1 "120nF" H 3050 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2950 3750 50  0001 C CNN
F 3 "" H 2950 3750 50  0000 C CNN
	1    2950 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 3950 4450 3950
Wire Wire Line
	4200 3650 4200 3700
Connection ~ 4200 3650
$Comp
L C_Small C15
U 1 1 5794BAA4
P 3300 3750
F 0 "C15" H 3500 3700 50  0000 R CNN
F 1 "100nF" H 3600 3800 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 3300 3750 50  0001 C CNN
F 3 "" H 3300 3750 50  0000 C CNN
	1    3300 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3350 4450 3350
Connection ~ 4350 4050
Wire Wire Line
	4350 4450 4450 4450
Connection ~ 2950 3950
Connection ~ 3300 3950
Wire Wire Line
	4200 3900 4200 3950
Connection ~ 4200 3950
Wire Wire Line
	3950 3950 3950 4550
Connection ~ 3950 4050
$Comp
L R_Small R3
U 1 1 5794BEF8
P 4200 2800
F 0 "R3" V 4004 2800 50  0000 C CNN
F 1 "10k" V 4095 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4200 2800 50  0001 C CNN
F 3 "" H 4200 2800 50  0000 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2800 4300 2800
Wire Wire Line
	4100 2800 3950 2800
$Comp
L bno055 U3
U 1 1 5794C22E
P 5300 2450
F 0 "U3" H 5325 2647 60  0000 C CNN
F 1 "bno055" H 5325 2541 60  0000 C CNN
F 2 "bno055:bno055" H 5150 2450 60  0001 C CNN
F 3 "" H 5150 2450 60  0001 C CNN
	1    5300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4550 4450 4550
Wire Wire Line
	3950 4050 4450 4050
Connection ~ 3950 3950
Wire Wire Line
	6800 2900 6800 2700
$Comp
L R_Small R4
U 1 1 5794DCED
P 6800 2600
F 0 "R4" H 6850 2650 50  0000 L CNN
F 1 "4.7k" H 6850 2550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6800 2600 50  0001 C CNN
F 3 "" H 6800 2600 50  0000 C CNN
	1    6800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3850 3300 3950
Wire Wire Line
	2950 3850 2950 3950
Wire Wire Line
	2550 3850 2550 3950
Wire Wire Line
	2550 3650 2550 3550
Wire Wire Line
	3300 3350 3300 3650
Wire Wire Line
	6200 2800 6950 2800
Wire Wire Line
	6200 2900 6950 2900
Connection ~ 6800 2900
Wire Wire Line
	4100 2500 3950 2500
Connection ~ 3950 2500
Wire Wire Line
	2950 3650 2950 3550
Wire Wire Line
	2950 3550 2550 3550
Wire Wire Line
	2750 3450 2750 3550
Connection ~ 2750 3550
Text HLabel 2750 3450 1    60   Input ~ 0
V3.3
Text HLabel 3950 2350 1    60   Input ~ 0
V3.3
Text HLabel 6650 2300 1    60   Input ~ 0
V3.3
$Comp
L R_Small R6
U 1 1 57B3B953
P 6500 2600
F 0 "R6" H 6550 2650 50  0000 L CNN
F 1 "4.7k" H 6550 2550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6500 2600 50  0001 C CNN
F 3 "" H 6500 2600 50  0000 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2800 6500 2700
Connection ~ 6500 2800
Wire Wire Line
	6500 2500 6500 2400
Wire Wire Line
	6500 2400 6800 2400
Wire Wire Line
	6650 2400 6650 2300
Wire Wire Line
	6800 2400 6800 2500
Connection ~ 6650 2400
$EndSCHEMATC
