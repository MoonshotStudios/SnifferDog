@echo off
cls
echo Would you like to install Sniffer Dog? [y][n]
set /p confirm=
if not "%confirm%" == "y" (
	goto end
)
cd %USERPROFILE%
echo Creating file folder...
mkdir SnifferDog
cd %USERPROFILE%/Downloads/SnifferDog-master/SnifferDog-master
echo Installing program files...
move SnifferDog.bat %USERPROFILE%/SnifferDog
echo Installing uninstaller...
move SnifferDogUninstaller.bat %USERPROFILE%/SnifferDog
pause
echo Would you like to add a desktop shortcut? [y][n]
set /p shortcut=
if "%shortcut%" == "y" (
	echo Installing desktop icon...
	cd %USERPROFILE%/Downloads/SnifferDog-master/SnifferDog-master
	move SnifferDogDesktop.bat %USERPROFILE%/Desktop
)
pause
echo Installation complete.
echo You may now run the program.
pause
end:
exit