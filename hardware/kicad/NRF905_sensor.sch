EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:modex
LIBS:arduino
LIBS:NRF905_sensor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L NRF905_module U1
U 1 1 5B4A0AB9
P 8550 2600
F 0 "U1" H 8200 3400 60  0000 C CNN
F 1 "NRF905_module" H 8500 1700 60  0000 C CNN
F 2 "modex:NRF905_module" H 8400 2450 60  0001 C CNN
F 3 "" H 8400 2450 60  0001 C CNN
	1    8550 2600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B4A0C8C
P 9950 2500
F 0 "C1" H 9975 2600 50  0000 L CNN
F 1 "C" H 9975 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9988 2350 50  0001 C CNN
F 3 "" H 9950 2500 50  0001 C CNN
	1    9950 2500
	1    0    0    -1  
$EndComp
$Comp
L Arduino_mini_mega_328_3V3_8MHz U?
U 1 1 5B4A5120
P 6100 2400
F 0 "U?" H 5750 3100 60  0000 C CNN
F 1 "Arduino_mini_mega_328_3V3_8MHz" H 6500 650 60  0000 C CNN
F 2 "" H 6100 2150 60  0001 C CNN
F 3 "" H 6100 2150 60  0001 C CNN
	1    6100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1950 6700 1950
Wire Wire Line
	4850 3650 5500 3650
Wire Wire Line
	4850 3650 4850 5000
Wire Wire Line
	4850 5000 7500 5000
Wire Wire Line
	7500 5000 7500 2450
Wire Wire Line
	7500 2450 7950 2450
Wire Wire Line
	7950 2550 7600 2550
Wire Wire Line
	7600 2550 7600 5050
Wire Wire Line
	7600 5050 4800 5050
Wire Wire Line
	4800 5050 4800 3450
Wire Wire Line
	4800 3450 5500 3450
Wire Wire Line
	9150 1950 9400 1950
Wire Wire Line
	9400 1950 9400 5100
Wire Wire Line
	9400 5100 4750 5100
Wire Wire Line
	4750 5100 4750 3550
Wire Wire Line
	4750 3550 5500 3550
Wire Wire Line
	7950 2750 7700 2750
Wire Wire Line
	7700 2750 7700 5150
Wire Wire Line
	7700 5150 4700 5150
Wire Wire Line
	4700 5150 4700 2950
Wire Wire Line
	4700 2950 5500 2950
Wire Wire Line
	7950 2950 7800 2950
Wire Wire Line
	7800 2950 7800 5200
Wire Wire Line
	7800 5200 4650 5200
Wire Wire Line
	4650 5200 4650 3050
Wire Wire Line
	4650 3050 5500 3050
Wire Wire Line
	7950 3350 7950 5250
Wire Wire Line
	7950 5250 4900 5250
Wire Wire Line
	4900 5250 4900 3750
Wire Wire Line
	4900 3750 5500 3750
Wire Wire Line
	7950 3050 7850 3050
Wire Wire Line
	7850 3050 7850 5300
Wire Wire Line
	7850 5300 4950 5300
Wire Wire Line
	4950 5300 4950 3950
Wire Wire Line
	4950 3950 5500 3950
Wire Wire Line
	7950 3150 7900 3150
Wire Wire Line
	7900 3150 7900 5350
Wire Wire Line
	7900 5350 5000 5350
Wire Wire Line
	5000 5350 5000 3850
Wire Wire Line
	5000 3850 5500 3850
Wire Wire Line
	7950 3250 7750 3250
Wire Wire Line
	7750 3250 7750 5400
Wire Wire Line
	7750 5400 5100 5400
Wire Wire Line
	5100 5400 5100 4050
Wire Wire Line
	5100 4050 5500 4050
Wire Wire Line
	6700 2050 6800 2050
Wire Wire Line
	6800 2050 6800 1950
Connection ~ 6800 1950
$Comp
L GND #PWR?
U 1 1 5B4A5380
P 6800 2250
F 0 "#PWR?" H 6800 2000 50  0001 C CNN
F 1 "GND" H 6800 2100 50  0000 C CNN
F 2 "" H 6800 2250 50  0001 C CNN
F 3 "" H 6800 2250 50  0001 C CNN
	1    6800 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B4A539A
P 7650 2250
F 0 "#PWR?" H 7650 2000 50  0001 C CNN
F 1 "GND" H 7650 2100 50  0000 C CNN
F 2 "" H 7650 2250 50  0001 C CNN
F 3 "" H 7650 2250 50  0001 C CNN
	1    7650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2250 6800 2150
Wire Wire Line
	6800 2150 6700 2150
Wire Wire Line
	7650 2250 7650 2150
Wire Wire Line
	7650 2150 7950 2150
Wire Wire Line
	7950 2250 7850 2250
Wire Wire Line
	7850 2250 7850 2150
Connection ~ 7850 2150
$Comp
L D D?
U 1 1 5B4A54F7
P 2850 1650
F 0 "D?" H 2850 1750 50  0000 C CNN
F 1 "D" H 2850 1550 50  0000 C CNN
F 2 "" H 2850 1650 50  0001 C CNN
F 3 "" H 2850 1650 50  0001 C CNN
	1    2850 1650
	-1   0    0    1   
$EndComp
$Comp
L D D?
U 1 1 5B4A55CA
P 2850 2050
F 0 "D?" H 2850 2150 50  0000 C CNN
F 1 "D" H 2850 1950 50  0000 C CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
	1    2850 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 1650 6800 1650
Wire Wire Line
	3300 1650 3300 2050
Wire Wire Line
	3300 2050 3000 2050
Wire Wire Line
	6800 1650 6800 1850
Wire Wire Line
	6800 1850 6700 1850
Connection ~ 3300 1650
Wire Wire Line
	2700 1650 2100 1650
Wire Wire Line
	2700 2050 2100 2050
$Comp
L BS170 Q?
U 1 1 5B4A575F
P 2900 3550
F 0 "Q?" H 3100 3625 50  0000 L CNN
F 1 "BS170" H 3100 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 3100 3475 50  0001 L CIN
F 3 "" H 2900 3550 50  0001 L CNN
	1    2900 3550
	1    0    0    -1  
$EndComp
$Comp
L BS170 Q?
U 1 1 5B4A5820
P 3800 3550
F 0 "Q?" H 4000 3625 50  0000 L CNN
F 1 "BS170" H 4000 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 4000 3475 50  0001 L CIN
F 3 "" H 3800 3550 50  0001 L CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3750 3000 4050
Wire Wire Line
	2550 4050 3900 4050
Wire Wire Line
	3900 4050 3900 3750
$Comp
L GND #PWR?
U 1 1 5B4A58D5
P 3450 4200
F 0 "#PWR?" H 3450 3950 50  0001 C CNN
F 1 "GND" H 3450 4050 50  0000 C CNN
F 2 "" H 3450 4200 50  0001 C CNN
F 3 "" H 3450 4200 50  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3900 3450 4200
Connection ~ 3450 4050
$Comp
L R R?
U 1 1 5B4A5943
P 3900 2850
F 0 "R?" V 3980 2850 50  0000 C CNN
F 1 "R" V 3900 2850 50  0000 C CNN
F 2 "" V 3830 2850 50  0001 C CNN
F 3 "" H 3900 2850 50  0001 C CNN
	1    3900 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4A59E4
P 3000 2850
F 0 "R?" V 3080 2850 50  0000 C CNN
F 1 "R" V 3000 2850 50  0000 C CNN
F 2 "" V 2930 2850 50  0001 C CNN
F 3 "" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 3000 3350
Wire Wire Line
	3900 3350 3900 3000
Wire Wire Line
	3000 2700 3000 2450
Wire Wire Line
	3000 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2700
$Comp
L VCC #PWR?
U 1 1 5B4A5B50
P 7400 1800
F 0 "#PWR?" H 7400 1650 50  0001 C CNN
F 1 "VCC" H 7400 1950 50  0000 C CNN
F 2 "" H 7400 1800 50  0001 C CNN
F 3 "" H 7400 1800 50  0001 C CNN
	1    7400 1800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B4A5B76
P 3450 2300
F 0 "#PWR?" H 3450 2150 50  0001 C CNN
F 1 "VCC" H 3450 2450 50  0000 C CNN
F 2 "" H 3450 2300 50  0001 C CNN
F 3 "" H 3450 2300 50  0001 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2300 3450 2450
Connection ~ 3450 2450
Wire Wire Line
	7400 1800 7400 1950
Connection ~ 7400 1950
$Comp
L R R?
U 1 1 5B4A5C48
P 3450 3750
F 0 "R?" V 3530 3750 50  0000 C CNN
F 1 "R" V 3450 3750 50  0000 C CNN
F 2 "" V 3380 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4A5D8D
P 2550 3750
F 0 "R?" V 2630 3750 50  0000 C CNN
F 1 "R" V 2550 3750 50  0000 C CNN
F 2 "" V 2480 3750 50  0001 C CNN
F 3 "" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4A5E42
P 2550 2850
F 0 "R?" V 2630 2850 50  0000 C CNN
F 1 "R" V 2550 2850 50  0000 C CNN
F 2 "" V 2480 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B4A5EFB
P 3450 2850
F 0 "R?" V 3530 2850 50  0000 C CNN
F 1 "R" V 3450 2850 50  0000 C CNN
F 2 "" V 3380 2850 50  0001 C CNN
F 3 "" H 3450 2850 50  0001 C CNN
	1    3450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3900 2550 4050
Connection ~ 3000 4050
Wire Wire Line
	3450 3000 3450 3600
Wire Wire Line
	3600 3550 3450 3550
Connection ~ 3450 3550
Wire Wire Line
	2550 3000 2550 3600
Wire Wire Line
	2700 3550 2550 3550
Connection ~ 2550 3550
Wire Wire Line
	2550 2700 2550 2050
Connection ~ 2550 2050
Wire Wire Line
	2600 1650 2600 2600
Wire Wire Line
	2600 2600 3450 2600
Wire Wire Line
	3450 2600 3450 2700
Connection ~ 2600 1650
Wire Wire Line
	3900 3150 5500 3150
Connection ~ 3900 3150
Wire Wire Line
	5500 3250 3000 3250
Connection ~ 3000 3250
$EndSCHEMATC
