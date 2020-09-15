autocmd!

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

" use clipboard for all yanking
" set clipboard=unnamedplus

" cmd message row (1 = default)
set cmdheight=1

" abbreviate, and truncate message when necessary
set shortmess=at

" repeat yanking with [.]
set cpoptions+=y

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

" list of configuration files
let g:vim_conf=[
            \'keymaps.vim',
            \'autocommands.vim',
            \'plugins.vim']

" list of plugin configuration files
let g:vim_plugin_conf=[
            \'gruvbox.vim',
            \'gitgutter.vim',
            \'ale.vim',
            \'fzf.vim',
            \'goyo.vim',
            \'repeat.vim',
            \'vimtext.vim',
            \'airline.vim',
            \'bufonly.vim',
            \'fugitive.vim',
            \'surround.vim',
            \'nerdtree.vim',
            \'floaterm.vim',
            \'floaterm.vim',
            \'supertab.vim',
            \'ultisnips.vim',
            \'autoformat.vim',
            \'indentline.vim',
            \'youcompleteme.vim',
            \'rainbowparenth.vim']

" list of plugins under development
" let g:vim_plugin_sandbox=[
"             \'undo.vim',
"             \'cursor.vim',
"             \'clipboard.vim',
"             \'vim-practice.vim']
"
" source plugin development sandbox
" for file in g:vim_plugin_sandbox
"     execute 'source $VIM_DOTFILES_PATH/sandbox/' . file
" endfor

" " list custom functions
let g:vim_functions=[
            \'helpers.vim',
            \'terminal.vim']

" source configuration files
for file in g:vim_conf
    execute 'source $VIM_DOTFILES_PATH/' . file
endfor

" source plugin configuration files
for file in g:vim_plugin_conf
    execute 'source $VIM_DOTFILES_PATH/plugconf/' . file
endfor


" source custom vim functions
for file in g:vim_functions
    execute 'source $VIM_DOTFILES_PATH/functions/' . file
endfor
