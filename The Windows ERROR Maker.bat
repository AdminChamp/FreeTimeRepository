@echo off
title Generatore di Errori di Windows
color b0
set /p ti=Titolo: 
set /p te=Testo: 
color e
cls
:buttons
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo Titolo: %ti%
echo Testo: %te%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Scegli i pulsanti:
echo -------------------------
echo 0 - OK
echo 1 - OK, Annulla
echo 2 - Annulla, Riprova, Ignora
echo 3 - Si, No, Annulla
echo 4 - Si, No
echo 5 - Riprova, Annulla
echo -------------------------
set /p b=Inserisci un numero: 
if "%b%" == "0" goto ft
if "%b%" == "1" goto ft
if "%b%" == "2" goto ft
if "%b%" == "3" goto ft
if "%b%" == "4" goto ft
if "%b%" == "5" goto ft
goto ne
:ft
cls
color e
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo Titolo: %ti%
echo Testo: %te%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Scegli il tipo di messaggio:
echo -------------------------
echo 16 - Errore
echo 32 - Domanda
echo 48 - Attenzione
echo 64 - Informazione
echo -------------------------
set /p f=Inserisci un numero: 
if "%f%" == "16" goto final
if "%f%" == "32" goto final
if "%f%" == "48" goto final
if "%f%" == "64" goto final
goto nee
:final
cls
color c
echo x=msgbox("%te%", %b%+%f%, "%ti%")>"%Userprofile%\Desktop\Errore.vbs"
exit
R U looking in the Code?
:ne
cls
echo Inserisci un numero valido.
pause
cls
goto buttons
:nee
cls
echo Inserisci un numero valido.
pause
cls
goto ft