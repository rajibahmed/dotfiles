return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    keys = {
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<leader>dc",
        function()
          local dap = require("dap")
          -- Clear all JS/TS configs before reloading to prevent duplicates
          for _, ft in ipairs({ "javascript", "typescript", "typescriptreact", "javascriptreact" }) do
            dap.configurations[ft] = {}
          end
          -- nil uses the global type_to_filetypes already configured by LazyVim
          pcall(require("dap.ext.vscode").load_launchjs, nil, nil)
          dap.continue()
        end,
        desc = "Continue",
      },
      {
        "<leader>di",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<leader>do",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<leader>du",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>dr",
        function()
          require("dap").repl.toggle()
        end,
        desc = "Toggle REPL",
      },
      {
        "<leader>dt",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate",
      },
    },
    config = function()
      local dap = require("dap")

      -- js-debug-adapter (vscode-js-debug) — installed via mason
      dap.adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "js-debug-adapter",
          args = { "${port}" },
        },
      }

      -- Configs are loaded from .vscode/launch.json on each <leader>dc.

      -- Setup DAP UI
      local dapui = require("dapui")
      dapui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- Virtual text setup
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  -- NOTE: the old `microsoft/vscode-js-debug` spec (with the npm build) was
  -- removed. The `js-debug-adapter` binary configured above is provided by
  -- mason (`js-debug-adapter`), so cloning and building the whole vscode repo
  -- is unnecessary.
}
