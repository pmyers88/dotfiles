# Install Homebrew
#!/usr/bin/env bash

brew help &> /dev/null
if [ $? -ne 0 ]
    then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade

# Install packages

apps=(
    android-platform-tools
    docker
    docker-compose
    docker-machine
    dockutil
    tree
    wget
    yarn
)

brew install "${apps[@]}"
