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

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# append history
setopt APPEND_HISTORY
# ignore dups in history
setopt HIST_IGNORE_ALL_DUPS
# ighore additional space in history
setopt HIST_IGNORE_SPACE
