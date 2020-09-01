export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"

# terminal prompt
# export PS1="$C_PURPLE\A $C_GREEN\u$C_BLUE@$C_CYAN\h $C_YELLOW\w $C_DEFAULT\$ "

# short prompt
export PS1="$C_PURPLE\A $C_CYAN\w $C_DEFAULT\$ "


# path
export PATH="$PATH:$HOME/bin"

# aliases

alias lsd='ls -d */'

# exercism aliases

alias exer_jl_open='atom README.md runtests.jl $(basename $(pwd)).jl'
alias exer_py_open='$HOME/dev/bash/exer_py_open.sh'
alias exer_py_test='$HOME/dev/bash/exer_py_test.sh'


# pyenv : python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
