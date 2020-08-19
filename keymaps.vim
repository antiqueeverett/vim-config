" leader
let mapleader = ';'

" ; (repeat-last-find) has a delay when also using ; as leader.
" One simple workaround is to map ; (repeat-last-find) to leader.
nnoremap <Leader>; ;

" [c]lear search highlight
nnoremap <silent><C-C> :let @/=""<CR>

" [f]old
nnoremap <Leader>f za
nnoremap <Leader>z zi

" [s]pell
nnoremap <silent><C-S> :setlocal spell!<CR>

" [+][-] split resize
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>

" navigate splits across all modes
nnoremap <C-J> <C-W><C-J>

nnoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>
tnoremap <C-L> <C-W><C-L>
vnoremap <C-L> <C-W><C-L>
inoremap <C-L> <C-W><C-L>

nnoremap <C-H> <C-W><C-H>
tnoremap <C-H> <C-W><C-H>
vnoremap <C-H> <C-W><C-H>
inoremap <C-H> <C-W><C-H>

" yank into clipboard
vmap <Leader>yy "+yy

" paste from clipboard
nnoremap <Leader>yp "+p

" write buffer
nnoremap <Leader><ENTER> :w<CR>

" source .vimrc
nnoremap <silent><Leader>$ :
            \call GetPos()<Bar>
            \silent write<Bar>
            \silent source ~/.vimrc<Bar>
            \call SetPos()<Bar>
            \echo 'done!'<CR>
