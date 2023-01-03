### My dotfile setup

For setting up the neovim plugins, do the following:

```
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

Note: you can find most of the key mapping either in plugins custom configuration or you run :WhichKey to see most of the current key map.
