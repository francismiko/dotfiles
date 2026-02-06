# 使用 btop 替代 top
function top --wraps='btop' --description 'alias top=btop'
    if type -q btop
        btop $argv
    else
        command top $argv
    end
end
