-- ===========================================================================
-- lua/plugins/lualine.lua - Configuração do Lualine com tema embutido
-- ===========================================================================

local M = {}

M.setup = function()

  -- Paleta de cores para o Lualine (movida de lualine/themes/nebula.lua)
  local colors = {
      fg = "#E0F0FF",
      bg = "#030A14",
      selection_fg = "#030A14",
      selection_bg = "#5CA0F0", -- Azul vibrante para destaque
      blue = "#4080E0",
      bright_blue = "#5090F0",
      dark_gray = "#2B384A",
      light_gray = "#D0E0F0",
      purple_red = "#B060D0",
      yellow = "#F0D060",
      teal = "#50C0A0",
  }

  -- Tema Lualine 'nebula' (movido de lualine/themes/nebula.lua)
  local nebula_theme = {
      -- Configuração para o modo NORMAL
      normal = {
          a = { fg = colors.selection_fg, bg = colors.bright_blue, gui = 'bold' },
          b = { fg = colors.light_gray, bg = colors.dark_gray },
          c = { fg = colors.fg, bg = colors.bg },
          x = { fg = colors.light_gray, bg = colors.dark_gray },
          y = { fg = colors.fg, bg = colors.dark_gray },
          z = { fg = colors.fg, bg = colors.dark_gray },
      },

      -- Configuração para o modo INACTIVE (janelas não focadas)
      inactive = {
          a = { fg = colors.dark_gray, bg = colors.bg, gui = 'bold' },
          b = { fg = colors.dark_gray, bg = colors.bg },
          c = { fg = colors.dark_gray, bg = colors.bg },
          x = { fg = colors.dark_gray, bg = colors.bg },
          y = { fg = colors.dark_gray, bg = colors.bg },
          z = { fg = colors.dark_gray, bg = colors.bg },
      },

      -- Configuração para o modo VISUAL
      visual = {
          a = { fg = colors.selection_fg, bg = colors.selection_bg, gui = 'bold' },
          b = { fg = colors.light_gray, bg = colors.dark_gray },
          c = { fg = colors.fg, bg = colors.bg },
      },

      -- Configuração para o modo REPLACE
      replace = {
          a = { fg = colors.selection_fg, bg = colors.purple_red, gui = 'bold' }, -- Roxo
          b = { fg = colors.light_gray, bg = colors.dark_gray },
          c = { fg = colors.fg, bg = colors.bg },
      },

      -- Configuração para o modo INSERT
      insert = {
          a = { fg = colors.selection_fg, bg = colors.teal, gui = 'bold' }, -- Verde/Teal
          b = { fg = colors.light_gray, bg = colors.dark_gray },
          c = { fg = colors.fg, bg = colors.bg },
      },

      -- Configuração para o modo COMMAND LINE (cmdline)
      command = {
          a = { fg = colors.selection_fg, bg = colors.yellow, gui = 'bold' }, -- Amarelo
          b = { fg = colors.light_gray, bg = colors.dark_gray },
          c = { fg = colors.fg, bg = colors.bg },
      },
  }


  -- Configuração principal do Lualine
  require('lualine').setup({
    options = {
      icons_enabled = true,
      theme = nebula_theme, -- <--- ALTERADO: Agora usa o tema definido acima
      component_separators = { '', '' },
      section_separators = { '', '' },
      disabled_filetypes = { 'NvimTree', 'packer', 'alpha', 'lazy' },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = { 'nvim-tree', 'lazy' }
  })
end

return M
