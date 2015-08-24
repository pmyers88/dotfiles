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

# aliases
alias sz='source $HOME/.zshrc'

# ruby stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# antigen stuff
source $ANTIGEN_HOME/antigen.zsh

antigen use oh-my-zsh

antigen theme agnoster

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle git

antigen apply

# configure antigen repos
export Z_HOME=$ANTIGEN_HOME/repos/https-COLON--SLASH--SLASH-github.com-SLASH-rupa-SLASH-z.git
source $Z_HOME/z.sh
