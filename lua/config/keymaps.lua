vim.g.mapleader = " "
--normal Keymaps
vim.keymap.set({"n","i","x","s","o","t","c"},"^","<esc>")
--Buffer Navigation
vim.keymap.set("n","<leader>w",":bn<cr>")
vim.keymap.set("n","<leader>b",":bp<cr>")
vim.keymap.set("n","<leader>x",":bd<cr>")
--Window Navigation
vim.keymap.set("n","<C-h>","<C-w>h")
vim.keymap.set("n","<C-j>","<C-w>j")
vim.keymap.set("n","<C-k>","<C-w>k")
vim.keymap.set("n","<C-l>","<C-w>l")
--Telescope
vim.keymap.set("n","<leader>fs",":Telescope find_files<cr>")
vim.keymap.set("n","<leader>fg",":Telescope live_grep<cr>")
vim.keymap.set("n","<leader>ff",":Telescope current_buffer_fuzzy_find<cr>")
--Tree
vim.keymap.set("n","<leader>t",":NvimTreeFindFileToggle<cr>")
