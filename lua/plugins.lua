require("lazy").setup({
    -- theme
	require("plugin_config.tokyonight"), -- 色彩风格
	require("plugin_config.alpha-nvim"), -- 初始化界面
	"rcarriga/nvim-notify",
	"nvim-lua/lsp-status.nvim",
	"petertriho/nvim-scrollbar",
    -- file tree
	require("plugin_config.neo-tree"), -- 文件侧边栏
	require("plugin_config.outline_nvim"), -- 文件大纲
	{'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' },opts = {}},
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',opts = {}},
	{ "arkav/lualine-lsp-progress" },
    -- telescope
    require("plugin_config.telescope"),
	-- git
	require("plugin_config.gitsigns"), -- 用来添加git 相关信息到编辑器中
    -- 常见片段
	"onsails/lspkind-nvim",
	"rafamadriz/friendly-snippets",
    -- 自动补全 cmp
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
    -- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ "nvimdev/lspsaga.nvim", event = "BufEnter" },
    -- other
	require("plugin_config.autopairs"), -- 自动括号alpha
	require("plugin_config.indent_line"), -- 相同缩进有一条线
	require("plugin_config.lint"), -- 静态代码分析
	require("plugin_config.mini"), -- 小工具集合
	require("plugin_config.todo-comments"), -- 高亮待处理事项
	require("plugin_config.treesitter"), -- 代码解析器
	require("plugin_config.which-key"), -- 快捷键提示工具
	-- require("plugin_config.lspconfig"), -- LSP配置，变量跳转
})
