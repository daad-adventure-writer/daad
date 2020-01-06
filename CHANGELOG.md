# Changelog

## DAAD R5

* Commodore Plus/4 support (264-series), also C16 with 64k

* DRC is now the standard compiler for DAAD

* the old DOS-based set of tools is deprecated

* project cleanup and simplified structure

* interpreter directories prepared for automated build scripts using DRC

* implemented per-system documentation files

* added highly configurable loaders for Commmodore 8-bit platforms

## DAAD R4

* heavily updated documentation

* recovered full DAAD MSX support (MSX-DOS implementation supported with Maluva)

* added MSX-DOS game template disk which also comes with a custom loader

* completely recovered PCW interpreters for both English and Spanish language adventures

* added C64 binary header for automating disk mastering in LIB/C64

* added C64 tape mastering templates and tools in LIB/C64

* new loader template with simplified naming scheme and bugfixes in LIB/C64 (e.g. APART1, BPART1)

* added German language templates to the SCE directory

## DAAD R3

in DAAD\

* DC.EXE: new DAAD compiler version 2.42, which significantly improves text compression and reduces DB sizes
* LEGACY.EXE: the original DAAD compiler 2.40 from 1991
* BACKUP: creates a backup from a specified .SCE file on drive Y: (we advise to connect a folder from your Dropbox to that drive letter in DOSBox)

in LIB\ST\

* DAAD_Atari.ST: new English language interpreters (EDI) that fix both a major and a minor bug

in LIB\C64\

* DAAD_Loader_Temp.d64: Commodore 64 (5.25 Disk) template for DAAD adventures with loading screen

in LIB\CPC\

* DAAD_Loader_Temp.dsk: Amstrad CPC (3” Disk) template for DAAD adventures with loading screen

in LIB\SPECTRUM\

* DAAD_SLoader.dsk: Spectrum +3 (3” Disk) template for adventures with loading screen

in DAAD\TAPMAST\

* png2scr.py: creates Spectrum loading screens from PNG images
* dump-pal.py: creates CPC palette files from PNG images
* DLPART1.BAS: CPC tape loader template for DAAD adventures with loading screen, loads PART1
* DLPART2.BAS: CPC tape loader template for DAAD adventures with loading screen, loads PART2
* DAAD.FNT: the DAAD standard CPC font (this file is used by the CPC tape loader)
* SPECCY.BAS: Spectrum tape loader template for DAAD adventures with loading screen

in DAAD\TOOLS\

* MARS: merges an Amstrad CPC mode 0 image and a palette file to DAAD’s CPC loading screen format

## DAAD R2

The first DAAD release since 1991.

in DAAD\SCE\

* BLANK.SCE: recreated English language database template
* BLANK.DDB: compiled English language database template
* TXTBLANK.SCE: English language database template for text-only games
* SPANISH.SCE: Spanish language database template
* SPANISH.DDB: compiled Spanish language database template
* HIB1.SCE: the complete source of Pond’s Hibernated 1 (read file!)

in DAAD\

* MOVEDB: moves PARTx.DDB database files to TEST directory
* RUN: quickly runs a game via DOS interpreter(s) for testing

in DAAD\TAPMAST\

* TAPCAT: creates ZX Spectrum tapes (.TAP files) for distribution
* 2CDT: creates CPC tapes (.CDT files) for distribution

in DAAD\TOOLS\

* ACHTUNG: adds a Commodore 64 header to a database

on the DAAD C64 disk in LIB\C64\

* LE1: loader for an ENGLISH game PART1 
* LE2: loader for an ENGLISH game PART2
* [c]NEWCHRSET: alt. charset taken from Chichén Itzá by Aventuras AD
* EDI: new version of the ENGLISH C64 interpreter
* SDI: new version of the SPANISH C64 interpreter

on the DAAD CPC disk in LIB\CPC\

* DCPCIE.Z80: recovered ENGLISH CPC interpreter

on the DAAD compile disk in LIB\CPC\

* GFX.BIN: minimal CPC graphics database for text-only games

The DAAD compile disk is an image which quickly allows you to create your final adventure binaries for distribution. We also added a CP/M Plus image, as the MCRF tool which merges the runnable files, is CP/M based. Details in the new worked example section.

in LIB\AMIGA\

* PART1.DAT: minimal Amiga graphics database for text-only games
* S-PIC.ADF: Amiga tool to create startup screens from IFF images

on the DAAD Spectrum disk in LIB\SPECTRUM\

* PART1.SDG: minimal Speccy graphics database for text-only games
* BLANK.DDB: compiled Spectrum database template for testing
* DS48IE.P3F: recovered ENGLISH Spectrum interpreter
* TMASTER.BAS: loader script for Aventuras AD tape master tool
* TBOOT2.BIN: Aventuras AD tape master tool (recovered, untested)
* DRE.BAS: loader script for ENGLISH +3 game
* MERGE: basic script, merges all files into single binary ENGLISH
* MERGES: basic script, merges all files into single binary SPANISH
* TAPLOAD: template for a simple tape loader with SCREEN$

in LIB\ST\

* PART1.DAT: minimal Atari ST graphics database for text-only games
