# PowerShell script to update web-dev skills from GitHub repository
$ErrorActionPreference = "Stop"

$skillsDir = $PSScriptRoot
Write-Host "Updating web-dev skills in: $skillsDir" -ForegroundColor Cyan

$zipUrl = "https://github.com/jeffallan/claude-skills/archive/refs/heads/main.zip"
$tempZip = "$env:TEMP\claude-skills-update.zip"
$tempExtract = "$env:TEMP\claude-skills-update-extract"

try {
    Write-Host "Downloading latest claude-skills release..." -ForegroundColor Yellow
    curl.exe -sL -o $tempZip $zipUrl

    if (Test-Path $tempExtract) { Remove-Item -Path $tempExtract -Recurse -Force }
    New-Item -ItemType Directory -Path $tempExtract -Force | Out-Null

    Write-Host "Extracting archive..." -ForegroundColor Yellow
    tar.exe -xf $tempZip -C $tempExtract

    $extractedSkills = "$tempExtract\claude-skills-main\skills"
    if (Test-Path $extractedSkills) {
        Write-Host "Updating skills..." -ForegroundColor Green
        Copy-Item -Path $extractedSkills -Destination $skillsDir -Recurse -Force
    }

    $extractedDocs = "$tempExtract\claude-skills-main"
    $targetDocs = "$skillsDir\docs"
    if (!(Test-Path $targetDocs)) { New-Item -ItemType Directory -Path $targetDocs -Force | Out-Null }
    Get-ChildItem -Path $extractedDocs -Filter "*.md" | Copy-Item -Destination $targetDocs -Force

    $count = (Get-ChildItem -Path "$skillsDir\skills\*\SKILL.md").Count
    Write-Host "Successfully updated $count skills!" -ForegroundColor Green
}
catch {
    Write-Host "Failed to update skills: $_" -ForegroundColor Red
}
finally {
    if (Test-Path $tempZip) { Remove-Item -Path $tempZip -Force -ErrorAction SilentlyContinue }
    if (Test-Path $tempExtract) { Remove-Item -Path $tempExtract -Recurse -Force -ErrorAction SilentlyContinue }
}
