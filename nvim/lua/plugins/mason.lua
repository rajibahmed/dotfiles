return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- used by the pwa-node adapter in lua/plugins/debugger.lua
        "js-debug-adapter",
        "node-debug2-adapter",
        -- TypeScript/JavaScript LSP. LazyVim disables ts_ls in favor of vtsls.
        "vtsls",
      },
    },
  },
}
