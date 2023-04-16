# hybrid2.nvim

Basically [w0ng/vim-hybrid](https://github.com/w0ng/vim-hybrid) but it's
written to work with treesitter, Neovim-only, and pretty quick on-start-up.


![hybrid2.nvim screenshot](https://user-images.githubusercontent.com/10103049/232260557-b2487920-dbc5-4931-b86c-03b3fa85c971.png)


## Installation
Using lazy.nvim

```lua
{
    "ColinKennedy/hybrid2.nvim",
    priority = 1000,  -- Load this first
    config = function()
        vim.cmd.colorscheme("hybrid2")
    end
}
```
