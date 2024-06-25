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
})
