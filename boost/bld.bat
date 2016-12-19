:: Start with bootstrap
call bootstrap.bat
if errorlevel 1 exit 1

:: Build step
.\b2 install ^
  --build-dir=buildboost ^
  --prefix="%LIBRARY_PREFIX%" ^
  threading=multi ^
  link=shared ^
  -j%CPU_COUNT% ^

if errorlevel 1 exit 1

:: Install fix-up for a non version-specific boost include
move "%LIBRARY_INC%\boost-1_51\boost" "%LIBRARY_INC%"
if errorlevel 1 exit 1

:: Move dll's to LIBRARY_BIN
move "%LIBRARY_LIB%\*vc*1_51.dll" "%LIBRARY_BIN%"
if errorlevel 1 exit 1
