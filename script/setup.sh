#!/bin/zsh

DOTENV=`pwd`

for file in .zshrc .zshrc.aliases .vimrc
do
  echo "> ln -s $file  $HOME/$file"
	ln -s $DOTENV/$file $HOME/$file
done

echo "> touch .zshrc.local"
touch $HOME/.zshrc.local

for dir in config ssh
do
  echo "> cp -ri $dir/ $HOME/.$dir"
  cp -ri $DOTENV/$dir/  $HOME/.$dir
done

echo " > Install AstroNvim..."
git clone --depth 1 https://github.com/AstroNvim/AstroNvim  $HOME/.config/nvim
