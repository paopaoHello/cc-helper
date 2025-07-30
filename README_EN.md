# GLM CC

[中文](README.md) | **English**

Power your Claude Code with the latest models from Zhipu AI (GLM-4.5) and Moonshot AI (Kimi K2).

GLM-4.5 free trial: [Try GLM-4.5 for Free](https://bigmodel.cn/trialcenter/modeltrial/text)

Kimi K2 free trial: [Try Kimi K2 for Free](https://www.kimi.com/)

## Quick Installation

1. Apply for API Key

Get your API Key from Zhipu AI Open Platform

Click here: [Zhipu AI Open Platform](https://open.bigmodel.cn/)

Top right corner: Personal Center -> Project Management -> API keys -> Add new API Key

Get your API Key from Moonshot AI Open Platform

Click here: [Moonshot AI Open Platform](https://platform.moonshot.cn/)

Top right corner: User Center -> Organization Management -> API Key Management -> Create new API Key

2. Quick Installation

- Install Node.js

Installation methods vary by platform (Windows, Linux, Mac). Please refer to [Node.js official website](https://nodejs.org/en/download)

Verify successful installation:
```
node --version
npm --version
```

- Install Claude Code

```
npm install -g @anthropic-ai/claude-code
```

- Run installation script to configure API Key (run different scripts for different platforms)

```
# Windows
.\install-win.ps1

# Linux
./install-linux.sh

# Mac
./install-mac.sh
```

The installation script will first prompt you to choose between GLM or Kimi, then ask for your API Key (input is hidden for security)

- Start using Claude Code at low cost

```
claude
```