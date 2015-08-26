# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#
# command history
#

# don't put duplicate lines in the history
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

#
# Terminal
#

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#
# Command prompt
#

# Color definitions
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m'              # No Color

_update_prompt()
{
    LOAD=$(sysctl vm.loadavg | awk '{print $3}')
}

function setprompt()
{

    PROMPT_COMMAND=_update_prompt
    case $TERM in
        xterm* | *term | rxvt | screen* )
            PS1="${red}[\A - \$LOAD]$NC\n[\u@\h \#] \W > \[\033]0;\h \w\007\]" ;;
        linux )
            PS1="${red}[\A - \$LOAD]$NC\n[\u@\h \#] \W > " ;;
        * )
            PS1="[\A - \$LOAD]\n[\u@\h \#] \W > " ;;
    esac
}

setprompt

#
# Aliases
#

# my alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#
# Auto-completion
#

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#
# Environment variables
#

export EDITOR=vi
