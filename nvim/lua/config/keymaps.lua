-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Project-wide search for the word under the cursor, or the visual selection.
vim.keymap.set("n", "<leader>*", LazyVim.pick("grep_cword"), { desc = "Grep word (root)" })
vim.keymap.set("x", "<leader>*", LazyVim.pick("grep_visual"), { desc = "Grep selection (root)" })
vim.keymap.set("n", "<leader>8", LazyVim.pick("grep_cword"), { desc = "Grep word (root)" })

-- Debugging keymaps (nvim-dap)
-- <leader>db - Toggle breakpoint
-- <leader>dc - Continue execution
-- <leader>di - Step into
-- <leader>do - Step over
-- <leader>du - Step out
-- <leader>dr - Toggle REPL
-- <leader>dt - Terminate debugger
