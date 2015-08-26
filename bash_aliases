# Simpler shell commands

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias conncheck='mtr -s 1500 -r -c 1000 -i 0.1'

# mkdir & cd to it
function mcd() { 
  mkdir -p "$1" && cd "$1"; 
}

# Apache

alias apwatch="watch --interval ${AW_PRD:-3} 'apache2ctl status | tail -n +9'"
alias aprestart="service apache2 restart"
alias apreload="service apache2 reload"

# MySQL

alias myslave="mysql -e 'show slave status\G'"
alias myprocs="watch --interval 1 'mysql -e \"show processlist\" | grep -vi sleep'"

# Chef

alias cheflf="tail -f /var/log/chef/client.log"
alias chefll="less -n /var/log/chef/client.log"
