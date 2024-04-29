function peco_phpbrew
    set -l new_version (phpbrew list | grep -v "*" | peco)
    # trim text
    set -l new_version (echo $new_version | tr -d '[:space:]')
    phpbrew use $new_version
end

