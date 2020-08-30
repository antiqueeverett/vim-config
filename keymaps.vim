" leader
let mapleader = ';'

" repeat find-in-line
nnoremap <Leader>. ;

" [c]lear search highlight
nnoremap <silent><C-C> :let @/=""<CR>

" [s]pell
nnoremap <silent><C-S> :setlocal spell!<CR>

" [+][-] split resize
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>

" fluid navigation for splits
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

" delete current buffer
nnoremap <silent><Leader>d :bd<CR>

" exit vim
nnoremap <silent><Leader>q :wq!<CR>

" cycle to previous buffer
nnoremap <silent><S-Tab> :bN<CR>

" cycle to next buffer
nnoremap <silent><leader><Tab> :bn<CR>

" source .vimrc
nnoremap <silent><Leader>$ :source ~/.vimrc<Bar> echo 'done!'<CR>
