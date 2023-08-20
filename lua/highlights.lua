-- Spelling
vim.api.nvim_set_hl(0, "SpellBad", { ctermfg = 1, cterm = { underline = true, standout = true, } })
vim.api.nvim_set_hl(0, "SpellCap", { cterm = { underline = true } })
vim.api.nvim_set_hl(0, "SpellRare", { cterm = { underline = true } })
vim.api.nvim_set_hl(0, "SpellLocal", { cterm = { underline = true } })

vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#ebdbb2", bg = "#282828" })
-- FloatBorder
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#363630", bold = true })

-- visually highlighted text colour
vim.api.nvim_set_hl(0, "Visual", { bg = "#6e1515" })

-- for word under cursor | "PeterRincker/vim-searchlight"
vim.api.nvim_set_hl(0, "Searchlight", { fg = "#202020", bg = "#cc241d" })

vim.api.nvim_set_hl(0, "Normal", { ctermbg = "NONE", bg = "NONE" })
vim.api.nvim_set_hl(0, "NonText", { ctermbg = "NONE", bg = "NONE" })
