"  --leader
let mapleader = ";"

" -- sourcing .vimrc
nnoremap <leader>` :source ~/.vimrc<CR>

" -- quick exit
map q :wq! <CR>
map Q :qa! <CR>

" -- deleting a buffer
nnoremap <Leader>~ :bdelete!<CR>

" -- quick exit
map <Leader>w :w <CR>

" -- pinky friendly: mnemonic (c) for caption
nnoremap <Leader>c ~


" -- toggling folds: mnemonic (f) for fold
nnoremap <Leader>f zi

" -- indenting (global): mnemonic (f) for fold
nnoremap <Leader>i :Autoformat<CR>

" -- the only split that actually matters
nnoremap <leader>| :vnew<CR>

" -- split navigation
nnoremap <C-J><C-W><C-J>
nnoremap <C-K><C-W><C-K>
nnoremap <C-L><C-W><C-L>
nnoremap <C-H><C-W><C-H>

" -- split resizing
nnoremap <Leader>= :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>


" -- toggling spell-check
nnoremap <silent><C-S> :setlocal spell!<CR>


" -- escaping highlight search
nnoremap <silent><Leader><Esc> :let @/=""<CR>

" -- deleting a buffer + file
nnoremap <Leader>d :Delete<CR>

" -- rename on disk and on buffer
nnoremap <Leader>r :Rename<CR>

" -- focus
nnoremap <silent><Leader>v :VenterToggle<CR>
