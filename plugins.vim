" -- auto-loading plugins
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'valloric/youcompleteme'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'

Plug 'vim-scripts/taglist.vim'
Plug 'vim-airline/vim-airline'

Plug 'godlygeek/tabular'
Plug 'yggdroot/indentline'

Plug 'sjl/vitality.vim'
Plug 'guns/vim-clojure-static'
Plug 'clojure-emacs/cider-nrepl'

Plug 'lervag/vimtex'

Plug 'morhetz/gruvbox'

Plug 'raimondi/delimitmate'
Plug 'kien/rainbow_parentheses.vim'
call plug#end()


" -- central location for ever-growing plugin configuration
source ~/Repositories/dotfiles/vim/plugin-conf/fzf.vim
source ~/Repositories/dotfiles/vim/plugin-conf/gruvbox.vim
source ~/Repositories/dotfiles/vim/plugin-conf/neoclide.vim
"source ~/Repositories/dotfiles/vim/plugin-conf/NERDTree.vim
source ~/Repositories/dotfiles/vim/plugin-conf/youcompleteme.vim
source ~/Repositories/dotfiles/vim/plugin-conf/indent-line.vim
source ~/Repositories/dotfiles/vim/plugin-conf/rainbow-parenth.vim

