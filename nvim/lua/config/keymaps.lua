-- Exit terminal mode with Esc twice
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Move between windows using arrow keys in terminal mode
vim.keymap.set("t", "<C-Left>",  "<C-\\><C-n><C-w>h", { desc = "Move Left" })
vim.keymap.set("t", "<C-Down>",  "<C-\\><C-n><C-w>j", { desc = "Move Down" })
vim.keymap.set("t", "<C-Up>",    "<C-\\><C-n><C-w>k", { desc = "Move Up" })
vim.keymap.set("t", "<C-Right>", "<C-\\><C-n><C-w>l", { desc = "Move Right" })

