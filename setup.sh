#!/bin/bash -eu

if [ "$(uname)" != "Darwin" ] ; then
	echo "Invalid OS!"
	exit 1
fi


echo " 🏝 ln -sf ./zshrc ~/.zshrc"
ln -sf `pwd`/zshrc ~/.zshrc

echo " 🏝 ln -sf ./aliases ~/.aliases"
ln -sf `pwd`/aliases ~/.aliases

echo " 🏝 ln -sf ./vimrc ~/.vimrc"
ln -sf `pwd`/vimrc ~/.vimrc

echo " 🏝 ln -sf ./macos/config/ ~/.config/"
ln -sf `pwd`/macos/config/ ~/.config/

echo " 🏝 ln -sf ./macos/ssh/ ~/.ssh/"
ln -sf `pwd`/macos/ssh/ ~/.ssh/


echo "🏝 Installing Brewfile..."
if [ ! -f /usr/local/bin/brew ] ||  [ ! -f /opt/homebrew/bin/brew ] ; then
 echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
if [ $(uname) = "Darwin" ] && [ $(uname -m) = "arm64" ] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew update
brew upgrade
brew tap homebrew/cask-fonts
brew bundle -v --file=./macos/Brewfile


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


echo " 🏝 Replacing NeoVim with AstroNvim..."
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim


echo " 🏝 Writeing defaults for macOS..."
defaults write com.apple.dock springboard-columns -int 8
defaults write com.apple.dock springboard-rows -int 6
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock ResetLaunchPad -bool true
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write -g AppleScrollerPagingBehavior -bool true
defaults write -g NSCloseAlwaysConfirmsChanges -bool false

killall Dock

echo " 🏝 source ~/.zshrc"
source ~/.zshrc
