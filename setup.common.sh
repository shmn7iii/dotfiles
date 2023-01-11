#!/bin/bash -eu

echo " 🏝 cp ./zshrc ~/.zshrc"
cp ./zshrc ~/.zshrc

echo " 🏝 cp ./aliases ~/.aliases"
cp ./aliases ~/.aliases

echo " 🏝 cp ./vimrc ~/.vimrc"
cp ./vimrc ~/.vimrc

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
