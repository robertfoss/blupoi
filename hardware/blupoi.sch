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
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 550  2000 850  850 
U 5794ABDB
F0 "bno055" 60
F1 "bno055.sch" 60
F2 "I2C_SCL" I R 1400 2300 60 
F3 "I2C_SDA" O R 1400 2400 60 
F4 "V3.3" I R 1400 2100 60 
$EndSheet
$Sheet
S 550  3200 850  850 
U 5794ABFE
F0 "ics43432" 60
F1 "ics43432.sch" 60
F2 "I2S_SCK" I R 1400 3500 60 
F3 "I2S_WS" I R 1400 3600 60 
F4 "I2S_SD" O R 1400 3700 60 
F5 "V3.3" I R 1400 3300 60 
$EndSheet
$Comp
L Crystal_Small_SMD X1
U 1 1 5794C8B9
P 4700 3950
F 0 "X1" H 4700 4175 50  0000 C CNN
F 1 "32MHz" H 4700 4084 50  0000 C CNN
F 2 "crystals_extra:XTAL2016" H 4700 3950 50  0001 C CNN
F 3 "" H 4700 3950 50  0000 C CNN
F 4 "Value" H 4700 3950 60  0001 C CNN "MFG Name"
F 5 "Value" H 4700 3950 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4700 3950 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4700 3950 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4700 3950 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4700 3950 60  0001 C CNN "2nd Distrib Link"
	1    4700 3950
	0    1    -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 5794BA55
P 4450 4100
F 0 "C2" V 4550 4100 50  0000 C CNN
F 1 "12pF" V 4650 4100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4450 4100 50  0001 C CNN
F 3 "" H 4450 4100 50  0000 C CNN
	1    4450 4100
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 5794BAC9
P 4450 3800
F 0 "C1" V 4221 3800 50  0000 C CNN
F 1 "12pF" V 4312 3800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4450 3800 50  0001 C CNN
F 3 "" H 4450 3800 50  0000 C CNN
	1    4450 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5794BE17
P 4250 4200
F 0 "#PWR01" H 4250 3950 50  0001 C CNN
F 1 "GND" H 4255 4027 50  0000 C CNN
F 2 "" H 4250 4200 50  0000 C CNN
F 3 "" H 4250 4200 50  0000 C CNN
	1    4250 4200
	1    0    0    -1  
$EndComp
$Comp
L NRF52832 U1
U 1 1 5794BBFA
P 5900 3000
F 0 "U1" H 5900 4787 60  0000 C CNN
F 1 "NRF52832" H 5900 4681 60  0000 C CNN
F 2 "Housings_DFN_QFN:UQFN-48-1EP_6x6mm_Pitch0.4mm" H 5800 3350 60  0001 C CNN
F 3 "" H 5800 3350 60  0000 C CNN
	1    5900 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 5794C3C6
P 4200 1700
F 0 "C8" H 4200 1750 50  0000 L CNN
F 1 "0.1uF" H 4200 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4200 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0000 C CNN
F 4 "Value" H 4200 1700 60  0001 C CNN "MFG Name"
F 5 "Value" H 4200 1700 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4200 1700 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4200 1700 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4200 1700 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4200 1700 60  0001 C CNN "2nd Distrib Link"
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5794C434
P 3900 1700
F 0 "C5" H 3900 1750 50  0000 L CNN
F 1 "0.1uF" H 3900 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3900 1700 50  0001 C CNN
F 3 "" H 3900 1700 50  0000 C CNN
F 4 "Value" H 3900 1700 60  0001 C CNN "MFG Name"
F 5 "Value" H 3900 1700 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 3900 1700 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 3900 1700 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 3900 1700 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 3900 1700 60  0001 C CNN "2nd Distrib Link"
	1    3900 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 5794C5CA
P 4500 1700
F 0 "C9" H 4500 1750 50  0000 L CNN
F 1 "4.7uF" H 4500 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0000 C CNN
F 4 "Value" H 4500 1700 60  0001 C CNN "MFG Name"
F 5 "Value" H 4500 1700 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4500 1700 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4500 1700 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4500 1700 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4500 1700 60  0001 C CNN "2nd Distrib Link"
	1    4500 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5794C7AE
P 3900 2000
F 0 "#PWR02" H 3900 1750 50  0001 C CNN
F 1 "GND" H 3905 1827 50  0000 C CNN
F 2 "" H 3900 2000 50  0000 C CNN
F 3 "" H 3900 2000 50  0000 C CNN
	1    3900 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5794CEF1
P 5000 4600
F 0 "#PWR03" H 5000 4350 50  0001 C CNN
F 1 "GND" H 5005 4427 50  0000 C CNN
F 2 "" H 5000 4600 50  0000 C CNN
F 3 "" H 5000 4600 50  0000 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L ANTENNA ANT1
U 1 1 5794D029
P 2700 3050
F 0 "ANT1" H 2806 3387 60  0000 C CNN
F 1 "ANT_BLE" H 2806 3281 60  0000 C CNN
F 2 "jyd:ti-an043-antenna" H 2700 3050 60  0001 C CNN
F 3 "" H 2700 3050 60  0000 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5794D0A3
P 3100 3200
F 0 "#PWR04" H 3100 2950 50  0001 C CNN
F 1 "GND" H 3105 3027 50  0000 C CNN
F 2 "" H 3100 3200 50  0000 C CNN
F 3 "" H 3100 3200 50  0000 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_tune3
U 1 1 5794D18A
P 3300 3200
F 0 "C_tune3" H 3300 3250 50  0000 L CNN
F 1 "TBD" H 3300 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3300 3200 50  0001 C CNN
F 3 "" H 3300 3200 50  0000 C CNN
F 4 "Value" H 3300 3200 60  0001 C CNN "MFG Name"
F 5 "Value" H 3300 3200 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 3300 3200 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 3300 3200 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 3300 3200 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 3300 3200 60  0001 C CNN "2nd Distrib Link"
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5794D224
P 3300 3400
F 0 "#PWR05" H 3300 3150 50  0001 C CNN
F 1 "GND" H 3305 3227 50  0000 C CNN
F 2 "" H 3300 3400 50  0000 C CNN
F 3 "" H 3300 3400 50  0000 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 5794D39F
P 3650 3000
F 0 "L1" H 3650 3215 50  0000 C CNN
F 1 "3.9nH" H 3650 3124 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 3650 3000 50  0001 C CNN
F 3 "" H 3650 3000 50  0000 C CNN
F 4 "Value" H 3650 3000 60  0001 C CNN "MFG Name"
F 5 "Value" H 3650 3000 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 3650 3000 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 3650 3000 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 3650 3000 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 3650 3000 60  0001 C CNN "2nd Distrib Link"
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5794D556
P 4000 3200
F 0 "C3" H 4000 3250 50  0000 L CNN
F 1 "0.8pF" H 4000 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4000 3200 50  0001 C CNN
F 3 "" H 4000 3200 50  0000 C CNN
F 4 "Value" H 4000 3200 60  0001 C CNN "MFG Name"
F 5 "Value" H 4000 3200 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4000 3200 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4000 3200 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4000 3200 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4000 3200 60  0001 C CNN "2nd Distrib Link"
	1    4000 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5794D63E
P 4000 3400
F 0 "#PWR06" H 4000 3150 50  0001 C CNN
F 1 "GND" H 4005 3227 50  0000 C CNN
F 2 "" H 4000 3400 50  0000 C CNN
F 3 "" H 4000 3400 50  0000 C CNN
	1    4000 3400
	1    0    0    -1  
$EndComp
Text Label 4950 3250 0    60   ~ 0
SWCLK
Text Label 4950 3250 0    60   ~ 0
SWCLK
Text Label 4950 3250 0    60   ~ 0
SWDCLK
Text GLabel 4950 3250 0    60   Input ~ 0
SWDCLK
Text GLabel 4950 3350 0    60   BiDi ~ 0
SWDIO
$Comp
L C_Small C10
U 1 1 5794F0EF
P 4850 2200
F 0 "C10" V 4800 2100 50  0000 C CNN
F 1 "1uF" V 4800 2300 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 4850 2200 50  0001 C CNN
F 3 "" H 4850 2200 50  0000 C CNN
F 4 "Value" H 4850 2200 60  0001 C CNN "MFG Name"
F 5 "Value" H 4850 2200 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4850 2200 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4850 2200 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4850 2200 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4850 2200 60  0001 C CNN "2nd Distrib Link"
	1    4850 2200
	0    1    1    0   
$EndComp
$Comp
L C_Small C7
U 1 1 5794F28F
P 4850 2100
F 0 "C7" V 4800 2000 50  0000 C CNN
F 1 "100pF" V 4800 2250 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4850 2100 50  0001 C CNN
F 3 "" H 4850 2100 50  0000 C CNN
F 4 "Value" H 4850 2100 60  0001 C CNN "MFG Name"
F 5 "Value" H 4850 2100 60  0001 C CNN "MFG Part Num"
F 6 "Value" H 4850 2100 60  0001 C CNN "1st Distrib PN"
F 7 "Value" H 4850 2100 60  0001 C CNN "1st Distrib Link"
F 8 "Value" H 4850 2100 60  0001 C CNN "2nd Distrib Pn"
F 9 "Value" H 4850 2100 60  0001 C CNN "2nd Distrib Link"
	1    4850 2100
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 5794F5A6
P 4850 1900
F 0 "C4" V 4800 1800 50  0000 C CNN
F 1 "0.1uF" V 4800 2050 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4850 1900 50  0001 C CNN
F 3 "" H 4850 1900 50  0000 C CNN
	1    4850 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5794FBF8
P 4650 2300
F 0 "#PWR07" H 4650 2050 50  0001 C CNN
F 1 "GND" H 4655 2127 50  0000 C CNN
F 2 "" H 4650 2300 50  0000 C CNN
F 3 "" H 4650 2300 50  0000 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L ANTENNA ANT2
U 1 1 5794FDC4
P 8200 2450
F 0 "ANT2" H 8073 2397 60  0000 R CNN
F 1 "ANT_NFC" H 8073 2503 60  0000 R CNN
F 2 "nfc_antenna:nfc_antenna_60x5mm_1.826uH" H 8200 2450 60  0001 C CNN
F 3 "" H 8200 2450 60  0000 C CNN
	1    8200 2450
	-1   0    0    1   
$EndComp
$Comp
L C_Small C_tune1
U 1 1 5794FECC
P 7800 2200
F 0 "C_tune1" H 7800 2250 50  0000 L CNN
F 1 "TDB" H 7800 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7800 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0000 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C_tune2
U 1 1 5794FF28
P 7800 2700
F 0 "C_tune2" H 7800 2750 50  0000 L CNN
F 1 "TDB" H 7800 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7800 2700 50  0001 C CNN
F 3 "" H 7800 2700 50  0000 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5795070E
P 7800 2000
F 0 "#PWR08" H 7800 1750 50  0001 C CNN
F 1 "GND" H 7805 1827 50  0000 C CNN
F 2 "" H 7800 2000 50  0000 C CNN
F 3 "" H 7800 2000 50  0000 C CNN
	1    7800 2000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 579507E2
P 7800 2900
F 0 "#PWR09" H 7800 2650 50  0001 C CNN
F 1 "GND" H 7805 2727 50  0000 C CNN
F 2 "" H 7800 2900 50  0000 C CNN
F 3 "" H 7800 2900 50  0000 C CNN
	1    7800 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 579ACA58
P 10350 1900
F 0 "#PWR010" H 10350 1650 50  0001 C CNN
F 1 "GND" H 10355 1727 50  0000 C CNN
F 2 "" H 10350 1900 50  0000 C CNN
F 3 "" H 10350 1900 50  0000 C CNN
	1    10350 1900
	-1   0    0    -1  
$EndComp
$Sheet
S 550  4400 850  850 
U 57950BCD
F0 "apa102_0" 60
F1 "apa102_0.sch" 60
F2 "SPI0_MOSI" I R 1400 4800 60 
F3 "SPI0_SCK" I R 1400 4700 60 
F4 "VIN" I R 1400 4500 60 
$EndSheet
Wire Wire Line
	4250 3950 4600 3950
Connection ~ 4700 4100
Wire Wire Line
	4700 4100 4700 4050
Connection ~ 4700 3800
Wire Wire Line
	4700 3800 4700 3850
Wire Wire Line
	4250 3800 4250 4200
Wire Wire Line
	4250 4100 4350 4100
Wire Wire Line
	4250 3800 4350 3800
Connection ~ 4250 3950
Connection ~ 4250 4100
Wire Wire Line
	5000 1700 5100 1700
Wire Wire Line
	5000 1400 5000 1700
Wire Wire Line
	5000 1600 5100 1600
Wire Wire Line
	3900 1500 5100 1500
Connection ~ 5000 1600
Connection ~ 5000 1500
Connection ~ 4200 1500
Wire Wire Line
	3900 1900 4500 1900
Connection ~ 4200 1900
Wire Wire Line
	3900 1800 3900 2000
Wire Wire Line
	3900 1500 3900 1600
Wire Wire Line
	4200 1600 4200 1500
Wire Wire Line
	4500 1500 4500 1600
Wire Wire Line
	4500 1900 4500 1800
Wire Wire Line
	4200 1900 4200 1800
Connection ~ 3900 1900
Connection ~ 4500 1500
Wire Wire Line
	4550 3800 5100 3800
Wire Wire Line
	4550 4100 5100 4100
Wire Wire Line
	5100 4300 5000 4300
Wire Wire Line
	5000 4300 5000 4600
Wire Wire Line
	5000 4400 5100 4400
Wire Wire Line
	5000 4500 5100 4500
Connection ~ 5000 4400
Connection ~ 5000 4500
Wire Wire Line
	3100 3200 3100 3100
Wire Wire Line
	3100 3100 3000 3100
Wire Wire Line
	3000 3000 3400 3000
Connection ~ 3300 3000
Wire Wire Line
	3900 3000 5100 3000
Connection ~ 4000 3000
Wire Wire Line
	3300 3300 3300 3400
Wire Wire Line
	3300 3100 3300 3000
Wire Wire Line
	4000 3400 4000 3300
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	5100 3250 4950 3250
Wire Wire Line
	5100 3350 4950 3350
Wire Wire Line
	4950 2200 5100 2200
Wire Wire Line
	4950 2100 5100 2100
Wire Wire Line
	4950 1900 5100 1900
Wire Wire Line
	4650 2200 4750 2200
Wire Wire Line
	4650 1900 4650 2300
Wire Wire Line
	4650 2100 4750 2100
Wire Wire Line
	4650 1900 4750 1900
Connection ~ 4650 2100
Connection ~ 4650 2200
Wire Wire Line
	7800 2500 7800 2600
Wire Wire Line
	6700 2500 7900 2500
Wire Wire Line
	6700 2400 7900 2400
Wire Wire Line
	7800 2400 7800 2300
Wire Wire Line
	7800 2900 7800 2800
Wire Wire Line
	7800 2000 7800 2100
Connection ~ 7800 2500
Connection ~ 7800 2400
Text GLabel 1500 5900 2    60   Input ~ 0
APA102_1_MOSI
Text GLabel 1500 6000 2    60   Input ~ 0
APA102_1_SCK
Text GLabel 1500 4800 2    60   Input ~ 0
APA102_0_SCK
Text GLabel 1500 4700 2    60   Input ~ 0
APA102_0_MOSI
Text GLabel 1500 3500 2    60   Input ~ 0
MIC_I2S_SCK
Text GLabel 1500 3600 2    60   Input ~ 0
MIC_I2S_WS
Text GLabel 1500 3700 2    60   Input ~ 0
MIC_I2S_SD
Wire Wire Line
	1500 3700 1400 3700
Wire Wire Line
	1400 3600 1500 3600
Wire Wire Line
	1500 3500 1400 3500
Text GLabel 1500 2300 2    60   Input ~ 0
ACC_I2C_SCL
Text GLabel 1500 2400 2    60   Input ~ 0
ACC_I2C_SDA
Text GLabel 6800 4200 2    60   Input ~ 0
APA102_1_MOSI
Text GLabel 6800 4300 2    60   Input ~ 0
APA102_1_SCK
Text GLabel 6800 4100 2    60   Input ~ 0
APA102_0_SCK
Text GLabel 6800 4000 2    60   Input ~ 0
APA102_0_MOSI
Wire Wire Line
	6800 4300 6700 4300
Wire Wire Line
	6700 4200 6800 4200
Wire Wire Line
	6800 4100 6700 4100
Wire Wire Line
	6700 4000 6800 4000
Text GLabel 6800 3700 2    60   Input ~ 0
MIC_I2S_SCK
Text GLabel 6800 3800 2    60   Input ~ 0
MIC_I2S_WS
Text GLabel 6800 3500 2    60   Input ~ 0
MIC_I2S_SD
Wire Wire Line
	6800 3700 6700 3700
Wire Wire Line
	6700 3800 6800 3800
Wire Wire Line
	6800 3500 6700 3500
Text GLabel 6800 2100 2    60   Input ~ 0
ACC_I2C_SCL
Text GLabel 6800 2200 2    60   Input ~ 0
ACC_I2C_SDA
Wire Wire Line
	6800 2100 6700 2100
Wire Wire Line
	6700 2200 6800 2200
Text GLabel 10350 1400 2    60   Input ~ 0
VUSB
Text GLabel 1500 900  2    60   Input ~ 0
V3.3
Text GLabel 1500 800  2    60   Input ~ 0
VIN
Wire Wire Line
	1500 900  1400 900 
Text GLabel 1500 700  2    60   Input ~ 0
VUSB
Text GLabel 5000 1400 1    60   Input ~ 0
V3.3
Wire Wire Line
	1400 700  1500 700 
Wire Wire Line
	1500 2300 1400 2300
Wire Wire Line
	1400 2400 1500 2400
Text GLabel 1500 2100 2    60   Input ~ 0
V3.3
Wire Wire Line
	1500 2100 1400 2100
Text GLabel 1500 3300 2    60   Input ~ 0
V3.3
Wire Wire Line
	1500 3300 1400 3300
Wire Wire Line
	1400 4800 1500 4800
Wire Wire Line
	1400 4700 1500 4700
Text GLabel 1500 4500 2    60   Input ~ 0
VIN
Wire Wire Line
	1500 4500 1400 4500
Text GLabel 1500 5700 2    60   Input ~ 0
VIN
Wire Wire Line
	1500 5700 1400 5700
$Sheet
S 550  5600 850  850 
U 579F2152
F0 "apa102_1" 60
F1 "apa102_1.sch" 60
F2 "SPI1_MOSI" I R 1400 5900 60 
F3 "SPI1_SCK" I R 1400 6000 60 
F4 "VIN" I R 1400 5700 60 
$EndSheet
Wire Wire Line
	1500 6000 1400 6000
Wire Wire Line
	1400 5900 1500 5900
Text GLabel 10350 1500 2    60   Input ~ 0
USB_D-
Text GLabel 10350 1600 2    60   Input ~ 0
USB_D+
Wire Notes Line
	8950 500  8950 2400
Wire Notes Line
	8950 2400 11200 2400
Text Notes 9700 750  0    60   ~ 0
USB Connector
$Sheet
S 550  6800 850  850 
U 57A3E76A
F0 "cp2102" 60
F1 "cp2102.sch" 60
F2 "RX" O R 1400 7100 60 
F3 "TX" I R 1400 7200 60 
F4 "USB_D+" I R 1400 7400 60 
F5 "USB_D-" I R 1400 7500 60 
F6 "V3.3" I R 1400 6900 60 
F7 "VUSB" I R 1400 7000 60 
$EndSheet
Text GLabel 1500 6900 2    60   Input ~ 0
V3.3
Wire Wire Line
	1500 6900 1400 6900
Text GLabel 1500 7100 2    60   Input ~ 0
RX
Wire Wire Line
	1500 7100 1400 7100
Text GLabel 1500 7200 2    60   Input ~ 0
TX
Wire Wire Line
	1500 7200 1400 7200
Text GLabel 1500 7400 2    60   Input ~ 0
USB_D+
Wire Wire Line
	1500 7400 1400 7400
Text GLabel 1500 7500 2    60   Input ~ 0
USB_D-
Wire Wire Line
	1500 7500 1400 7500
Wire Wire Line
	1400 800  1500 800 
$Sheet
S 550  600  850  1150
U 57B9A02C
F0 "power" 60
F1 "power.sch" 60
F2 "VIN" O R 1400 800 60 
F3 "V3.3" O R 1400 900 60 
F4 "VUSB" I R 1400 700 60 
F5 "PM_ISET" O R 1400 1100 60 
F6 "PM_EN2" I R 1400 1300 60 
F7 "PM_EN1" I R 1400 1200 60 
F8 "PM_!GOOD" O R 1400 1400 60 
F9 "PM_!CHG" O R 1400 1500 60 
F10 "PM_SWITCH" I R 1400 1600 60 
$EndSheet
Text Label 1500 1100 0    60   ~ 0
PM_ISET
Text GLabel 1500 1100 2    60   Input ~ 0
PM_ISET
Wire Wire Line
	1500 1100 1400 1100
Text GLabel 1500 1200 2    60   Input ~ 0
PM_EN1
Wire Wire Line
	1500 1200 1400 1200
Text GLabel 1500 1300 2    60   Input ~ 0
PM_EN2
Wire Wire Line
	1500 1300 1400 1300
Text GLabel 1500 1400 2    60   Input ~ 0
PM_!GOOD
Wire Wire Line
	1500 1400 1400 1400
Text GLabel 1500 1500 2    60   Input ~ 0
PM_!CHG
Wire Wire Line
	1500 1500 1400 1500
Text GLabel 1500 1600 2    60   Input ~ 0
PM_SWITCH
Wire Wire Line
	1500 1600 1400 1600
$Comp
L MICRO-B-USB P1
U 1 1 57B9ECF1
P 9850 1600
F 0 "P1" H 9850 2200 60  0000 C CNN
F 1 "MICRO-B-USB" H 9800 2100 60  0000 C CNN
F 2 "Connect:USB_Micro-B" H 9850 1600 60  0001 C CNN
F 3 "" H 9850 1600 60  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1900 10350 1800
Wire Wire Line
	10350 1800 10250 1800
Wire Wire Line
	10350 1400 10250 1400
Wire Wire Line
	10250 1500 10350 1500
Wire Wire Line
	10350 1600 10250 1600
Text GLabel 1500 7000 2    60   Input ~ 0
VUSB
Wire Wire Line
	1500 7000 1400 7000
Text GLabel 6800 1500 2    60   Input ~ 0
RX
Text GLabel 6800 1600 2    60   Input ~ 0
TX
Wire Wire Line
	6800 1600 6700 1600
Wire Wire Line
	6700 1500 6800 1500
Text GLabel 6800 3600 2    60   Input ~ 0
RESET
Wire Wire Line
	6800 3600 6700 3600
Text GLabel 6800 3300 2    60   Input ~ 0
SWO
Wire Wire Line
	6800 3300 6700 3300
$Comp
L CONN_02X05 P2
U 1 1 57C8F003
P 5650 6300
F 0 "P2" H 5650 6715 50  0000 C CNN
F 1 "CONN_02X05" H 5650 6624 50  0000 C CNN
F 2 "" H 5650 5100 50  0001 C CNN
F 3 "" H 5650 5100 50  0000 C CNN
	1    5650 6300
	1    0    0    -1  
$EndComp
Text GLabel 5300 6000 1    60   Input ~ 0
V3.3
Wire Wire Line
	5300 6000 5300 6100
Wire Wire Line
	5300 6100 5400 6100
Wire Wire Line
	5400 6500 5300 6500
Wire Wire Line
	5300 6200 5300 6600
Wire Wire Line
	5300 6200 5400 6200
Wire Wire Line
	5400 6300 5300 6300
Connection ~ 5300 6300
$Comp
L GND #PWR011
U 1 1 57C8FCD7
P 5300 6600
F 0 "#PWR011" H 5300 6350 50  0001 C CNN
F 1 "GND" H 5305 6427 50  0000 C CNN
F 2 "" H 5300 6600 50  0000 C CNN
F 3 "" H 5300 6600 50  0000 C CNN
	1    5300 6600
	1    0    0    -1  
$EndComp
Connection ~ 5300 6500
Text GLabel 6000 6100 2    60   Input ~ 0
SWDIO
Wire Wire Line
	6000 6100 5900 6100
Text GLabel 6000 6200 2    60   Input ~ 0
SWCLK
Wire Wire Line
	6000 6200 5900 6200
Text GLabel 6000 6300 2    60   Input ~ 0
SWO
Wire Wire Line
	6000 6300 5900 6300
Text GLabel 6000 6500 2    60   Input ~ 0
RESET
Wire Wire Line
	6000 6500 5900 6500
$EndSCHEMATC
