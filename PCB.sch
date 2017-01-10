EESchema Schematic File Version 2.0
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
LIBS:project-cache
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
L CONN_01X06 P3
U 1 1 584496F8
P 6250 4150
F 0 "P3" H 6250 4500 50  0000 C CNN
F 1 "DigisparkHeader" V 6350 4150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 6250 4150 50  0001 C CNN
F 3 "" H 6250 4150 50  0000 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 5844974A
P 3500 4300
F 0 "P2" H 3500 4500 50  0000 C CNN
F 1 "IgnitionRelay" V 3600 4300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3500 4300 50  0001 C CNN
F 3 "" H 3500 4300 50  0000 C CNN
	1    3500 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 584497D7
P 3550 2500
F 0 "P4" H 3550 2700 50  0000 C CNN
F 1 "SensorInput" V 3650 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3550 2500 50  0001 C CNN
F 3 "" H 3550 2500 50  0000 C CNN
	1    3550 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 5844980B
P 3150 4300
F 0 "P1" H 3150 4500 50  0000 C CNN
F 1 "StarterRelay" V 3250 4300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3150 4300 50  0001 C CNN
F 3 "" H 3150 4300 50  0000 C CNN
	1    3150 4300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5844993B
P 5200 3400
F 0 "R1" V 5280 3400 50  0000 C CNN
F 1 "R" V 5200 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5130 3400 50  0001 C CNN
F 3 "" H 5200 3400 50  0000 C CNN
	1    5200 3400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 584499A1
P 5450 3400
F 0 "R2" V 5530 3400 50  0000 C CNN
F 1 "R" V 5450 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5380 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0000 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 584499E8
P 5700 3400
F 0 "R3" V 5780 3400 50  0000 C CNN
F 1 "R" V 5700 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5630 3400 50  0001 C CNN
F 3 "" H 5700 3400 50  0000 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4500 6400 4500
Wire Wire Line
	6400 4500 6400 3250
Wire Wire Line
	6400 3250 5700 3250
Wire Wire Line
	5450 4550 6450 4550
Wire Wire Line
	6450 4550 6450 3200
Wire Wire Line
	6450 3200 5450 3200
Wire Wire Line
	5450 3200 5450 3250
Wire Wire Line
	5150 4600 6500 4600
Wire Wire Line
	6500 4600 6500 3150
Wire Wire Line
	6500 3150 5200 3150
Wire Wire Line
	5200 3150 5200 3250
Wire Wire Line
	5200 3600 5200 3550
Wire Wire Line
	5100 3600 5100 4000
Wire Wire Line
	5100 4000 6050 4000
Connection ~ 5100 3600
Wire Wire Line
	3900 4100 6050 4100
Wire Wire Line
	5450 4100 5450 3550
Connection ~ 5450 4100
Wire Wire Line
	3000 3900 6050 3900
Wire Wire Line
	5700 3550 5700 3900
Connection ~ 5700 3900
Wire Wire Line
	3300 4400 3300 5000
Wire Wire Line
	2950 4400 2950 5050
Wire Wire Line
	3300 4300 3300 4350
Wire Wire Line
	3300 4350 6050 4350
Wire Wire Line
	6050 4350 6050 4300
Wire Wire Line
	2950 4300 2950 4250
Wire Wire Line
	2950 4250 6050 4250
Wire Wire Line
	6050 4250 6050 4200
Wire Wire Line
	3300 4200 4600 4200
Wire Wire Line
	4600 4200 4600 4900
Wire Wire Line
	4600 4900 4900 4900
Wire Wire Line
	4900 4900 4900 4650
Wire Wire Line
	4800 4650 4800 4850
Wire Wire Line
	4800 4850 4650 4850
Wire Wire Line
	4650 4850 4650 4150
Wire Wire Line
	4650 4150 2950 4150
Wire Wire Line
	2950 4150 2950 4200
Wire Wire Line
	3300 5000 5450 5000
Wire Wire Line
	5450 5000 5450 4500
Wire Wire Line
	2950 5050 5500 5050
$Comp
L CONN_01X03 P0
U 1 1 5844AF75
P 5150 4850
F 0 "P0" H 5150 5050 50  0000 C CNN
F 1 "Power" V 5250 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 4850 50  0001 C CNN
F 3 "" H 5150 4850 50  0000 C CNN
	1    5150 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4650 5050 4650
Connection ~ 4900 4650
Wire Wire Line
	5500 5050 5500 4800
Wire Wire Line
	5500 4800 5450 4800
Connection ~ 5450 4800
Wire Wire Line
	5450 4800 5450 4550
Connection ~ 5450 4550
Connection ~ 5450 4600
Connection ~ 5450 4650
Wire Wire Line
	5150 4650 5150 4600
Wire Wire Line
	3000 3300 3000 3900
Wire Wire Line
	3900 3300 3900 4100
Wire Wire Line
	2200 3300 2200 2400
Wire Wire Line
	2200 2400 3350 2400
$Comp
L LM7805CT U1
U 1 1 5844C14A
P 2600 3350
F 0 "U1" H 2400 3550 50  0000 C CNN
F 1 "LM7805CT" H 2600 3550 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 2600 3450 50  0000 C CIN
F 3 "" H 2600 3350 50  0000 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
$Comp
L LM7805CT U2
U 1 1 5844C252
P 3500 3350
F 0 "U2" H 3300 3550 50  0000 C CNN
F 1 "LM7805CT" H 3500 3550 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 3500 3450 50  0000 C CIN
F 3 "" H 3500 3350 50  0000 C CNN
	1    3500 3350
	1    0    0    -1  
$EndComp
$Comp
L LM7805CT U3
U 1 1 5844C285
P 4400 3350
F 0 "U3" H 4200 3550 50  0000 C CNN
F 1 "LM7805CT" H 4400 3550 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 4400 3450 50  0000 C CIN
F 3 "" H 4400 3350 50  0000 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4600 2600 4600
Wire Wire Line
	2600 4600 2600 3600
Connection ~ 2950 4600
Wire Wire Line
	2600 3600 4400 3600
Connection ~ 3500 3600
Wire Wire Line
	3100 3300 3100 2600
Wire Wire Line
	3100 2600 3350 2600
Wire Wire Line
	4000 3300 4000 2750
Wire Wire Line
	4000 2750 3250 2750
Wire Wire Line
	3250 2750 3250 2500
Wire Wire Line
	3250 2500 3350 2500
Wire Wire Line
	4800 3600 5200 3600
Wire Wire Line
	4800 3600 4800 3300
$EndSCHEMATC
