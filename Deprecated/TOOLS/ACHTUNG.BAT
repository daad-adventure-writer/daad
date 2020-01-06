@ECHO OFF
ECHO Add Commodore 64 header to DAAD database. V1.00
ECHO (c) 2018 T.J.Gilberts and S.Vogt.
ECHO Written with Welsh magic and fairy dust.

IF "%1" == "" GOTO FALSE-ARG
IF "%1" == "-p1" GOTO PART1
IF "%1" == "-p2" GOTO PART2
IF NOT "%1" == "" GOTO FALSE-ARG

:PART1
COPY ACHTUNG.DAT+PART1.DDB PART1.DDC
DEL PART1.DDB
GOTO END

:PART2
COPY ACHTUNG.DAT+PART2.DDB PART2.DDC
DEL PART2.DDB
GOTO END

:FALSE-ARG
ECHO Error: Invalid command line.
ECHO Usage: ACHTUNG {-p1} processes PART1.DDB
ECHO        ACHTUNG {-p2} processes PART2.DDB
GOTO END

:END
ECHO.