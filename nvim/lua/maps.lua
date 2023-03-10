vim.g.mapleader = " "
local keymap = vim.keymap
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
-- git blame toggleter
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

keymap.set("n", "<C-b>", ":ToggleBlameLine", { silent = true })
-- New tab
keymap.set("n", "te", ":tabedit", { silent = true })
-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
-- Move window
keymap.set("n", "<C-z>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set("n", "<C-l>", ":m .+1<CR>==") -- move line down(n)
keymap.set("n", "<C-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
