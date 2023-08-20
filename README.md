# Vim Configurations

## Requirements

Clone this repo into your nvim configs

```
git clone https://github.com/dpayne/vim_configs.git ~/.config/nvim
```

Install neovim

```
brew install neovim
```

Install dependencies

```
brew install fd bat fzf rg python node ruby
```

Setup python/node packages

```
pip3 install pynvim
pip2 install pynvim
npm install -g neovim
```

The font Fira-Code can be used for better font support. The terminal also needs to be updated to support the new font.
```
brew install --cask font-fira-code
```

## Plugins

Clone packer to nvim pack directory

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

 In a terminal run `nvim` and run the following commands one at a time.

```
:PackerCompile
:PackerClean
:PackerInstall
```

Plugins are registered in [plugins.lua](lua/plugins.lua)

### Code completion with CoC

Install CoC extensions with `:CocInstall <extension>`.

Here are the ones used for this config.

```
:CocInstall coc-vimlsp coc-tsserver coc-sql coc-sh coc-rust-analyzer coc-pyright coc-phpls coc-json coc-java coc-go coc-fish coc-cmake coc-clangd
```

For better C/C++ support also install clangd.

`brew install llvm`

In `nvim` open up the coc config with
`:CocConfig`

Add the following line to the end of the json.
```
    "clangd.path": "/opt/homebrew/opt/llvm/bin/clangd"
```

For python formatting.

`pip3 install --user black`

More details can be found her https://github.com/neoclide/coc.nvim/.

## Debugging

Check vim setup with `:checkhealth`
