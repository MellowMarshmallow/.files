" Line Settings
set number relativenumber
set nowrap
set scrolloff=8

" Syntax and Stuff
syntax enable
"set spell
filetype plugin on

" Splits
set splitbelow splitright

" Visual Stuff
if !has('gui_running')
  set t_Co=256
endif

set showmatch
set conceallevel=0

set pumheight=10
set updatetime=300
set timeoutlen=500

" Status Line
set noshowmode
set ruler
set cmdheight=1
set laststatus=2
set showtabline=2

" Searching
set hlsearch
set ignorecase
set incsearch

" Indentation and Tabbing
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Files
set encoding=utf-8
set fileencoding=utf-8

set hidden
set undolevels=1000

set nobackup
set nowritebackup
set noswapfile

" Miscellaneous
set mouse=a
set backspace=indent,eol,start
set formatoptions-=cro
set iskeyword+=-

set lazyredraw
