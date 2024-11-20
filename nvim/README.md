# Neovim configuration

_Installing neovim from the debian bookworm packages only provides v0.7.2_

The debian package included in this repo will install v0.10.0.

The nvim configuration files are within the nvim directory.

I adepted the plugins for python development and academic use.  
**Plugins included:**

* alpha: startpage - https://github.com/goolord/alpha-nvim
* blankline: indentaton - https://github.com/lukas-reineke/indent-blankline.nvim
* bufferline:(not working rn) show open buffers - https://github.com/akinsho/bufferline.nvim
* cmp: autocompletion - https://github.com/hrsh7th/nvim-cmp
* colorscheme: dracula - https://github.com/Mofiqul/dracula.nvim 
* debugger: with ui and python: https://github.com/mfussenegger/nvim-dap
* lualine: info bar at bottom - https://github.com/nvim-lualine/lualine.nvim
* luasnip: snippets - https://github.com/L3MON4D3/LuaSnip
* markdown-preview: what it says - https://github.com/iamcco/markdown-preview.nvim
* oil.lua: file explorer - https://github.com/stevearc/oil.nvim
* telescope: file finder - https://github.com/nvim-telescope/telescope.nvim
* transparent: background - https://github.com/xiyaowong/transparent.nvim
* treesitter: syntax highlighting - https://github.com/nvim-treesitter/nvim-treesitter
* vim-fugitive: git wrapper - https://github.com/tpope/vim-fugitive
* mason: lsp plugin manager - https://github.com/williamboman/mason.nvim
* venv-selector: find virtual enviroments - https://github.com/linux-cultist/venv-selector.nvim
* vimtex: latex support for vim - https://github.com/lervag/vimtex
* neotree: tree struct navigation - https://github.com/nvim-neo-tree/neo-tree.nvim
* none-ls: autoformatting etc. - https://github.com/nvimtools/none-ls.nvim

# Neovim Installation

_Source:  [LazyVim](https://www.lazyvim.org/installation 'LazyVim')_

* Make a backup of your current Neovim files:

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Installing neovim from this github

```
sudo apt install ~/.config/nvim/nvim-linux64.deb
```

NOTE:  You may have to UPDATE Lazy

* After installing and running neovim
* Type ```:Lazy``` to access the LazyVim menu.  
* Type "U" to update.

