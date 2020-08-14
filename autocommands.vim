augroup on_BufWritePre
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup on_BufEnter
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
augroup END

augroup on_BufRead
    autocmd!
    autocmd BufRead * silent execute 'GitGutterSignsDisable'
    autocmd BufRead,BufNewFile * setlocal textwidth=80
augroup END

augroup on_ColorScheme
    autocmd!
    " Background and font
    autocmd ColorScheme * highlight Normal       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=#1d2021 guifg=Grey

    " Cursor line
    autocmd ColorScheme * highlight CursorLine   term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
    autocmd ColorScheme * highlight CursorLineNr term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=#1d2021 guifg=#fb4934

    " Number line
    autocmd ColorScheme * highlight LineNr       term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=#1d2021 guifg=Grey

    " Popup menu
    autocmd ColorScheme * highlight Menu         term=bold cterm=bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#eaecee
    autocmd ColorScheme * highlight Pmenu        term=bold cterm=bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#eaecee
    autocmd ColorScheme * highlight PmenuSel     term=bold cterm=bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#eaecee guifg=#1c2833
    autocmd ColorScheme * highlight PmenuSbar    term=bold cterm=bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#eaecee
    autocmd ColorScheme * highlight PmenuThumb   term=bold cterm=bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#eaecee

    " Sign gutter
    autocmd ColorScheme * highlight SignColumn   term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=#21262c guifg=NONE

    " Wrapping column
    autocmd ColorScheme * highlight ColorColumn   term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=#21262c guifg=NONE

    " Spellings
    autocmd ColorScheme * highlight SpellBad     term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#8f3f71
    autocmd ColorScheme * highlight SpellCap     term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#8f3f71
    autocmd ColorScheme * highlight SpellLocal   term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#8f3f71
    autocmd ColorScheme * highlight SpellRare    term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE gui=bold guibg=#1c2833 guifg=#8f3f71

    " todo: incremental improvements from this
    "       point downwards
    " date: 2020-08-14 09:25


    " parenthesis
    autocmd ColorScheme * highlight MatchParen   guibg=Black guifg=White

    " status line
    autocmd ColorScheme * highlight StatusLine   guibg=Black guifg=Grey

    " search
    autocmd ColorScheme * highlight Search       cterm=bold guibg=#af3a03 guifg=Grey
    autocmd ColorScheme * highlight Visual       cterm=bold guibg=#af3a03 guifg=Grey
    autocmd ColorScheme * highlight IncSearch    cterm=bold guibg=#7c6f64 guifg=Grey

    " tabline
    autocmd ColorScheme * highlight TabLine      guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineFill  guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineSel   guibg=White guifg=Grey
augroup END

