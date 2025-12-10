# 使用 eza 的长格式
function ll --wraps='eza -l --icons --group-directories-first --git' --description 'alias ll=eza -l'
    eza -l --icons --group-directories-first --git $argv
end
