set nocompatible
filetype off

if !isdirectory(expand("~/.vim/bundle/Vundle/.git"))
  !git clone git://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle
endif

set rtp+=~/.vim/bundle/Vundle

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Townk/vim-autoclose'

Plugin 'w0ng/vim-hybrid'

call vundle#end()
filetype plugin indent on
