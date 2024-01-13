# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_CTYPE=en_US.UTF-8

### PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:$PATH" 

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# alias
alias dl='youtube-dl'
alias mp3dl='youtube-dl --extract-audio --audio-format mp3'
alias mv="mv -v"
alias emacs='emacs -nw'
alias please='sudo'
alias fucking='sudo'
alias g='git'
alias cppcheck='cppcheck --language=c++'
alias ccheck='cppcheck --language=c'
alias tmux="TERM=screen-256color-bce tmux"
alias francinette=/Users/poss/francinette/tester.sh
alias paco=/Users/poss/francinette/tester.sh

# in case i missed a reference
alias nvim=vim

### PLUGINS
plugins=(
    git
    colored-man-pages
    dirhistory
)

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/code/misc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
