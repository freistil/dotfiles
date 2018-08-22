# Enable autojump

if which brew >/dev/null; then
  script=$(brew --prefix)/etc/profile.d/autojump.sh
else
  script=/etc/profile.d/autojump.sh
  if [[ ! -f $script ]]; then
    script=/usr/share/autojump/autojump.sh
  fi
fi

if which autojump >/dev/null; then
  source $script
fi
