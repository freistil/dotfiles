# load rbenv if available
test -d "$HOME/.rbenv/bin" && PATH="$HOME/.rbenv/bin:$PATH"
RBENV=$(which rbenv)
test -x "$RBENV" && eval "$($RBENV init -)"
