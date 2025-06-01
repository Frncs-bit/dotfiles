-- ===========================================================================
-- lua/config/options.lua - Opções Globais do Neovim
-- ===========================================================================

-- Opções de interface e comportamento
vim.opt.clipboard = 'unnamedplus' -- Habilita o clipboard do sistema
vim.opt.nu = true                 -- Mostra números de linha
--vim.opt.relativenumber = true     -- Mostra números de linha relativos (opcional, pode ser removido se preferir apenas 'nu')

-- Opções de indentação
vim.opt.tabstop = 4               -- Tamanho de uma tabulação
vim.opt.softtabstop = 4           -- Largura de um tab ao editar
vim.opt.shiftwidth = 4            -- Espaços usados para auto-indent
vim.opt.expandtab = true          -- Usar espaços em vez de tabulações
vim.opt.smartindent = true        -- Indentação inteligente

-- Opções de pesquisa
vim.opt.hlsearch = true           -- Destacar resultados da pesquisa
vim.opt.incsearch = true          -- Pesquisa incremental

-- Opções de display
vim.opt.termguicolors = true      -- Ativar cores verdadeiras no terminal (para temas)
vim.opt.scrolloff = 8             -- Linhas de contexto acima/abaixo do cursor ao rolar
vim.opt.isfname:append("@-@")     -- Caracteres que podem fazer parte do nome do arquivo
vim.opt.signcolumn = "yes"        -- Sempre mostrar a coluna dos sinais (diagnósticos LSP)
vim.opt.cmdheight = 1             -- Altura da linha de comando
vim.opt.shortmess:append("c")     -- Ocultar algumas mensagens de introdução
vim.opt.background = 'dark'       -- Definir o fundo como escuro (para temas transparentes)
vim.opt.updatetime = 300          -- Tempo para o Neovim escrever o swapfile (diagnósticos LSP)

-- Define o mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " " -- Também define o maplocalleader, boa prática
