# ================================
# common
# ================================
export LANG=ja_JP.UTF-8
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
autoload -Uz colors && colors
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ================================
# init
# ================================
# homebrew
if [ $(uname -m) = "arm64" ] ; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi
# disable auto update
export HOMEBREW_NO_AUTO_UPDATE=1

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"


# ================================
# source
# ================================
source ~/.zshrc.aliases
source ~/.zshrc.langenv
source ~/.zshrc.local
