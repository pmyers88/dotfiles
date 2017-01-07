# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
    android-file-transfer
    atom
    docker
    google-chrome
    google-cloud-sdk
    gopro-studio
    java
    iterm2
    libreoffice
    vlc
)

brew cask install "${apps[@]}"
