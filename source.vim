" list of vim config files
let g:config_files=[
            \'settings.vim',
            \'keybinds.vim',
            \'arbitrary.vim',
            \'functions.vim',
            \'autocommands.vim',
            \'plugins.vim']

" source files
for file in g:config_files
    execute "source $VIM_DOTFILES_PATH/" . file
endfor
