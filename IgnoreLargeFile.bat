@echo off

setlocal enabledelayedexpansion

rem Threshold in bytes (100 MB)
set "threshold=104857600"

rem Find files larger than the threshold size and append them to .gitignore
for /r %%i in (*) do (
    set "size=%%~zi"
    if !size! gtr %threshold% (
        echo %%i >> .gitignore
    )
)