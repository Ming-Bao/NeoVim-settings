local lspconfig = require("lspconfig")

lspconfig.jdtls.setup({
	settings = {
		java = {
			format = {
				enabled = true,
				-- Directly specify indentation settings here:
				settings = {
					["org.eclipse.jdt.core.formatter.tabulation.char"] = "space",
					["org.eclipse.jdt.core.formatter.tabulation.size"] = "2",
					["org.eclipse.jdt.core.formatter.indentation.size"] = "2",
				},
			},
		},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.bo.shiftwidth = 2
		vim.bo.tabstop = 2
		vim.bo.expandtab = true
	end,
})
