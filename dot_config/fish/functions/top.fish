# 使用 btop 替代 top
function top --wraps='btop' --description 'alias top=btop'
    btop $argv
end
