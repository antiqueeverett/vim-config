" source my functions
let g:my_functions=[
            \'helpers.vim',
            \'files.vim',
            \'terminal.vim',
            \'navigation.vim',
            \'directories.vim']

for file in g:my_functions
    execute 'source $VIM_DOTFILES_PATH/task-execution/' . file
endfor
