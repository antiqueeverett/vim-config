filetype indent on
filetype plugin on

syntax on
set number
set expandtab
set autoindent
set smartindent

set hlsearch
set incsearch
set cursorline

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

set shiftwidth=4 softtabstop=4 expandtab

set spelllang=en_us,de_de spell
set spellfile=~/Dropbox/config/spellings.utf-8.add


" -- AUTO COMMANDS:
" -- stripping empty white spaces on write
augroup strip_whitespaces_on_write
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" -- indenting on write
augroup indent_on_write
    autocmd!
    autocmd BufWritePre *.html *.cpp *.java *.tex *.md :normal gg=G
augroup END


" -- CUSTOM FUNCTIONS:
" -- toggling between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

