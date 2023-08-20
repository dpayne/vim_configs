local keymap = vim.api.nvim_set_keymap

keymap("", "<C-L>", ":pyf ~/.bin/clang-format.py<CR>", {})
keymap("i", "<C-L>", ":pyf ~/.bin/clang-format.py<CR> <Esc>", {})
