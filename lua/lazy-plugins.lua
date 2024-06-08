-- NOTE: 这里就是安装插件的位置了

require("lazy").setup({
	-- NOTE: 1. 插件可以通过链接添加
	"tpope/vim-sleuth", -- 智能检测tab长度，并做设置
	-- NOTE: 2. 插件可以通过表格的方式添加
	-- 第一个参数表示链接，关键字用来配置插件的行为
	-- `opts = {}` 用来强制一个插件必须加载
	{ "numToStr/Comment.nvim", opts = {} }, -- 将选中部分做注释
	-- NOTE: 3. 插件可以通过`require` 的方式添加
	require("plugins/gitsigns"),  -- 用来添加git 相关信息到编辑器中
	require("plugins/which-key"), -- 快捷键提示工具
	require("plugins/telescope"), -- 模糊搜索器
	require("plugins/lspconfig"), -- 自动补全和悬浮显示功能
	require("plugins/conform"),   -- TODO 不知道干什么的
	require("plugins/cmp"),       -- 自动补全工具
	require("plugins/tokyonight"),-- 东京夜，色彩风格
	require("plugins/todo-comments"), -- 高亮待处理事项
	require("plugins/mini"),      -- TODO 不知道干什么的
	require("plugins/treesitter"),-- 代码解析器
})
