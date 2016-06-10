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
Plugin 'scrooloose/syntastic'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on
