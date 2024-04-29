function peco_nodebrew
    set -l new_version (nodebrew list | grep -v "current" | grep -v "^\$" | grep -v ".DS_Store"| peco)
    nodebrew use $new_version
end

