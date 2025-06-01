-- ===========================================================================
-- init.lua - Configuração principal do Neovim (Modular)
-- ===========================================================================

-- Define a variável global para o caminho de dados do Neovim
local vim_data_path = vim.fn.stdpath("data")

-- =============================================
--          SETUP LAZY.NIM
-- =============================================

local lazypath = vim_data_path .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- IMPORTANTE: Adiciona o diretório principal da configuração (~/.config/nvim) ao runtimepath
-- Isso é crucial para plugins como Lualine encontrarem seus temas ou arquivos auxiliares.
vim.opt.rtp:append(vim.fn.stdpath("config"))

-- Adiciona o diretório 'lua' ao runtimepath para que os módulos Lua personalizados possam ser carregados
vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua")

-- =============================================
--          CARREGA MÓDULOS DE CONFIGURAÇÃO
-- =============================================

-- Carrega as opções globais do Neovim
require("config.options")

-- Carrega a configuração dos plugins
require("plugins")

-- Carrega a configuração do tema
require("theme")

-- Carrega os atalhos de teclado (agora apenas com atalhos globais)
require("keymaps")

-- ===========================================================================
-- Fim do init.lua
-- ===========================================================================
