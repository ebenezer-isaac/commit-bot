@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%" & set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set fullstamp=%DD%/%MM%/%YYYY% %HH%:%Min%:%Sec%
echo "%fullstamp%" >> "%YYYY%.txt"
git add .
git commit -m "bootlog update"
git push
pause