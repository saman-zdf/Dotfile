local status, wk = pcall(require, "which-key")
if not status then
	return
end

wk.setup({
	plugins = {
		marks = false,
		registers = false,
		spelling = { enabled = false, suggestions = 50 },
		presets = {
			operators = false,
			motions = false,
			text_objects = false,
			windows = false,
			nav = false,
			z = false,
			g = false,
		},
	},
})

local mappings = {
	e = {
		name = "File tree",
	},
	d = {
		name = "Remove Word",
		w = { 'vb"_d', "Rmove prev word" },
	},
	g = {
		name = "Diagnose errors/warning/Comment",
		d = "Go to definition path",
		p = "Pick definition",
		r = "Rename definition",
		c = "Visual mode linewise comment",
		b = "Visual mode blockwise comment",
		cc = "Normal mode using linewise comment, Can have prefix number for number of lines",
		cb = "Normal mode using blockwise comment, Can have prefix number for number of blocks",
	},
	s = {
		name = "Split window/File Finder",
		s = { ":split<Return><C-w>w", "Split Horizontally" },
		v = { ":vsplit<Return><C-w>w", "Split Vertically" },
		h = { "<C-w>h", "Left window" },
		l = { "<C-w>l", "Right window" },
		j = { "<C-w>j", "Buttom window" },
		k = { "<C-w>k", "Top window" },
		f = "File Finder",
	},
	t = {
		name = "New Tab",
		e = "Open New Tab",
	},
	CTRL = {
		n = "Toggle the file tree",
	},
}

local opts = {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

wk.register(mappings, opts)
