#!/usr/local/bin/zsh

# nvm setup
latest_nvm_version=$(curl -s https://api.github.com/repos/creationix/nvm/releases/latest | jq -r '.tag_name')

if [ ! -f $NVM_DIR/nvm.sh ]; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/$latest_nvm_version/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

installed_nvm_version="v$(nvm --version)"
if [ $installed_nvm_version != $latest_nvm_version ]; then
  echo "Upgrading nvm"
  curl -o- https://raw.githubusercontent.com/creationix/nvm/$latest_nvm_version/install.sh | bash
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi

nvm_stable_version=$(nvm version stable)
remote_stable_version=$(nvm ls-remote | tail -n 1 | tr -d '[:space:]')

if [ $nvm_stable_version != $remote_stable_version ]; then
  echo "Installing stable node version"
  nvm install stable
  nvm use stable
fi
