# ALIASES
alias redot=$DOTFILES/os/setup.sh
alias rebrew=$DOTFILES/os/install/macos/brew.sh
alias recask=$DOTFILES/os/install/macos/brew-cask.sh
alias szrc='source $HOME/.zshrc'
alias szenv='source $HOME/.zshenv'
alias sz='szenv && szrc'
alias staging='cloud_sql_proxy -dir=/tmp/cloudsql -projects=emissary-staging-1291'
alias prod='cloud_sql_proxy -dir=/tmp/cloudsql -projects=emissary-1289'
alias lint='$HOME/Development/emissary/docker/test.sh lint:py'

# git
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull --prune'
alias gs='git status -sb'
alias gsta='git stash'
alias gp='git push origin HEAD'
alias glog='git log --oneline --decorate --graph'
alias gcp='git cherry-pick'
