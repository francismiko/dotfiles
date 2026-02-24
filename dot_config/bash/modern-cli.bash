# =============================================================================
# 现代化 CLI 工具配置 (Bash/Zsh 兼容)
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
