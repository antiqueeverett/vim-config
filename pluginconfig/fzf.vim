if executable('rg')
    let g:rg_derive_root='true'
endif

let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8}}

""
" FuzzyFind:
"   Intuitive directory fuzzy find
function! FuzzyFind()
    let project = system('fuzzy.sh')[:-2]
    exe 'Files' . project
endfunction

""
" SplitFuzzyFind:
"   Opens split and executes within project fuzzy find
function! SplitFuzzyFind()
    vnew
    Files $HOME
endfunction


nnoremap <Leader>\ :call SplitFuzzyFind()<CR>
nnoremap <Leader>' :call FuzzyFind()<CR>
nnoremap <Leader>/ :Files $HOME<CR>
