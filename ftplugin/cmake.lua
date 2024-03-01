local keymap = vim.api.nvim_set_keymap

keymap("", "<C-L>", ":!cmake-format -i %<CR>", {})
keymap("i", "<C-L>", ":!cmake-format -i %<CR>", {})
