return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  config = function()
    require("typescript-tools").setup({
      settings = {
        separate_diagnostics_server = false,
        publish_diagnostics_on = "insert_leave",
        expose_as_code_action = "all",
        disable_member_diagnostics = true,
        tsserver_file_preferences = {
          includeInlayParameterNameHints = "all",
          includeCompletionsForModuleExports = true,
        },
      },
    })
  end,
}
