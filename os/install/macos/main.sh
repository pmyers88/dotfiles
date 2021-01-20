#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")"

./xcode.sh
./brew.sh
./brew-cask.sh
./brew-fonts.sh
#./brew-science.sh
./antigen.sh
#./nvm.sh
./dock.sh
