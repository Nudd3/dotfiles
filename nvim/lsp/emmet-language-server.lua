
-- return {
-- 	cmd = {
-- 		"emmet-language-server",
--     "--stdio"
-- 	},
-- 	filetypes = {
-- 		"sass",
-- 		"css",
-- 		"scss",
--     "html",
--     "tsx",
--     "jsx"
-- 	},
-- 	root_markers = {
-- 		".git",
-- 		"package.json",
-- 		"tsconfig.json",
-- 		"jsconfig.json",
-- 	},
--
-- 	single_file_support = true,
-- 	log_level = vim.lsp.protocol.MessageType.Warning,
-- }
---@type vim.lsp.Config
return {
	cmd = { "emmet-language-server", "--stdio" },
	single_file_support = true,
	root_markers = { ".git" },
	filetypes = {
		"astro",
		"css",
		"eruby",
		"html",
		"htmldjango",
		"javascript",
		"javascriptreact",
		"less",
		"pug",
		"sass",
		"scss",
		"svelte",
		"typescriptreact",
		"vue",
		"htmlangular",
	},
	settings = {
		init_options = {
			jsx = {
				options = {
					["jsx.enabled"] = true,
					["markup.attributes"] = {
						["class"] = "className",
						["class*"] = "className",
						["for"] = "htmlFor",
					},
					["markup.valuePrefix"] = {
						["class*"] = "styles",
					},
				},
			},
		},
	},
}
