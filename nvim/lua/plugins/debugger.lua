return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>dc",
        function()
          local dap = require("dap")
          -- Load .vscode/launch.json when present; otherwise keep LazyVim's
          -- default launch/attach configurations.
          if vim.fn.filereadable(vim.fn.getcwd() .. "/.vscode/launch.json") == 1 then
            for _, ft in ipairs({ "javascript", "typescript", "typescriptreact", "javascriptreact" }) do
              dap.configurations[ft] = {}
            end
            require("dap.ext.vscode").load_launchjs(nil, nil)
          end
          dap.continue()
        end,
        desc = "Run/Continue",
      },
    },
  },
}
