" configure vim
let g:config_files=[
            \'settings.vim',
            \'keymaps.vim',
            \'arbitrary.vim',
            \'functions.vim',
            \'autocommands.vim',
            \'plugins.vim']
for file in g:config_files
    execute 'source $VIM_DOTFILES_PATH/' . file
endfor
