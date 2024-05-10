return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"gopls",
			},
		},
		config = function()
			require("mason").setup({
				PATH = "prepend",
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"csharp_ls",
					"clangd",
					"cmake",
					"cssls",
					"cssmodules_ls",
					"dockerls",
					"gopls",
					"jsonls",
					"biome",
					"marksman",
					"intelephense",
					"powershell_es",
					"sqls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.csharp_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.biome.setup({})
			lspconfig.powershell_es.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
