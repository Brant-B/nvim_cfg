local status, copilot = pcall(require, "copilot")
if not status then
    vim.notify("没有找到 copilot")
    return
end

copilot.setup({
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
        suggestion = { enabled = false },
        panel = { enabled = false },
        filetypes = {
            markdown = true,
            help = true,
        },
    },
    panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
            jump_prev = "<C-p>",
            jump_next = "<C-n>",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
        },
        layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.3
        },
    },
    filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    copilot_node_command = 'node', -- Node.js version must be > 18.x
    server_opts_overrides = {},
})
