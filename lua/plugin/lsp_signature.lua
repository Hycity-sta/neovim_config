-- 这是lsp的参数提示, 传参的时候有提示.

local this_config = {
    bind = true,
    handler_opts = { border = "rounded" },
    hint_enable = false
}

local lazy_package_desc = {
    "ray-x/lsp_signature.nvim",
    lazy = false,
    enabled = true,
    opts = this_config
}

return lazy_package_desc
