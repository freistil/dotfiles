" Set font in graphical vim
set guifont=Source\ Code\ Pro:h16

" Launch Marked with file
:nnoremap <leader>m :silent !open -a 'Marked 2.app' '%:p'<cr>

" Launch Dash with current keyword
:nmap <silent> <leader>d <Plug>DashSearch

" Disable balloon tooltips in Ruby files
autocmd FileType ruby,eruby set noballooneval

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Include local configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

