-- [[ basic setting ]]
-- 参阅 `:help option-list`，了解更多配置
require("basic")

--  参阅： `:help vim.keymap.set()`
require("keybindings")

require("lazy_bootstrap")

-- [[ Configure and install plugins ]]
require("plugins")
require("plugin_config.notify")
require("plugin_config.lualine")
require("plugin_config.bufferline")

-- [[LSP]]
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("lsp.saga")
require("lsp.none_ls")
require("lsp.kind")
