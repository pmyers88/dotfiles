# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
    android-file-transfer
    atom
    docker
    google-chrome
    gopro-studio
    java
    iterm2
    vlc
)

brew cask install "${apps[@]}"
