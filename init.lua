vim.g.have_nerd_font = true

-- [[ basic setting ]]
-- 参阅 `:help vim.opt`
-- 参阅 `:help option-list`，了解更多配置
require("basic")

-- [[ Keymaps ]]
--  参阅： `:help vim.keymap.set()`
require("keymaps")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt`
require("lazy-bootstrap")

-- [[ Configure and install plugins ]]
require("lazy-plugins")
