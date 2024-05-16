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

# 今後の対応
# make all とかで必要な make *-install を呼び出して実行できるようにする
# make mac-all, make-linux-all とかでOSごとに実行できるとよし。
# こんな感じで *_TARGETS を指定してやるイメージ
# https://github.com/takeokunn/dotfiles/blob/eaf5070405553757810cb44261256d4b69e94fa5/Makefile#L25
