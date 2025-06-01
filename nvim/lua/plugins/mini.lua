-- ===========================================================================
-- lua/plugins/mini.lua - Configuração do Mini.nvim
-- ===========================================================================

local M = {}

M.setup = function()
  require('mini.pairs').setup()
  -- Outros módulos do mini.nvim podem ser configurados aqui, por exemplo:
  -- require('mini.comment').setup()
  -- require('mini.surround').setup()
end

return M
