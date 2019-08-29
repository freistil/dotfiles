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
    LOAD=$(cat /proc/loadavg | awk '{print $3}')
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
