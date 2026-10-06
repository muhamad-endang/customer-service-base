param(
    [Parameter(Mandatory = $true)]
    [string[]]$Paths,

    [Parameter(Mandatory = $true)]
    [string]$CommitMessage,

    [string]$Remote = "origin"
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path ".git")) {
    throw "Run this script from repository root."
}

if ($Paths.Count -eq 0) {
    throw "At least one explicit path is required."
}

$blockedPatterns = @(
    '(^|[\\/])\.env($|\.)',
    '\.(pem|key|p12|pfx)$',
    '(^|[\\/])(credential|credentials|secret|secrets|token|tokens)([\\/]|$)',
    'cases[\\/].+[\\/]inbox[\\/]'
)

foreach ($path in $Paths) {
    foreach ($pattern in $blockedPatterns) {
        if ($path -match $pattern) {
            throw "Blocked from Git sync because path may be sensitive/local-only: $path"
        }
    }
}

git diff --check
if ($LASTEXITCODE -ne 0) { throw "git diff --check failed." }

Write-Host "Current changes:"
git status --short

git add -- $Paths
if ($LASTEXITCODE -ne 0) { throw "git add failed." }

$staged = git diff --cached --name-only
if (-not $staged) {
    Write-Host "No staged changes. Nothing to commit."
    exit 0
}

Write-Host "Staged files:"
$staged | ForEach-Object { Write-Host " - $_" }

git commit -m $CommitMessage
if ($LASTEXITCODE -ne 0) { throw "git commit failed." }

$branch = git branch --show-current
if (-not $branch) { throw "Unable to determine active branch." }

git push $Remote $branch
if ($LASTEXITCODE -ne 0) {
    throw "git push failed. Commit exists locally but was not pushed."
}

Write-Host "Git sync successful: $Remote/$branch"
git status --short
