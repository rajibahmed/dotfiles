return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- used by LazyVim's pwa-node adapter
        "js-debug-adapter",
        -- Python debugger used by nvim-dap-python (lang.python extra)
        "debugpy",
        -- TypeScript/JavaScript LSP. LazyVim disables ts_ls in favor of vtsls.
        "vtsls",
      },
    },
  },
}
