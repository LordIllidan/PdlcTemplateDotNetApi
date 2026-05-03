param(
    [string]$RepositoryRoot = "."
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$root = (Resolve-Path -LiteralPath $RepositoryRoot).Path
$errors = New-Object System.Collections.Generic.List[string]

function Add-Error {
    param([Parameter(Mandatory = $true)][string]$Message)
    $errors.Add($Message)
}

function Get-RelativePath {
    param([Parameter(Mandatory = $true)][string]$Path)
    return [System.IO.Path]::GetRelativePath($root, (Resolve-Path -LiteralPath $Path).Path).Replace("\", "/")
}

$requiredDirectories = @(".", "src", "tests", "docs", "scripts")
foreach ($directory in $requiredDirectories) {
    $contextPath = Join-Path $root "$directory/context.md"
    if (-not (Test-Path -LiteralPath $contextPath)) {
        Add-Error "Missing context.md in $directory."
    }
}

$contextFiles = Get-ChildItem -LiteralPath $root -Recurse -File -Filter "context.md" |
    Where-Object { $_.FullName -notlike "*\bin\*" -and $_.FullName -notlike "*\obj\*" -and $_.FullName -notlike "*\.git\*" }

foreach ($context in $contextFiles) {
    $content = Get-Content -LiteralPath $context.FullName -Raw
    foreach ($section in @("## Purpose", "## Boundaries", "## Important Files", "## Local Commands", "## Decisions", "## Child Contexts")) {
        if ($content -notmatch [regex]::Escape($section)) {
            Add-Error "$((Get-RelativePath -Path $context.FullName)) missing section $section."
        }
    }

    $contextDirectory = Split-Path -Parent $context.FullName
    $childContexts = Get-ChildItem -LiteralPath $contextDirectory -Directory |
        Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "context.md") }

    foreach ($child in $childContexts) {
        $relativeChild = "$($child.Name)/context.md"
        if ($content -notmatch [regex]::Escape($relativeChild)) {
            Add-Error "$((Get-RelativePath -Path $context.FullName)) does not reference child context $relativeChild."
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Host "Context docs error: $_" }
    throw "Context documentation validation failed with $($errors.Count) error(s)."
}

Write-Host "Context documentation validation passed."

