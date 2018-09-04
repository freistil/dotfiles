# Execute modules in subdirectory
BASE="$HOME/.zsh"
load_all_files_in() {
  if [ -d "$BASE/$1" ]; then
    for file in "$BASE/$1"/*.zsh; do
      source "$file"
    done
  fi
}

# Cross-shell aliases
[[ -f ~/.aliases ]] && source ~/.aliases

load_all_files_in before
load_all_files_in ""
load_all_files_in after

# iTerm2 shell integration
[[ -f ~/.iterm2_shell_integration.zsh ]] && source ~/.iterm2_shell_integration.zsh

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
