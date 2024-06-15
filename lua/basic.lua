-- 设置字体
vim.g.have_nerd_font = true

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- 行号显示
vim.opt.number = true
-- 添加相对行号
vim.opt.relativenumber = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 使能鼠标
vim.opt.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 缩进4个空格等于一个Tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 停止显示状态，状态栏已经有了
vim.opt.showmode = false
-- 将vim编辑的复制buffer 与OS的复制buffer同步
vim.opt.clipboard = "unnamedplus"
-- 当一行长度过长时，前端对齐
vim.opt.breakindent = true
-- 关闭了vim之后，依然能undo
vim.opt.undofile = true
-- 当忽略大小写时，直接输入全小写
-- 当输入了大写字母时，不忽略大小写
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- 设置了标记列的内容
vim.opt.signcolumn = "yes"
-- Decrease update time
vim.opt.updatetime = 250
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- 新窗口被创建的位置，出现在右边和下边
vim.opt.splitright = true
vim.opt.splitbelow = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 设置如何展示不可见字符
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- 实时预览替换的效果
vim.opt.inccommand = "split"
-- 高亮光标所在行
vim.opt.cursorline = true
-- 光标移动时，上下方的最小行数
vim.opt.scrolloff = 10
-- 设置折叠
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
