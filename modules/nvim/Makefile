VIM_DIR = ~/.config/nvim
VIM_TOML_DIR = $(VIM_DIR)/toml
VIM_PLUGINS_DIR = $(VIM_DIR)/plugins
VIM_CACHE_DIR = ~/.cache/dein
SELF_VIM_DIR = $(MODULE_DIR)/nvim
SELF_VIM_TOML_DIR = $(MODULE_DIR)/nvim/toml
SELF_VIM_PLUGINS_DIR = $(MODULE_DIR)/nvim/plugins

VIM_DEIN_URL = https://github.com/Shougo/dein.vim

NVIM_CLEAN_TARGETS += nvim-clean
NVIM_TARGETS += nvim-install

.PHONY: nvim-clean
nvim-clean:
	rm -rf $(VIM_DIR)
	rm -rf $(VIM_CACHE_DIR)

.PHONY: nvim-install
nvim-install: $(VIM_DIR) $(VIM_TOML_DIR) $(VIM_PLUGINS_DIR)

$(VIM_DIR):
	mkdir -p $(VIM_DIR)
	ln -sf $(SELF_VIM_DIR)/init.vim $(VIM_DIR)/init.vim
	# ln -sf $(SELF_VIM_DIR)/coc-settings.json $(VIM_DIR)/coc-settings.json

$(VIM_TOML_DIR):
	mkdir -p $(VIM_TOML_DIR)
	ln -sf $(SELF_VIM_TOML_DIR)/basic.toml $(VIM_TOML_DIR)/basic.toml
# 	ln -sf $(SELF_VIM_TOML_DIR)/cursor.toml $(VIM_TOML_DIR)/cursor.toml
# 	ln -sf $(SELF_VIM_TOML_DIR)/filer.toml $(VIM_TOML_DIR)/filer.toml
	ln -sf $(SELF_VIM_TOML_DIR)/lang.toml $(VIM_TOML_DIR)/lang.toml
# 	ln -sf $(SELF_VIM_TOML_DIR)/theme.toml $(VIM_TOML_DIR)/theme.toml

$(VIM_PLUGINS_DIR):
	mkdir -p $(VIM_PLUGINS_DIR)
# 	ln -sf $(SELF_VIM_PLUGINS_DIR)/airline.vim $(VIM_PLUGINS_DIR)/airline.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/coc.vim $(VIM_PLUGINS_DIR)/coc.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/easymotion.vim $(VIM_PLUGINS_DIR)/easymotion.vim
#	ln -sf $(SELF_VIM_PLUGINS_DIR)/denite.vim $(VIM_PLUGINS_DIR)/denite.vim
# 	ln -sf $(SELF_VIM_PLUGINS_DIR)/defx.vim $(VIM_PLUGINS_DIR)/defx.vim
# 	ln -sf $(SELF_VIM_PLUGINS_DIR)/skkeleton.vim $(VIM_PLUGINS_DIR)/skkeleton.vim
# 	ln -sf $(SELF_VIM_PLUGINS_DIR)/nvim-treesitter.vim $(VIM_PLUGINS_DIR)/nvim-treesitter.vim
# 	ln -sf $(SELF_VIM_PLUGINS_DIR)/undotree.vim $(VIM_PLUGINS_DIR)/undotree.vim
