-----------------------------------------------------------
-- Keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Map Esc to jk
map("i", "jk", "<Esc>", { noremap = true })

-- Don't use arrow keys
map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })

-- Fast saving with <leader> and s
map("n", "<leader>s", ":w<CR>", default_opts)
map("i", "<leader>s", "<C-c>:w<CR>", default_opts)

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h", default_opts)
map("n", "<C-j>", "<C-w>j", default_opts)
map("n", "<C-k>", "<C-w>k", default_opts)
map("n", "<C-l>", "<C-w>l", default_opts)

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Open terminal
map("n", "<C-t>", ":Term<CR>", { noremap = true })

-- nvim-tree
map("n", "<leader><TAB>", ":NvimTreeFindFileToggle!<CR>", default_opts) -- open/close

-- FZF
map("n", "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", default_opts)
map("n", "<leader>fb", "<cmd>lua require('fzf-lua').git_branches()<CR>", default_opts)
map("n", "<leader>ff", "<cmd>lua require('fzf-lua').live_grep_native()<CR>", default_opts)
map("n", "<leader>fg", "<cmd>lua require('fzf-lua').grep_cword()<CR>", default_opts)
map("n", "<leader>fm", "<cmd>lua require('fzf-lua').marks()<CR>", default_opts)
map("n", "<leader>fj", "<cmd>lua require('fzf-lua').jumps()<CR>", default_opts)
map("n", ";", "<cmd>lua require('fzf-lua').buffers()<CR>", default_opts)

-- Splitting
map("n", "<esc>", ":noh<CR>", default_opts)
map("n", "ss", ":sp<CR>", default_opts)
map("n", "vv", ":vs<CR>", default_opts)

-- Clipboard
map("v", "<space>y", "+y", default_opts)
map("v", "<space>yy", "+yy", default_opts)
map("v", "<space>p", "+p", default_opts)
map("v", "<space>P", "+P", default_opts)

--- testing
map("n", "<leader>rr", "<cmd>lua require('neotest').run.run()<CR>", default_opts)
