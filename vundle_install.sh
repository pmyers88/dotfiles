#!/usr/bin/env zsh
mkdir -p $DOTFILES/vim/bundle/Vundle.vim
export VUNDLE_HOME=$DOTFILES/vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_HOME
ln -s $DOTFILES/vim $HOME/.vim
echo "Successfully linked $DOTFILES/vim to $HOME/.vim"
