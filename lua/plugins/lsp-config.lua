return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
			lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.gdscript.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })

      -- SHOW INFO
			vim.keymap.set("n", SHOW_INFO, vim.lsp.buf.hover, {})

      -- GO TO DEFINITION
			vim.keymap.set("n", GO_TO_DEFENITION, vim.lsp.buf.definition, {})

      -- SHOW ACTION
			vim.keymap.set("n", SHOW_ACTION, vim.lsp.buf.code_action, {})
		end,
	},
}
