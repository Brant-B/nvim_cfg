-- [[ basic setting ]]
-- 参阅 `:help vim.opt`
-- 参阅 `:help option-list`，了解更多配置
require("basic")

--  参阅： `:help vim.keymap.set()`
require("keymaps")

--  参阅:  `:help lazy.nvim.txt`
require("lazy-bootstrap")

-- [[ Configure and install plugins ]]
require("plugins")
