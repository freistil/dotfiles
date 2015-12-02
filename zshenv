# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/sbin:/usr/local/bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# docker-machine or boot2docker setup
if which docker-machine >/dev/null; then
  eval $(docker-machine env default 2>/dev/null)
  if [ $(docker-machine status default) = "Running" ]; then
    export DOCKER_IP=$(docker-machine ip default)
  fi
elif which boot2docker >/dev/null; then
  eval $(boot2docker shellinit 2>/dev/null)
  if [ $(boot2docker status) = "running" ]; then
    export DOCKER_IP=$(boot2docker ip)
  fi
fi

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
