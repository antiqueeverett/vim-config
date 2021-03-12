if executable('rg')
    let g:rg_derive_root='true'
endif

let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8}}

nnoremap <Leader>' :call FuzzyFind()<CR>
nnoremap <Leader>/ :Files $HOME<CR>


""
" fzf from git root:
function! FuzzyFind()
    let project = system('fuzzy.sh')[:-2]
    exe 'Files' . project
endfunction
