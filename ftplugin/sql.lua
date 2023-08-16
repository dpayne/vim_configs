local keymap = vim.api.nvim_set_keymap

keymap("", "<C-L>", ":%!sqlformat --reindent --keywords upper --identifiers lower -<CR>", {})
keymap("i", "<C-L>", ":%!sqlformat --reindent --keywords upper --identifiers lower -<CR>", {})
