let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=0
set background=dark

augroup theme-overrides
    autocmd!
    "autocmd ColorScheme * highlight StatusLineNC guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight Pmenu        guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight PmenuSel     guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight SpellBad     guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight Folded       guibg=Black guifg=Grey
    "autocmd ColorScheme * highlight EndOfBuffer  guibg=#1d2021 guifg=NONE

    " background
    autocmd ColorScheme * highlight Normal       guibg=#1d2021 guifg=Grey

    " status line
    autocmd ColorScheme * highlight StatusLine   guibg=Black guifg=Grey

    " search
    autocmd ColorScheme * highlight Search       guibg=NONE guifg=#af3a03
    autocmd ColorScheme * highlight Visual       guibg=NONE guifg=#af3a03
    autocmd ColorScheme * highlight IncSearch    guibg=#7c6f64 guifg=#504945

    " index and sign columns
    autocmd ColorScheme * highlight SignColumn   guibg=#1d2021 guifg=#1d2021

    " line numbers
    autocmd ColorScheme * highlight LineNr       guibg=#1d2021 guifg=Grey
    autocmd ColorScheme * highlight CursorLineNr guibg=#282828 guifg=Grey

    " cursor line and last column
    autocmd ColorScheme * highlight CursorLine   guibg=#282828
    autocmd ColorScheme * highlight ColorColumn  guibg=#282828 guifg=NONE

    autocmd ColorScheme * highlight TabLine      guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineFill      guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineSel      guibg=White guifg=Grey
augroup END
color gruvbox
