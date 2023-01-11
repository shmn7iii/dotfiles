#!/bin/bash -eu

/bin/bash setup.common.sh

echo " 🏝 cp ./macos/zshrc ~/.zshrc"
cp ./macos/zshrc ~/.zshrc

echo "🏝 Installing Brewfile..."
brew update
brew upgrade
brew bundle -v --file=./macos/Brewfile

echo " 🏝 Installing anyenv..."
anyenv init
anyenv install --init

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
