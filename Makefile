TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src
TMP_DIR = $(TOP_DIR)/tmp

####################
#      include     #
####################

# /make/*.mkが全て展開される
-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile
