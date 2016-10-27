#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")"

./create_symlinks.sh
./install/main.sh
