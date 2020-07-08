filetype indent on
filetype plugin on
syntax on

" -- search highlight
set hlsearch
set incsearch
set cursorline

" -- indentation
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent


" -- line numbering
set number

set visualbell
set t_vb=

set nobackup
set noswapfile
set nowritebackup

set foldmethod=indent
set foldnestmax=3

set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

set timeoutlen=1000 ttimeoutlen=0

set spelllang=en_us,de_de spell
set spellfile=~/Dropbox/config/spellings.utf-8.add

source ~/Repositories/dotfiles/vim/autocommands.vim
source ~/Repositories/dotfiles/vim/functions.vim
