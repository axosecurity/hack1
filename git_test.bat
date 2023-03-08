
@echo off
setlocal enabledelayedexpansion

set cmd=nslookup facebook.com 
echo Running command: %cmd%
echo.

for /f "tokens=* delims=" %%i in ('%cmd%') do (
    set "output=!output!%%i\n"
)

echo Output of %cmd% :

echo !output!


set cmd2=git remote add origin https://github.com/%github_username%/%repo_name%.git
echo Running command: %cmd2%
echo.

for /f "delims=" %%i in ('%cmd2%') do (
    set result=%%i
    echo !result!
)

for /f "tokens=* delims=" %%i in ('%cmd%') do (
    set "output=!output!%%i\n"
)


