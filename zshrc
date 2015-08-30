export DOTFILES=$HOME/.dotfiles
export ANTIGEN_HOME=$HOME/.antigen
export EDITOR=vim
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/prm5031/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ALIASES
alias sz='source $HOME/.zshrc'

# git
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gl='git pull --prune'
alias gs='git status -sb'
alias gsta='git stash'
alias gp='git push origin HEAD'

# vim
# remap caps lock so that it can be used as esc
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' >> /dev/null

# ruby stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# antigen stuff
source $ANTIGEN_HOME/antigen.zsh

antigen use oh-my-zsh

antigen theme agnoster/agnoster-zsh-theme agnoster

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
#antigen bundle ryanoasis/nerd-fonts

antigen apply

# set default user so theme doesn't show it
export DEFAULT_USER=prm5031

# nvm settings
export NVM_DIR="/home/prm5031/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use stable >> /dev/null

# source the secret stuff
source $DOTFILES/secret/secret_stuff.sh
