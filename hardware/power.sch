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
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L INDUCTOR_SMALL L2
U 1 1 57952421
P 4950 1650
F 0 "L2" H 4950 1865 50  0000 C CNN
F 1 "1.5uH" H 4950 1774 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0000 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
$Comp
L TPS63001 U?
U 1 1 5794CA0E
P 4950 2000
AR Path="/5794CA0E" Ref="U?"  Part="1" 
AR Path="/5794AAD0/5794CA0E" Ref="U2"  Part="1" 
AR Path="/57B9A02C/5794CA0E" Ref="U2"  Part="1" 
F 0 "U2" H 4950 2150 60  0000 C CNN
F 1 "TPS63031DSKR" H 4950 2050 60  0000 C CNN
F 2 "tinkerforge-libraries:VSON-10" H 4950 2000 60  0001 C CNN
F 3 "" H 4950 2000 60  0000 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5794CAF3
P 4200 2650
F 0 "#PWR017" H 4200 2400 50  0001 C CNN
F 1 "GND" H 4205 2477 50  0000 C CNN
F 2 "" H 4200 2650 50  0000 C CNN
F 3 "" H 4200 2650 50  0000 C CNN
	1    4200 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5794CB19
P 5750 2650
F 0 "#PWR018" H 5750 2400 50  0001 C CNN
F 1 "GND" H 5755 2477 50  0000 C CNN
F 2 "" H 5750 2650 50  0000 C CNN
F 3 "" H 5750 2650 50  0000 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 5794CF8F
P 5900 2350
F 0 "C11" H 5900 2400 50  0000 L CNN
F 1 "10uF" H 5900 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5900 2350 50  0001 C CNN
F 3 "" H 5900 2350 50  0000 C CNN
	1    5900 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5794D00A
P 6200 2350
F 0 "C12" H 6200 2400 50  0000 L CNN
F 1 "10uF" H 6200 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6200 2350 50  0001 C CNN
F 3 "" H 6200 2350 50  0000 C CNN
	1    6200 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5794D124
P 5900 2550
F 0 "#PWR019" H 5900 2300 50  0001 C CNN
F 1 "GND" H 5905 2377 50  0000 C CNN
F 2 "" H 5900 2550 50  0000 C CNN
F 3 "" H 5900 2550 50  0000 C CNN
	1    5900 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5794D140
P 6200 2550
F 0 "#PWR020" H 6200 2300 50  0001 C CNN
F 1 "GND" H 6205 2377 50  0000 C CNN
F 2 "" H 6200 2550 50  0000 C CNN
F 3 "" H 6200 2550 50  0000 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5794D284
P 4000 2250
F 0 "R1" V 3950 2250 50  0000 C CNN
F 1 "100" V 4050 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4000 2250 50  0001 C CNN
F 3 "" H 4000 2250 50  0000 C CNN
	1    4000 2250
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 5794D359
P 3650 2350
F 0 "C6" H 3650 2400 50  0000 L CNN
F 1 "10uF" H 3650 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3650 2350 50  0001 C CNN
F 3 "" H 3650 2350 50  0000 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5794D3C8
P 3650 2550
F 0 "#PWR021" H 3650 2300 50  0001 C CNN
F 1 "GND" H 3655 2377 50  0000 C CNN
F 2 "" H 3650 2550 50  0000 C CNN
F 3 "" H 3650 2550 50  0000 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
$Comp
L Battery-RESCUE-blupoi BT1
U 1 1 579AD18C
P 1850 2150
AR Path="/579AD18C" Ref="BT1"  Part="1" 
AR Path="/57B9A02C/579AD18C" Ref="BT1"  Part="1" 
F 0 "BT1" V 1595 2150 50  0000 C CNN
F 1 "Battery" V 1686 2150 50  0000 C CNN
F 2 "16650_holder:16650_in_pcb_socket" V 1850 2190 50  0001 C CNN
F 3 "" V 1850 2190 50  0000 C CNN
	1    1850 2150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR022
U 1 1 579AD335
P 1600 2250
F 0 "#PWR022" H 1600 2000 50  0001 C CNN
F 1 "GND" H 1605 2077 50  0000 C CNN
F 2 "" H 1600 2250 50  0000 C CNN
F 3 "" H 1600 2250 50  0000 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
Text Notes 1600 750  0    60   ~ 0
LiPo battery
Text Notes 4450 750  0    60   ~ 0
3.3V Volate regulator\n
Text GLabel 2100 2050 1    60   BiDi ~ 0
VBAT
Text HLabel 3650 2050 1    60   Output ~ 0
VIN
Text HLabel 6200 2050 1    60   Output ~ 0
V3.3
$Comp
L BQ24075 U5
U 1 1 57B89252
P 4150 4950
F 0 "U5" H 4150 5737 60  0000 C CNN
F 1 "BQ24075RGTT" H 4150 5631 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 4150 4950 60  0001 C CNN
F 3 "" H 4150 4950 60  0001 C CNN
	1    4150 4950
	1    0    0    -1  
$EndComp
Text HLabel 3100 4300 0    60   Input ~ 0
VUSB
$Comp
L GND #PWR023
U 1 1 57B8A1CB
P 3250 5550
F 0 "#PWR023" H 3250 5300 50  0001 C CNN
F 1 "GND" H 3255 5377 50  0000 C CNN
F 2 "" H 3250 5550 50  0000 C CNN
F 3 "" H 3250 5550 50  0000 C CNN
	1    3250 5550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 57B8A255
P 3000 5300
F 0 "C18" H 3000 5350 50  0000 L CNN
F 1 "47uF" H 3000 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3000 5300 50  0001 C CNN
F 3 "" H 3000 5300 50  0000 C CNN
	1    3000 5300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 57B8A73D
P 2450 5250
F 0 "R10" V 2500 5350 50  0000 L CNN
F 1 "10k" V 2500 5050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2450 5250 50  0001 C CNN
F 3 "" H 2450 5250 50  0000 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 57B8ABC7
P 2300 5250
F 0 "R9" V 2350 5350 50  0000 L CNN
F 1 "590" V 2350 5050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2300 5250 50  0001 C CNN
F 3 "" H 2300 5250 50  0000 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 57B8ADDE
P 2150 5250
F 0 "R8" V 2200 5350 50  0000 L CNN
F 1 "1.1k" V 2200 5050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2150 5250 50  0001 C CNN
F 3 "" H 2150 5250 50  0000 C CNN
	1    2150 5250
	1    0    0    -1  
$EndComp
Text HLabel 2000 4850 0    60   Output ~ 0
PM_ISET
Text HLabel 6250 4750 2    60   Input ~ 0
PM_EN2
Text HLabel 6250 4850 2    60   Input ~ 0
PM_EN1
Text HLabel 5050 5050 2    60   Output ~ 0
PM_!GOOD
Text HLabel 5050 5150 2    60   Output ~ 0
PM_!CHG
$Comp
L GND #PWR024
U 1 1 57B8B68E
P 5250 5550
F 0 "#PWR024" H 5250 5300 50  0001 C CNN
F 1 "GND" H 5255 5377 50  0000 C CNN
F 2 "" H 5250 5550 50  0000 C CNN
F 3 "" H 5250 5550 50  0000 C CNN
	1    5250 5550
	1    0    0    -1  
$EndComp
Text HLabel 5650 4050 2    60   Output ~ 0
VIN
$Comp
L MAX16054 U6
U 1 1 57B90098
P 4350 6650
F 0 "U6" H 4350 7137 60  0000 C CNN
F 1 "MAX16054AZT+T" H 4350 7031 60  0000 C CNN
F 2 "tinkerforge-libraries:SOT23-6" H 4350 6650 60  0001 C CNN
F 3 "" H 4350 6650 60  0001 C CNN
	1    4350 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 57B90631
P 5050 6950
F 0 "#PWR025" H 5050 6700 50  0001 C CNN
F 1 "GND" H 5055 6777 50  0000 C CNN
F 2 "" H 5050 6950 50  0000 C CNN
F 3 "" H 5050 6950 50  0000 C CNN
	1    5050 6950
	1    0    0    -1  
$EndComp
Text HLabel 3550 6450 0    60   Input ~ 0
PM_SWITCH
$Comp
L SW_PUSH_SMALL_H SW1
U 1 1 57B90C56
P 3400 6600
F 0 "SW1" H 3400 6550 50  0000 C CNN
F 1 "PM_BTN" H 3400 6500 50  0000 C CNN
F 2 "footprints:switch_spst_smd_5.5mm_4.5mm" H 3400 6800 50  0001 C CNN
F 3 "" H 3400 6800 50  0000 C CNN
	1    3400 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 57B911A1
P 3150 6700
F 0 "#PWR026" H 3150 6450 50  0001 C CNN
F 1 "GND" H 3155 6527 50  0000 C CNN
F 2 "" H 3150 6700 50  0000 C CNN
F 3 "" H 3150 6700 50  0000 C CNN
	1    3150 6700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C25
U 1 1 57B917BB
P 3050 4450
F 0 "C25" V 3100 4300 50  0000 L CNN
F 1 "1uF" V 3100 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3050 4450 50  0001 C CNN
F 3 "" H 3050 4450 50  0000 C CNN
	1    3050 4450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR027
U 1 1 57B91E3C
P 2850 4450
F 0 "#PWR027" H 2850 4200 50  0001 C CNN
F 1 "GND" V 2855 4322 50  0000 R CNN
F 2 "" H 2850 4450 50  0000 C CNN
F 3 "" H 2850 4450 50  0000 C CNN
	1    2850 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 1650 5750 2050
Wire Wire Line
	5750 2050 5650 2050
Wire Wire Line
	4200 1650 4200 2050
Wire Wire Line
	4200 2050 4300 2050
Wire Wire Line
	4200 2650 4200 2550
Wire Wire Line
	4200 2550 4300 2550
Wire Wire Line
	5750 2350 5750 2650
Wire Wire Line
	5750 2550 5650 2550
Wire Wire Line
	5650 2350 5750 2350
Connection ~ 5750 2550
Wire Wire Line
	4200 2450 4300 2450
Wire Wire Line
	4200 2250 4200 2450
Wire Wire Line
	4200 2350 4300 2350
Wire Wire Line
	4100 2250 4300 2250
Connection ~ 4200 2350
Wire Wire Line
	5650 2250 5750 2250
Wire Wire Line
	5750 2250 5750 2150
Connection ~ 5750 2150
Wire Wire Line
	5650 2150 6200 2150
Connection ~ 5900 2150
Wire Wire Line
	6200 2550 6200 2450
Wire Wire Line
	5900 2450 5900 2550
Wire Wire Line
	5900 2150 5900 2250
Wire Wire Line
	6200 2050 6200 2250
Connection ~ 6200 2150
Connection ~ 4200 2250
Wire Wire Line
	3900 2250 3800 2250
Wire Wire Line
	3800 2250 3800 2150
Connection ~ 3800 2150
Wire Wire Line
	3650 2050 3650 2250
Connection ~ 3650 2150
Wire Wire Line
	3650 2550 3650 2450
Wire Wire Line
	3650 2150 4300 2150
Wire Wire Line
	4700 1650 4200 1650
Wire Wire Line
	5200 1650 5750 1650
Wire Wire Line
	2100 2050 2100 2150
Wire Wire Line
	1600 2250 1600 2150
Wire Wire Line
	1600 2150 1700 2150
Wire Wire Line
	2100 2150 2000 2150
Wire Wire Line
	2150 5450 3350 5450
Wire Wire Line
	3250 5350 3250 5550
Wire Wire Line
	3250 5350 3350 5350
Wire Wire Line
	3350 5250 3250 5250
Wire Wire Line
	3250 5250 3250 5150
Wire Wire Line
	2900 5150 3350 5150
Connection ~ 3250 5450
Connection ~ 3250 5150
Wire Wire Line
	3000 5150 3000 5200
Wire Wire Line
	3000 5400 3000 5450
Connection ~ 3000 5150
Wire Wire Line
	2450 5050 3350 5050
Connection ~ 3000 5450
Wire Wire Line
	2450 5450 2450 5350
Wire Wire Line
	2450 5150 2450 5050
Wire Wire Line
	2300 5350 2300 5450
Connection ~ 2450 5450
Wire Wire Line
	2300 5150 2300 4850
Wire Wire Line
	2000 4850 3350 4850
Wire Wire Line
	2150 5350 2150 5450
Connection ~ 2300 5450
Wire Wire Line
	3350 4650 2150 4650
Wire Wire Line
	2150 4650 2150 5150
Wire Wire Line
	3150 4450 3350 4450
Wire Wire Line
	5050 4550 4950 4550
Connection ~ 2300 4850
Wire Wire Line
	4950 4750 6250 4750
Wire Wire Line
	5050 5050 4950 5050
Wire Wire Line
	4950 5150 5050 5150
Wire Wire Line
	5250 5350 5250 5550
Connection ~ 5050 4450
Wire Wire Line
	5050 6950 5050 6850
Wire Wire Line
	5050 6850 4950 6850
Wire Wire Line
	3750 6850 3650 6850
Wire Wire Line
	3550 6450 3750 6450
Wire Wire Line
	3650 6450 3650 6600
Wire Wire Line
	3650 6600 3550 6600
Connection ~ 3650 6450
Wire Wire Line
	3150 6700 3150 6600
Wire Wire Line
	3150 6600 3250 6600
Wire Wire Line
	4950 5450 5050 5450
Wire Wire Line
	5050 5450 5050 6550
Wire Wire Line
	5050 6550 4950 6550
Wire Wire Line
	3250 4450 3250 4300
Wire Wire Line
	3250 4300 3100 4300
Connection ~ 3250 4450
Wire Wire Line
	2850 4450 2950 4450
$Comp
L C_Small C26
U 1 1 57B92BA6
P 5250 4250
F 0 "C26" H 5250 4300 50  0000 L CNN
F 1 "100nF" H 5250 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5250 4250 50  0001 C CNN
F 3 "" H 5250 4250 50  0000 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4450 4950 4450
$Comp
L C_Small C27
U 1 1 57B92F04
P 5550 4250
F 0 "C27" H 5550 4300 50  0000 L CNN
F 1 "4.7uF" H 5550 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5550 4250 50  0001 C CNN
F 3 "" H 5550 4250 50  0000 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4150 5250 4050
Wire Wire Line
	5050 4050 5650 4050
Wire Wire Line
	5250 4450 5250 4350
Wire Wire Line
	5550 4450 5550 4350
Wire Wire Line
	5550 4050 5550 4150
Connection ~ 5250 4050
Connection ~ 5550 4050
Wire Notes Line
	6850 500  6850 7750
Wire Notes Line
	6850 3600 500  3600
Wire Notes Line
	3100 3600 3100 500 
Wire Notes Line
	6850 5850 500  5850
Text Notes 3350 6000 0    60   ~ 0
Power button controller
Text Notes 3200 3750 0    60   ~ 0
Battery charger & Power manager
$Comp
L R_Small R11
U 1 1 57B95341
P 6050 4550
F 0 "R11" H 6050 4650 50  0000 L CNN
F 1 "10k" H 6050 4450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6050 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0000 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4650 6050 4750
Wire Wire Line
	4950 4850 6250 4850
Wire Wire Line
	5250 5350 4950 5350
NoConn ~ 4950 4750
Connection ~ 6050 4750
Text HLabel 6050 4350 1    60   Input ~ 0
VUSB
Wire Wire Line
	6050 4450 6050 4350
Text GLabel 2900 5150 0    60   BiDi ~ 0
VBAT
Text Notes 6200 4550 0    39   ~ 0
Charge mode\nEN1=0, EN2=1\n-> High current
Wire Wire Line
	5050 4050 5050 4550
$Comp
L GND #PWR028
U 1 1 57BA2103
P 5400 4550
F 0 "#PWR028" H 5400 4300 50  0001 C CNN
F 1 "GND" H 5400 4400 50  0000 C CNN
F 2 "" H 5400 4550 50  0000 C CNN
F 3 "" H 5400 4550 50  0000 C CNN
	1    5400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4450 5550 4450
Connection ~ 5400 4450
Wire Wire Line
	5400 4550 5400 4450
Text GLabel 3650 6850 0    60   Input ~ 0
VBAT
$Comp
L R_Small R?
U 1 1 5897F73B
P 6050 5050
F 0 "R?" H 6100 5150 50  0000 L CNN
F 1 "10k" H 6100 4950 50  0000 L CNN
F 2 "" H -100 100 50  0001 C CNN
F 3 "" H -100 100 50  0001 C CNN
	1    6050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4950 6050 4850
Connection ~ 6050 4850
$Comp
L GND #PWR?
U 1 1 5897F92D
P 6050 5300
F 0 "#PWR?" H 6100 5350 50  0001 C CNN
F 1 "GND" H 6055 5127 50  0000 C CNN
F 2 "" H -50 0   50  0001 C CNN
F 3 "" H -50 0   50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5300 6050 5150
$EndSCHEMATC
