# 使用 tldr 作为快速帮助
function help --wraps='tldr' --description 'alias help=tldr'
    tldr $argv
end
