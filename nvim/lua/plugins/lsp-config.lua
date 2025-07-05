-- return {
--   {
--     "williamboman/mason.nvim",
--     lazy = false,
--     config = function()
--       require("mason").setup()
--     end,
--   },
--   {
--     "williamboman/mason-lspconfig.nvim",
--     lazy = false,
--     config = function()
--       require("mason-lspconfig").setup({
--         ensure_installed = {
--           "lua_ls",
--           -- "ts_ls",
--           "cssls",
--           "gopls",
--           "pyright",
--           "html",
--           "ruff",
--           "jdtls",
--           -- "emmet_ls",
--         },
--       })
--     end,
--   },
--   {
--     "neovim/nvim-lspconfig",
--     config = function()
--       local capabilities = require("cmp_nvim_lsp").default_capabilities()
--       local lspconfig = require("lspconfig")
--
--       lspconfig.lua_ls.setup({
--         capabilities = capabilities,
--       })
--       -- lspconfig.ts_ls.setup({
--         -- capabilities = capabilities,
--       -- })
--       lspconfig.cssls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.gopls.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.pyright.setup({
--         capabilities = capabilities,
--         settings = {
--           python = {
--             analysis = {
--               extrapath = { "." },
--             },
--           },
--         },
--       })
--       lspconfig.html.setup({
--         capabilities = capabilities,
--       })
--       lspconfig.ruff.setup({
--         capabilities = capabilities,
--       })
--       -- lspconfig.emmet_ls.setup({
--       --   capabilities = capabilities
--       -- })
--       lspconfig.emmet_language_server.setup({
--         filetypes = {
--           "css",
--           "eruby",
--           "html",
--           "javascript",
--           "javascriptreact",
--           "less",
--           "sass",
--           "scss",
--           "pug",
--           "typescriptreact",
--         },
--         -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
--         -- **Note:** only the options listed in the table are supported.
--         init_options = {
--           ---@type table<string, string>
--           includeLanguages = {},
--           --- @type string[]
--           excludeLanguages = {},
--           --- @type string[]
--           extensionsPath = {},
--           --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
--           preferences = {},
--           --- @type boolean Defaults to `true`
--           showAbbreviationSuggestions = true,
--           --- @type "always" | "never" Defaults to `"always"`
--           showExpandedAbbreviation = "always",
--           --- @type boolean Defaults to `false`
--           showSuggestionsAsSnippets = false,
--           --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
--           syntaxProfiles = {},
--           --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
--           variables = {},
--         },
--       })
--       vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--       vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "preview definition" })
--       vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--     end,
--   },
-- }
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
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "cssls",
          "gopls",
          "pyright",
          "html",
          "ruff",
          "jdtls",
          -- tsserver handled by typescript-tools.nvim
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              extrapath = { "." },
            },
          },
        },
      })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.ruff.setup({ capabilities = capabilities })

      lspconfig.emmet_language_server.setup({
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "pug",
          "typescriptreact",
        },
        init_options = {
          showAbbreviationSuggestions = true,
          showExpandedAbbreviation = "always",
          showSuggestionsAsSnippets = false,
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "preview definition" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
