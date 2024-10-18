vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle, { silent = true })
-- barbar
vim.keymap.set("n", "<leader>q", vim.cmd.BufferCloseAllButCurrentOrPinned, { silent = true })
vim.keymap.set("n", "<tab>", vim.cmd.BufferNext, { silent = true })
vim.keymap.set("n", "<S-tab>", vim.cmd.BufferPrevious, { silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

vim.keymap.set("n", "<space>ca", function()
	vim.lsp.buf.code_action({ apply = true })
end)
