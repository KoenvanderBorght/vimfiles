" Behave like Windows
source $VIMRUNTIME/mswin.vim
behave mswin

" Enable pathogen
execute pathogen#infect('bundle/{}', '~/vimfiles/bundle/{}')

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Set a nice theme
syntax enable 
set background=dark 
colorscheme solarized

if has('gui_running')
	set background=dark
    " Hide the toolbar
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
else
	set background=dark
endif

" Set leaderkey to spacebar 
let mapleader=" "  

" Leaderkey + s results in reloading vim config 
map <leader>s :source ~/vimfiles/koenvdb-vimrc.vim<CR>  

" Keep more info in memory to speed things up 
set hidden 
set history=100

" Logic when indenting 
filetype indent on 
set nowrap 
set tabstop=4 
set shiftwidth=2 
set expandtab 
set smartindent 
set autoindent

autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set nocompatible 
filetype off  
let &runtimepath.=',~/vimfiles/bundle/ale'  
silent! helptags ALL
filetype plugin on
