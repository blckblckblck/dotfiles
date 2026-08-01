return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
    local dashboard = require("alpha.themes.dashboard")

    local custom_ascii = {
      [[ nvim ^W^ ]],
    }

    vim.api.nvim_set_hl(0, "AlphaWhiteText", { fg = "#FFFFFF" })

    dashboard.section.header.val = custom_ascii
    dashboard.section.header.opts.hl = "AlphaWhiteText"

    dashboard.section.buttons.val = {
      dashboard.button("n", "new file", "<cmd>ene | startinsert<CR>"),
      dashboard.button("o", "open file", "<cmd>lua Snacks.picker.files()<CR>"),
      dashboard.button("q", "quit", "<cmd>qa<CR>"),
    }

    dashboard.section.buttons.opts = {
      spacing = 0,
      position = "center",
    }

    dashboard.config.layout = {
      {
        type = "padding",
        val = function()
        return math.max(0, math.floor((vim.o.lines - #custom_ascii - 3) / 2))
        end,
      },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
    }

    return dashboard
    end,

    config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)
    end,
  },
}
