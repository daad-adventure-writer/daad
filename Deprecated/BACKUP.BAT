@ECHO OFF
ECHO Creates backups from DAAD database files. V1.00
ECHO (c) 2019 T.J.Gilberts and S.Vogt.
ECHO Written with Welsh magic and fairy dust.

IF "%1" == "" GOTO FALSE-ARG
IF NOT "%1" == "" GOTO BACKUP

:BACKUP
COPY "%1" Y: /Y
GOTO END

:FALSE-ARG
ECHO Error: Invalid command line.
ECHO Usage: BACKUP {YOURGAME.SCE} copies YOURGAME.SCE to a safe place.
GOTO END

:END
ECHO.