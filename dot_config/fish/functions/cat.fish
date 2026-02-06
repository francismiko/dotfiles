# 使用 bat 替代 cat
function cat --wraps='bat --paging=never' --description 'alias cat=bat'
    if type -q bat
        bat --paging=never $argv
    else
        command cat $argv
    end
end
