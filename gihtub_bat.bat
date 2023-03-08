@echo off
setlocal

set cmd=git push --set-upstream origin master
echo Running command: %cmd%
echo.

for /f "delims=" %%i in ('%cmd%') do (
    set result=%%i
    echo !result!
)


echo done 


