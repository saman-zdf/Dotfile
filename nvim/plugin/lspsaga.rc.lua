local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	-- use enter to open file with finder
	finder_action_keys = {
		open = "<CR>",
	},
	-- use enter to open file with definition preview
	definition_action_keys = {
		edit = "<CR>",
	},
})

-- ***** TODO: server file type doesn't recognise JS & TS, find the fix for it *******
-- saga.init_lsp_saga({
-- 	server_filetype_map = {
-- 		typescript = "typescript",
-- 		javascript = "javascript",
-- 	},
-- })
