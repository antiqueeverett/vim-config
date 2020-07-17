"  --leader
let mapleader = ";"

" -- (C)-lear search highlight
nnoremap <silent><Leader>c :let @/=""<CR>

" -- (c)-aption
nnoremap <Leader>c ~

" -- (d)-elete buffer
nnoremap <Leader>d :bdelete!<CR>

" -- (D)-elete current buffer and file
nnoremap <Leader>D :Delete<CR>

" -- (f)-old
nnoremap <Leader>f za

" -- (F)-ocus (center buffer on screen)
nnoremap <silent><Leader>F :VenterToggle<CR>

" -- (i)-ndenting
nnoremap <Leader>i :Autoformat<CR>

" -- (m)-move current buffer and file
nnoremap <Leader>m :Rename

" -- (q)-uit
nnoremap q :q! <CR>

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

" -- ($)-ource
nnoremap <leader>$ :source ~/.vimrc<CR>

