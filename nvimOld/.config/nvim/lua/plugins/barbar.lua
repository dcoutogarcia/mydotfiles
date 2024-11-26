return {
  'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = true end,
    config = function()
      vim.keymap.set('n', '<tab>', ':BufferNext<Cr>')
      vim.keymap.set('n', '<leader>tq', ':BufferClose<Cr>')
      vim.keymap.set("n", "<leader>t1", ":BufferGoto 1<Cr>")
      vim.keymap.set("n", "<leader>t2", ":BufferGoto 2<Cr>")
      vim.keymap.set("n", "<leader>t3", ":BufferGoto 3<Cr>")
      vim.keymap.set("n", "<leader>t4", ":BufferGoto 4<Cr>")
      vim.keymap.set("n", "<leader>t5", ":BufferGoto 5<Cr>")
      vim.keymap.set("n", "<leader>t6", ":BufferGoto 6<Cr>")
      vim.keymap.set("n", "<leader>t7", ":BufferGoto 7<Cr>")
      vim.keymap.set("n", "<leader>t8", ":BufferGoto 8<Cr>")
      vim.keymap.set("n", "<leader>t9", ":BufferGoto 0<Cr>")
      vim.keymap.set("n", "<leader>t0", ":BufferGoto 10<Cr>")
    end


}
