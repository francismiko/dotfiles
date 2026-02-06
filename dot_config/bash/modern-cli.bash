# =============================================================================
# 现代化 CLI 工具配置 (Bash/Zsh 兼容)
# 用于增强 shell 环境，适用于 Claude Code 等 agent
# 使用函数而非 alias，确保非交互模式下也能工作
# =============================================================================

# 检查命令是否存在的辅助函数
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# --- eza (ls 替代) ---
if command_exists eza; then
    ls()   { eza --group-directories-first "$@"; }
    ll()   { eza -l --group-directories-first "$@"; }
    la()   { eza -la --group-directories-first "$@"; }
    lt()   { eza --tree --level=2 "$@"; }
    tree() { eza --tree "$@"; }
fi

# --- bat (cat 替代) ---
if command_exists bat; then
    cat() { command bat --paging=never --style=plain "$@"; }
    export BAT_THEME="ansi"
fi

# --- 系统监控 ---
if command_exists btop; then
    top() { command btop "$@"; }
fi

if command_exists dust; then
    du() { command dust "$@"; }
fi

if command_exists duf; then
    df() { command duf "$@"; }
fi

if command_exists procs; then
    ps() { command procs "$@"; }
fi

# --- 辅助工具 ---
if command_exists tldr; then
    help() { command tldr "$@"; }
fi

# --- zoxide (智能 cd) ---
if command_exists zoxide; then
    if [ -n "$ZSH_VERSION" ]; then
        eval "$(zoxide init zsh)"
    elif [ -n "$BASH_VERSION" ]; then
        eval "$(zoxide init bash)"
    fi
fi

# --- ripgrep 配置 ---
if command_exists rg; then
    export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
fi

# --- fzf 集成 ---
if command_exists fzf && command_exists fd; then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git --exclude node_modules --exclude .venv'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git --exclude node_modules --exclude .venv'
fi
