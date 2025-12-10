# =============================================================================
# 现代化 CLI 工具配置
# 函数别名已移至 ~/.config/fish/functions/ 目录
# 此文件仅保留环境变量和初始化配置
# =============================================================================

# --- bat 环境变量 ---
if type -q bat
    set -gx BAT_THEME "Monokai Extended"
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
end

# --- zoxide (cd 智能跳转) ---
if type -q zoxide
    zoxide init fish | source
end

# --- ripgrep 配置 ---
if type -q rg
    set -gx RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"
end

# --- fzf 集成增强 ---
if type -q fzf; and type -q fd
    set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git'
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx FZF_ALT_C_COMMAND 'fd --type d --hidden --follow --exclude .git'
end
