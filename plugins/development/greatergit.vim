" -- 1) the function (executing vim-fugitive Gwrite and Gcommit -m)
function! AntiqueGitCommit(arg)
execute ":Gwrite"
execute ":Gcommit -m \"" . a:arg . "\""
endfunction

" -- 2) linking to command
command! -nargs=* GitCommit :call AntiqueGitCommit(<f-args>)

" -- 3) keybinding
nnoremap <Leader>gg  :GitCommit
