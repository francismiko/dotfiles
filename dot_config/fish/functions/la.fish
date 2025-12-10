# 使用 eza 显示所有文件
function la --wraps='eza -la --icons --group-directories-first --git' --description 'alias la=eza -la'
    eza -la --icons --group-directories-first --git $argv
end
