# load rbenv if available
RBENV=$(which rbenv)
test -x "$RBENV" && eval "$($RBENV init -)"
