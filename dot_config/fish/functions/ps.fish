# 使用 procs 替代 ps
function ps --wraps='procs' --description 'alias ps=procs'
    if type -q procs
        procs $argv
    else
        command ps $argv
    end
end
