### My dotfile setup

In order to run all the plugins and configuration you first need to install Neovim on you machine.

My suggestion would be to install with brew if you are in mac:

```
 brew install Neovim
```

For setting up the Neovim plugins, please run these command in your terminal:

```
cd .config

git clone git@github.com:saman-zdf/Dotfile.git

cd nvim/lua

nvim plugins.lua

run :PackerInstall

```

Note: you can find most of the key mapping either in plugins custom configuration and they all located in nvim/after/plugin or you can run in neovim :WhichKey to see number of different setup key map. I'll make sure to update the WhichKey regularly.

Happy coding!!!
