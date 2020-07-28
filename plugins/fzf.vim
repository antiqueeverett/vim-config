" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }


" -- using the current working directory (cwd) for ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:fzf_preview_window = ''
"let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
"let $FZF_DEFAULT_OPTS='--reverse'

function! FZFSaveOnCall()
    execute "update"
    execute "FZF $HOME/Repositories"
endfunc

"nnoremap <silent><Leader>' :FZF $HOME/Repositories<CR>
nnoremap <silent><Leader>' :call FZFSaveOnCall()<CR>
