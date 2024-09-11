local opt = { noremap = true, silent = true }
local map = vim.keymap.set

-- 正常模式下将分号替换冒号,方便进入命令模式
map("n",";",":",{noremap = true, silent = false})

-- 移动
map({"n","x"},"r","k",opt)
map({"n","x"},"n","j",opt)
map({"n","x"},"t","h",opt)
map({"n","x"},"s","l",opt)

-- 插入
map("n","i","a",opt)
map("n","I","A",opt)
map("n","u","i",opt)
map("n","U","I",opt)

-- 回退
map("n","<backspace>","u",opt)

-- 大跳转
map("n","<s-r>","{zz",opt)
map("n","<s-n>","}zz",opt)

-- 改变一下行首行尾的快捷键
map("n","<s-s>","$",opt)
map("n","<s-t>","^",opt)

map("n","<A-n>","n",opt)
map("n","<A-N>","N",opt)

-- 退出和保存
map("n", "<leader>qq", ":q!<CR>", opt)
map("n", "<leader>ww", ":w<cr>", opt)
map("n", "<leader>wq", ":wq<cr>", opt)

-- 在插入模式下, zz可以让光标所在行居中
map("i","<C-z><C-z>","<C-o>zz",opt)

-- 将宏录制换掉, 太容易误触了
map("n","q","<Nop>",opt)
map("n","hq","q",   opt)

-- 加速jk
map('n', 'n', '<Plug>(accelerated_jk_j)', opt)
map('n', 'r', '<Plug>(accelerated_jk_k)', opt)
