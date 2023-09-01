#!/bin/bash -eu

echo " 🏝 ln -sf ./zshrc ~/.zshrc"
ln -sf `pwd`/zshrc ~/.zshrc

echo " 🏝 ln -sf ./aliases ~/.aliases"
ln -sf `pwd`/aliases ~/.aliases

echo " 🏝 ln -sf ./vimrc ~/.vimrc"
ln -sf `pwd`/vimrc ~/.vimrc

echo " 🏝 Installing vim-plug..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo " 🏝 Installing rbenv..."
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
sudo ~/.rbenv/plugins/ruby-build/install.sh

echo " 🏝 Installing goenv..."
git clone https://github.com/syndbg/goenv.git ~/.goenv

echo " 🏝 Installing nodenv..."
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
sudo ~/.nodenv/plugins/node-build/install.sh

echo " 🏝 Installing jenv..."
git clone https://github.com/jenv/jenv.git ~/.jenv

echo " 🏝 Installing pyenv..."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
