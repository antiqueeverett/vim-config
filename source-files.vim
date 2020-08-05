" list of vim config files
let g:vim_config_files=[
            \'plugins.vim',
            \'settings.vim',
            \'keybinds.vim',
            \'functions.vim',
            \'autocommands.vim']

" source vim configuration files
for file in g:vim_config_files
    execute "source $VIM_DOTFILES_PATH/" . file
endfor
