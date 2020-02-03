# use vim as the visual editor
if which nvim >/dev/null
then
  export VISUAL=nvim
else
  export VISUAL=vim
fi
export EDITOR=$VISUAL

alias e="$EDITOR"
alias v="$VISUAL"
