local this_config = {
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "frappe",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.005, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = { "italic" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = { "italic" },
        properties = {},
        types = { "italic" },
        operators = {},
    },

    integrations = {
        cmp = true,
        treesitter = true,
    },
}

local lazy_package_desc = { 
    "catppuccin/nvim",
    enabled = false,
    priority = 1000,
    main = this_config,
    init = function()
        --vim.cmd("colorscheme catppuccin-latte")
        --vim.cmd("colorscheme catppuccin-frappe")
        --vim.cmd("colorscheme catppuccin-macchiato")
        --vim.cmd("colorscheme catppuccin-mocha")
    end
}

return lazy_package_desc
