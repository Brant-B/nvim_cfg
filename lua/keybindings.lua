-- 设置参数
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- 设置 <space> as the leader key
-- See `:help mapleader`
--  NOTE: 必须在插件应用之前声明
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 搜索高亮， 通过按下 <Esc> in normal mode 清除高亮
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- 诊断信息跳转快捷键
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
--  See `:help wincmd` for a list of all window commands--  感觉在编辑器里面，多窗口是伪需求，可以用tmux，可以多个标签页

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

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
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
-- 折叠代码
map("n", "<CR>", "za", opt)


-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "W", ":Bdelete!<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
	-- rename
	mapbuf("n", "<leader>r", ":Lspsaga rename<CR>", opt)
	-- code action
	mapbuf("n", "<leader>ca", ":Lspsaga code_action<CR>", opt)
	-- go xx
	mapbuf("n", "gd", ":Lspsaga goto_definition<CR>", opt)
	mapbuf("n", "gh", ":Lspsaga hover_doc<CR>", opt)
	mapbuf("n", "gf", ":Lspsaga finder def+ref<CR>", opt)
	mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
	mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
	mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
	-- diagnostic
	mapbuf("n", "gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
	mapbuf("n", "gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
	mapbuf("n", "<leader>=", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opt)
end
-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
	return {
		-- 出现补全
		["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- 取消
		["<A-,>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 上一个
		["<C-p>"] = cmp.mapping.select_prev_item(),
		-- 下一个
		["<C-n>"] = cmp.mapping.select_next_item(),
		-- 确认
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- 如果窗口内容太多，可以滚动
		["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
	}
end

return pluginKeys
