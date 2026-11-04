# Neovim Configuration

LazyVim-based Neovim config, tracked in the dotfiles repo and symlinked to
`~/.config/nvim`.

## Layout

```
init.lua              entry point
lua/config/           options, keymaps, autocmds, theme
lua/plugins/          plugin overrides and extras
lazyvim.json          enabled LazyVim extras
lazy-lock.json        pinned plugin versions
```

## Setup

The dotfiles setup scripts create the symlink:

```sh
ln -sfn ~/dotfiles/nvim ~/.config/nvim
nvim --headless "+Lazy! sync" +qa
```

## Custom keymaps

| Keys | Action |
|---|---|
| `<leader><tab>` | Toggle file explorer (root dir) |
| `<leader>*` | Grep word under cursor / visual selection |

### OpenCode

| Keys | Action |
|---|---|
| `<leader>aa` | Ask OpenCode with `@this` context |
| `<leader>ax` | OpenCode menu (prompts, commands, sessions) |
| `<leader>at` | Toggle OpenCode terminal |
| `<leader>al` | Append current line reference |
| `<leader>ar` | Append range/selection reference |
| `<leader>as` | Submit current OpenCode prompt |
| `<S-C-u>` / `<S-C-d>` | Scroll OpenCode messages |

`<C-a>`, `<C-x>`, `go`, and `goo` are intentionally left to Vim/Neovim.

## Languages

Enabled LazyVim extras include TypeScript, Python, Go, Elixir, Erlang, Docker,
JSON, Markdown, ESLint, Prettier, and DAP.

- TypeScript/JavaScript: `vtsls` + `eslint`
- Python: `pyright` + `ruff`, `venv-selector`, `nvim-dap-python`
- Lua: `lua_ls`
- Formatting: `conform.nvim` + `prettier`
- Angular: disabled

## Debugging

Debugging is provided by LazyVim's `dap.core` extra plus the TypeScript and
Python extras. See [DEBUGGING.md](./DEBUGGING.md).

## Theme

`onedark.nvim` follows the macOS light/dark appearance and updates live.

## Maintenance

```vim
:LazyHealth
:checkhealth
:Mason
:Lazy update
```

Commit `lazy-lock.json` after plugin updates.
