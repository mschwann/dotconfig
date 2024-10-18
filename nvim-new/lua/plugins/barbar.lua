local M = {'romgrk/barbar.nvim',
    dependencies = {
      --'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false 
      local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.api')

local function get_tree_size()
  return vim.api.nvim_win_get_width(0)
end

nvim_tree_events.subscribe("TreeOpen", function()
  bufferline_state.set_offset(32)
end)

nvim_tree_events.subscribe("Resize", function()
  bufferline_state.set_offset(32)
end)

nvim_tree_events.subscribe("TreeClose", function()
  bufferline_state.set_offset(0)
end)
    end,
    event = "BufEnter",
    opts = {
      icons = {
        preset="powerline",
      },
      sidebar_filetypes = {
        ["nvim-tree"] = true,
      },
      --auto_hide=true,
      
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
  }
return {M}
