return {
    "neovim/nvim-lspconfig",
    init = function()
      require("core.utils").lazy_load "nvim-lspconfig"
    end,
    config = function()
      require "config.lspconfig-base"
      require "config.lspconfig"
    end,
  }
