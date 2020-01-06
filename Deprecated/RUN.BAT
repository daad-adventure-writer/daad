@ECHO OFF
ECHO Runs DAAD game via DOS interpreter. V1.00
ECHO (c) 2018 T.J.Gilberts and S.Vogt.
ECHO Written with Welsh magic and fairy dust.

IF "%1" == "" GOTO FALSE-ARG
IF "%1" == "-e1" GOTO PART1E
IF "%1" == "-e2" GOTO PART2E
IF "%1" == "-s1" GOTO PART1S
IF "%1" == "-s2" GOTO PART2S
IF NOT "%1" == "" GOTO FALSE-ARG

:PART1E
CD TEST
INTEM1 V
CD..
GOTO END

:PART2E
CD TEST
INTEM2 V
CD..
GOTO END

:PART1S
CD TEST
INTSM1 V
CD..
GOTO END

:PART2S
CD TEST
INTSM2 V
CD..
GOTO END

:FALSE-ARG
ECHO Error: Invalid command line.
ECHO Usage: RUN {-e1} launches ENGLISH game PART1 for testing
ECHO        RUN {-e2} launches ENGLISH game PART2 for testing
ECHO        RUN {-s1} launches SPANISH game PART1 for testing
ECHO        RUN {-s2} launches SPANISH game PART1 for testing
GOTO END

:END
ECHO.