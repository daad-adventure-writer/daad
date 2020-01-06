@ECHO OFF
ECHO Merge Amstrad CPC mode 0 picture to DAAD loading SCR. V1.00
ECHO (c) 2019 T.J.Gilberts and S.Vogt.
ECHO Written with Welsh magic and fairy dust.

IF "%1" == "" GOTO FALSE-ARG
IF "%1" == "-m" GOTO MERGE
IF NOT "%1" == "" GOTO FALSE-ARG

:MERGE
COPY SCREEN.SCR+COLOUR.PAL LOADING.SCR
DEL SCREEN.SCR
DEL COLOUR.PAL
GOTO END

:FALSE-ARG
ECHO Error: Invalid command line.
ECHO Usage: MARS {-m} merges SCREEN.SCR and COLOUR.PAL to LOADING.SCR
GOTO END

:END
ECHO.