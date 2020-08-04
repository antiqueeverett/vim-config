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

" lines and line number rules
set wrap
set relativenumber
set number
set number relativenumber
set colorcolumn=80

" silence pesky bell
set visualbell
set t_vb=

" do not create backup files
set nobackup
set noswapfile
set nowritebackup

" fold rules
" set foldmethod=indent
" set foldnestmax=3

" ignore patterns
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

" remove delay on ESC key press
set timeoutlen=1000 ttimeoutlen=0

" set spelling dictionaries
set spelllang=en_us,de_de spell
set spellfile=~/Dropbox/config/spellings.utf-8.add

" set zsh as vim shell
if has('macunix')
    set shell=/bin/zsh
elseif has('unix')
    set shell=/usr/bin/zsh
endif

" blink cursor with line (in insert) and block (in normal)
if &term ==# 'xterm-256color' || &term ==# 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

" open splits on rhs
set splitright

" source other settings from separate files
source ~/Repositories/dotfiles/vim-dotfiles/settings/keybinds.vim
source ~/Repositories/dotfiles/vim-dotfiles/settings/functions.vim
source ~/Repositories/dotfiles/vim-dotfiles/settings/autocommands.vim
