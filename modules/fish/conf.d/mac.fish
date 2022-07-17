if test (uname) = "Darwin"
    # [ config ]
    # open default editor
    set -x EDITOR /usr/local/bin/code

    # brew setting
    set -x HOMEBREW_NO_AUTO_UPDATE 1

    # for gettext
    set -gx LDFLAGS "-L/usr/local/opt/gettext/lib"
    set -gx CPPFLAGS "-I/usr/local/opt/gettext/include"
    set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
    fish_add_path "/opt/homebrew/bin"
    set -x GPG_TTY (tty) 

    # openssl@1.1
    set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

    # [ umask ]
    umask 022

    # [ alias ]
    # for VESTA app
    alias vesta="open -a /Applications/VESTA.app/Contents/MacOS/VESTA"

    # for Tree
    alias tree="tree -N"

    # for ls -la to l
    alias l 'ls -la'

    # for XRD ploter
    alias xrd="python /Users/abekeishi/ghq/github.com/TanisukeGoro/XRDploter/XRD_auto.py"

    # for ConvertCharCode.sh
    alias charconv="sh /Users/abekeishi/ghq/github.com/TanisukeGoro/ExchangeCharCode/ConvertCharCode.sh"

    # for directory path copy
    alias dir="pwd | pbcopy | pwd"

    # for nvim
    alias n="nvim"

end
