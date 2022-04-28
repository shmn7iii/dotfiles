
# ================================
# common
# ================================
export LANG=ja_JP.UTF-8
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

autoload -Uz colors && colors
autoload -Uz compinit && compinit



# ================================
# settig for prompt
# ================================
# git prompt
source ~/.zsh/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# git completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# プロンプト
setopt PROMPT_SUBST
PROMPT='%F{yellow}%B%n@%m%b%f:%F{cyan}[%~]%f%F{green}$(__git_ps1)%f
[%*] %# '

# コマンドの実行ごとに改行
function precmd() {
    # Print a newline before the prompt, unless it's the
    # first prompt in the process.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}



# ================================
# paths
# ================================
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# anyenv
eval "$(anyenv init -)"


# ================================
# alias
# ================================
# reload shell
alias reload='exec $SHELL -l'

# change directory to "GitHub"
alias cg='cd ~/Documents/GitHub/'
