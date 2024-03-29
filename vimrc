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
set textwidth=100
autocmd FileType ruby setlocal colorcolumn=101
set formatoptions=n

" Display whitespaces
set list listchars=tab:»·,trail:·,nbsp:·

set background=dark
if has("gui_running")
  set guioptions-=T " no toolbar set guioptions-=m " no menus
  set guioptions-=r " no scrollbar on the right
  set guioptions-=R " no scrollbar on the right
  set guioptions-=l " no scrollbar on the left
  set guioptions-=b " no scrollbar on the bottom
  set guioptions=aiA 
  set mouse=v
end

" Searching options
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Enabe vim to read directory specific .vimrc
set exrc

" Set shell
set shell=$SHELL

" Status Line
" path
set statusline=%f
" flags
set statusline+=%m%r%h%w
" encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
" line x of y
set statusline+=\ [line\ %l\/%L\ column\ %c]
" Git conflicted
set stl+=%{ConflictedVersion()}

" Change colour of statusline in insert mode
hi statusline ctermfg=Black ctermbg=White
au InsertEnter * hi statusline term=reverse ctermfg=42 ctermbg=Black guifg=#3cb371 guibg=Black
au InsertLeave * hi statusline term=reverse ctermfg=Grey ctermbg=Black guifg=Grey  guibg=Black

" Set wildignore
set wildignore+=*/tmp/*
set wildignore+=*/vendor/*
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak,*.orig
" Set a lower priority for .old files
set suffixes+=.old

" Disable markdown folding
let g:vim_markdown_folding_disabled = 1

" Set sivler searcher as a grep tool
set grepprg=ag\ --nogroup\ --nocolor
let g:grep_cmd_opts = '--line-numbers --noheading'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" CtrlP plugin options
let g:ctrlp_cmd = 'CtrlP :pwd'

" NERDTree plugin options
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "right"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 60 
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 0

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

" Disable codeium by default
let g:codeium_enabled = v:false

" Rspec plugin options
let g:rspec_command = 'call VimuxRunCommand("rspec {spec}\n")'

" Vimux plugin options
let g:VimuxRunnerType = "window"

" Vimdiff
set diffopt+=vertical

" Basic mappings
imap jk <ESC>

" searching mappings
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr> 
nmap <space> /
map <c-space> ?

" ,a to Ack (search in files)
nnoremap <leader>a :Ag 

" Center screen when scrolling search results
nmap n nzz
nmap N Nzz

" splits mappings
nmap <leader>sh <C-w>h
nmap <leader>sj <C-w>j
nmap <leader>sk <C-w>k
nmap <leader>sl <C-w>l
nnoremap <leader>vl :vs<cr>
nnoremap <leader>rw :%s/\s\+$//e<cr>

" buffer mappings
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" mappings to edit/view files relative to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" mapping to switch between last two buffers
nnoremap <leader><leader> <c-^>

" Macro to easily navigate from do to end blocks in Ruby
runtime macros/matchit.vim

" Saving and exit mappings
nmap <leader>q :wqa!<CR>
nmap <leader>sq :q<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" Change current project directory
execute 'map <leader>gp :cd ' . $HOME . '/projects/'

" System Buffer Copy Paste
map <leader>bc "+yy
map <leader>bp "+p

" Git blame mappings
nmap <Leader>gb :Gblame<CR>
vmap <Leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

" CtrlP bindings
map <leader>f :CtrlPMixed<cr>
let g:ctrlp_map = '<Leader>f'

" NERDTree plugin key bindings
map <leader>n :NERDTreeToggle .<cr>
map <leader>nf :NERDTreeFind<cr>

" Rspec binding
nnoremap <leader>rr :A<CR>
nnoremap <leader>rn :call RunNearestSpec()<cr>
nnoremap <leader>rf :call RunCurrentSpecFile()<cr>
nnoremap <leader>ra :call RunAllSpecs()<cr>

" Rubocop binding
nnoremap <leader>rc :call VimuxRunCommand("rubocop ". expand('%:p'))<cr>
nnoremap <leader>rca :call VimuxRunCommand("rubocop")<cr>

" Run ruby script
nnoremap <leader>rs :call VimuxRunCommand("ruby ". expand('%:p'))<cr>

" Run javascript code
nnoremap <leader>rjs :!node %<cr>

" Edit vimrc bindings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Read custom configuration
let home_path = expand("$HOME/")
if filereadable(home_path . '.vimrc.local')
  source ~/.vimrc.local
endif

" Apply vimrc once it is stored
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %

" Go Plugin mappings
au FileType go nmap <leader>rg <Plug>(go-run)
au FileType go nmap <leader>rb <Plug>(go-build)
au FileType go nmap <leader>rt <Plug>(go-test)
au FileType go nmap <leader>rc <Plug>(go-coverage)

" Syntax highlighting
au BufRead,BufNewFile *.hcl setfiletype terraform

" Codeium mappings
map <leader>ce :CodeiumEnable<cr>
map <leader>cd :CodeiumDisable<cr>

