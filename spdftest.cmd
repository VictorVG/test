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
cp -f tcfg/true/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2.* ����/SumatraPDF/ > nul
mv -f ����/SumatraPDF/SumatraPDF-3.2.exe ����/SumatraPDF/SumatraPDF.exe > nul
7z e SumatraPDF\SumatraPDF-3.2-dbg-x86.zip -o����\SumatraPDF SumatraPDF.* > nul
mv -f SumatraPDF.* ����/SumatraPDF/ > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe > nul
if exist ����\SumatraPDF\crashinfo (cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x86-1.dmp > nul & cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x86-1.txt > nul )
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe > nul
if exist ����\SumatraPDF\crashinfo (cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x86-2.dmp > nul & cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x86-2.txt > nul )
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
rm -f ����/SumatraPDF/SumatraPDF.exe ����/SumatraPDF/SumatraPDF.map ����/SumatraPDF/SumatraPDF.pdb > nul
cp -f tcfg/true/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2-x64.* ����/SumatraPDF/ > nul
mv -f ����/SumatraPDF/SumatraPDF-3.2-x64.exe ����/SumatraPDF/SumatraPDF.exe > nul
7z e SumatraPDF\SumatraPDF-3.2-dbg-x64.zip -o����\SumatraPDF SumatraPDF.* > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe > nul
if exist ����\SumatraPDF\crashinfo (cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x64-1.dmp > nul & cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x64-1.txt > nul )
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe > nul
if exist ����\SumatraPDF\crashinfo (cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.dmp %wd%\sumatrapdfcrash-x64-2.dmp > nul & cp -f ����\SumatraPDF\crashinfo\sumatrapdfcrash.txt %wd%\sumatrapdfcrash-x64-2.txt > nul )
rm -fR tcfg ���� test-kit.txt testcase_encrypt.txt > nul
exit