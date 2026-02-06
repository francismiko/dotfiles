# 使用 eza 树形视图
function lt --wraps='eza --tree --icons --level=2' --description 'alias lt=eza tree'
    eza --tree --icons --level=2 $argv
end
