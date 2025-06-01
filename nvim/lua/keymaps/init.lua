-- ===========================================================================
-- lua/keymaps/init.lua - Atalhos de Teclado e Comandos (Apenas Atribuições)
-- ===========================================================================

-- Carrega os módulos necessários para os atalhos (apenas para referência na descrição)
local builtin = require("telescope.builtin")
local opts = { noremap = true, silent = true }

-- =============================================
--          ATALHOS GERAIS DO NEVIM
-- =============================================

-- Navegação
-- <C-u>: Rola meia página para cima e centraliza a visualização
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
-- <C-d>: Rola meia página para baixo e centraliza a visualização
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
-- zz: Centraliza a linha atual na tela
vim.keymap.set('n', 'zz', 'zz', opts)
-- zt: Coloca a linha atual no topo da tela
vim.keymap.set('n', 'zt', 'zt', opts)
-- zb: Coloca a linha atual na base da tela
vim.keymap.set('n', 'zb', 'zb', opts)
-- <Delete>: Ir para o início da linha (configuração personalizada)
vim.keymap.set('n', '<Delete>', '^', { desc = "Ir para o início da linha" })

-- Edição
-- Y: Yank (copiar) até o final da linha
vim.keymap.set('n', 'Y', 'y$', { desc = "Yank até o final da linha" })
-- D: Deleta até o final da linha
vim.keymap.set('n', 'D', 'd$', { desc = "Deleta até o final da linha" })
-- C: Muda (deleta e entra em modo inserção) até o final da linha
vim.keymap.set('n', 'C', 'c$', { desc = "Muda até o final da linha" })
-- xp: Transpõe (troca a posição de) dois caracteres
vim.keymap.set('n', 'xp', 'xp', { desc = "Transpõe caracteres" })
-- <M-Down> (Alt+Seta Para Baixo): Duplica a linha atual para baixo
vim.keymap.set('n', '<M-Down>', 'yyp', { silent = true, desc = "Duplica linha para baixo" })
-- <M-Down> (Alt+Seta Para Baixo): Duplica a seleção visual para baixo
vim.keymap.set('v', '<M-Down>', ':t.<CR>', { silent = true, desc = "Duplica seleção para baixo" })

-- Salvar e Sair
-- <leader>w: Salvar arquivo
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Salvar arquivo" })
-- <leader>q: Sair do Neovim
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = "Sair do Neovim" })
-- <leader>Q: Sair do Neovim (forçado, sem salvar)
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = "Sair do Neovim (forçado)" })

-- =============================================
--          ATALHOS DE PLUGIN (Gerais)
-- =============================================

-- Telescope
-- <C-p>: Encontrar arquivos (Telescope)
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Telescope: Encontrar arquivos" })
-- <leader>fg: Pesquisa global em arquivos (Telescope Live Grep)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope: Pesquisa em arquivos" })
-- <leader>b: Listar buffers abertos (Telescope)
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Telescope: Buffers abertos" })
-- <leader>gh: Pesquisar tags de ajuda do Neovim (Telescope Help Tags)
vim.keymap.set('n', '<leader>gh', builtin.help_tags, { desc = "Telescope: Ajuda do Neovim" })

-- Neo-tree
-- <C-n>: Alternar a visibilidade do explorador de arquivos Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = "Alternar Neo-tree" })
-- <leader>nt: Revelar o arquivo atual no explorador de arquivos Neo-tree
vim.keymap.set('n', '<leader>nt', ':Neotree reveal<CR>', { noremap = true, silent = true, desc = "Revelar arquivo no Neo-tree" })

-- Gerenciamento de Janelas
-- <C-w>h: Mover o cursor para a janela à esquerda
vim.keymap.set('n', '<C-w>h', '<C-w>h', { desc = "Mover para janela à esquerda" })
-- <C-w>j: Mover o cursor para a janela abaixo
vim.keymap.set('n', '<C-w>j', '<C-w>j', { desc = "Mover para janela abaixo" })
-- <C-w>k: Mover o cursor para a janela acima
vim.keymap.set('n', '<C-w>k', '<C-w>k', { desc = "Mover para janela acima" })
-- <C-w>l: Mover o cursor para a janela à direita
vim.keymap.set('n', '<C-w>l', '<C-w>l', { desc = "Mover para janela à direita" })
-- <C-w>v: Criar uma nova divisão de janela vertical
vim.keymap.set('n', '<C-w>v', ':vsplit<CR>', { desc = "Dividir janela verticalmente" })
-- <C-w>s: Criar uma nova divisão de janela horizontal
vim.keymap.set('n', '<C-w>s', ':split<CR>', { desc = "Dividir janela horizontalmente" })
-- <C-w>o: Fechar todas as outras janelas, mantendo apenas a atual
vim.keymap.set('n', '<C-w>o', ':only<CR>', { desc = "Fechar outras janelas" })
-- <C-w>=: Equalizar o tamanho de todas as janelas divididas
vim.keymap.set('n', '<C-w>=', '<C-w>=', { desc = "Igualar tamanho das janelas" })

-- Terminal
-- <leader>t: Abrir um novo terminal em uma divisão vertical à direita (30% da largura)
vim.keymap.set('n', '<leader>t', function()
  local width = vim.fn.winwidth(0)
  local target_width = math.floor(width * 0.30)
  vim.cmd('botright vnew | terminal')
  vim.cmd('vertical resize ' .. target_width)
end, { desc = "Abrir terminal à direita (30% largura)" })
-- <Esc>1: Alternar para a próxima janela (funciona nos modos normal e terminal)
vim.keymap.set({'n', 't'}, '<Esc>1', '<C-w>w', { desc = 'Alternar para próxima janela' })
-- <Esc><Esc>: Sair do modo terminal e voltar para o modo normal (para buffers de terminal)
vim.api.nvim_set_keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true, silent = true, desc = "Sair do modo terminal" })

return {} -- Retorna uma tabela vazia, indicando que não há funções públicas neste módulo
