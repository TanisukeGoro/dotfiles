function ghq_all
    curl "https://api.github.com/users/"(echo $argv)"/repos" | jq -r ".[].clone_url" | xargs -L1 ghq get
end
