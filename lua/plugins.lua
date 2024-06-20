require("lazy").setup({
    -- theme
	require("plugins/tokyonight"), -- 色彩风格
	require("plugins/alpha-nvim"), -- 初始化界面
	"rcarriga/nvim-notify",
	"nvim-lua/lsp-status.nvim",
	"petertriho/nvim-scrollbar",
    -- file tree
	require("plugins/neo-tree"), -- 文件侧边栏
	require("plugins/outline_nvim"), -- 文件大纲
	{'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' },opts = {}},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',opts = {}},
	{ "arkav/lualine-lsp-progress" },
	-- git
	"lewis6991/gitsigns.nvim",

	require("plugins/autopairs"), -- 自动括号
	require("plugins/cmp"), -- 自动补全工具
	require("plugins/gitsigns"), -- 用来添加git 相关信息到编辑器中
	require("plugins/indent_line"), -- 相同缩进有一条线
	require("plugins/lint"), -- 静态代码分析
	require("plugins/lspconfig"), -- LSP配置，变量跳转
	require("plugins/mini"), -- 小工具集合
	require("plugins/telescope"), -- 模糊搜索器
	require("plugins/todo-comments"), -- 高亮待处理事项
	require("plugins/treesitter"), -- 代码解析器
	require("plugins/which-key"), -- 快捷键提示工具
})

local status, lualine = pcall(require, "lualine")
if not status then
	vim.notify("没有找到 lualine")
	return
end
lualine.setup({
	options = {
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = "" },
	},
	extensions = { "nvim-tree", "toggleterm" },
	sections = {
		lualine_a = {
			{
				"mode",
				icons_enabled = true,
			},
		},
		lualine_b = {
			{
				"filetype",
				colored = true,
				icon_only = true,
			},
			"filename",
		},
		lualine_c = {
			"branch",
			"diff",
		},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {
			"progress",
		},
	},
})
