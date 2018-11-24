
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR="emacs -nw"


( [ -d $HOME/afs/Pictures ] || [ -d $HOME/Pictures ] ) && feh --bg-scale "$( shuf -e -n 1 $HOME/Pictures/*.jpg )"

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

BLACK="$(tput setaf 0)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 7)"

export PS1="${GREEN}$?${WHITE} [${RED}\u ${CYAN}@ \h ${WHITE}\W]$ "
