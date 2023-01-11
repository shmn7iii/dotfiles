#!/bin/bash -eu

echo " 🏝 Installing rbenv..."
anyenv uninstall rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

echo " 🏝 Installing goenv..."
anyenv uninstall goenv
git clone https://github.com/syndbg/goenv.git ~/.goenv

echo " 🏝 Installing nodenv..."
anyenv uninstall nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

echo " 🏝 Installing jenv..."
anyenv uninstall jenv
git clone https://github.com/jenv/jenv.git ~/.jenv

echo " 🏝 Installing pyenv..."
anyenv uninstall pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
