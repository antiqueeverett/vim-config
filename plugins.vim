" plug.vim auto-loading
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" theme
Plug 'morhetz/gruvbox'
"Plug 'arcticicestudio/nord-vim'

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-fireplace'

" fzf
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" cxx
Plug 'valloric/youcompleteme'

" clojure
Plug 'sjl/vitality.vim'
Plug 'guns/vim-clojure-static'
Plug 'clojure-emacs/cider-nrepl'

" utility
Plug 'ervandew/supertab'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-scripts/taglist.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'

" linting
Plug 'dense-analysis/ale'

" aesthetics
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim
Plug 'lervag/vimtex'

"git
Plug 'airblade/vim-gitgutter'

call plug#end()

" list of current plugin config files
let g:plugin_config_files=[
            \'gruvbox.vim',
            \'gitgutter.vim',
            \'ale.vim',
            \'fzf.vim',
            \'goyo.vim',
            \'repeat.vim',
            \'vimtext.vim',
            \'airline.vim',
            \'fugitive.vim',
            \'surround.vim',
            \'nerdtree.vim',
            \'supertab.vim',
            \'ultisnips.vim',
            \'autoformat.vim',
            \'indentline.vim',
            \'youcompleteme.vim',
            \'rainbowparenth.vim',
            \'highlightedyank.vim']

" source plugin configuration from dedicated source file list
for file in g:plugin_config_files
    execute 'source $VIM_DOTFILES_PATH/plugin-config/' . file
endfor

" list of personal trench plugin config files
let g:my_plugin_sandbox_files=[
            \'cmake.vim',
            \'heist.vim',
            \'xpaste.vim',
            \'replace.vim']

" source plugin configuration from dedicated source file list
for file in g:my_plugin_sandbox_files
    execute 'source $VIM_DOTFILES_PATH/plugin-config/sandbox/' . file
endfor
