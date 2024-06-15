return{
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "|", ": Outline<CR>",
      { desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
    }
  end,
}
