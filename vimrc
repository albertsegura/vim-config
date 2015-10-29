set nocompatible
set laststatus=2
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/base16-vim'
"Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-startify'

call vundle#end()
filetype plugin indent on

"-----------------------"
" Plugins configuration "
"-----------------------"

" Colorscheme setup
set t_Co=256
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="gruvbox"
set laststatus=2

" YCM setup
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Syntastic
let g:syntastic_cpp_compiler_options = '-std=c++11'


"-----------------------"
" General configuration "
"-----------------------"
set dir=~/.vimswap//
let mapleader="º"
set lazyredraw
set number
set encoding=utf-8

" Tab identation
set autoindent
set noexpandtab		" Don't insert spaces when pressing Tab
set tabstop=8		" Show existing tab with X spaces width
set shiftwidth=8	" When indenting with '>', use X spaces width
set softtabstop=8


set mouse=a
set showcmd

set hidden
set hlsearch


"----------"
" Mappings "
"----------"

"> General mappings
"------------------
nmap<silent>	<leader>ev	:vert new ~/.vimrc<CR>
nmap<silent>	<leader>T	:set tabstop=8 softtabstop=8 shiftwidth=8<CR>
nmap<silent>	<leader>t	:set tabstop=4 softtabstop=4 shiftwidth=4<CR>
" Disable highlighting
nmap<silent>	//		:nohlsearch<CR>


"> Buffer mappings
"-----------------
map		<S-Right>	:tabnext<CR>
map		<S-Left>	:tabprevious<CR>

" Window/Navigation mappings
"---------------------------
nmap<silent>	<A-Up>		:wincmd k<CR>
nmap<silent>	<A-Down>	:wincmd j<CR>
nmap<silent>	<A-Left>	:wincmd h<CR>
nmap<silent>	<A-Right>	:wincmd l<CR>
map<silent>	<C-Up>		<C-y>
map<silent>	<C-Down>	<C-e>
inoremap	<C-BS>		<C-w>

"> Tab mappings
"--------------
nmap		<F8>		:TagbarToggle<CR>
vnoremap	<C-c>		"+y
inoremap	<C-v>		<C-r><C-p>+
nnoremap	<C-v>		i<C-r><C-p>+<ESC>

nmap		<Leader>=	:Tabularize /=<CR>
vmap		<Leader>=	:Tabularize /=<CR>
nmap		<Leader>:	:Tabularize /:<CR>
vmap		<Leader>:	:Tabularize /:<CR>
nmap		<Leader><=	:Tabularize /<=<CR>
vmap		<Leader><=	:Tabularize /<=<CR>
