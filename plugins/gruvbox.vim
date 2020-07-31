let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=0
set background=dark

augroup theme-overrides
    autocmd!
    "autocmd ColorScheme * highlight ColorColumn  guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight LineNr       guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight StatusLineNC guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight Pmenu        guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight PmenuSel     guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight SpellBad     guibg=#665c54 guifg=#3c3836
    "autocmd ColorScheme * highlight StatusLine   guibg=Black guifg=#3c3836
    autocmd ColorScheme * highlight CursorLine   guibg=#282828
    autocmd ColorScheme * highlight CursorLineNr guibg=#282828 guifg=#282828
    autocmd ColorScheme * highlight IncSearch    guibg=#7c6f64 guifg=#504945
    autocmd ColorScheme * highlight Search       guibg=NONE guifg=#af3a03
    autocmd ColorScheme * highlight Visual       guibg=NONE guifg=#af3a03
augroup END

color gruvbox
