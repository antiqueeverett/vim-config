" -- split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" -- fzf find
map ' :FZF<CR>


" -- toggling line fold
nnoremap <silent> <tab> za


" -- toggling global folds
nnoremap <silent> <C-F> zi


" -- indenting
nnoremap <silent> <C-T> gg=G


" -- source .vimrc file
nnoremap <silent> <`> :source ~/.vimrc<CR>


" -- toggling spell check
nnoremap <silent> <C-S> :setlocal spell!<CR>


" -- escaping search highlight (double tapping escape)
nnoremap <silent> <Esc><Esc> :let @/=""<CR>


" -- toggling rainbow parentheses
nnoremap <C-P> :RainbowParenthesesToggle<CR>


" -- toggling between set number and relative number
nnoremap <silent> <Space> :call ToggleNumber()<CR>

