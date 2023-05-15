-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.clipboard = "unnamedplus"

if vim.fn.has("wsl") then
    vim.g.clipboard = {
        name = "clip.exe (Copy Only)",
        copy = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe"
        },
        paste = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe"
        },
        cache_enabled = true
    }
end
