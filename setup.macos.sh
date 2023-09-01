#!/bin/bash -eu

if [ "$(uname)" != "Darwin" ] ; then
	echo "Invalid OS!"
	exit 1
fi

/bin/bash setup.common.sh

echo " 🏝 ln -sf ./macos/config/ ~/.config/"
ln -sf `pwd`/macos/config/ ~/.config/

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
brew bundle -v --file=./macos/Brewfile

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
