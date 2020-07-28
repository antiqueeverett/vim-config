" -- color
set t_Co=256


" -- status
set laststatus=2

" -- syntax
syntax on

" -- search
set hlsearch
set incsearch
set cursorline

" -- indent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

" -- detect
filetype indent on
filetype plugin on

" -- lines
set wrap
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" -- silence
set visualbell
set t_vb=

" -- backup
set nobackup
set noswapfile
set nowritebackup

" -- fold
" set foldmethod=indent
" set foldnestmax=3

" -- ignore patterns
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class

" -- timeout
set timeoutlen=1000 ttimeoutlen=0

" -- spell
set spelllang=en_us,de_de spell
set spellfile=~/Dropbox/config/spellings.utf-8.add


" -- + utility (easier to follow in sep files)
source ~/Repositories/dotfiles/vim-dotfiles/settings/keybinds.vim
source ~/Repositories/dotfiles/vim-dotfiles/settings/functions.vim
source ~/Repositories/dotfiles/vim-dotfiles/settings/autocommands.vim


" -- blink cursor | line (insert) vs block (normal)
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

" --  send nothing to the terminal
"set t_ti= t_te=
