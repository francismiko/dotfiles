# 使用 eza 显示所有文件
function la --wraps='eza -la --icons --group-directories-first --git' --description 'alias la=eza -la'
    if type -q eza
        eza -la --icons --group-directories-first --git $argv
    else
        command ls -la $argv
    end
end
