return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    event = "VeryLazy",
    opts = {
      display = {
        theme = "minecraft",
        flavor = "dark",
      },

      editor = {
        icon = "minecraft",
        tooltip = "neovim",
      },

      text = {
        vcs = "using git",
    },
  },
}
