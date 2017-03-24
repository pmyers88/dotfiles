# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
    android-file-transfer
    atom
    docker
    gimp
    google-chrome
    google-cloud-sdk
    gopro-studio
    java
    iterm2
    libreoffice
    vlc
    whatsapp
)

brew cask install "${apps[@]}"
