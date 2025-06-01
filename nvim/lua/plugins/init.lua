
-- ===========================================================================
-- lua/plugins/init.lua - Gerenciamento de Plugins com Lazy.nvim
-- ===========================================================================

-- Configura o Lazy.nvim para carregar os plugins
require("lazy").setup({
  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('plugins.lualine').setup() -- Carrega a configuração do lualine de um arquivo separado
    end,
  },

  -- Nvim-Lspconfig e suas dependências
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Necessário para autocompletar e snippets com LSP
    },
    config = function()
      require('plugins.lsp').setup() -- Carrega a configuração do LSP de um arquivo separado
    end,
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- Nenhuma configuração específica de setup para Telescope aqui,
      -- pois é principalmente configurado via keymaps.
      -- O arquivo plugins.telescope pode ser usado para configurações mais avançadas se necessário.
    end,
  },

  -- Nvim-Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false, -- Treesitter é essencial, então não é lazy
    build = ":TSUpdate", -- Comando para instalar os parsers
    config = function()
      require('plugins.treesitter').setup() -- Carrega a configuração do Treesitter
    end,
  },

  -- Mini.nvim
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('plugins.mini').setup() -- Carrega a configuração do Mini.nvim
    end,
  },

  -- Neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require('plugins.neotree').setup() -- Carrega a configuração do Neo-tree
    end,
  },

  -- alpha-nvim  
     {

    "goolord/alpha-nvim",

    -- dependencies = { 'echasnovski/mini.icons' },

    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()

      local startify = require("alpha.themes.startify")

      -- available: devicons, mini, default is mini

      -- if provider not loaded and enabled is true, it will try to use another provider

      startify.file_icons.provider = "devicons"

      require("alpha").setup(

        startify.config

      )

    end,

  },  
  -- Nvim-cmp (autocompletar)
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp", -- Fonte para sugestões do LSP
    },
    config = function()
      require('plugins.cmp').setup() -- Carrega a configuração do Nvim-cmp
    end,
  },
})
