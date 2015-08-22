#!/usr/bin/env zsh
### RUBY ###
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $DOTFILES/zshrc
echo 'eval "$(rbenv init -)"' >> $DOTFILES/zshrc

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> $DOTFILES/zshrc
source ~/.zshrc
