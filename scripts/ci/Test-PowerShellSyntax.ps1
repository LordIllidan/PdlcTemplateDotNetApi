param(
    [string]$ScriptsRoot = "scripts"
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$files = @(Get-ChildItem -LiteralPath $ScriptsRoot -Recurse -File -Filter "*.ps1")
foreach ($file in $files) {
    $tokens = $null
    $errors = $null
    [System.Management.Automation.Language.Parser]::ParseFile($file.FullName, [ref]$tokens, [ref]$errors) | Out-Null
    if ($errors.Count -gt 0) {
        Write-Host "PowerShell syntax error in $($file.FullName)"
        $errors | ForEach-Object { Write-Host $_.Message }
        throw "PowerShell syntax validation failed."
    }
}

Write-Host "PowerShell syntax validation passed."

