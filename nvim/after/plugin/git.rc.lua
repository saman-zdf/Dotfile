local status, git = pcall(require, "git")
if not status then
	return
end

git.setup({
	keymaps = {
		-- Open bleme window
		blame = "bl",
		-- Open file/folder in git repository
		browse = "bc",
	},
})
