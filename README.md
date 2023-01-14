### My dotfile setup

In order to be able to run all the plugins and configuration you first need to install Neovim on you machine.

For setting up the neovim plugins, please run these command in your terminal:

```
cd .config

git clone git@github.com:saman-zdf/Dotfile.git

cd nvim/lua

nvim plugins.lua

run :PackerInstall

// Once all the plugins are installed, now you can install all the coc-extension for current setup.

run :CocInstall
    - coc-prettier
    - coc-pairs
    - coc-html
    - coc-highlight
    - coc-eslint
    - coc-emmet
    - coc-tsserver
    - coc-spell-checker
    - coc-phpls // if you working with PHP
    - coc-htmlhint
    - coc-css
```

Note: you can find most of the key mapping either in plugins custom configuration and they all located in nvim/after/plugin or you can run in neovim :WhichKey to see number of different setup keymap. I'll make sure to update the WhichKey regularly.

Happy coding!!!
