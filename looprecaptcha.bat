dir/s
pause
@echo off
title LoopReCAPTCHA
color 0A

:START
cls
echo ==============================
echo        LOOPRECAPTCHA
echo ==============================
echo.
echo Robot olmadiginizi kanitlayin.
echo.

set /a SORU=%RANDOM% %% 5

if %SORU%==0 goto S1
if %SORU%==1 goto S2
if %SORU%==2 goto S3
if %SORU%==3 goto S4
if %SORU%==4 goto S5

:S1
set /p CEVAP=2+7=? 
if "%CEVAP%"=="9" goto DOGRU
goto YANLIS

:S2
set /p CEVAP=Turkiye'nin baskenti? 
if /I "%CEVAP%"=="Ankara" goto DOGRU
goto YANLIS

:S3
set /p CEVAP=YESIL kelimesini aynen yaz: 
if /I "%CEVAP%"=="YESIL" goto DOGRU
goto YANLIS

:S4
set /p CEVAP=5x5=? 
if "%CEVAP%"=="25" goto DOGRU
goto YANLIS

:S5
set /p CEVAP=10-3=? 
if "%CEVAP%"=="7" goto DOGRU
goto YANLIS

:DOGRU
echo.
echo Dogru! Bir sonraki dogrulamaya geciliyor...
timeout /t 2 >nul
goto START

:YANLIS
echo.
echo Yanlis cevap! Tekrar deneyin.
timeout /t 2 >nul
goto START
