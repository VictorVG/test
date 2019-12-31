@echo off
setlocal enableextensions
set wd=%cd%
chdir /d %wd%  > nul
if "%~1"=="test" call :test
start /i spdftest test > nul
exit
:test
setlocal enableextensions
set wd=%cd%
chdir /d %wd% > nul
cp -f %DEVEL%\SumatraPDF\Tools\SumatraPDF_testkit.7z ./ > nul
7z x SumatraPDF_testkit.7z -aoa -y -r > nul
rm -f SumatraPDF_testkit.7z > nul
cp -f tcfg/true/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2.* Тест/SumatraPDF/ > nul
mv -f Тест/SumatraPDF/SumatraPDF-3.2.exe Тест/SumatraPDF/SumatraPDF.exe > nul
7z e SumatraPDF\SumatraPDF-3.2-dbg-x86.zip -oТест\SumatraPDF SumatraPDF.* > nul
mv -f SumatraPDF.* Тест/SumatraPDF/ > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe > nul
if exist Тест\SumatraPDF\crashinfo (cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x86-1.dmp > nul & cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x86-1.txt > nul )
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe > nul
if exist Тест\SumatraPDF\crashinfo (cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x86-2.dmp > nul & cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x86-2.txt > nul )
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
rm -f Тест/SumatraPDF/SumatraPDF.exe Тест/SumatraPDF/SumatraPDF.map Тест/SumatraPDF/SumatraPDF.pdb > nul
cp -f tcfg/true/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2-x64.* Тест/SumatraPDF/ > nul
mv -f Тест/SumatraPDF/SumatraPDF-3.2-x64.exe Тест/SumatraPDF/SumatraPDF.exe > nul
7z e SumatraPDF\SumatraPDF-3.2-dbg-x64.zip -oТест\SumatraPDF SumatraPDF.* > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe > nul
if exist Тест\SumatraPDF\crashinfo (cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x64-1.dmp > nul & cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x64-1.txt > nul )
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe > nul
if exist Тест\SumatraPDF\crashinfo (cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x64-2.dmp > nul & cp -f Тест\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x64-2.txt > nul )
rm -fR tcfg Тест test-kit.txt testcase_encrypt.txt > nul
exit