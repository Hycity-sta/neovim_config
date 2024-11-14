-- 缩进线

local this_config = 
{
    chunk = { enable = false },    -- 高亮缩进的区域, 用一种奇特的方式
    line_num = { enable = false }, -- 光标所在缩进的数字都高亮
    blank = { enable = false },    -- 空白显示

    -- 普通的缩进线
    indent = {
        enable = true,
        use_treesitter = false,
        ahead_line = 5,
        chars = { "│" },
        delay = 100,
        style = { "#000000" },
    }
}

local lazy_package_desc = 
{
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    opts = this_config
}

return lazy_package_desc
