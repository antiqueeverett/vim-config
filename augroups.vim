" ALWAYS CD TO CURRENT DIRECTORY:
augroup to_buff_dir
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
augroup END

" TRIM WHITE SPACES:
augroup strip_white_spaces
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" INITIALLY HIDE GIT-GUTTER SIGNS:
augroup hide_signs
    autocmd!
    autocmd BufRead * silent execute 'GitGutterSignsDisable'
augroup END

" LINE WRAPPING:
augroup wrap_lines
    autocmd!
    autocmd BufRead,BufNewFile * setlocal textwidth=80
augroup END

" THEME OVERRIDES:
augroup set_colors
    autocmd!
    " Background and font
    autocmd ColorScheme * highlight Normal
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=#1d2021 guifg=#abb2b9

    " Cursor line
    autocmd ColorScheme * highlight CursorLine
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=NONE guifg=NONE

    " Cursor line number
    autocmd ColorScheme * highlight CursorLineNr
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=#1d2021 guifg=White

    " Number line
    autocmd ColorScheme * highlight LineNr
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=#1d2021 guifg=#808b96

    " Popup menu
    autocmd ColorScheme * highlight Menu
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1c2833 guifg=#eaecee

    autocmd ColorScheme * highlight Pmenu
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1c2833 guifg=#eaecee

    autocmd ColorScheme * highlight PmenuSel
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#eaecee guifg=#1c2833

    autocmd ColorScheme * highlight PmenuSbar
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1c2833 guifg=#eaecee

    autocmd ColorScheme * highlight PmenuThumb
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1c2833 guifg=#eaecee

    " Sign gutter
    autocmd ColorScheme * highlight SignColumn
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=#21262c guifg=NONE

    " Wrapping column
    autocmd ColorScheme * highlight ColorColumn
                \ term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE
                \ gui=NONE guibg=#21262c guifg=NONE

    " Spellings
    autocmd ColorScheme * highlight SpellBad
                \ term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1d2021 guifg=#8f3f71

    autocmd ColorScheme * highlight SpellCap
                \ term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1d2021 guifg=#8f3f71

    autocmd ColorScheme * highlight SpellLocal
                \ term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1d2021 guifg=#8f3f71

    autocmd ColorScheme * highlight SpellRare
                \ term=bold cterm=underline,bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#1d2021 guifg=#8f3f71

    " Search
    autocmd ColorScheme * highlight Search
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#f8f5d7 guifg=#1c2833

    " Incremental search
    autocmd ColorScheme * highlight IncSearch
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#f8f5d7 guifg=#1c2833

    " Visual
    autocmd ColorScheme * highlight Visual
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#f8f5d7 guifg=#1c2833

    " Vertical split
    autocmd ColorScheme * highlight VertSplit
                \ term=bold cterm=bold ctermbg=NONE ctermfg=NONE
                \ gui=bold guibg=#21262c guifg=#5a5c5d

    " todo: incremental improvements from this
    "       point downwards
    " date: 2020-08-14 09:25
    " parenthesis
    autocmd ColorScheme * highlight MatchParen   guibg=Black guifg=White

    " status line
    autocmd ColorScheme * highlight StatusLine   guibg=Black guifg=Grey

    " tabline
    autocmd ColorScheme * highlight TabLine      guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineFill  guibg=White guifg=Grey
    autocmd ColorScheme * highlight TabLineSel   guibg=White guifg=Grey
augroup END

