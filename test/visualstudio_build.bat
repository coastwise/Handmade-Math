
REM @echo off

CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0"\VC\vcvarsall.bat

cl /EHsc visualstudio_test.cpp /link /SUBSYSTEM:CONSOLE || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%
