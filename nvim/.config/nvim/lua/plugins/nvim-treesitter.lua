return{
  "nvim-treesitter/nvim-treesitter",
  build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
  end,
 config = function()
   ensure_installed = {"pyhton", "lua", "fortran", "bash"}
 end
}


