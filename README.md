My Zsh and Vim configs
======================

Installation

```sh
$ cd ~ && git clone https://github.com/rajibahmed/dotfiles.git
$ sh dotfiles/setup_machine.sh
```



LSP Mapping
============================

'gD',   '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
'gd',   '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
'K',    '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
'gi',   '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
'<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
'<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
'<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
'<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
'<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
'<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
'<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
'<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
'[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
'<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
'<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
