return  function()
      vim.g.catppuccin_flavour = "macchiato"
      require("catppuccin").setup {
        flavour = "macchiato",
        dim_inactive = {
          enabled = false,
        },
        integrations = {
          cmp = true,
          nvimtree = true,
          treesitter = true,
        },
      }

      vim.cmd.colorscheme "catppuccin-macchiato"
    end
