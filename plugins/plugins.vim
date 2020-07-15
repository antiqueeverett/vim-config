" -- auto-loading plugins
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" -- classic tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'

" -- fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" -- CXX specific
Plug 'vhdirk/vim-cmake'
Plug 'valloric/youcompleteme'
Plug 'vim-scripts/taglist.vim'

" -- Clojure specific
Plug 'sjl/vitality.vim'
Plug 'guns/vim-clojure-static'
Plug 'clojure-emacs/cider-nrepl'

" -- nifty utilities
Plug 'godlygeek/tabular'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'kien/rainbow_parentheses.vim'

" -- aesthetics
Plug 'jmckiern/vim-venter'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" -- syntax and formatting
Plug 'lervag/vimtex'
Plug 'Chiel92/vim-autoformat'

" Plug 'morhetz/gruvbox'
" Plug 'scrooloose/syntastic'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" -- Plugin settings organized in exclusive files
source ~/Repositories/dotfiles/vim-dotfiles/plugins/fzf.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/nord.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/venter.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/repeat.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/vimtext.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/airline.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/nerdtree.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/indentline.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/youcompleteme.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/vimautoformat.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/rainbowparenth.vim
" source ~/Repositories/dotfiles/vim-dotfiles/plugins/gruvbox.vim
" source ~/Repositories/dotfiles/vim-dotfiles/plugins/neoclide.vim


" -- under development
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/heist.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/newfile.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/refactor.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/greatergit.vim

