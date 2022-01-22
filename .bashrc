# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

export TERM=screen-256color

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/shrike/.cfg/ --work-tree=/home/shrike'

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#      exec startx
#fi

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

