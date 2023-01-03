local status, prettier = pcall(reuqire, "prettier")
if not status then
	return
end

prettier.setup({
	bin = "prettierd",
	file_types = {
		"css",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"json",
		"scss",
		"less",
		"html",
	},
})
