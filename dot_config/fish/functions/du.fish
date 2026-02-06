# 使用 dust 替代 du
function du --wraps='dust' --description 'alias du=dust'
    if type -q dust
        dust $argv
    else
        command du $argv
    end
end
