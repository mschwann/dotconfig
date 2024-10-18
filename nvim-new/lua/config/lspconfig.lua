local base = require("config.lspconfig-base")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
	on_attach = function(client, bufnr)
		client.server_capabilities.signatureHelpProvider = false
		on_attach(client, bufnr)
	end,
	capabilities = capabilities,
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "h", "hpp" },
})

lspconfig.cmake.setup({
	capabilities = capabilities,
	filetypes = { "cmake", "CMakeLists.txt" },
})

lspconfig.ruff_lsp.setup({})
