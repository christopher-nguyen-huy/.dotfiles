# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#source ~/.aliases
alias ls='ls --color=always'
alias la='ls -ha'
alias ll='ls -lha'
alias bb='cd ~/repo'
alias grep='grep --color=auto -e'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# History
export LESSHISTFILE="-"
shopt -s histappend

# Eternal bash history.
# Backup current bash_history first
# cat ~/.bash_history >>~/.bash_eternal_history
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
# Apparently =-1 also works
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# Auto cd '/etc' -> 'cd /etc'
shopt -s autocd

export VISUAL=nvim
export EDITOR=nvim

# user binaries?
export PATH=/home/chris/.local/bin:$PATH

# nim package manager
# export PATH=/home/chris/.nimble/bin:$PATH

# https://wiki.archlinux.org/index.php/Bash/Prompt_customization
RESET="\[$(tput sgr0)\]"
RED="\[$(tput setaf 9)\]"
WHITE="\[$(tput setaf 15)\]"
CYAN="\[$(tput setaf 6)\]"
source /usr/share/git/completion/git-prompt.sh
export PS1="${WHITE}\u${RESET}@${WHITE}\h${RESET}${CYAN}\w${RESET}${RED}\$(__git_ps1)${RESET}\n${WHITE}\$${RESET} "
# change directory to blue, make '$' prompt change to '#' when root

# PS1='[\u@\h \W]\$ '

# ctrl-left ctrl-right
bind '"\eOc":forward-word'
bind '"\eOd":backward-word'
