function peco_tmux
    set -l query (commandline)

    if test -n $query
        set peco_flags --layout=bottom-up --query
    end

    # ~/.tmux/projects にあるファイル名を peco で選択
    /bin/ls -1 ~/.tmux/projects | peco $peco_flags | read recent
    if [ $recent ]
        fish ~/.tmux/projects/$recent
        commandline -r ''
        commandline -f repaint
    end
end
