-- NOTE: 这里就是安装插件的位置了

require("lazy").setup({
	-- NOTE: 1. 插件可以通过链接添加
	"tpope/vim-sleuth", -- 智能检测tab长度，并做设置
	-- NOTE: 2. 插件可以通过表格的方式添加
	-- 第一个参数表示链接，关键字用来配置插件的行为
	-- `opts = {}` 用来强制一个插件必须加载
	{ "numToStr/Comment.nvim", opts = {} }, -- 将选中部分做注释
	-- NOTE: 3. 插件可以通过`require` 的方式添加
	require("kickstart/plugins/gitsigns"),

	require("kickstart/plugins/which-key"),

	require("kickstart/plugins/telescope"),

	require("kickstart/plugins/lspconfig"),

	require("kickstart/plugins/conform"),

	require("kickstart/plugins/cmp"),

	require("kickstart/plugins/tokyonight"),

	require("kickstart/plugins/todo-comments"),

	require("kickstart/plugins/mini"),

	require("kickstart/plugins/treesitter"),
})
