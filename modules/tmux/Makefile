TMUX_DIR = ~/.tmux
PLUGIN_DIR = $(TMUX_DIR)/plugins/tpm
PROJECT_DIR = $(TMUX_DIR)/projects
TMUX_GITHUB_URL = https://github.com/tmux-plugins/tpm
# リポジトリが dotfiles-private の前提
PRIVATE_MODULE_DIR = $(TOP_DIR)-private/modules

TMUX_CLEAN_TARGETS += tmux-clean
TMUX_TARGETS += tmux-install

.PHONY: tmux-clean
tmux-clean:
	rm -rf $(PLUGIN_DIR)
	rm -rf $(PROJECT_DIR)

tmux-install: $(PLUGIN_DIR) $(PROJECT_DIR)

$(PLUGIN_DIR):
	git clone --depth=1 $(TMUX_GITHUB_URL) $(PLUGIN_DIR)

$(PROJECT_DIR):
	mkdir -p $(PROJECT_DIR)
	for file in $(PRIVATE_MODULE_DIR)/tmux/projects/*; do \
		if [ -f "$$file" ]; then \
			ln -s $$file $(PROJECT_DIR)/; \
		fi \
	done
