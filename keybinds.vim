" --leader
let mapleader = ";"


" -- sourcing .vimrc
nnoremap <leader>s :source ~/.vimrc<CR>


" -- quick exit
map q :wq! <CR>
map Q :qa! <CR>
map <Leader>q :q! <CR>


" -- quick exit
map <Leader>w :w <CR>


" -- pinky friendly caption
nnoremap <Leader>c ~
" mnemonic (c) for caption


" -- toggling folds (global)
nnoremap <Leader>f zi
" mnemonic (f) for fold


" -- indenting (global)
nnoremap <Leader>i gg=G``
" mnemonic (t) for tab


" -- splitting
nnoremap <leader>( :vsp<CR>
nnoremap <leader>) :sp<CR>


" -- split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" -- split resizing
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>


" -- toggling spell-check
nnoremap <silent> <C-S> :setlocal spell!<CR>


" -- escaping highlight
nnoremap <silent> <Leader><Esc> :let @/=""<CR>


" -- toggling rainbow parentheses
nnoremap <C-P> :RainbowParenthesesToggle<CR>


" -- toggling between set number and relative number
nnoremap <silent> <Space> :call ToggleNumber()<CR>


"---------------------- ' NERDTree' --------------------------
nnoremap <silent> <Leader>t :NERDTree <CR>


"-------------------- 'tpope/vim-repeat' ----------------------
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


"-------------------------- 'fzf' -----------------------------
nnoremap <silent><Leader>' :FZF $HOME/Repositories <CR>


"--------------------- 'YouCompleteMe' ------------------------
nnoremap <silent> <Leader>2df  :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <Leader>2dc  :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <Leader>2inc  :YcmCompleter GoToInclude<CR>
nnoremap <silent> <Leader>2imp  :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <Leader>2ref  :YcmCompleter GoToReferences<CR>

