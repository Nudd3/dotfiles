return {
	cmd = {
		"tailwindcss-language-server",
	},
	filetypes = {
		"sass",
		"css",
		"scss",
	},
	root_markers = {
		".git",
		"package.json",
		"tsconfig.json",
		"jsconfig.json",
	},

	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
