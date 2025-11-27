# Fish shell keybindings
# Tab: accept autosuggestion | Shift+Tab: complete menu

function fish_user_key_bindings
    bind \t accept-autosuggestion
    bind -k btab complete
end
