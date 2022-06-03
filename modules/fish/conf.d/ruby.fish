# for gem
if type -q gem
    set -x GEM_HOME $HOME/.gem
    fish_add_path $GEM_HOME/bin
end

# for rbenv
if type -q rbenv
    fish_add_path $HOME/.rbenv/bin
    source (rbenv init - | psub)
    set -x theme_display_ruby no
end
