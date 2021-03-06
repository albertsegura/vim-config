set nocompatible
set laststatus=2
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Used
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'brookhong/cscope.vim'

" Sometimes used (?)
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'lervag/vimtex'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'

" Not Used
"Plugin 'chriskempson/base16-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on


"-----------------------"
" Plugins configuration "
"-----------------------"

" Colorscheme setup
set t_Co=256
set cursorline
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme="gruvbox"

" YCM setup
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Syntastic
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
" let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:startify_custom_header = ['']

"------------------------"
" User defined functions "
"------------------------"
let g:syntastic_toggle_list = 1 " User defined
function! SyntasticToggleList()
	if g:syntastic_toggle_list
		Errors
		let g:syntastic_toggle_list = 0
	else
		lclose
		let g:syntastic_toggle_list = 1
	endif
endfunction

let g:tab_identation_mode = 0 " User defined
function! TabIdentationToggle()
	if g:tab_identation_mode
		set tabstop=8 softtabstop=8 shiftwidth=8
		let g:tab_identation_mode = 0
	else
		set tabstop=4 softtabstop=4 shiftwidth=4
		let g:tab_identation_mode = 1
	endif
endfunction


"-----------------------"
" General configuration "
"-----------------------"
set dir=~/.vim/vimswap//
let mapleader="º"
set lazyredraw
set number
syntax on
set wildmenu		" Status bar visible completition

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Tab identation
set autoindent
set noexpandtab		" Don't insert spaces when pressing Tab
set tabstop=4		" Show existing tab with X spaces width
set shiftwidth=4	" When indenting with '>', use X spaces width
set softtabstop=4

set mouse=a
set showcmd
set hidden		" Enable hidden buffers

" Search
set hlsearch
set incsearch		" Jump to match while typing search pattern


"---------"
" Autocmd "
"---------"

" Trailing space highlight
autocmd VimEnter *	syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertEnter *	syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave *	syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

autocmd BufRead *.tex setlocal spell spelllang=en_gb
au BufRead,BufNewFile *.tex setlocal textwidth=80

"----------"
" Mappings "
"----------"

"> Abbreviations
"---------------
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Qall qall

"> General mappings
"------------------
nmap<silent>	<leader>ev	:vert new ~/.vimrc<CR>
nmap<silent>	<leader>t	:call TabIdentationToggle()<CR>
nmap<silent>	<F7>		:NERDTreeToggle<CR>
nmap<silent>	<F8>		:TagbarToggle<CR>
nmap<silent>	<F9>		:call SyntasticToggleList()<CR>

" Disable highlighting
nmap<silent>	//		:nohlsearch<CR>

if has('nvim')
	nnoremap<silent> <leader>sh :terminal<CR>
endif

"> Buffer mappings
"-----------------
map		<S-Right>	:tabnext<CR>
map		<S-Left>	:tabprevious<CR>

" Window/Navigation mappings
"---------------------------
noremap<silent>	<Leader>h	:<C-u>split<CR>
noremap<silent>	<Leader>v	:<C-u>vsplit<CR>
nmap<silent>	<A-Up>		:wincmd k<CR>
nmap<silent>	<A-Down>	:wincmd j<CR>
nmap<silent>	<A-Left>	:wincmd h<CR>
nmap<silent>	<A-Right>	:wincmd l<CR>
map<silent>	<C-Up>		<C-y>
map<silent>	<C-Down>	<C-e>
inoremap	<C-BS>		<C-w>

"> Tab mappings
"--------------
" Movement between tabs
nnoremap<silent><Tab>		gt
nnoremap<silent><S-Tab>		gT
nnoremap<silent><leader>nt	:tabnew<CR>
nnoremap<silent><leader>dt	:tabedit %<CR>

" Tabularize
nmap		<Leader>=	:Tabularize /=<CR>
vmap		<Leader>=	:Tabularize /=<CR>
nmap		<Leader>:	:Tabularize /:<CR>
vmap		<Leader>:	:Tabularize /:<CR>
nmap		<Leader><=	:Tabularize /<=<CR>
vmap		<Leader><=	:Tabularize /<=<CR>

"> Paste Mappings
"----------------
vnoremap	<C-c>		"+y
inoremap	<C-v>		<C-r><C-p>+
nnoremap	<C-v>		i<C-r><C-p>+<ESC>

"> Visual Selections Mappings
"----------------------------
" Maintain Visual Mode after shifting using > or <
vmap < <gv
vmap > >gv

" Move visual selection block
vnoremap	<S-Up>		:m '<-2<CR>gv=gv
vnoremap	<S-Down>	:m '>+1<CR>gv=gv


" Latex
let g:tex_flavor = 'latex'

execute "set colorcolumn=" . join(range(81,335), ',')

set cscopetag
set csto=0
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>

