# 使用 bat 替代 cat
function cat --wraps='bat --paging=never' --description 'alias cat=bat'
    bat --paging=never $argv
end
