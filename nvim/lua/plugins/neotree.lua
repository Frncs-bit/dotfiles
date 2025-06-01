-- ===========================================================================
-- lua/plugins/neotree.lua - Configuração do Neo-tree.nvim
-- ===========================================================================

local M = {}

M.setup = function()
  require('neo-tree').setup({
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        visible_in_plus_file = true,
        hide_dotfiles = false,
        hide_git_ignored = false,
        hide_hidden = false,
      },
      window = {
        mappings = {
          ["<space>"] = "none",
        }
      }
    },
    window = {
      position = "left",
      width = 30,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
    },
    default_component_configs = {
      container = {
        enable_character_fade = true
      },
      indent = {
        indent_size = 2,
        padding = 1,
        tree_indent_markers = { "│" },
        parent_edge_markers = { "─" },
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        folder_empty_open = "",
        default = "",
      },
      git_status = {
        symbols = {
          added     = "✚",
          modified  = "",
          deleted   = "✖",
          renamed   = "➜",
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "",
          conflict  = "",
        },
      },
    },
  })
end

return M
