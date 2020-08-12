let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=0
set background=dark


augroup theme-overrides
    autocmd!
    " fold highlight
    autocmd ColorScheme * highlight Fortunately       guibg=Black guifg=Grey

    " parenthesis
    autocmd ColorScheme * highlight MatchParen   guibg=Black guifg=White

    " spellings
    autocmd ColorScheme * highlight SpellBad     cterm=underline,bold guifg=#8f3f71
    autocmd ColorScheme * highlight SpellCap     cterm=underline,bold guifg=#8f3f71
    autocmd ColorScheme * highlight SpellLocal   cterm=underline,bold guifg=#8f3f71
    autocmd ColorScheme * highlight SpellRare    cterm=underline,bold guifg=#8f3f71

    " popup menus
    autocmd ColorScheme * highlight Pmenu        guibg=#1c1c1c guifg=Grey
    autocmd ColorScheme * highlight PmenuSel     guibg=#076678 guifg=Grey
    "autocmd ColorScheme * highlight PmenuSbar    guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight PmenuThumb   guibg=#665c54 guifg=#3c3836

    " background
    autocmd ColorScheme * highlight Normal       guibg=#1d2021 guifg=Grey

    " status line
    autocmd ColorScheme * highlight StatusLine   guibg=Black guifg=Grey

    " search
    autocmd ColorScheme * highlight Search       cterm=bold guibg=#af3a03 guifg=Grey
    autocmd ColorScheme * highlight Visual       cterm=bold guibg=#af3a03 guifg=Grey
    autocmd ColorScheme * highlight IncSearch    cterm=bold guibg=#7c6f64 guifg=Grey

    " index and sign columns
    autocmd ColorScheme * highlight SignColumn   guibg=#1d2021 guifg=#1d2021

    " line numbers
    autocmd ColorScheme * highlight LineNr       guibg=#1d2021 guifg=Grey
    autocmd ColorScheme * highlight CursorLineNr guibg=#1c1c1c guifg=#076678

    " cursor line and last column
    autocmd ColorScheme * highlight CursorLine   guibg=#1c1c1c
    autocmd ColorScheme * highlight ColorColumn  guibg=#1c1c1c guifg=NONE

    autocmd ColorScheme * highlight TabLine      guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineFill  guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineSel   guibg=White guifg=Grey
augroup END
color gruvbox
