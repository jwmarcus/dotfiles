" Turn off compatibility nonsense
set nocompatible

" Editor options
set mouse=a
set number
set history=1000
" -- Tell `screen` to use darkmode syntax highlights
set background=dark
set linebreak     " Wrap lines at the word

" Turn on "detection", "plugin" and "indent"
filetype plugin indent on

" Read and write options
set confirm
set autoread

" Set tab spacing
set tabstop=4     " Width of a tab character
set shiftwidth=4  " How much to move with > and <
set expandtab     " Spaces are used instead of tabs
set smarttab      " Tab out appropriately
set shiftround    " Round to nearest tab

" Tab indents and outdents
set autoindent
set smartindent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
inoremap <Tab> <Tab>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Copy/Paste in Vim
set clipboard=unnamedplus
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

" Filetype extension definitions
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Indent based on file type
autocmd filetype markdown setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd filetype html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd filetype cs setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd filetype javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd filetype yaml setlocal shiftwidth=2 softtabstop=2 expandtab

set backspace=indent,eol,start
