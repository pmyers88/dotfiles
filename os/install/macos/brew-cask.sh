# Install Caskroom

brew tap caskroom/cask

# Install packages

apps=(
#    android-file-transfer
#    android-studio
    atom
    docker
#    ethereum-wallet
#    gimp
#    google-chrome
    google-cloud-sdk
#    gopro-studio
#    java
#    inkscape
    iterm2
    sequel-pro
    slack
#    libreoffice
#    skype
#    vlc
    visual-studio-code
    whatsapp
#    xquartz
)

brew cask install "${apps[@]}"
