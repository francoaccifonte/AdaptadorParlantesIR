EESchema Schematic File Version 2
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
LIBS:actel
LIBS:modules
LIBS:relays
LIBS:w_connectors
LIBS:parlantes-cache
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
L TSDP341xx U1
U 1 1 5A37EA8E
P 4700 6100
F 0 "U1" H 4300 6400 50  0000 L CNN
F 1 "TSDP341xx" H 4300 5800 50  0000 L CNN
F 2 "modificados:TO-126_Horizontal" H 4650 5725 50  0001 C CNN
F 3 "" H 5350 6400 50  0000 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A37ECAB
P 5700 5800
F 0 "R2" V 5780 5800 50  0000 C CNN
F 1 "100" V 5700 5800 50  0000 C CNN
F 2 "modificados:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 5630 5800 50  0001 C CNN
F 3 "" H 5700 5800 50  0001 C CNN
	1    5700 5800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A37ED07
P 6150 5950
F 0 "R3" V 6230 5950 50  0000 C CNN
F 1 "10k" V 6150 5950 50  0000 C CNN
F 2 "modificados:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 6080 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A37F1D1
P 5350 6450
F 0 "C1" H 5375 6550 50  0000 L CNN
F 1 "C" H 5375 6350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5388 6300 50  0001 C CNN
F 3 "" H 5350 6450 50  0001 C CNN
	1    5350 6450
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5A37F1FE
P 5650 6450
F 0 "C2" H 5675 6550 50  0000 L CNN
F 1 "CP" H 5675 6350 50  0000 L CNN
F 2 "modificados:CP_Radial_D6.3mm_P2.50mm" H 5688 6300 50  0001 C CNN
F 3 "" H 5650 6450 50  0001 C CNN
	1    5650 6450
	1    0    0    -1  
$EndComp
Text Label 5950 5800 0    60   ~ 0
vcc_5v_slave
$Comp
L Q_NPN_CBE Q1
U 1 1 5A37F3EF
P 7350 2250
F 0 "Q1" H 7550 2300 50  0000 L CNN
F 1 "Q_NPN_CBE" H 7550 2200 50  0000 L CNN
F 2 "modificados:TO-92_Inline_Wide" H 7550 2350 50  0001 C CNN
F 3 "" H 7350 2250 50  0001 C CNN
	1    7350 2250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A37F598
P 7450 1800
F 0 "R1" V 7530 1800 50  0000 C CNN
F 1 "200" V 7450 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 1800 50  0001 C CNN
F 3 "" H 7450 1800 50  0001 C CNN
	1    7450 1800
	1    0    0    -1  
$EndComp
Text Label 6850 600  0    60   ~ 0
vcc_12v
$Comp
L GND #PWR01
U 1 1 5A37F662
P 7450 2450
F 0 "#PWR01" H 7450 2200 50  0001 C CNN
F 1 "GND" H 7450 2300 50  0000 C CNN
F 2 "" H 7450 2450 50  0001 C CNN
F 3 "" H 7450 2450 50  0001 C CNN
	1    7450 2450
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Nano_v3.x A1
U 1 1 5A3802B6
P 4500 2800
F 0 "A1" H 4300 3825 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" H 4300 3750 50  0000 R CNN
F 2 "modificados:Arduino_Nano" H 4650 1850 50  0001 L CNN
F 3 "" H 4500 1800 50  0001 C CNN
	1    4500 2800
	1    0    0    -1  
$EndComp
Text Label 4700 1800 0    60   ~ 0
vcc_5v
$Comp
L GND #PWR02
U 1 1 5A380BA6
P 4500 3800
F 0 "#PWR02" H 4500 3550 50  0001 C CNN
F 1 "GND" H 4500 3650 50  0000 C CNN
F 2 "" H 4500 3800 50  0001 C CNN
F 3 "" H 4500 3800 50  0001 C CNN
	1    4500 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A380C14
P 4600 3800
F 0 "#PWR03" H 4600 3550 50  0001 C CNN
F 1 "GND" H 4600 3650 50  0000 C CNN
F 2 "" H 4600 3800 50  0001 C CNN
F 3 "" H 4600 3800 50  0001 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
Text Label 4000 2400 2    60   ~ 0
ir_rv_out
$Comp
L CONN_01X03 J4
U 1 1 5A380F76
P 6400 2350
F 0 "J4" H 6400 2550 50  0000 C CNN
F 1 "CONN_01X03" V 6500 2350 50  0000 C CNN
F 2 "modificados:Pin_Header_Straight_1x03_Pitch2.54mm" H 6400 2350 50  0001 C CNN
F 3 "" H 6400 2350 50  0001 C CNN
	1    6400 2350
	1    0    0    -1  
$EndComp
Text Label 6200 2350 2    60   ~ 0
vcc_5v
$Comp
L GND #PWR04
U 1 1 5A381135
P 6200 2450
F 0 "#PWR04" H 6200 2200 50  0001 C CNN
F 1 "GND" H 6200 2300 50  0000 C CNN
F 2 "" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
Text Label 6200 2250 2    60   ~ 0
servo_signal
Text Label 5000 2900 0    60   ~ 0
servo_signal
$Comp
L POT_TRIM RV1
U 1 1 5A39776F
P 7000 2250
F 0 "RV1" V 6825 2250 50  0000 C CNN
F 1 "100k" V 6900 2250 50  0000 C CNN
F 2 "modificados:Potentiometer_Trimmer_Bourns_3296W" H 7000 2250 50  0001 C CNN
F 3 "" H 7000 2250 50  0001 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A3977BC
P 7000 2400
F 0 "#PWR05" H 7000 2150 50  0001 C CNN
F 1 "GND" H 7000 2250 50  0000 C CNN
F 2 "" H 7000 2400 50  0001 C CNN
F 3 "" H 7000 2400 50  0001 C CNN
	1    7000 2400
	1    0    0    -1  
$EndComp
Text Label 7000 2100 1    60   ~ 0
relay_cont
$Comp
L FINDER-40.31 RL1
U 1 1 5A397FCD
P 7650 1200
F 0 "RL1" H 8100 1350 50  0000 L CNN
F 1 "FINDER-40.31" H 8100 1250 50  0000 L CNN
F 2 "Relays_THT:Relay_SANYOU_SRD_Series_Form_C" H 7650 1200 50  0001 C CNN
F 3 "" H 7650 1200 50  0001 C CNN
	1    7650 1200
	1    0    0    -1  
$EndComp
NoConn ~ 7750 900 
$Comp
L Screw_Terminal_1x01 J1
U 1 1 5A398AD7
P 9950 3500
F 0 "J1" H 9950 3650 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 9800 3500 50  0000 C TNN
F 2 "modificados:pad_wire" H 9950 3375 50  0001 C CNN
F 3 "" H 9950 3400 50  0001 C CNN
	1    9950 3500
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J2
U 1 1 5A3993DE
P 9950 3950
F 0 "J2" H 9950 4100 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 9800 3950 50  0000 C TNN
F 2 "modificados:pad_wire" H 9950 3825 50  0001 C CNN
F 3 "" H 9950 3850 50  0001 C CNN
	1    9950 3950
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J3
U 1 1 5A39947D
P 9950 4450
F 0 "J3" H 9950 4600 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 9800 4450 50  0000 C TNN
F 2 "modificados:pad_wire" H 9950 4325 50  0001 C CNN
F 3 "" H 9950 4350 50  0001 C CNN
	1    9950 4450
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J5
U 1 1 5A39953F
P 9950 4950
F 0 "J5" H 9950 5100 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 9800 4950 50  0000 C TNN
F 2 "modificados:pad_wire" H 9950 4825 50  0001 C CNN
F 3 "" H 9950 4850 50  0001 C CNN
	1    9950 4950
	0    1    1    0   
$EndComp
NoConn ~ 9950 5150
NoConn ~ 9950 4650
NoConn ~ 9950 4150
NoConn ~ 9950 3700
Text Label 4400 1800 1    60   ~ 0
vcc_12v
$Comp
L D D1
U 1 1 5A39CEE1
P 7000 1200
F 0 "D1" H 7000 1300 50  0000 C CNN
F 1 "D" H 7000 1100 50  0000 C CNN
F 2 "modificados:D_A-405_P5.08mm_Vertical_AnodeUp" H 7000 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
	1    7000 1200
	0    1    1    0   
$EndComp
Text Label 5850 1100 2    60   ~ 0
vcc_12v
$Comp
L GND #PWR06
U 1 1 5A3A9736
P 5850 900
F 0 "#PWR06" H 5850 650 50  0001 C CNN
F 1 "GND" H 5850 750 50  0000 C CNN
F 2 "" H 5850 900 50  0001 C CNN
F 3 "" H 5850 900 50  0001 C CNN
	1    5850 900 
	-1   0    0    1   
$EndComp
$Comp
L dc_jack J7
U 1 1 5A3AA218
P 6000 1100
F 0 "J7" H 6000 1250 60  0000 C CNN
F 1 "dc_jack" H 6000 950 60  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 6000 1100 60  0001 C CNN
F 3 "" H 6000 1100 60  0000 C CNN
	1    6000 1100
	1    0    0    -1  
$EndComp
NoConn ~ 5850 1150
Text Label 5000 2800 0    60   ~ 0
volumen_fisico
Text Notes 12300 1150 0    60   ~ 0
Cosas a Agregar:\n\n1) Conexiones a la placa del equipo:\nSon 6 cables para el pote-servo y 3 para el pote fijo.\n Voy a usar un cable plano de 10 cables. Podría ahorrarme 2 \n(tengo un vcc y un gnd repetidos) pero me parece al pedo.\n\n2) Display de volumen y leds:\nUn display de 7 segmentos (9 cables). Un led verde para \nencendido (es el mismo estado que el relay) un led rojo \npara indicar mudo, y otro que indica que el control remoto se desactivo.\nTotal de 9+1+1+1=12 cables. Puedo usar cable plano de 10 para\n el display y otro de 4 para los leds.\nQuiza pueda ahorrarme los cables, y armar las pistas como para \nsoldar directo una placa con otra a traves de las pistas.\n\n3) Analizar si agregar o no el mosfet para adaptar la salida del micro\ncon la entrada del tbj que controla el relay. La idea es asegurarme que en\nningun momento pueda entrar corriente grande al terminal del mircro
Wire Wire Line
	5100 5900 5100 5800
Wire Wire Line
	5100 5800 5550 5800
Wire Wire Line
	5850 5800 6150 5800
Wire Wire Line
	5100 6300 5150 6300
Wire Wire Line
	5150 6300 5150 6600
Wire Wire Line
	3900 6600 5650 6600
Connection ~ 5350 6600
Wire Wire Line
	5650 6300 5350 6300
Wire Wire Line
	5350 6300 5350 5800
Connection ~ 5350 5800
Wire Wire Line
	6850 600  7450 600 
Connection ~ 6150 6100
Wire Wire Line
	5100 6100 6500 6100
Wire Wire Line
	7950 900  7950 750 
Wire Wire Line
	7950 750  9650 750 
Wire Wire Line
	7450 1950 7450 2050
Wire Wire Line
	7450 600  7450 900 
Wire Wire Line
	7450 1500 7450 1650
Wire Wire Line
	7000 1050 7000 750 
Wire Wire Line
	7000 750  7450 750 
Connection ~ 7450 750 
Wire Wire Line
	7000 1350 7000 1550
Wire Wire Line
	7000 1550 7450 1550
Connection ~ 7450 1550
Wire Wire Line
	5850 1050 5850 900 
$Comp
L R R4
U 1 1 5A43360E
P 7800 1800
F 0 "R4" V 7880 1800 50  0000 C CNN
F 1 "200" V 7800 1800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7730 1800 50  0001 C CNN
F 3 "" H 7800 1800 50  0001 C CNN
	1    7800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1650 7800 1650
Wire Wire Line
	7450 1950 7800 1950
$Comp
L LTS-6960HR AFF1
U 1 1 5A43A415
P 3050 5550
F 0 "AFF1" H 3050 6100 50  0000 C CNN
F 1 "LTS-6960HR" H 3050 5100 50  0000 C CNN
F 2 "modificados:7SegmentLED_LTS6760_LTS6780" H 3050 5550 50  0001 C CNN
F 3 "" H 3050 5550 50  0001 C CNN
	1    3050 5550
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5A43EAE7
P 2000 4650
F 0 "D4" H 2000 4750 50  0000 C CNN
F 1 "LED" H 2000 4550 50  0000 C CNN
F 2 "modificados:LED_D5.0mm" H 2000 4650 50  0001 C CNN
F 3 "" H 2000 4650 50  0001 C CNN
	1    2000 4650
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5A4443AE
P 2000 4350
F 0 "D3" H 2000 4450 50  0000 C CNN
F 1 "LED" H 2000 4250 50  0000 C CNN
F 2 "modificados:LED_D5.0mm" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5A44440E
P 2000 4050
F 0 "D2" H 2000 4150 50  0000 C CNN
F 1 "LED" H 2000 3950 50  0000 C CNN
F 2 "modificados:LED_D5.0mm" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5100 3650 5200
Wire Wire Line
	2150 4050 2150 4650
Connection ~ 2150 4350
Wire Wire Line
	3900 4350 3900 6600
Connection ~ 3900 5100
Connection ~ 5150 6600
Wire Wire Line
	3900 5100 3650 5100
Wire Wire Line
	2150 4350 3900 4350
Wire Wire Line
	7850 1500 9650 1500
Wire Wire Line
	9650 750  9650 1300
$Comp
L CONN_01X02_FEMALE J6
U 1 1 5A39AD29
P 9750 1400
F 0 "J6" H 9750 1600 50  0000 C CNN
F 1 "CONN_01X02_FEMALE" H 9825 1200 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 9750 1500 50  0001 C CNN
F 3 "" H 9750 1500 50  0001 C CNN
	1    9750 1400
	1    0    0    -1  
$EndComp
Text Label 6500 6100 0    60   ~ 0
ir_rv_out_slave
Text Label 3900 4350 0    60   ~ 0
gnd_slave
Text Label 8750 750  0    60   ~ 0
alt_pos
Text Label 8850 1500 0    60   ~ 0
alt_neg
Wire Wire Line
	3650 5800 3650 6300
$Comp
L CONN_01X14 J9
U 1 1 5A444DEA
P 2150 2950
F 0 "J9" H 2150 3700 50  0000 C CNN
F 1 "CONN_01X14" V 2250 2950 50  0000 C CNN
F 2 "modificados:Pin_Header_Straight_1x14_Pitch2.54mm" H 2150 2950 50  0001 C CNN
F 3 "" H 2150 2950 50  0001 C CNN
	1    2150 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 5A44925B
P 2350 3600
F 0 "#PWR07" H 2350 3350 50  0001 C CNN
F 1 "GND" H 2350 3450 50  0000 C CNN
F 2 "" H 2350 3600 50  0001 C CNN
F 3 "" H 2350 3600 50  0001 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
Text Label 2350 2300 0    60   ~ 0
vcc_5v
Text Label 2350 2400 0    60   ~ 0
ir_rv_out
Wire Wire Line
	3350 2600 4000 2600
Wire Wire Line
	3050 2500 4000 2500
$Comp
L CONN_01X10 J10
U 1 1 5A444B3D
P 7550 5000
F 0 "J10" H 7550 5550 50  0000 C CNN
F 1 "CONN_01X10" V 7650 5000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x05_Pitch2.54mm" H 7550 5000 50  0001 C CNN
F 3 "" H 7550 5000 50  0001 C CNN
	1    7550 5000
	1    0    0    -1  
$EndComp
Text Label 7350 5250 2    60   ~ 0
volumen_fisico
Text Label 7350 5150 2    60   ~ 0
vcc_5v
$Comp
L GND #PWR08
U 1 1 5A44661E
P 7350 5350
F 0 "#PWR08" H 7350 5100 50  0001 C CNN
F 1 "GND" H 7350 5200 50  0000 C CNN
F 2 "" H 7350 5350 50  0001 C CNN
F 3 "" H 7350 5350 50  0001 C CNN
	1    7350 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 5350 7350 5450
Text Label 5000 3000 0    60   ~ 0
relay_cont
$Comp
L R R5
U 1 1 5A445CFD
P 2900 2500
F 0 "R5" V 2980 2500 50  0000 C CNN
F 1 "R" V 2900 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 2500 50  0001 C CNN
F 3 "" H 2900 2500 50  0001 C CNN
	1    2900 2500
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5A446291
P 3200 2600
F 0 "R6" V 3280 2600 50  0000 C CNN
F 1 "R" V 3200 2600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 2600 50  0001 C CNN
F 3 "" H 3200 2600 50  0001 C CNN
	1    3200 2600
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5A44630D
P 3500 2700
F 0 "R7" V 3580 2700 50  0000 C CNN
F 1 "R" V 3500 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5A44639F
P 2900 2800
F 0 "R8" V 2980 2800 50  0000 C CNN
F 1 "R" V 2900 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 2800 50  0001 C CNN
F 3 "" H 2900 2800 50  0001 C CNN
	1    2900 2800
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5A4465FB
P 3200 2900
F 0 "R9" V 3280 2900 50  0000 C CNN
F 1 "R" V 3200 2900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 2900 50  0001 C CNN
F 3 "" H 3200 2900 50  0001 C CNN
	1    3200 2900
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5A44667C
P 3500 3000
F 0 "R10" V 3580 3000 50  0000 C CNN
F 1 "R" V 3500 3000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 3000 50  0001 C CNN
F 3 "" H 3500 3000 50  0001 C CNN
	1    3500 3000
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5A4466FA
P 2900 3100
F 0 "R11" V 2980 3100 50  0000 C CNN
F 1 "R" V 2900 3100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 3100 50  0001 C CNN
F 3 "" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5A446A8F
P 3200 3200
F 0 "R12" V 3280 3200 50  0000 C CNN
F 1 "R" V 3200 3200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 3200 50  0001 C CNN
F 3 "" H 3200 3200 50  0001 C CNN
	1    3200 3200
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5A446B11
P 3500 3300
F 0 "R13" V 3580 3300 50  0000 C CNN
F 1 "R" V 3500 3300 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 3300 50  0001 C CNN
F 3 "" H 3500 3300 50  0001 C CNN
	1    3500 3300
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5A446F6A
P 2900 3400
F 0 "R14" V 2980 3400 50  0000 C CNN
F 1 "R" V 2900 3400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 3400 50  0001 C CNN
F 3 "" H 2900 3400 50  0001 C CNN
	1    2900 3400
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5A4471D2
P 3200 3500
F 0 "R15" V 3280 3500 50  0000 C CNN
F 1 "R" V 3200 3500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3130 3500 50  0001 C CNN
F 3 "" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2800 4000 2800
Wire Wire Line
	2750 2800 2350 2800
Wire Wire Line
	4000 3500 3350 3500
Wire Wire Line
	3050 3500 2350 3500
Wire Wire Line
	2350 3400 2750 3400
Wire Wire Line
	3050 3400 4000 3400
Wire Wire Line
	3650 3300 4000 3300
Wire Wire Line
	3350 3200 4000 3200
Wire Wire Line
	3050 3100 4000 3100
Wire Wire Line
	3650 3000 4000 3000
Wire Wire Line
	3350 2900 4000 2900
Wire Wire Line
	2350 2900 3050 2900
Wire Wire Line
	2350 3000 3350 3000
Wire Wire Line
	2350 3100 2750 3100
Wire Wire Line
	2350 3200 3050 3200
Wire Wire Line
	2350 3300 3350 3300
$Comp
L CONN_01X14 J8
U 1 1 5A47B0D9
P 850 4500
F 0 "J8" H 850 5250 50  0000 C CNN
F 1 "CONN_01X14" V 950 4500 50  0000 C CNN
F 2 "modificados:Pin_Header_Straight_1x14_Pitch2.54mm" H 850 4500 50  0001 C CNN
F 3 "" H 850 4500 50  0001 C CNN
	1    850  4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 2700 4000 2700
Wire Wire Line
	3350 2700 2350 2700
Wire Wire Line
	3050 2600 2350 2600
Wire Wire Line
	2750 2500 2350 2500
Text Label 1050 3950 0    60   ~ 0
ir_rv_out_slave
Text Label 1050 3850 0    60   ~ 0
vcc_5v_slave
Wire Wire Line
	1850 4050 1050 4050
Wire Wire Line
	1050 4150 1850 4150
Wire Wire Line
	1850 4150 1850 4350
Wire Wire Line
	1850 4650 1700 4650
Wire Wire Line
	1700 4650 1700 4250
Wire Wire Line
	1700 4250 1050 4250
Wire Wire Line
	2450 5750 1600 5750
Wire Wire Line
	1600 5750 1600 4350
Wire Wire Line
	1600 4350 1050 4350
Wire Wire Line
	2450 5650 1500 5650
Wire Wire Line
	1500 5650 1500 4450
Wire Wire Line
	1500 4450 1050 4450
Wire Wire Line
	2450 5550 1400 5550
Wire Wire Line
	1400 5550 1400 4550
Wire Wire Line
	1400 4550 1050 4550
Wire Wire Line
	2450 5450 1300 5450
Wire Wire Line
	1300 5450 1300 4650
Wire Wire Line
	1300 4650 1050 4650
Wire Wire Line
	1200 5350 2450 5350
Wire Wire Line
	1200 5350 1200 4750
Wire Wire Line
	1200 4750 1050 4750
Wire Wire Line
	3650 6300 1150 6300
Wire Wire Line
	1150 6300 1150 4850
Wire Wire Line
	1150 4850 1050 4850
Wire Wire Line
	2450 5150 2450 4950
Wire Wire Line
	2450 4950 1050 4950
Wire Wire Line
	2450 5250 2350 5250
Wire Wire Line
	2350 5250 2350 5050
Wire Wire Line
	2350 5050 1050 5050
$EndSCHEMATC
