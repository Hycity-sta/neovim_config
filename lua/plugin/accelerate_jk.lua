-- 加速jk上下移动的速度

local this_config = {
    mode = 'time_driven',
    enable_deceleration = false,
    acceleration_motions = {},
    acceleration_limit = 150,
    acceleration_table = { 7,12,17,21,24,26,28,30 },
    deceleration_table = { {150, 9999} }
}

local lazy_package_desc = {
    "rainbowhxch/accelerated-jk.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = this_config
}

return lazy_package_desc
