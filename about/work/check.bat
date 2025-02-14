@echo off
mode con: cols=90 lines=58
:diocane
title -=[HWID Checker]=-
color 0c
cls
echo.
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo [92m------------------------------------[91m
echo.
echo Chassis
wmic systemenclosure get serialnumber
echo [92m------------------------------------[91m
echo.
echo CPU
wmic cpu get serialnumber
wmic cpu get processorid
echo [92m------------------------------------[91m
echo.
echo Diskdrive
wmic diskdrive get serialnumber
echo [92m------------------------------------[91m
echo.
echo Baseboard
wmic baseboard get serialnumber
echo [92m------------------------------------[91m
echo.
echo Ram
wmic memorychip get serialnumber
echo [92m------------------------------------[91m
echo.
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo [92m------------------------------------[91m
echo.
echo GPU
nvidia-smi -L
::wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo.
echo.
echo Press ENTER to check serial again...
pause >nul
goto diocane
