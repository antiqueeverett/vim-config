# NOTHING BUT PURE VIM GOODNESS!

#### Usage

1. In your `.vimrc` simply add:
```
source $HOME/<path-to>/dotfiles/vim-dotfiles/settings/settings.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/plugins.vim
```

I keep all my dotfiles under `$HOME/Repositories/dotfiles/`.
If you have a similar repo naming convention, these dotfiles will work out-of-the-box.
If not, be sure to change the relative paths: ` see steps (2 & 3)`

```
source ~/Repositories/dotfiles/vim-dotfiles/settings/settings.vim
source ~/Repositories/dotfiles/vim-dotfiles/plugins/plugins.vim
```


2. in [ settings.vim ](https://github.com/edisonslightbulbs/vim-dotfiles/blob/master/settings/settings.vim)
```
source $HOME/<path-to>/dotfiles/vim-dotfiles/settings/keybinds.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/settings/functions.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/settings/autocommands.vim
```

3. in [ plugins/plugins.vim ](https://github.com/edisonslightbulbs/vim-dotfiles/blob/master/plugins/plugins.vim)
```
" -- Plugin settings organized in exclusive files
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/fzf.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/nord.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/repeat.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/airline.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/vimtext.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/gruvbox.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/neoclide.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/nerdtree.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/indentline.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/youcompleteme.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/vimautoformat.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/rainbowparenth.vim

source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/development/heist.vim
source $HOME/<path-to>/dotfiles/vim-dotfiles/plugins/development/refactor.vim
```

Why keep plugin configs in endless separate files? Vim goodness is all about growth, constant growth. Sometimes it can get hard to keep up with changes explicitly for specific plugins. With this dotfile-template, it becomes easier, much easier to keep up with ever-growing settings. If you can stomach multiple sources, you can enjoy basking in readable vim goodness.

* * *

#### Screen cast

`Comming soon!`


Handy? Star and [ follow ](https://github.com/edisonslightbulbs/vim-dotfiles/subscription)  the repo to keep up with all the updates.
If there is a better way around something, or, if I'm just plain wrong about something, please create an issue and [ contribute ](https://github.com/edisonslightbulbs/vim-dotfiles/fork) to the repo
   👏🍻🍻

#### Promotion

Worth a second look? Let's propagate to fill all the nooks and crannies that people want it to fill!
If you are interested in chatting about day-to-day tools like git and vim,
let's get into it on [ twitter ](https://twitter.com/antiqueeverett) and [ youtube](https://www.youtube.com/channel/UCKkeK-xQiIWc3jzBbUel9ww?view_as=subscriber).

###### Utility provided in this repository is purely academic and subject to change.

