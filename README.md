# Dotfiles

个人配置文件，使用 [chezmoi](https://www.chezmoi.io/) 管理。

## 包含的配置

```
Shell
  .zshrc, .zprofile          Zsh 主配置
  .zsh/                      模块化配置 (环境变量、别名、函数等)

Git
  .gitconfig                 Git 配置 (SSH 签名、代理)
  .gitallowedsigners         SSH 签名验证列表

SSH
  .ssh/config                SSH 客户端配置 (Secretive + OrbStack)

包管理
  Brewfile                   Homebrew 包列表
```

## 快速开始

### 初次安装

```bash
# 安装 chezmoi 并拉取配置
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply francismiko

# 或手动安装
brew install chezmoi
chezmoi init git@github.com:francismiko/dotfiles.git
chezmoi apply
```

### 日常使用

```bash
# 编辑配置
chezmoi edit ~/.zshrc

# 应用更改
chezmoi apply

# 更新到远程
chezmoi cd
git add . && git commit -m "更新配置" && git push

# 拉取远程更新
chezmoi update
```

## 配置特性

- **模板化**: 使用 `{{ .chezmoi.homeDir }}` 等变量支持多机器
- **模块化**: Zsh 配置按功能拆分为独立模块 (00-99 数字顺序加载)
- **安全**: 敏感文件使用 `private_` 前缀自动设置 600 权限

## 环境

- macOS (Darwin)
- Zsh + Oh My Zsh + Powerlevel10k
- Homebrew
- Secretive (SSH Agent)
- OrbStack
