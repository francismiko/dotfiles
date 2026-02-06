# 使用 tldr 作为快速帮助
function help --wraps='tldr' --description 'alias help=tldr'
    if type -q tldr
        tldr $argv
    else
        command man $argv
    end
end
