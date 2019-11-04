" Editor options
set mouse=a
set number
set history=1000
set visualbell

" Turn on "detection", "plugin" and "indent"
filetype plugin indent on

" Read and write options
set confirm
set autoread

" Set tab spacing
set tabstop=4
set shiftwidth=4 
set expandtab     " Tabs turn to spaces
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
