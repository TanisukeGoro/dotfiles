AEROSPACE_DIR = ~/.config/aerospace
SELF_AEROSPACE_DIR = $(MODULE_DIR)/aerospace

AEROSPACE_CLEAN_TARGETS += aerospace-clean
AEROSPACE_TARGETS += aerospace-install

.PHONY: aerospace-install
aerospace-install: $(AEROSPACE_DIR)
	ln -sf $(SELF_AEROSPACE_DIR)/aerospace.toml $(AEROSPACE_DIR)/aerospace.toml

$(AEROSPACE_DIR):
	mkdir -p $(AEROSPACE_DIR)

.PHONY: aerospace-clean
aerospace-clean:
	rm -rf $(AEROSPACE_DIR)
