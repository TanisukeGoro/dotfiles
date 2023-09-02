## nvim install and clean

```bash
# clean
make nvim-clean

# install
make nvim-install

# run script after nvim bootstrap for coc.nvim
call coc#util#install()
```

## fish install and clean

```bash
# clean
make fish-clean

# install
make fish-install

# update
make fish-update
```

## tmux install and clean

```bash
# clean
make tmux-clean

# install
make tmux-install
# Press `prefix` + `I` to install the plugins in the tmux-session.
```

## homebrew backup

バックアップは Brewfile に書き込む

```bash
# install
brew bundle

# backup
brew bundle dump
```
