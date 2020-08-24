" encoding
set encoding=utf-8
scriptencoding utf-8

" use gui colors
set termguicolors

" use 256 terminal colors
set t_Co=256

" always show status
set laststatus=2

" enable syntax highlight
syntax on

" enable search highlight
set hlsearch
set incsearch

" enable cursor line
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

" number line style (keep order!)
set relativenumber
set number
set number relativenumber

" silence
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
