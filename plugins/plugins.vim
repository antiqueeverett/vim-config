" plug.vim auto-loading
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'

" Fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" CXX
"Plug 'vhdirk/vim-cmake'
Plug 'valloric/youcompleteme'
Plug 'vim-scripts/taglist.vim'

" Clojure
Plug 'sjl/vitality.vim'
Plug 'guns/vim-clojure-static'
Plug 'clojure-emacs/cider-nrepl'

" Utility
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'kien/rainbow_parentheses.vim'

" Linting
Plug 'dense-analysis/ale'

" Aesthetics
Plug 'jmckiern/vim-venter'

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

" Format
Plug 'lervag/vimtex'
Plug 'Chiel92/vim-autoformat'

"Git
Plug 'airblade/vim-gitgutter'
call plug#end()

" source configurations
source ~/Repositories/dotfiles/vim-dotfiles/plugins/ale.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/fzf.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/nord.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/venter.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/repeat.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/gruvbox.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/vimtext.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/airline.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/fugitive.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/surround.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/nerdtree.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/gitgutter.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/indentline.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/youcompleteme.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/vimautoformat.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/rainbowparenth.vim
" sandbox
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/heist.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/xpaste.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/cmake.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/newfile.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/development/replace.vim

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"source ~/Repositories/dotfiles/vim-dotfiles/plugins/neoclide.vim
