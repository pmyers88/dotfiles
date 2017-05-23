# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
    android-file-transfer
    android-studio
    atom
    docker
    ethereum-wallet
    gimp
    google-chrome
    google-cloud-sdk
    gopro-studio
    java
    inkscape
    iterm2
    libreoffice
    skype
    vlc
    whatsapp
    xquartz
)

brew cask install "${apps[@]}"
