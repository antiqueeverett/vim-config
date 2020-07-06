" -- quick exit
map q :wq! <CR>
map Q :qa! <CR>
map <Leader>q :q! <CR>


" --leader
let mapleader = ";"


" -- pinky friendly caption
nnoremap <Leader>c ~
" mnemonic (c) for caption


" -- toggling folds (global)
nnoremap <Leader>f zi
" mnemonic (f) for fold


" -- indenting (global)
nnoremap <Leader>t gg=G``
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
nnoremap <silent> <Esc><Esc> :let @/=""<CR>


" -- toggling rainbow parentheses
nnoremap <C-P> :RainbowParenthesesToggle<CR>


" -- toggling between set number and relative number
nnoremap <silent> <Space> :call ToggleNumber()<CR>


" -- searching and replacing globally
nnoremap <Leader>r :%s/
" -- This is only a mere helper to reduce key strokes.
"    One would still need to complete the search and replace pattern
"    e.g. :%s/pattern/replace-pattern/gc


"--------------------------------------------------------------
"-------------------- 'tpope/vim-repeat' ----------------------
"--------------------------------------------------------------
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


"--------------------------------------------------------------
"-------------------------- 'fzf' -----------------------------
"--------------------------------------------------------------
nnoremap <silent>[ :FZF $HOME/Repositories <CR>


"--------------------------------------------------------------
"--------------------- 'YouCompleteMe' ------------------------
"--------------------------------------------------------------
nnoremap <silent> <Leader>j2def  :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <Leader>j2dec  :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <Leader>j2inc  :YcmCompleter GoToInclude<CR>
nnoremap <silent> <Leader>j2imp  :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <Leader>j2Ref  :YcmCompleter GoToReferences<CR>


" -- OPEN real-estate:
" --------------------
"  tab
"  <Leader> tab
"  <C-O>
"  <Leader> o
"  <Leader>


" -- sourcing .vimrc
nnoremap <leader>s :source ~/.vimrc<CR>


