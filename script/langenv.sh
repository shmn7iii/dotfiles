#!/bin/zsh

echo "Do you want to install rbenv? (y/N): "
if read -q; then
  echo " > Installing rbenv..."
  git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
  git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build
  sudo $HOME/.rbenv/plugins/ruby-build/install.sh
  cat << "EOF" >> $HOME/.zshrc.langenv
# rbenv
export RBENV_ROOT=$HOME/.rbenv
export PATH="${RBENV_ROOT}/bin:$PATH"
eval "$($RBENV_ROOT/bin/rbenv init - zsh)"
EOF
else
  echo "Skipped."
fi

echo "Do you want to install goenv? (y/N): "
if read -q; then
  echo " > Installing goenv..."
  git clone https://github.com/syndbg/goenv.git $HOME/.goenv
  cat << "EOF" >> $HOME/.zshrc.langenv
# goenv
export GOENV_ROOT=$HOME/.goenv
export PATH="${GOENV_ROOT}/bin:$PATH"
eval "$($GOENV_ROOT/bin/goenv init -)"
EOF
else
  echo "Skipped."
fi

echo "Do you want to install nodenv? (y/N): "
if read -q; then
  echo " > Installing nodenv..."
  git clone https://github.com/nodenv/nodenv.git $HOME/.nodenv
  git clone https://github.com/nodenv/node-build.git $HOME/.nodenv/plugins/node-build
  sudo $HOME/.nodenv/plugins/node-build/install.sh
  cat << "EOF" >> $HOME/.zshrc.langenv
# nodenv
export NODENV_ROOT=$HOME/.nodenv
export PATH="${NODENV_ROOT}/bin:$PATH"
eval "$($NODENV_ROOT/bin/nodenv init -)"
EOF
else
  echo "Skipped."
fi

echo "Do you want to install jenv? (y/N): "
if read -q; then
  echo " > Installing jenv..."
  git clone https://github.com/jenv/jenv.git $HOME/.jenv
  cat << "EOF" >> $HOME/.zshrc.langenv
# jenv
export JENV_ROOT=$HOME/.jenv
export PATH="${JENV_ROOT}/bin:$PATH"
eval "$($JENV_ROOT/bin/jenv init -)"
EOF
else
  echo "Skipped."
fi

echo "Do you want to install pyenv? (y/N): "
if read -q; then
  echo " > Installing pyenv..."
  git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
  cat << "EOF" >> $HOME/.zshrc.langenv
# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$($PYENV_ROOT/bin/pyenv init -)"
EOF
else
  echo "Skipped."
fi
