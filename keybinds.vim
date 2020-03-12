"
" indenting
"
nnoremap <S-T> gg=G


"
" toggling global folds
"
nnoremap <C-F> zi


"
" toggling line fold
"
nnoremap <Space> za


"
" split navigation
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"
" toggling spell checking
"
map <Leader>ss :setlocal spell!<cr>


"
" double tapping ESC instead of :noh
"
nnoremap <silent> <Esc><Esc> :let @/=""<CR>


"
" toggling rainbow parentheses
"
nnoremap <F5> :RainbowParenthesesToggle<cr>

