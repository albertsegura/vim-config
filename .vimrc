set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'godlygeek/csapprox'
Plugin 'flazz/vim-colorschemes'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'

filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:airline_theme="lucius"

set t_Co=256
set background=dark
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme gruvbox

set lazyredraw
set number
set laststatus=2
set encoding=utf-8
set mouse=a

set hidden
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
nmap <F8> :TagbarToggle<CR>
vnoremap <C-c> "+y
inoremap <C-v> <C-r><C-p>+
nnoremap <C-v> i<C-r><C-p>+<ESC>
 

