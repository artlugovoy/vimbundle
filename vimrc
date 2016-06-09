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

" Undo settings
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp

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

" CtrlP plugin options
let g:ctrlp_cmd = 'CtrlPMixed'

" AutoClose plugin options
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'} 
let g:AutoCloseProtectedRegions = ["Character"] 

let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|node_modules',
      \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\|\.DS_Store',
      \ 'link': 'some_bad_symbolic_links',
      \ }
let g:ctrlp_max_files = 0
let g:ctrlp_extensions = ['ctrlp-filetpe']
let g:ctrlp_follow_symlinks = 1


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
nnoremap <leader>vl :vs<cr>

" buffer mappings
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" Saving and exit mappings
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" System Buffer Copy Paste
map <leader>bc "+yy
map <leader>bp "+p

" CtrlP bindings
map <leader>f :CtrlPMixed<cr>
let g:ctrlp_map = '<Leader>f'

" Read custom configuration
if filereadable(expand("$HOME/") . '.local.vimrc')
  source ~/.local.vimrc
endif


" Apply vimrc once it is stored
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %
