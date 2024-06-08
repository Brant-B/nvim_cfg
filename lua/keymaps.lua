-- 设置参数
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- 设置 <space> as the leader key
-- See `:help mapleader`
--  NOTE: 必须在插件应用之前声明
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Set highlight on search,
-- 通过 按下 <Esc> in normal mode 清除高亮
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- 诊断信息跳转快捷键
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
--  See `:help wincmd` for a list of all window commands--  感觉在编辑器里面，多窗口是伪需求，可以用tmux，可以多个标签页

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
-- Terminal 相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- [[ Visual 模式快捷键]]

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 上下滚动浏览
map("n", "<C-j>", "10j", opt)
map("n", "<C-k>", "10k", opt)

-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)