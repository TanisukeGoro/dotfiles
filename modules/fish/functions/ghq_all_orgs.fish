function ghq_all_orgs
    curl -u "TanisukeGoro" "https://api.github.com/orgs/"(echo $argv)"/repos" | jq -r ".[].clone_url" | xargs -L1 ghq get
end
