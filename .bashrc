
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR="emacs -nw"


( [ -d $HOME/afs/Pictures ] || [ -d $HOME/Pictures ] ) && feh --bg-scale "$( shuf -e -n 1 $HOME/Pictures/*.jpg )"

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

BLACK="\[\e[0;30m\]"
RED="\[\e[3;31m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
MAGENTA="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
WHITE="\[\e[0;37m\]"

if [ -f .git-prompt.sh ]; then
    source .git-prompt.sh
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWCOLORHINTS=1
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUPSTREAM=verbose
    export PROMPT_COMMAND='__git_ps1 "${GREEN}\$?${WHITE} [${RED}\u ${CYAN}@ \h ${WHITE}\W] -" "\$ "'

else
    export PS1="${GREEN}\$?${WHITE} [${RED}\u ${CYAN}@ \h ${WHITE}\W]\$ "
fi
