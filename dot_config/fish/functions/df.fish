# 使用 duf 替代 df
function df --wraps='duf' --description 'alias df=duf'
    if type -q duf
        duf $argv
    else
        command df $argv
    end
end
