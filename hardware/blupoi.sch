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
Sheet 1 6
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
L GND #PWR08
U 1 1 579ACA58
P 10350 1900
F 0 "#PWR08" H 10350 1650 50  0001 C CNN
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
Text GLabel 1500 2300 2    60   Input ~ 0
ACC_I2C_SCL
Text GLabel 1500 2400 2    60   Input ~ 0
ACC_I2C_SDA
Text GLabel 6800 2000 2    60   Input ~ 0
APA102_1_MOSI
Text GLabel 6800 1900 2    60   Input ~ 0
APA102_1_SCK
Text GLabel 6800 1700 2    60   Input ~ 0
APA102_0_SCK
Text GLabel 6800 1800 2    60   Input ~ 0
APA102_0_MOSI
Text GLabel 6800 2200 2    60   Input ~ 0
MIC_I2S_SCK
Text GLabel 6800 2100 2    60   Input ~ 0
MIC_I2S_WS
Text GLabel 6800 2300 2    60   Input ~ 0
MIC_I2S_SD
Text GLabel 6800 3800 2    60   Input ~ 0
ACC_I2C_SCL
Text GLabel 6800 3700 2    60   Input ~ 0
ACC_I2C_SDA
Text GLabel 10350 1400 2    60   Input ~ 0
VUSB
Text GLabel 1500 900  2    60   Input ~ 0
V3.3
Text GLabel 1500 800  2    60   Input ~ 0
VIN
Text GLabel 1500 700  2    60   Input ~ 0
VUSB
Text GLabel 5000 1400 1    60   Input ~ 0
V3.3
Text GLabel 1500 2100 2    60   Input ~ 0
V3.3
Text GLabel 1500 3300 2    60   Input ~ 0
V3.3
Text GLabel 1500 4500 2    60   Input ~ 0
VIN
Text GLabel 1500 5700 2    60   Input ~ 0
VIN
$Sheet
S 550  5600 850  850 
U 579F2152
F0 "apa102_1" 60
F1 "apa102_1.sch" 60
F2 "SPI1_MOSI" I R 1400 5900 60 
F3 "SPI1_SCK" I R 1400 6000 60 
F4 "VIN" I R 1400 5700 60 
$EndSheet
Text GLabel 10350 1500 2    60   Input ~ 0
USB_D-
Text GLabel 10350 1600 2    60   Input ~ 0
USB_D+
Text Notes 9700 750  0    60   ~ 0
USB Connector
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
Text GLabel 1500 1100 2    60   Input ~ 0
PM_ISET
Text GLabel 1500 1200 2    60   Input ~ 0
PM_EN1
Text GLabel 1500 1300 2    60   Input ~ 0
PM_EN2
Text GLabel 1500 1400 2    60   Input ~ 0
PM_!GOOD
Text GLabel 1500 1500 2    60   Input ~ 0
PM_!CHG
Text GLabel 1500 1600 2    60   Input ~ 0
PM_SWITCH
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
Text GLabel 6800 1500 2    60   Input ~ 0
RX
Text GLabel 6800 1600 2    60   Input ~ 0
TX
Text GLabel 6800 3600 2    60   Input ~ 0
RESET
Text GLabel 6800 3300 2    60   Input ~ 0
SWO
$Comp
L CONN_02X05 P2
U 1 1 57C8F003
P 5650 6300
F 0 "P2" H 5650 6715 50  0000 C CNN
F 1 "CONN_02X05" H 5650 6624 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 5650 5100 50  0001 C CNN
F 3 "" H 5650 5100 50  0000 C CNN
	1    5650 6300
	1    0    0    -1  
$EndComp
Text GLabel 5300 6000 1    60   Input ~ 0
V3.3
$Comp
L GND #PWR09
U 1 1 57C8FCD7
P 5300 6600
F 0 "#PWR09" H 5300 6350 50  0001 C CNN
F 1 "GND" H 5305 6427 50  0000 C CNN
F 2 "" H 5300 6600 50  0000 C CNN
F 3 "" H 5300 6600 50  0000 C CNN
	1    5300 6600
	1    0    0    -1  
$EndComp
Text GLabel 6000 6100 2    60   Input ~ 0
SWDIO
Text GLabel 6000 6200 2    60   Input ~ 0
SWCLK
Text GLabel 6000 6300 2    60   Input ~ 0
SWO
Text GLabel 6000 6500 2    60   Input ~ 0
RESET
Text GLabel 6800 2600 2    60   Input ~ 0
PM_ISET
Text GLabel 6800 2900 2    60   Input ~ 0
PM_EN1
Text GLabel 6800 3000 2    60   Input ~ 0
PM_EN2
Text GLabel 6800 2800 2    60   Input ~ 0
PM_!GOOD
Text GLabel 6800 2700 2    60   Input ~ 0
PM_!CHG
Text GLabel 6800 3100 2    60   Input ~ 0
PM_SWITCH
Text Label 7750 3500 0    60   ~ 0
PM_ISET
$Comp
L CONN_01X03 P3
U 1 1 57E0BFF4
P 7650 5800
F 0 "P3" H 7727 5841 50  0000 L CNN
F 1 "SERIAL" H 7727 5750 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 7650 5800 50  0001 C CNN
F 3 "" H 7650 5800 50  0000 C CNN
	1    7650 5800
	1    0    0    -1  
$EndComp
Text GLabel 7350 5900 0    60   Input ~ 0
GND
Text GLabel 7350 5800 0    60   Input ~ 0
TX
Text GLabel 7350 5700 0    60   Input ~ 0
RX
$Comp
L L_Small L1
U 1 1 58A25FA0
P 3650 3000
F 0 "L1" V 3835 3000 50  0000 C CNN
F 1 "3.9nH" V 3744 3000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H -200 550 50  0001 C CNN
F 3 "" H -200 550 50  0001 C CNN
	1    3650 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5800 7350 5800
Wire Wire Line
	7350 5700 7450 5700
Wire Wire Line
	7350 5900 7450 5900
Wire Wire Line
	6700 2600 6800 2600
Wire Wire Line
	6800 2700 6700 2700
Wire Wire Line
	6700 2800 6800 2800
Wire Wire Line
	6800 2900 6700 2900
Wire Wire Line
	6700 3000 6800 3000
Wire Wire Line
	6800 3100 6700 3100
Wire Wire Line
	6000 6500 5900 6500
Wire Wire Line
	6000 6300 5900 6300
Wire Wire Line
	6000 6200 5900 6200
Wire Wire Line
	6000 6100 5900 6100
Connection ~ 5300 6500
Connection ~ 5300 6300
Wire Wire Line
	5400 6300 5300 6300
Wire Wire Line
	5300 6200 5400 6200
Wire Wire Line
	5300 6200 5300 6600
Wire Wire Line
	5400 6500 5300 6500
Wire Wire Line
	5300 6100 5400 6100
Wire Wire Line
	5300 6000 5300 6100
Wire Wire Line
	6800 3300 6700 3300
Wire Wire Line
	6800 3600 6700 3600
Wire Wire Line
	6700 1500 6800 1500
Wire Wire Line
	6800 1600 6700 1600
Wire Wire Line
	10350 1600 10250 1600
Wire Wire Line
	10250 1500 10350 1500
Wire Wire Line
	10350 1400 10250 1400
Wire Wire Line
	10350 1800 10250 1800
Wire Wire Line
	10350 1900 10350 1800
Wire Wire Line
	1500 1600 1400 1600
Wire Wire Line
	1500 1500 1400 1500
Wire Wire Line
	1500 1400 1400 1400
Wire Wire Line
	1500 1300 1400 1300
Wire Wire Line
	1500 1200 1400 1200
Wire Wire Line
	1500 1100 1400 1100
Wire Wire Line
	1400 800  1500 800 
Wire Notes Line
	8950 2400 11200 2400
Wire Notes Line
	8950 500  8950 2400
Wire Wire Line
	1400 5900 1500 5900
Wire Wire Line
	1500 6000 1400 6000
Wire Wire Line
	1500 5700 1400 5700
Wire Wire Line
	1500 4500 1400 4500
Wire Wire Line
	1400 4700 1500 4700
Wire Wire Line
	1400 4800 1500 4800
Wire Wire Line
	1500 3300 1400 3300
Wire Wire Line
	1500 2100 1400 2100
Wire Wire Line
	1400 2400 1500 2400
Wire Wire Line
	1500 2300 1400 2300
Wire Wire Line
	1400 700  1500 700 
Wire Wire Line
	1500 900  1400 900 
Wire Wire Line
	6700 2200 6800 2200
Wire Wire Line
	6800 2100 6700 2100
Wire Wire Line
	6800 3500 6700 3500
Wire Wire Line
	6700 3800 6800 3800
Wire Wire Line
	6800 3700 6700 3700
Wire Wire Line
	6700 1700 6800 1700
Wire Wire Line
	6800 1800 6700 1800
Wire Wire Line
	6700 1900 6800 1900
Wire Wire Line
	6800 2000 6700 2000
Wire Wire Line
	1500 3500 1400 3500
Wire Wire Line
	1400 3600 1500 3600
Wire Wire Line
	1500 3700 1400 3700
Connection ~ 4650 2200
Connection ~ 4650 2100
Wire Wire Line
	4650 1900 4750 1900
Wire Wire Line
	4650 2100 4750 2100
Wire Wire Line
	4650 1900 4650 2300
Wire Wire Line
	4650 2200 4750 2200
Wire Wire Line
	4950 1900 5100 1900
Wire Wire Line
	4950 2100 5100 2100
Wire Wire Line
	4950 2200 5100 2200
Wire Wire Line
	5100 3350 4950 3350
Wire Wire Line
	5100 3250 4950 3250
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	4000 3400 4000 3300
Wire Wire Line
	3300 3100 3300 3000
Wire Wire Line
	3300 3300 3300 3400
Connection ~ 4000 3000
Wire Wire Line
	3750 3000 5100 3000
Connection ~ 3300 3000
Wire Wire Line
	3000 3000 3550 3000
Wire Wire Line
	3100 3100 3000 3100
Wire Wire Line
	3100 3200 3100 3100
Connection ~ 5000 4500
Connection ~ 5000 4400
Wire Wire Line
	5000 4500 5100 4500
Wire Wire Line
	5000 4400 5100 4400
Wire Wire Line
	5000 4300 5000 4600
Wire Wire Line
	5100 4300 5000 4300
Wire Wire Line
	4550 4100 5100 4100
Wire Wire Line
	4550 3800 5100 3800
Connection ~ 4500 1500
Connection ~ 3900 1900
Wire Wire Line
	4200 1900 4200 1800
Wire Wire Line
	4500 1900 4500 1800
Wire Wire Line
	4500 1500 4500 1600
Wire Wire Line
	4200 1600 4200 1500
Wire Wire Line
	3900 1500 3900 1600
Wire Wire Line
	3900 1800 3900 2000
Connection ~ 4200 1900
Wire Wire Line
	3900 1900 4500 1900
Connection ~ 4200 1500
Connection ~ 5000 1500
Connection ~ 5000 1600
Wire Wire Line
	3900 1500 5100 1500
Wire Wire Line
	5000 1600 5100 1600
Wire Wire Line
	5000 1400 5000 1700
Wire Wire Line
	5000 1700 5100 1700
Connection ~ 4250 4100
Connection ~ 4250 3950
Wire Wire Line
	4250 3800 4350 3800
Wire Wire Line
	4250 4100 4350 4100
Wire Wire Line
	4250 3800 4250 4200
Wire Wire Line
	4700 3800 4700 3850
Connection ~ 4700 3800
Wire Wire Line
	4700 4100 4700 4050
Connection ~ 4700 4100
Wire Wire Line
	4250 3950 4600 3950
$Comp
L SW_SPST SW_MODE1
U 1 1 58AA012E
P 7900 2500
F 0 "SW_MODE1" H 7900 2550 50  0000 C CNN
F 1 "SW_SPST" H 7900 2450 50  0000 C CNN
F 2 "kss241glfs:KSS241GLFS" H 450 0   50  0001 C CNN
F 3 "" H 450 0   50  0001 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2500 7700 2500
$Comp
L R_Small R12
U 1 1 58AA0946
P 7550 2700
F 0 "R12" H 7609 2746 50  0000 L CNN
F 1 "10k" H 7609 2655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H -250 150 50  0001 C CNN
F 3 "" H -250 150 50  0001 C CNN
	1    7550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2500 7550 2600
Connection ~ 7550 2500
$Comp
L GND #PWR010
U 1 1 58AA0D95
P 7550 2900
F 0 "#PWR010" H 7600 2950 50  0001 C CNN
F 1 "GND" H 7555 2727 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    7550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2900 7550 2800
Text GLabel 8200 2400 1    60   Input ~ 0
V3.3
Wire Wire Line
	8200 2400 8200 2500
Wire Wire Line
	8200 2500 8100 2500
Wire Wire Line
	6800 2300 6700 2300
$EndSCHEMATC
