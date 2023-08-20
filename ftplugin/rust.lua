local keymap = vim.api.nvim_set_keymap

vim.g.rustfmt_autosave = 1      -- Format on save
vim.g.rustfmt_fail_silently = 0 -- Allow rust fmt to fail silently

keymap("", "<C-L>", ":RustFmt<CR>", {})
keymap("i", "<C-L>", ":RustFmt<CR> <Esc>", {})
