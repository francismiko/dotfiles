# 使用 procs 替代 ps
function ps --wraps='procs' --description 'alias ps=procs'
    procs $argv
end
