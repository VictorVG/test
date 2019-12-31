@echo off
setlocal enableextensions
set wd=%cd%
chdir /d %wd%
cp -f %DEVEL%\SumatraPDF\Tools\SumatraPDF_testkit.7z ./
7z x SumatraPDF_testkit.7z -aoa -y -r > nul
rm -f SumatraPDF_testkit.7z > nul
cp -f tcfg/true/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2.* ����/SumatraPDF/ > nul
mv -f ����/SumatraPDF/SumatraPDF-3.2.exe ����/SumatraPDF/SumatraPDF.exe
mv -f ����/SumatraPDF/SumatraPDF-3.2.map ����/SumatraPDF/SumatraPDF.map
mv -f ����/SumatraPDF/SumatraPDF-3.2.pdb ����/SumatraPDF/SumatraPDF.pdb
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
rm -f ����/SumatraPDF/SumatraPDF.exe > nul
cp -f tcfg/true/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
cp -f SumatraPDF/SumatraPDF-3.2-x64.* ����/SumatraPDF/ > nul
mv -f ����/SumatraPDF/SumatraPDF-3.2-x64.exe ����/SumatraPDF/SumatraPDF.exe
mv -f ����/SumatraPDF/SumatraPDF-3.2-x64.map ����/SumatraPDF/SumatraPDF.map
mv -f ����/SumatraPDF/SumatraPDF-3.2-x64.pdb ����/SumatraPDF/SumatraPDF.pdb
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe
rm -fR ����/SumatraPDF/sumatrapdfcache > nul
cp -f tcfg/false/SumatraPDF-settings.txt ����/SumatraPDF/ > nul
start /wait /d ����\SumatraPDF ����\SumatraPDF\SumatraPDF.exe
if exist ����\SumatraPDF\sumatrapdfcrash.txt mv -f ����\SumatraPDF\sumatrapdfcrash.txt %wd% > nul
rm -fR tcfg ���� test-kit.txt testcase_encrypt.txt > nul
exit