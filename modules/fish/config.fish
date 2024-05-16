if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end

test -f ~/.config/fish/chefrepi.fish && source ~/.config/fish/chefrepi.fish
test -f ~/.config/fish/project.fish &&  source ~/.config/fish/project.fish
