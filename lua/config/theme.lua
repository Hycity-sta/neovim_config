require("catppuccin").setup({
    flavour = "frappe", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "frappe",
    },
    transparent_background = true, -- disables setting the background color.
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

    color_overrides = {
    },

    custom_highlights = function(colors) 
        return {
            --["cppStructure"] = {fg = colors.mauve}, --class关键字
            --["cStorageClass"] = {fg = colors.mauve}, --const关键字
            --["@lsp.type.operator.cpp"] = {fg = colors.mauve}, --delete关键字
            --["@lsp.typemod.property.classScope.cpp"] = {fg = colors.green }, --方法内的类成员
            --["Function"] = {fg = "#99d1db"}, --函数
            --["@lsp.typemod.variable.functionScope.cpp"] = {fg = "#f4b8e4"}, --函数体内的变量
            --["@namespace"] = {fg = "#838ba7"}, --命名空间
            --["@lsp.typemod.method.defaultLibrary.cpp"] = {fg = "#99d1db"}, --内建函数
            --["@lsp.type.typeParameter.cpp"] = {fg = colors.yellow}, --参数类型
            -- 注释颜色
            [ "Comment" ] = { fg = "#e68183" },
            [ "LineNr" ]  = { fg = "#babbf1" },
        }
    end,

    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
        nvimtree = true
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
