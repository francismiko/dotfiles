# 使用 dust 替代 du
function du --wraps='dust' --description 'alias du=dust'
    dust $argv
end
