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

syntax enable

" speed up syntax highlighting
set ttyfast
set lazyredraw

" UI configuration
set title
set encoding=utf-8
set scrolloff=2
set autoindent
set smartindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile


" Read platform specific configrations
if filereadable(expand("$HOME/") . '.macos.vim')
  source ~/.macos.vim
endif

if filereadable(expand("$HOME/") . '.linux.vim')
  source ~/.linux.vim
endif


" Apply vimrc once it is stored
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %
