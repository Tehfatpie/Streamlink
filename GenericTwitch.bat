@ECHO OFF

SETLOCAL EnableExtensions
ECHO Type in the twitch username.
ECHO Followed by space and 720p or 480p
SET /p Username= "Type in the username and quality: "
set EXE=chatterino.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo Opening Chatterino
Start "" "C:\Program Files\Chatterino\chatterino.exe"
goto FIN
:FOUND
echo Chatterino Running
:FIN


Streamlink twitch.tv/%Username%
"cmd /k"