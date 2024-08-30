@echo off
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0_post.ps1"
pause
if exist "_posts\" (
    for /r "_posts\" %%f in (*.md) do (
        set "newest_file=%%f"
    )
    code "%newest_file%"
)
