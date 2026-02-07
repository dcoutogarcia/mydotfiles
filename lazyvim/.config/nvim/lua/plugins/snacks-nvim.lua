-- lazy.nvim
return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        win = {
          list = {
            keys = {
              ["j"] = "explorer_close",
              ["ñ"] = "confirm",
            },
          },
        },
      },
    },
  },
}
