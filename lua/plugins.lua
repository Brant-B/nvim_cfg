-- NOTE: 这里就是安装插件的位置

require("lazy").setup({
	-- NOTE: 1. 插件可以通过表格的方式添加
	-- 第一个参数表示链接，关键字用来配置插件的行为
	-- `opts = {}` 用来强制一个插件必须加载

	{ "numToStr/Comment.nvim", opts = {} }, -- 将选中部分做注释
	-- NOTE: 2. 插件可以通过`require` 的方式添加
	-- `opts = {}` is the same as calling `require('fidget').setup({})`
	require("plugins/alpha-nvim"), -- 初始化界面
	require("plugins/autopairs"), -- 自动括号
	require("plugins/cmp"), -- 自动补全工具
	require("plugins/gitsigns"), -- 用来添加git 相关信息到编辑器中
	require("plugins/indent_line"), -- 相同缩进有一条线
	require("plugins/lint"), -- 静态代码分析
	require("plugins/lspconfig"), -- LSP配置，变量跳转
	require("plugins/mini"), -- 小工具集合
	require("plugins/neo-tree"), -- 文件侧边栏
	require("plugins/outline_nvim"), -- 文件侧边栏
	require("plugins/telescope"), -- 模糊搜索器
	require("plugins/todo-comments"), -- 高亮待处理事项
	require("plugins/tokyonight"), -- 东京夜，色彩风格
	require("plugins/treesitter"), -- 代码解析器
	require("plugins/which-key"), -- 快捷键提示工具

})
