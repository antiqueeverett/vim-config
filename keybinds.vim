" --defining leader
let mapleader = ";"


" -- split navigation with CTR
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -- resizing vertical windows
nnoremap <Leader>+ :vertical resize +25<CR>
nnoremap <Leader>- :vertical resize -25<CR>

nnoremap <leader>v :vsp<CR>
"nnoremap <leader>h :sp<CR>

" -- fzf find
map ' :FZF $HOME/Repositories <CR>


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


" -- :warning: (unsafe) exiting with less key-strokes
map Q :wqa! <CR>
map q :wq! <CR>



"--------------------- Plugin Keybinding: ---------------------



" -- 'tpope/vim-repeat' --
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


" -- 'neoclide/coc.nvim' --


" tab to trigger completions
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" -- symbol highlighting
autocmd CursorHold * silent call CocActionAsync('highlight')


" -- symbol renaming
nmap <leader>rn <Plug>(coc-rename)


" -- <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()


" -- <cr> to confirm completion
"    <C-g>u breaks undo chain at current position
if exists('*complete_info')
  inoremap <expr> <TAB> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<TAB>"
else
  inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"
endif


" -- code navigating
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)

nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
