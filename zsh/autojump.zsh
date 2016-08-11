# Enable autojump

if which brew >/dev/null; then
  PREFIX=$(brew --prefix)
else
  PREFIX=""
fi

if which autojump >/dev/null; then
  [[ -s $PREFIX/etc/profile.d/autojump.sh ]] && . $PREFIX/etc/profile.d/autojump.sh
fi
