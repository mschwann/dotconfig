return {"lukas-reineke/indent-blankline.nvim",
  dependencies={
    "HiPhish/rainbow-delimiters.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  main = "ibl",
  opts={},
  config = function() require("config.blankline") end
}
