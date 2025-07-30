# GLM CC

**中文** | [English](README_EN.md)

使用智谱最新模型（GLM-4.5），Moonshot最新模型（Kimi K2）驱动您的 Claude Code。

GLM-4.5免费体验地址：[免费体验 GLM-4.5](https://bigmodel.cn/trialcenter/modeltrial/text)
Kimi K2免费体验地址：[免费体验 Kimi K2](https://www.kimi.com/)

## 快速安装

1. 申请API Key

前往智谱AI开放平台申请 API Key

点击前往：[智谱AI开放平台](https://open.bigmodel.cn/)

右上角个人中心 -> 项目管理 -> API keys -> 添加新的API Key


前往Moonshot AI开放平台申请 API Key

点击前往：[Moonshot AI开放平台](https://platform.moonshot.cn/)

右上角用户中心 -> 组织管理 -> API Key 管理 -> 新建 API Key

2. 快速安装

- 安装 Node.js

不同平台（Windows, Linux, Mac）的安装方式不一样，请参考 [nodejs官网链接](https://nodejs.org/en/download)

确认安装成功：
```
node --version
npm --version
```

- 安装 Claude Code

```
npm install -g @anthropic-ai/claude-code
```

- 运行安装脚本，配置 API Key（不同平台运行不同的脚本）

```
# Windows
.\install-win.ps1

# Linux
./install-linux.sh

# Mac
./install-mac.sh
```

安装脚本先会提示选择GLM or Kimi，然后提示输入 API Key（已做隐藏保护）

- 开始低成本使用 Claude Code

```
claude
```