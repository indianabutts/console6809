============================================================
      6809 Based Handheld Gaming Device
============================================================
The aim of this project is to develop a 6809 based 
open sourcegaming platform that will ultimatley fit into a 
handheld form factor, the maximum allowed size will be the 
dimensions of the original DMG Gameboy. This therefore means 
minimal chip count. 
The purpose is to develop an understanding for developing MPU
based systems so that ultimatley a full 16-Bit Open Source 
Gaming Platform can be developed to give people a chance to 
experience game development back in the good days.

The device will be implemented from the ground up, with a 
cartridge system that works either with hardwired EEPROMS
or with some form of mass storage. 

The release will come as both schematic and pcb layouts so
that if you are not too technical can simply send off for 
PCBs to be printed and just solder on devices as per instructions
or you can follow the schematics and arrange how you want.
There is also the capability to add more IO as it has 8K of address
space. So changes can be made and eventually adopted into the 
main line.

First it will be deployed on FPGA for speed of protoyping and then
a protoboard, and then finally PCB.

The size limitiation will only factor in at the final stage.

===============================================================

Current Specifications:
------------------------------
+1 MHz M6809 processor to function as processor for logic,
graphics and audio to keep chip count low.

+512kByte SRAM
 	-	16kB Static (Page 0)
	-   32kB Paged  (Pages 1-15)
This contains program data, as well as graphical and audio assets.
16kB static space is for assets and routines common to all the banks
with the remaining pages for assets that are specific to that point in
the operation of the program (e.g. Worlds in a game)

+8kByte EEPROM
Contains OS data such as file system for operation of the device without
game data. 
This will also contain routines that will remove tedious initialisations
e.g. memory mapping routines.
o Aim to include a built-in game like Master System did.

+D-Pad, 4 Face Buttons, Start and Select 
Interfaces via a serial interface
o If form allows, include shoulder buttons.

+Serial Communication Link
For multiplayer but can also work with other peripherals if designed for 
a serial interface.

==================================================================
 Memory Map
 
 16 bit Address Width * 8 bit Data Bus => 64kB address space
 _________________________________
| 16kb Fixed SRAM:0x0000-0x3FFF   |
|_________________________________|
| 32kb Paged SRAM:0x4000-0xBFFF   |
|								  |
|                                 |
|_________________________________|
|_8kb I/O Space_:_0xC000-0xDFFF___|
|_8kb EEPROM____:_0xE000-0xFFFF___|
