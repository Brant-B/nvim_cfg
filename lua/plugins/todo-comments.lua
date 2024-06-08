-- 设置高亮 todo, notes 在评论中
-- 记的加上`:`
return {
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
