local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	-- Theme
	-- use("olimorris/onedarkpro.nvim")
	use("morhetz/gruvbox")
	use({ "rockyzhang24/arctic.nvim", requires = { "rktjmp/lush.nvim" } })
	-- using packer.nvim
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	-- Live-server
	use("manzeloth/live-server")
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("jayp0521/mason-null-ls.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- yaml support
	use({
		"cuducos/yaml.nvim",
		ft = { "yaml" }, -- optional
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
		},
	})
	-- COC nvim
	use({ "neoclide/coc.nvim", branch = "release" })
	-- use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip")

	-- NOTE: recent update of lspsage is not working, there is mismatch in my configurtion, the laspsage.rc is commented for now, until resolve the mismatch, COC will do the job for now.
	-- use({
	-- 	"glepnir/lspsaga.nvim",
	-- 	branch = "main",
	-- 	config = function()
	-- 		require("lspsaga").setup({})
	-- 	end,
	-- })

	-- Font size
	use("tenxsoydev/size-matters.nvim")
	-- NOTE: treesitter last update is broken, I need to find an altrenative plugin for highligting text
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("nvim-tree/nvim-tree.lua") -- File explorer
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim") -- file findder
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("norcalli/nvim-colorizer.lua") -- the colorizer not working.

	use("folke/which-key.nvim") -- which key show all the key binding
	use("folke/zen-mode.nvim")

	use("numToStr/Comment.nvim") -- Comment
	use("lukas-reineke/lsp-format.nvim") -- Auto formatter
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("akinsho/nvim-bufferline.lua")

	-- terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- Git, GitSign, Git conflict
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse
	use("tveskag/nvim-blame-line")
	use({
		"akinsho/git-conflict.nvim",
		tag = "*",
		config = function()
			require("git-conflict").setup()
		end,
	})
	use({
		"tanvirtin/vgit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
end)
