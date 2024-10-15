# プロンプトの表示を書き換える
if type -q fish
    set -x fish_prompt_show_pwd_dir no
    set -x fish_greeting
    # nix devenv でのログを非表示
    set -gx DIRENV_LOG_FORMAT ""
    eval (direnv hook fish)
end
