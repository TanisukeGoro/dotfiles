#!/bin/bash
TOP_DIR=$(cd $(dirname $0)/..;pwd)
CONFIG_HOMEBREW_DIR=$TOP_DIR/config/homebrew

while read tap; do
    brew tap $tap
done < $CONFIG_HOMEBREW_DIR/taps.txt

while read pkg; do
    brew install $pkg
done < $CONFIG_HOMEBREW_DIR/pkgs.txt

while read cask; do
    brew install --cask $cask
done < $CONFIG_HOMEBREW_DIR/cask.txt

brew link openssl --force
