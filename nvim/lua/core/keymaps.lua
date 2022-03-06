-----------------------------------------------------------
-- Keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- Map Esc to kk
map('i', 'jk', '<Esc>', {noremap = true})

-- Don't use arrow keys
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })

-- Fast saving with <leader> and s
-- map('n', '<leader>s', ':w<CR>', default_opts)
-- map('i', '<leader>s', '<C-c>:w<CR>', default_opts)


-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>', default_opts)

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Open terminal
map('n', '<C-t>', ':Term<CR>', { noremap = true })

-- nvim-tree
map('n', '<leader><TAB>', ':NvimTreeToggle<CR>', default_opts) -- open/close
map('n', '<leader>n', ':NvimTreeFindFile<CR>', default_opts) -- search file


-- FZF
map('n', '<leader>t', ':Files<CR>', default_opts)
map('n', '<leader>r', ':Tags<CR>', default_opts)
map('n', ';', ':Buffers<CR>', default_opts)


-- Splitting
map('n', '<esc>', ':noh<CR>', default_opts)
map('n', 'ss', ':sp<CR>', default_opts)
map('n', 'vv', ':vs<CR>', default_opts)

-- Clipboard
map('v', '<space>y', "+y", default_opts)
map('v', '<space>yy', "+yy", default_opts)
map('v', '<space>p', "+p", default_opts)
map('v', '<space>P', "+P", default_opts)
