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
P 5900 3500
F 0 "U1" H 5550 4300 60  0000 C CNN
F 1 "NRF905_module" H 5850 2600 60  0000 C CNN
F 2 "modex:NRF905_module" H 5750 3350 60  0001 C CNN
F 3 "" H 5750 3350 60  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B4A0C8C
P 7300 3400
F 0 "C1" H 7325 3500 50  0000 L CNN
F 1 "C" H 7325 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7338 3250 50  0001 C CNN
F 3 "" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2850 7300 2850
Wire Wire Line
	7300 2850 7300 3250
$Comp
L Arduino_mini_mega_328_5V_16MHz U?
U 1 1 5B4A18E5
P 4450 3400
F 0 "U?" H 4450 3400 60  0000 C CNN
F 1 "Arduino_mini_mega_328_5V_16MHz" H 4850 2400 60  0000 C CNN
F 2 "" H 4450 3400 60  0001 C CNN
F 3 "" H 4450 3400 60  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
