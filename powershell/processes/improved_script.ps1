# Safe PowerShell Script
# This script checks if the process is running first to avoid errors
if (Get-Process -Name "notepad" -ErrorAction SilentlyContinue) {
    Stop-Process -Name "notepad" -Force
    Write-Host "Notepad stopped successfully."
} else {
    Write-Host "Notepad is not currently running."
}