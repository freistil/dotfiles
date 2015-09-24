set guifont=Source\ Code\ Pro:h16

" Launch Marked with file
:nnoremap <leader>m :silent !open -a 'Marked 2.app' '%:p'<cr>

" Launch Dash with current keyword
:nmap <silent> <leader>d <Plug>DashSearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Include local configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable($HOME . "/.mvimrc.local")
  source ~/.mvimrc.local
endif

