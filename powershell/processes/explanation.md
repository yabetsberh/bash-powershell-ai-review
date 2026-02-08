# Process Management Review

## Issues with `bad_ai_script.ps1`
1.  **Error Handling**: If the process "notepad" is not running, `Stop-Process` will throw an error, causing the automation script to fail prematurely.

## Improvements in `improved_script.ps1`
1.  **Existence Check**: Uses `Get-Process` with `-ErrorAction SilentlyContinue` to verify existence before attempting to stop it, ensuring the script runs smoothly whether the process exists or not.