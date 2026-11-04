# Debugging in Neovim

Debugging uses LazyVim's `dap.core` extra plus the TypeScript and Python
language extras.

## Adapters

- **JavaScript/TypeScript**: `js-debug-adapter` via the `pwa-node`,
  `pwa-chrome`, and `pwa-msedge` adapters, configured by LazyVim's
  `lang.typescript` extra.
- **Python**: `debugpy` via `nvim-dap-python`, configured by LazyVim's
  `lang.python` extra.

Install or repair them with:

```vim
:MasonInstall js-debug-adapter
:MasonInstall debugpy
```

## Keymaps

| Keys | Action |
|---|---|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Run/continue (loads `.vscode/launch.json` when present) |
| `<leader>di` | Step into |
| `<leader>dO` | Step over |
| `<leader>do` | Step out |
| `<leader>dr` | Toggle REPL |
| `<leader>dt` | Terminate |
| `<leader>du` | Toggle DAP UI |
| `<leader>de` | Evaluate expression |
| `<leader>dPt` | Debug Python test method |
| `<leader>dPc` | Debug Python test class |
| `<leader>cv` | Select Python virtualenv |

## JavaScript/TypeScript

`<leader>dc` loads `.vscode/launch.json` from the current working directory when
it exists. If there is no `launch.json`, LazyVim's default "Launch file" and
"Attach" configurations are used.

Example `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "pwa-node",
      "request": "launch",
      "name": "Launch program",
      "program": "${workspaceFolder}/dist/index.js",
      "cwd": "${workspaceFolder}",
      "sourceMaps": true,
      "skipFiles": ["<node_internals>/**", "node_modules/**"]
    }
  ]
}
```

Save the file before debugging. OpenCode and debuggers read from disk.

## Python

Install `debugpy` once, select the interpreter/venv with `<leader>cv`, then set
breakpoints and press `<leader>dc`.

## Troubleshooting

- **Adapter executable not found**: run `:MasonInstall js-debug-adapter` or
  `:MasonInstall debugpy`, then restart Neovim.
- **Breakpoints not hit**: enable source maps in the build, and make sure the
  debug config points at the compiled output.
- **No configurations**: LazyVim's defaults are kept when `.vscode/launch.json`
  is absent. If a `launch.json` exists but is invalid, fix its JSON.
- **DAP UI does not open**: `:checkhealth` and confirm the `dap.core` extra is
  enabled in `lazyvim.json`.
