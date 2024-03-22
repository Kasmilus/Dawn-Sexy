<p align="center">
    <img src="https://github.com/rose-pine/rose-pine-theme/raw/main/assets/icon.png" width="80" />
    <h2 align="center">Dawn-Sexy</h2>
</p>

<p align="center">Terminal.Sexy Dawn based theme</p>


## Getting started

Install `kasmilus/dawn-sexy.nvim` using your favourite plugin manager:

**paq-nvim**

```lua
{ "kasmilus/dawn-sexy.nvim", as = "dawn-sexy" }
```

**lazy.nvim**

```lua
  {
    'kasmilus/dawn-sexy.nvim',
    lazy = false,
    as = 'dawn-sexy',
    config = function()
      require('dawn-sexy').setup({
        dim_inactive_windows = true,
        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true,        -- Handle deprecated options automatically
        },
      })
      vim.cmd('colorscheme dawn-sexy')
    end
  },
```

## Gallery

**Dawn-Sexy**

![Screenshot](/Dawn-Sexy.PNG?raw=true "Dawn-Sexy with Neovim")

## Options

> [!IMPORTANT]
> Configure options _before_ setting colorscheme.

Dawn-Sexy has three variants: soft, medium, hard. Medium is used by default.

Colour values accept named colours from the [Rosé Pine palette](https://rosepinetheme.com/palette/ingredients/), e.g. "foam", or valid hex, e.g. "#fa8072".

Note this repo is based on Rose Pine but colors are replaced (Meaning of Rose Pine names is different). I couldn't be bothered to rename all that stuff. Might happen one day if I'm bored enough...

```lua
require("dawn-sexy").setup({
    variant = "auto", -- auto, soft, medium, hard
    dim_inactive_windows = false,
    extend_background_behind_borders = true,

    enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
    },

    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },

    groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
    },

    highlight_groups = {
        -- Comment = { fg = "foam" },
        -- VertSplit = { fg = "muted", bg = "muted" },
    },

    before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
    end,
})

vim.cmd("colorscheme dawn-sexy")
-- vim.cmd("colorscheme dawn-sexy-soft")
-- vim.cmd("colorscheme dawn-sexy-hard")
```

## Contributing

We welcome and appreciate contributions of any kind. Create an issue or start a discussion for any proposed changes. Pull requests are encouraged for supporting additional plugins or [treesitter improvements](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights).

## Thanks

Many thanks to [Rose Pine](https://github.com/rose-pine/) creators. All code from this repo is a fork of rose-pine but with updated colors.

Theme colors are based on [terminal.sexy](https://terminal.sexy/#GBsgm5CBNTU1dEtAbWE3dlY2YVZLa0pJQ1hhs7OzX19feFhQb2dJd2BJaWBXb1pZUl9mzc3N) "Dawn" theme, made by Escapist.

## License

The MIT License (MIT)

