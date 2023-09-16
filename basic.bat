REM check current date
show_date_time echo The current date is %date% echo The current time is %time% EXIT /B 0
REM math computation
sum num1 num2 set /a result=%1+%2 echo The sum of %1 and %2 is %result% EXIT /B 0
REM check file exist
file_exist filename if exist %1 ( echo The file %1 exists ) else ( echo The file %1 does not exist ) EXIT /B 0
REM Rename files
ren *.txt *.new
REM Delete temporary files
del %temp%\*.* /f /q
REM Back up data
xcopy /e "C:\MyData" "D:\Backup"