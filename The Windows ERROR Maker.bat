@echo off
title Windows ERROR Generator
color f0
set /p ti=Title for ERROR: 
set /p te=Text for ERROR: 
color e
cls
:buttons
echo Title: %ti%
echo Text: %te%
echo.
echo Which buttons?
echo -------------------------
echo 0 - OK
echo 1 - OK, Cancel
echo 2 - Cancel, Try again, Ignore
echo 3 - Yes, No, Cancel
echo 4 - Yes,No
echo 5 - Try again, cancel
echo -------------------------
set /p b=Please enter a number: 
if "%b%" == "0" goto ft
if "%b%" == "1" goto ft
if "%b%" == "2" goto ft
if "%b%" == "3" goto ft
if "%b%" == "4" goto ft
if "%b%" == "5" goto ft
goto ne
:ft
cls
color c
echo Title: %ti%
echo Text: %te%
echo.
echo Which message type?
echo -------------------------
echo 16 - ERROR
echo 32 - Question
echo 48 - Caution
echo 64 - Info
echo -------------------------
set /p f=Please enter a number: 
if "%f%" == "16" goto final
if "%f%" == "32" goto final
if "%f%" == "48" goto final
if "%f%" == "64" goto final
goto nee
:final
cls
color c
echo x=msgbox("%te%", %b%+%f%, "%ti%")>"%Userprofile%\Desktop\Err0r.vbs"
exit
R U looking in the Code?
:ne
cls
echo Enter a valid number
pause
cls
goto buttons
:nee
cls
echo Enter a valid number
pause
cls
goto ft