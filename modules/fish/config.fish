if type -q tmux && test -z $TMUX && status --is-login
    tmux_attach_session_if_needed
end

source ~/.config/fish/chefrepi.fish
source ~/.config/fish/project.fish
