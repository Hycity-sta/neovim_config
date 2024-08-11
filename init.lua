require("basic") 
require("mapping")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    spec = {
        { import = "plugin" },
        { import = "lsp" }
    }
})

-- 注释
-- 发现不太好的事情
-- vim本身的设计是有缺陷的, 所以再怎么配置, 除了增加复杂性之外
-- 别无帮助...
-- 只能一步一步缩减最少配置, 经过一些细微调整来达到勉强可用的水平,
-- 然后再去研究开发一个文本编辑器
