@echo off
setlocal enabledelayedexpansion

set cmd=nslookup facebook.com 
echo Running command: %cmd%
echo.

(for /f "tokens=* delims=" %%i in ('%cmd%') do (
    set "output=%%i"
    echo ^<span style="color: green"^>!output!^</span^>
)) > output.txt

echo Output of %cmd%:
type output.txt