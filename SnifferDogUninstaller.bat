@echo off
cls
echo Are you sure you want to uninstall Sniffer Dog? [y][n]
set /p confirm=
if "%confirm%" == "y" (
cd %USERPROFILE%/Desktop
echo Deleting desktop icon...
del SnifferDogDesktop.bat
cd %USERPROFILE%/SnifferDog
echo Deleting program files...
del SnifferDog.bat
cd %USERPROFILE%/Downloads/SnifferDog-master/SnifferDog-master
echo Deleting desktop icon...
del SnifferDogDesktop.bat
echo Deleting wizard...
del SnifferDogWizard.bat
echo Deleting README...
del README.md
cd ..
echo Deleting download folder...
rmdir SnifferDog-master
cd ..
echo Deleting download folder...
rmdir SnifferDog-master
echo Deleting zip...
del SnifferDog-master.zip
cd %USERPROFILE%/SnifferDog
move SnifferDogUninstaller.bat %USERPROFILE%
cd ..
echo Deleting file folder...
rmdir SnifferDog
pause
echo Deleting uninstaller...
del SnifferDogUninstaller.bat
)