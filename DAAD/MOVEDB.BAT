@ECHO OFF
ECHO Moves DAAD database for testing. V1.00
ECHO (c) 2018 T.J.Gilberts and S.Vogt.
ECHO Written with Welsh magic and fairy dust.

IF "%1" == "" GOTO FALSE-ARG
IF "%1" == "-p1" GOTO PART1
IF "%1" == "-p2" GOTO PART2
IF NOT "%1" == "" GOTO FALSE-ARG

:PART1
COPY PART1.DDB TEST /Y
DEL PART1.DDB
GOTO END

:PART2
COPY PART2.DDB TEST /Y
DEL PART2.DDB
GOTO END

:FALSE-ARG
ECHO Error: Invalid command line.
ECHO Usage: MOVEDB {-p1} puts PART1.DDB into TEST dir
ECHO        MOVEDB {-p2} puts PART2.DDB into TEST dir
GOTO END

:END
ECHO.