# =============================================================================
# 现代化 CLI 工具配置 (Bash)
# 用于增强 bash 环境，适用于 Claude Code 等 agent
# =============================================================================

# 检查命令是否存在的辅助函数
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# --- eza (ls 替代) ---
# 注意：不使用图标，保持输出简洁便于解析
if command_exists eza; then
    alias ls='eza --group-directories-first'
    alias ll='eza -l --group-directories-first'
    alias la='eza -la --group-directories-first'
    alias lt='eza --tree --level=2'
    alias tree='eza --tree'
fi

# --- bat (cat 替代) ---
# 使用 plain 样式，便于 agent 解析
if command_exists bat; then
    alias cat='bat --paging=never --style=plain'
    export BAT_THEME="ansi"
fi

# --- 系统监控 ---
if command_exists btop; then
    alias top='btop'
fi

if command_exists dust; then
    alias du='dust'
fi

if command_exists duf; then
    alias df='duf'
fi

if command_exists procs; then
    alias ps='procs'
fi

# --- 辅助工具 ---
if command_exists tldr; then
    alias help='tldr'
fi

# --- zoxide (智能 cd) ---
if command_exists zoxide; then
    eval "$(zoxide init bash)"
fi

# --- ripgrep 配置 ---
if command_exists rg; then
    export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
fi

# --- fzf 集成 ---
if command_exists fzf && command_exists fd; then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
fi
