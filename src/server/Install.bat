@echo off

call settings.bat

:install_files
echo Installing Forge and required jars.
java -jar %INSTALL_JAR% --installServer > NUL 2>&1
pause
exit /B

goto install_files