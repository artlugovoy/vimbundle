set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle/.git"))
  !git clone git://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle
endif

set rtp+=~/.vim/bundle/Vundle

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'rking/ag.vim.git'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/syntastic'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'mxw/vim-jsx'

Plugin 'thoughtbot/vim-rspec.git'
Plugin 'benmills/vimux.git'

Plugin 'fatih/vim-go'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-eunuch'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'

Plugin 'w0ng/vim-hybrid'
Plugin 'trevordmiller/nova-vim'

call vundle#end()
filetype plugin indent on
