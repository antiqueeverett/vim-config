if executable('rg')
    let g:rg_derive_root='true'
endif

let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8}}

nnoremap <Leader>' :FZF $HOME<CR>
