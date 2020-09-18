" plug.vim auto-loading
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'valloric/youcompleteme'
Plug 'sjl/vitality.vim'
Plug 'guns/vim-clojure-static'
Plug 'clojure-emacs/cider-nrepl'
Plug 'ervandew/supertab'
Plug 'voldikss/vim-floaterm'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-scripts/taglist.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'antiqueeverett/vim-undo'
Plug 'antiqueeverett/vim-cmake'
Plug 'antiqueeverett/vim-cursor'
Plug 'antiqueeverett/vim-autosave'
"Plug 'antiqueeverett/vim-clipboard'
Plug 'antiqueeverett/vim-motion-tutor'
call plug#end()
