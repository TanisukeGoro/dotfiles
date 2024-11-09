CODE_DIR = ~/Library/Application\ Support/Code/User
SELF_CODE_DIR = $(MODULE_DIR)/code

CODE_TARGETS += code-install
CODE_CLEAN_TARGETS += code-clean

.PHONY: code-clean
code-clean:
	rm -rf $(CODE_DIR)/keybindings.json
	rm -rf $(CODE_DIR)/settings.json

.PHONY: code-install
code-install: $(CODE_DIR) FORCE
	mkdir -p $(CODE_DIR)
	ln -sf $(SELF_CODE_DIR)/keybindings.json $(CODE_DIR)/keybindings.json
	ln -sf $(SELF_CODE_DIR)/settings.json $(CODE_DIR)/settings.json

.PHONY: FORCE
FORCE: # This empty target ensures code-install always runs
