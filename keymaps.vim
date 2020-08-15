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
tnoremap <C-J> <C-W><C-J>
vnoremap <C-J> <C-W><C-J>
inoremap <C-J> <C-W><C-J>

nnoremap <C-K> <C-W><C-K>
tnoremap <C-K> <C-W><C-K>
vnoremap <C-K> <C-W><C-K>
inoremap <C-K> <C-W><C-K>

nnoremap <C-L> <C-W><C-L>
tnoremap <C-L> <C-W><C-L>
vnoremap <C-L> <C-W><C-L>
inoremap <C-L> <C-W><C-L>

nnoremap <C-H> <C-W><C-H>
tnoremap <C-H> <C-W><C-H>
vnoremap <C-H> <C-W><C-H>
inoremap <C-H> <C-W><C-H>

function! PreSrc()
    silent call SaveCursorPos()
    silent write
endfunction

function! PostSrc()
    silent call ResetCursorPos()
    echo 'done!'
endfunction

" [$]ource
nnoremap <silent><leader>$ :call PreSrc()<CR> :source ~/.vimrc<CR> :call PostSrc()<CR>
