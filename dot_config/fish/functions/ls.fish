# 使用 eza 替代 ls
function ls --wraps='eza --icons --group-directories-first' --description 'alias ls=eza'
    if type -q eza
        eza --icons --group-directories-first $argv
    else
        command ls $argv
    end
end
