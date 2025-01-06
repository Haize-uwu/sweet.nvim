<h4><div align="right">
    <a href="#installation">Installation</a>
    <span> | </span>
    <a href="#default-configuration">Configuration</a>
    <span> | </span>
    <a href="#customization">Customization</a>
    <span> &nbsp;&nbsp;&nbsp; &nbsp; </span>
</div></h4>

# TODO
* [ ] add support for nvim gutter color scheme

## Installation
Install via your favourite package manager
<br/>
In your plugins file if using Lazyvim
``` lua
-- Using Lazy
{ 
  "haize-uwu/sweet.nvim",
  lazy = false,
  priority = 1000,
  name = 'sweet',
  config = function()
      require("plugins.config.colorscheme")
      vim.cmd.colorscheme("sweet")  
  end
},
```

```vim
" Using Vim-Plug
Plug 'haize-uwu/sweet.nvim'
```

```lua
-- Using Packer
use 'haize-uwu/sweet.nvim'
```

## Configuration

### Enable theme

```lua
-- Lua
require('sweet').load()
```

```vim
" Vim
colorscheme sweet
```

## Default Configuration

```lua
-- Lua
require('sweet').setup  {
    -- Main options --
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    
    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = { 
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
```

### Vimscript configuration

Sweet can be configured also with Vimscript, using the global dictionary `g:sweet_config`.
**NOTE**: when setting boolean values use `v:true` and `v:false` instead of 0 and 1

Example:
``` vim
let g:sweet_config = {
  \ 'style': 'deep',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme sweet
```

## Customization

Example custom colors and Highlights config

```lua
require('sweet').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    ["@keyword"] = {fg = '$green'},
    ["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    ["@function.builtin"] = {fg = '#0059ff'}
  }
}
```
Note that TreeSitter keywords have been changed after neovim version 0.8 and onwards.
TS prefix is trimmed and lowercase words should be used separated with '.'

The old way before neovim 0.8 looks like this.
For all keywords see [this](https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/highlights.lua#L133-L257) file from line 133 to 257

```lua
require('sweet').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    TSFuncBuiltin = {fg = '#0059ff'}
  }
}
```

## Plugins Configuration

### Enable lualine
To Enable the `sweet` theme for `Lualine`, specify theme as `sweet`:

```lua
require('lualine').setup {
  options = {
    theme = 'sweet'
    -- ... your lualine config
  }
}
```

## Plugins Supported
  + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  + [LSPDiagnostics](https://neovim.io/doc/user/lsp.html)
  + [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
  + [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  + [WhichKey](https://github.com/folke/which-key.nvim)
  + [Dashboard](https://github.com/glepnir/dashboard-nvim)
  + [Lualine](https://github.com/hoob3rt/lualine.nvim)
  + [GitGutter](https://github.com/airblade/vim-gitgutter)
  + [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
  + [VimFugitive](https://github.com/tpope/vim-fugitive)
  + [DiffView](https://github.com/sindrets/diffview.nvim)
  + [Hop](https://github.com/phaazon/hop.nvim)
  + [Mini](https://github.com/echasnovski/mini.nvim)
  + [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
  + [Neotest](https://github.com/nvim-neotest/neotest)
  + [Barbecue](https://github.com/utilyre/barbecue.nvim)
  + [IndentBlankline](https://github.com/lukas-reineke/indent-blankline.nvim)
  + [vim-illuminate](https://github.com/RRethy/vim-illuminate)

## Reference
This theme is based on the `onedark.nvim` theme from navarasu and the GUIX `emacs-sweet-theme`
* [onedark.nvim](https://github.com/navarasu/onedark.nvim)
* [emacs-sweet-theme](https://packages.guix.gnu.org/packages/emacs-sweet-theme/4-0.78f7418/)


## Contributing

Feel free to contribute and modify as needed.

## License

[MIT](https://choosealicense.com/licenses/mit/)
