# Created by newuser for 5.8

autoload -U compinit promptinit
compinit
promptinit

autoload -U colors && colors

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# Эта настройка установит тему walters для приглашения командной строки
prompt redhat 

HISTFILE=~/.zsh_history
HISTSIZE=500000
SAVEHIST=500000

if [ -f /usr/bin/grc ]; then
 alias gcc="grc --colour=auto gcc"
 alias irclog="grc --colour=auto irclog"
 alias log="grc --colour=auto log"
 alias netstat="grc --colour=auto netstat"
 alias ping="grc --colour=auto ping"
 alias proftpd="grc --colour=auto proftpd"
 alias traceroute="grc --colour=auto traceroute"
 alias ls="grc --colour=auto ls"
fi

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

# append history
setopt APPEND_HISTORY
# ignore dups in history
setopt HIST_IGNORE_ALL_DUPS
# ighore additional space in history
setopt HIST_IGNORE_SPACE

autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
unalias run-help
alias help=run-help

