<QucsStudio Schematic 5.9>
<Properties>
View=-223.753,-996.306,2402.98,439.155,0.635859,77,0
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.dpl
OpenDisplay=3
showFrame=0
FrameText0=Title \n @PATH@@FILE@
FrameText1=Drawn By:
FrameText2=Date: @DATE@
FrameText3=Revision:
</Properties>
<Symbol>
</Symbol>
<Components>
Pac P1 1 160 -430 18 -26 0 "1"1"50"1"0 dBm"0"1 GHz"0"26.85"0"con_2"0
GND * 1 160 -400 0 0 0
L L1 1 290 -430 8 -26 1 "739.6pH"1"0"0""0"inductor_1mH"0
C C1 1 260 -430 -8 46 1 "45.61pF"1"0"0""0"neutral"0"SMD0603"0
GND * 1 290 -400 0 0 0
L L2 1 400 -510 -26 -44 0 "126.8nH"1"0"0""0"inductor_1mH"0
C C2 1 340 -510 -26 10 0 "266fF"1"0"0""0"neutral"0"SMD0603"0
L L3 1 430 -430 8 -26 1 "739.6pH"1"0"0""0"inductor_1mH"0
C C3 1 400 -430 -8 46 1 "45.61pF"1"0"0""0"neutral"0"SMD0603"0
GND * 1 430 -400 0 0 0
Pac P2 1 540 -430 18 -26 0 "2"1"50"1"0"0"1 GHz"0"26.85"0"con_2"0
GND * 1 540 -400 0 0 0
.SP SP1 1 180 -270 0 9 0 "log"1"800MHz"1"950MHz"1"201"1"no"0"1"0"2"0"none"0
</Components>
<Wires>
160 -510 160 -460
160 -510 290 -510
290 -510 290 -460
430 -510 430 -460
290 -510 310 -510
260 -460 290 -460
260 -400 290 -400
400 -460 430 -460
400 -400 430 -400
540 -510 540 -460
430 -510 540 -510
</Wires>
<Diagrams>
<Smith 887 223 235 235 31 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 -1 -1 -1 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 2 3 0 0 0 0 "">
	<"S[2,2]" "" #ff0000 2 3 0 0 0 0 "">
</Smith>
<Rect 138 -99 2123 707 31 #c0c0c0 1 00 1 8e+08 5e+06 9.5e+08 1 -66.3192 5 6.02902 1 -1 0.2 1 -1 -1 -1 "" "" "">
	<Legend 10 -100 0>
	<"dB(S[1,1])" "" #0000ff 2 3 0 0 0 0 "">
	  <Mkr 8.66552e+08 1012 -81 3 1 0 0 0 50>
	<"dB(S[2,1])" "" #ff0000 2 3 0 0 0 0 "">
	  <Mkr 8.66552e+08 1002 -711 3 1 0 0 0 50>
</Rect>
</Diagrams>
<Paintings>
Text 340 -330 16 #000000 0 band-pass filter, 818MHz...918MHz \n 3^{th} order Chebyshev , PI-type, \n impedance 50 \\Omega
</Paintings>
