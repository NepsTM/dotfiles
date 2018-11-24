
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR="emacs -nw"


( [ -d $HOME/afs/Pictures ] || [ -d $HOME/Pictures ] ) && feh --bg-scale $( shuf -e -n 1 $HOME/Pictures/*.jpg )

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

PS1='[\033[0;36m\u\033[0m 42sh]$'
