@echo off
setlocal enableextensions
set wd=%cd%
chdir /d %wd%
cp -f %DEVEL%\SumatraPDF\Tools\SumatraPDF_testkit.7z ./
7z x SumatraPDF_testkit.7z -aoa -y -r > nul
rm -f SumatraPDF_testkit.7z > nul
cp -f tcfg/true/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2.* Тест/SumatraPDF/ > nul
mv -f Тест/SumatraPDF/SumatraPDF-3.2.exe Тест/SumatraPDF/SumatraPDF.exe
mv -f Тест/SumatraPDF/SumatraPDF-3.2.map Тест/SumatraPDF/SumatraPDF.map
mv -f Тест/SumatraPDF/SumatraPDF-3.2.pdb Тест/SumatraPDF/SumatraPDF.pdb
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
rm -f Тест/SumatraPDF/SumatraPDF.exe > nul
cp -f tcfg/true/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2-x64.* Тест/SumatraPDF/ > nul
mv -f Тест/SumatraPDF/SumatraPDF-3.2-x64.exe Тест/SumatraPDF/SumatraPDF.exe
mv -f Тест/SumatraPDF/SumatraPDF-3.2-x64.map Тест/SumatraPDF/SumatraPDF.map
mv -f Тест/SumatraPDF/SumatraPDF-3.2-x64.pdb Тест/SumatraPDF/SumatraPDF.pdb
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe
rm -fR Тест/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt Тест/SumatraPDF/ > nul
start /wait /d Тест\SumatraPDF Тест\SumatraPDF\SumatraPDF.exe
if exist Тест\SumatraPDF\sumatrapdfcrash.txt mv -f Тест\SumatraPDF\sumatrapdfcrash.txt %wd% > nul
rm -fR tcfg Тест test-kit.txt testcase_encrypt.txt > nul
exit