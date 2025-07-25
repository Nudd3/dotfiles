-- return {
-- 	cmd = {
-- 		"vtsls",
--     "--stdio"
-- 	},
-- 	filetypes = {
-- 		"typescript",
--     "typescriptreact",
-- 		"ts",
-- 		"tsx",
--     "javascript",
--     "javascriptreact",
--     "js",
--     "jsx"
-- 	},
-- 	root_markers = {
-- 		".git",
-- 		"package.json",
-- 		"tsconfig.json",
-- 		"jsconfig.json",
-- 	},
--
--   experimental = {
--     completion = {
--       enableServerSideFuzzyMatch = true,
--           entriesLimit = 50,
--     }
--   },
--
-- 	single_file_support = true,
-- 	log_level = vim.lsp.protocol.MessageType.Warning,
-- }
-- local util = require("lspconfig.util")

---@type vim.lsp.Config
return {
	cmd = { "vtsls", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	-- root_dir = util.root_pattern("tsconfig.json", ".git"),
	root_markers = { "tsconfig.json", ".git" },
	settings = {
		refactor_auto_rename = true,
		complete_function_calls = true,
		vtsls = {
			enableMoveToFileCodeAction = true,
			autoUseWorkspaceTsdk = true,
			experimental = {
				completion = {
					enableServerSideFuzzyMatch = true,
					entriesLimit = 20,
				},
			},
		},
		typescript = {
			updateImportsOnFileMove = { enabled = "always" },
			suggest = {
				completeFunctionCalls = true,
			},
			tsserver = {
				useSeparateSyntaxServer = true,
				experimental = {
					enableProjectDiagnostics = true,
				},
			},
			preferences = {
				importModuleSpecifier = "project-relative",
				-- importModuleSpecifier = "non-relative",
			},
			inlayHints = {
				enumMemberValues = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				variableTypes = { enabled = false },
			},
		},
	},
}

