# =============================================================================
# PATH 配置
# 按优先级从高到低排序
# =============================================================================

# 用户自定义二进制文件路径
if [[ -d "$HOME/bin" ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -d "$HOME/.local/bin" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Homebrew 路径(如果需要)
# if [[ -x "/opt/homebrew/bin/brew" ]]; then
#     eval "$(/opt/homebrew/bin/brew shellenv)"
# fi
