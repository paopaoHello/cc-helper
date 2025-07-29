# Claude Configuration Installer
# This script creates .claude/settings.json file in user's home directory

Write-Host "Claude Configuration Installer" -ForegroundColor Green
Write-Host "=============================" -ForegroundColor Green

# Get user home directory
$homeDir = $env:USERPROFILE
Write-Host "User home directory: $homeDir" -ForegroundColor Yellow

# Create .claude directory
$claudeDir = Join-Path $homeDir ".claude"
Write-Host "Creating directory: $claudeDir" -ForegroundColor Yellow

if (-not (Test-Path $claudeDir)) {
    New-Item -ItemType Directory -Path $claudeDir -Force | Out-Null
    Write-Host "✓ Directory created successfully" -ForegroundColor Green
} else {
    Write-Host "✓ Directory already exists" -ForegroundColor Green
}

# Prompt user for ANTHROPIC_AUTH_TOKEN
Write-Host ""
Write-Host "Please enter your API Key:" -ForegroundColor Cyan
$token = Read-Host

# Validate token is not empty
if ([string]::IsNullOrWhiteSpace($token)) {
    Write-Host "Error: API Key cannot be empty" -ForegroundColor Red
    exit 1
}

# Create settings.json content
$jsonContent = @{
env = @{
ANTHROPIC_BASE_URL = "https://open.bigmodel.cn/api/anthropic/"
ANTHROPIC_AUTH_TOKEN = $token
}
} | ConvertTo-Json -Depth 10

# Write to file
$settingsFile = Join-Path $claudeDir "settings.json"
Write-Host ""
Write-Host "Creating configuration file: $settingsFile" -ForegroundColor Yellow

# use this way to save settings.json result in UTF-8-BOM which Claude Code cannot read
# try {
#     $jsonContent | Out-File -FilePath $settingsFile -Encoding utf8
#     Write-Host "✓ Configuration file created successfully" -ForegroundColor Green
# } catch {
#     Write-Host "✗ Configuration file creation failed: $_" -ForegroundColor Red
#     exit 1
# }

# Use .NET method to save UTF-8
try {
    $fileStream = [System.IO.StreamWriter]::new($settingsFile, $false, [System.Text.Encoding]::UTF8)
    $fileStream.Write($jsonContent)
    Write-Host "✓ Configuration file created successfully" -ForegroundColor Green
} catch {
    Write-Host "✗ Configuration file creation failed" -ForegroundColor Red
    exit 1
} finally {
    if ($fileStream) {
        $fileStream.Close()
    }
}

# Display file content
Write-Host ""
Write-Host "Configuration file content:" -ForegroundColor Cyan
Write-Host "-------------------"
Get-Content $settingsFile
Write-Host "-------------------"

Write-Host ""
Write-Host "✓ Installation completed! Claude configuration has been successfully set up." -ForegroundColor Green
Write-Host "Configuration file location: $settingsFile" -ForegroundColor Yellow

Write-Host ""
Write-Host "✓ Start to use your Claude Code low-cost." -ForegroundColor Green
Write-Host "$ claude" -ForegroundColor Yellow
Write-Host ""