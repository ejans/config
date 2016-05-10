" Activate 256 colors
if &term == 'xterm' || &term == 'screen' || &term == 'xterm-color'
    set t_Co=256 " Add 256 colors capability
endif

filetype off
set nocompatible

" Set syntax highlighting on
syntax on


" Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()

set autoindent          " Indent at the same level of the previous line
set foldmethod=syntax   " Fold according to syntax
set background=dark     " Assume a dark background
set incsearch           " Start searching while typing
set hlsearch            " Highlight matches
match ErrorMsg '\%161v.' " Highlight text that goes over the 80 column limit
set mouse=a             " Automatically enable mouse usage
set ttym=sgr		" Enable mouse in st terminal

set cursorline          " Highlight current line
" Remove line (cterm) and set bg of cursor to Darkgrey
hi CursorLine cterm=NONE ctermbg=237

" Fix indentation
map <F4> mzgg=G`z<CR>

filetype plugin indent on " Automatically detect file types.

" Toggle paste mode (suppress indentation)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

au BufRead,BufNewFile *.md set filetype=markdown

" Mapping for odoo restart
map <F5> :! sudo service odoo restart<CR>

" XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" To make correct indentation in python
" Tabs are spaces, Use indents of 4 spaces, Let backspace delete indent
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 

" To make correct indentation in xml
autocmd FileType xml setlocal expandtab shiftwidth=2 tabstop=2

" To set printeroptions => use hardcopy > test.ps to print
set printoptions=paper:A4,portrait:y " Set to n for landscape

" Old
"set number "Line numbers on
