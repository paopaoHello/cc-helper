#!/bin/bash

# Claude Configuration Installer
# This script creates .claude/settings.json file in user's home directory

echo -e "\033[32mClaude Configuration Installer\033[0m"
echo -e "\033[32m=============================\033[0m"

# Get user home directory
homeDir="$HOME"

# Create .claude directory
claudeDir="$homeDir/.claude"

if [ ! -d "$claudeDir" ]; then
    mkdir -p "$claudeDir"
fi

# Prompt user for API provider choice
echo ""
echo -e "\033[36mPlease select your API provider:\033[0m"
echo -e "\033[33m1. GLM (Zhipu)\033[0m"
echo -e "\033[33m2. Kimi (Moonshot)\033[0m"

# Validate choice
while true; do
    read -p "Enter your choice (1 or 2): " choice
    if [[ "$choice" == "1" || "$choice" == "2" ]]; then
        break
    else
        echo -e "\033[31mError: Please enter 1 for GLM or 2 for Kimi\033[0m"
    fi
done

# Set BASE_URL based on choice
if [[ "$choice" == "1" ]]; then
    baseUrl="https://open.bigmodel.cn/api/anthropic/"
    providerName="GLM"
else
    baseUrl="https://api.moonshot.cn/anthropic/"
    providerName="Kimi"
fi

echo -e "\033[32m✓ Selected: $providerName\033[0m"

# Prompt user for ANTHROPIC_AUTH_TOKEN
echo ""
echo -e "\033[36mPlease enter your API Key (input will be hidden):\033[0m"
read -s token
echo ""

# Validate token is not empty
if [[ -z "$token" ]]; then
    echo -e "\033[31mError: API Key cannot be empty\033[0m"
    exit 1
fi

# Create settings.json content
jsonContent=$(cat <<EOF
{
  "env": {
    "ANTHROPIC_BASE_URL": "$baseUrl",
    "ANTHROPIC_AUTH_TOKEN": "$token"
  }
}
EOF
)

# Write to file
settingsFile="$claudeDir/settings.json"

# Use printf to save UTF-8 without BOM
printf '%s\n' "$jsonContent" > "$settingsFile"

echo ""
echo -e "\033[32m✓ Installation completed! Claude configuration has been successfully set up.\033[0m"
echo -e "\033[33mConfiguration file location: $settingsFile\033[0m"

echo ""
echo -e "\033[32m✓ Start to use your Claude Code low-cost.\033[0m"
echo -e "\033[33m$ claude\033[0m"
echo ""