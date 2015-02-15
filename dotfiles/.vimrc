
set autoindent
set foldmethod=syntax

" Background=dark for better comment view
set background=dark

"nnoremap <F12> :set noautoindent<CR>

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map <F7> mzgg=G`z<CR>

au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.usc set filetype=lua

" To Use Eclim
set nocompatible
filetype plugin indent on

" To make correct indentation in python
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" To set printeroptions => use hardcopy > test.ps to print
set printoptions=paper:A4,portrait:y "set to n for landscape

" Highlight text that goes over the 80 column limit
"match ErrorMsg '\%>80v.\+'
match ErrorMsg '\%81v.'

" Start searching while typing
set incsearch

" Highlight matches
set hlsearch

" More advanced text highlight
"augroup collumnLimit
"	autocmd!
"	autocmd BufEnter,WinEnter,FileType scala,java
"		\ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
"	let collumnLimit = 79 " feel free to customize
"	let pattern =
"		\ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
"	autocmd BufEnter,WinEnter,FileType scala,java
"		\ let w:m1=matchadd('CollumnLimit', pattern, -1)
"augroup END
