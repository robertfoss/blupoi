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
LIBS:blupoi-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ics43432 U4
U 1 1 5794E881
P 5300 3100
AR Path="/5794E881" Ref="U4"  Part="1" 
AR Path="/5794ABFE/5794E881" Ref="U4"  Part="1" 
F 0 "U4" H 5300 3297 60  0000 C CNN
F 1 "ics43432" H 5300 3191 60  0000 C CNN
F 2 "ics43432:ics43432" H 5200 3100 60  0001 C CNN
F 3 "" H 5200 3100 60  0001 C CNN
	1    5300 3100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 5794EC2D
P 4450 3700
F 0 "C17" H 4450 3650 50  0000 R CNN
F 1 "0.1uF" H 4450 3750 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0000 C CNN
	1    4450 3700
	-1   0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 5794F157
P 5900 3350
F 0 "R5" H 5950 3400 50  0000 L CNN
F 1 "100k" H 5959 3305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0000 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3250 5900 3150
Wire Wire Line
	5800 3150 6000 3150
$Comp
L GND #PWR013
U 1 1 5794F190
P 5900 3550
F 0 "#PWR013" H 5900 3300 50  0001 C CNN
F 1 "GND" H 5905 3377 50  0000 C CNN
F 2 "" H 5900 3550 50  0000 C CNN
F 3 "" H 5900 3550 50  0000 C CNN
	1    5900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3550 5900 3450
Wire Wire Line
	4700 3050 4700 3150
Wire Wire Line
	4700 3150 4800 3150
Text Notes 4650 2800 0    60   ~ 0
LR = high ->  output signal in right i2s channel\nLR = low  ->  output signal in left i2s channel
Wire Wire Line
	4800 3750 4700 3750
Wire Wire Line
	4700 3750 4700 3850
Connection ~ 4700 3850
Wire Wire Line
	4050 3550 4800 3550
$Comp
L GND #PWR014
U 1 1 5794F768
P 4450 3950
F 0 "#PWR014" H 4450 3700 50  0001 C CNN
F 1 "GND" H 4455 3777 50  0000 C CNN
F 2 "" H 4450 3950 50  0000 C CNN
F 3 "" H 4450 3950 50  0000 C CNN
	1    4450 3950
	1    0    0    -1  
$EndComp
Text HLabel 4700 3350 0    60   Input ~ 0
I2S_SCK
Wire Wire Line
	4700 3350 4800 3350
Text HLabel 4700 3250 0    60   Input ~ 0
I2S_WS
Wire Wire Line
	4700 3250 4800 3250
Wire Wire Line
	4050 3050 4050 3550
Text HLabel 6000 3150 2    60   Output ~ 0
I2S_SD
Connection ~ 5900 3150
Wire Wire Line
	4450 3800 4450 3950
Wire Wire Line
	4450 3850 4800 3850
Connection ~ 4450 3850
Wire Wire Line
	4450 3600 4450 3550
Connection ~ 4450 3550
Text HLabel 4050 3050 1    60   Input ~ 0
V3.3
Text HLabel 4700 3050 1    60   Input ~ 0
V3.3
$EndSCHEMATC
