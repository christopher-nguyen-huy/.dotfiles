# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=always'
alias la='ls -ha'
alias ll='ls -lha'
alias bb='cd ~/repo'
alias grep='grep --color=auto -e'

#source ~/.aliases

# Auto cd '/etc' -> 'cd /etc'
shopt -s autocd

export VISUAL=nano
export EDITOR=nano

export PATH=/home/chris/.local/bin:$PATH
export PATH=/home/chris/.nimble/bin:$PATH

# https://wiki.archlinux.org/index.php/Bash/Prompt_customization
RESET="\[$(tput sgr0)\]"
RED="\[$(tput setaf 9)\]"
WHITE="\[$(tput setaf 15)\]"
CYAN="\[$(tput setaf 6)\]"
source /usr/share/git/completion/git-prompt.sh
export PS1="${WHITE}\u${RESET}@${WHITE}\h${RESET}${CYAN}\w${RESET}${RED}\$(__git_ps1)${RESET}\n${WHITE}\$${RESET} "
# change directory to blue, make '$' prompt change to '#' when root


bind '"\eOc":forward-word'
bind '"\eOd":backward-word'
