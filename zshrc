# ================================
# common
# ================================
export LANG=ja_JP.UTF-8
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
autoload -Uz colors && colors
autoload -Uz compinit && compinit


# ================================
# aliases
# ================================
source ~/.aliases


# ================================
# envs
# ================================
# rbenv
eval "$(~/.rbenv/bin/rbenv init - zsh)"
export RBENV_ROOT=~/.rbnev
export PATH="${RBENV_ROOT}/bin:$PATH"
# goenv
eval "$(~/.goenv/bin/goenv init -)"
export GOENV_ROOT=~/.goenv
export PATH="${GOENV_ROOT}/bin:$PATH"
# nodenv
eval "$(~/.nodenv/bin/nodenv init -)"
export NODENV_ROOT=~/.nodenv
export PATH="${NODENV_ROOT}/bin:$PATH"
# jenv
eval "$(~/.jenv/bin/jenv init -)"
export JENV_ROOT=~/.jenv
export PATH="${JENV_ROOT}/bin:$PATH"
# pyenv
eval "$(~/.pyenv/bin/pyenv init -)"
export PYENV_ROOT=~/.pyenv
export PATH="${PYENV_ROOT}/bin:$PATH"


# ================================
# init
# ================================
# homebrew
if [ $(uname) = "Darwin" ] && [ $(uname -m) = "arm64" ] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# starship
eval "$(starship init zsh)"
