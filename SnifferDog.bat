@echo off
cls
echo What's the name of the file you're searching for?
set /p fileName=
dir %fileName% /s /p
pause