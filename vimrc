set syntax=vimt nocompatible

" Load Vundle Plugins
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
set t_Co=256
colorscheme hybrid
set splitbelow splitright

" Formatting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set textwidth=80
autocmd FileType ruby setlocal colorcolumn=81
set formatoptions=n

" Display whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

" Searching options
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Status Line
" path
set statusline=%f
" flags
set statusline+=%m%r%h%w
" encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
" line x of y
set statusline+=\ [line\ %l\/%L\ column\ %c]

" Change colour of statusline in insert mode
hi statusline ctermfg=Black ctermbg=White
au InsertEnter * hi statusline term=reverse ctermfg=42 ctermbg=Black guifg=#3cb371 guibg=Black
au InsertLeave * hi statusline term=reverse ctermfg=Grey ctermbg=Black guifg=Grey  guibg=Black


" Basic mappings
imap jk <ESC>

" searching mappings
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr> 
nmap <space> /
map <c-space> ?
" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" splits mappings
nmap <leader>sh <C-w>h
nmap <leader>sj <C-w>j
nmap <leader>sk <C-w>k
nmap <leader>sl <C-w>l

" buffer mappings
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>


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
