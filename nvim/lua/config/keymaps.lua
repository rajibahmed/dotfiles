-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- File explorer: use <leader><tab> instead of the default <leader>e.
pcall(vim.keymap.del, "n", "<leader>e")
vim.keymap.set("n", "<leader><tab>", "<leader>fe", { desc = "Toggle Explorer", remap = true })

-- Project-wide search for the word under the cursor, or the visual selection.
vim.keymap.set("n", "<leader>*", LazyVim.pick("grep_cword"), { desc = "Grep word (root)" })
vim.keymap.set("x", "<leader>*", LazyVim.pick("grep_visual"), { desc = "Grep selection (root)" })

-- Debugging keymaps come from LazyVim's dap.core extra.
-- <leader>dc is overridden in lua/plugins/debugger.lua to load launch.json.
-- See DEBUGGING.md for the full list.
