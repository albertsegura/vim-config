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

" Color schemes and airline configuration
let g:airline_powerline_fonts = 1
let g:airline_theme="lucius"

set t_Co=256
set background=dark
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme gruvbox


" General configuration
let mapleader="º"
set lazyredraw
set number
set laststatus=2
set encoding=utf-8

set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab
set autoindent


set mouse=a
set showcmd

set hidden

" Mappings
nmap <silent> <leader>ev :vert new ~/.vimrc<CR>

"> Buffer mappings
map <S-Right> :tabnext<CR>
map <S-Left> :tabprevious<CR>

"> Window mappings
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"> Tab mappings


"> Function buttons
nmap <F8> :TagbarToggle<CR>
vnoremap <C-c> "+y
inoremap <C-v> <C-r><C-p>+
nnoremap <C-v> i<C-r><C-p>+<ESC>

" 
map <silent> <C-Up> <C-y>
map <silent> <C-Down> <C-e>



