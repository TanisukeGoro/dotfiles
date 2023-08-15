CONFIG_PATH = ~/.config
STARSHIP_FILE = starship.toml
STARSHIP_CONFIG_FILE = $(CONFIG_PATH)/starship.toml
SELF_STARSHIP_DIR = $(MODULE_DIR)/starship

STARSHIP_TARGETS += starship-install
STARSHIP_CLEAN_TARGETS += starship-clean

.PHONY: starship-clean
starship-clean:
	rm -rf $(STARSHIP_CONFIG_FILE)

.PHONY: starship-install
starship-install:
	ln -sf $(SELF_STARSHIP_DIR)/$(STARSHIP_FILE) $(STARSHIP_CONFIG_FILE)
