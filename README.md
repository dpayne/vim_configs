# Vim Configurations

## Requirements

Install neovim

```
brew install neovim
```

Install dependencies

```
brew install fd bat fzf ripgrep python3 nodejs
```

Setup python/node packages

```
pip3 install --user pynvim
pip2 install --user pynvim
npm install -g neovim
```

## Plugins

Clone packer to nvim pack directory

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open up nvim and run

```
:PackerCompile
:PackerClean
:PackerInstall
```

Plugins are registered in `lua/plugins.lua`.

### CoC

Install extensions with `:CocInstall <extension>`.

Example of the ones used for this config.

```
:CocInstall coc-vimlsp coc-tsserver coc-sql coc-sh coc-rust-analyzer coc-pyright coc-phpls coc-json coc-java coc-go coc-fish coc-cmake coc-clangd
```

For better C/C++ support also install clangd.

`:CocCommand clangd.install`

For python formatting.

`pip3 install --user black`

## Debugging

Check vim setup with `:checkhealth`
