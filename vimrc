set syntax=vimt nocompatible

"  Plugins
silent! runtime bundle.vim

" Autoindent by file type
filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

set history=1000

" Disable swapping
set nobackup
set nowritebackup
set noswapfile
set autoread


" speed up syntax highlighting
set ttyfast
set lazyredraw

syntax enable

" Apply vimrc once it stored
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %
