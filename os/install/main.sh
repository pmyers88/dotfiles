#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE[0]}")"

if [ "$(uname -s)" == "Darwin" ]; then
    ./macos/main.sh
fi
