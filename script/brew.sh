#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Invalid OS!"
	exit 1
fi

echo "> Installing Brewfile..."
if [ ! -f /usr/local/bin/brew ] ||  [ ! -f /opt/homebrew/bin/brew ] ; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  if [ $(uname -m) = "arm64" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi
brew doctor
brew update
brew upgrade
brew tap homebrew/cask-fonts
brew bundle -v --file=./Brewfile
brew cleanup
