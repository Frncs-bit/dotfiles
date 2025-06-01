
-- ===========================================================================
-- lua/plugins/treesitter.lua - Configuração do Nvim-Treesitter
-- ===========================================================================

local M = {}

M.setup = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      "c", "lua", "vim", "vimdoc", "query", "html", "css",
      "javascript", "typescript", "json", "yaml", "markdown",
      "cpp", "python", "bash",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  })
end

return M
