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
export RBENV_ROOT=~/.rbnev
export PATH="${RBENV_ROOT}/bin:$PATH"
eval "$(~/.rbenv/bin/rbenv init - zsh)"
# goenv
export GOENV_ROOT=~/.goenv
export PATH="${GOENV_ROOT}/bin:$PATH"
eval "$(~/.goenv/bin/goenv init -)"
# nodenv
export NODENV_ROOT=~/.nodenv
export PATH="${NODENV_ROOT}/bin:$PATH"
eval "$(~/.nodenv/bin/nodenv init -)"
# jenv
export JENV_ROOT=~/.jenv
export PATH="${JENV_ROOT}/bin:$PATH"
eval "$(~/.jenv/bin/jenv init -)"
# pyenv
export PYENV_ROOT=~/.pyenv
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(~/.pyenv/bin/pyenv init -)"


# ================================
# init
# ================================
# homebrew
if [ $(uname) = "Darwin" ] && [ $(uname -m) = "arm64" ] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# starship
eval "$(starship init zsh)"

# jetbrains toolbox
if [ $(uname) = "Darwin" ] ; then
  export PATH="/Users/shmn7iii/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
fi
