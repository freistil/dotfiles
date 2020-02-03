if &compatible
  set nocompatible
end

call plug#begin()

" Fuzzy file search via Ctrl-p
Plug 'ctrlpvim/ctrlp.vim'
" mkdir in vim
Plug 'pbrisbin/vim-mkdir'
" Auto-close blocks
Plug 'tpope/vim-endwise'
" Helpers for UNIX
Plug 'tpope/vim-eunuch'
" Git support
Plug 'tpope/vim-fugitive'
" Surround text with brackets, asterisks, HTML tags etc.
Plug 'tpope/vim-surround'
" Ruby support
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
" A custom text object for selecting ruby blocks
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
" Toggle comments
Plug 'vim-scripts/tComment'
" Navigate vim panes identical to tmux panes
Plug 'christoomey/vim-tmux-navigator'

if filereadable(expand("~/.config/nvim/bundles.local.vim"))
  source ~/.config/nvim/bundles.local.vim
endif

call plug#end()
