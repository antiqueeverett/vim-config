" leader
let mapleader = ';'

" ; (repeat-last-find) has a delay when also using ; as leader.
" One simple workaround is to map ; (repeat-last-find) to leader.
nnoremap <Leader>; ;

" (c)-lear search highlight
nnoremap <silent><C-C> :let @/=""<CR>

" (f)-old
nnoremap <Leader>f za
nnoremap <Leader>z zi

" (s)-pell
nnoremap <silent><C-S> :setlocal spell!<CR>

" (w)-rite file
nnoremap <Leader>w :w <CR>

" (+)(-) split resize
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>

" navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ($)-ource
nnoremap <leader>$ :update<CR> :source ~/.vimrc<CR>
