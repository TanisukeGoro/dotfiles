TMUX_DIR = ~/.tmux
PLUGIN_DIR = $(TMUX_DIR)/plugins/tpm
TMUX_GITHUB_URL = https://github.com/tmux-plugins/tpm
PRIVATE_PROJECT_DIR = $(TOP_DIR)-private/modules

TMUX_CLEAN_TARGETS += tmux-clean
TMUX_TARGETS += tmux-install

.PHONY: tmux-clean
tmux-clean:
	rm -rf $(PLUGIN_DIR)
	rm -rf $(PRIVATE_PROJECT_DIR)

tmux-install: $(PLUGIN_DIR) $(PRIVATE_PROJECT_DIR)

$(PLUGIN_DIR):
	git clone --depth=1 $(TMUX_GITHUB_URL) $(PLUGIN_DIR)

$(PRIVATE_PROJECT_DIR):
	mkdir -p $(PRIVATE_PROJECT_DIR)
	for file in $(MODULE_DIR)/tmux/projects/*; do \
		if [ -f "$$file" ]; then \
			ln -s $$file $(PRIVATE_PROJECT_DIR)/; \
		fi \
	done
