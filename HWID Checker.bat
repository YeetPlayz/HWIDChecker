@echo off
title HWID Checker
color 07
echo By Redozoke
echo Discord.gg/ZAnQTA8bdx

color 02
pause
:loop
CLS

Set /a num=(%Random% %%9)+1
color %num%

echo =================== ==========================================================
echo SMBIOS
wmic csproduct get uuid
echo =================== ==========================================================
echo BIOS
wmic bios get serialnumber
wmic bios get smbiosbiosversion
echo =================== ==========================================================
echo MOTHERBOARD
wmic baseboard get serialnumber
echo =================== ==========================================================
echo Chassis
wmic systemenclosure get serialnumber
echo =================== ==========================================================
echo CPU
wmic cpu get processorid
echo =================== ==========================================================
echo GPU
wmic PATH Win32_VideoController GET Description, PNPDeviceID
echo =================== ==========================================================
echo HDD/SSD
wmic diskdrive get serialnumber
echo =================== ==========================================================
echo RAM
wmic memorychip get serialnumber
echo =================== ==========================================================
echo WINDOWS PRODUCT ID
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo =================== ==========================================================
echo MAC ADRESSES
getmac
echo =================== ==========================================================

pause
goto loop