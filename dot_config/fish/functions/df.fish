# 使用 duf 替代 df
function df --wraps='duf' --description 'alias df=duf'
    duf $argv
end
