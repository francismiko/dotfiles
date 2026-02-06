# 使用 eza 树形视图
function lt --wraps='eza --tree --icons --level=2' --description 'alias lt=eza tree'
    if type -q eza
        eza --tree --icons --level=2 $argv
    else
        command ls -R $argv
    end
end
