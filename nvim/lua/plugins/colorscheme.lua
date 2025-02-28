-- return  {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     priority = 1000,
--     config = function()
--         require("rose-pine").setup({
--             --- @usage 'auto'|'main'|'moon'|'dawn'
--             variant = "moon",
--             --- @usage 'main'|'moon'|'dawn'
--             dark_variant = "moon",
--             bold_vert_split = false,
--             dim_nc_background = false,
--             disable_background = false,
--             disable_float_background = false,
--             disable_italics = false,
--         })
--
--         -- Set colorscheme after options
--         vim.cmd.colorscheme "rose-pine"
--     end,
--   }
--
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-frappe"
  end
}
