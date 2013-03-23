# FDM's oh-my-zsh theme : .zshrc
# ------------------------------

#########################
# Start X server
#########################
# auto-startx on tty1
if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ] ; then
    startx
    exit
fi

#########################
# Oh-my-zsh settings
#########################
# Path to oh-my-zsh configuration
ZSH=/usr/share/oh-my-zsh/
# Select the zsh theme
ZSH_THEME="fdm"
# Set to this to use case-sensitive completion
CASE_SENSITIVE="false"
# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"
# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
UPDATE_ZSH_DAYS=14
# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="false"
# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="false"
# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="false"
# Plugin loading
plugins=(git svn ssh-agent)
# Try to source oh-my-zsh
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
	source $ZSH/oh-my-zsh.sh
fi

#########################
# Aliases
#########################
alias ps="ps -ef"
alias ll="ls -al"
alias grep="egrep"
alias ping="ping -n"
alias route="ip route"
alias ifconfig="ip addr"
alias df="df -h"
alias du="du -h"
alias sshr="ssh -A -l root"
alias pacin="pacman -S"
alias pacs="pacman -sS"
alias yain="yaourt -S"
alias yas="yaourt -sS"
alias history="history -d"

#########################
# Environment variables
#########################
EDITOR="vim"
# Configure shell history
setopt EXTENDED_HISTORY
HISTSIZE=100000
HISTFILESIZE=100000
# Format : [ YYYY-MM-DD hh:mm:ss ] command
HISTTIMEFORMAT="%F %T - "
# Ignore commands without arguments
HISTIGNORE="ls:cd:ll"

# Have fun!
