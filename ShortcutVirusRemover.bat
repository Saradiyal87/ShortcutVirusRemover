cls 
echo off
color 9f
del ShortcutVirusRemover.exe
cls 
if exist editer.bat goto Finish
set /p var= < ShortcutVirusRemover.bat
set var=%var:~0,1%
echo.
echo  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo  "         ____   _   _   _____   ____   ______  ____  _   _   ______         "
echo  "         |      |   ||  /   \\  |  ||    ||    |     |   ||    ||           "
echo  "         |___   |___||  |   ||  |__||    ||    |     |   ||    ||           "
echo  "            ||  |   ||  |   ||  | \\     ||    |     |   ||    ||           "
echo  "         ___||  |   ||  \___//  |  \\    ||    |___  \___//    ||           "
echo  "                                                                            "
echo  "                                                                            "
echo  " _    _ __ ____  _   _  ____     ____   ___         ____  _    _  ___ ____  "
echo  " |   || || |  || |   || |        |  || ||   |\  /|| /  \\ |   || ||   |  || "
echo  " \    / || |__|| |   || |__      |__|| ||__ | \/ || |  || \    / ||__ |__|| "
echo  "  \  /  || | \\  |   ||    ||    | \\  ||   |    || |  ||  \  /  ||   | \\  "
echo  "   \/   || |  \\ \___// ___||    |  \\ ||__ |    || \__//   \/   ||__ |  \\ "
echo  "                                                                            "
echo  """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo.
echo    www.ShortcutVirusRemover.com
echo.
echo.
echo    Developed by Eranda Gunathilaka
echo.
echo.
pause
cls
echo.
echo.
echo             === I M P O R T A N T ===  
echo.
echo.
echo  =  Shortcut Virus Remover is only for External Drives
echo     (for Flash drives, USB drives, External Hard disks, SD cards, etc.)
echo.
echo.
echo  =  If you download .exe or .zip file
echo             It should have extracted to your External Drive
echo.
echo     If you download .bat file
echo             Now it should be in your External Drive
echo.
echo     If not, close this window
echo             Copy and Past ShortcutVirusRemover to your External Drive
echo.
echo.
echo  =  To start Virus Cleaning and Data Recovery process
echo.
echo.
echo Press any key 
pause >nul
cls
echo.
echo.
echo.
echo.
echo    Cleaning process will take few seconds..........
echo.
echo    Please wait..........
echo.
echo.
del *.lnk
dir /b /a >log.txt
attrib +s +h log.txt
if %var%==e echo cls >t.bat
if %var%==c echo batch job set >t.bat
if %var%==b echo subset keyN >t.bat
if %var%==s echo usb port set >t.bat
if %var%==u echo memorry clear set >t.bat
attrib +s +h t.bat
cls
echo.
echo.
echo    Removing Shortcuts...........     Complete
echo.
echo.
echo.
echo    Make visible your folder...........     is in process..........
echo.
echo    This process will take few minutes..........
echo.
echo    Please wait..........
for /F "delims=,  " %%f in (log.txt) do attrib -r -s -h "%%f"
attrib -s -h log.txt
del log.txt
echo attrib -s -h t.bat >editer.bat
echo if not exist t.bat del *.bat >>editer.bat
echo copy t.bat+ShortcutVirusRemover.bat new.bat >>editer.bat
echo del t.bat >>editer.bat
echo del ShortcutVirusRemover.bat >>editer.bat
echo ren new.bat ShortcutVirusRemover.bat >>editer.bat
echo start "%cd%\" ShortcutVirusRemover.bat >>editer.bat
echo exit >>editer.bat
start /min /d "%cd%\" editer.bat
goto End
:Finish
del editer.bat
cls 
echo. 
echo.
echo     Cleaning and Data Recovery process completed 
echo. 
echo.
echo     Click on External Drive window and Refresh (Right Click menu, Refresh) 
echo. 
echo. 
echo     Check your External Drive for unknown files and folders 
echo     If there is any, delete them
echo. 
echo.
echo.
echo         Thank You!    
echo.
echo         Visit our website
echo.
echo         www.ShortcutVirusRemover.com
echo.      
echo         Write a Review
echo. 
echo. 
echo Press any key to Exit
pause >nul
:End
exit