return
{-- 这是lsp的参数提示, 传参的时候有提示.
    "ray-x/lsp_signature.nvim",
    lazy = false,
    opts = {
        bind = true, -- 打开边框
        handler_opts = {
            border = "rounded"
        },
        hint_enable = false --关闭虚拟提示
    },

    config = function(_, opts)
        require'lsp_signature'.setup(opts)
    end
    --config = function()
    --require('accelerated-jk').setup(require("config/accelerate_jk"))
    --end
}
