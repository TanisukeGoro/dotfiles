# for pyenv
if type -q pyenv
    # Add pyenv executable to PATH by running
    # the following interactively:

    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/shims $fish_user_paths

    # Load pyenv automatically by appending
    # the following to ~/.config/fish/config.fish:

    pyenv init - | source
end
