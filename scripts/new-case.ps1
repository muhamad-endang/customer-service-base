param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[a-z0-9]+(?:-[a-z0-9]+)*$')]
    [string]$Slug,

    [Parameter(Mandatory = $true)]
    [string]$ClientName
)

$ErrorActionPreference = 'Stop'
$root = (Get-Location).Path
$caseRoot = Join-Path $root "cases\$Slug"

if (Test-Path $caseRoot) {
    throw "Case '$Slug' already exists at $caseRoot"
}

$dirs = @(
    $caseRoot,
    "$caseRoot\inbox",
    "$caseRoot\context",
    "$caseRoot\developer\requests",
    "$caseRoot\developer\responses",
    "$caseRoot\management\requests",
    "$caseRoot\management\responses",
    "$caseRoot\documents",
    "$caseRoot\output"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

$template = Get-Content (Join-Path $root "templates\CASE.template.md") -Raw
$caseContent = $template.Replace("{{CLIENT_NAME}}", $ClientName)
$caseContent = $caseContent.Replace("{{CASE_SLUG}}", $Slug)
$caseContent = $caseContent.Replace("{{DATE}}", (Get-Date -Format 'yyyy-MM-dd'))

Set-Content -Path (Join-Path $caseRoot "CASE.md") -Value $caseContent -Encoding UTF8
New-Item -ItemType File -Path (Join-Path $caseRoot "inbox\.gitkeep") -Force | Out-Null

Write-Host "Created case: $caseRoot"
Write-Host "Place new screenshots/files in: $caseRoot\inbox"
