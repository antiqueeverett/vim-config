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
Plug 'eagletmt/neco-ghc'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'haya14busa/incsearch.vim'
Plug 'inkarkat/vim-searchhighlighting'
Plug 'google/vim-searchindex'
Plug 'sgeb/vim-matlab'
Plug 'timakro/vim-searchant'
"Plug 'antiqueeverett/vim-undo'
"Plug 'antiqueeverett/vim-cmake'
"Plug 'antiqueeverett/vim-cursor'
"Plug 'antiqueeverett/vim-autosave'
"Plug 'antiqueeverett/vim-clipboard'
"Plug 'antiqueeverett/vim-motion-tutor'
call plug#end()


" Plug 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1


" Plug 'lazywei/vim-matlab'
augroup matlabSpell
    autocmd!
    autocmd BufRead,BufNewFile *.m setlocal nospell
augroup END
