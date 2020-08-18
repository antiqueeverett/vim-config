" encoding
set encoding=utf-8
scriptencoding utf-8

" default to gui colors
set termguicolors

" always show status
set laststatus=2

" enable syntax highlight
syntax on

" enable search highlight
set hlsearch
set incsearch
set cursorline

" indent rules
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

" detect file type
filetype indent on
filetype plugin on

" line wrap
set wrap
set colorcolumn=80

" number line style
" -- order matters here --
set relativenumber
set number
set number relativenumber

" silence pesky bell
set visualbell
set t_vb=

" no backup files
set nobackup
set noswapfile
set nowritebackup

" split on RHS
set splitright

" ignore patterns
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

" remove delay ESC key-press
set timeoutlen=1000 ttimeoutlen=0

" set spelling dictionaries
set spelllang=en_us,de_de spell
set spellfile=~/Dropbox/config/spellings.utf-8.add

" fold rules
" set foldmethod=indent
" set foldnestmax=3
" set clipboard=unnamedplus
