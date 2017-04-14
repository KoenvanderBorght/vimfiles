" Behave like Windows
source $VIMRUNTIME/mswin.vim
behave mswin

" Enable pathogen
execute pathogen#infect('~/vimfiles/bundle/{}')

" Display line and column number in bottom ruler.
set ruler

" Display the line numbers.
set number

" Set a nice theme
syntax enable 
set background=dark 
colorscheme solarized

if has('gui_running')
	set background=light
else
	set background=dark
endif

" Set leaderkey to spacebar 
let mapleader=" "  

" Leaderkey + s results in reloading vim config 
map <leader>s :source ~/.vimrc<CR>  

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


