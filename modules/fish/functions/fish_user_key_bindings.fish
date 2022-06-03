function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
    bind \co peco_ghq
    bind \cq peco_z

    # for vi-mode
    fish_vi_key_bindings insert
    bind -M insert \cf forward-char
end
