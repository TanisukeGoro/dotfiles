# markdown memo
function mdm
    set -l query (commandline)

    if test -n $query
        set peco_flags --layout=bottom-up --query
    end

    /bin/ls -1 $HOME/markdown_memo | peco $peco_flags | read recent

    if [ $recent ]
        # 対象のディレクトリ配下で空のmdファイルがあれば削除する
        # --type file --type empty
        fd . $HOME/markdown_memo/$recent -tf -te -X rm -x

        # 対象のディレクトリ配下で空のmdファイルを作成する
        set -l timestamp (date +"%Y%m%d%H%M%S")
        set -l filename "$HOME/markdown_memo/$recent/$timestamp.md"
        touch $filename
        code -n $HOME/markdown_memo/$recent
        code $HOME/markdown_memo/$recent/$timestamp.md
    end
end
