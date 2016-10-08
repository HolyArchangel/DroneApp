:: Contribution from Demian Cabrera, dackiller@gmail.com (.BAT FILE FOR WINDOWS)
:: REMEMBER PUT YOUR ENVIRONMENT VARIABLES TO JAVA_HOME, ANT, ANDROID_SDK/TOOLS ON YOUR SYSTEM
@ECHO OFF

:: ANDROID SDK 
set ANDROID_SDK=

:: PUT YOUR DIRECTORY PATH FOR YOUR ANDROID PROJECT
set WORKDIR=

:: DIRECTORY PATH FOR YOUR PROJECT
set WORKDIR_APP=%WORKDIR%/PUT_HERE

:: DALVIK PATH
set JFX_SDK=

:: APPLICATION PATH (COMPILED .JAR) AND YOUR DEPENDENCY JAR's
set APPS_HOME=

:: YOUR MAIN CLASS OF YOUR APPLICATION
set JFX_MAIN_CLASS=

:: YOUR APPLICATION PACKAGE 
set PACKAGE_APP=

:: NAME APPLICATION
set NAME_APP=

:: echo DELETE OLD VERSION COMPILED...
:: del -q %WORKDIR_APP% -> DELETE OLD VERSION DIRECTORY (BETA)
:: rmdir -q %WORKDIR_APP% -> DELETE OLD VERSION DIRECTORY (BETA)

echo RUNNING DALVIK...
cd %JFX_SDK%/android-tools
start "JAVA FX" gradlew.bat --info createProject -PDEBUG -PDIR=%WORKDIR% -PPACKAGE=%APCKAGE% -PNAME=%NAME_APP% -PANDROID_SDK=%ANDROID_SDK% -PJFX_SDK=%JFX_SDK% -PJFX_APP=%APPS_HOME% -PJFX_MAIN=%JFX_MAIN_CLASS%
pause
cd %WORKDIR_APP%
echo COMPILING PROJECT...
pause
call ant debug