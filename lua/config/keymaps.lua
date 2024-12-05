local closingParantheses = function(str)
    return function()
    	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    	cursor = vim.api.nvim_buf_get_text(0,row -1,col,row-1,col +1,{})[1]
    	if cursor == str then 
        	return "<right>"
    	else
        	return str
    	end
    end
end



vim.g.mapleader = " "
--normal Keymaps automatically add closing paranthesees
vim.keymap.set("i",")",closingParantheses(")"),{expr = true})
vim.keymap.set("i","}",closingParantheses("}"),{expr = true})
vim.keymap.set("i","]",closingParantheses("]"),{expr = true})
vim.keymap.set("i",">",closingParantheses(">"),{expr = true})
vim.keymap.set("i","(","()<left>")
vim.keymap.set("i","{","{}<left>")
vim.keymap.set("i","[","[]<left>")
vim.keymap.set("i","<","<><left>")
vim.keymap.set({"n","i","x","s","o","t","c"},"^","<esc>")
--Buffer Navigation
vim.keymap.set("n","<leader>w",":bn<cr>")
vim.keymap.set("n","<leader>b",":bp<cr>")
vim.keymap.set("n","<leader>x",":bd<cr>")
vim.keymap.set("n","<leader>n","new<cr>")
--Window Navigation
vim.keymap.set("n","<C-h>","<C-w>h")
vim.keymap.set("n","<C-j>","<C-w>j")
vim.keymap.set("n","<C-k>","<C-w>k")
vim.keymap.set("n","<C-l>","<C-w>l")
vim.keymap.set("n","<leader>n",function()vim.api.nvim_command("new")end)
--Telescope
vim.keymap.set("n","<leader>fs",":Telescope find_files<cr>")
vim.keymap.set("n","<leader>fg",":Telescope live_grep<cr>")
vim.keymap.set("n","<leader>ff",":Telescope current_buffer_fuzzy_find<cr>")
--Tree
vim.keymap.set("n","<leader>t",":NvimTreeFindFileToggle<cr>")
--Test
--helper functions

