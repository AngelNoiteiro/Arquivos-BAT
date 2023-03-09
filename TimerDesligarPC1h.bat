@echo OFF

color 3

ECHO Escolha uma opcao abaixo...
ECHO.
ECHO   1 - Logoff
ECHO   2 - Reiniciar
ECHO   3 - Suspender
ECHO   4 - Desligar
ECHO   5 - Cancelar Restart
ECHO.

SET /p option=Sua escolha - 

IF %option%==1 SHUTDOWN /l
IF %option%==2 SHUTDOWN -r -t 10
IF %option%==3 SHUTDOWN /h
IF %option%==4 SHUTDOWN /s /f /t 3600
IF %option%==5 SHUTDOWN /a

PAUSE