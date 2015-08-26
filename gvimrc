set guifont=Source\ Code\ Pro:h16

" Launch Marked with file
:nnoremap <leader>m :silent !open -a 'Marked 2.app' '%:p'<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Include local configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable($HOME . "/.mvimrc.local")
  source ~/.mvimrc.local
endif

