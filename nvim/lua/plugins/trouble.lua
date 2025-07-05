return {
  "folke/trouble.nvim",
  opts = {
    auto_open = false,
    auto_close = true,
    position = "right", -- position of the list
    height = 10,         -- height of the list
    width = 50,          -- width of the lsit
    mode = "window",

    -- icons = true,
    action_keys = {
      jump = { "<CR>", "<Tab>" },
      cancel = { "q", "<Esc>", "<C-c>" },
    },
    indent_lines = true,
    signs = {
      error = "✗",
      warning = "!",
      hint = "?",
      information = "i",
      other = "›",
    },
    use_diagnostic_signs = true
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
