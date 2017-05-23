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
    docker-machine
    dockutil
    go
    python
    tree
    wget
    watchman
    yarn
    youtube-dl
    zsh
    # for RoR course
    chromedriver
    heroku
    imagemagick
    mongodb
    phantomjs
    postgresql
    rbenv
    ruby-build
)

brew install "${apps[@]}"

brew link docker
brew install docker-compose
