# =============================================================================
# 现代化 CLI 工具配置
# 函数别名已移至 ~/.config/fish/functions/ 目录
# 此文件仅保留环境变量和初始化配置
# =============================================================================

# --- zoxide (cd 智能跳转) ---
if type -q zoxide
    zoxide init fish | source
end

# --- fzf 集成增强 ---
if type -q fzf; and type -q fd
    set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --exclude .git --exclude node_modules --exclude .venv'
    set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
    set -gx FZF_ALT_C_COMMAND 'fd --type d --hidden --exclude .git --exclude node_modules --exclude .venv'
end
