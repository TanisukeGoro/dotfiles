function ghq_remove_all
    ghq list --full-path | grep -E "/"(echo $argv)"/" | xargs -L1 rm -fr
end
