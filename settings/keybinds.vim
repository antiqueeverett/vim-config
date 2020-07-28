"  --leader
let mapleader = ";"

" -- (C)-lear search highlight
nnoremap <silent><C-C> :let @/=""<CR>

" -- (D)-elete current buffer and file
nnoremap <Leader>D :Delete<CR>

" -- (f)-old
nnoremap <Leader>f za
nnoremap <Leader>z zi

" -- (F)-ocus (center buffer on screen)
nnoremap <silent><Leader>F :VenterToggle<CR>

" -- (i)-ndenting
nnoremap <Leader>i :Autoformat<CR>

" -- (M)-move current buffer and file
nnoremap <Leader>M :Rename

" -- CTRL (s)-pell
nnoremap <silent><C-S> :setlocal spell!<CR>

" -- (w)-rite file
nnoremap <Leader>w :w <CR>

" -- | spit
nnoremap <leader><bar> :vnew<CR>

" -- (+)(-) split resizing
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>

" -- split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

