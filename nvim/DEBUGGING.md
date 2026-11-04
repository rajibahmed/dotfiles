# JavaScript/TypeScript Debugging in Neovim

This Neovim configuration includes debugger support for JavaScript and TypeScript projects using `nvim-dap`.

## Installation

The necessary plugins and adapters are configured in:

- `lua/plugins/debugger.lua` - DAP configuration and UI
- `lua/plugins/mason.lua` - Automatic installation of debug adapters

When you start Neovim, Mason will automatically install:

- `node-debug2-adapter` - Node.js debugging
- `typescript-language-server` - TypeScript support

## Quick Start

### 1. Set Breakpoints

```
<leader>db  - Toggle breakpoint at current line
```

### 2. Start Debugging

```
<leader>dc  - Start/continue debugging
```

### 3. Navigation

```
<leader>di  - Step into function
<leader>do  - Step over line
<leader>du  - Step out of function
<leader>dt  - Terminate debugger
```

### 4. REPL

```
<leader>dr  - Toggle Debug REPL for expressions
```

## Debug Configurations

The debugger supports multiple configurations:

### Launch Mode

Starts your Node.js application from the specified entry point.

```lua
{
  type = "node2",
  request = "launch",
  program = "${workspaceFolder}/dist/index.js",
  cwd = vim.fn.getcwd(),
  sourceMaps = true,
}
```

### Attach Mode

Attaches to an already-running Node.js process.

```lua
{
  type = "node2",
  request = "attach",
  program = "${workspaceFolder}/dist/index.js",
  sourceMaps = true,
}
```

## Supported Languages

- JavaScript (.js)
- TypeScript (.ts)
- React/JSX (.jsx, .tsx)

## Configuration Customization

To customize debug configurations for your specific project, edit `lua/plugins/debugger.lua`:

### Example: Debugging a Next.js Project

```lua
dap.configurations.javascript = {
  {
    type = "node2",
    request = "launch",
    program = "${workspaceFolder}/node_modules/.bin/next",
    args = { "dev" },
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    console = "integratedTerminal",
  },
}
```

### Example: Debugging a Jest Test

```lua
{
  type = "node2",
  request = "launch",
  program = "${workspaceFolder}/node_modules/.bin/jest",
  args = { "${file}", "--runInBand" },
  cwd = vim.fn.getcwd(),
  sourceMaps = true,
  console = "integratedTerminal",
}
```

## Troubleshooting

### Breakpoints not hitting

- Ensure source maps are enabled in your build process
- Check that `sourceMaps = true` in your debug configuration
- For compiled projects, debug the compiled code in `dist/` or `build/`

### "Adapter executable not found"

- Run `:MasonInstall node-debug2-adapter` manually
- Check `~/.local/share/nvim/mason/packages/` to see installed adapters

### Debug adapter won't start

- Ensure you're running a supported Node.js version (14+)
- Check the debug console output for error messages using `<leader>dr`

## UI Navigation (DAP UI)

The debug UI opens automatically when debugging starts:

- Press `q` to close/toggle the UI
- Use arrow keys to navigate through watches, breakpoints, and stack
- Press Enter to expand/collapse items

## Mason Integration

To install or update debug adapters manually:

```vim
:Mason
```

Then search for and install:

- `node-debug2-adapter` - Node.js debugging support
