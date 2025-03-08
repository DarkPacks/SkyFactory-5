Make sure you have Java 17 (64bit) installed and set as the default java install or point "java" in the run script to the absolute path as installed on your system, for windows (run.bat) that might look like:

@echo off
REM Forge requires a configured set of both JVM and program arguments.
REM Add custom JVM arguments to the user_jvm_args.txt
REM Add custom program arguments {such as nogui} to this file in the next line before the %* or pass them to this script directly.
REM I've modified "java" to point to the absolute path, change this as required and make sure to keep the double quotes as spaces in the path require that.
"C:\some_path\jdk-17.0.13+11\bin\java.exe" @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.20.1-47.4.0/win_args.txt %*
pause




