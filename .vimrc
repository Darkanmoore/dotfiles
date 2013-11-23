filetype plugin on
filetype indent on
set showmatch
set wildmenu
set number
set ttyfast
syntax enable
syntax on
set nocompatible
colorscheme dante
set background=dark
set shell=/bin/zsh
set termencoding=utf-8
filetype on
set tabstop=4
set shiftwidth=4
set autoindent
set showcmd 
set mouse=a

"Searching Options
set hlsearch
set ignorecase
set showmode

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

