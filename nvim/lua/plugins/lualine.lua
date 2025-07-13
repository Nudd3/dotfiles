return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-frappe",
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = {
          -- {
          --     lazy_status.updates,
          --     cond = lazy_status.has_updates,
          --     color = { fg = "#ff9e64" },
          -- },
          -- { "encoding" },
          -- { "fileformat" },
          { "filetype" },
          {
            "datetime",
            -- options: default, us, uk, iso, or your own format string ("%H:%M", etc...)
            style = "[%H:%M]",
          },
        },
        lualine_z = {},
      },
    })
  end,
}

