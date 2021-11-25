EESchema Schematic File Version 2  date 19/11/2012 01:26:20
LIBS:BIBSCH
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "Cabo de gravação"
Date "19 nov 2012"
Rev ""
Comp "Geisse, Julio, Renan"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8020 2700 7360 2700
Wire Wire Line
	7360 2700 7360 4500
Wire Wire Line
	7360 4500 3500 4500
Wire Wire Line
	3500 3100 3850 3100
Wire Wire Line
	3850 3100 3850 3300
Wire Wire Line
	3850 3300 8020 3300
Wire Wire Line
	7640 4390 7640 2800
Connection ~ 7640 3500
Connection ~ 7640 3200
Wire Wire Line
	8020 3200 7640 3200
Connection ~ 7640 3600
Wire Wire Line
	8020 3600 7640 3600
Connection ~ 7640 4000
Wire Wire Line
	8020 4000 7640 4000
Connection ~ 3850 5000
Wire Wire Line
	3850 5270 3850 3600
Connection ~ 3850 4600
Wire Wire Line
	3500 4600 3850 4600
Connection ~ 3850 4200
Wire Wire Line
	3500 4200 3850 4200
Connection ~ 3850 3800
Wire Wire Line
	3500 3800 3850 3800
Wire Wire Line
	3850 3600 3500 3600
Wire Wire Line
	3850 5000 3500 5000
Wire Wire Line
	3500 4000 3850 4000
Connection ~ 3850 4000
Wire Wire Line
	3500 4400 3850 4400
Connection ~ 3850 4400
Wire Wire Line
	3500 4800 3850 4800
Connection ~ 3850 4800
Wire Wire Line
	7640 4200 8020 4200
Wire Wire Line
	7640 2800 8020 2800
Wire Wire Line
	8020 3800 7640 3800
Connection ~ 7640 3800
Wire Wire Line
	8020 3400 7640 3400
Connection ~ 7640 3400
Wire Wire Line
	8020 3000 7640 3000
Connection ~ 7640 3000
Connection ~ 7640 4200
Wire Wire Line
	3500 2900 8020 2900
Wire Wire Line
	8020 3700 4100 3700
Wire Wire Line
	4100 3700 4100 3500
Wire Wire Line
	4100 3500 3500 3500
$Comp
L TERRA GND?
U 1 1 50A9A57E
P 7640 4400
F 0 "GND?" H 7650 4460 50  0001 C CNN
F 1 "TERRA" H 7640 4310 50  0001 C CNN
	1    7640 4400
	1    0    0    -1  
$EndComp
$Comp
L TERRA GND?
U 1 1 50A9A52D
P 3850 5280
F 0 "GND?" H 3860 5340 50  0001 C CNN
F 1 "TERRA" H 3850 5190 50  0001 C CNN
	1    3850 5280
	1    0    0    -1  
$EndComp
Text Notes 8700 3950 0    60   ~ 0
DB25 FÊMEA - GRAVADOR
Text Notes 1720 3940 0    60   ~ 0
DB25 MACHO - LPT PC
$Comp
L DB25 J?
U 1 1 50A9A43C
P 8470 3900
F 0 "J?" H 8370 5290 70  0000 C CNN
F 1 "DB25" H 8420 2540 70  0000 C CNN
	1    8470 3900
	1    0    0    -1  
$EndComp
$Comp
L DB25 J?
U 1 1 50A9A42C
P 3050 3900
F 0 "J?" H 2950 2470 70  0000 C CNN
F 1 "DB25" H 2940 5260 70  0000 C CNN
	1    3050 3900
	-1   0    0    1   
$EndComp
$EndSCHEMATC
