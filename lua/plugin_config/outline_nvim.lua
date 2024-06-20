return{
  "hedyhli/outline.nvim",
  cmd = 'Outline',
  keys = {
	  {'|', ':outline <CR>'},
  },
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "|", ":Outline<CR>",{ desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
    }
  end,
}
