### PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/bin:$PATH" 
export PATH="$PATH:/opt/homebrew/bin" 

LATEX_BIN='/usr/local/texlive/2023/bin/universal-darwin'
export PATH="$PATH:$LATEX_BIN" 

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

export CPATH=/opt/homebrew/include
export LIBRARY_PATH=/opt/homebrew/lib

export CPATH=$CPATH:/opt/homebrew/Cellar/readline/8.2.13/include
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/Cellar/readline/8.2.13/lib

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# alias
alias dl='youtube-dl'
alias mp3dl='yt-dlp --extract-audio --audio-format mp3'
alias mv="mv -v"
alias emacs='emacs -nw'
alias please='sudo'
alias fucking='sudo'
alias vim='nvim'
alias view='nvim -R'
alias g='git'
alias ccheck='cppcheck --language=c'

alias francinette=$HOME/francinette/tester.sh
alias paco=$HOME/francinette/tester.sh

### PLUGINS
plugins=(
    git
    colored-man-pages
    dirhistory
)

source $ZSH/oh-my-zsh.sh
source $HOME/code/misc/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.toml)"
fi
#eval "$(starship init bash)"


# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/poss/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/poss/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/poss/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/poss/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/poss/.opam/opam-init/init.zsh' ]] || source '/Users/poss/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
export PATH=/Users/poss/.local/funcheck/host:$PATH
