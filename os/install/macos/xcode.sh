#!/usr/bin/env zsh

agree_with_xcode_license() {

    sudo xcodebuild -license accept
    echo "Agree to terms of the XCode license"
}

install_xcode() {
    xcode-select --install &> /dev/null

    until is_xcode_installed; do
        sleep 5
    done

    echo "XCode"
}

is_xcode_installed() {
    xcode-select --print-path &> /dev/null
}

set_xcode_developer_directory() {

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    echo "Make 'xcode-select' developer directory point to Xcode"
}

main() {
    if [ ! is_xcode_installed ]; then
        install_xcode
        set_xcode_developer_directory
        agree_with_xcode_license
    fi
}

main
