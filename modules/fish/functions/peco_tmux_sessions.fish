function peco_tmux_sessions
    set -l query (commandline)

    if test -n $query
        set peco_flags --query "$query"
    end

    tmux list-sessions | peco | cut -d : -f 1 | read selected

    if set -q TMUX
        tmux switch-client -t selected
        commandline -r ''
        commandline -f repaint
    end
end
