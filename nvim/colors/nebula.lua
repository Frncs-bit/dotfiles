
-- ~/.config/nvim/colors/nebula.lua
-- Colorscheme personalizado baseado no tema do terminal Nebulosa Azul

-- Limpa quaisquer destaques existentes para garantir que o novo tema seja aplicado corretamente
vim.cmd("hi clear")

-- Garante que o Neovim use cores verdadeiras (24-bit) se o terminal suportar
-- Nota: esta linha também está em lua/config/options.lua. Ambas são válidas,
-- mas a de options.lua é carregada primeiro e é mais "global".
vim.opt.termguicolors = true

-- Define o background como 'dark' para que o tema saiba que é um tema escuro
-- Nota: esta linha também está em lua/config/options.lua. Ambas são válidas,
-- mas a de options.lua é carregada primeiro e é mais "global".
vim.opt.background = 'dark'

-- Definição da paleta de cores baseada no seu tema de terminal
local colors = {
    -- Cores principais
    fg = "#E0F0FF", -- foreground (texto principal)
    bg = "#030A14", -- background (fundo principal)

    -- Cores de seleção
    selection_fg = "#030A14", -- selection_foreground
    selection_bg = "#5CA0F0", -- selection_background

    -- Cores do cursor
    cursor_color = "#A0E0FF", -- cursor
    cursor_text = "#030A14", -- cursor_text_color

    -- Cor de URL/Link
    url_color = "#7FC0FF",

    -- Cores de bordas
    border_active = "#A0E0FF",    -- active_border_color
    border_inactive = "#4A607A", -- inactive_border_color
    border_bell = "#C0E8FF",      -- bell_border_color

    -- Cores ANSI (paleta de 16 cores)
    black = "#1A2430",           -- color0
    dark_gray = "#2B384A",       -- color8 (bright black)
    
    purple_red = "#B060D0",      -- color1 (red-like, mas puxando para o roxo)
    bright_purple_red = "#C070E0", -- color9
    
    teal = "#50C0A0",            -- color2 (green-like)
    bright_teal = "#60D0B0",     -- color10
    
    yellow = "#F0D060",          -- color3
    bright_yellow = "#FFE070",   -- color11
    
    blue = "#4080E0",            -- color4
    bright_blue = "#5090F0",     -- color12
    
    magenta = "#A050C0",         -- color5
    bright_magenta = "#B060D0", -- color13
    
    cyan = "#60C0D0",            -- color6
    bright_cyan = "#70D0E0",     -- color14
    
    light_gray = "#D0E0F0",      -- color7 (white-like)
    white = "#E0F0FF",           -- color15 (bright white)
}

-- Mapeamento dos grupos de destaque do Neovim para as cores do tema
-- Grupo: Normal (fundo e texto padrão)
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.black }) -- Fundo de janelas flutuantes (ex: cmp, diagnósticos)
vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.border_inactive, bg = colors.black })
vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg, bg = colors.bg }) -- Janelas não-atuais

-- Comentários
vim.api.nvim_set_hl(0, "Comment", { fg = colors.dark_gray, italic = true })

-- Strings, caracteres, números, booleanos
vim.api.nvim_set_hl(0, "String", { fg = colors.teal })
vim.api.nvim_set_hl(0, "Character", { fg = colors.teal })
vim.api.nvim_set_hl(0, "Number", { fg = colors.purple_red })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.purple_red })
vim.api.nvim_set_hl(0, "Float", { fg = colors.purple_red })

-- Identificadores (variáveis, nomes de função)
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Function", { fg = colors.bright_blue })

-- Palavras-chave, operadores
vim.api.nvim_set_hl(0, "Statement", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Conditional", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Repeat", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.light_gray })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.bright_magenta })

-- Tipos, structs, pre-processadores
vim.api.nvim_set_hl(0, "Type", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Structure", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Typedef", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Special", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Define", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Macro", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "Conceal", { fg = colors.blue })

-- Cores de UI e cursor
vim.api.nvim_set_hl(0, "Cursor", { fg = colors.cursor_text, bg = colors.cursor_color })
vim.api.nvim_set_hl(0, "lCursor", { fg = colors.cursor_text, bg = colors.cursor_color }) -- Cursor no terminal
vim.api.nvim_set_hl(0, "Visual", { fg = colors.selection_fg, bg = colors.selection_bg })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.black }) -- Fundo da linha do cursor
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.bright_blue, bg = colors.black }) -- Número da linha do cursor
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.dark_gray, bg = colors.bg }) -- Número da linha
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.dark_gray, bg = colors.black })
vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.dark_gray, bg = colors.bg }) -- Coluna dos sinais de diagnóstico
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.black }) -- Coluna que destaca o limite de caracteres
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.border_inactive, bg = colors.bg }) -- Divisores de janela
vim.api.nvim_set_hl(0, "NonText", { fg = colors.black }) -- Caracteres não-texto (final de linha, etc.)
vim.api.nvim_set_hl(0, "SpecialKey", { fg = colors.dark_gray }) -- Caracteres especiais (espaços, tabs)

-- Pesquisa
vim.api.nvim_set_hl(0, "Search", { fg = colors.selection_fg, bg = colors.yellow })
vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.selection_fg, bg = colors.bright_yellow })

-- Diagnósticos LSP
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.purple_red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.blue })

vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = colors.purple_red })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = colors.blue })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.purple_red })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.cyan })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.blue })

vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.black })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.black })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.black })

-- Destaques relacionados ao LSP (CodeLens, etc.)
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.dark_gray, italic = true })

-- Nvim-cmp (autocompletar)
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = colors.fg })
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = colors.blue })
vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = colors.dark_gray })
vim.api.nvim_set_hl(0, "CmpItemSel", { fg = colors.selection_fg, bg = colors.selection_bg })
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.black })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.selection_fg, bg = colors.selection_bg })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.dark_gray })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.selection_bg })

-- Neo-tree
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = colors.fg })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.teal })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.purple_red })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = colors.bright_magenta })
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = colors.bright_teal })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = colors.dark_gray })
vim.api.nvim_set_hl(0, "NeoTreeMessage", { fg = colors.dark_gray, italic = true })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = colors.bright_blue, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = colors.border_inactive, bg = colors.bg })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.border_inactive, bg = colors.black })
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = colors.fg, bg = colors.black })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = colors.fg, bg = colors.black }) -- Fundo do prompt do Telescope
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.border_active, bg = colors.black })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = colors.selection_bg, bg = colors.black })
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.selection_bg, bold = true })
vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = colors.selection_fg, bg = colors.selection_bg })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.bright_blue, bg = colors.black })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.bright_blue, bg = colors.black })
