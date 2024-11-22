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
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {"python"},
        venvpath = ("/home/stoneboy/Python venvs/MachineLearning/"),
      })
      lspconfig.fortls.setup({
        capabilities = capabilities
      })
      lspconfig.ltex.setup({
        capabilities = capabilities
      })

      vim.keymap.set("n", "<leader>sd", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})

    end,
  },
}
