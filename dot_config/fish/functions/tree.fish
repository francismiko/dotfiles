# 使用 eza 树形视图替代 tree
function tree --wraps='eza --tree --icons' --description 'alias tree=eza --tree'
    if type -q eza
        eza --tree --icons $argv
    else
        command tree $argv
    end
end
