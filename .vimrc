" Turn off compatibility nonsense
set nocompatible

" Plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

" Plugin bindings
nnoremap <C-N> :NERDTreeToggle<CR>

" Buffer management
" -- Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" -- Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" -- List all possible buffers with "gl"
nnoremap gl :ls<CR>
" -- List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

" Window and tab management
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
" -- Mirror `screen` keystrokes
nnoremap <C-W>S :new<CR>
nnoremap <C-W>\| :vnew<CR>
" -- Sane defaults for new splits
set splitbelow
set splitright
" -- Sane defaults for terminals spun up
nnoremap <C-t> :ter++close<CR>


" Ctrl-S saves
nnoremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Editor options
set mouse=a
set number
set history=1000
" set visualbell

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

