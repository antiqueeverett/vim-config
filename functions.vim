" source my functions
let g:my_functions=[
            \'helpers.vim',
            \'files.vim',
            \'terminal.vim',
            \'transitions.vim',
            \'directories.vim']

for file in g:my_functions
    execute 'source $VIM_DOTFILES_PATH/functions/' . file
endfor
