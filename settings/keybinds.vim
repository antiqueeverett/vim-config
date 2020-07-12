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
"nnoremap <Leader>i gg=G``
nnoremap <Leader>i :Autoformat<CR>


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


" -- escaping highlight search
nnoremap <silent> <Leader><Esc> :let @/=""<CR>

" -- closing a buffer
nnoremap <silent> <Leader>x :bdelete!<CR>
