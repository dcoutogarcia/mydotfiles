return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.yamlls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.fortls.setup({
				capabilities = capabilities,
				cmd = {
					"fortls",
					"--hover_signature",
					"--hover_language=fortran",
					"--notify_init",
					"--use_signature_help",
				},
				-- Ahora mismo está configurado para activarse en cualquier carpeta dentro de ~/
				-- si se pone el comentario, solo se activará en carpetas que incluyan un .git o un .fortls.json
				root_dir = "~/", --lspconfig.util.root_pattern('.git', '.fortls.json'),
			})
			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					filetypes = { "python" },
				},
			})
			lspconfig.ltex.setup({
				capabilities = capabilities,
				settings = {
					ltex = {
						language = "gl-ES",
					},
				},
				root_dir = "~/",
			})
			lspconfig.texlab.setup({
				capabilities = capabilities,
			})
			lspconfig.ruff.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<leader>sd", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
		end,
	},
}
