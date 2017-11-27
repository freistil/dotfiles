# load rbenv if available
RBENV_PATH="$HOME/.rbenv/bin"
test -d $RBENV_PATH && export PATH="${RBENV_PATH}:${PATH}"
RBENV=$(which rbenv)
test -x "$RBENV" && eval "$($RBENV init -)"
