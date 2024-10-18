return {
	"williamboman/mason.nvim",
	lazy = false,
	opts = {
		ensure_installed = {
			"lua-language-server",
			"clangd",
			"clang-format",
			"stylua",
			"isort",
			"black",
			"prettierd",
			"prettier",
			"codespell",
			"cmake-language-server",
			--"trim_whitespace", --welp, doesnt work.
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)
		-- custom nvchad cmd to install all mason binaries listed
		vim.api.nvim_create_user_command("MasonInstallAll", function()
			vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
		end, {})

		vim.g.mason_binaries_list = opts.ensure_installed
	end,
}
