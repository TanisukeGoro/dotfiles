function peco_z
    set -l query (commandline)

    if test -n $query
        set peco_flags --query "$query"
    end

    z -l | tac | peco $peco_flags --layout=top-down | awk '{ print $2 }' | read recent
    if [ $recent ]
        cd $recent
        commandline -r ''
        commandline -f repaint
    end
end
