# GLM CC

**中文** | [English](README_EN.md)

使用智谱的最新模型（GLM-4.5）驱动您的 Claude Code。

免费体验地址：[免费体验智谱 GLM-4.5 最强旗舰](https://bigmodel.cn/trialcenter/modeltrial/text)

## 快速安装

1. 前往智谱AI开放平台申请 API Key。

点击前往：[智谱AI开放平台](https://open.bigmodel.cn/)

右上角个人中心 -> 项目管理 -> API keys -> 添加新的API Key

2. 快速安装

### Windows平台

- 安装 Node.js

点击下载安装包：[nodejs windows x64 安装包](https://nodejs.org/dist/v22.17.1/node-v22.17.1-x64.msi)

确认安装成功：
```
node --version
npm --version
```

- 安装 Claude Code

```
npm install -g @anthropic-ai/claude-code
```

- 设置 GLM API Key

```
.\install-win.ps1
```

运行脚本会提示输入 API Key

- 开始低成本使用 Claude Code

```
claude
```