# 使用 eza 的长格式
function ll --wraps='eza -l --icons --group-directories-first --git' --description 'alias ll=eza -l'
    if type -q eza
        eza -l --icons --group-directories-first --git $argv
    else
        command ls -l $argv
    end
end
