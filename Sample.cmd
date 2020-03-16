@ECHO OFF
SETLOCAL EnableExtensions
set EXE=chatterino.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo Not running
Start "" "C:\Program Files\Chatterino\chatterino.exe"
goto FIN
:FOUND
echo Chatterino Running
:FIN
ECHO .
streamlink twitch.tv/xxxxxxx resolution