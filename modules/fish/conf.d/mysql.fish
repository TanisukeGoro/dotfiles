if type -q mysql
    # for mysql@5.7
    set -gx LDFLAGS "-L/usr/local/opt/mysql@5.7/lib"
    set -gx CPPFLAGS "-I/usr/local/opt/mysql@5.7/include"
    set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
end
