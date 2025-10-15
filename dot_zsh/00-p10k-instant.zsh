# =============================================================================
# Powerlevel10k Instant Prompt
# 必须在配置文件最前面加载,以实现即时提示符
# =============================================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
