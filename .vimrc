set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'


colorscheme molokai

let g:molokai_original = 1

let g:airline_powerline_fonts = 1
let g:airline_theme="molokai"

set t_Co=256
filetype plugin indent on

set lazyredraw
set number
set laststatus=2
set encoding=utf-8
